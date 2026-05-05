#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)
#set enum(indent: 1em)

= Introduction
== Motivation
=== The Digital Transformation of TTRPGs
Tabletop Role-playing (TTRPGs) are unique collaborative storytelling experiences that merge structured rule systems with unbound creative improvisation. Historically, the medium has been anchored in the physical world where players gather around a table utilising pen, paper, physical dice, and rulebooks to construct a shared imaginative space @cover_creation_2014. However, over the last decade, and significantly accelerated by the global shift towards remote interaction, TTRPGs have undergone a profound digital transformation. Platforms such as D&D Beyond, Roll20, and FoundryVTT have introduced high levels of automation, transforming the way players interact with the game's underlying mechanics.

=== Cognitive Load in Tabletop Gaming

The primary motivation behind the digitisation is the reduction of cognitive load. Modern TTRPG systems, such as Dungeons & Dragons 5th Edition, require players and Game Masters (GMs) to juggle complex Mathematics, spatial positioning, and vast amounts of character information. Digital tools aim to alleviate this "extraneous cognitive load" @sweller_cognitive_1988, theoretically freeing up mental resources for role-playing and strategic thinking.

== The Hybrid Environment and Social Architecture

Moreover, the social architecture of TTRPGs heavily relies on a conceptual boundary where players suspend disbelief and immerse themselves in the shared fiction. In traditional face-to-face play, this is maintained through constant eye contact, reading non-verbal cues, and a shared focus on physical artifacts in the centre of the table. When digital assistance is introduced to an in-person setting, creating a 'phygital' (physical-digital) or hybrid gaming space, the dynamic shifts. Players must divide their attention between the shared physical tabletop and the private digital space of their screens. This 'head-down' interaction paradigm risks fracturing the shared narrative focus. While extensive research has evaluated purely remote play platforms, there is a distinct lack of studies regarding how these digital tools affect the intimate, face-to-face dynamics of in-person sessions.

=== The Paradox of Automation

However, automation is a double-edged sword. Systems designed to assist human operators can inadvertently distance them from the task, leading to a loss of engagement and situational awareness @bainbridge_ironies_1982. In the context of a TTRPG, if a digital tool automates the rolling of dice and calculations of modifiers, does it remove the tactile satisfaction and dramatic tension inherent to physical play? Does the presence of a screen in a face-to-face setting distrupt the shared focus required to maintain narrative immersion? This project is motivated by the need to understand this delicate balance: determining where digital assistance transitions from a helpful cognitive aid to a disruptive barrier in hybrid gaming environments.

== Aims and Objectives
=== Project Aims and Core Objectives
The primary aim of this project is to investigate and critically evaluate how the use of digital assistance tools affecrs the cognitive workload and immersive engagement during in-person, hybrid Virtual Tabletop Role-Playing Game (VTT RPG) sessions.

To achieve this aim, the following objectives have been established: 
+ Literature Review: To critically evaluate existing literature surrounding cognitive load theory, human-automation interation, and immersion within physical and digital gaming environments.
+ Artifact Design and Development: To design and implement a Unity-based digital assistance tool tailored for in-person TTRPG play, featuring a dual-display system seperating GM and player information.
+ Experimental Study Design: To design and conduct an ethically approved, mixed-methods study where participants utilise the developed artifact during live tabletop sessions.
+ Data Collection and Analysis: To measure cognitive workload using the standardised NASA-TLX assessment and capture experiental data via semi-structured interviews, subsequently analysing this data through statistical and thematic analysis.
+ Evaluation and Recommendations: To synthesise the findings, drawing conclusions on the impact of digital tools on TTRPG immersion, and to propose design guidelines for future hybrid tabletop software.

=== Methodological Rationale

By adopting a mixed-methods approach, this project bridges principles from Human-Computer Interaction (HCI) and Game Studies. While quantitative metrics offer an objective measure of cognitive exertion, the qualitative interviews ensure that the nuanced, subjective nature of role-playing immersion, which cannot be easily quantified, is adequately captured. Ultimately, these insights will contribute to the ongoing academic discourse surrounding technology-mediated social play.

== Dissertation Structure
=== Chapter Overview
This dissertation is structured to document the complete lifecycle of the project, from theoretical grounding to a final evaluation.
- Chapter 2 (Literature Review) explores the theoretical background of the study, examining cognitive load, theories of immersion, and existing reseach on VTTs.
- Chapter 3 (Requirements Analysis) outlines the functional and non-functional requirements for the software artifact, alongside the methodology for evaluation.
- Chapter 4 (Design and Methodology) details the design of the Unity artifact, the UI/UX decisions, and the methodological framework for the mixed-methods user study.
- Chapter 5 (Implementation) provides a technical breakdown of the software development process, highlighting key programming challenges and solutions in the Unity Engine.
- Chapter 6 (Results and Discussion) presents the quantitative NASA-TLX data alongside the qualitative thematic analysis of the player interviews, discussing these findings in the context of the original research question.
- Chapter 7 (Conclusion) summarises the project's achievements, acknowledges its limitation, and suggests avenues for future work in the domain of tabletop gaming.

=== Research Outcome

Ultimately, this dissertation seeks to provide a comprehensive understanding of how digital tools can be harmoniously integrated into physical gaming spaces. By addressing both the technical challenges of developing a hybrid assistance tool and the human-computer interaction elements of player experience, the research outcomes aim to offer actionable guidance for developers in this rapidly expanding domain. The following chapter will lay the theoretical foundation for this investigation by reviewing current literature on cognitive load, automation, and immersion.