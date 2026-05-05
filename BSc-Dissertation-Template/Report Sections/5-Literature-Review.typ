#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

//C1: Interim literature review (70%) - 80
//The literature review is well structured, clearly written, and demonstrates a thoughtful attempt to integrate theory with the topic of digital assistance in tabletop role-playing games. It effectively combines game studies, psychology, and human–computer interaction literature, drawing on automation theory and cognitive load theory to provide a coherent conceptual framework. However, the chapter remains only partially analytical: most sources are described rather than critically examined, and the transfer of theories from industrial or learning contexts to collaborative storytelling play is assumed rather than justified. Although the review covers good scope of relevant literature as well as from adjacent areas, such as virtual and augmented reality tabletop studies, this material is primarily presented as background rather than analysed to show why its findings cannot be directly applied to hybrid in-person play. Consequently, the research gap is plausible but insufficiently demonstrated, as the review does not clearly establish how existing or related studies fail to address the combined relationship between automation, cognitive workload, and immersion. In addition, the methodology section functions more as justification of chosen measures than evaluation of prior research practices. Overall, it is a strong and focused literature review with clear direction, but it requires deeper critique of sources and more explicit use of related research to justify the need for the study.

= Literature Review

This chapter critically examines the existing academic literature surrounding tabletop role-playing games (TTRPGs), cognitive load, and the human-computer interaction (HCI) to establish a theoretical foundation for this project. The review is structured chronologically and thematically, beginning with the historical evolution of TTRPGs and their recent digital transformation. It then explores many psychological frameworks, specifically Cognitive Load Theory and theories of immersion, to understand how players process information and maintain narrative engagement. Finally, the chapter reviews current research on automation, hybrid gaming spaces, and the methodological tools used to measure subjective player experiences, ultimately identifying the critial research gap this dissertation addresses.

== The Evolution of TTRPGs and the Digital Shift

=== The Traditional Physical Experience

Tabletop role-playing games are fundamentally collaborative narrative experiences that blend cooperative storytelling, rigid rule systems, and social interaction @cover_creation_2014. Traditionally played face-to-face, TTRPGs have historically relied entirely on physical artifacts: paper character sheets that track statistics, physical rulebooks for mechanical arbitration, and polyhedral dice to introduce elements of chance and resolve uncertainty. In this traditional setup, the cognitive and administrative burden falls entirely on the players and the Game Master (GM). These physical components are not merely administrative tools; they serve as tactile anchors that help players ground themselves within the shared imaginative space, fostering a sense of community and collaborative problem-solving @bowman_functions_2010.

=== The Rise of Virtual Tabletops

Over the past decade, TTRPGs have undergone a significant digital transformation. This shift was initially driven by yhe desire to connect players across geographical distances but was massively accelerated by the global COVID-19 pandemic, which necessitated remote play. As a result, Virtual Tabletop (VTT) platforms such as Roll20, FoundryVTT, Owlbear Rodeo, and companion applications like D&D Beyond emerged as dominant forces in the hobby. These platforms digitise the tradional digital artifacts automating mechanical elements such as dice rolls, modifier calculations, spell area-of-affect templates, and character statistic management.

=== The Cost of Streamlining

While these digital assistance tools promise enhanced accessibility and a reduced administrative burden, their impact on the core experiential qualities of the game remains a subject of debate. Traditional physical play requires players to actively engage with the rules. Adding modifiers to a physical dice roll requires a working knowledge of the character's capabilities. In contrast, digital tools often reduce this interaction to a single button click. While this streamlines combat and reduces mathematical errors, it raises questions about whether this automation distances the player from their character's mechanics.

=== The Emergence of Hybrid Play

Furthermore, the majority of VTT development and associated research has focused almost exclusively on fully remote play. However, as in-person play has resumed, players are increasingly bringing these digital tools back to the physical table, creating hybrid gaming environments. The impact of this digital assistance on core tabletop qualities, such as imaginative immersion, creative engagement, and narrative flow in a face-to-face setting, remains largely unexplored. Understanding this shift requires looking beyond the software's functionality and examining how digital interfaces alter the psychological state of the players.

== Theories of Immersion, Presence, and Flow
=== The Dimensions of Immersion, Presence, and Flow

To understand whether digital assistance disrupts or deepens the tabletop experience, it is first necessary to define "immersion," a term often used colloquially but possessing specific academic dimensions. Immersion in gaming is generally understood as the degree of involvement a player has with the virtual or imaginative environment.

A foundational framework for understanding this is the SCI model, which divides immersion into three components: Sensory, Challenge-based, and Imaginative @ermi_fundamental_2005. Traditional TTRPGs rely almost entirely on Imaginative immersion where players use spoken descriptions and their "theatre of the mind" to visualise the game world and empathise with their characters. Digital tools and VTTs, however, introduce a heavier reliance on Sensory immersion through digital maps, automated soundscapes, and visual tokens. A critical question arises as to whether this increase in sensory stimuli supports the imaginative experience or overrides it, making the game feel more like a tradional video game and less like a collaborative storytelling experience.

=== Perserving the Flow State

Closely related to immersion is the theory of Flow, defined as a state of deep absorption in an activity where the user's skill level perfectly matches the challenge presented @csikszentmihalyi_flow_2000. In TTRPGs, flow is achieved when narrative pacing is smooth and mechanical resolution (like rolling dice) feels intuitive and seamless. When playes have to stop and manually calculate complex maths, flow can be broken. Digital assistance theoretically protects this flow state by automating the math. However, if a digitial tool is poorly designed, clunky to navigate, or cause software errors, it introduces a new type of friction that shatters flow entirely.

=== Social Presence and the 'Magic Circle'

Furthermore, "Presence", the psychological feeling of "being there" in the game world, is heavily mediated by social interactions in TTRPGs. The shared physical space of a tabletop anchors the players. Introducing screens can create a barrier to this social presence, splitting a player's attention between the physical table and the digital interface.

== Cognitive Load Theory in Gaming
=== Managing Working Memory

Understanding how players process game mechanics requires an examination of the Cognitive Load Theory (CLT). CLT proposes that human working memory is limited and can easily become overwhelmed if a task demands too much mental effort @sweller_cognitive_1988. CLT divides cognitive load into three categories: Intrinsic load (the inherent complexity of the task), Extraneous load (unnecessary complexity introduced by poor design or presentation), and Germane load (the productive cognitive effort used to learn, strategise, and engage with the task).

Optimal performance and engagement occur when extraneous load is minimised, allowing mental resoures to be dedicated to the germane load @paas_cognitive_2003. In TTRPGs, calculating multiple overlapping buffs, debuffs, and dice modifiers represents a high extraneous load. Digital tools are designed specifically to eliminate this burden.

=== Asymmetrical Cognitive Demands: GM vs. Player

However, an important distinction must be made between the Game Master (GM) and the players. GMs bear an immense intrisic cognitive load: they must manage multiple non-player characters (NPCs), track narrative continuity, arbitrate rules, and react to unpredictable player choices. For GMs, digital automation is almost universally beneficial, as it prevents cognitive overload. Players, on the other hand, manage only a single character. If a digital tool automates all their mechanics (such as automatically calculating hit points and attack bonuses), it may inadvertently eliminate their germane load. By removing the need to actively interact with their character's statistics, players might become passive consumers of the game rather than active participants, thereby reducing their overall engagement.

=== Critiquing the Transfer of CLT to Role-Playing
While Cognitive Load Theory provides a robust vocabulary for discussing mental effort, its direct transfer from instructional design to collaborative storytelling must be critically examined. Originally formulated to optimise classroom learning, CLT assumes that the ultimate goal of an interface is absolute cognitive efficiency @mayer_cambridge_2022. However, game studies scholars have argued that gaming inherently relies on "productive friction"—the deliberate introduction of challenges that make the experience engaging rather than effortless @deterding_lens_2015.

In industrial or educational contexts, calculating mathematics is a barrier to the primary task. In a TTRPG, however, the act of rolling physical dice and adding modifiers is often cited by players as a tactile ritual that builds dramatic tension @bowman_immersion_2018. Therefore, directly applying CLT to TTRPGs risks an over-simplification: assuming that because a digital tool reduces extraneous mathematical load, it automatically improves the player's experience. This assumption fails to account for whether the physical administration of the game is actually "extraneous," or if it is a deeply ingrained, ritualistic component of tabletop immersion. A critical examination is required to determine whether automating these mechanics strips away the tangible engagement that originally defined the medium.

== Automation and Human-Computer Interaction
=== The Ironies of Automation in Play

The paradox of automating tabletop mechanics can be further understood through "Ironies of Automation" @bainbridge_ironies_1982. Bainbridge established that systems intended to reduce human operator workload often increase cognitive demands in unexpected ways or degrade the operator's fundamental skills. In TTRPGs, players who rely entirely on an app to calculate their abilities may fail to learn the game's underlying rules. Consequently, when the automation fails, such as when a complex, ambiguous narrative situation arises that the software cannot account for, the player lacks the foundational knowledge required to intervene manually.

=== Patterns of Human-Automation Interaction

Further exploration of human-automation interaction identifies distinct patterns of user behavior: specifically misuse, disuse, and abuse @parasuraman_humans_1997. Applied to the VTT context, "misuse" occurs when players blindly trust the digital tool's output, failing to notice when a modifier was applied incorrectly due to a software limitation. Conversely, "disuse" happens when players abandon a potentially helpful digital tool because an early bug or clunky interface breaks their trust or disrupts the narrative flow. 

=== Balancing Automation and Agency

Therefore, automation in TTRPGs is not a neutral addition; it fundamentally alters the player's relationship with the game's mechanics. The ideal digital assistance tool must strike a balance: it should automate tedious administrative tasks while requiring enough manual input from the player to maintain their situational awareness and active engagement with the game state.

=== Contextualising Industrial Automation for Collaborative Play
The frameworks established were developed within high-stakes industrial environments, such as aviation and nuclear operation, where automation failure results in catastrophic physical consequences @bainbridge_ironies_1982@parasuraman_humans_1997. Applying these models to the leisure context of a TTRPG requires contextual translation.

In a TTRPG, an "automation error", such as a digital map glitching or a VTT miscalculating a modifier, does not result in physical danger, but rather a rupture of the 'magic circle' @huizinga_homo_1950. The stakes are entirely narrative and social. When digital tools in a hybrid setting fail or cause confusion, they force the players to break character and address the software as users rather than as role-players. Thus, while the patterns of "misuse" and "disuse" remain highly relevant, the consequence of poor automation in TTRPGs is not operational failure, but rather the rapid deflation of imaginative immersion. Existing literature frequently overlooks this distinction, treating gaming software usability as a purely functional metric rather than an emotional and narrative vulnerability.

== Hybrid Play Spaces
=== The 'Head-Down' Interaction Paradigm

While much recent research has focused on purely remote digital gaming (facilitated via internet calls and VTTs), the return to in-person play has created a hybrid, or "phygital," environment. Players sit physically at the same table but interact via individual laptops, tablets, or smartphones.

Investigations into board game play have demonstrated that physical artifacts and face-to-face interactions create unique social affordances that digital games struggle to replicate @rogerson_cooperating_2018. Physical components naturally direct attention to the center of the table, creating a shared focal point. Conversely, introducing personal screens introduces a "head-down" dynamic. Instead of looking at the GM or other players to read social cues and engage in role-play, players may focus downward on their individual interfaces.

=== The Limitations of AR and VR Tabletop Research
Recent attempts to bridge the physical-digital divide in tabletop gaming have frequently leaned toward Augmented Reality (AR) and Virtual Reality (VR) solutions. Several studies have explored using AR headsets to project 3D digital game boards onto physical tables, aiming to merge digital automation with physical presence. However, while these studies are technologically pioneering, their findings cannot be directly applied to standard hybrid in-person play.

The fundamental flaw in transferring AR/VR research to the standard 'phygital' tabletop is the isolation of the visual field. Head-mounted displays inherently enclose the user. Even in see-through AR, players are viewing their own distinct projection rather than a unified, shared physical artifact. This isolates the players perceptually, damaging the shared gaze and micro-expressions critical to collaborative role-play @gugenheimer_facedisplay_2018. A shared secondary monitor, conversely, acts much like a traditional physical game board: it is a singular, objective focal point that exists identically for all players in the room. Therefore, to understand the true impact of digital assistance in modern hybrid TTRPGs, research must pivot away from isolating headset technologies and focus critically on shared, screen-based environmental augmentations.

=== UI/UX Challenges in Shared Spaces

While digital tools have modernised TTRPGs, questions have been raised regarding how these tools reshape the intimacy of the physical table @svelch_mediatization_2022. Furthermore, research indicates that while digital overlays can enhance a player's understanding of complex game environments, they can also introduce cognitive distractions that fragment attention @zaba_tabletop_2025. Designing for a hybrid space therefore requires a deep consideration of UI/UX design. Interfaces must be clean and easily readable at a glance so that players can quickly retrieve the information they need and return their attention to the shared physical and social space.

== Methological Approaches to Measuring Experience
=== Quantitative Measurement of Workload

Measuring a subjective experience like "immersion" alongside a quantitative metric like "cognitive load" requires robust, validated methodologies. The NASA Task Load Index (NASA-TLX) remains the gold standard for assessing perceived workload @hart_nasa-task_2006. It measures workload across six dimensions: mental demand, physical demand, temporal demand, performance, effort, and frustration.

While originally designed for aviation and industrial contexts, NASA-TLX has been successfully adapted to gaming environments. However, workload metrics alone cannot capture the full spectrum of user experience; a high mental demand might indicate frustration (extraneous load) or deep, enjoyable strategic engagement (germane load) @wiebe_measuring_2014. Therefore, NASA-TLX provides an excellent quantitative baseline but must be contextualised.

=== The Necessity of Qualititve Context

To provide this context, qualitative methods are essential. The utilisation of mixed methods to examine player involvement has shown that post-session interviews reveal nuanced experiential dimensions, such as emotional investment and social friction, that standardised questionnaires often miss @iacovides_removing_2015. Similarly, reflective narratives have proven highly valuable in exploring subjective digital game experiences @poels_it_2007. By combining the quantitative rigor of NASA-TLX with the rich, subjective data gathered from semi-structured interviews, a comprehensive picture of how digital tools impact the TTRPG experience can be formed.

== Summary and Research Gap
=== Synthesising the Literature

The literature demonstrates that while TTRPGs have embraced digital transformation, the theoretical implications of this shift are complex. Cognitive Load Theory suggests that digital tools should theoretically benefit players by reducing extraneous mathematical burdens. However, theories of automation and immersion warn that over-automation can alienate players from the game mechanics, disrupt flow, and damage the imaginative and social presence required for a successful session.

=== Addressing the Hybrid Research Gap

Despite growing interest in digital TTRPGs, the current academic discourse exhibits a distinct research gap. Most existing studies focus either on fully automated video games or purely remote VTT play. There is a lack of empirical research examining the hybrid space, where in-person players utilise digital assistance tools at a physical table. Furthermore, few studies integrate both cognitive workload measurement and qualitative immersion assessment within a unified framework.

This project addresses this gap. By developing a bespoke Unity-based digital assistance tool and evaluating its use in live, face-to-face sessions through a mixed-methods approach, this research will provide evidence-based insights into whether digital tools deepen the core experiential qualities of tabletop role-playing, or disrupt them.