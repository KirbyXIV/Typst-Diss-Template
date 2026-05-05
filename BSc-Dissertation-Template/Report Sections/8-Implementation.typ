#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

= Implementation

This chapter details the technical implementation of the digital assistance artifact within the Unity Engine (using C\#). The development focused on translating the artitechural designs established in Chapter 4 into robust, performant software. Key implementation areas include the dual-display rendering pipeline, dynamic map and token management, viewport navigation, spatial measurement tools, and the handling of user inputs via Unity's New Input System. The following sections outline the specific programming challenges encountered and the solutions engineered to ensure the software actively reduces the Game Master's (GM) extraneous cognitive load.

== System Architecture and Dual-Display Initialisation

The foundational requirement of this artefact was the ability to separate public and private information across two screens without running two separate instances of the software.

=== Display Activation

To initiate this, a lightweight `DisplayManager` script was implemented. Upon the `Start()` method, the script checks the hardware array `Display.displays.Length`. If a secondary monitor is detected, it triggers `Display.displays[1].Activate()`, immediately waking the player-facing screen.

=== Layer Culling and Camera Separation

Once the second display is active, the separation of information is handled via Unity's Layer Mask system and Camera Culling. Two distinct virtual cameras are utilised: the GM Camera (rendering to Display 1) and the Player Camera (rendering to Display 2). To manage what players can see, GameObjects are dynamically assigned to specific layers, notably `TokensPublic` and `TokensHidden`. If a monster token is assigned to `TokensHidden`, it is culled from the Player Camera's rendering pipeline but remains visible on the GM's dashboard. This technical approach effectively replicates the physical "Game Master Screen," allowing the GM to prepare encounters in secret without breaking the players' narrative immersion.

== Viewport Navigation

In a digital tabletop environment, the GM must constantly scan large, highly detailed maps. Clunky camera controls introduce a high degree of extraneous cognitive load and frustration. To mitigate this, a dedicated `CameraController` was engineered to provide seamless, intuitive viewport navigation.

=== Raycast-Driven Panning

Instead of relying on WASD keyboard movement, which requires the GM to move their hands away from the mouse, panning was implemented using the right mouse button. When the right button is pressed, a raycast is fired from the screen point to the `mapLayer` to establish a `dragOrigin`. As the mouse is dragged, continuous raycasts calculate the difference between the origin and the current hit point, translating the camera's `transform.position` by the exact inverse delta. This creates a 1:1 "grab and pull" sensation, ensuring the map feels like a tactile, physical object being slid across a table.

=== Clamped Zooming

Zoom functionality was bound to the mouse scroll wheel (`Mouse.current.scroll.ReadValue().y`). To prevent the GM from accidentally zooming through the map geometry or panning out into the void, the zoom value is strictly clamped using `Mathf.Clamp(cam.orthographicSize, minHeight, maxHeight)`.

== Dynamic Map Handling and Alignment

To support a wide variety of TTRPG campaigns, the software requires the ability to dynamically load map files from the user's local operating system at runtime.

=== Runtime File Browsing

Unity's native file handling is restrictive in compiled builds; therefore, the `StandaloneFileBrowser` (SFB) @gokce_gkngkcunitystandalonefilebrowser_2026 library was integrated into the `MapImporter`. This allows the GM to press a hotkey (M) to open a native Windows file dialog. The script reads the byte data of the selected PNG/JPG and converts it into a `Texture2D`. Crucially, the script calculates the image's aspect ratio (`texture.width / texture.height`) to ensure maps are scaled proportionally without distortion.

=== Middle-Mouse Map Alignment

Because imported maps often have pre-drawn grids that may not perfectly align with Unity's internal coordinate system, a secondary movement system was built. While right-click moves the camera, the middle mouse button utilises a mathematical `Plane` (based on `Vector3.up`) to allow the GM to drag the physical map mesh independently of the camera. By holding Shift and scrolling, the GM can also scale the map. This dual-control system allows for rapid calibration of any imported asset.

== Fog of War and Line of Sight Management

To manage the flow of exploration, a `FogController` was engineered. Instead of relying on complex, performance-heavy shader-based fog, a grid-based approach was utilised for reliability.

=== Grid Generation

Upon initialisation, the script generates a dense grid of opaque, black tile prefabs over the map boundaries based on the `mapWidth` and `mapHeight` variables. These tiles block the Player Camera's view of the map beneath.

=== Modifier-Based Painting

The GM can use a "brush" tool to paint or erase the fog. This is achieved by casting a `Ray` from the GM Camera to the mouse position. If the ray intersects a collider on the `fogLayer`, the `MeshRenderer` of that specific tile is enabled or disabled. To streamline this process and prevent excessive UI clicking, keyboard modifiers were integrated. Holding the left mouse button paints fog (hiding the map), while simultaneously holding the Shift key inverts the boolean logic (`PaintFog(false)`), acting as an eraser to reveal the map to the players.

== Token State Machine and Customisation

Tokens represent the players and enemies within the virtual space. The `TokenController` script was designed as a lightweight state machine to handle the lifecycle and movement of these entities.

=== Spawning and Visibility

Tokens can be spawned via UI buttons (which drop them in the center of the camera view) or via hotkeys (which utilise a raycast to drop them exactly where the mouse is pointing). A hotkey (V) allows the GM to instantly toggle a selected token's layer between `TokensPublic` and `TokensHidden`, manipulating its visibility to the players on the secondary display.

=== Drag-and-Drop Logic

The movement of tokens utilises a strict drag-and-drop logic flow to prevent accidential displacement. When the left mouse button is pressed (`HandleClickDown()`), a raycast checks the `tokenLayers`. If a token is hit, it becomes a `selectedToken`, and its scale is increased by 20% to provide immediate visual feedback to the GM. While the button is held (`HandleDragging()`), the token's Y-axis is slightly elevated to simulate being picked up, and its X/Z coordinates follow the mouse's intersection with the map.

=== Runtime Portrait Customisation

To preserve imaginative immersion, tokens cannot remain featureless disks. The GM can select a token and press a hotkey to invoke the `StandaloneFileBrowser`. Similar to the map importer, this loads a local image, converts it to a Sprite, and applis it to the token's `PortraitCanvas` UI image component. The script automatically recalculates the `RectTransform` size delta to accommodate both portrait and landscape character art without stretching.

== Spatial Automation: Grids, Rulers, and Area of effects

In traditional TTRPGs, combat requires significant spatial calculation, tracking distances in 5-foot increments. To alleviate this extraneous cognitive load, automated spatial tools were developed.

=== Mathmatical Grid Snapping

When the GM releases a dragged token (`HandleDropAndSnap()`), the token must align with the underlying battle grid. This was implemented using a mathmatical floor function applied to the final position, shown in @Code:SnapTokens. This calculation ensures that regardless of where the GM releases the mosue, the token perfectly snaps to the centre of the nearest square, drastically speeding up combat management.

=== Linear Measurement (The Ruler Tool)

A `RulerController` was implemented utiliising Unity's `LineRenderer` component. By anchoring the start point on a mouse-down event and updating the end point dynamically while dragging, the script calculates the `Vector3.Distance` between the two points. This raw distance is divided by the `gridSize` and multiplied by the TTRPG standard of 5 feet per square. A `TextMeshPro` object is instantiated at the midpoint of te line, dynamically updating the text (e.g., "30 ft") and rotating to face the GM camera.

=== Radial Measurement (AoE Tool)

Similarly, the `AoEController` allows the GM to drag outward from a center point to create a perfectly scaled sphere. The script rounds the raw mouse distance to the nearest grid square, ensuring the spell radius snaps to standard 5-foot increments. The visual sphere's scale is updated dynamically in the `UpdateDrawing()` loop (@Code:AoEController), providing instant, mathematically accurate visual aids that prevent the game flow from halting.

== UI Safeguards and Event System Interception

The project utilizes Unity's New Input System. A significant technical challenge arose when integrating the 3D raycasting systems (used for tokens, fog, and rulers) with the 2D User Interface (UI). Initially, clicking a UI button to toggle a mode would simultaneously cast a ray into the 3D scene, accidentally moving a token or drawing a ruler beneath the UI panel.

To resolve this, a robust UI safeguard was implemented across all controller scripts using the `EventSystem`, shown in @Code:IsMouseOverUI.

By forcing the 3D interaction logic to yield if `IsMouseOverUI()` returns true, the GM can safely navigate the interface without unintended consequences in the game world, directly supporting the non-functional requirement for a frustration-free UX (NFR1).

== Pending Implementations: Rules Database and Interaction Logging

In accordance with the Agile development methodology, the core spatial, visual, and dual-display components have been successfully implemented and tested. The final sprint cycle of the software development phase will focus on the remaining two requirements: the quick-access rule reference database (FR1) and the session interaction logging system (FR4).

The rule reference system is slated to utilize a parsed JSON database of the *D&D 5th Edition System Reference Document (SRD)*, populated into a searchable UI scroll view. Concurrently, the logging system will be integrated into the existing controller scripts, appending a simple string and timestamp to a local text file whenever a tool (such as the ruler, fog brush, or token spawner) is activated. Once these final features are merged, the artefact will be prepared for the experimental participant study.
