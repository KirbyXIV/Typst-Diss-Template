#import "../template/layout-template.typ" as layout
#show: doc => layout.MainPageSettings(doc)

= Results and Discussion

This chapter presents the findings from the mixed-methods evaluation of the digital assistance artifact. The primary research question sought to determine whether digital assistance deepens or disrupts immersion in face-to-face tabletop role-playing games. The data is divided into two primary sections: a qualitative thematic analysis derived from post-session open-ended participant responses, and a quantitative assessment of cognitive workload using the NASA-TLX framework. Finally, the chapter synthesises these findings, discussing them in the context of the theoretical frameworks established in the literature review.

== Qualitative Findings: Thematic Analysis
=== Methodology of Analysis
The open-ended survey responses and semi-structured interview data were analysed using Thematic Analysis @braun_using_2006. The raw partipant data was coded and grouped into four dominant themes: Cognitive Load Reduction, Spatial Awareness and Combat Fluidity, Information Accessibility and Flow, and The Double-Edged Sword of Digital Distraction.

=== Theme 1: Cognitive Load Reduction

A recurring theme across all participant feedback was the significant reduction in mental effort required to play the game, directly supporting the Cognitive Load Theory @sweller_cognitive_1988. Participants consistently highlighted that automating dice rolls and modifier calculations made managing their characters notably easier.

One participant noted the friction inherent in traditional physical play: "There are a lot of different skill modifiers and save modifiers and having to update them each time my character levels up can be a tedious process\.\.\. Having this done automatically by the digital tool makes play that much smoother." Another highlighted that calculating total damage for multiple actions "may even require I borrow other people's dice in order to complete these large moves. The tool simplified this greatly by calculating it for me."

Interestingly, one participant noted that it still took "a good amount of mental effort to keep track of everything, especially when using unfamiliar characters that were already level 5." This perfectly illustrates the distinction between intrinsic and extraneous load: the *intrinsic* load of learning a complex new character remained high, but the digital tool successfully eliminated the *extraneous* load of doing the mathematical calculations, allowing the player to focus on playing the game.

=== Theme 2: Spatial Awareness and Combat Fluidity

The visual representation provided by the shared digital table emerged as a massive benefit for player engagement, particularly during "downtime" between turns. In traditional play, players often disengage when it is not their turn. However, participants reported that the artifact "helped keep my attention during rounds of combat that were not my turn as the visual representations of the other players and the enemies gave me something to focus on."

The digital distance measurement tools (the ruler and AoE spheres) were frequently cited as highly beneficial. As one player explained: "The ability to easily see the locations of enemies helps a large amount when it comes to making plans while waiting for my turn. This made taking my turn that much quicker since I did not have to ask the game master if a target is within range, making the game feel much more fluid." By providing a clear, shared visual anchor, the tool fostered proactive strategic thinking rather than reactive questioning.

=== Theme 3: Information Accessibility and Flow

A primary risk of traditional TTRPG play is the disruption of narrative flow caused by looking up rules. The digital tool successfully mitigated this friction. Participants contrasted the digital experience with paper sheets, noting that physical rule-checking is a "confusing process\.\.\. I may have to switch between pages or chapters in the rule books multiple times."

In contrast, having character abilities, backstories, and rules readily available on-screen meant that checking rules "had little affect on my focus on the game as it was very easy to quickly find something and then return to the game." By keeping relevant rules "next to all items, such as descriptions under attacks," the tool protected the players' state of Flow @csikszentmihalyi_flow_2000, allowing for "on the fly decision making in character."

=== Theme 4: The Double-Edged Sword of Digital Distraction

While the tool broadly enhanced immersion through visual aids, with players stating that visualising the environment "allowed me to stay in character more readily", the introduction of screens into the physical space did present unique challenges.

Validating the concerns raised in the literature review regarding hybrid "phygital" spaces, one participant provided a critical insight into digital distraction: "There were definitely times where my attention drifted away from the experience, the use of the digital tool did make it feel easier to get distracted, since on my laptop I may have messaging apps or other websites open which I may swap to out of habit, an issue I don't have when using paper character sheets." This highlights that while the TTRPG software itself reduces cognitive load, the hardware it runs on introduces external stimuli that can actively fracture the 'magic circle' of social play.

== Quantitative Workload Analysis (NASA-TLX)
=== Overview of NASA-TLX Scores

Following the gameplay session, all five participants completed the NASA-TLX questionnaire. The assessment captured both their raw workload ratings (on a 1-to-10 scale) and their pairwise comparisons to determine which factors contributed most heavily to their perceived cognitive load. The aggregated raw averages provide an objective measure of the digital tool's impact on their mental state:
#figure(
  image("../../Images/NASATLXScores.png", width: 80%),
  caption: [Average NASA Task Load Index (NASA-TLX) scores reported by participants following the hybrid TTRPG session.]
)

=== Mental, Physical, and Temporal Demand

As expected for a Tabletop Role-Playing Game, Physical Demand scored the lowest across all participants (averaging just 2.0/10). The pairwise weighting comparisons strongly reinforced this, with participants universally ranking Mental and Temporal demands as far more significant contributors to their workload than physical effort.

Mental Demand averaged a moderate 5.4/10. While digital assistance automated the mathematics, the TTRPG experience inherently requires strategic thinking, role-playing, and spatial planning. This moderate score perfectly aligns with the qualitative findings: the *extraneous* load (math and rules) was reduced, but the *intrinsic* load (playing the game and making decisions) remained intact.

Temporal Demand (time pressure) averaged 4.4/10, but the data reveals a fascinating variance among participants: the scores were 6, 7, 1, 2, and 6. This bimodal split indicates that time pressure was highly subjective. Players who were less familiar with their level 5 characters felt significantly more rushed by the pace of combat, whereas experienced players felt almost no temporal pressure. Crucially, because the digital tool automated the math, the time pressure stemmed entirely from the game's narrative stakes rather than the software's interface.. This suggests that while combat pacing was generally manageable, the flow of turns still naturally imposed some time-based cognitive pressure on certain players

=== Performance, Effort, and Frustration

The most striking results from the NASA-TLX data are found in the Performance and Frustration metrics. Participants rated their perceived Performance (how successful they felt in accomplishing their goals) exceptionally high, averaging 8.8/10.

Crucially, Frustration scored incredibly low, averaging just 2.6/10. In human-computer interaction, high mental demand combined with high frustration indicates a poorly designed, clunky interface that overwhelms the user (extraneous load). However, the combination of moderate Mental Demand (5.4) and very low Frustration (2.6) strongly implies that the cognitive effort expended by the players was germane load—productive, enjoyable effort spent engaging with the game's strategy rather than fighting the software. Furthermore, Effort scored a moderate 4.6/10, supporting the interview data where players explicitly noted that the digital tool "took very little mental effort as the tool kept track of all of these things for me."

=== Pairwise Weighting analysis
The second phase of the NASA-TLX requires participants to weigh the six factors against one another. This pairwise data overwhelmingly validates the success of the artefact. In direct comparisons, *Mental Demand* and *Performance* consistently dominated the selections.

When participants were asked to choose between *Mental Demand* and *Frustration*, 100% of participants selected *Mental Demand* as the primary contributor to their workload. Similarly, when comparing *Performance* to *Frustration*, 100% selected *Performance*. In every comparison involving *Physical Demand* or *Frustration*, they were outvoted by *Temporal Demand*, *Effort*, or *Mental Demand*. This weighted data conclusively proves that the workload experienced by the players was healthy, game-focused effort, entirely devoid of the technological frustration that often plagues complex Virtual Tabletops.

== Synthesis and Discussion
=== Triangulating Workload and Immersion

By triangulating the quantitative NASA-TLX data with the qualitative interview themes, a clear picture emerges regarding the tool's impact on cognitive load. The literature review posited that traditional TTRPGs generate high extraneous cognitive load due to complex, overlapping mathematical modifiers @sweller_cognitive_1988. The qualitative data confirmed that the digital artifact successfully eliminated this burden. More importantly, the quantitative data (specifically the 2.6/10 Frustration score) proves that the software did not replace the mathematical burden with a *technological* burden. The UI/UX was sufficiently streamlined to act as an invisible facilitator, protecting the players' immersion.

=== Mapping Findings to the SCI Model of Immersion

Returning to the SCI model @ermi_fundamental_2005 of immersion (Sensory, Challenge-based, and Imaginative), the artifact demonstrated profound effects across all three dimensions:
- *Sensory Immersion:* The secondary player-facing display vastly improved sensory immersion. Players explicitly noted that the visual representations of enemies and environments kept them engaged during "downtime" between turns.
- *Challenge-Based Immersion:* The automated distance measurement (rulers) and stat tracking allowed players to focus entirely on the tactical challenge of the combat encounter, rather than the challenge of calculating the rules.
- *Imaginative Immersion:* By reducing the time spent flipping through rulebooks, players reported a heightened ability to "stay in character more readily" and engage in "on the fly decision making," deepening their empathetic connection to the narrative.

=== The Phygital Divide and Environmental Disruption
Returning to the primary research question, Does digital assistance deepen or disrupt immersion? The data suggests a nuanced answer: it fundamentally deepens systemic and imaginative immersion while introducing a moderate risk of environmental disruption.

The shared visual display acted as a highly effective focal point, successfully maintaining player attention. However, the findings also confirm the warnings regarding the introduction of technology into established workflows @bainbridge_ironies_1982. While the software itself did not disrupt the game, the presence of internet-connected personal devices at the physical table provided an avenue for habitual digital distraction (e.g., messaging apps). Therefore, the success of a hybrid TTRPG space relies not just on the quality of the software artifact, but on the social contract established by the players to resist the external distractions inherent to the hardware.

=== Limitations and Future Refinements

Participants noted that the study was heavily combat-focused due to the time constraints of the session. A common request for future iterations was the implementation of "further immersive effects like sounds" and "more areas and environment interaction outside of a combat context." This indicates an appetite for even deeper sensory immersion tools, suggesting that future developments should focus on expanding narrative and exploration features alongside combat automation.