**Kaynak:** [[00_Context/0_Mehlig_Machine_Learning/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

5 Perceptrons
In 1958 Rosenblatt [10] suggested to connect McCulloch-Pitts neurons into layered
feed-forward networks to process information. He referred to these networks as
perceptrons. The layout is illustrated in in Figure 5.2. The leftmost layer consists
of input terminals, drawn in black in Figure 5.2. To the right follow two layers of
McCulloch-Pitts neurons. The rightmost layer consists of output neurons. The
intermediate layer is a hidden layer. The states of its neurons are not read out.
All connections are one-way: every neuron feeds forward, only to neurons in the
layer immediately to the right. There are no connections within layers, no back
connections, no connections that skip a layer. There are N input terminals. As in
Part I, we denote the input patterns by
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
. (5.1)
The index μ = 1, . . . , p labels the different input patterns. The hidden neurons
compute
Vj = g

bj

with bj =
∑
k
w j k xk − θj , (5.2)
with weights w j k and thresholds θj . The function g (b ) is an activation function, and
its argument is called local field (Section 1.2). The output neurons of the network
74 PERCEPTRONS
Figure 5.2: Feed-forward network with one hidden layer. The input terminals are
coloured black. We use the notation of Ref. [1]: Wi j for the weights connecting to
the output neuron Oi (with threshold Θi ), and w j k for the weights connecting to the
hidden neuron Vj (with threshold θj ).
shown in Figure 5.2 perform the computation
Oi = g (Bi ) with Bi =
∑
j
Wi j Vj − Θi . (5.3)
The index i = 1 , . . . , M labels the output neurons with weights Wi j , and with thresh-
olds Θi .
A classification problem is given by a training set of input patterns x (μ) and the
corresponding target vectors
t (μ) =




t (μ)1
t (μ)2
...
t (μ)M




. (5.4)
The idea is to choose all weights and thresholds so that the network produces the
desired output:
O (μ)i = t (μ)i for all i and μ . (5.5)
In the Hopfield networks described in Part I, the weights were assigned using Hebb’s
rule (2.26). Perceptrons, by contrast, are trained by iteratively updating their weights
and thresholds until Equation (5.5) is satisfied. This is achieved by repeatedly adding
small multiples of Hebb’s rule to the weights (Section 5.2). An alternative approach
is to define an energy function, a function of the weights of the network, that has
a global minimum when Equation (5.5) is satisfied. The network is trained by
taking small steps in weight space that reduce the energy function (gradient descent,
Section 5.3).
A CLASSIFICATION PROBLEM 75
Figure 5.3: Classification problem with two-dimensional real-valued inputs and tar-
gets equal to ±1. The gray solid line is the decision boundary. Legend: Ñ corresponds
to t (μ) = 1, and É to t (μ) = −1.
5.1 A classification problem
To illustrate how perceptrons can solve classification problems, consider the simple
example shown in Figure 5.3. There are ten patterns, each has two real-valued
components:
x (μ) =

x (μ)1
x (μ)2

. (5.6)
In Figure 5.3 the patterns are drawn as points in the x1-x2 plane, the input plane.
There are two classes of patterns, with targets ±1:
t (μ) = 1 for Ñ and t (μ) = −1 for É . (5.7)
A single neuron suffices to classify these patterns, a binary threshold unit with
activation function g (b ) = sgn(b ), consistent with the possible target values. Since
there is only one neuron, we can arrange the weights into a weight vector
w =

w1
w2

. (5.8)
The network performs the computation
O = sgn(w1 x1 + w2 x2 − θ ) = sgn(w · x − θ ) . (5.9)
Here w · x = w1 x1 + w2 x2 is the scalar product between the vectors w and x (Chap-
ter 2).
This example allows us to find a geometrical interpretation of the classification
problem. We see in Figure 5.3 that the patterns fall into two clusters: É to the left
76 PERCEPTRONS
Figure 5.4: The perceptron classifies the patterns correctly for the weight vector
w shown, orthogonal to the decision boundary (gray solid line). Legend: Ñ corre-
sponds to t (μ) = 1, and É to t (μ) = −1.
and Ñ to the right. We can classify the patterns by drawing a line that separates the
two clusters, so that everything to the right of the line has t = +1, while the patterns
to the left of the line have t = −1. This line is called the decision boundary. To find
the geometrical significance of Equation (5.9), let us put the threshold to zero for a
moment, so that
O = sgn(w · x ) . (5.10)
Then the classification problem takes the form
sgn

w · x (μ)

= t (μ) . (5.11)
To evaluate the scalar product, we write the vectors as
w = |w |

cos α
sin α

and x = |x |

cos β
sin β

. (5.12)
Here |w | =
∆
w 21 + w 22 denotes the norm of the vector w , and α and β are the angles
of the vectors with the x1-axis. Then w · x = |w ||x | cos(α − β ) = |w ||x | cos ϕ, where ϕ
is the angle between the two vectors. When ϕ is between −π/2 and π/2, the scalar
product is positive, otherwise negative. As a consequence, the network classifies
the patterns in Figure 5.3 correctly if the weight vector is orthogonal to the decision
boundary, as shown in Figure 5.4.
What is the role of the threshold θ ? Equation (5.9) implies that the decision
boundary is parameterised by w · x = θ , or
x2 = −(w1/w2) x1 + θ /w2 . (5.13)
A CLASSIFICATION PROBLEM 77
Figure 5.5: Decision boundaries without and with threshold.
Therefore the threshold determines the intersection of the decision boundary with
the x2-axis (equal to θ /w2). This is illustrated in Figure 5.5.
The decision boundary – the straight line orthogonal to w – should divide inputs
with positive and negative targets. If such a line can be found, then the problem
can be solved with a single neuron. We say that the problem is linearly separable.
Conversely, if no such line exists, the problem not linearly separable. This can occur
only when p > N . Figure 5.6 shows two problems. The left one is linearly separable,
the right one is not.
Other examples are Boolean functions. A Boolean function takes N binary inputs
and has one binary output. The Boolean AND function (two inputs) is illustrated
in Figure 5.7. The value table of the function is shown on the left. The graphical
representation is shown on the right of the Figure (É corresponds to t = −1 and Ñ
to t = +1). Also shown is the decision boundary of a binary threshold unit and its
weight vector w . It is important to note that the decision boundary is not unique,
neither are the weight vector and threshold value that solve the problem. The norm
of the weight vector, in particular, is arbitrary. Figure 5.8 illustrates that the Boolean
Figure 5.6: Linearly separable and non-separable data in two-dimensional input
space.
78 PERCEPTRONS
x1 x2 t
0 0 -1
0 1 -1
1 0 -1
1 1 +1
Figure 5.7: Boolean AND function: value table (left) and geometrical representation
in the input plane (right). Legend: Ñ corresponds to t (μ) = 1, and É to t (μ) = −1.
XOR function is not linearly separable [11]. There are 16 different Boolean functions
of two variables. Only two are not linearly separable (Exercise 5.2), XOR (Figure 5.8)
and XNOR.
Up to now we discussed only one single neuron. If the classification problem
requires several output neurons, each has its own weight vector w i and threshold
θi . We can group the weight vectors into a weight matrix W as in Part I, so that the
row vectors w Ti are the rows of the weight matrix W.
5.2 Iterative learning algorithm
In the previous Section we determined the weights and threshold for the Boolean
AND function by inspection (Figure 5.7). Now we discuss an algorithm that finds the
weights iteratively. It is illustrated in Figure 5.9. In panel (a), the pattern x (8) (t (8) = 1)
x1 x2 t
0 0 -1
0 1 +1
1 0 +1
1 1 -1
Figure 5.8: The Boolean XOR function is not linearly separable. Legend: Ñ corre-
sponds to t (μ) = 1, and É to t (μ) = −1.
GRADIENT DESCENT FOR LINEAR UNITS 79
is on the wrong side of the decision boundary. In order to correct this error, one
turns the decision boundary anti-clockwise. To this end, one adds a small multiple
of the pattern vector x (8) to the weight vector
w ′ = w + δw with δw = ηx (8) . (5.14)
The parameter η > 0 is called the learning rate. It must be small, so that the decision
boundary is not rotated too far. The result is shown in panel (b). Panel (c) shows
another case, where pattern x (4) (t (4) = −1) is on the wrong side of the decision
boundary. In order to turn the decision boundary in the right way, anti-clockwise,
one subtracts a small multiple of x (4):
w ′ = w + δw with δw = −ηx (4) . (5.15)
These two learning rules combine to the learning rule of Rosenblatt [10]:
w ′ = w + δw (μ) with δw (μ) = ηt (μ)x (μ) . (5.16)
For more than one neuron, the rule reads
w ′i j = wi j + δw (μ)i j with δw (μ)i j = ηt (μ)i x (μ)j . (5.17)
This rule is reminiscent of Hebb’s rule (2.9), except that here inputs and outputs are
associated with distinct units. Therefore we have t (μ)i x (μ)j instead of x (μ)i x (μ)j . One
applies (5.17) iteratively for a sequence of randomly chosen patterns μ, until the
problem is solved. This corresponds to adding a little bit of Hebb’s rule in each
iteration. To ensure that the algorithm stops when the problem is solved, one can
use the learning rule [1]
δw (μ)i j = η(t (μ)i − O (μ)i )x (μ)j . (5.18)
5.3 Gradient descent for linear units
In this Section, the learning algorithm (5.18) is derived in a different way, by min-
imising an energy function using gradient descent. This requires differentiation,
therefore we must choose a differentiable activation function. The simplest choice
is a linear activation function, g (b ) = b . We set θ = 0, so that the network computes:
O (μ)i =
∑
k
wi k x (μ)k . (5.19)
80 PERCEPTRONS
Figure 5.9: Illustration of the learning algorithm. In panel (a) the t = +1 pattern
x (8) is on the wrong side of the decision boundary (solid red line). To correct the
error the weight must be rotated anti-clockwise [panel (b)]. In panel (c) the t = −1
pattern x (4) is on the wrong side of the decision boundary. To correct the error the
weight must be rotated anti-clockwise [panel (d)].
GRADIENT DESCENT FOR LINEAR UNITS 81
A neuron with a linear activation function is called a linear unit. The outputs O (μ)i
assume continuous values, but not necessarily the targets t (μ)i . For linear units, the
classification problem
O (μ)i = t (μ)i for i = 1, . . . , N and μ = 1, . . . , p (5.20)
has the formal solution
wi k =
1
N
∑
μν
t (μ)i
Ä
Q−1
ä
μν x
(ν)
k . (5.21)
This can be verified by inserting Equation (5.21) into (5.19). Here Q is the overlap
matrix with elements
Qμν = 1N x (μ) · x (ν) (5.22)
(Section 3.6). For the solution (5.21) to exist, the matrix Q must be invertible. As
mentioned in Section 3.6, this requires that p ≤ N , because otherwise the input-
pattern vectors are linearly dependent, and thus also the columns (and rows) of Q.
If the matrix Q has linearly dependent columns or rows, it cannot be inverted.
Let us assume that the input patterns are linearly independent, so that the solu-
tion (5.21) exists. In this case we can find the solution iteratively. To this end one
defines the energy function
H =
1
2
∑
i μ
Ä
t (μ)i − O (μ)i
ä2
. (5.23)
This function is non-negative, and it vanishes when all ouputs equal the correspond-
ing targets, for all patterns.
The energy function (5.23) is regarded as a function of the weights wi j , unlike the
energy function in Part I which is a function of the state-variables of the neurons.
The goal is now to find weights that minimise H . If the input patterns are linearly
independent, H vanishes at the global miminum, corresponding to the desired
solution of the problem (Exercise 5.1). Let us use gradient descent to minimise H ,
w ′mn = wmn + δwmn with weight increments δwmn = −η
∂ H
∂ wmn
. (5.24)
with learning rate η > 0. This is analogous to Equation (4.19), apart from the minus
sign. In Section 4.4 the goal was to maximise the target function, here we want
to minimise H by taking many downhill steps in search of the global minimum.
The derivatives in Equation (5.24) are evaluated with the chain rule, together with
Equation (4.22) which takes the form
∂ wi j
∂ wmn
= δi m δj n (5.25)
82 PERCEPTRONS
for asymmetric weights. This yields the weight increments
δwmn = η
∑
μ

t (μ)m − O (μ)m

x (μ)n . (5.26)
This learning rule is very similar to Equation (5.18). One difference is that Equation
(5.26) contains a sum over all patterns. It is important to keep in mind also that
the activations functions are different, while Equation (5.18) was derived for g (b ) =
sgn(b ), the learning rule (5.26) was derived for g (b ) = b . An advantage of the
rule (5.26) is that it is derived from an energy function. This helps to analyse the
convergence of the algorithm, as we have seen in Chapter 2.
Linear units [Equation (5.19)] are special. The Boolean AND problem (Figure 5.7)
does not admit the solution (5.21), even though the problem is linearly separable.
Since the pattern vectors x (μ) are linearly dependent, the solution (5.21) does not
exist. Shifting the patterns or introducing a threshold does not change this fact.
In Section 5.5 we discuss how to solve problems that are not linearly separable
using a hidden layer of neurons with non-linear activation functions. Note that
introducing hidden layers with linear units does not help, because the resulting
input-output mapping is still linear if all neurons have linear activation functions,
so that only problems with p ≤ N can be solved. This is the main reason for using
hidden layers with non-linear activation functions.
There are four points to keep in mind. First, if the the patterns are linearly
independent, then we can use gradient descent to determine suitable weights (and
thresholds) of linear units. Second, in general hidden layers with non-linear units are
required, because a single neuron with a continuous non-linear and monotonous
activation function can only solve problems with linearly independent patterns
(Exercise 5.11). Third, for gradient descent for non-linear units we must require
that the activation function g (b ) is differentiable, or at least piecewise differentiable.
Fourth, in this case we calculate the gradients using the chain rule, resulting in
factors of derivatives ddb g (b ). This is the origin of the vanishing-gradient problem
(Chapter 7).
5.4 Classification capacity
In Chapter 3 we analysed the storage capacity of Hopfield networks. The analo-
gous question for the classification problem described in Section 5.1 is: how many
patterns can a single neuron with activation function g (b ) = sgn(b ) classify? As in
the case of Hopfield networks, one can find a general answer for random binary
classification problems.
CLASSIFICATION CAPACITY 83
Figure 5.10: Left: Five points in general position in the plane. Right: these points
are not in general position because three points lie on a straight line.
Figure 5.11: Probability (5.29) of separability as a function of α = p /N for three
different values of the dimension N of input space. Note the pronounced threshold
near α = 2, for large values of m.
Consider p points with coordinate vectors x (μ) in N -dimensional input space,
and assign random targets:
t (μ) =
®
+1 with probability 12 ,
−1 with probability 12 .
(5.27)
This random classification problem is homogeneously linearly separable if we can
find an N -dimensional weight vector w , so that w ·x = 0 is a valid decision boundary
that goes through the origin:
w · x (μ) > 0 if t (μ) = 1 and w · x (μ) < 0 if t (μ) = −1 . (5.28)
So homogeneously linearly separable problems are binary classification problems
that are linearly separable by a hyperplane that contains the origin. Problems with
this property can be solved by a binary threshold unit with threshold θ = 0.
Now assume that the points (including the origin) are in general position (Fig-
ure 5.10). In this case Cover’s theorem [72] gives an expression for the probability
84 PERCEPTRONS
Figure 5.12: The XOR problem can be solved by embedding into a three-dimensional
input space.
that the random binary classification problem of p patterns in dimension N is
homogeneously linearly separable:
P (p , N ) =
® 1
2
p −1 ∑N −1
k =0
p −1
k

for p > N ,
1 otherwise .
(5.29)
Here
l
k

= l !(l −k )!k ! are the binomial coefficients, for l ≥ k ≥ 0. Equation (5.29) is proven
by recursion, starting from a set of p − 1 points in general position. Assume that the
number C (p − 1 , N ) of homogeneously linearly separable classification problems
given these points is known. After adding one more point, one can compute the
C (p , N ) in terms of C (p − 1, N ), and recursion yields Equation (5.29). Figure 5.11
shows this result as a function of α = p /N for different values of N . For p ≤ N , any
random classification problem is homogeneously linearly separable. In this case
the pattern vectors are linearly independent, so that the problem can also be solved
by a linear unit (Section 5.3). But a neuron with activation function sgn(b ) can
classify problems with more than N patterns. In the limit of N → ∞, the function
P (αN , N ) approaches a step function θH (2 − α) (Exercise 5.12). In this limit the
maximal classification capacity is therefore αmax = 2.
What is the expected classification capacity for finite values of N ? To answer this
question, consider a random sequence of patterns x (1), x (2), . . . and targets t (1), t (2), . . .
and ask [72]: what is the distribution of the largest integer so that the problem
x (1), x (2), . . . , x (n) is separable in dimension N , but x (1), x (2), . . . , x (n), x (n+1) is not? P (n, N )
is the probability that n patterns are linearly separable in N -dimensional input
space. We can write P (n + 1, N ) = q (n + 1|n)P (n, N ) where q (n + 1|n) is the con-
MULTI-LAYER PERCEPTRONS 85
ditional probability that n + 1 patterns are linearly separable if the n patterns are.
Then the probability that n + 1 patterns are not separable (but n patterns are) reads
[1 − q (n + 1|n)]P (n, N ) = P (n, N ) − P (n + 1 , N ). We can interpret the right-hand side
of this Equation as a distribution pn of the random variable n, the maximal number
of separable patterns in dimension N :
pn = P (n, N ) − P (n + 1, N ) =
Å 1
2
ãn  n − 1
N − 1

for n = 0, 1, 2, . . . .
It follows that the expected maximal number of separable patterns is
〈n〉 =
∞∑
n=0
npn = 2N . (5.30)
So the expected classification capacity is twice the input dimension:
〈αmax〉 = 2 . (5.31)
This quantifies the notion that it is easier to separate patterns in higher-dimensional
input space. As an illustration, consider the XOR problem which is not linearly
separable in two-dimensional input space. The problem becomes separable when
we embed the points in three-dimensional space, for instance by assigning x3 = 0 to
the t = +1 patterns and x3 = 1 to the t = −1 patterns (Figure 5.12).
5.5 Multi-layer perceptrons
In Sections 5.1 and 5.2 we discussed how to solve linearly separable problems [Figure
5.13(a)]. The aim of this Section is to show that non-separable problems like the one
in Figure 5.13(b) can be solved by a perceptron with one hidden layer. A network
that does the trick for the classification problem in Figure 5.13(b) is depicted in
Figure 5.14. As in the previous Section, all neurons have the signum function as
activation function, with possible outputs ±1:
V (μ)j = sgn
Ä
b (μ)j
ä
with b (μ)j =
∑
k
w j k x (μ)k − θj ,
O (μ)1 = sgn
Ä
B (μ)1
ä
with B (μ)1 =
∑
j
W1 j V (μ)j − Θ1 .
(5.32)
Each of the three neurons in the hidden layer has its own decision boundary. The
idea is to choose the weights w j k and the thresholds θj in such a way that the three
decision boundaries partition the input plane into distinct regions, so that each
region contains either only t = −1 patterns or t = +1 patterns [3].
86 PERCEPTRONS
Figure 5.13: (a) Linearly separable problem. (b) Problems that are not linearly sepa-
rable can be solved by a piecewise linear decision boundary. Legend: Ñ corresponds
to t (μ) = 1, and É to t (μ) = −1.
How this construction works is shown in Figure 5.15. The left part of the Figure
shows the three decision boundaries with their weight vectors, and how they divide
the input plane into different regions which contain either only É or only Ñ. Each
region bears a three-digit code made out of the symbols + and −. The codes are
determined by the states of the hidden neurons. A + sign in the j -th entry of the
code means that Vj = +1. So the region in question is on the weight-vector side of
the decision boundary j . A − sign, by contrast, corresponds to Vj = −1. In this case
the region is on the other side of the decision boundary, the one opposite the weight
vector. The value table shows the targets associated with each region, together with
Figure 5.14: Hidden-layer perceptron to solve the problem shown in Figure 5.13
(b).
MULTI-LAYER PERCEPTRONS 87
V1 V2 V3 target
− − − −1
- − − -
− + − −1
− − + −1
- + − +1
- − + +1
− + + +1
- + + +1
Figure 5.15: Left: decision boundaries [Figure 5.13(b)], regions, and the correspond-
ing binary codes determined by the states of the hidden neurons. Legend: Ñ cor-
responds to t (μ) = 1, and É to t (μ) = −1. Right: encoding of the regions and corre-
sponding targets. The region + − − does not exist.
the code of the region.
The weights W1 j and the threshold Θj of the output neuron are chosen so that
it associates the correct target value with each region. A graphical representation
of the output problem is shown in Figure 5.16. This problem is linearly separable
(Exercise 5.3). The following function computes the correct output for each region:
O (μ)1 = sgn
Ä
V (μ)1 + V (μ)2 + V (μ)3
ä
. (5.33)
This solves the binary classification problem described in Figure 5.15, but note that
the solution is not unique. There is a range of different weights and thresholds that
solve the problem, and there are other solutions based on different network layouts.
Nevertheless, the solution illustrates how non-linearly separable classification prob-
lems can be solved by adding a hidden layer to the network layout. The neurons in
the hidden layer define segments of a piecewise linear decision boundary. More
hidden neurons are needed if the decision boundary is very wiggly.
Figure 5.17 shows another example, how to solve the Boolean XOR problem with a
perceptron that has two neurons in a hidden layer, with activation functions sgn(b ),
thresholds 12 and 32 , and all weights equal to unity. The output neuron has weights
+1 and −1 and unit threshold:
O1 = sgn(V1 − V2 − 1) . (5.34)
Minsky and Papert [11] proved in 1969 that all Boolean functions can be represented
by multilayer perceptrons, but that at least one hidden neuron must be connected
88 PERCEPTRONS
Figure 5.16: Graphical representation of the output problem for the classification
problem shown in Figure 5.15.
V1 V2 t
− − -1
- − +1
− + -
- + -1
Figure 5.17: Boolean XOR function: geometrical representation, network layout,
and value table for the output neuron. The region − + does not exist. All neurons
assume two possible states, +1 or −1. Legend for the geometrical representation: Ñ
corresponds to t (μ) = 1, and É to t (μ) = −1.
to all input terminals. This means that not all neurons in the network are locally
connected (the neurons have only a few incoming weights). Since fully connected
networks are much harder to train than locally connected ones, this was considered
a shortcoming at the time. Now, almost 50 years later, the perspective has changed.
Convolutional networks (Chapter 8) have only local connections to the inputs and
can be trained to recognise objects in images with high accuracy.
In summary, perceptrons are trained on a training set [x (μ), t (μ)], μ = 1 , . . . , p ,
by moving the decision boundaries into the correct positions. This is achieved
by repeatedly applying Hebb’s rule to adjust all weights. A related learning rule
is obtained by gradient-descent on the energy function (5.23). Also, we have not
discussed how to update the thresholds yet, but it is clear that they too can be
SUMMARY 89
Figure 5.18: (a) Result of training the network on a training set. Legend: Ñ cor-
responds to t (μ) = 1, and É to t (μ) = −1. (b) Classification of a validation set. One
pattern is wrongly classified.
updated with gradient-descent learning.
Once all decision boundaries are in the right places we must ask: what happens
if we apply the trained network to a new data set? Does it classify the new inputs
correctly? In other words, can the network generalise? An example is shown in
Figure 5.18. Panel (a) shows the result of training the network on a training set.
The decision boundary separates t = −1 patterns from t = +1 patterns, so that the
network classifies all patterns in the training set correctly. In panel (b) the trained
network is applied to patterns in a validation set. We see that most patterns are
correctly classified, save for one error. This means that the energy function (5.23)
is not exactly zero for the validation set. Nevertheless, the network does quite a
good job. Usually it is not a good idea to try to precisely classify all patterns near the
decision boundary, because real-world data sets are subject to noise (Section 6.4).
5.6 Summary
Perceptrons are layered feed-forward networks that can learn to classify data in
a training set [x (μ), t (μ)]. For each input pattern x (μ), the network finds the correct
target vector t (μ). We discussed the learning algorithm for a simple example: real-
valued patterns with just two components, and one binary target. This allowed us to
represent the classification problem graphically, and to see how linearly separable
classification problems can be solved by a simple perceptron. There are three
different ways of understanding how the perceptron learns. First, geometrically, the
perceptron learn by moving decision boundaries into the correct locations. Second,
90 PERCEPTRONS
this can be achieved by repeatedly adding a little bit of Hebb’s rule. Third, these
rules are similar to the learning rule derived from gradient descent on the energy
function (5.23). Cover’s theorem quantifies the capacity of a simple perceptron to
separate patterns with binary targets. Finally we discussed how to solve non-linearly
separable classification problems with perceptrons with a hidden layer.
5.7 Further reading
As mentioned in the Introduction, a short account of the history of perceptron
research is the review by Kanal [23]. The remarkable book by Minsky and Papert
explains the geometry of perceptron learning in great depth, and in a very elegant
fashion. For a proof of Cover’s theorem see Ref. [73].
