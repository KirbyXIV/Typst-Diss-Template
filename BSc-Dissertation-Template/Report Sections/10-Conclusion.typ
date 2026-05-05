#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

= Conclusion
== Summary of the research
=== Investigating the 'Phygital' Divide
The rapid digitisation of Tabletop Role-Playing Games (TTRPGs) has fundamentally altered how players interact with game mechanics. While extensive research has evaluated fully remote Virtual Tabletops (VTTs), a critical gap existed regarding the impact of digital assistance tools in face-to-face, hybrid gaming spaces. This dissertation set out to investigate this "phygital" divide, asking a central research question: *Does the introduction of digital assistance tools in in-person TTRPG sessions deepen immersive engagement by reducing cognitive load, or does it disrupt the shared social and narrative experience?*

=== Artifact and Methodology Summary

To answer this, a bespoke, dual-display digital assistance artifact was developed using the Unity Engine. Designed explicitly through the lens of Cognitive Load Theory, the tool offloaded mathematical and spatial burdens from the players and Game Master (GM) while providing a shared visual anchor on a secondary display. A mixed-methods user study was then conducted, combining the quantitative rigor of the NASA Task Load Index (NASA-TLX) with qualitative thematic analysis of semi-structured player interviews.

== Fulfillment of Objectives
=== Theoretical and Design Goals

The project successfully met its initial theoretical and developmental aims. A comprehensive literature review was conducted, synthesising theories of cognitive load, immersion (SCI model), and human-automation interaction to establish a theoretical framework. Following this, a functional Unity application was successfully engineered. It featured multi-camera rendering, spatial measurement tools (rulers and AoE spheres), and dynamic map management, achieving the goal of creating a private GM dashboard alongside a restricted public player view.

=== Experimental and Evaluation Goals

The project also fulfilled its evaluative objectives. An ethically approved, mixed-methods evaluation was designed and executed to capture both objective workload metrics and subjective experiential data in a live play environment. The NASA-TLX data provided quantifiable proof of workload distribution, while thematic analysis of player feedback revealed nuanced insights into hybrid tabletop dynamics. Finally, these findings were synthesised to provide actionable recommendations for future software, completing the project's lifecycle.

== Key Findings and Contributions
=== The Eradication of Extraneous Load

The evaluation yielded a nuanced answer to the primary research question: digital assistance tools *deepen systemic* and *imaginative immersion*, but introduce a distinct risk of *environmental disruption* via *hardware distractions*.

The quantitative data conclusively demonstrated the artifact's success in streamlining the mechanical TTRPG experience. NASA-TLX scores revealed a remarkably low Frustration average (2.6/10) alongside an exceptionally high Performance average (8.8/10). Qualitative feedback corroborated these metrics; players explicitly noted that the automation of complex calculations made gameplay vastly smoother. By eliminating this extraneous cognitive load, the software freed up the players' working memory, allowing them to dedicate their germane cognitive effort entirely toward strategic planning and role-playing.

=== Anchoring Attention in the Shared Space

One of the most significant findings was the artifact's ability to maintain player engagement during combat "downtime." In traditional physical play, players often disengage when it is not their turn. However, the dual-display architecture successfully mitigated this. By casting a clean, visually distinct map to a shared secondary monitor, the system provided a focal point that kept players visually anchored to the game state, drastically improving combat fluidity and proactive decision-making.

=== The Paradox of the Phygital Space

Despite the software's success, the study validated concerns regarding the integration of personal screens into physical social spaces. While the Unity artifact successfully protected the "magic circle" of play, the hardware it ran on (laptops/PCs) inadvertently invited external distractions. As one participant noted, the presence of a digital device made it easy to habitually check messaging apps or websites. This highlights a critical HCI contribution: in hybrid TTRPG environments, software design must be coupled with a strong social contract to resist the inherent distractions of the surrounding digital ecosystem.

== Limitations of the Study
=== Sample Size and Demographic Scope

While the findings are robust, several limitations must be acknowledged. Firstly, the sample size of the user study was relatively small (N=5), representing a single tabletop group. While this allowed for deep qualitative analysis, a larger sample size spanning multiple groups with varying levels of TTRPG experience would yield more statistically powerful quantitative data.

=== Scenario Constraints

Secondly, due to time constraints, the evaluation scenario was heavily weighted toward combat and tactical spatial reasoning. While the tool proved highly effective in this context, it provided less insight into how digital assistance impacts purely narrative, non-combat exploration sequences.

== Recommendations for Future Work
=== Sensory Expansion and Audio Integration

Based on the participant feedback, there is a strong desire for enhanced sensory immersion. Participants explicitly requested the addition of environmental soundscapes and music integration. Future iterations of the artefact could include an automated audio manager triggered by specific game states (e.g., entering combat, triggering a trap) to further heighten the tabletop atmosphere.

=== Enhancing Exploration Mechanics
Development should expand beyond combat tools to include narrative aids. Future software could implement dynamic digital handouts (e.g., letters, puzzle pieces, or NPC portraits) that the GM can seamlessly "cast" to the player screen during social or exploratory encounters.

=== Addressing Digital Distraction
To combat the issue of players tabbing out to messaging apps, future hybrid systems could explore the development of locked-down, mobile companion apps. These apps could actively block notifications during play, forcing the digital device to act solely as a game interface and protecting the physical social space.

== Concluding Remarks
Tabletop role-playing games have endured for decades because of the unique, intimate social magic that occurs when people gather around a physical table to tell a story. As the hobby rapidly digitises, there is a legitimate fear that introducing screens into this space will shatter that intimacy, replacing collaborative imagination with isolating software.

This dissertation demonstrates that this does not have to be the case. When digital assistance tools are designed with restraint, specifically targeting extraneous mechanical burdens while utilising shared displays to keep "heads up", technology can seamlessly fade into the background. By letting the computer handle the mathematics, players and Game Masters are liberated to do what they came to the table for: roll dice, slay monsters, and immerse themselves entirely in the shared narrative.