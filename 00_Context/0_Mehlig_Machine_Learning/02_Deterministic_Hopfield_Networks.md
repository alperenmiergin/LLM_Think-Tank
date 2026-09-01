**Kaynak:** [[00_Context/0_Mehlig_Machine_Learning/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

2 Deterministic Hopfield networks
2.1 Pattern recognition
As an example for a pattern-recognition task, consider p images (patterns), for
instance the digits shown in Figure 2.1. The different patterns are indexed by μ =
1 , . . . , p . Here p is the number of patterns (p = 5 in Figure 2.1). The bits of pattern μ
are denoted by x (μ)i . The index i = 1 , . . . , N labels the different bits of a given pattern,
and N is the number of bits per pattern (N = 160 in Figure 2.1). The bits are binary:
they can take only the values −1 and +1. To determine the generic properties of
the algorithm, one often turns to random patterns where each bit x (μ)i is chosen
randomly, taking either value with probability equal to 12 . It is convenient to gather
the bits of a pattern in a column vector like this
x (μ) =




x (μ)1
x (μ)2
...
x (μ)N




. (2.1)
In this book, vectors are written in bold math font, as in Equation (2.1).
The task of the neural network is to recognise distorted patterns, to determine
for instance that the pattern on the right in Figure 2.2 is a perturbed version of the
digit on the left in this Figure. To this end, one stores p patterns in the network and
presents it with a distorted version of one of these patterns, and asks the network to
find the stored pattern that is most similar to the distorted one.
The formulation of the problem makes it necessary to define how similar a dis-
torted pattern x is to any of the stored patterns, x (ν) say. One possibility is to quantify
16 DETERMINISTIC HOPFIELD NETWORKS
Figure 2.2: Binary image (N = 160) of the digit 0, and a distorted version of the
same image. There are N = 160 bits xi , i = 1 , . . . , N , and Ñ stands for xi = +1 while É
denotes xi = −1.
the distance dν between the patterns x and x (ν) in terms of the mean squared error:
dν =
1
4N
N∑
i =1

xi − x (ν)i
2
. (2.2)
The prefactor is chosen so that the distance equals the fraction of bits by which
two ±1-patterns differ. Note that the distance (2.2) does not refer to distortions by
translations, rotations, or shearing. An improved measure of distance might take
the minimum distance between the patterns subject to all possible translations,
rotations, and so forth.
2.2 Hopfield networks and Hebb’s rule
Hopfield networks [13, 24] are networks of McCulloch-Pitts neurons designed to
solve the pattern-recognition task described in the previous Section. The bits of
the patterns to be recognised are encoded in a particular choice of weights called
Hebb’s rule, as explained in the following.
All possible states of the McCulloch-Pitts neurons in the network,
s =



s1
s2
...
sN


 , (2.3)
form the configuration space of the network. The components of the states s are
updated either with the synchronous rule (1.2):
si (t + 1) = sgn

bi (t )

with local field bi (t ) =
N∑
j =1
wi j sj (t ) − θi , (2.4)
HOPFIELD NETWORKS AND HEBB’S RULE 17
or with the asynchronous rule
si (t + 1) =
®
sgn

bm (t )

for i = m ,
si (t ) otherwise .
(2.5)
To recognise a distorted pattern, one feeds its bits xi into the network, by assigning
the initial states of the neurons to the pattern bits,
si (t = 0) = xi . (2.6)
The idea is to choose a set of weights wi j so that the network dynamics (2.4) or (2.5)
converges to the correct stored pattern. The choice of weights must depend on
all p patterns, x (1), . . . , x (p ). We say that these patterns are stored in the network by
assigning appropriate weights. For example, if x is a distorted version of x (ν) (Figure
2.2), then we want the network to converge to this pattern:
if s (t = 0) = x ≈ x (ν) then s (t ) → x (ν) as t → ∞ . (2.7)
Equation (2.7) means that the network corrects the errors in the distorted pattern
x . If this works, the stored pattern x (ν) is said to be an attractor of the network
dynamics.
But convergence is not guaranteed. If the initial distortion is too large, the network
may converge to another pattern. It may converge to some other state that bears
no or little relation to the stored patterns, or it may not converge at all. The region
around pattern x (ν) in which all patterns x converge to x (ν) is called the region of
attraction of x (ν). The size of this region depends in an intricate way upon the
ensemble of stored patterns, and there is no general convergence proof.
Therefore we ask a simpler question first: if one feeds one of the undistorted
patterns, for instance x (ν), does the network recognise it as one of the stored, undis-
torted ones? The network should not make any changes to x (ν) because all bits are
correct:
if s (t = 0) = x (ν) then s (t ) = x (ν) for all t = 0, 1, 2, . . . . (2.8)
How can we choose weights and thresholds to ensure that Equation (2.8) holds? Let
us consider a simple case first, where there is only one pattern, x (1), to recognise. In
this case a suitable choice of weights and thresholds is
wi j =
1
N
x (1)i x (1)j and θi = 0 . (2.9)
18 DETERMINISTIC HOPFIELD NETWORKS
This learning rule reminds of a relation between activation patterns of neurons and
their coupling, postulated by Hebb [9] more than 70 years ago:
When an axon of cell A is near enough to excite a cell B and repeatedly
or persistently takes part in firing it, some growth process or metabolic
change takes place in one or both cells such that A’s efficiency, as one
of the cells firing B, is increased.
This is a mechanism for learning through establishing connections: the coupling
between neurons tends to increase if they are active at the same time. Equation
(2.25) expresses an analogous principle. Together with Equation (2.7) it says that the
coupling wi j between two neurons is positive if they are both active (si = sj = 1); if
their states differ, the coupling is negative. Therefore the rule (2.25) is called Hebb’s
rule. Hopfield networks are networks of of McCulloch-Pitts neurons with weights
determined by Hebb’s rule.
Does a Hopfield network recognise the pattern x (1) stored in this way? To check
that the rule (2.9) does the trick, we feed the pattern to the network by assigning
sj (t = 0) = x (1)j , and evaluate Equation (2.4):
N∑
j =1
wi j x (1)j =
1
N
N∑
j =1
x (1)i x (1)j x (1)j =
1
N
N∑
j =1
x (1)i = x (1)i . (2.10)
The second equality follows because x (1)j can only take the values ±1, so that [x (1)j ]2 =
1. Using sgn(x (1)i ) = x (1)i , we obtain
sgn
Ä N∑
j =1
wi j x (1)j
ä
= x (1)i . (2.11)
Comparing Equation (2.11) with the update rule (2.4) shows that the bits x (1)j of the
pattern x (1) remain unchanged under the update, as required by Equation (2.8). In
other words, the network recognises the pattern as a stored one, so Equation (2.9)
does what we asked for. Note that we obtain the same result if we leave out the
factor of N −1 in Equation (2.9).
But does the network correct errors? Is the pattern x (1) an attractor [Eq. (2.7)]?
This question cannot be answered in general. Yet in practice Hopfield networks
work often quite well. It is a fundamental insight that neural networks may perform
well although no proof exists that their dynamics converges to the correct solution.
To illustrate the difficulties, consider an example, a Hopfield network with N = 4
neurons (Figure 2.3). Store the pattern x (1) shown in Figure 2.3 by assigning the
weights wi j using Equation (2.9). Now consider a distorted pattern x that has a
HOPFIELD NETWORKS AND HEBB’S RULE 19
Figure 2.3: Hopfield network with N = 4 neurons. (a) Network layout. Neuron i is
represented as i©. Arrows indicate symmetric connections. (b) Pattern x (1).
non-zero distance to x (1) [Figure 2.4(a)]:
d1 =
1
16
4∑
i =1

xi − x (1)i
2
=
1
4
. (2.12)
To feed the pattern to the network, we set sj (t = 0) = x j . Then we iterate the dynamics
using the synchronous rule (2.4). Results for different distorted patterns are shown
in Figure 2.4. We see that the first two distorted patterns converge to the stored
pattern, cases (a) and (b). But the third distorted pattern does not [case (c)].
To understand this behaviour, we analyse the synchronous dynamics (2.4) using
the weight matrix
W =
1
N
x (1)x (1)T . (2.13)
Here x (1)T denotes the transpose of the column vector x (1), so that x (1)T is a row
vector. The standard rules for matrix multiplication apply also to column and row
vectors, they are just N × 1 and 1 × N matrices. So the product on the r.h.s. of
Equation (2.13) is an N × N matrix. In the following, matrices with elements Ai j or
Bi j are written as A, B, and so forth. The product in Equation (2.13) is also referred
Figure 2.4: Reconstruction of a distorted pattern. Under synchronous updating
(2.4) the first two distorted patterns (a) and (b) converge to the stored pattern x (1),
but pattern (c) does not.
20 DETERMINISTIC HOPFIELD NETWORKS
Figure 2.5: Reproduced from xkcd.com/1838 under the creative commons
attribution-noncommercial 2.5 license.
to as an outer product. If we change the order of x (1) and x (1)T in the product, we
obtain a number instead:
x (1)Tx (1) =
N∑
j =1
[x (1)j ]2 = N . (2.14)
The product (2.14) is called scalar product. It is also denoted by a · b = a Tb and
equals |a ||b | cos ϕ, where ϕ is the angle between the vectors a and b , and |a | is the
magnitude of a . We use the same notation for multiplying a transposed vector with
a matrix from the left: x · A = x TA. An excellent source for those not familiar with
these terms from Linear Algebra (Figure 2.5) is Chapter 6 of Mathematical methods
of physics by Mathews and Walker [29].
Using Equation (2.14) we see that W projects onto the vector x (1),
Wx (1) = x (1) . (2.15)
In addition, it follows from Equation (2.14) that the matrix (2.13) is idempotent:
Wt = W for t = 1, 2, 3, . . . . (2.16)
Equations (2.15) and (2.16) together with sgn(x (1)i ) = x (1)i imply that the network
recognises the pattern x (1) as the stored one. This example illustrates the general
proof, Equations (2.10) and (2.11).
HOPFIELD NETWORKS AND HEBB’S RULE 21
Now consider the distorted pattern (a) in Figure 2.4. We feed this pattern to the
network by assigning
s (t = 0) =



−1
−1
−1
1


 . (2.17)
To compute one step in the synchronous dynamics (2.4), we apply W to s (t = 0).
This is done in two steps, using the outer-product form (2.13) of the weight matrix.
We first multiply s (t = 0) with x (1)T from the left
x (1)Ts (t = 0) =

1, −1, −1, 1




−1
−1
−1
1


 = 2 , (2.18)
and then we multiply this result with x (1). This gives
Ws (t = 0) = 12 x (1) . (2.19)
Taking the signum of the i -th component of the vector Ws (t = 0) yields si (t = 1):
si (t = 1) = sgn
Ä N∑
j =1
wi j sj (t = 0)
ä
= x (1)i . (2.20)
We conclude that the state of the network converges to the stored pattern, in one syn-
chronous update. Since W is idempotent, the network stays there: the pattern x (1)
is an attractor. Case (b) in Figure 2.4 works in a similar way.
Now look at case (c), where the network fails to converge to the stored pattern.
We feed this pattern to the network by assigning s (t = 0) = [−1 , 1 , −1 , −1]T. For one
iteration of the synchronous dynamics we evaluate
x (1)Ts (0) =

1, −1, −1, 1




−1
1
−1
−1


 = −2 . (2.21)
It follows that
Ws (t = 0) = − 12 x (1) . (2.22)
Using the update rule (2.4) we find
s (t = 1) = −x (1) . (2.23)
22 DETERMINISTIC HOPFIELD NETWORKS
Equation (2.16) implies that
s (t ) = −x (1) for t ≥ 1 . (2.24)
Thus the network shown in Figure 2.3 has two attractors, the pattern x (1) as well as
the inverted pattern −x (1). As we shall see in Section 2.5, this is a general property of
Hopfield networks: if x (1) is an attractor, then the pattern −x (1) is an attractor too. In
the next Section we discuss what happens when more than one patterns are stored
in the Hopfield network.
2.3 The cross-talk term
When there are more patterns than just one, we need to generalise Equation (2.9).
One possibility is to simply sum Equation (2.9) over the stored patterns [13]:
wi j =
1
N
p∑
μ=1
x (μ)i x (μ)j and θi = 0 . (2.25)
Equation (2.25) generalises Hebb’s rule to p patterns. Because of the sum over μ,
the relation to Hebb’s learning hypothesis is less clear, but we nevertheless refer to
Equation (2.25) as Hebb’s rule. At any rate, we see that the weights are proportional
to the second moments of the pattern bits. It is plausible that a neural network
based the rule (2.25) can recognise properties of the patterns x (μ) that are encoded
in the two-point correlations of their bits.
Note that the weights are symmetric, wi j = w j i . Also, note that the prefactor N −1
in Equation (2.25) is not important. It is chosen to simplify the large-N analysis of
the model (Chapter 3). An alternative version of Hebb’s rule [2, 13] sets the diagonal
weights to zero:
wi j =
1
N
p∑
μ=1
x (μ)i x (μ)j for i 6 = j , wi i = 0 , and θi = 0 . (2.26)
In this Section we use the form (2.26) of Hebb’s rule. If we assign the weights in this
way, does the network recognise the stored patterns? The question is whether
sgn
Ä 1
N
∑
j 6 =i
∑
μ
x (μ)i x (μ)j x (ν)j
ä
︸ ︷︷ ︸
=b (ν)i
= x (ν)i (2.27)
THE CROSS-TALK TERM 23
holds or not. To check this, we repeat the calculation described in the previous
Section. As a first step we evaluate the local field
b (ν)i =

1 − 1N

x (ν)i +
1
N
∑
j 6 =i
∑
μ6 =ν
x (μ)i x (μ)j x (ν)j . (2.28)
Here we split the sum over the patterns into two contributions. The first term
corresponds to μ = ν, where ν refers to the pattern that was fed to the network, the
one we want the network to recognise. The second term in Equation (2.28) contains
the sum over the remaining patterns. Condition (2.27) is satisfied if the second term
in (2.28) does not affect the sign of the r.h.s. of this Equation. This second term is
called cross-talk term.
Whether adding the cross-talk term to x (ν) affects sgn(b (ν)i ) or not, depends on the
stored patterns. Since the cross-talk term contains a sum over μ = 1 , . . . , p , we expect
that this term does not matter if p is small enough. The fewer patterns we store
in the network, the more likely it is that they are all recognised. Furthermore, by
analogy with the example described in the previous Section, it is plausible that the
stored patterns are then also attractors, so that slightly distorted patterns converge
to the correct stored pattern.
For a more quantitative analysis of the effect of the cross-talk term we store
patterns with random bits (random patterns). Different bits are assigned ±1 inde-
pendently with equal probability:
Prob(x (ν)i = ±1) = 12 . (2.29)
This means in particular that 〈x (μ)j 〉 = 0, and that the covariance of different bits
vanishes:
〈x (μ)i x (ν)j 〉 = δi j δμν . (2.30)
Here 〈· · · 〉 denotes an average over many realisations of random patterns, and δi j is
the Kronecker delta, equal to unity if i = j but zero otherwise. In summary, different
bits are uncorrelated.
Given an ensemble of random patterns, what is the probability that the cross-talk
term changes sgn(b (ν)i )? In other words, what is the probability that the network
produces a wrong bit in one asynchronous update, if all bits were initially correct?
The magnitude of the cross-talk term does not matter when it has the same sign
as x (ν)i . If it has a different sign, then the cross-talk term may matter. To determine
when this is the case, one defines
C (ν)i ≡ −x (ν)i
1
N
∑
j 6 =i
∑
μ6 =ν
x (μ)i x (μ)j x (ν)j
︸ ︷︷ ︸
cross-talk term
. (2.31)
24 DETERMINISTIC HOPFIELD NETWORKS
If C (ν)i < 0 then the cross-talk term has same sign as x (ν)i , so that the cross-talk
term does not make a difference: adding this term does not change the sign of x (ν)i .
If 0 < C (ν)i < 1 it does not matter either, only when C (ν)i > 1. The network produces an
error in bit i of pattern ν if C (ν)i > 1 (we approximated 1 − 1/N ≈ 1 in Equation (2.28),
assuming that N is large).
2.4 One-step error probability
The one-step error probability P t =1error is defined as the probability that an error occurs
in one attempt to update a bit, given that initially all bits were correct:
P t =1error = Prob(C (ν)i > 1) . (2.32)
Since patterns and bits are identically distributed, Prob(C (ν)i > 1) does not depend
on i or ν. Therefore P t =1error does not carry any indices.
How does P t =1error depend on the parameters of the problem, p and N ? When
both p and N are large, we can use the central-limit theorem [29, 30] to answer this
question. Since different bits/patterns are independent, we can think of C (ν)i as a
sum of M = (N − 1)(p − 1) independent random numbers cm that take the values −1
and +1 with equal probabilities,
C (ν)i = −
1
N
∑
j 6 =i
∑
μ6 =ν
x (μ)i x (μ)j x (ν)j x (ν)i = −
1
N
M∑
m=1
cm . (2.33)
There are M = (N − 1)(p − 1) terms in the sum on the r.h.s. because terms with μ = ν
are excluded, and also those with j = i [Equation (2.26)]. If we use the rule (2.25)
instead, then there is a correction to Equation (2.33) from the diagonal weights. For
p  N this correction is small.
When p and N are large, the sum
∑M
m=1 cm contains a large number of indepen-
dently identically distributed random numbers with mean zero and variance unity.
It follows from the central-limit theorem that
∑M
m=1 cm is Gaussian distributed with
mean zero and variance M .
Since the central-limit theorem plays an important role in the analysis of neural-
network algorithms, it is worth discussing this theorem in a little more detail. To
begin with, note that the sum
∑M
m=1 cm equals 2k − M , where k is the number of
occurrences of cm = +1 in the sum. Choosing cm randomly to equal either −1 or +1
is called a Bernoulli trial [30], and the probability Pk ,M of drawing k times +1 and
M −k times −1 is given by the binomial distribution [30]. In our case the probability
ONE-STEP ERROR PROBABILITY 25
Figure 2.6: Gaussian distribution of the quantity C defined in Equation (2.31).
of cm = ±1 equals 12 , so that
Pk ,M =

M
k
 
1
2
k  1
2
M −k
. (2.34)
Here
M
k

= M !/[k ! (M − k )!] denotes the number of ways in which k occurrences of
+1 can be distributed over M places.
We want to show that Pk ,M approaches a Gaussian distribution for large M , with
mean zero and with variance M . Since the variance diverges as M → ∞, it is
convenient to use the variable z = (2k − M )/
p
M . The central-limit theorem implies
that z is Gaussian with mean zero and unit variance in the limit of large M . To prove
that this is the case, we substitute k = M2 +
pM
2 z into Equation (2.34) and take the
limit of large M using Stirling’s approximation
n! ≈ en log n−n+
1
2 log 2πn . (2.35)
Expanding Pk ,M to leading order in M −1 assuming that z remains of order unity gives
Pk ,M =
p
2/(πM ) exp (−z 2/2). Now one changes variables from k to z . This stretches
local neighbourhoods dk to dz . Conservation of probability implies that P (z )dz =
P (k )dk . It follows that P (z ) = (
p
M /2)P (k ), so that P (z ) = (2π)−1/2 exp(−z 2/2). In
other words, the distribution of z is Gaussian with zero mean and unit variance, as
we intended to show.
Returning to Equation (2.33), we conclude that C (ν)i is Gaussian distributed
P (C ) = (2πσ2C )−1/2 exp[−C 2/(2σ2C )] , (2.36)
with zero mean, as illustrated in Figure 2.6, and with variance
σ2C =
M
N 2
≈
p
N
. (2.37)
26 DETERMINISTIC HOPFIELD NETWORKS
Here we used M ≈ N p for large N and p .
Another way to compute this variance is to square Equation (2.33) and to average
over random patterns:
σ2C =
1
N 2
¨Ä M∑
m=1
cm
ä2∂
=
1
N 2
M∑
n=1
M∑
m=1
〈cn cm 〉 . (2.38)
Here 〈· · · 〉 denotes the average over random realisations of cm . Since the random
numbers cm are independent for different indices and because 〈c 2m 〉 = 1, we have that
〈cn cm 〉 = δnm . So only the diagonal terms in the double sum contribute, summing
to M ≈ N p . This yields Equation (2.37).
To determine P t =1error [Equation (2.32)] we must integrate the distribution of C from
1 to ∞:
P t =1error =
1
p
2πσC
∫ ∞
1
dC e
− C 22σ2C
=
1
2

1 − erf
√√
N
2p

. (2.39)
Here erf is the error function defined as [31]
erf(z ) =
2
p
π
∫ z
0
dx e−x 2. (2.40)
Since erf(z ) increases monotonically as z increases, we conclude that P t =1error increases
as p increases, or as N decreases. This is expected: it is more difficult for the network
to distinguish stored patterns when there are more of them. On the other hand, it is
easier to differentiate stored patterns if they have more bits. We also see that the
one-step error probability depends on p and N only through the combination
α ≡
p
N
. (2.41)
The parameter α is called the storage capacity of the network. Figure 2.7 shows how
P t =1error depends on the storage capacity. For α = 0 .2 for example, the one-step error
probability is slightly larger than 1%.
In the derivation of Equation (2.39) we assumed that the stored patterns are
random with independent bits. Realistic patterns are not random. We nevertheless
expect that P t =1error describes the typical one-step error probability of the Hopfield
network when p and N are large. However, it is straightforward to construct counter
examples. Consider for example orthogonal patterns:
x (μ) · x (ν) = 0 for μ 6 = ν . (2.42)
For such patterns, the cross-talk term vanishes in the limit of large N (Exercise 2.2),
so that P t =1error = 0.
ENERGY FUNCTION 27
Figure 2.7: Dependence of the one-step error probability on the storage capacity α
according to Equation (2.39).
More importantly, the error probability defined in this Section refers only to the
initial update, the first iteration. What happens in the next iteration, and after many
iterations? Numerical experiments show that the error probability can be much
higher in later iterations, because one error tends to increase the probability of
making another error later on. So the estimate P t =1error is only a lower bound for the
probability of observing errors in the long run.
2.5 Energy function
Consider the long-time limit t → ∞. Does the Hopfield dynamics converge, as
required by Equation (2.7)? This is an important question in the analysis of neural-
network algorithms, because an algorithm that does not converge to a meaningful
solution is useless.
The standard way of analysing convergence of neural-network algorithms is to
define an energy function H (s ) that has a minimum at the desired solution, s = x (1)
say. We monitor how the energy function changes as we iterate, and keep track of
the smallest values of H encountered, to find the minimum. If we store only one
pattern, p = 1, then a suitable energy function is
H = −
1
2N
Å N∑
i =1
si x (1)i
ã2
. (2.43)
This function is minimal when s = x (1), i.e., when si = x (1)i for all i . It is customary to
insert the factor 1/(2N ), this does not change the fact that H is minimal at s = x (1).
A crucial point is that the asynchronous McCulloch-Pitts dynamics (2.5) converges
to a minimum of H [13]. This follows from the fact that H cannot increase under
28 DETERMINISTIC HOPFIELD NETWORKS
the update rule (2.5). To prove this important property, we begin by evaluating the
expression on the r.h.s. of Equation (2.43):
H = −
1
2
N∑
i j
Å 1
N
x (1)i x (1)j
ã
si sj . (2.44)
Using Hebb’s rule (2.9) we find that the energy function (2.43) becomes
H = −
1
2
∑
i j
wi j si sj . (2.45)
This function has the same form as the energy function (or Hamiltonian) for certain
physical models of magnetic systems consisting of interacting spins [32], where
the interaction energy between spins si and sj is 12 (wi j + w j i )si sj . Note that Hebb’s
rule (2.9) yields symmetric weights, wi j = w j i , and wi i > 0. Note also that setting
the diagonal weights to zero does not change the fact that H is minimal at s =
x (1) because s 2i = 1. The diagonal weights just give a constant contribution to H ,
independent of s .
The second step is to show that H cannot increase under the asynchronous
McCulloch-Pitts dynamics (2.5). In this case we say that the energy function is a
Lyapunov function, or loss function. To demonstrate that the energy function is a
Lyapunov function, choose a neuron m and update it according to Equation (2.5).
We denote the updated state of neuron m by s ′m :
s ′m = sgn
Å ∑
j
wm j sj
ã
. (2.46)
All other neurons remain unchanged. There are two possibilities, either s ′m = sm
or s ′m = −sm . In the first case H remains the same, H ′ = H . Here H ′ refers to the
value of the energy function after the update (2.46). When s ′m = −sm , by contrast,
the energy function changes by the amount
H ′ − H = −
1
2
∑
j 6 =m
(wm j + w j m )(s ′m sj − sm sj ) −
1
2
wmm (s ′m s ′m − sm sm )
=
∑
j 6 =m
(wm j + w j m )sm sj . (2.47)
The sum goes over all neurons j that are connected to the neuron m, the one to be
updated in Equation (2.46). Now if the weights are symmetric, H ′ − H equals
H ′ − H = 2
∑
j 6 =m
wm j sm sj = 2
∑
j
wm j sm sj − 2wmm . (2.48)
ENERGY FUNCTION 29
Since the sign of
∑
j wm j sj is that of s ′m = −sm and if wmm ≥ 0, it follows that
H ′ − H < 0 . (2.49)
In other words,the value of H must decrease when the state of neuron m changes,
s ′m 6 = sm . In summary,1 H either remains constant under the asynchronous McCulloch-
Pitts dynamics (s ′m = sm ), or its value decreases (s ′m 6 = sm ). Note that this does not
hold for the synchronous dynamics (2.4), see Exercise 2.9. Since the energy func-
tion cannot increase under the asynchronous McCulloch-Pitts dynamics, it must
converge to a minimum of the energy function. For the energy function (2.43) this
implies that the dynamics must either converge to the stored pattern or to its inverse.
Both are attractors.
We assumed the thresholds to vanish, but the proof also works when the thresh-
olds are not zero, in this case for the energy function
H = −
1
2
∑
i j
wi j si sj +
∑
i
θi si (2.50)
in conjunction with the update rule s ′m = sgn(
∑
j wm j sj − θm ).
Up to now we considered only one stored pattern, p = 1. If we store more than
one pattern [Hebb’s rule (2.25)], the proof that (2.45) cannot increase under the
McCulloch-Pitts dynamics works in the same way because no particular form of the
weights wi j was assumed, only that they must be symmetric, and that the diagonal
weights must not be negative. Therefore it follows in this case too that the minima
of the energy function must correspond to attractors, as illustrated schematically in
Figure 2.8. The configuration space of the network, corresponding to all possible
choices of s = [s1, . . . sN ]T, is drawn as a single axis, the x -axis. But when N is large,
the configuration space is really very high dimensional.
However, some stored patterns may not be attractors when p > 1. This follows
from our analysis of the cross-talk term in Section 2.2 . If the cross-talk term causes
errors for a certain stored pattern, then this pattern is not located at a minimum
of the energy function. Another way to see this is to combine Equations (2.25) and
(2.45) to give:
H = −
1
2N
p∑
μ=1
Å N∑
i =1
si x (μ)i
ã2
. (2.51)
While the energy function defined in Equation (2.43) has a minimum at x (1), Equation
(2.51) need not have a minimum at x (1) (or at any other stored pattern), because
1The derivation outlined here did not use the specific form of Hebb’s rule (2.9), only that the
weights are symmetric, and that wmm ≥0. However, the derivation fails when wmm < 0. In this case it
is still true that H assumes a minimum at s = x (1), but H can increase under the update rule, so that
convergence is not guaranteed. We therefore require that the diagonal weights are not negative.
30 DETERMINISTIC HOPFIELD NETWORKS
Figure 2.8: Minima of the energy function are attractors in configuration space, the
space of all network states. Not all minima correspond to stored patterns (x (mix) is a
mixed state, see text), and stored patterns need not correspond to minima.
a maximal value of
 ∑N
i =1 si x
(1)
i
2
may be compensated by terms stemming from
other patterns. This happens rarely when p is small (Section 2.2).
Conversely there may be minima that do not correspond to stored patterns. Such
states are referred to as spurious states. The network may converge to spurious states.
This is undesirable but it occurs even when there is only one stored pattern, as we
saw in Section 2.2: the McCulloch-Pitts dynamics may converge to the inverted
pattern. This follows also from Equation (2.51): if s = x (1) is a local minimum of
H , then so is s = −x (1). This is a consequence of the invariance of H under s → −s .
There are other types of spurious states besides inverted patterns. An example are
mixed states, superpositions of an odd number 2n + 1 of patterns [1]. For n = 1, for
example, the bits of a mixed state read:
x (mix)i = sgn(±x (1)i ± x (2)i ± x (3)i ) . (2.52)
The number of mixed states increases as n increases. There are 22n+1
 p
2n+1

mixed
states that are superpositions of 2n + 1 out of p patterns, for n = 1 , 2 , . . . (Exercise
2.4). Mixed states such as (2.52) are sometimes recognised by the network (Exercise
2.5), therefore it may happen that the network converges to these states. Finally,
there are spurious states that are not related in any way to the stored patterns x (μ)j .
Such spin-glass states are discussed in detail in Refs. [27, 33, 34], and also by Hertz,
Krogh and Palmer [1].
2.6 Summary
Hopfield networks are networks of McCulloch-Pitts neurons that recognise, or re-
trieve, patterns (Algorithm 1). Their layout is defined by connection strengths, or
SUMMARY 31
Algorithm 1 pattern recognition with deterministic Hopfield network
store patterns x (μ) using Hebb’s rule;
feed distorted pattern x into network by assigning s (t = 0) ← x ;
for t = 1, . . . , T do
choose a value of m and update sm (t ) ← sgn
 ∑N
j =1 wm j sj (t − 1)

;
end for
read out pattern s (T );
weights, chosen according to Hebb’s rule. The weights wi j are symmetric, and the
network is in general fully connected. Hebb’s rule ensures that stored patterns
are recognised, at least most of the time if the number of patterns is not too large.
Convergence of the McCulloch-Pitts dynamics is analysed in terms of an energy
function, which cannot increase under this dynamics.
A single-step estimate for the error probability of the network dynamics was
derived in Section 2.2. If one iterates several steps, the error probability is usually
much larger, but it is difficult to evaluate in general. For stochastic Hopfield net-
works the steady-state error probability can be estimated more easily, because the
dynamics converges to a steady state.
32 STOCHASTIC HOPFIELD NETWORKS
