**Kaynak:** [[00_Context/0_Mehlig_Machine_Learning/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

3 Stochastic Hopfield networks
Two related problems became apparent in the previous Chapter. First, the Hopfield
dynamics may get stuck in spurious minima. In fact, if there is a local minimum
downhill from a given initial state, between this state and the correct attractor, then
the dynamics arrests in the local minimum, so that the algorithm fails to converge
to the correct attractor. Second, the energy function usually is a strongly varying
function over a high-dimensional configuration space. Therefore it is difficult to
predict the first local minimum encountered by the down-hill dynamics of the
network.
Both problems are solved by introducing an element of stochasticity into the
dynamics. This is a trick that works for many neural-network algorithms. In general,
however, it is quite challenging to analyse the stochastic dynamics. For the Hopfield
network, by contrast, much is known. The reason is that the stochastic Hopfield
network is closely related to systems studied in statistical mechanics, so-called spin
glasses. Like these systems – and many other physical systems – the stochastic Hop-
field network exhibits an order-disorder transition. This transition becomes sharp in
the limit of a large number of neurons. This has important consequences. Suppose
that the network produces satisfactory results for a given number of patterns with a
certain number of bits. If one tries to store just one more pattern, the network may
fail to recognise anything. The goal of this Chapter is to explain why this occurs,
and how it can be avoided.
3.1 Stochastic dynamics
The asynchronous update rule (2.5) is called deterministic, because a given set of
states sj determines the outcome of the update of neuron m. To introduce noise,
one replaces the rule (2.5) by an asynchronous stochastic rule [36]:
s ′m =
®
+1 with probability p (bm ) ,
−1 with probability 1 − p (bm ) .
(3.1a)
A neuron with update rule (3.1a) is called binary stochastic neuron. As before, bm =∑
j wm j sj − θm is the local field, and the probability p (b ) is given by:
p (b ) =
1
1 + e−2β b
. (3.1b)
The function p (b ) is plotted in Figure 3.1. The parameter β is the noise parameter.
When β is large, the noise level is small. As β tends to infinity, the function p (b )
ORDER PARAMETERS 33
Figure 3.1: Probability function (3.1b) used in the definition of the stochastic rule
(3.1), plotted for β = 10 and β = 0.
approaches zero if b is negative, and it tends to unity if b is positive. So for β → ∞,
the stochastic update rule (3.1) converges to the deterministic rule (2.5). In the
opposite limit, when β = 0, the update probability p (b ) simply equals 12 . In this case
si is updated to −1 or +1 randomly, with equal probability. The dynamics does not
depend upon the stored patterns contained in the local field b .
The idea is to keep a small but finite noise level. Then the network dynamics
is very similar to the deterministic Hopfield dynamics analysed in the previous
Chapter. But the noise allows the system to escape spurious minima. However,
since the dynamics is stochastic, we must rephrase the convergence criterion (2.7).
This is discussed next.
3.2 Order parameters
If we feed one of the stored patterns, x (1) for example, then we want the stochastic
dynamics to stay in the vicinity of x (1). This can only work if the noise is weak enough,
and even then it is not guaranteed. At time step t , bit i is correct if si (t )x (1)i = 1. All
bits are correct when
∑N
i =1 si (t )x
(1)
i = N , otherwise the sum takes a value smaller
than N . One measures success by averaging 1N
∑N
i =1 si (t )x
(1)
i over the asynchronous
stochastic dynamics of the network from t = 0 to t = T , for given bits x (μ)i :
mμ(T ) =
1
T
T∑
t =1
Å 1
N
N∑
i =1
si (t )x (μ)i
ã
. (3.2a)
If we feed pattern x (1) to the network, we have m1(t =0) = 1 initially. We want that
m1(t ) remains close to unity, so that the network recognises the pattern x (1). In
practice, the quantity 1N
∑N
i =1 si (t )x
(1)
i settles into a steady state, where it fluctuates
around a mean value with a definite distribution that becomes independent of
the iteration number t . If the network works well, the finite-time average m1(T )
34 STOCHASTIC HOPFIELD NETWORKS
Figure 3.2: Illustrates how the finite-time average m1(T ) depends upon the total
iteration time T . The light gray lines show results for m1(T ) for different realisations
of random patterns stored in the network, at a large but finite value of N . The black
line is the average of m1(T ) over the different realisations of random patterns.
converges to a value of order unity after an initial transient (Figure 3.2). The limiting
value,
m1 ≡ limT →∞ m1(T ) ≡
1
N
N∑
i =1
〈si 〉x (1)i , (3.2b)
is called the order parameter. Since there is noise, the order parameter m1 is usually
smaller than unity. The last equality in Equation (3.2b) defines the time average 〈si 〉
over the stochastic network dynamics.
Figure 3.2 also illustrates a subtlety. For finite values of N , the order parameter
m1 depends upon the stored patterns. Different realisations x (1), . . . , x (p ) of random
patterns yield different values of m1. In the limit of N → ∞ this problem does not
occur, the order parameter m1 becomes independent of the stored patterns. We say
that the system is self averaging in this limit. To obtain a definite value for the order
parameter for finite values of N , one usually averages m1 over different realisations
of random patterns stored in the network (thick solid line in Figure 3.2). The dashed
line in Figure 3.2 shows this average, 〈m1〉.
The other components, mμ = limT →∞ mμ(T ) for μ > 1, are expected to be small.
This is certainly true for random patterns with many independent bits. If si (t ) ≈ x (1)i ,
the individual terms in the sumer over i in Equation (3.2b) cancel approximately
upon summation, because the bits of the patterns x (2) to x (p ) are independent from
those of x (1). In summary, if we feed pattern x (1) and if the network works well, we
expect in the limit of large N :
mμ ≈
®
1 if μ = 1,
0 otherwise.
(3.3)
MEAN-FIELD THEORY 35
Whether this is the case or not depends on the values of p , N , and β . In the next
Sections we determine how m1 depends on these parameters.
3.3 Mean-field theory
The order parameter is defined as an average over the stochastic dynamics of the
network in its steady state (Figure 3.2). It is a challenging task to compute this average
because all neurons interact with each other in a nonlinear fashion. Consider neuron
number i . The fate of si is determined by its local field bi , through Equation (3.1).
The difficulty is that the local field in turn depends on the states sj of all other
neurons in the network:1
bi (t ) =
N∑
j =1
wi j sj (t ) . (3.4)
When N is large, we may assume that bi (t ) remains essentially constant in the steady
state, independent of t , because fluctuations of sj (t ) average out when summing
over j :
bi (t ) = 〈bi 〉 + fluctuations . (3.5)
Since bi (t ) is given by a sum over many random numbers, we appeal to the central-
limit theorem and argue that the fluctuations of bi (t ) are of order N −1/2. Since
〈bi (t )〉 ∼ 1, we ignore the fluctuations in the limit of large N and write
bi (t ) ≈ 〈bi 〉 =
N∑
j =1
wi j 〈sj 〉 =
1
N
∑
μ
∑
j 6 =i
x (μ)i x (μ)j 〈sj 〉 , (3.6)
using Hebb’s rule (2.26) for given patterns x (μ). The time-averaged local field 〈bi 〉
is called the mean field. Theories that neglect the fluctuations in Equation (3.5)
are called mean-field theories. They require a self-consistent solution, because the
average 〈sj 〉 on the r.h.s. of Equation (3.6) depends on the mean field. Using the
stochastic update rule (3.1) we find:
〈si 〉 = Prob(si = +1) − Prob(si = −1) = p (〈bi 〉) − [1 − p (〈bi 〉)] = tanh(β 〈bi 〉) . (3.7)
Equations (3.6) and (3.7) yield a set of N non-linear self-consistent equations for
〈si 〉,
〈si 〉 = tanh(β 〈bi 〉) with 〈bi 〉 =
1
N
∑
μ
∑
j 6 =i
x (μ)i x (μ)j 〈sj 〉 . (3.8)
Recall that the averages 〈· · · 〉 are time averages, evaluated for given patterns x (μ).
1We set the thresholds to zero, as assumed in Hebb’s rule (2.26).
36 STOCHASTIC HOPFIELD NETWORKS
An equivalent yet slightly different derivation of the mean-field equations (3.8)
is this: suppose we average si over the dynamics (3.1) at fixed sj 6 = si , and then we
average all sj over the dynamics. This gives 〈si 〉 = 〈tanh(β bi )〉. Comparing with Equa-
tion (3.8), we see that the mean-field approximation corresponds to approximating
〈tanh(β bi )〉 ≈ tanh(β 〈bi 〉).
Now, in order to calculate the order parameters (3.9),
mμ =
1
N
N∑
j =1
〈sj 〉x (μ)j , (3.9)
we must solve the mean-field equations (3.8) to obtain the time averages 〈si 〉 in
Equation (3.9). To this end we express the mean field 〈bi 〉 in terms of the order
parameters mμ:
〈bi 〉 =
1
N
p∑
μ=1
∑
j 6 =i
x (μ)i x (μ)j 〈sj 〉 ≈
p∑
μ=1
x (μ)i mμ . (3.10)
The last equality is only approximate because the j -sum in the definition of mμ
contains the term j = i . Whether or not to include this term makes only a small
difference in the limit of large N .
Let us first calculate m1 assuming Equation (3.3), neglecting terms with μ 6 = 1
in Equation (3.10). To make sure that these small μ 6 = 1-terms do not add up to a
substantial correction to the first term, the storage capacity must be small enough.
For large values of N we assume
α 1 . (3.11)
In this case it is sufficient to keep only the first term on the r.h.s. of Equation (3.10)
[37]. This approximation yields together with Equation (3.8):
〈si 〉 = tanh(β 〈bi 〉) ≈ tanh(β m1 x (1)i ) . (3.12)
Applying the definition (3.9) of the order parameter, one finds
m1 =
1
N
N∑
i =1
tanh

β m1 x (1)i

x (1)i . (3.13)
Using that tanh(z ) = − tanh(−z ) as well as the fact that the bits x (μ)i can only assume
the values ±1, one obtains:
m1 = tanh(β m1) . (3.14)
This is a self-consistent equation for m1. For β → 0, it has the solution m1 = 0. This
is not the desired solution because m1 = 0 means that x (1) is not recognised. For
MEAN-FIELD THEORY 37
Figure 3.3: Solutions of the mean-field equation (3.14), solid lines. The critical
noise level is βc = 1. The dashed line corresponds to an unstable solution.
β → ∞, by contrast, there are three solutions, m1 = 0 , ±1. Figure 3.3 shows results
of the numerical evaluation of Equation (3.14) for intermediate values of β . For β
larger than the critical value,
βc = 1 , (3.15)
the three solutions persist. The solution m1 = 0 is unstable . This can be shown by
computing the derivatives of the free energy of the Hopfield network [1]. In other
words, if we start with an initial condition that corresponds to m1 = 0, the network
dynamics does not stay there. The other two solutions are stable: when the network
is initialised close to x (1), then it converges to m1 = O (1), as long as β > βc.
The symmetry of the problem dictates that there must also be a solution with −m1.
This solution corresponds to the inverted pattern −x (1) (Section 2.5). If we start in the
vicinity of x (1), then the network is unlikely to converge to −x (1), provided that N is
large enough. The probability of the dynamical transition x (1) → −x (1) vanishes very
rapidly as N increases and as the noise level decreases. If this transition happens
in a simulation in this limit, the network then stays near −x (1) for a very long time.
Consider the limit where T tends to ∞ at a finite but large value of N . Then the
network jumps back and forth between x (1) and −x (1) at a very small rate. As a result,
the order parameter averages to zero. This shows that the limits of large N and large
T do not commute:
limT →∞ limN →∞ m1(T ) 6 = limN →∞ limT →∞ m1(T ) . (3.16)
In practice the interesting limit is the left one, that of a large network run for a time
T much longer than the initial transient, but not infinite. This is precisely where the
mean-field theory applies. It corresponds to taking the limit N → ∞ first, at finite
but large T . This describes simulations where the transition x (1) → −x (1) does not
occur.
38 STOCHASTIC HOPFIELD NETWORKS
In summary, Equation (3.14) predicts that the order parameter converges to a
definite value, m1, independent of the stored patterns in the limit N → ∞. When
N is finite, the limiting value of the order parameter does depend on the stored
patterns (Figure 3.2). In this case one averages also over different realisations of the
stored patterns, as mentioned above. The value of this average, 〈m1〉, determines
the average error probability P t =∞error in the steady state, the average fraction of wrong
bits. The steady-state average number of correct bits is given by
¨ 1
2
N∑
i =1
Ä
1 + 〈si 〉x (1)i
ä∂
=
N
2
(1 + 〈m1〉) , (3.17)
because 12 (1 + si x (1)i ) = 1 if x (1)i is correct, and equal to zero otherwise. The outer
average is over different realisations of random patterns (the inner average is over
the network dynamics). The second equality follows from Equation (3.2b). Since
the l.h.s. of Equation (3.17) equals N times 1 − P t =∞error , we deduce that
P t =∞error = 12 (1 − 〈m1〉) . (3.18)
Since m1 → 1 as β → ∞, the steady-state error probability tends to zero in this limit.
This is expected since the stored patterns x (μ) are recognised for small enough values
of α in the deterministic limit, when the cross-talk term is negligible. But note that
the stochastic dynamics slows down as the noise level tends to zero. The lower the
noise level, the longer the network remains stuck in local minima, so that it takes
longer time to reach the steady state, and to sample the steady-state statistics of H .
In the opposite limit, β → 0, the steady-state error probability tends to 12 , because
m1 → 0. In this noise-dominated limit the stochastic network ceases to function. If
one were to assign N bits entirely randomly, then half of them would be correct, on
average, P t =∞error = 12 .
It is important to note that noise can help in another way: it may prevent the
network dynamics from converging to mixed states (Section 2.5). This can be seen
as follows [1, 33]. To derive the above mean-field result we assumed m1 ≈ 1 and
mμ ≈ 0 for μ 6 = 1. Mixed states correspond to solutions where an odd number of
components of m is non-zero, for example:
m (mix) =




m
m
m
0
...




. (3.19)
CRITICAL STORAGE CAPACITY 39
Neglecting the cross-talk term, the mean-field equation reads
〈si 〉 = tanh
Ä
β
p∑
μ=1
m(mix)μ x (μ)i
ä
. (3.20)
In the limit of β → ∞, the averages 〈si 〉 converge to the mixed states (2.52) when
m (mix) is given by Equation (3.19). Averaging over the bits of the random patterns
one finds:
m(mix)μ =
¨
x (μ)i tanh
Ä
β
p∑
ν=1
m(mix)ν x (ν)i
ä∂
. (3.21)
The numerical solution of Equation (3.21) shows that there is a non-zero solution
for β −1 < β −1c = 1. Yet this solution is unstable for 0 .46 < β −1 < 1 [33]. In other words,
the mixed states have a lower critical noise level than the stored patterns, equal to
0.46. For noise levels larger than that, but still smaller than unity, the network can
recognise the stored patterns, and it does not converge to mixed states.
However, these results were obtained assuming that only one (or a few) order
parameters are not zero. This corresponds to the limit of α = p /N → 0, where the
cross-talk term (Section 2.3) is negligible. The next Section describes a mean-field
theory that remains accurate for larger values of α.
3.4 Critical storage capacity
The analysis in the preceding Section replaced the sum (3.10) by its first term, x (1)i m1.
This can only work when p /N is small enough. Now we discuss how to proceed
when p /N is not small.
Note that the analysis in Section 2.2 did not assume that p /N is small, but it
yielded only the one-step error probability P t =1error, and we discussed the storage
capacity α = p /N in relation to the one-step error probability. As the network
dynamics is iterated, however, the number of errors tends to increase, at least when
α is large enough so that the cross-talk term matters. Now we describe how to
compute P t =∞error for general values of the storage capacity α, in order to demonstrate
how the errors multiply as one iterates, causing the network to fail.
As before, we store p patterns in the network using Hebb’s rule (2.26) and feed
pattern x (1) to the network. The aim is to determine the order parameter m1 and the
corresponding error probability in the steady state for p ∼ N , so that α remains finite
as N → ∞. In this case we can no longer approximate the sum in Equation (3.10)
just by its first term, because the other terms for μ > 1 may sum up to a contribution
that is of the same order as m1. Instead we must evaluate all mμ to compute the
mean field 〈bi 〉.
40 STOCHASTIC HOPFIELD NETWORKS
The relevant calculation is summarised in Chapter 4 of Ref. [38]. It is also outlined
in Section 2.5 of Hertz, Krogh and Palmer [1]. The remainder of this Section follows
this outline quite closely. One starts by rewriting the mean-field equations (3.8) in
terms of the order parameters mμ. Using
〈si 〉 = tanh(β
∑
μ
x (μ)i mμ) (3.22)
we find
mν =
1
N
∑
i
x (ν)i 〈si 〉 =
1
N
∑
i
x (ν)i tanh
Å
β
∑
μ
x (μ)i mμ
ã
. (3.23)
This coupled set of p non-linear equations is equivalent to the mean-field equations
(3.8).
Now feed pattern x (1) to the network. We assume that the network stays close to
the pattern x (1) in the steady state, so that m1 remains of order unity. The other mμ
remain small. When p is large, however, we cannot simply approximate the sum
over μ on the r.h.s. of Equation (3.23) by its first term only, because the sum of the
remaining (small) terms might not be negligible. Therefore we need to estimate
these terms, the other order parameters mμ for μ 6 = 1.
The trick is to assume that the pattern bits are random, uncorrelated with mean
zero [Equations (2.29) and (2.30)]. In this case the order parameters mμ, μ = 2 , . . . , p ,
become random numbers that fluctuate around zero with variance 〈m2μ〉 (this av-
erage is over random patterns). We use Equation (3.23) to compute the variance
approximately.
In the μ-sum on the r.h.s of Equation (3.23) we must treat the term μ = ν sepa-
rately, because the index ν appears also on the l.h.s. of this equation. Also the term
μ = 1 must be treated separately, as before, because μ = 1 is the index of the pattern
that is fed to the network. As a consequence, the calculations of m1 and mν for ν 6 = 1
proceed slightly differently. We begin with the first case. Using that x (μ)i = ±1, and
that tanh(z ) is an odd function, Equation (3.23) simplifies to:
m1 =
1
N
∑
i
tanh
Å
β m1 + β
∑
μ6 =1
x (μ)i x (1)i mμ
ã
. (3.24)
The next steps are similar to the analysis of the cross-talk term in Section 2.2. One
assumes that the patterns are random, that their bits x (μ)i = ±1 are independently
and identically distributed. In the limit of large N and p , the sums in Equation (3.24)
can then be estimated using the central-limit theorem . For random patterns, the
variable
z ≡
∑
μ6 =1
x (μ)i x (1)i mμ (3.25)
CRITICAL STORAGE CAPACITY 41
is a sum of many independent, identically distributed random numbers with mean
zero and finite variance. The variable z is therefore approximately Gaussian dis-
tributed, with mean zero. As a consequence, the distribution of z is entirely deter-
mined by its variance σ2z , and it is indepedent of i .
Returning to Equation (3.24), one approximates the sum 1N
∑
i as an average over
the Gaussian distributed variable z . This yields:
m1 =
∫
dz
p
2πσ2z
e −
z 22σ2
z tanh(β m1 + β z ) . (3.26)
Equation (3.26) is the desired result, a self-consistent equation for m1 replacing the
mean-field equation (3.14).
In order to determine m1, we need to estimate the variance σ2z featuring in Equa-
tion (3.26). To this end, one squares Equation (3.25) and averages the resulting
double sum. Since the bits x (μ)i and x (μ
′)
i are independent when μ 6 = μ′, only the
diagonal terms in this double sum contribute to the average:
σ2z =
∑
μ6 =1
〈m2μ〉 ≈ p 〈m2μ〉 for any μ 6 = 1 . (3.27)
Here we assumed that p is large, and approximated p − 1 ≈ p . To evaluate the
variance further, it is necessary to estimate the remaining order parameters. One
starts again from Equation (3.23) and writes for ν 6 = 1
mν =
1
N
∑
i
x (ν)i tanh
Å
β x (1)i m1 + β x (ν)i mν + β
∑
μ6 =1
μ6 =ν
x (μ)i mμ
ã
=
1
N
∑
i
x (ν)i x (1)i tanh
Å
β m1︸︷︷︸
1©
- β x (1)i x (ν)i mν
︸ ︷︷ ︸
2©
- β
∑
μ6 =1
μ6 =ν
x (μ)i x (1)i mμ
︸ ︷︷ ︸
3©
ã
. (3.28)
Consider the three terms in the argument of tanh(. . . ). The term 1© is of order unity,
it is independent of N . The term 3© may be of the same order, because the sum
over μ contains ∼ p N terms. The term 2©, by contrast, is small for large values of
N . Therefore it is a good approximation to Taylor-expand tanh(. . . ) as follows:
tanh
Ä
1© + 2© + 3©
ä
≈ tanh
Ä
1© + 3©
ä
- 2©
d
dx
tanh
1©+ 3©
- . . . . (3.29)
42 STOCHASTIC HOPFIELD NETWORKS
Using ddx tanh(x ) = 1 − tanh2(x ) one obtains
mν =
1
N
∑
i
x (ν)i x (1)i tanh
Å
β m1︸︷︷︸
1©
- β
∑
μ6 =1
μ6 =ν
x (μ)i x (1)i mμ
︸ ︷︷ ︸
3©
ã
+
1
N
∑
i
x (ν)i x (1)i β x (1)i x (ν)i mν
︸ ︷︷ ︸
2©
ï
1 − tanh2
Å
β m1 + β
∑
μ6 =1
μ6 =ν
x (μ)i x (1)i mμ
ãò
.
(3.30)
Using the fact that x (μ) = ±1 and thus [x (μ)i ]2 = 1, this expression simplifies:
mν =
1
N
∑
i
x (ν)i x (1)i tanh
Å
β m1 + β
∑
μ6 =1
μ6 =ν
x (μ)i x (1)i mμ
ã
+
+β mν
1
N
∑
i
ï
1 − tanh2
Å
β m1 + β
∑
μ6 =1
μ6 =ν
x (μ)i x (1)i mμ
ãò
.
(3.31)
The goal is now to solve for mν. Approximating the sum 1N
∑
i in the second line as
an average over the Gaussian distributed variable z [Equation (3.25)] gives:
β mν
∫ ∞
−∞
dz
1
p
2πσz
e−
z 22σ2
z

1 − tanh2

β m1 + β z

. (3.32)
Defining the parameter q
q ≡
∫ ∞
−∞
dz
1
p
2πσz
e−
z 22σ2
z tanh2

β m1 + β z

, (3.33)
one can write Equation (3.32) as
β mν
ï
1 −
∫ ∞
−∞
dz
1
p
2πσz
e−
z 22σ2
z tanh2

β m1 + β z
 ò
≡ β mν(1 − q ) . (3.34)
Returning to Equation (3.31), we see that it takes the form
mν =
1
N
∑
i
x (ν)i x (1)i tanh
Å
β m1 + β
∑
μ6 =1
μ6 =ν
x (μ)i x (1)i mμ
ã
- (1 − q )β mν . (3.35)
Solving for mν one finds for ν 6 = 1:
mν =
1
N
∑
i x
(ν)
i x
(1)
i tanh
Å
β m1 + β
∑
μ6 =1
μ6 =ν
x (μ)i x (1)i mμ
ã
1 − β (1 − q )
. (3.36)
CRITICAL STORAGE CAPACITY 43
This expression allows us to compute the variance σz , defined by Equation (3.27).
Equation (3.36) shows that the average 〈m2ν〉 contains a double sum over the bit
index, i . Since the bits are independent, only the diagonal terms contribute, so that
〈m2ν〉 ≈
1
N 2
∑
i tanh
2
Å
β m1 + β
∑
μ6 =1
μ6 =ν
x (μ)i x (1)i mμ
ã
[1 − β (1 − q )]2
(3.37)
for ν 6 = 1, but otherwise independent of ν. The numerator is just q /N , from Equation
(3.33). So the variance evaluates to
σ2z =
αq
[1 − β (1 − q )]2
. (3.38)
In summary there are three coupled equations, for m1, q , and σz , Equations (3.26),
(3.34), and (3.38). They must be solved together to determine how m1 depends on
β and α.
In order to compare with the results described in Section 2.2, we must take the
deterministic limit, β → ∞. In this limit, q approaches unity, yet β (1 − q ) remains
finite [1]. Setting q = 1 in Equation (3.38) but retaining β (1 − q ) one finds:
σ2z =
α
[1 − β (1 − q )]2
. (3.39a)
The deterministic limits of Equations (3.34) and (3.26) become [1]:
β (1 − q ) =
√√
√ 2
πσ2z
e−
m21
2σ2z , (3.39b)
m1 = erf

m1
p
2σ2z

. (3.39c)
Recall expression (3.18) for the steady-state error probability. Inserting Equation
(3.39c) for m1 into this expression we find in the same limit:
P t =∞error =
1
2

1 − erf

m1
p
2σ2z

. (3.40)
Compare this with Equation (2.39) for the one-step error probability in the deter-
ministic limit. That equation was derived for only one step of the network dynamics,
while Equation (3.40) describes the limit of many steps, the long-time or steady-state
limit.
44 STOCHASTIC HOPFIELD NETWORKS
Figure 3.4: Error probability as a function of the storage capacity α in the deter-
ministic limit. The one-step error probability P t =1error [Equation (2.39)] is shown as a
dashed line, the steady-state error probability P t =∞error [Equation (3.40)] is shown as
a solid line. In the hashed region, error avalanches increase the error probability.
After Figure 1 in Ref. [34].
Yet it turns out that Equation (3.40) reduces to (2.39) as α → 0. To see this, one
solves the set of Equations (3.39) by introducing the variable y = m1/
p
2σ2z . One
obtains the following one-dimensional equation for y [1, 34]:
y (
p
2α + (2/
p
π) e−y 2) = erf(y ) . (3.41)
The relevant solutions are those satisfying 0 ≤ erf(y ) ≤ 1, because the order parame-
ter is restricted to this range (transitions to −m1 do not occur in the limit N → ∞).
Figure 3.4 shows the steady-state error probability obtained from Equations (3.40)
and (3.41). Also shown is the one-step error probability
P t =1error =
1
2
ï
1 − erf
Å 1
p
2α
ãò
derived in Section 2.2. As stated above, P t =∞error approaches P t =1error for small α. We con-
clude: in this limit, for small α, the error probability does not increase significantly
as one iterates the network dynamics. Errors in earlier iterations have little effect
on the probability that later errors occur.
The situation is different at larger values of α. In that case, P t =1error significantly
underestimates the steady-state error probability. In the hashed region, errors in
the dynamics increase the probability of errors in subsequent steps, giving rise to
error avalanches. Figure 3.4 illustrates that the steady-state error probability tends
to 12 as the parameter α increases beyond a critical value, αc . Equation (3.41) yields
αc ≈ 0.1379 (3.42)
CRITICAL STORAGE CAPACITY 45
Figure 3.5: Phase diagram of the Hopfield network in the limit of large N (schematic).
The region with P t =∞error < 12 is the ordered phase, the region with P t =∞error = 12 is the
disordered phase. After Figure 2 in Ref. [34].
for the critical storage capacity αc. When α > αc , the network produces just noise.
When α < αc, by contrast, the network works well. The smaller the storage capacity
α, the better the network performs.
Figure 3.4 shows that the steady-state error probability changes very abruptly
near αc . Suppose we store 137 patterns with 1000 bits in a Hopfield network. In
this case the network can retrieve the patterns with a comparatively small error
probability. However, if we try to store one or two more patterns, the network fails
to produce output meaningfully related to the stored patterns. This rapid change is
an example of a phase transition. In many physical systems one observes similar
transitions between ordered and disordered phases [32].
What happens at higher noise levels? The numerical solution of Equations (3.34),
(3.26), and (3.38) shows that the critical storage capacity αc decreases as the noise
level increases (smaller values of β ). This is shown schematically in Figure 3.5. Below
the solid line the error probability is smaller than 12 , so that the network operates
reliably (although less so as one approaches the phase-transition boundary). Out-
side this region the the error probability equals 12 . In this region the network fails.
In the limit of small α the critical noise level is βc = 1. In this regime the network is
described by the theory explained in Section 3.3, Equation (3.14).
Alternatively these two different phases of the Hopfield network are characterised
in terms of the order parameter m1. We see that m1 6 = 0 below the solid line, while
m1 = 0 above it, in the limit of large N .
46 STOCHASTIC HOPFIELD NETWORKS
3.5 Beyond mean-field theory
The theory summarised in this Chapter rests on a mean-field approximation for the
local field, Equation (3.6). The main result is the phase diagram shown in Figure
3.5, derived in the limit N → ∞. For smaller values of N one expects the transition
to be less sharp, so that m1 is non-zero also for values of α larger than the critical
storage capacity αc.
But even for large values of N , the question remains how reliable the mean-field
theory really is. To answer this question, one uses a more accurate theory, based
on the so-called replica trick. One starts from the steady-state distribution of s for
fixed patterns x (μ). In Chapter 4 we will see that the steady-state distribution for the
McCulloch-Pitts dynamics is the Boltzmann distribution
PB(s ) = Z −1e−β H (s ) (3.43)
(the proof in Chapter 4 assumes that the diagonal weights are set to zero). The
normalisation factor Z is called the partition function
Z =
∑
s
e−β H (s ) . (3.44)
In order to compute the order parameter, one adds a threshold term to the energy
function (2.45)
H = −
1
2
∑
i j
wi j si sj +
∑
μ
λμ
∑
i
x (μ)i si . (3.45)
Then the order parameter mμ is obtained by taking a derivative w.r.t λμ:
mμ =
¨ 1
N
∑
i
x (μ)i 〈ni 〉
∂
= −
1
N β
∂
∂ λμ
log Z . (3.46)
The outer average is over different realisations of random patterns. The logarithm
of Z is averaged using the replica trick. The idea is to represent the average of the
logarithm as
〈log Z 〉 = limn→01n (〈Z n 〉 − 1) , (3.47)
The function Z n looks like the partition function of n copies of the system, hence
the name replica trick. If one assumes that all copies yield the same order parameter,
one obtains the mean-field solution described in Section 3.4. If one allows different
copies to have different order parameters (replica-symmetry breaking), one obtains
a more accurate solution for the critical storage capacity [39],
αc = 0.138187 . (3.48)
CORRELATED AND NON-RANDOM PATTERNS 47
The mean-field result (3.42) differs only slightly from Equation (3.48). The most
precise Monte-Carlo simulations (Section 4.2) for finite values of N [40] yield upon
extrapolation to N = ∞
αc = 0.143 ± 0.002 . (3.49)
This is close to, yet significantly different from the best theoretical estimate, Equation
(3.48), and also different from the mean-field result (3.42).
To put these results into context, note that for other systems mean-field theories
tend to give results much worse than here. Usually, mean-field theories yield at
best a qualitative description of a phase transition. For the Hopfield network, by
contrast, the mean-field theory works very well because every neuron is connected
with every other neuron. This helps to average out the fluctuations in Equation
(3.6). In physical systems with local interactions, mean-field theories tend to work
better in higher dimensions, because there are more neighbours to average over
(Exercise 3.5).
3.6 Correlated and non-random patterns
In the two previous Sections we assumed that the stored patterns are random with
independently identically distributed bits. This allowed us to calculate the storage
capacity of the Hopfield network using the central-limit theorem. The hope is that
the result describes what happens for typical, non-random patterns, or for random
patterns with correlated bits. Correlations affect the distribution of the cross-talk
term, and thus the storage capacity of the Hopfield network. It has been argued
that the storage capacity increases when the patterns are more strongly correlated,
while others have claimed that the capacity decreases in this limit (see Ref. [41] for a
discussion).
For a set of definite patterns (no randomness to average over), the situation seems
to be even more challenging. Yet there is a way of modifying Hebb’s rule to deal
with this problem, at least when the patterns are linearly independent. The recipe
is explained by Hertz, Krogh, and Palmer [1]. One simply incorporates the overlaps
Qμν =
1
N
x (μ) · x (ν) (3.50)
into Hebb’s rule. To this end one defines the p × p overlap matrix Q with elements
Qμν and writes:
wi j =
1
N
∑
μν
x (μ)i

Q−1

μν x
(ν)
j . (3.51)
For orthogonal patterns (Qμν = δμν), this modified Hebb’s rule is identical to Equa-
tion (2.25). For non-orthogonal patterns, the rule (3.51) ensures that all patterns
48 STOCHASTIC HOPFIELD NETWORKS
are recognised. Equation (3.51) requires that the matrix Q is invertible: its columns
must be linearly independent (and this implies that the rows are linearly indepen-
dent too). This limits the number of patterns one can store with the rule (3.51),
because p > N implies linear dependence.
For linearly independent patterns one can find the weights wi j iteratively, by
successive improvement from an arbitrary starting point. We can say that the
network learns the task through a sequence of weight changes. This is the idea used
to solve classification tasks with perceptrons (Part II).
3.7 Summary
In this Chapter we analysed the stochastic dynamics of Hopfield networks. We
asked under which circumstances the network dynamics can reliably recognise
stored patterns. If the stored patterns are random, the performance of the Hopfield
network depends on their number, on the number of bits per pattern, and upon the
noise level. The storage capacity α equals the ratio of the number of stored patterns
to the number of bits per pattern. The network operates reliably when this ratio
is small, and provided the noise level is not too large. A mean-field analysis of the
N → ∞-limit shows that there is a phase transition in the parameter plane of the
Hopfield network (Figure 3.5): when α exceeds the critical storage capacity αc, the
network ceases to function.
Hopfield networks share many properties with the networks discussed later on
in this book. The most important point is perhaps that introducing noise in the
dynamics allows to study the convergence and performance of the network: in the
presence of noise there is a well-defined steady state that can be analysed. Without
noise, in the deterministic limit, the network dynamics arrests in local minima of the
energy function, and may not reach the stored patterns. Naturally the noise must
be small enough for the network to function accurately. Finally, the building blocks
of Hopfield networks are McCulloch-Pitts neurons and Hebb’s rule for the weights.
Many of the algorithms discussed in the coming Chapters use these elements in
some form.
3.8 Further reading
The statistical mechanics of Hopfield networks is explained in Introduction to the
theory of neural computation by Hertz, Krogh, and Palmer [1]. Starting from the
Boltzmann distribution, Chapter 10 in this book summarises how to compute the
order parameters, and how to evaluate the stability of the corresponding solutions.
FURTHER READING 49
For more details on the replica trick, see the books by Müller, Reinhard and Strick-
land [37] and by Engel and van den Broeck [42], as well as the review article [43].
50 THE BOLTZMANN DISTRIBUTION
