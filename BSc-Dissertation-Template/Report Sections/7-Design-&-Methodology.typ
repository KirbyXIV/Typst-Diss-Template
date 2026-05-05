#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)
#set enum(indent: 1em)

= Design and Methodology

This chapter details the design process of the Unity-based digital assistance artefact and the methodological framework established to evaluate its impact on player immersion and cognitive load. The chapter is divided into two primary sections: software design and research methodology. The software design section outlines the system architecture, dual-display logic, and User Interface (UI) decisions aimed at minimising extraneous cognitive load. The research methodology section details the mixed-methods study design, ethical considerations, data collection procedures involving the NASA-TLX, and the strategy for qualitative thematic analysis.

== Software Development Methodology
=== An Agile Approach

An iterative, Agile-inspired development methodology was adopted for the creation of the software artefact. Given the highly subjective nature of User Experience (UX) in tabletop gaming, a rigid Waterfall approach was deemed unsuitable. Instead, development was broken down into two-week sprint cycles focusing on core functionalities: first, establishing the dual-camera rendering pipeline in Unity; second, developing the underlying rules database and search functionality; and finally, implementing the session logging system. This iterative approach allowed for rapid prototyping and continuous self-evaluation against the cognitive load theories established in the literature review, ensuring the interface remained unobtrusive.

== System Architecture and Dual-Display Design
=== The Multi-Camera Display Pipeline

The core architectural challenge of the artefact was facilitating a shared physical space without forcing players to crowd around a single small screen. To achieve this, the system was designed within the Unity Engine using a dual-display architecture.

The application utilises Unity's multi-display rendering capabilities to drive two separate cameras.
- The Primary Display (GM Dashboard): Rendered on the host laptop, this private interface contains the search bar, the complete rules database, and the control mechanisms for casting information.
- The Secondary Display (Player View): Rendered on a connected external monitor or television facing the players, this display is intentionally sparse. It acts as a digital centerpiece for the table, displaying only the information explicitly pushed to it by the GM, such as a specific rule clarification, an image, or a combat condition (e.g., "Blinded" or "Grappled").

=== Localised Data and Background Logging

The rules data is structured locally, allowing the application to function entirely offline. This eliminates the latency and immersion-breaking disruptions commonly associated with web-based searches and slow internet connections. Furthermore, a background logging manager script was implemented to listen for specific UI events (such as button clicks or search queries), appending these events alongside a timestamp to a local JSON file.

=== Hardware Accessibility and Realistic Deployment

A critical design decision regarding the system architecture was ensuring the hardware requirements mirrored realistic, accessible TTRPG environments. While advanced tabletop setups might employ custom-built digital touch-tables embedded in physical furniture, these are prohibitively expensive and rare. Therefore, the artefact was deliberately constrained to operate on a standard, consumer-grade laptop connected to a generic secondary monitor or television via HDMI. By designing the dual-display architecture around hardware that the average gaming group already owns, the resulting data regarding immersion and usability becomes highly ecologically valid and generalisable to the broader TTRPG community.

== User Interface (UI) and User Experience (UX) Design
=== Mitigating Extraneous Load

The UI was designed strictly through the lens of Cognitive Load Theory @sweller_cognitive_1988. Every interface element was evaluated based on whether it contributed to extraneous load (unnecessary clutter) or germane load (useful information aiding the game).

The GM dashboard features a dark-mode aesthetic. This serves a dual purpose: it aligns thematically with the fantasy TTRPG genre, preserving the "magic circle" of play, and it reduces eye strain during long tabletop sessions. The search functionality was prioritised at the top of the visual hierarchy, allowing the GM to type keywords and instantly retrieve rules. This rapid retrieval system is designed to preserve Csikszentmihalyi's state of "Flow" by reducing the time spent pausing the narrative to consult physical rulebooks.

=== Fostering 'Head-Up' Social Dynamics

Conversely, the Player View on the secondary monitor was designed to promote "head-up" interaction. By placing the shared display centrally, players are encouraged to look up and across the table at one another, mitigating the isolating "head-down" effect caused by individual smartphones or laptops. The typography on the player display was scaled for readability at a distance of several meters, ensuring that all participants can read shared information without breaking their physical posture.

== Research Methodology and Study Design
=== A Mixed-Methods Framework

To evaluate whether this software design successfully deepens or disrupts immersion, a mixed-methods research design was selected. Subjective experiences like immersion and narrative flow cannot be entirely quantified, while cognitive workload requires standardised metrics to be compared reliably.

Therefore, a convergent parallel design was utilised, collecting both quantitative data (via the NASA Task Load Index and objective interaction logs) and qualitative data (via semi-structured interviews) sequentially during a single experimental session. This triangulation of data sources provides a holistic view of the human-computer interaction occurring at the table.

== Ethical Considerations and Participant Recruitment
=== Institutional Approval and Informed Consent

Prior to any data collection, full ethical approval was secured through the University of Lincoln's Ethics Approval System (LEAS). The primary ethical considerations involved informed consent, the right to withdraw, and data anonymisation.

Participants will be recruited through convenience sampling from known tabletop gaming groups and university societies. All participants will be provided with a detailed Participant Information Sheet explaining the nature of the study, the data being collected, and the presence of background software logging. Written consent will be obtained prior to the commencement of any session. 

=== Data Privacy

To ensure privacy, all data—including interview transcripts, NASA-TLX scores, and interaction JSON logs will be fully anonymised, using participant ID numbers (e.g., P1, P2) rather than names.

== Procedure for Data Collection
=== Standardised Scenario Design

To ensure that the software artefact was rigorously tested across various cognitive load profiles, a bespoke TTRPG scenario was authored specifically for this study. The scenario was meticulously structured to include both non-combat exploration and high-intensity tactical combat. The exploration phase was designed to test the artifact's ability to seamlessly display environmental imagery and rules clarifications without breaking narrative tension. The combat phase was engineered to feature multiple enemies, overlapping area-of-effect spells, and complex line-of-sight challenges. This deliberate scenario design guaranteed that the Game Master would be forced to frequently interact with the digital tool's token management, measuring systems, and rules database, generating sufficient interaction data and cognitive stress to meaningfully evaluate the software.

=== The Experimental Environment

The evaluation will be conducted through live, in-person TTRPG sessions. Each session will consist of a Game Master and a small group of players (typically 5). The procedure is structured as follows:

+ Setup and Briefing (15 minutes): Participants are briefed, consent forms are signed, and the physical table is set up. Players will use their preferred method for personal character management (e.g., D&D Beyond on their phones), while the GM utilises the Unity artefact and the shared secondary display.
+ Gameplay Session (60-90 minutes): The group will play through a standardised, combat-and-exploration-focused scenario designed to trigger frequent rule checks and status effects. During this time, the Unity artefact will silently log the GM's interactions and screen-casting frequencies in the background.
+ Quantitative Assessment (10 minutes): Immediately upon concluding the session, all participants (including the GM) will independently complete a digital version of the NASA-TLX questionnaire to measure their perceived mental, physical, and temporal demands, as well as performance, effort, and frustration.
+ Qualitative Interviews (20-30 minutes): The session will conclude with a group-based, semi-structured interview. Open-ended questions will be used to prompt discussion regarding how the shared digital screen affected their focus, whether the automated rule retrieval helped maintain narrative pacing, and if they felt more or less immersed compared to traditional physical play.

== Data Analysis Strategy
=== Triangulating the Data Streams

The data gathered will be analysed in three distinct streams before being synthesised in the final discussion:

- Quantitative Analysis (NASA-TLX): The raw scores from the six NASA-TLX subscales will be aggregated and averaged. Descriptive statistics (mean, median, standard deviation) will be generated to identify which cognitive burdens were highest and lowest across the participant pool. Differences between the GM's workload and the players' workload will be explicitly compared.
- Qualitative Analysis (Interviews): The semi-structured interviews will be transcribed and analysed using Thematic Analysis @braun_using_2006. The transcripts will be coded to identify recurring themes related to "immersion," "distraction," "social presence," and "flow."
- Log Analysis (Objective Data): The JSON interaction logs will be parsed to calculate the frequency and average timing of tool usage.
By correlating the timestamped logging data with the self-reported NASA-TLX scores and interview themes, the study will determine if high digital interaction corresponds with broken immersion, or if the system successfully acted as an invisible aid that deepened the tabletop experience.