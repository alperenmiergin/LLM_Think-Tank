**Kaynak:** [[00_Context/0_Mehlig_Machine_Learning/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

4 The Boltzmann distribution
In Chapter 2 we saw that the deterministic dynamics (2.5) of Hopfield networks
admits the Lyapunov function
H = −
1
2
∑
i j
wi j si sj +
∑
i
θi si , (4.1)
if the weights wi j are symmetric, and wi i > 0. In this Chapter1 we show that the
asynchronous stochastic McCulloch-Pitts dynamics (3.1) converges to a steady state
where the state vector s follows the Boltzmann distribution
PB(s ) = Z −1e−β H (s ) with normalisation Z =
∑
s
e−β H (s ) . (4.2)
The stochastic dynamics (3.1) is closely related to that of Markov-chain Monte-
Carlo algorithms, designed to efficiently sample from the Boltzmann distribution.
We also discuss how to solve optimisation tasks by Monte-Carlo simulation: one
assigns a suitable energy H to each configuration s , so that the function H (s ) has
global minimum for the optimal configuration s min. The stochastic dynamics finds
low-energy configurations (but not necessarily s min), in particular if one iteratively
decreases the noise level by increasing β (simulated annealing [44]).
Last but not least we look at Boltzmann machines [14, 15, 45–47], stochastic
Hopfield networks with hidden neurons that are neither used for input nor for
output. Boltzmann machines can be trained to learn the properties of a distribution
Pdata(x ) of binary input patterns x . The idea is to iteratively change the weights in
Equation (4.1) until the Boltzmann distribution represents the input distribution.
This idea, to iterate the weights until the network learns the input distribution
Pdata, is used in a slightly different form in supervised learning (Part II). Boltzmann
machines are closely related to Hopfield networks. Without hidden neurons, both
models learn to represent two-point correlations 〈x (μ)i x (μ)j 〉 of pattern bits.
When important information about the inputs is encoded in higher-order cor-
relations, one can use hidden neurons to represent these correlations. Generally
Boltzmann machines are hard to train, in particular if they have many hidden neu-
rons. Restricted Boltzmann machines are neural networks with hidden neurons,
but with fewer connections: only those between visible and hidden neurons are
allowed. These neural networks can be fairly efficiently trained and can solve a
number of different tasks. Apart from learning a distribution of input patterns, they
can for instance be trained to recognise incomplete input patterns, and to classify
inputs [25].
1In this Chapter we set the diagonal weights to zero.
CONVERGENCE OF THE STOCHASTIC DYNAMICS 51
4.1 Convergence of the stochastic dynamics
We begin by showing that the stochastic dynamics (3.1) has a steady state where s is
distributed according to the Boltzmann distribution (4.2). To this end, we consider
an alternative yet equivalent formulation of the network dynamics. It consists of
two parts. First, choose a neuron randomly, number m say. Second, change sm to
s ′m 6 = sm with probability
Prob(sm → s ′m ) =
1
1 + e β ∆Hm
, (4.3a)
with
∆Hm = H (. . . , s ′m , . . .) − H (. . . , sm , . . .) . (4.3b)
To explore the relation between the stochastic rules (4.3) and (3.1), we use that
∆Hm = −bm (s ′m − sm ) (4.4)
with local field bm =
∑
j wm j sj − θm . To derive Equation (4.4), we assumed that the
weights are symmetric, and that the diagonal weights vanish. The result is obtained
with a calculation similar to the one leading to Equation (2.48), except that we have
non-zero thresholds here. To proceed, we break the rule (4.3) up into different cases.
The state of neuron m changes with probability
if sm = −1 obtain s ′m = 1 with prob.
1
1 + e −2β bm
= p (bm ) , (4.5a)
if sm = 1 obtain s ′m = −1 with prob.
1
1 + e 2β bm
= 1 − p (bm ) . (4.5b)
In the second row we used that 1 − p (b ) = 1 − 11+e−2β b = 1+e−2β b −11+e−2β b = 11+e2β b . The state
remains unchanged with probability:
if sm = −1 obtain s ′m = −1 with prob. 1 − p (bm ) =
1
1 + e 2β bm
, (4.5c)
if sm = 1 obtain s ′m = 1 with prob. p (bm ) =
1
1 + e −2β bm
. (4.5d)
Comparing with Equation (3.1) we conclude that the two schemes (3.1) and (4.3) are
equivalent under the assumptions made (wi j = w j i and wi i = 0). Note that Equation
(4.3) is more general than the stochastic Hopfield dynamics, because it does not
require the energy function to be of the form (4.1). In particular it is neither needed
that the weights are symmetric, nor that the diagonal weights vanish. Equations
(3.1) and (4.3) are not equivalent if these conditions are not satisfied (Exercise 4.1).
52 THE BOLTZMANN DISTRIBUTION
The rule (4.3) defines a Markov chain of states
s t =0 → s t =1 → s t =2 → . . . (4.6)
As before, the index t counts the iteration steps. A Markov chain is a memoryless
random sequence of states defined by transition probabilities p (s ′|s ) from state
s to s ′ [48]. The transition probability p (s ′|s ) connects arbitrary states. One distin-
guishes between local moves where only one neuron may change, as above, and
global moves where many neurons may change their states in a single step.
In both cases, an update consists of two parts. First, a new state s ′ is suggested
with probability q (s ′|s ). Second, the new state s ′ is accepted with acceptance proba-
bility
pa(s ′|s ) =
1
1 + eβ ∆H
with ∆H = H (s ′) − H (s ) . (4.7)
As result, the transition probability is given by a product of two factors
p (s ′|s ) = q (s ′|s )pa(s ′|s ) . (4.8)
These steps are repeated many times, creating the chain of states (4.6).
The Markov chain defined by the transition probability (4.8) has the Boltzmann
distribution (4.2) as a steady-state distribution if the detailed-balance condition is
satisfied:
p (s ′|s )PB(s ) = p (s |s ′)PB(s ′) . (4.9)
Note that this is a sufficient condition, not a necessary one [49]. There are Markov
chains that do not satisfy detailed balance but still have a steady state (Exercise
4.4). Usually detailed balance implies not only that the Markov chain has PB(s ) as a
steady-state distribution, but also that the distribution of states generated by the
sequence (4.6) converges to PB(s ), see Ref. [48] for details.
To prove that the detailed-balance condition (4.9) holds for the transition proba-
bility (4.8), assume that a single neuron is picked randomly with uniform probability
q = N −1 , (4.10)
where N is the number of neurons in the network. Since q does not depend on either
s or s ′, the probability of suggesting a new state is clearly symmetric. Equations
(4.2), (4.7) then imply:
q e−β H (s )
1 + eβ [H (s ′)−H (s )]
=
q
eβ H (s ′) + eβ H (s )
=
q e−β H (s ′)
1 + eβ [H (s )−H (s ′)]
. (4.11)
This demonstrates that the Boltzmann distribution is a steady state of the Markov
chain defined by (4.7), (4.8), and (4.10). As a consequence, the Boltzmann distribu-
tion is a steady state of the Markov chain. If the simulation converges to the steady
MONTE-CARLO SIMULATION 53
state (as it usually does), then states visited by the Markov chain are distributed
according to the Boltzmann distribution. This also means that the steady-state
distribution for the Hopfield model is the Boltzmann distribution, as stated in Sec-
tion 3.5.
It is important to stress that Equation (4.9) is a condition for the transition proba-
bility p (s ′|s ) = q (s ′|s )pa(s ′|s ), not just for the acceptance probability pa(s ′|s ). For the
local moves discussed above, q is a constant, so that p (s ′|s ) ∝ pa(s ′|s ). In this case it
is sufficient to check the detailed-balance condition for the acceptance probability.
In general, and in particular for global moves, it is necessary to include q (s ′|s ) in
the detailed-balance check [50].
4.2 Monte-Carlo simulation
The Markov chain described in the previous Section is the basis for the Markov-
chain Monte-Carlo algorithm. This method is widely used in statistical physics and
in mathematical statistics. It is therefore important to understand the connections
between the different formulations.
The Boltzmann distribution describes the probabilities of observing configura-
tions of a large class of physical systems in their steady states [32]. The statistical
mechanics of systems with energy function (also called Hamiltonian) H shows that
their configurations are distributed according to the Boltzmann distribution in ther-
modynamic equilibrium at a given temperature T (in this context β −1 = kBT where
kB is the Boltzmann constant), and free from any other constraints. If we denote the
configuration of a system by the vector s , then the Boltzmann distribution takes the
form (4.2). The normalisation factor Z =
∑
s e−β H (s ) is also called partition function.
For systems with a large number of interacting degrees of freedom, the partition
function can be very expensive to compute, because the sum over s contains many
terms. Therefore, instead of computing the distribution directly one generates a
Markov chain of states with a suitable transition probability, for instance (4.3).
In practice one often uses a slightly different form of the transition probability
(Metropolis algorithm [51]). Assuming that q is constant, one takes:
p (s ′|s ) = q

e−β ∆H when ∆H > 0 ,
1 when ∆H ≤ 0 , (4.12)
with ∆H = H (s ′) − H (s ) as before. That the Metropolis rates obey the detailed-
54 THE BOLTZMANN DISTRIBUTION
balance condition (4.9) can be seen as follows:
p (s ′|s )PB(s ) = q Z −1e−β H (s )

e−β [H (s ′)−H (s )] if H (s ′) > H (s )
1 otherwise
= q Z −1e−β max{H (s ),H (s
′)}
(4.13)
= q Z −1e−β H (s
′)

e−β [H (s )−H (s )] if H (s ) > H (s ′)
1 otherwise
= p (s |s ′)PB(s ′) .
The Metropolis algorithm is summarised in Algorithm 2. It provides an elegant way
of computing the average 〈A〉 of an observable A(s ) over the Boltzmann distribution
of s :
〈A〉 = Z −1
∑
s
A(s ) e−β H (s ) ≈
1
T
T∑
t =1
A(s t ) . (4.14)
This particular way of evaluating the average 〈A〉 is a special case of the more general
method of importance sampling [52]. The central-limit theorem implies that the
error of this estimate for 〈A〉 decreases ∝ T −1/2 as T increases. The prefactor is
determined by the correlations between subsequent terms in the sum (4.14): the
states in the sequence (4.6) are correlated, in particular when the moves are local,
because then subsequent configurations are similar. Generating many quite strongly
correlated samples from a distribution is not a very efficient way of sampling this
distribution. Sometimes it may be more efficient to suggest global moves instead,
in order to avoid that subsequent states in the Markov chain are similar. But it is not
guaranteed that global moves lead to weaker correlations. For global moves, ∆H
may be more likely to assume large positive values, so that fewer suggested moves
are accepted. As a consequence the Markov chain may stay in certain states for a
long time, increasing correlations in the sequence. Usually a compromise is most
efficient, moves that are neither local nor global. In summary, the convergence of
Monte-Carlo sampling is quite slow. This motivated Sokal to begin his lecture notes
on Monte-Carlo simulation with the warning [49]
Monte Carlo is an extremely bad method; it should be used only when
all alternative methods are worse.
Monte-Carlo algorithms are very widely used, and the original reference for the
Metropolis algorithm [51] is generally considered one of the most significant scien-
tific papers in computational physics. Sokal’s point is of course that many problems
cannot be solved in any other way, so that Monte-Carlo simulation is the only op-
tion. But we should be aware of the shortcomings of the method. The same caution
applies more generally to the topic of this book, machine-learning algorithms with
neural networks.
SIMULATED ANNEALING 55
Algorithm 2 Metropolis algorithm for symmetric q (s ′|s )
initialise s = s 0;
for t = 1, . . . , T do
suggest a new state s ′ with probability q (s ′|s ) ;
compute ∆H = H (s ′) − H (s );
if ∆H ≤ 0 then
accept the new state: s = s ′;
else
draw a random number r uniformly distributed in [0, 1];
if r < exp(−β ∆H ) then
accept the new state: s = s ′;
else
reject s ′;
end if
end if
sample st = s and At = A(s t );
end for
4.3 Simulated annealing
Combinatorial optimisation problems admit 2k or k ! configurations - too many
to find the optimal one by complete enumeration when k is large. An alternative
strategy is to assign an energy H (s ) to each configuration s so that H is minimal at
the optimal configuration s min. One minimises H (s ) by Monte-Carlo simulation,
using that the Monte-Carlo dynamics tends to decrease H when the temperature
Figure 4.1: Schematic. Simulated annealing (arrows) tends to reduce the energy
function. Noise helps to avoid that the dynamics arrests in a local minimum.
56 THE BOLTZMANN DISTRIBUTION
kBT = β −1 is low, Figure 4.1. A common strategy is to lower the temperature on the
fly. In the beginning of the simulation, the temperature is high, so that the dynamics
first explores the rough features of the energy landscape. When the temperature
is lowered, the dynamics perceives finer and finer features of H (s ). The hope is
that it ends up in the global minimum Hmin = H (s min) at zero temperature, where
PB(s ) = 0 when H (s ) > Hmin and PB(s ) > 0 only for H (s ) = Hmin. This method is
called simulated annealing [44], see also Section 10.9 in Numerical Recipes [53].
Slowly lowering the temperature during the simulation mimics the slow cooling of
a physical system. It passes through a sequence of quasi-equilibrium Boltzmann
distributions with lower and lower temperatures, until the system hopefully finds
the global minimum Hmin.
For a number of combinatorial optimisation problems one can write down energy
functions that have the same form as Equation (2.50) with symmetric weights [54].
Since s 2i j = 1, one can always assume that the diagonal weights vanish, because
they make only a constant contribution to H . In short, one can use the Hopfield
dynamics (3.1) to minimise H . The travelling-salesman problem has been solved
in this way [1, 54], gradually reducing the noise level as one iterates the stochastic
dynamics.
It is by no means necessary to use a Hopfield model for this purpose. Instead
we can just use the stochastic dynamics (4.3) or the Metropolis algorithm (4.12) to
solve combinatorial optimisation problems by simulated annealing. Nevertheless,
a crucial step is to find a suitable energy function.
As an example, consider the double-digest problem. It arose when sequencing
the human genome [55, 56]. The human genome sequence was first assembled by
piecing together overlapping DNA segments in the right order by making sure that
overlapping segments share the same DNA sequence. To this end it is necessary to
uniquely identify the DNA segments. The actual DNA sequence of a segment is a
unique identifier. But it is sufficient and more efficient to identify a DNA segment
by a fingerprint, for example the sequence of restriction sites. These are short subse-
quences (four or six base pairs long) that are recognised by enzymes that cut (digest)
the DNA strand precisely at these sites. A DNA segment is identified by the types
and locations of restriction sites that it contains, the so-called restriction map.
When a DNA segment is cut by two different enzymes one can experimentally
determine the lengths of the resulting fragments. Is it possible to determine how the
cuts were ordered in the DNA sequence of the segment from the fragment lengths,
to find the restriction map? This is the double-digest problem [55]. In a double-
digest experiment, a given DNA sequence is first digested by one enzyme (A say).
Assume that this results in n fragments with lengths ai (i = 1, . . . , n). Second, the
DNA sequence is digested by another enzyme, B . In this case m fragments are found,
with lengths b1, b2, . . . , bm . Third, the DNA sequence is digested with both enzymes
SIMULATED ANNEALING 57
L = 10000
a = [5976, 1543, 1319, 1120, 42]
b = [4513, 2823, 2057, 607]
c = [4513, 1543, 1319, 1120, 607, 514, 342, 42]
L = 20000
a = [8479, 4868, 3696, 2646, 169, 142]
b = [11968, 5026, 1081, 1050, 691, 184]
c = [8479, 4167, 2646, 1081, 881, 859, 701, 691, 184, 169, 142]
L = 40000
a = [9979, 9348, 8022, 4020, 2693, 1892, 1714, 1371, 510, 451]
b = [9492, 8453, 7749, 7365, 2292, 2180, 1023, 959, 278, 124, 85]
c = [7042, 5608, 5464, 4371, 3884, 3121, 1901, 1768, 1590, 959, 899, 707, 702, 510, 451, 412,
278, 124, 124, 85]
Table 4.1: Example configurations for the double-digest problem [55] for three
different chromosome lengths L . For each example, three ordered fragment sets
are given, corresponding to the result of digestion with A, with B, and with both A
and B.
A and B , yielding l fragments with lengths c1, . . . , cl , see Table 4.1 for examples.
The task is now to determine all possible orderings of the a - and b -cuts that result
in l fragments with lengths c1, c2, . . . , cl . Since the solutions of the double-digest
problem are degenerate, an important question is to determine how many distinct
solutions there are (Exercise 4.5).
To write down an energy function, denote the ordered set of fragment lengths
produced by digesting with enzyme A by a = {a1, . . . , an }, where a1 ≥ a2 ≥ . . . ≥ an ≥ 1.
Similarly b = {b1, . . . , bm } (b1 ≥ b2 ≥ . . . ≥ bm ≥ 1) for fragment lengths produced by
enzyme B , and c = {c1, . . . , cl } (c1 ≥ c2 ≥ . . . ≥ cl ≥ 1) for fragment lengths produced
by digesting first with A and then with B . Permutations σ and μ of the sets a and
b result in a set of c -fragments that we call ˆc (σ, μ). Solutions of the double-digest
problem correspond to permutations [σ, μ] that yield ˆc (σ, μ) = c . A suitable energy
function is therefore
H (σ, μ) =
∑
j
c −1j [c j − ˆc j (σ, μ)]2 , (4.15)
and configuration space is the space of all permutation pairs s = [σ, μ]. Local moves
in configuration space correspond to inversions of short subsequence of σ and/or
μ. One can show that the corresponding q (s ′|s ) is symmetric (Exercise 4.5). As
mentioned above, this is necessary for the stochastic dynamics to converge in its
simplest form, Equation (4.12) and Algorithm 2.
58 THE BOLTZMANN DISTRIBUTION
Figure 4.2: Boltzmann machine with five neurons. All weights are symmetric, the
diagonal weights are set to zero. The states of the neurons are denoted by si = ±1.
This neural network has no hidden units. It looks like a Hopfield network, but the
weights are not given by Hebb’s rule.
For the simulation one chooses a larger temperature kBT = β −1 to begin with, so
that the stochastic dynamics explores the rough features of the energy landscape at
first. As the simulation proceeds, the temperature is gradually reduced. This allows
the dynamics to learn finer features of the landscape, as described above.
4.4 Boltzmann machines
Boltzmann machines are generalised Hopfield networks that can learn to approxi-
mate data distributions of binary input patterns. Boltzmann machines differ from
Hopfield networks in two essential ways. First, instead of using Hebb’s rule, the
weights are adjusted until the Boltzmann machine approximates the data distribu-
tion precisely. The weights are iteratively refined to minimise the difference between
the data distribution and the model (the Boltzmann distribution). Nevertheless,
this procedure is closely related to Hebb’s rule, as we shall see. Second, to repre-
sent higher-order correlations between bits of input patterns, Boltzmann machines
employ hidden neurons.
We begin with Boltzmann machines without hidden neurons (Figure 4.2), be-
cause they are simpler to analyse. Then we discuss why hidden neurons are neces-
sary to learn the properties of general input distributions Pdata(x ) of binary inputs x .
The training algorithm for Boltzmann machines with hidden neurons is described
in Section 4.5.
The goal of the training algorithm is to find weights so that the Boltzmann distri-
bution
PB(s = x ) = Z −1exp
Ä 1
2
∑
i 6 = j
wi j xi x j
ä
(4.16)
BOLTZMANN MACHINES 59
approximates the distribution Pdata(x ) as precisely as possible. Here and in the
remainder of this Chapter we set β = 1. The input patterns have N binary bits
[Equation (2.1)] with values ±1. The weight matrix W is symmetric, wi j = w j i , and
its diagonal elements are set to zero, wi i = 0. In this Section we also set the thresholds
to zero.
The Boltzmann machine is trained by iteratively adjusting the weights wi j , us-
ing a sequence of input patterns x (μ) (μ = 1, . . . , p ), independently sampled from
the data distribution Pdata(x ). This is achieved by maximising the likelihood L =∏
p
μ=1 PB(s = x
(μ)) that the Boltzmann machine produces the sequence x (1), . . . , x (p )
of input patterns. Any pattern may appear more than once in the sequence, with
frequency proportional to Pdata(x ). Maximising L therefore corresponds to approxi-
mating the data distribution as accurately as possible. Usually one maximises the
logarithm of the likelihood, the log-likelihood function
log L = log
p∏
μ=1
PB(s = x (μ)) =
p∑
μ=1
log PB(s = x (μ)) . (4.17)
The logarithm is a monotonic function, so the log-likelihood has its maximum at the
same weight values as the likelihood. Taking the logarithm simplifies the analysis
of the learning algorithm, because log PB(s = s (μ)) is simply a quadratic function of
x (μ)j . Also, a learning algorithm based on the log-likelihood is usually more stable
numerically.
A different reasoning behind maximising the log-likelihood starts from the Kullback-
Leibler divergence, defined as
DKL =
p∑
μ=1
Pdata(x (μ)) log[Pdata(x (μ))/PB(s = x (μ))] . (4.18)
Terms in the sum with Pdata(x (μ))= 0 are set to zero, and DKL is defined to equal
infinity when there are patterns for which PB = 0 but Pdata 6 = 0. The Kullback-Leibler
divergence is a measure of the difference between the two distributions: DKL is
non-negative, and it assumes its global minimum DKL = 0 for Pdata(x (μ)) = PB(s = x (μ)),
see Exercise 4.6. We infer from Equation (4.18) that minimising DKL corresponds to
maximising log L .
To find the global maximum of the log-likelihood, we use gradient ascent: we
repeatedly change the weights by adding increments
w ′mn = wmn + δwmn with δwmn = η
∂ log L
∂ wmn
. (4.19)
The small parameter η > 0 is the learning rate. The gradient points in the steepest
uphill direction of L . The idea is to take many small uphill steps until one hopefully
60 THE BOLTZMANN DISTRIBUTION
(but not necessarily) reaches the global maximum. Since the likelihood is a product
of many possibly quite small factors, L can become very small. This can lead to
numerical instabilities. Maximising log L instead of L can be more stable because
it yields an additional factor L −1 in the gradient: ∂ log L /∂ wmn = L −1∂ L /∂ wmn .
To evaluate the gradient of L we start from Eq. (4.17)
log L =
p∑
μ=1
î
− log Z + 12
∑
i 6 = j
wi j x (μ)i x (μ)j
ó
. (4.20)
This expression assumes that the diagonal weights vanish, just like Equation (4.16).
The first step is to evaluate the derivative of
log Z = log
∑
s1=±1,...,sN =±1
exp
Ä 1
2
∑
i 6 = j
wi j si sj
ä
. (4.21)
To compute ∂ log Z /∂ wmn we use the chain rule together with
∂ wi j
∂ wmn
= δi m δj n + δj m δi n . (4.22)
This relation is valid for symmetric weights and provided that i 6 = j and m 6 = n.
In Equation (4.22), δk l is the Kronecker delta, δk l = 1 if k = l and zero otherwise
(Chapter 2). In particular, δi m δj n = 1 only if i = m and j = n. Otherwise the product
of Kronecker deltas equals zero. Equation (4.22) is illustrated by the following story
(a modification of a well-known maths joke):
The linear function, x , and the constant function are going for a walk.
When they suddenly see the derivative approaching, the constant func-
tion gets worried. "I’m not worried" says the function x confidently,
"I’m not put to zero by the derivative." When the derivative comes
closer, it says "Hi! I’m ∂ /∂ y . How are you?"
The moral is: since x and y are independent variables, ∂ x /∂ y = 0. Equation (4.22)
reflects the same principle: the weights wi j and wmn are independent variables
unless their indices agree. Equation (4.22) is valid for off-diagonal weights, and
there are two terms on the r.h.s. because the weights are symmetric.
Returning to the derivative of log Z with respect to wmn , one finds using Equa-
tion (4.22):
∂ log Z
∂ wmn
=
∑
s1=±1,...,sN =±1
sm sn PB(s ) ≡ 〈sm sn 〉model . (4.23)
BOLTZMANN MACHINES 61
The last equality defines the two-point correlations of the model, 〈sm sn 〉model, com-
puted using the steady-state distribution (4.16) of the Boltzmann machine. Evaluat-
ing the derivative of the second term in Equation (4.20) gives:
∂
∂ wmn
1
2
∑
i 6 = j
wi j x (μ)i x (μ)j = x (μ)m x (μ)n . (4.24)
In summary,
∂ log L
∂ wmn
=
p∑
μ=1

x (μ)m x (μ)n − 〈sm sn 〉model

= p

〈xm xn 〉data − 〈sm sn 〉model

. (4.25)
Here 〈xm xn 〉data = p −1
∑p
μ=1 x
(μ)
m x
(μ)
n is the two-point correlation of the input data.
Using (4.19), the learning rule becomes:
δwmn = η

〈xm xn 〉data − 〈sm sn 〉model

, (4.26)
where we dropped a factor of p that only affects the numerical value of the learning
rate η. The weight increments are determined by the two-point pattern correlations,
just like Hebb’s rule (2.25). The first term on the r.h.s. of Eq. (4.26) has precisely
the same form as Equation (2.25), a sum over two-point correlations of the input
patterns. The second average is over the steady-state distribution (4.16) of the
Boltzmann machine. The learning rule takes the form of the difference between
two-point correlations because the task is to minimise the difference between two
distributions. It is plausible that the learning rule may converge because the weight
increments vanish when the model correlations equal the data correlations.
The average 〈sm sn 〉model can be approximated by numerical simulation of the
McCulloch-Pitts dynamics
s ′i =
®
1 with probability p (bi ) ,
−1 with probability 1 − p (bi ) ,
(4.27)
with bi =
∑
j wi j sj and p (bi ) =
1
1+e−2bi . One must iterate Equation (4.27) until the
system has reached its steady state, long enough so that any initial transient becomes
negligible.
The training algorithm can be summarised as follows. One initialises all weights
and computes 〈xm xn 〉data from the given sequence of input patterns. One estimates
〈sm sn 〉model by numerical simulation of the dynamics of the Boltzmann machine,
and changes the weights using (4.26). This step is iterated, either with a sequence of
new inputs, or with the same inputs but in permuted sequence. In each iteration
62 THE BOLTZMANN DISTRIBUTION
one must compute 〈sm sn 〉model again, because the weights changed. This proce-
dure is quite slow, because it usually takes long simulations to estimate 〈xm xn 〉model
accurately, in each iteration of the learning algorithm.
There is a more fundamental problem [47]. Like Hebb’s rule, the learning rule
(4.26) relies entirely upon two-point correlations of the input bits. This means that
the Boltzmann machine cannot learn higher-order correlations between inputs.
However, two-point correlations may not be sufficient to represent the information
encoded in the input data. To illustrate this point, consider the Boolean XOR func-
tion (Exercise 2.13 and Chapter 5). It can be encoded in the four patterns [−1 , −1 , −1],
[1 , 1, −1], [−1, 1, 1], and [1 , −1, 1]. The first two components represent the input to
the XOR function. The third component represents the output, which depends on
both input variables as prescribed by the XOR function. Let us define an input distri-
bution that reflects these three-point correlations by assigning Pdata = 14 to the four
patterns, and setting Pdata = 0 otherwise. A Boltzmann machine with three neurons
cannot represent this input distribution, because there is no energy function of the
form (4.1) that has four minima at these patterns. So the three-point correlations en-
coded in the four patterns cannot be represented in terms of a Boltzmann machine
in its simplest form.
Also Hopfield networks fail for the XOR function: the four states are not attractors
of a Hopfield network with three neurons (Exercise 2.13). One could consider neural
networks with third- or higher-order interactions [47],
H = − 12
∑
i j
w (2)i j si sj − 16
∑
i j k
w (3)i j k si sj sk + . . . (4.28)
(Exercise 2.7). But the number of weights proliferates as the order increases, render-
ing the training very slow.
An alternative is to use Boltzmann machines with hidden neurons, that are neither
input nor output units. The idea is that the hidden neurons can learn to represent
such correlations [47]. The learning rule for the Boltzmann machines with hidden
neurons is very similar to Equation (4.26), but when the number of hidden neurons
is large, the Boltzmann machine is very slow to train. It is more efficient to remove
all weights between visible neurons, and between hidden neurons. This is described
in the next Section.
4.5 Restricted Boltzmann machines
Restricted Boltzmann machines [57] consist of visible and hidden neurons arranged
in an undirected bipartite graph (Figure 4.3): the only connections are between
neurons of different kinds, there are no connections between visible neurons, no
RESTRICTED BOLTZMANN MACHINES 63
Figure 4.3: Restricted Boltzmann machine with three visible neurons, vj , and four
hidden neurons, hi .
connections between hidden neurons either. So the energy function for a restricted
Boltzmann machine for N visible neurons vj and M hidden neurons hi takes the
form
H = −
M∑
i =1
N∑
j =1
wi j hi vj +
N∑
j =1
θ (v)j vj +
M∑
i =1
θ (h)i hi , (4.29)
with weights wi j and thresholds θ (v)j and θ (h)i . The McCulloch-Pitts dynamics reads
h′i =
®
1 with probability p (b (h)i )
−1 with probability 1 − p (b (h)i )
with b (h)i =
N∑
j =1
wi j vj − θ (h)i , (4.30a)
and
v ′j =
®
1 with probability p (b (v)j )
−1 with probability 1 − p (b (v)j )
with b (v)j =
M∑
i =1
hi wi j − θ (v)j . (4.30b)
The diagonal weights are assumed to vanish, but the weight matrix is not required
to be symmetric (Exercise 4.9). Since most often M  N , it is usually not even a
square matrix.
The learning rule for the weights of the restricted Boltzmann machine is derived
using gradient ascent on the log-likelihood for a single pattern x (μ):
log P (x (μ)) = log
∑
h1=±1,...,hM =±1
PB(v = x (μ), h ) . (4.31)
Proceeding as in the previous Section one finds:
δw (μ)mn = η

〈hm x (μ)n 〉data − 〈hm vn 〉model

. (4.32)
64 THE BOLTZMANN DISTRIBUTION
Algorithm 3 contrastive divergence CD-k for ±1 neurons
initialise weights and thresholds;
for ν = 1, . . . , νmax do
sample p0 patterns from the data distribution (p0 ≤ p );
for μ = 1, . . . , p0 do
initialise v (0) ← x (μ);
update all hidden neurons: b (h)(0) ← Wv (0) − θ (h);
for i = 1, . . . , M do
hi (0) ← +1 with probability p

b (h)i (0)

otherwise hi (0) ← −1;
end for
for t = 1, . . . , k do
update all visible neurons: b (v)(t − 1) ← h (t − 1) · W − θ (v);
for j = 1, . . . , N do
vj (t ) ← +1 with probability p

b (v)j (t − 1)

otherwise vj (t ) ← −1;
end for
update all hidden neurons: b (h)(t ) ← Wv (t ) − θ (h);
for i = 1, . . . , M do
hi (t ) ← +1 with probability p

b (h)i (t )

otherwise hi (t ) ← −1;
end for
end for
compute weight and theshold increments:
δw (μ)mn ← η
î
tanh

b (h)m (0)

vn (0) − tanh

b (h)m (k )

vn (k )
ó
;
δθ (v,μ)n ← −η[vn (0) − vn (k )];
δθ (h,μ)m ← −η

tanh

b (h)m (0)

− tanh

b (h)m (k )

;
end for
adjust weights and thresholds using
∑p0
μ=1 δw
(μ)
mn ,
∑p0
μ=1 δθ
(v,μ)
n , and
∑p0
μ=1 δθ
(h,μ)
m ;
end for
RESTRICTED BOLTZMANN MACHINES 65
The first average,
〈hm x (μ)n 〉data =
∑
h1=±1,...,hM =±1
hm x (μ)n
 M∏
i =1
P (hi |v = x (μ))

, (4.33)
can be evaluated further, using the fact that there are no connections between the
hidden units. Making use of the update rule (4.30a) we find
∑
hm =±1
hm P (hm |v = x (μ)) = p (b (h)m ) − [1 − p (b (h)m )] = tanh(b (h)m ) , (4.34)
just like Equation (3.7). For the other sums in Equation (4.33) we use the normalisa-
tion condition 1 =
∑
hk =±1 P (hk |v = x (μ)) to obtain:
〈hm x (μ)n 〉data = tanh(b (h)m ) x (μ)n = tanh
Ä N∑
j =1
wm j x (μ)j − θ (h)m
ä
x (μ)n .
The second average on the r.h.s. of Equation (4.32) simplifies to
〈hm vn 〉model =
¨
tanh
Ä N∑
j =1
wm j vj − θ (h)m
ä
vn
∂
model . (4.35)
The average 〈· · · 〉model is computed by Monte-Carlo sampling, using the McCulloch-
Pitts dynamics (4.30) to generate the Markov chain
v t =0 → h t =0 → v t =1 → h t =1 → v t =2 → · · · . (4.36)
In the limit t → ∞, the steady state of this sequence is distributed according to
the model distribution, the Boltzmann distribution with energy function (4.29). In
general only the asynchronous McCulloch-Pitts dynamics can be proven to converge
(Sections 2.5 and 4.1). Here, however, the Markov chain can be generated more
efficiently by updating all hidden neurons h t at the same time, given v t , because the
components of h t are independent from each other since there are no connections
between them. In the same way the visible neurons v t are updated in parallel. To
speed up the computation further, one usually only iterates for a finite number of
steps, up to t = k say, and initialises the chain with v t =0 = x (μ). After k steps one
approximates
¨
tanh
Ä N∑
j =1
wm j vj − θ (h)m
ä
vn
∂
model ≈ tanh
Ä N∑
j =1
wm j vj ,t =k − θ (h)m
ä
vn,t =k . (4.37)
66 THE BOLTZMANN DISTRIBUTION
Figure 4.4: Pattern completion for bars-and-stripes data set [47]. (a) All patterns
in the 3 × 3 bars-and-stripes data set, É corresponds to −1, Ñ to +1. (b) The three
visible units [v1, v2, v3] corresponding to the first row are clamped to [+1 , −1 , +1] and
remain fixed to these values. The remaining units are initially set to 0 (gray bits), and
their states are allowed to change while sampling from the restricted Boltzmann
machine using After a short transient of the McCulloch-Pitts dynamics, the pattern
is correctly completed. Schematic, after Figure 7 in Ref. [25].
This algorithm is called contrastive-divergence or CD-k algorithm (Algorithm 3).
Since the average over the model distribution is approximated [Equation (4.37)],
this algorithm does not precisely correspond to gradient ascent.
In summary,
δwmn =η
î
tanh
Ä ∑
j
wm j vj ,t=0 − θ (h)m
ä
vn,t=0 −tanh
Ä ∑
j
wm j vj ,t=k − θ (h)m
ä
vn,t=k
ó
. (4.38)
The analogous learning rules for the thresholds read:
δθ (v)n = −η

vn,t =0 − vn,t =k

, (4.39a)
δθ (h)m = −η
î
tanh
Ä ∑
j
wm j vj ,t =0 − θ (h)m
ä
− tanh
Ä ∑
j
wm j vj ,t =k − θ (h)m
äó
. (4.39b)
The derivation of Equations (4.39) is left as an exercise (Exercise 4.10). Restricted
Boltzmann machines may have 0/1 neurons with state values 0 and 1 instead of −1
and 1. For 0/1 neurons, the CD-k algorithm is slightly different (Exercise 4.11).
Figure 4.4 illustrates how a restricted Boltzmann machine can learn to com-
plete patterns, using the bars-and-stripes data set [25, 47] as an example. To be-
gin with, the restricted Boltzmann machine is trained using the CD-k algorithm.
RESTRICTED BOLTZMANN MACHINES 67
Figure 4.5: Restricted-Boltzmann-machine learning for the XOR problem [panel
(a)], see Section 4.4. Panel (b) shows numerical estimates of DKL versus the number
M of hidden neurons, in comparison with the upper bound (4.40). Schematic, based
on simulations performed by Arvid Wenzel Wartenberg using the CD-k algorithm.
Then consider a partially obscured pattern. Assume for instance that only the
upper row of its bits is known: v1 = +1 (Ñ), v2 = −1 (É), and v3 = +1 (Ñ). The
remaining bits v4, . . . , v9 are obscured, their states are set to zero as shown in Fig-
ure 4.4(b). To complete the pattern, one samples from the Boltzmann distribution
PB(v4, . . . , v9|v1 = +1 , v2 = −1 , v3 = +1) keeping v1 = +1 , v2 = −1 , v3 = +1 fixed (clamp-
ing these neurons), and iterates the McCulloch-Pitts dynamics for the remaining
ones. Panel (b) shows how the machine outputs the correct completed pattern.
This requires hidden neurons, because the data distribution has non-zero three-
point correlations [47] (Exercise 2.13). In general a restricted Boltzmann machine
can approximate a distribution Pdata of binary input data better with more hidden
neurons. How many are needed [58, 59]? The answer is not known in general, but
it is plausible M ∼ 2N hidden neurons are sufficient, because each hidden neuron
can encode one of the binary input patterns (winning neuron, Section 7.1). More
precisely, it can be shown that M = 2N −1 − 1 hidden neurons are sufficient to reach
arbitrarily small Kullback-Leibler divergence [60]. An upper bound for the Kullback-
Leibler divergence was derived in Refs. [61, 62]:
DKL ≤ log(2)
®
N − blog2(M + 1)c − M +12blog2(M +1)c M < 2N −1 − 1 ,
0 M ≥ 2N −1 − 1 .
(4.40)
Here b· · · c denotes the integer part. Figure 4.5 illustrates this result. It demonstrates
how well a restricted Boltzmann machine approximates the XOR distribution in-
troduced in Section 4.4. The Figure shows how the Kullback-Leibler divergence
depends on the number of hidden neurons (Exercise 4.7). In this example there are
N = 3 inputs. We see that three hidden neurons are sufficient to allow the restricted
Boltzmann machine to approximate the data distribution very precisely, consistent
with Equation (4.40). In general, however, the CD-k algorithm is not guaranteed to
68 THE BOLTZMANN DISTRIBUTION
converge to the optimal solution corresponding to the estimate (4.40).
Restricted Boltzmann machines are generative models, they can be used to sample
from a distribution the machine has learned [25]. In this way, the machine can
complete missing information, as illustrated in Figure 4.4. Restricted Boltzmann
machines can also learn to classify patterns, by learning a distribution of binary
inputs together with their labels. To this end one splits the visible neurons into input
neurons and output neurons with labels or targets. This is a supervised-learning
task, the subject of Part II. Recently, restricted Boltzmann machines were used to
represent and analyse ground-state wave functions of quantum many-body systems
[63].
4.6 Summary
This Chapter dealt with the Boltzmann distribution. Two main points are, first, that
the stochastic McCulloch-Pitts dynamics (3.1) has the Boltzmann distribution as
a steady state. Second, the update rule (3.1) is a special case of the Markov-chain
Monte-Carlo algorithm, for Hopfield models with the energy function (2.45). Since
this algorithm tends to decrease the energy function, it can be used to solve complex
optimisation problems. In simulated annealing one gradually reduces the noise
level as the simulation proceeds. This mimics the slow cooling of a physical system,
usually an efficient way of bringing the system into its global optimum.
Boltzmann machines are generalisations of Hopfield networks that can learn
distributions of binary data by iteratively changing the weights and thresholds until
the corresponding Boltzmann distribution approximates the data distribution. The
learning rule is derived using gradient ascent on a target function, in this case the
log-likelihood. A related idea is used for training deep neural networks with stochas-
tic gradient descent (Part II). To learn general input distributions of binary patterns
requires hidden neurons, also this is a central topic of Part II. Since Boltzmann ma-
chines with many hidden neurons are hard to train, one removes connections that
are not needed. Restricted Boltzmann machines have connections only between
visible and hidden neurons.
4.7 Further reading
Older but still good references for Monte-Carlo methods in statistical physics are the
book Monte Carlo methods in Statistical Physics edited by Binder [52], and Sokal’s
lecture notes [49]. Some historical notes are found in Ref. [64].
For a concise introduction to Boltzmann machines, refer to Information the-
ory, inference and learning algorithms by MacKay [47], or to Machine learning: a
FURTHER READING 69
probabilistic perspective by Murphy [65]. Ref. [66] is a more mathematical review of
restricted Boltzmann machines.
How many hidden neurons should one allow for in a restricted Boltzmann ma-
chine? Little is known apart from the upper bound (4.40) for the Kullback-Leibler
divergence, and simulations [60] show that one can get very precise approximations
of Pdata with less hidden neurons than stipulated by Equation (4.40).
Deep-belief networks consist of layers of restricted Boltzmann machines [2].
Contrastive-divergence training for such deep architectures (networks with many
layers) is one of the first examples of deep-learning algorithms [67] (Chapter 7).
Helmholtz machines [68, 69] are generalisations of Boltzmann machines designed
as more efficient generative models. They consist of two networks, encoder and
decoder, just like variational autoencoders (Section 10.6). The encoder (called
recognition model in Ref. [69]) generates a compressed representation of the data
distribution, and the decoder (generative model) generates patterns from the com-
pressed representation.
PART II
SUPERVISED LEARNING
72 SUPERVISED LEARNING
The Hopfield network described in Part I recognises patterns stored using Hebb’s
rule. Its neurons act as inputs and outputs. After feeding a distorted pattern into the
network, the network dynamics runs until it reaches a steady state which hopefully
corresponds to the stored pattern closest to the distorted one. In this case, the
network classifies the distorted pattern by associating it with the closest one amongst
the stored patterns.
Part II describes supervised learning, a different way of solving classification tasks
with neural networks using labeled data sets. The machine-learning repository [70] at
the University of California Irvine contains a number of such data sets. An example
is the iris data set which lists certain properties of 150 iris plants. For each plant,
four attributes are given (Figure 5.1): its sepal length, sepal width, petal length, and
petal width. Each entry in the data set contains a label (or target) that says which
class the plant belongs to: iris setosa, iris versicolor, or iris virginica. This data set
was described by the geneticist R. A. Fisher [71].
The machine-learning task is to adjust weights and thresholds of a neural network
so that it correctly determines the class of each plant from its attributes. To this end
one uses a training set of labeled data. Each set of attributes is an input pattern to
the network. The neural network is supposed to output the correct label (or target),
in this case whether the plant is an iris setosa, iris versicolor, or iris virginica. One
compares the network output with the corresponding target, for all input patterns in
the training set, and changes the weights and thresholds until the network computes
the correct output for each input pattern. The crucial question is whether the
trained network can generalise: does it find the correct labels for an input pattern
not contained in the training set?
The networks used for supervised learning are called perceptrons [10]. They
consist of layers of McCulloch-Pitts neurons: usually some layers of hidden neurons,
and an output layer. We briefly discussed the idea of hidden neurons in connection
with restricted Boltzmann machines (Section 4.5), but perceptrons have different
layouts, and they are trained in a different way. The layers are usually arranged from
the left (input) to the right (output). All connections are one-way, from neurons in
one layer to neurons in the layer immediately to the right. There are no connections
between neurons in a given layer, or back to layers on the left. This arrangement
ensures convergence of the training algorithm (stochastic gradient descent). During
training with this algorithm, the network parameters are changed iteratively. In each
step, an input is applied, and weights and thresholds of the network are updated
to reduce the output error. Loosely speaking, each step corresponds to adding a
little bit of Hebb’s rule to the weights. This is repeated until the network classifies
the training set correctly.
Stochastic gradient descent for multilayer perceptrons has received much atten-
tion recently, after it was realised that networks with many hidden layers can be
sepal petal classification
length width length width
6.3 2.5 5.0 1.9 virginica
5.1 3.5 1.4 0.2 setosa
5.5 2.6 4.4 1.2 versicolor
4.9 3.0 1.4 0.2 setosa
6.1 3.0 4.6 1.4 versicolor
6.5 3.0 5.2 2.0 virginica
Figure 5.1: Left: petals and sepals of the iris flower. Right: six entries of the iris data
set [70]. All lengths in cm. The whole data set contains 150 entries.
trained to reliably recognise and classify image data (deep learning).
