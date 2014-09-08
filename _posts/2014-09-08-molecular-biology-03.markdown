---
layout: post
title:  "Molecular Biology 03: 'DNA structure and topology'"
date:   2014-09-08 12:01:00
author: ericminikel
tag: bcmp-200
location: Boston, MA
---

*These are my notes from lecture 03 of Harvard's BCMP 200: Molecular Biology course, delivered by Joe Loparo on September 8, 2014.*

### Review

Thermodynamics tells you whether a reaction will occur spontaneously, kinetics tells you how quickly it will occur. Today's lecture will cover kinetics; last time we covered thermodynamics. Here is a quick review of some key points from [last time](/2014/09/08/molecular-biology-02), and their implications for today's lecture.

Recall the tradeoff between enthalpy and entropy in  note that solvation of urea is an endothermic reaction driven by increasing entropy which overcomes an increase in enthalpy, making the environment colder. Mixing of epoxy is an exothermic reaction where entropy decreases but is more than compensated by a decrease in enthalpy, making the environment hotter.

Levinthal's paradox is as follows. Imagine a 100-residue peptide with 99 peptide bonds and a total of 198 &Psi; and &Phi; angles. If each angle has three stable orientations, there are 3^198 possible conformations of the polypeptide. If a protein sampled one conformation per picosecond (a reasonable time scale of molecular movements), it would take 10^71 seconds to sample all of them. So how can proteins ever fold in a reasonable amount of time? Levinthal concluded that sampling is non-random - it occurs on a rugged high-dimensional energy landscape where the protein moves downhill.

This requires that thermal energy be on a scale comparable to other biological energies. Thermal energy is equal to kT. In terms of kJ/mol energy content, thermal energy is less than one order of magnitude less than a noncovalent bond, and only a bit more than an order of magnitude less than one ATP molecule's hydrolysis. This thermal energy is crucial for not getting stuck at a local minimum as you traverse the rugged energy landscape.

### Reaction kinetics

For the generic reaction A + B &rarr; C to occur, A and B must diffuse, collide with each other, and then fuse into C. Imagine the reaction occurring in a discretized grid, where a collision occurs if a unit of A and a unit of B are found in adjacent grid cells.

+ N<sub>A</sub> is the number of A molecules
+ N<sub>B</sub> is the number of B molecules
+ n<sub>total</sub> is the number of grid cells
+ P<sub>A</sub> := N<sub>A</sub> / n<sub>total</sub> 
+ P<sub>B</sub> := N<sub>B</sub> / n<sub>total</sub> 

The probability of A and B being adjacent to one another is proportional to both P<sub>A</sub> and P<sub>B</sub>. This explains why the rate of a reaction should be proportional to the product of the concentrations of all reactants.

| reaction type | reaction equation | rate |
| ------------  | ----------------- | ---- |
| first order   | A &rarr; C | d[A]/dt = -K[A] |
| second order | A + B &rarr; C | d[A]/dt = -K[A][B] |
| third order | 2A + B &rarr; C | &half;d[A]/dt = d[B]/dt = -K[A]<sup>2</sup>[B] |
| zero order | z catalyzes A &rarr; C, where z is limiting and A is in abundance | d[A]/dt = -K |

In practice, most experiments depend upon reactant concentration as a function of time, rather than on the time derivative of the concentration per se, so it is more useful to integrate all of the above formulae.For instance, for a zero order reaction where d[A]/dt = -K, integration yields [A] - [A]<sub>0</sub> = -Kt. In a first-order reaction, integration of d[A]/dt -K[A] yields [A] = [A]<sub>0</sub> e<sup>-Kt</sup>, which means exponential decay of [A] over time. In a second order reaction, integration yields [A] = [A]<sub>0</sub>/(1 + [A]<sub>0</sub>Kt).

If you plot these equations, you will see that the higher-order a reaction, the more rapidly it slows down over time as reactants are consumed.

The above equations are approximations relevant to cases where &Delta;G << 0, i.e. irreversible reactions. In practice many reactions in biology are reversible.

Consider the reversible reaction A &harr; B, where the forward rate constant is K<sub>f</sub> and the reverse is K<sub>r</sub>. Then:

+ d[A]/dt = -K<sub>f</sub>[A] + K<sub>r</sub>[B]
+ d[B]/dt = K<sub>f</sub>[A] - K<sub>r</sub>[B]

If you integrate these under the constraint that d([A] + [B])/dt = 0 (i.e. conservation of total concentration) you get:

[A] = ([A]<sub>0</sub> - [A]<sub>eq</sub>)e<sup>-(Kf + Kr)t</sup> + [A]<sub>eq</sub>

An implication of this is that [A] approaches [A]<sub>eq</sub> asymptotically over time. We can obtain a similar equation for B. If we do this for both A and B we find that [B]<sub>eq</sub> / [A]<sub>eq</sub>  = K<sub>f</sub> / K<sub>r</sub> = K<sub>eq</sub>. Therefore the ratio of [A] and [B] at equilibrium tells you the thermodynamic equilibrium constant K<sub>eq</sub>.

How does one observe the equilibrium state of a biological system in practice? For some reactions, it is easy to mix two things and watch the reaction proceed to equilibrium. For other systems it is impossible - for instance, for proteins that are always found in a dimeric form, it can be impossible to purify monomers in order to observe the rate of dimerization. The solution to this difficulty is to use **relaxation methods**. You perturb the system, using a change in pH or temperature so that the system is no longer at equilibrium, and then watch the "relax" into the *new* equilibrium. This is often done with an electric shock or laser blast to suddenly increase temperature.

Consider the binding reaction between a protein P and a ligand L to form a protein-ligand complex P&middot;L:

P + L &harr; P&middot;L

The forward rate is called K<sub>on</sub> and the backwards rate is called K<sub>off</sub>. We define the association constant K<sub>A</sub> as follows:

K<sub>A</sub> := K<sub>eq</sub> = [P&middot;L]/(\[P\]\[L\])

It has units of inverse molar (M<sup>-1</sup>), which is non-intuitive. Therefore we instead by convention refer to a <em>dis</em>sociation constant, K<sub>D</sub>, which has units of molar (M):

K<sub>D</sub> := \[P\]\[L\]/[P&middot;L]

Complexs with *smaller* K<sub>D</sub> have higher affinity.

If we assume [L] >> [P], then [L] &asymp; [L]<sub>0</sub>. Therefore, we can define K&prime;<sub>on</sub> = K<sub>on</sub>[L]<sub>0</sub>, and this simplifies the overall formula for derivative of [P] to d[P]/dt = -K&prime;<sub>on</sub>[P] + K<sub>off</sub>[P&middot;L]. Integrating this we can get:

[P] = ([P]<sub>0</sub> - [P]<sub>eq</sub>)e<sup>-(K&prime;on+Koff)t + [P]<sub>eq</sub>

Thus if we fix [L], then run the reaction and plot [P] as a function of time, we can estimate the quantity K<sub>obs</sub> = (K&prime;<sub>on</sub> + K<sub>off</sub>). Then we do this for a variety of [L] values - L always has to be in vast excess to P, so we could chose values of [L] that are in 100-fold excess, 1,000-fold excess, 10,000-fold excess, and so on. If we plot [L] on the x-axis and K<sub>obs</sub> on the y axis, then the slope will be K<sub>on</sub> and the intercept will be K<sub>off</sub>.

One technique to do these measurements in practice is *white light interferometry*. White light is emitted down a needle towards its tip which is a functionalized surface. Some light will be reflected by the tip itself and some by the molecules attached to the tip. You can then plot amplitude vs. wavelength of reflected light (i.e. which colors are most intense) - this is called an interferogram. When a protein binds to the tip's surface, you get a change in the interferogram. This spectral shift can be measured in real time to derive the association constant. The extent of interferogram response is related to protein size, so for example you get a bigger spectral change from an IgG antibody than from a Fab.

In class, we went through an experiment where protein A (a HA-tagged *Staphylococcus* virulence factor) is conjugated to the tip, and it is dipped into a solution containing an antibody (HA) that will bind it. You can observe association, and then after you reach equilibrium, you can dip the tip into a vast reservoir of buffer without antibody, and observe the exponential decay of dissociation. The instrument measures "binding" in units of nanometers (nm) of spectral shift, and the software can calculate K<sub>on</sub> and K<sub>off</sub> from the association and dissociation curves.

Other experimental approaches include the [filter binding assay](http://en.wikipedia.org/wiki/Filter_binding_assay) and [electrophoretic mobility shift assay (EMSA)](http://en.wikipedia.org/wiki/Electrophoretic_mobility_shift_assay). Both of these measure the bound and unbound fractions of DNA. The fraction f of A bound to B is defined as f := [A&middot;B] / ([A] + [A&middot;B]). It can be shown that [A&middot;B] = \[A\]\[B\]/K<sub>D</sub>. Therefore f = [B] / (K<sub>D</sub> + [B]). When [B] == K<sub>D</sub>, then f = 1/2, so you can just find the value of [B] that gives you 50% of A bound, and that's your K<sub>D</sub>.

k, the rate constant, depends on both:

+ The rate of collisions between A and B
+ The proportion of collisions that produce a product

That's right, not all collisions lead to product. K<sub>obs</sub> even for a "fast" reaction is usually four orders of magnitude smaller than what would be predicted from the collision rate, implying that only 1 in 10,000 collisions is productive. This is largely because only those collisions which provide enough energy to overcome the higher-energy transition state will lead to a product. For instance, hydroloysis of ATP requires that H<sub>2</sub>O collide with ATP with sufficient energy such that it forms a pentavalent transition state complex which is highly unfavorable - only if this energy hill is mounted with the molecule proceed downhill to ADP.

We define the activation energy E<sub>A</sub> as the difference in energy between the transition state (the highest energy point in the curve) and the starting state.

The fraction of molecules that have energy equal to E<sub>A</sub> is given by the Boltzmann distribution, such that we can derive the Arrhenius equation:

k = Ae<sup>-E<sub>A</sub>/(RT)</sup>

Where A is a factor that captures collision rate and orientation effects. The kinetics, therefore, are dictated by the barrier height and *not* by &Delta;G.

Michaelis and Menten proposed that an enzyme E and its substrate S form a complex E&middot;S which has higher energy before yielding products E + P:

E + S &harr; E&middot;S &rarr; E + P

Where the forward rate in step 1 is K<sub>1</sub> and the backwards rate is K<sub>-1</sub>, while the second step is irreversible and has only a forward rate, K<sub>2</sub>.

We can measure the initial velocity of the reaction as:

V<sub>0</sub> = d[P]/dt = K<sub>2</sub>[E&middot;S]

At the steady state,

d[E&middot;S]/dt = 0 = K<sub>1</sub>\[E\]\[S\] - K<sub>-1</sub>[E&middot;S]<sub>SS</sub> - K<sub>2</sub>[E&middot;S]<sub>SS</sub>

Rearranging this we get:

[E&middot;S]<sub>SS</sub> = K<sub>1</sub>\[E\]\[S\] / (K<sub>-1</sub> + K<sub>2</sub>)

And plugging this into the equation for V<sub>0</sub> we get:

V<sub>0</sub> = K<sub>1</sub>K<sub>2</sub>\[E\]\[S\] / (K<sub>-1</sub> + K<sub>2</sub>)

We then do further substitution and rearrangement, and we define the Michaelis constant (K<sub>m</sub>) as:

K<sub>m</sub> = (K<sub>-1</sub> + K<sub>2</sub>)/K<sub>1</sub>

And thus we get the Michaelis-Menten equation:

V<sub>0</sub> = V<sub>max</sub> / (1 + K<sub>m</sub>/[S])


