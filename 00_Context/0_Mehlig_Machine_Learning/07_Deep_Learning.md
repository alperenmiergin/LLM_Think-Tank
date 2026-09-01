**Kaynak:** [[00_Context/0_Mehlig_Machine_Learning/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

7 Deep learning
7.1 How many hidden layers?
In Chapter 5 we saw why it is sometimes necessary to have a hidden layer: in order
to solve problems that are not linearly separable. Under which circumstances is
one hidden layer sufficient? Are there problems that require more than one hidden
layer? Even if not necessary, may additional hidden layers improve the performance
of the network?
To understand how many hidden layers suffice, it is useful to view the classifica-
tion problem as an approximation problem [79]. Consider the classification problem
[x (μ), t (μ)] for μ = 1, . . . , p . This problem defines a target function t (x ). Training a
network to solve this task corresponds to approximating the target function t (x )
by the output function O (x ) of the network, from N -dimensional input space to
HOW MANY HIDDEN LAYERS? 109
Figure 7.3: The neural-network output O (x ) approximates the target function t (x ).
one-dimensional outputs.
How many hidden layers are necessary or sufficient to approximate a given set of
functions to a certain accuracy, by choosing weights and thresholds? The answer
depends on the nature of the target function. Is it real-valued, perhaps continuous,
or does it assume only discrete values?
We start with real-valued inputs and a single output [1, 80]. Consider the network
drawn in Figure 7.2. The neurons in the hidden layers have sigmoid activation
functions σ(b ) = (1 + e−b )−1. The output is a linear unit, with linear activation
function g (b ) = b . With two hidden layers one tries to approximate the function
t (x ) by
O (x ) =
∑
m
Wm g
 ∑
j
w (2)m j g
Ä ∑
k
w (1)j k xk − θ (1)j
ä
− θ (2)m

− Θ . (7.1)
In the simplest case the inputs are one-dimensional (Figure 7.3). The training set
consists of pairs [x (μ), t (μ)] that encode the target function t (x ). The task is then to
Figure 7.4: Basis function used to approximate a one-dimensional target function
t (x ).
110 DEEP LEARNING
Figure 7.5: Two-dimensional basis functions. (a) To make a localised basis function
with two inputs, one needs two hidden layers of neurons with sigmoid activation
functions. One layer determines the lightly shaded cross in terms of a linear com-
bination of four sigmoid outputs. The second layer localises the final output to
the darker square [Equation (7.4)]. (b) Network layout for one basis function, after
Figure 8 in Ref. [80].
approximate t (x ) by the network output O (x ):
O (x ) ≈ t (x ) . (7.2)
To this end one uses linear combinations of the basis functions B(x ) shown in
Figure 7.4. Any reasonable real-valued function t (x ) can be approximated by sums
of such basis functions, each suitably shifted and scaled. Furthermore, these basis
functions can be expressed as scaled differences of sigmoid activation functions
B(x ) = W [σ(w (1) x − θ (1)1 ) − σ(w (1) x − θ (1)2 )] . (7.3)
Comparing with Equation (7.1) shows that one hidden layer is sufficient to construct
the function O (x ) in this way.
Now consider two-dimensional inputs. In this case, a suitable basis function is
(Figure 7.5):
B(x )=W σ

w (2)[σ(w (1) x1)−σ(w (1) x1−θ (1)2 )+σ(w (1) x2)−σ(w (1) x2 −θ (1)4 )]−θ (2) . (7.4)
So two hidden layers are sufficient for two input dimensions. For each basis function
we require four neurons in the first hidden layer and one neuron in the second
hidden layer. The construction is analogous for more than two input dimensions.
For each basis function we need 2N neurons in the first and one neuron in second
layer. In conclusion, two hidden layers are sufficient to approximate a real-valued
target function.
HOW MANY HIDDEN LAYERS? 111
Yet it is not always necessary to have two layers for real-valued functions. For
continuous functions, one hidden layer is sufficient. This is ensured by the universal
approximation theorem [2]. It says any continuous function can be approximated
to arbitrary accuracy by a network with a single hidden layer, for sufficiently many
neurons in the hidden layer.
In Chapter 5 we considered discrete Boolean functions. Any Boolean function
with N -dimensional inputs can be represented by a network with one hidden layer,
using 2N neurons in the hidden layer. An example for such a network is discussed
in Ref. [1]:
xk ∈ {+1, −1} k = 1, . . . , N inputs
Vj j = 0, . . . , 2N − 1 hidden neurons
g (b ) = sgn(b ) activation function of hidden neurons (7.5)
g (b ) = sgn(b ) activation function of output neuron
A difference compared with the Boolean-function representations in Section 5.5 is
that here the inputs take the values ±1. The reason is that this simplifies the proof,
which is by construction [1]. For each hidden neuron one assigns the weights as
follows
w j k =
®
δ if the k thdigit of binary representation of j is 1 ,
−δ otherwise,
(7.6)
with δ > 1 (see below). The thresholds θj of all hidden neurons are the same, equal
to N (δ − 1). The idea is that each input pattern turns on exactly one neuron in the
hidden layer, the winning neuron). The weights feeding into the output neuron are
determined as follows. If the output for the pattern represented by neuron Vj is +1,
let W1 j = +1, otherwise W1 j = −1. The threshold is set to Θ =
∑
j W1 j .
To show how this construction works, consider the Boolean XOR function as an
example (Figure 7.6). To confirm that only the corresponding winning neuron gives
a positive signal, consider pattern x (1) = [−1 , −1]T. It activates the first neuron in the
hidden layer ( j = 0). To see this, compute the local fields of the hidden neurons:
b (1)0 = 2δ − 2(δ − 1) = 2 , (7.7)
b (1)1 = −2(δ − 1) = 2 − 2δ ,
b (1)2 = −2(δ − 1) = 2 − 2δ ,
b (1)3 = −2δ − 2(δ − 1) = 2 − 4δ .
If we choose δ > 1 then the output of the first hidden neuron gives a positive output
(V0 > 0), the other neurons produce negative outputs, Vj < 0 for j = 1, 2, 3. In
112 DEEP LEARNING
x1 x2 t
-1 -1 -1
+1 -1 +1
-1 +1 +1
+1 +1 -1
(a) (b) (c)
j digit 1 digit 2
0 0 0
1 0 1
2 1 0
3 1 1
Figure 7.6: Boolean XOR function. (a) Value table, (b) Network layout. For the
weights feeding into the hidden layer, dashed lines correspond to w j k = −δ , solid
lines to w j k = δ. For the weights feeding into the output neuron, dashed lines
correspond to W1 j = −γ, and solid lines to W1 j = γ. Panel (c) summarises the binary
representation of j used to determine the weights w j k of the hidden layer [Equation
(7.6)].
conclusion, output neuron 1 is the winning neuron for this pattern. Now consider
x (3) = [−1, +1]T. In this case
b (3)0 = −2(δ − 1) = 2 − 2δ , (7.8)
b (3)1 = −2δ − 2(δ − 1) = 2 − 4δ ,
b (3)2 = 2δ − 2(δ − 1) = 2 ,
b (3)3 = −2(δ − 1) = 2 − 2δ .
Now the third hidden neuron gives a positive output, while the others yield negative
values. It works in the same way for the other two patterns, x (2) and x (4). In summary,
there is a unique winning neuron for each pattern.1 Figure 7.7 shows how the four
decision boundaries corresponding to Vj partition the input plane.
According to the scheme outlined above, the output neuron computes
O1 = sgn(−V1 + V2 + V3 − V4) (7.9)
with Θ =
∑
j W1 j = 0. For x (1) and x (4) we find the correct result O1 = −1. The same
is true for x (2) and x (3), in this case we obtain O1 = 1. In summary, this example
illustrates how an N -dimensional Boolean function is represented by a network
with one hidden layer, with 2N neurons. The problem is of course that this network
is expensive to train for large values of N because the number of hidden neurons is
very large.
1That pattern μ = k gives the winning neuron j = k −1 is of no importance, it is just a consequence
of how the patterns are ordered in the value table in Figure 7.6
VANISHING AND EXPLODING GRADIENTS 113
Figure 7.7: Shows how the XOR network depicted in Figure 7.6 partitions the input
plane. Target values are encoded as in Figure 5.8: É corresponds to t = −1 and Ñ to
t = +1).
There are more efficient layouts if one uses more than one hidden layer. As an
example, consider the parity function for N -dimensional binary inputs with bits
equal to 0 or 1. It measures the parity of sequences of input bits. The function
evaluates to unity if there is an odd number of ones in the input, otherwise to zero.
A construction similar to the above yields a network layout with 2N neurons in the
hidden layer. If one instead wires together the XOR networks, one can solve the
parity problem with O (N ) neurons [81] (Figure 7.8). When N is a power of two, this
network has 3(N −1) neurons. To see this, set the number of inputs to N = 2k . Figure
7.8 shows that the number Nk of neurons satisfies the recursion Nk +1 = 2Nk + 3
with N1 = 3. The solution of this recursion is Nk = 3(2k − 1).
This example also illustrates a second reason why it may be useful to have more
than one hidden layer. To design a neural network for a certain task it is often
convenient to build the network from well-studied building blocks. One wires them
together, often in a hierarchical fashion. In Figure 7.8 there is only one building block,
the XOR network from Figure 5.17. Other examples are convolutional networks for
image analysis. Here the fundamental building blocks are so-called feature maps,
they recognise different geometrical features in the image, such as edges or corners
(Chapter8).
7.2 Vanishing and exploding gradients
This Section describes an inherent instability in the training of deep networks with
stochastic gradient descent, the vanishing- or exploding-gradient problem.
In Chapter 6 we saw that learning slows down when the factors g ′(b ) in the
recursion (6.17) become small. When the network has several hidden layers, like the
one shown in Figure 7.9, potentially small factors of g ′(b ) are multiplied, aggravating
the problem. As a consequence, the weights of hidden neurons close to the input
114 DEEP LEARNING
Figure 7.8: Solution of the parity problem for N -dimensional inputs. The network
is built from XOR units (Figure 5.17, here with 0/1 neurons). Each XOR unit has a
hidden layer with two neurons. Only the states of the inputs and outputs of the XOR
units are shown, not those of the hidden neurons. In total, the whole network has
only O (N ) neurons. After Figure 2 in Ref. [81].
VANISHING AND EXPLODING GRADIENTS 115
Figure 7.9: Fully connected deep network with four hidden layers.
layer change only by small amounts, the smaller the more hidden layers the network
has. This is the vanishing-gradient problem.
Figure 7.10 quantifies the problem. The Figure shows that the r.m.s. errors aver-
aged over different realisations of random initial weights, δ(`)rms ≡

〈N −1
∑N
j =1[δ
(`)
j ]2〉
1/2
,
tend to be very small during initial training. To explain this phenomenon, consider
the simple example discussed in Ref. [5]: a long chain of neurons with only one neu-
ron per layer (Figure 7.11). The output V (L ) is given by nested activation functions
V (L ) =g
Ä
w (L )g
Ä
w (L −1) · · · g

w (2)g (w (1) x − θ (1)) − θ (2)

. . .−θ (L −1)
ä
− θ (L )
ä
. (7.10)
Let us compute the errors δ(`) using Equation (6.16). The partial derivative in (6.16)
is evaluated using the chain rule:
∂ V (L )
∂ V (L −1)
= g ′(b (L ))w (L ) ,
∂ V (L )
∂ V (L −2)
=
∂ V (L )
∂ V (L −1)
∂ V (L −1)
∂ V (L −2)
= g ′(b (L ))w (L )g ′(b (L −1))w (L −1) ,
... (7.11)
where b (k ) = w (k )V (k −1) − θ (k ) is the local field for neuron k . This yields the following
expression for ∂ V (L )/∂ V (`):
∂ V (L )
∂ V (`)
=
`+1∏
k =L
[g ′(b (k ))w (k )] . (7.12)
116 DEEP LEARNING
Figure 7.10: Vanishing-gradient problem for a network with four fully connected
hidden layers. The Figure illustrates schematically how the r.m.s. error δ(`)rms in
layer ` depends on the number of training epochs. During phase I, the vanishing-
gradient problem is severe, during phase II the network starts to learn, phase III is
the convergence phase where the errors decline. Schematic, based on simulations
performed by Ludvig Storm, training a network with four hidden layers and N = 30
neurons per layer on the MNIST data set.
Figure 7.11: Chain of neurons used to illustrate the vanishing-gradient problem [5],
with neurons V (`), weights w (`), and thresholds θ (`).
Inserting this expression into Equation (6.16), we find:
δ(`) = [t − V (L )(x )]g ′(b (L ))
`+1∏
k =L
[w (k )g ′(b (k −1))] . (7.13)
One can also obtain this result by applying the recursion from Algorithm 4, δ(`) =
δ(`+1) w (`+1)g ′(b (`)).
Now consider the early stages of training [5]. For the activation functions (6.19),
the maximum of g ′(b ) is 14 and 1, respectively, and g ′(b ) becomes exponentially
small if |b | is large. If one initialises the weights as described in Section 6.2, to
Gaussian random variables with mean zero and variance σ2w = 1 say, then the factors
w (k )g ′(b (k −1)) tend to be smaller than unity. In this case, Equation (7.12) implies that
the error or gradient δ(`) vanishes quickly as ` decreases. The reason is simply that
the number of small factors in the product (7.12) increases when ` becomes smaller,
and multiplying many small numbers gives a very small product. As a result, the
VANISHING AND EXPLODING GRADIENTS 117
training slows down. As mentioned above, this is the vanishing-gradient problem
(phase I in Figure 7.10).
What happens at later times? Figure 7.10 indicates that the network continues to
learn slowly. For the particular example shown in Figure 7.10, the effect persists for
about 20 epochs. Then the first layers begin to learn faster (phase II). There is to
date no mathematical theory describing how this transition occurs. Much later in
training, the errors decay as the learning converges (phase III in Figure 7.10).
There is a second, equivalent, point of view [5]: the learning is slow in a layer
far from the output because the output is not very sensitive to the state of these
neurons. The effect of a given neuron on the output is measured by Equation (7.12),
which describes how the output of the network changes when changing the state of
a neuron in a particular layer. At any rate, Equation (7.13) demonstrates that hidden
layers far from the output learn slowly, at least initially when the weights are still
random.
Suppose we try to combat the vanishing-gradient problem by increasing the
weight variance σ2w . The problem is that this may cause the factors w (k )g ′(b (k −1)) to
become larger than unity. As a consequence, the gradients increase exponentially
instead (exploding gradients). In conclusion, the training dynamics is fundamentally
unstable. This is due to the multiplicative nature of the recursion for the errors.
Taking the logarithm of the product in Equation (7.12) and assuming that the weights
are independently distributed random numbers, the central-limit theorem (Chapter
2) implies that the distribution of log δ(`) is Gaussian. In other words, the distribution
of the errors is lognormal, implying that very small and very large values of δ(`) occur
with high probability.
In networks like the one shown in Figure 7.9 the principle is the same. Assume
that all layers ` = 1, . . . , L have the same number N of neurons. When N > 1, one
multiplies N × N matrices, instead of numbers. The product (7.12) of random
numbers becomes a product of random matrices. Using the chain rule we find:
∂ V (L )i
∂ V (`)j
=
N∑
m=1
N∑
n=1
· · ·
N∑
p =1
∂ V (L )i
∂ V (L −1)m
∂ V (L −1)m
∂ V (L −2)n
· · ·
∂ V (`+1)p
∂ V (`)j
. (7.14)
With the update rule
V (k )m = g
Ä N∑
j =1
w (k )i j V (k −1)j − θ (k )i
ä
(7.15)
we can evaluate each factor:
∂ V (k )m
∂ V (k −1)n
= g ′(b (k )m )w (k )mn . (7.16)
118 DEEP LEARNING
Substituting this result into Equation (7.14), we see that the partial derivatives
∂ V (L )i /∂ V (`)j can be computed in the form of a matrix product. The matrix J′L −` with
elements [J′L −`]i j = ∂ V (L )i /∂ V (`)j is given by:
J′L −` = D(L )W(L )D(L −1)W(L −1) · · · D(`+1)W(`+1) . (7.17)
Here W(k ) is the matrix of weights feeding into layer k , and
D(k ) =



g ′(b (k )1 )
...
g ′(b (k )N )


 (7.18)
is the diagonal matrix with entries D (k )j j = g ′(b (k )j ). The matrix product (7.17) deter-
mines the error dynamics, just like Equation (7.13):
δ(`)T = δ(L )TJL −` with JL −` = [D(L )]−1J′L −`D(`) . (7.19)
Does the magnitude of δ(`) 2= δ(`)Tδ(`) of the errors shrink or grow as they propagate
through the layers? This is determined by the eigenvalues of the left Cauchy-Green
matrix Jp JTp , with p = L − `. This matrix is symmetric, and its eigenvalues are
non-negative. Their square roots are the singular values of Jp :
Λ(p )1 ≥ Λ(p )2 ≥ · · · ≥ Λ(p )N ≥ 0 . (7.20)
It is customary to sort the singular values by their magnitudes, as in Equation (7.20).
When there are many layers, the number p = L −` of factors in Equation (7.17) is large.
In this case, the maximal singular value either decreases or increases exponentially
as a function of p [82]. The corresponding rate
λ1 = limp →∞
1
p
log Λ(p )1 (7.21)
is called the maximal Lyapunov exponent. A negative maximal Lyapunov exponent
indicates that the errors vanish exponentially. The eigenvectors of Jp JTp are called
backward Lyapunov vectors. They describe how the errors change as they propagate
through the network. How small differences between the inputs change, is deter-
mined by the forward Lyapunov vectors, the eigenvectors of JTp Jp . Since JTp Jp and
Jp JTp have the same eigenvalues, the rate of decay or increase of the magnitude of
input differences is the same as that of the error magnitudes.
The concept of a maximal Lyapunov exponent is borrowed from chaos theory
[83– 85], where λ1 > 0 implies that small perturbations of the initial conditions grow
exponentially as a function of time. The iterated map (7.10) is a dynamical system.
VANISHING AND EXPLODING GRADIENTS 119
The transition in Figure 7.10 is triggered by a change of the Lyapunov exponent
from negative values to λ1 ≈ 0 [86]. In summary, the unstable-gradient problem in
deep networks is due to the fact that the maximal singular value Λ(p )1 either increases
or decreases exponentially as one moves away from the output layer, depending on
whether the maximal Lyapunov exponent is negative or positive.
Pennington et al. [87] suggested to combat the unstable-gradient problem by ini-
tialising weights and thresholds in such a way that the maximal Lyapunov exponent
is close to zero, in order to make sure that the errors neither grow nor shrink expo-
nentially. Consider the network shown in Figure 7.9, with N neurons per hidden
layer, and initialise the weights to independent Gaussian random numbers with
mean zero and variance σ2w . The thresholds are initialised in the same way, with
variance σ2θ . In the limit of N → ∞ one can use a mean-field theory [87], just as in
Chapter 3, to estimate the maximal Lyapunov exponent.
Following Ref. [87], the first step is to compute how the errors propagate through
the network. We assume uncorrelated random input patterns, Equation (2.29), and
random weights with mean zero and variance 〈wi j wk l 〉 = σ2w δi j δk l . When N → ∞,
the errors are sums of many random numbers [Equation (6.17)]. Invoking the central-
limit theorem (Chapter 2), one concludes that the errors are approximately Gaussian
distributed, with mean zero and with variance
〈[δ(`−1)j ]2〉 =
N∑
i ,k =1
δ(`)i δ(`)k w (`)i j w (`)k j [g ′(b (`−1)j )]2 ≈ σ2w
N∑
i =1
〈[δ(`)i ]2〉〈[g ′(b (`−1)j )]2〉 . (7.22)
The last approximation neglects possible correlations with the local fields. The
variance 〈[δ(`)i ]2〉 does not depend on i , so that the sum just gives a factor of N .
In the limit of large N , the central-limit theorem ensures that the local fields b (`)j
are Gaussian distributed too, with mean zero and variance
σ2` =
1
N
N∑
j =1
[b (`)j ]2 . (7.23)
This allows us to estimate
〈[g ′(b (`)j ]2〉 ∼
∫
dz`
e−z 2/2σ2`
∆
2πσ2z`
[g ′(z`)]2 ≡ F (σ`) . (7.24)
Equation (7.23) describes how the distribution of local fields b (`)j narrows or broadens
as one iterates. For g (b ) = tanh(b ), it was shown in Ref. [87] that σ` approaches
a fixed point, σ∗ = lim`→∞ σ`, under certain conditions on the variances of the
weights and thresholds, σ2w and σ2θ . If σ` is well approximated by σ∗, Equation
120 DEEP LEARNING
(7.22) simplifies to: δ(`−1)rms ≈ δ(`)rms
∆
σ2w N F (σ∗). This results in a mean-field estimate
of the the maximal Lyapunov exponent,
λ1 ∼ log δ(`−1)/δ(`) ≈ 12 log[σ2w N F (σ∗)] . (7.25)
The network parameters should be adjusted so that this exponent is as close to zero
as possible. This means, in particular, that one should take
σ2w ∝ N −1 , (7.26)
see also Refs. [88, 89]. But we must keep in mind that Equation (7.25) relies on taking
the limit N → ∞. It is expected that the assumptions underlying Equation (7.25)
break down when N is finite, causing the mean-field theory to fail. The tails of the
error distribution, for example, are expected to become heavier as N decreases, as
indicated by the results for N = 1 described above. Note also that Jp assumes rank
zero with a small but non-zero probability when N is finite. In this case λ1 = −∞.
There are a number of other tricks that help to cope with unstable gradients
in practice, to some extent at least. First, it is sometimes argued that activation
functions which do not saturate at large b , such as the ReLU function , help against
the vanishing-gradient problem. Second, batch normalisation (Section 7.6.5) may
reduce the unstable-gradient problem. Third, introducing connections that skip
layers (residual networks) can alleviate the unstable-gradient problem. This is
discussed in Section 7.4.
Finally, there is an important aspect of the problem that we did not discuss:
unstable gradients limit the extent to which information can propagate through the
network in a meaningful way. This is explained in Ref. [90].
In this Section we assumed all along that the weights are random numbers. When
the network starts to learn, this is no longer the case. The question is how the singular
values of Jp change when correlations between different factors in the product (7.17)
develop.
7.3 Rectified linear units
Glorot et al. [91] suggested to use a piecewise activation function, the ReLU function2
max{0 , b } (Chapter 1). What is the point of using ReLU neurons? When training a
deep network with ReLU activation functions, many of the hidden neurons produce
output zero. This means that the network of active neurons (non-zero output) is
sparsely connected. It is sometimes argued that sparse networks have desirable
2Since the derivative of the ReLU function is discontinuous at b = 0, a common convention is to
set the derivative to zero at b = 0.
RECTIFIED LINEAR UNITS 121
Figure 7.12: Sparse network of active neurons with ReLU activation functions. The
black paths correspond to active neurons with positive local fields.
properties; at least sparse representations of a classification problem tend to be
easier to learn because they are more likely to be linearly separable (Section 5.4).
Figure 7.12 illustrates that for a given input pattern, only a certain fraction of hidden
neurons is active. For these neurons the computation is linear, yet different input
patterns give different sets of active neurons. The product in Equation (7.17) ac-
quires a particularly simple structure: the matrices D(p ) are diagonal with 0/1 entries.
But while the weight matrices are independent initially, they become correlated as
the training proceeds. Also the D(p )-matrices develop correlations: which elements
vanish depends on which pattern is clamped to the input terminals.
A hidden layer with only one or very few active neurons might act as a bottleneck
preventing efficient backpropagation of output errors which could in principle slow
down training. For the examples given in Ref. [91], this does not occur. To describe
information propagation through a network with ReLU neurons, one should com-
pute the probability that a given number of singular values of the matrix Jp vanish
(Section 7.2).
The ReLU function is unbounded for large positive local fields. Therefore, the
vanishing-gradient problem (Section 7.2) is thought to be less severe in networks
made of rectified linear units. However, since the ReLU function does not saturate,
the weights tend to increase. Glorot et al. [91] suggested to use L1-regularisation
(Section 7.6.1) to make sure that the weights do not grow.
Finally, using ReLU functions instead of sigmoid functions speeds up the training,
because the ReLU function has piecewise constant derivatives. Such functions are
faster to evaluate than non-linear activation functions and their derivatives.
122 DEEP LEARNING
Figure 7.13: Schematic illustration of a network with a short cut that skips one layer
(gray arrow). After Fig. 1 from Ref. [93].
7.4 Residual networks
One way of reducing the vanishing-gradient problem is to introduce short cuts,
connections that skip layers [92]. Empirical evidence shows that networks with such
short cuts are easier to train than standard multilayer perceptrons. The likely reason
is that the vanishing-gradient problem is less severe in networks with short cuts,
because error propagation in such networks is determined by the matrix product
with the smallest number of factors.
This Section explains how to train networks with short cuts [93]. The layout is
illustrated schematically in Figure 7.13. Black arrows stand for usual feed-forward
connections, and the gray arrow indicates a connection that skips a layer. The
notation in Figure 7.13 differs somewhat from that of Algorithm 4. The weights
from layer ` − 1 to ` are denoted by w (`,`−1)j k , and those from layer ` − 1 to ` + 1 by
w (`+1,`−1)i j (gray arrow in Figure 7.13). Note that the superscripts are ordered in the
same way as the subscripts: the right index refers to the layer on the left. According
to Figure 7.13, neuron j in layer ` + 1 computes
V (`+1)j = g
Ä ∑
k
w (`+1,`)j k V (`)k − θ (`+1)j +
∑
n
w (`+1,`−1)j n V (`−1)n
ä
. (7.27)
As usual, the argument of the activation function is the local field b (`+1)j . The weights
of all connections are trained in the usual fashion, by stochastic gradient descent.
To illustrate the structure of the resulting formulae, consider a chain of neurons,
just one neuron per layer, with short cuts that skip one neuron (Figure 7.14). We
RESIDUAL NETWORKS 123
Figure 7.14: Chain of neurons with short cuts (gray arrows) that skip single neurons.
calculate the weight increments using Equations (6.15) and (6.16). The recursion
(6.17) applies only to standard feed-forward networks without skipping layers. In
order to determine how to update the weights for the network shown in Figure 7.14,
we need to evaluate the gradients ∂ V (L )/∂ V (`). To begin with, consider the learning
rule for w (L ,L −1). Using Equations (6.15) and (6.16) one finds
δw (L ,L −1) = ηδ(L )V (L −1) with δ(L ) = (t − V (L ))g ′(b (L )) , (7.28)
as in Algorithm 4. In the same way one obtains
δw (L ,L −2) = ηδ(L )V (L −2) with δ(L ) = (t − V (L ))g ′(b (L )) . (7.29)
Now consider the learning rule for w (L −1,L −2). Using ∂ V (L )/∂ V (L −1) = g ′(b (L ))w (L ,L −1)
gives
δw (L −1,L −2) = ηδ(L −1)V (L −2) with δ(L −1) = δ(L ) w (L ,L −1)g ′(b (L −1)) , (7.30)
as before. But the update for w (L −2,L −3) is different, because now the short cuts come
into play. The connection from layer L − 2 to L gives rise to an extra term:
∂ V (L )
∂ V (L −2)
=
∂ V (L )
∂ V (L −1)
∂ V (L −1)
∂ V (L −2)
- g ′(b (L ))w (L ,L −2) . (7.31)
Evaluating the partial derivatives yields:
δw (L −2,L −3) = ηδ(L −2)V (L −3) with δ(L −2) = δ(L −1) w (L −1,L −2)g ′(b (L −2)
- δ(L ) w (L ,L −2)g ′(b (L −2)) . (7.32)
Iterating further in this way, one finds the following error-backpropagation rule:
δ(`−1) = δ(`) w (`,`−1)g ′(b (`−1)) + δ(`+1) w (`+1,`−1)g ′(b (`−1)) (7.33)
with w (`+1,`−1) = 0 for ` ≥ L − 1. for ` = L , L − 1 , . . . . The first term is the same as in the
error recursion in Algorithm 4. The second term is due to the skipping connections.
124 DEEP LEARNING
These connections reduce the vanishing-gradient problem. To see this, note that
we can write the error δ(`) as
δ(`) = δ(L )
∑
`1,`2,...,`n
w (L ,`n )g ′(b (`n )) · · · w (`2,`1)g ′(b (`1))w (`1,`)g ′(b (`)) (7.34)
where the sum is over all paths L > `n > `n−1 > · · · > `1 > ` back through the network.
The structure of the general formula, for networks with more than only one neuron
per layer, is analogous to Equation (7.34). According to this equation, the smallest
errors, or gradients, in networks with many layers are dominated by the product
corresponding to the path with the smallest number of steps (factors). Therefore
short cuts tend to increase small gradients.
Finally, the network described in Ref. [92] used unit weights for the skipping
connections. In this case, the local field of V (`+1)j takes the form
b (`+1)j =
∑
k
w (`+1,`)j k V (`)k − θ (`+1)j + V (`−1)j ≡ F + V (`−1)j , (7.35)
assuming that the hidden layers have the same number of neurons. Here F is a
residual contribution to the local field (when F = 0, the inputs V (`−1)j are passed right
through to b (`+1)j ). Therefore such networks are called residual networks [92]. But
note that the networks described in Ref. [92] use convolution layers (Section 8.1).
7.5 Outputs and energy functions
Up to now we discussed networks that have the same activation functions for all
neurons in all layers, either sigmoid or tanh activation functions [Equation (6.19)],
or ReLU functions (Sections 1.3 and 7.3). In the output layer, one often uses neurons
with a different activation function, so-called softmax outputs:
Oi =
eαb
(L )i
∑M
k =1 e
αb (L )k. (7.36)
Here b (L )i =
∑
j w
(L )
i j V
(L −1)
j − θ
(L )
i are the local fields in the output layer. In the limit
α → ∞, we see that Oi = δi i0 where i0 is the index of the winning output neuron,
the one with the largest value b (L )i (Chapter 10). For α = 1, Equation (7.36) is a soft
version of this maximum criterion, thus the name softmax. We set α to unity from
now on.
Two important properties of softmax outputs are, first, that 0 ≤ Oi ≤ 1. Second,
the values of the outputs sum to unity,
M∑
i =1
Oi = 1 . (7.37)
OUTPUTS AND ENERGY FUNCTIONS 125
Therefore the outputs of softmax units can be interpreted as probabilities. Consider
classification problems where the inputs must be assigned to one of M classes. In
this case, the output O (μ)i of softmax unit i is assumed to represent the probability
that the input x (μ) is in class i (in terms of the targets: t (μ)i = 1 while t (μ)k = 0 for k 6 = i ).
If O (μ)i ≈ 1, we assume that the network is quite certain that input x (μ) is in class i .
On the other hand, if all O (μ)k ≈ M −1, we interpret the network output as uncertain.
But note that neural networks may fail like humans sometimes do: their output can
be very certain yet wrong (Section 8.6).
Softmax units are used in conjunction with a different energy function,
H = −
∑
i μ
t (μ)i log O (μ)i . (7.38)
Here and in the following log stands for the natural logarithm. The function (7.38) is
minimal when O (μ)i = t (μ)i (Exercise 7.5). To find the correct backpropagation formula
for the energy function (7.38), we need to evaluate
∂ H
∂ wmn
= −
∑
i μ
t (μ)i
O (μ)i
∂ O (μ)i
∂ wmn
. (7.39)
Here the labels denoting the output layer were omitted, and in the following equa-
tions the index μ that refers to the input pattern is dropped as well. Using the
identities
∂ Oi
∂ bl
= Oi (δi l − Ol ) and
∂ bl
∂ wmn
= δl m Vn , (7.40)
one obtains
∂ Oi
∂ wmn
=
∑
l
∂ Oi
∂ bl
∂ bl
∂ wmn
= Oi (δi m − Om )Vn . (7.41)
So
δwmn = −η
∂ H
∂ wmn
= η
∑
i μ
t (μ)i (δi m − O (μ)m )V (μ)n = η
∑
μ
(t (μ)m − O (μ)m )V (μ)n , (7.42)
since
∑M
i =1 t
(μ)
i = 1 for the type of classification problem where each input belongs
to precisely one class. The corresponding learning rule for the thresholds reads
δθm = −η
∂ H
∂ θm
= −η
∑
μ
(t (μ)m − O (μ)m ) . (7.43)
Equations (7.42) and (7.43) highlight a further advantage of softmax output neurons
(apart from the fact that they allow the output to be interpreted in terms of probabil-
ities). The weight and threshold increments for the output layer derived in Section 6
126 DEEP LEARNING
[Equations (6.6a) and (6.11a)] contain factors of derivatives g ′(B (μ)m ). As noted earlier,
these derivatives tend to zero when the activation function saturates, slowing down
the learning. But here the rate at which the neuron learns is simply proportional
to the output error, (t (μ)m − O (μ)m ), without any possibly small factor g ′(b ). Softmax
units are normally only used in the output layer, because the learning speedup is
coupled to the use of the energy function (7.38), and because it is customary to
avoid dependencies between the neurons within a hidden layer.
There is an alternative form of the energy function that is very similar to the above,
but works with sigmoid activation functions and 0/1 targets. Instead of Equation
(7.38) one chooses:
H = −
∑
i μ
î
t (μ)i log O (μ)i + (1 − t (μ)i ) log(1 − O (μ)i )
ó
, (7.44)
with Oi = σ(bi ), i = 1, . . . , M , and where σ denotes the sigmoid function (6.19a). To
compute the weight increments, we apply the chain rule:
∂ H
∂ wmn
= −
∑
i μ

t (μ)i
O (μ)i
−
1 − t (μ)i
1 − O (μ)i

∂ Ol
∂ wmn
= −
∑
i μ
t (μ)i − O (μ)i
O (μ)i (1 − O (μ)i )
∂ Ol
∂ wmn
. (7.45)
Using Equation (6.20) we obtain
δwmn = η
∑
μ
(t (μ)m − O (μ)m )V (μ)n , (7.46)
identical to Equation (7.42). The thresholds are adjusted in an analogous fashion,
Equation (7.43). But now the interpretation of the outputs is slightly different, since
the values of the softmax units in the output layers sum to unity, while those with
sigmoid activation functions do not. In either case one can use the definition (6.30)
for the classification error.
To conclude this Section, we briefly discuss the meaning of the energy functions
(7.38) and (7.44). In Chapter 6 we saw how deep neural networks are trained to fit
input-output functions (Section 7.1) by minimising the quadratic energy function
(6.4). This reminds of regression analysis in mathematical statistics, where the pre-
dictive accuracy of a model is improved by minimising the sum over the squared
errors. Now consider the energy function (7.44) for a single sigmoid output with
targets t = 0 and t = 1. In this case, the network output is interpreted as the proba-
bility O (μ) = Prob(t (μ) = 1|x (μ)) of observing t (μ) = 1. The corresponding likelihood is
the joint probability of observing the outcomes t (μ) for p independent inputs x (μ):
L =
p∏
μ=1

O (μ)
t (μ) 
1 − O (μ)
1−t (μ)
, (7.47)
REGULARISATION 127
under the model determined by the weights and thresholds of the network. Min-
imising the negative log-likelihood −L (Section 4.4) corresponds to minimising
(7.44). This is just binary logistic regression [94] to predict a binary outcome t = 0
or 1. The case M > 1 corresponds to a multivariate regression problem [94] with M
possibly correlated outcome variables t1, . . . , tM .
When the targets describe M mutually exclusive categorical outcomes, ti = 0 , 1
with
∑M
i =1 ti = 1, the softmax output Oi is interpreted as the probability of observing
ti = 1. An example is the problem of classifying hand-written digits (Section 8.3).
Training the network then corresponds to multinomial regression [94] with the log-
likelihood (7.38). Note that Equation (7.44), for M = 1, is equivalent to (7.38) for
M = 2, because O2 = 1 − O1 and t2 = 1 − t1. At any rate, these remarks motivate
why the energy functions (7.38) and (7.44) are sometimes called log-likelihoods.
Equation (7.44) is also referred to as cross entropy, because it has the same for as the
cross entropy [65] characterising the difference between two Bernoulli distributions:
the network output Oi , and the target ti .
7.6 Regularisation
Deeper networks have more neurons, so the problem of overfitting (Figure 6.6) tends
to be more severe for deeper networks. Regularisation schemes limit the tendency
to overfit. Apart from cross validation (Section 6.4), a number of other regularisation
schemes have proved useful for deep networks: weight decay, pruning, drop out,
expansion of the training set, and batch normalisation . This Section summarises
the most important aspects of these methods.
7.6.1 Weight decay
Recall Figure 5.17 which shows a solution of the classification problem defined by
the Boolean XOR function. In the solution illustrated in this Figure, all weights equal
±1, and also the thresholds are of order unity. If one uses the backpropagation
algorithm to find a solution to this problem, one may find that the weights continue
to grow during training. As mentioned above, this can be problematic because it
may imply that the local fields become so large that the activation functions saturate.
Then training slows down, as explained in Section 7.2.
To prevent the weights from growing, one can reduce them by some factor during
training, either at each iteration or in regular intervals, wi j → (1 − ")wi j for 0 < " < 1,
or
δwmn = −"wmn for 0 < " < 1 . (7.48)
128 DEEP LEARNING
This is achieved by adding a term to the energy function:
H =
1
2
∑
i μ
Ä
t (μ)i − O (μ)i
ä2
︸ ︷︷ ︸
≡H0
+
γ
2
∑
i j
w 2i j . (7.49)
Gradient descent on H gives:
δwmn = −η
∂ H0
∂ wmn
− "wmn (7.50)
with " = ηγ. One can include a corresponding term for the thresholds. The scheme
summarised here is sometimes called L2-regularisation. An alternative scheme is
L1-regularisation. It amounts to
H =
1
2
∑
i μ
Ä
t (μ)i − O (μ)i
ä2
+
γ
2
∑
i j
|wi j | . (7.51)
This gives the learning rule
δwmn = −η
∂ H0
∂ wmn
− "sgn(wmn ) . (7.52)
The discontinuity of the learning rule at wmn = 0 is cured by defining sgn(0) = 0.
Comparing Equations (7.50) and (7.52), we see that L1-regularisation puts more
weights to zero, compared with the L2-scheme [5].
An alternative to these two methods is max-norm regularisation [95], where the
weights are constrained to remain smaller than a given constant: |wi j | ≤ c . If a |wi j |
exceeds the positive constant c , then wi j is rescaled so that |wi j | = c .
These weight-decay schemes are referred to as regularisation schemes because
they tend to help against overfitting. How does this work? Weight decay adds
a constraint to the problem of minimising the energy function. The result is a
compromise [5] between a small value of H and small weight values. The idea is
that a network with smaller weights is more robust to the effect of noise. When
the weights are small, then small changes in some of the patterns do not give a
substantially different training result. When the network has large weights, by
contrast, it may happen that small changes in the input yield significant differences
in the training result that are difficult to generalise.
7.6.2 Pruning
The term pruning refers to removing unnecessary weights or neurons from the
network, to improve its efficiency. The simplest approach is weight elimination by
REGULARISATION 129
weight decay [96]. Weights that tend to remain very close to zero during training are
removed by setting them to zero and not updating them anymore. Neurons that have
zero weights for all incoming connections are effectively removed (pruned). Pruning
is a regularisation method: by removing unnecessary weights, one reduces the risk
of overfitting. As opposed to drop out (Section 7.6.3), where hidden neurons are
only temporarily ignored, pruning refers to permanently removing hidden neurons.
The idea is to train a large network, and then to prune a large fraction of neurons
to obtain a much smaller network. It is usually found that such pruned networks
generalise better than small networks that were trained without pruning. Up to 90%
of the hidden neurons can be removed in some cases. In general, pruning is an
excellent way to create efficient classifiers for real-time applications.
An efficient pruning algorithm is based on the idea to remove weights in such a
way that the effect upon the energy function is as small as possible [97]. The idea is
to find the optimal weight, to remove it, and to change the other weights in such a
way that the energy function increases as little as possible. The algorithm works as
follows. Assume that the network was trained, so that it reached a (local) minimum
of the energy function H . One expands the energy function around this minimum.
To second order, the expansion of H reads:
H = Hmin + 12 δw · Mδw + higher orders in δw . (7.53)
The term linear in δw vanishes because we expand around a local minimum. The
matrix M is the Hessian, the matrix of second derivatives of the energy function.
For the next step it is convenient to adopt the following notation [97]. One groups
all weights in the network into a long weight vector w (as opposed to grouping
them into a weight matrix W as we did in Chapter 2). A particular component wq is
extracted from the vector w as follows:
wq = ˆeq · w where ˆeq =



...
1
...


 ← q . (7.54)
Here ˆeq is the Cartesian unit vector in the direction q , with components [ˆeq ]j = δq j .
In this notation, the elements of M are Mp q = ∂ 2H /∂ wp ∂ wq . Now, eliminating the
weight wq amounts to setting
δwq = −wq . (7.55)
To minimise the damage to the network we should eliminate the weight that has
least effect upon H , changing the other weights at the same time so that H increases
as little as possible (Figure 7.15). This is achieved by minimising
minq minδw { 12 δw · Mδw } subject to the constraint ˆeq · δw + wq = 0 . (7.56)
130 DEEP LEARNING
Figure 7.15: Pruning algorithm (schematic). The minimum of H is located at
[w1, w2]T. The contours of the quadratic approximation to H are represented as
solid black lines. The weight change δw = [−w1, 0]T (gray arrow) leads to a smaller
increase in H than δw = [0, −w2]T. The black arrow represents the optimal δw ∗q
which leads to an even smaller increase in H .
The constant term Hmin was dropped because it does not matter. Now we first
minimise H w.r.t. δw , for a given value of q . The linear constraint is incorporated
using a Lagrange multiplier as in Section 6.3, to form the Lagrangian
L = 12 δw · Mδw + λ(ˆeq · δw + wq ) . (7.57)
A necessary condition for a minimum [δw , λ] satisfying the constraint is
∂ L
∂ δw
= Mδw + λˆeq = 0 and
∂ L
∂ λ
= ˆeq · δw + wq = 0 . (7.58)
We denote the solution of these Equations by δw ∗ and λ∗. It is obtained by solving
the linear system 
M ˆeq
ˆeTq 0
 
δw ∗
λ∗

=

0
−wq

. (7.59)
If M is invertible, then the top rows of Eq. (7.59) give
δw ∗ = −M−1 ˆeq λ∗ . (7.60)
Inserting this result into ˆeTq δw ∗ + wq = 0 we find
δw ∗ = −M−1 ˆeq wq (ˆeTq M−1 ˆeq )−1and λ∗ = wq (ˆeTq M−1 ˆeq )−1 . (7.61)
We see that ˆeq · δw ∗ = −wq , so that the weight wq is eliminated. The other weights
are also changed (black arrow in Figure 7.15). The final step is to find the optimal q
by minimising
L (δw ∗, λ∗; q ) =
1
2
w 2q (ˆeTq M−1 ˆeq )−1 . (7.62)
REGULARISATION 131
The Hessian of the energy function is expensive to evaluate, and so is the inverse
of this matrix. Usually one resorts to an approximate expression for M−1 [97]. One
possibility is to set the off-diagonal elements of M to zero [98]. But in this case the
other weights are not adjusted, because ˆeq ′ · δw ∗q = 0 for q ′ 6 = q if M is diagonal. In
this case it is necessary to retrain the network after weight elimination.
The algorithm is summarised in Algorithm 5. It succeeds better than elimination
by weight decay in removing the unnecessary weights in the network [97]. Weight
decay eliminates the smallest weights. One obtains weight elimination of the small-
est weights by substituting M = I in the algorithm described above [Equation (7.62)].
Since small weights are often needed to achieve a small training error, this is usually
not a good approximation.
To illustrate the effect of pruning for neural networks with hidden layers, consider
the XOR function. Recall that it can be represented by a hidden layer with two
neurons (Figure 5.17). For random initial weights, backpropagation takes a long
time to find a valid solution, and networks with many more hidden neurons tend
to perform much better [99]. The numerical experiments in Ref. [99] indicate that
with two hidden neurons, only about 49% of the networks learned the task in 10
000 training steps of stochastic gradient descent, and networks with more neurons
in the hidden layer learn more easily (98.5 % for n = 10 hidden neurons). The
data in Ref. [99] also shows that pruned networks, initially trained with n = 10
hidden neurons, still show excellent training success (83.3 % if only n = 2 hidden
neurons remain). The networks were pruned iteratively during training, removing
the neurons with the largest average magnitude. After training, the weights and
threshold were reset to their initial values, the values before training began.
One can draw three conclusions from the numerical experiments described in
Ref. [99]. First, iterative pruning during training singles out neurons in the hid-
den layer that had initial weights and thresholds resulting in the correct decision
boundaries (lottery-ticket effect [99]). Second, the pruned network with two hidden
Algorithm 5 pruning least important weight
train the network to reach Hmin;
compute M−1 approximately;
determine q ∗ as the value of q for which L (δw ∗, λ∗; q ) is minimal;
if L (δw ∗, λ∗; q ∗)  Hmin then
adjust all weights using δw = −wq ∗ M−1 ˆeq ∗ (ˆeTq ∗ M−1 ˆeq ∗ )−1;
goto 2;
else
end;
end if
132 DEEP LEARNING
neurons has much better training success than the network that was trained with
only two hidden neurons. Third, despite pruning more than 50% of the hidden
neurons, the network with n = 4 hidden neurons performs almost as well as the one
with n = 10 hidden neurons (97.9 % training success). When training deep networks
it is common to start with many neurons in the hidden layers, and to prune up to
90% of them. This results in small trained networks that can classify efficiently and
reliably.
7.6.3 Drop out
In this regularisation scheme, some hidden neurons are ignored during training.
In each step of the training algorithm (for each mini batch, or for each individual
pattern), one disregards at random a fraction q of neurons from each hidden layer by
setting their outputs to zero, and by updating only the weights and thresholds of the
remaining neurons. For the next step in the training algorithm, the ignored neurons
at put back, and another set of hidden neurons is disregarded. Once the training
is completed, all hidden neurons are activated, but their outputs are multiplied by
1 − q , to ensure that the local fields are independent of q , on average.
This method is motivated by noting that the performance of machine-learning
algorithms is usually improved by combining the results of several learning attempts
[5 , 95], for instance by separately training networks with different layouts, and
averaging over their outputs. However, for deep networks this is computationally
very expensive. Drop out is an attempt to achieve the same goal more efficiently. The
idea is that dropout corresponds to effectively training a large number of different
networks. If there are k hidden neurons, then there are 2k different combinations of
neurons that are turned on or off. The hope is that the network learns more robust
features of the input data in this way, and that this reduces overfitting. In practice
the method is applied together with max-norm regularisation (Section 7.6.1).
7.6.4 Expanding the training set
If one trains a network with a fixed number of hidden neurons on larger training sets,
one observes that the network generalises with higher accuracy (better classification
success). The reason is that overfitting is reduced when the training set is larger.
Thus, a way of avoiding overfitting is to expand or augment the training set.
It is sometimes argued that the recent success of deep neural networks in image
recognition and object recognition is in large part due to larger training sets. One
example is ImageNet, a database of more than 107 hand-classified images, into more
than 20 000 categories [100].
REGULARISATION 133
It is expensive to augment training sets because it requires manual annotation.
An alternative is to expand a training set artificially. For digit recognition (Figure
2.1), for example, one could create more input patterns by by shifting, rotating, and
shearing the digits, or by adding noise.
7.6.5 Batch normalisation
Batch normalisation [101] can significantly speed up the training of deep networks
with backpropagation. The idea is to shift and normalise the input data for each
hidden layer, not only for the input patterns (Section 6.3). This is done separately
for each mini batch, and for each component of the inputs into the given layer
(Algorithm 6). Denoting the states of the neurons feeding into the layer in question
by V (μ)j , j = 1 , . . . , jmax, one calculates the average and variance over each mini batch
V j =
1
mB
mB∑
μ=1
V (μ)j and σ2B =
1
mB
mB∑
μ=1
(V (μ)j − V j )2 , (7.63)
subtracts the mean from the V (μ)j , and divides by
∆
σ2B + ε. The parameter ε >
0 is added to the denominator to avoid division by zero when σ2B evaluates to
zero. There are two additional parameters in Algorithm 6, γj and βj . They are are
learnt by backpropagation, just like the weights and thresholds. In general the new
parameters are allowed to differ from layer to layer, γ(`)j and β (`)j .
Batch normalisation was originally motivated by arguing that it reduces possible
covariate shifts faced by hidden neurons in layer `: as the parameters of the neurons
in the preceding layer ` − 1 change, their outputs shift thus forcing the neurons
in layer ` to adapt. However in Ref. [102] it was argued that batch normalisation
does not reduce the internal covariate shift, but that it speeds up the training by
effectively smoothing the energy landscape.
Batch normalisation helps to combat the vanishing-gradient problem because
it prevents local fields of hidden neurons to grow. This makes it possible to use
sigmoid functions in deep networks, because the distribution of inputs remains
normalised. It is sometimes argued that batch normalisation has a regularising
effect, and it has been suggested [101] that batch normalisation can replace drop out
(Section 7.6.3). It is also argued that batch normalisation may help the network to
generalise better, in particular if each mini batch contains randomly picked inputs.
Then batch normalisation corresponds to randomly transforming the inputs to each
hidden neuron (by the randomly changing means and variances). This may help to
make the learning more robust. There is no theory that proves either of these claims,
but it is an empirical fact that batch normalisation often speeds up the training.
134 DEEP LEARNING
Algorithm 6 batch normalisation
for j = 1, . . . , jmax do
calculate mean V j ← 1mB
∑mB
μ=1 V
(μ)
j
calculate variance σ2B ← 1mB
∑mB
μ=1(V
(μ)
j − V j )2
normalise ˆV (μ)j ← (V (μ)j − V j )/
∆
σ2B + ε
calculate outputs as: g (γj ˆV (μ)j + βj )
end for
7.7 Summary
Neural networks with many layers of hidden neurons are called deep networks. Error
backpropagation in deep networks suffers from the vanishing-gradient problem. It
can be reduced by using ReLU units, by initialising the weights in certain ways, and
with networks containing connections that skip layers. Yet vanishing or exploding
gradients remain a fundamental difficulty, slowing learning down in the initial phase
of training. Nevertheless, deep neural networks have become immensely successful
in object recognition, outperforming other algorithms significantly.
Since deep networks contain many free parameters, deep networks tend to over-
fit the training data, so that the networks must be regularised. Apart from cross
validation, there are other ways of regularising the problem: weight decay, drop out,
pruning, and data-set augmentation.
7.8 Further reading
Deep networks suffer from catastrophic forgetting: when we train a network on a
new input distribution that is quite different from the one the network was originally
trained on, then the network tends to forget what it learned initially. A good starting
point for further reading is Ref. [103].
The stochastic-gradient descent algorithm (with or without minibatches) samples
the input-data distribution uniformly randomly. As mentioned in Section 6.3, it may
be advantageous to sample those inputs more frequently that initially cause larger
output errors. More generally, the algorithm may use other criteria to choose certain
input data more often, with the goal to speed up learning. It may even suggest how
to augment a given training set most efficiently, by asking to specifically label certain
types of input data (active learning) [104].
Another question concerns the structure of the energy landscape for multilayer
perceptrons. It seems that local minima are perhaps less important for deep net-
works than for Hopfield networksindexHopfield network, because the energy func-
FURTHER READING 135
tions of deep networks tend to have more saddle points than minima [105], just
like Gaussian random functions [106]. A recent study explores the relation between
the multilayer layout of the perceptron network and the properties of the energy
landscape [107].
Finally, training tends to work best when all input patterns appear with roughly
the same frequency in the training set. Unlike humans, neural networks may struggle
with rare input patterns. Special techniques, however, allow networks to recognise
rare patterns, by comparison with features of the input distribution that are well
represented (few-shot learning [108]). Standard algorithms for few-shot learning
use elements of unsupervised learning (Chapter 10).
136 CONVOLUTIONAL NETWORKS
Figure 8.1: (a) Feature map, kernel, and receptive field (schematic). A feature map
(the 8 × 8 array of hidden neurons) is obtained by translating a kernel (filter), here
with a 3 × 3 receptive field over the input image, here a 10 × 10 array of pixels. (b) A
convolution layer consists of a number of feature maps, each corresponding to a
given kernel that detects a certain feature in parts of the input image. After a figure
in Ref. [5].
