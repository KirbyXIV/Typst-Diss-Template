#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

= Requirements Analysis

The literature review established that digital assistance in Tabletop Role-Playing Games (TTRPGs) must carefully balance the reduction of extraneous cognitive load with the preservation of imaginative immersion and social presence. To investigate this balance empirically, an artifact must be developed and evaluated. During the initial planning phases, it was determined that attempting to replicate complex character management systems would be redundant given the widespread adoption of robust platforms like D&D Beyond. Therefore, this project scopes its technical development to focus strictly on the shared physical space of the tabletop. This chapter outlines the target use case, details the functional and non-functional requirements for a Unity-based dual-display assistance and logging tool, specifies the environment, and establishes the evaluation methodology.

== Target Audience and Use Case
=== User Personas and Cognitive Profiles

User Personas and Cognitive Profiles To accurately gather requirements, the needs of the two distinct tabletop roles must be addressed:

- The Overwhelmed Game Master: The GM bears the highest intrinsic cognitive load. They must track narrative flow, enemy statistics, environmental hazards, and player conditions simultaneously. Their primary requirement is frictionless automation, tools that allow them to retrieve rules and measure distances instantly without pausing the game.
- The Distracted Player: The player bears a lower intrinsic load but is highly susceptible to environmental distraction. During combat "downtime" (when it is not their turn), players frequently disengage. Their primary requirement is a shared visual anchor that keeps them situated within the game state and prevents them from tabbing out to non-game-related applications.
=== Primary Demographic

The primary target audience consists of players and Game Masters (GMs) engaging in face-to-face, in-person gameplay. While players may manage their individual characters using personal devices (e.g., via D&D Beyond on a smartphone), the shared table often lacks a centralised digital focal point, leading to a fragmented "head-down" experience.

=== The Shared Digital Hub

The intended use case for the developed artefact involves a single computing device (a laptop) utilised by the GM, connected to a secondary display (a monitor or television) facing the players. The Unity application acts as a central hub for the table. The GM uses their private screen to quickly access rules and manage the flow of information, while pushing relevant rule clarifications or visual aids to the secondary player-facing screen to keep the group's attention focused up and toward the center of the table.

== Functional Requirements
=== Defining System Capabilities

Functional requirements define the specific behaviors and capabilities the system must possess to facilitate gameplay and gather research data. The following requirements were established to support the hybrid gaming space:

#figure(
  caption: [Functional Requirements of the Digital Assistance Artefact],
  table(
    columns: (auto, auto, 1fr, 1fr),
    align: (center + horizon, left + horizon, left, left),
    stroke: 0.5pt,
    table.header(
      [*ID*], [*Feature*], [*Requirement*], [*Justification*]
    ),
    [FR1], 
    [*Rule Reference Database*], 
    [The system must contain a searchable, easily accessible database of common game mechanics, status effects, and rules.],
    [Prevents the disruption of narrative flow caused by manually searching through physical rulebooks or multiple browser tabs.],
    
    [FR2], 
    [*Dual-Display Architecture*], 
    [The application must support a multi-monitor setup: a private dashboard on the primary screen, and a restricted public interface on the secondary screen.],
    [Facilitates the hybrid "phygital" space by keeping Game Master secrets hidden while providing a shared screen for the players.],
    
    [FR3], 
    [*Information Casting*], 
    [The GM must be able to select specific rules, images, or status effects from their dashboard and "cast" them to the player display.],
    [Creates a shared visual anchor for the table, pulling players' attention up and keeping them engaged during combat downtime.],

    [FR4],
    [*Spatial Measurememt Tool*],
    [The software must include digital tools for calculating distance (rulers) and spell dimensions (Area-of-Effect spheres).],
    [Directly automates the extraneous cognitive load of calculating complex tabletop grid mathematics, speeding up combat resolution.]
  )
)

== Non-Functional Requirements
=== Defining Quality Standards

Non-functional requirements specify the quality attributes and usability standards the system must meet to ensure it does not negatively impact the user experience.

#figure(
  caption: [Non-Functional Requirements of the Digital Assistance Artefact],
  table(
    columns: (auto, auto, 1fr, 1fr),
    align: (center + horizon, left + horizon, left, left),
    stroke: 0.5pt,
    table.header(
      [*ID*], [*Feature*], [*Requirement*], [*Justification*]
    ),
    [NFR1], 
    [*Usability & Clarity*], 
    [The UI must be minimalist, logically organised, and highly legible at a distance for the player-facing screen.],
    [Complex interfaces increase extraneous cognitive load. A clean UI ensures quick information retrieval without frustrating the user.],
    
    [NFR2], 
    [*Performance & Responsiveness*], 
    [The application must respond to inputs, rule searches, and screen-casting commands with minimal latency.],
    [Delayed feedback would artificially inflate the "Temporal" and "Frustration" dimensions of the users' NASA-TLX scores during testing.],
    
    [NFR3], 
    [*Thematic Visual Cohesion*], 
    [The UI design should employ a visual aesthetic that subtly aligns with the fantasy genre (e.g., dark mode, appropriate typography).],
    [Avoids sterile, overly-corporate design languages that might break the 'magic circle' of play and damage imaginative immersion.]
  )
)

== Software and Hardware Environment
=== Development Platform

To achieve these requirements, the artifact will be developed using the Unity Engine alongside C\# scripting. During the scoping phase, web-based frameworks (such as React or Vue) were considered. However, web browsers handle secondary-window popouts inconsistently, and syncing data between two separate browser windows in real-time often requires local server hosting or web-sockets, introducing potential latency.

Unity was deliberately selected because of its native rendering pipeline, which supports multi-camera, multi-display output from a single, locally executed instance. This entirely eliminates network latency (satisfying NFR2) and guarantees that the GM dashboard and Player screen remain perfectly synchronised. Furthermore, Unity's robust UI Toolkit and 3D physics engine provide the ideal foundation for developing the spatial measurement tools.

=== Target Deployment Hardware

The software will be built as a standalone executable for the Windows operating system. The hardware environment required for deployment and testing consists of a standard modern laptop equipped with a secondary video output (e.g., HDMI or DisplayPort) and an external monitor or television. This setup reflects the most accessible and common configuration utilised by players integrating digital tools into physical tabletop spaces.

== Evaluation and Testing Strategy
=== Technical Verification

The evaluation of the artefact encompasses both technical system testing and a human-centered user study, ensuring the software meets both operational standards and the project's academic objectives.

System Testing: Iterative testing will be conducted during development to verify that the dual-display functionality correctly routes the appropriate UI panels to the designated monitors without graphical artifacting. Furthermore, the logging system (FR4) will be tested to ensure JSON files are formatted correctly and timestamps are accurately recorded without degrading software performance.

=== Mixed-Methods User Study

User Evaluation: Once the prototype is functionally complete, it will be evaluated through an ethically approved, mixed-methods user study. Participants will play through a standardised TTRPG scenario utilising the software alongside their standard character management tools (e.g., D&D Beyond).

- Quantitative Evaluation: Following the session, participants will complete the NASA Task Load Index (NASA-TLX) questionnaire to quantify their perceived cognitive, physical, and temporal workloads.
- Qualitative Evaluation: Participants will engage in semi-structured interviews designed to capture experiential data regarding their sense of immersion, narrative flow, and their subjective feelings on how the shared display influenced table focus.
- Log Analysis: The interaction logs generated by the software will be cross-referenced with the qualitative data to determine if high tool-interaction frequency correlates with feelings of disconnection or enhanced flow.



