**Kaynak:** [[00_Context/0_Mehlig_Machine_Learning/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

6 Stochastic gradient descent
In Chapter 5 we discussed how a hidden layer helps to classify problems that are
not linearly separable. We explained how the decision boundary in Figure 5.15 is
represented in terms of the weights and thresholds of the hidden neurons, and
introduced a training algorithm based on gradient descent. In this Section, the
training algorithm is discussed in more detail.
Figure 5.2 shows the layout of the network to be trained. There are p input
patterns x (μ) with N components each, as before. The output of the network has M
components:
O (μ) =




O (μ)1
O (μ)2
...
O (μ)M




, (6.1)
to be matched to the target vector t (μ). The network shown in Figure 5.2 computes
V (μ)j = g
Ä
b (μ)j
ä
with b (μ)j =
N∑
k =1
w j k x (μ)k − θj , (6.2a)
O (μ)i = g
Ä
B (μ)i
ä
with B (μ)i =
∑
j
Wi j V (μ)j − Θi . (6.2b)
Equation (6.2) shows that the outputs are obtained in terms of nested activation
functions. They must be differentiable (or at least piecewise differentiable). Apart
from that there is no need to specify them further at this point.
6.1 Chain rule and error backpropagation
The network in Figure 5.2 is trained by gradient-descent learning in the same way
as in Section 5.3. The weight increments are given by:
δWmn = −η
∂ H
∂ Wmn
and δwmn = −η
∂ H
∂ wmn
, (6.3)
with energy function
H =
1
2
∑
μi
Ä
t (μ)i − O (μ)i
ä2
. (6.4)
The small parameter η > 0 in Equation (6.3) is the learning rate, as in Section 5.3.
The derivatives of the energy function are evaluated with the chain rule. For the
92 STOCHASTIC GRADIENT DESCENT
weights connecting to the output layer we apply the chain rule once
∂ H
∂ Wmn
= −
∑
μi
Ä
t (μ)i − O (μ)i
ä ∂ O (μ)i
∂ Wmn
, (6.5a)
and then once more, using Equation (5.25):
∂ O (μ)i
∂ Wmn
= g ′(B (μ)i )δi m V (μ)n . (6.5b)
Here g ′(B ) = dg /dB is the derivative of the activation function with respect to the
local field B , and δi m is the Kronecker delta: δi m =1 if i = m and zero otherwise.
An important point is that the states Vj of the neurons in the hidden layer do
not depend on Wmn , because these neurons do not have incoming connections
with these weights, a consequence of the feed-forward layout of the network. In
summary we obtain for the increments of the weights connecting to the output
layer:
δWmn = −η
∂ H
∂ Wmn
= η
p∑
μ=1

t (μ)m − O (μ)m

g ′

B (μ)m

V (μ)n ≡ η
p∑
μ=1
∆(μ)m V (μ)n . (6.6a)
The quantity
∆(μ)m = (t (μ)m − O (μ)m )g ′(B (μ)m ) (6.6b)
is a weighted output error : it vanishes when O (μ)m = t (μ)m . The weights connecting to
the hidden layer are adjusted in a similar fashion, by applying the chain rule four
times:
∂ H
∂ wmn
= −
∑
μi
Ä
t (μ)i − O (μ)i
ä ∂ O (μ)i
∂ wmn
, (6.7a)
∂ O (μ)i
∂ wmn
=
∑
l
∂ O (μ)i
∂ V (μ)l
∂ V (μ)l
∂ wmn
, (6.7b)
∂ O (μ)i
∂ V (μ)l
= g ′(B (μ)i )Wi l , (6.7c)
∂ V (μ)l
∂ wmn
= g ′(b (μ)l ) δl m x (μ)n . (6.7d)
Here we used Equation (5.25). With the definition of the output error, ∆(μ)i , Equation
(6.3) yields:
δwmn = η
∑
μ
∑
i
∆(μ)i Wi m g ′

b (μ)m

x (μ)n ≡ η
∑
μ
δ(μ)m x (μ)n . (6.8)
CHAIN RULE AND ERROR BACKPROPAGATION 93
The last equality defines weighted errors,
δ(μ)m =
∑
i
∆(μ)i Wi m g ′

b (μ)m

, (6.9)
associated with the hidden layer. Note that the δ(μ)m vanish when the output errors
∆(μ)i are zero. Equation (6.9) shows that the errors are determined recursively. The
neuron states are also updated recursively, Equation (6.2), but there is an important
difference between Equations (6.9) and (6.2). The feed-forward structure of the
layered network implies that the neurons are updated from left to right. Equation
(6.9), by contrast, says that the errors are updated from right to left, from the output
layer to the hidden layer. The term backpropagation refers to this difference: the
neurons are updated forward, the errors are updated backwards.
In terms of the errors ∆(μ)m and δ(μ)m , the weight increments have the same form
for both layers:
δWmn = η
p∑
μ=1
∆(μ)m V (μ)n and δwmn = η
p∑
μ=1
δ(μ)m x (μ)n . (6.10)
The rule (6.10) is also called δ-rule [1]. The thresholds are adjusted in a similar way:
δΘm = −η
∂ H
∂ Θm
= η
p∑
μ=1

t (μ)m − O (μ)m
 
−g ′

B (μ)m

= −η
p∑
μ=1
∆(μ)m , (6.11a)
δθm = −η
∂ H
∂ θm
= η
p∑
μ=1
∑
i
∆(μ)i Wi m

−g ′

b (μ)m

= −η
p∑
μ=1
δ(μ)m . (6.11b)
So, the general form for the threshold increments is analogous to Equation (6.10)
δΘm = −η
p∑
μ=1
∆(μ)m and δθm = −η
p∑
μ=1
δ(μ)m , (6.12)
but without the state variables of the neurons (or the inputs). A way to remember
the difference between Equations (6.10) and (6.12) is to note that the formula for
the threshold increments looks like the one for the weight increments if one sets
the state values of the neurons to −1. This follows from Equation (6.2).
The backpropagation rules (6.10) and (6.12) contain sums over patterns. This
corresponds to feeding all patterns at the same time to compute the increments
of weights and thresholds (batch training). Alternatively one may choose a single
pattern, update the weights by backpropagation, and then continue to iterate these
94 STOCHASTIC GRADIENT DESCENT
training steps many times (sequential training). One iteration corresponds to feeding
a single pattern, p iterations are called one epoch (in batch training, one iteration
corresponds to one epoch). If one chooses the patterns randomly, then sequential
training results in stochastic gradient descent:
δWmn = η∆(μ)m V (μ)n and δwmn = ηδ(μ)m x (μ)n , (6.13a)
δΘm = −η∆(μ)m and δθm = −ηδ(μ)m . (6.13b)
Since the sum over pattern is absent, the steps do not necessarily decrease the energy
function. Their directions fluctuate, but the average weight increment (averaged
over all patterns) points downhill. The result is a stochastic path through parameter
space, less prone to getting stuck in local minima (but see Section 7.8).
6.2 Stochastic gradient-descent algorithm
The stochastic-gradient descent formulae derived in the previous Section were
derived for a network with one hidden layer. This Section describes the details of
the stochastic-gradient algorithm for deep networks with many hidden layers. To
this end we need to adapt our notation, as described in Figure 6.1. We label the
layers by the index `. The layer of input terminals has label ` = 0, while layer ` = L
denotes the layer of output neurons. The state variables for the neurons in layer `
are V (`)j , the weights connecting into these neurons from the left are w (`)j k , the errors
associated with layer ` are denoted by δ(`)k . In this notation, Equations (6.2) read:
V (`)j = g
Ä ∑
k
w (`)j k V (`−1)k − θ (`)j
ä
. (6.14)
Repeating the steps outlined in the previous Section, we arrive at the update for-
mulae
δw (`)mn = ηδ(`)m V (`−1)n and δθ (`)m = −ηδ(`)m , (6.15)
with errors
δ(`−1)j =
∑
i

ti − V (L )i
 ∂ V (L )i
∂ V (`−1)j
g ′(b (`−1)j ) , (6.16)
where b (`)j =
∑
k w
(`)
j k V
(`−1)
k − θ
(`)
j is the local field of V
(`)
j . It involves the matrix-vector
product between the weight matrix W(`) and the vector V (`−1). Evaluating the gradi-
ents ∂ V (L )i /∂ V (`−1)j with the chain rule, one obtains the recursion
δ(`−1)j =
∑
i
δ(`)i w (`)i j g ′(b (`−1)j ) , (6.17)
STOCHASTIC GRADIENT-DESCENT ALGORITHM 95
Figure 6.1: Illustrates the notation used in Algorithm 4.
Algorithm 4 stochastic gradient descent
initialise weights w (`)mn to random numbers, thresholds to zero, θ (`)m = 0;
for ν = 1, . . . , νmax do
choose a value of μ and apply pattern x (μ) to input layer, V (0) ← x (μ);
for ` = 1, . . . , L do
propagate forward: V (`)j ← g
Ä ∑
k w
(`)
j k V
(`−1)
k − θ
(`)
j
ä
;
end for
compute errors for output layer: δ(L )i ← g ′(b (L )i )(ti − V (L )i );
for ` = L , . . . , 2 do
propagate backward: δ(`−1)j ←
∑
i δ
(`)
i w
(`)
i j g ′(b
(`−1)
j );
end for
for ` = 1, . . . , L do
change weights and thresholds: w (`)mn ← w (`)mn + ηδ(`)m V (`−1)n and θ (`)m ← θ (`)m −
ηδ(`)m ;
end for
end for
96 STOCHASTIC GRADIENT DESCENT
with initial condition δ(L )i = (ti − V (L )i )g ′(b (L )i ). For one hidden layer, Equation (6.17)
is equivalent to (6.9). The result of the recursion (6.17) is a vector δ(`−1) with compo-
nents δ(`−1)j , obtained by component-wise multiplication of [W(`)Tδ(`)]j with g ′(b (`−1)j ).
Component-wise multiplication of vectors is sometimes called Schur or Hadamard
product [75], denoted by a b = [a1 b1, . . . , aN bN ]T. It does not have a geometric
meaning like the scalar product or the cross product of vectors, and therefore there
is little point in using it. Also, note that the vector δ(`) is multiplied by the transpose
of the weight matrix, W(`)T, rather than by the weight matrix itself. We return to this
point in Section 9.1.
The stochastic-gradient algorithm is summarised in Algorithm 4. One feeds an
input x (ν), updates the weights using (6.15), and iterates these steps until the energy
function (5.23) is deemed sufficiently small. Note that the resulting weights and
thresholds are not unique. In Figure 5.17 all weights for the Boolean XOR function
are equal to ±1. But the training algorithm (6.10) corresponds to repeatedly adding
weight increments. This may cause the weights to grow.
In practice, the stochastic gradient-descent dynamics may be too noisy. In this
case it is better to average over a small number of randomly chosen patterns. Such
a set is called mini batch, of size mB say. In stochastic gradient descent with mini
batches one replaces Equations (6.10) and (6.12) by
δWmn = η
mB∑
μ=1
∆(μ)m V (μ)n and δΘm = −η
mB∑
μ=1
∆(μ)m , (6.18)
δwmn = η
mB∑
μ=1
δ(μ)m x (μ)n and δθm = −η
mB∑
μ=1
δ(μ)m .
Sometimes the mini-batch rule is quoted with prefactors of m−1B before the sums.
The factors m−1B can just be absorbed in the learning rate, but when comparing
learning rates for different implementations one needs to check whether or not
there are factors of m−1B in front of the sums in Equation (6.18).
How does one select which inputs to include in a mini batch? This is discussed
below, in Section 6.3: at the beginning of each epoch, one randomly shuffles the
sequence of the input patterns in the training set. Then the first mini batch contains
patterns μ = 1, . . . , mB , and so forth.
Common choices for the activation functions g (b ) are the sigmoid function or
tanh:
g (b ) =
1
1 + e −b
≡ σ(b ) , (6.19a)
g (b ) = tanh (b ) . (6.19b)
PREPROCESSING THE INPUT DATA 97
Figure 6.2: Saturation of the activation functions (6.19). The derivatives g ′(b ) ≡
d
db g (b ) of both activation functions tend to zero for large values of |b |.
In both cases, the derivatives can be expressed in terms of the function itself:
d
db σ(b ) = σ(b )[1 − σ(b )] ,
d
db tanh (b ) =

1 − tanh2 (b )

. (6.20)
The second equality was used in Section 3.4. The following short-hand notation for
the derivative of the activation function g (b ) is common: g ′(b ) ≡ ddb g (b ).
As illustrated in Figure 6.2, the activation functions (6.19) saturate at large values
of |b |: their derivatives g ′(b ) tend to zero. Since the backpropagation rule (6.16)
contains factors of g ′(b ), this implies that the algorithm slows down if |b | becomes
too large. For this reason, the initial weights and thresholds should be chosen so
that the local fields b are not too large in magnitude, to avoid that g ′(b ) becomes
too small. A standard procedure is to take all weights to be initially randomly dis-
tributed, for example Gaussian with zero mean, and with a suitable variance. The
performance of networks with many hidden layers (deep networks) can be sensitive
to the initialisation of the weights (Section 7.2).
It is sometimes argued that the initial values of the thresholds are not so critical.
The idea is that they are learned more rapidly than the weights, at least initially, and
a common choice is to initialise the thresholds to zero. Section 7.2 summarises a
mean-field argument that comes to a different conclusion.
6.3 Preprocessing the input data
It can be useful to preprocess the input data, although any preprocessing may
remove information from the data. Nevertheless, it is usually advisable to shift the
data so the mean of each component over all p patterns vanishes:
〈xk 〉 =
1
p
p∑
μ=1
x (μ)k = 0 . (6.21)
98 STOCHASTIC GRADIENT DESCENT
Figure 6.3: Shift and scale the input data to achieve zero mean and unit variance.
There are several reasons for this. First, large mean values can cause large gradients
in the energy function (Exercise 6.9) that are difficult to navigate with gradient
descent. Different input-data variances in different directions have a similar effect.
Therefore one scales the inputs so that the input-data distribution has the same
variance in all directions (Figure 6.3), equal to unity for instance:
σ2k =
1
p
p∑
μ=1

x (μ)k − 〈xk 〉
2
= 1 . (6.22)
Second, to avoid that the neurons connected to the inputs saturate, their local fields
must not be too large (Section 6.2). If one initialises the weights to Gaussian random
numbers with mean zero and unit variance, large activations are quite likely if the
distribution of input patterns has a large mean or a large variance. Third, enforcing
zero input mean by shifting the input data avoids that the weights of the neurons in
the first hidden layer must decrease or increase together [76]. Equation (6.18) shows
that the components of δw m ∝ δm x into hidden neuron m are likely to have the
same signs if the input data has a large mean. This makes it difficult for the network
to learn to differentiate. In summary, it is advisable to shift and scale the input-data
distribution so that it has mean zero and unit variance, as illustrated in Figure 6.3.
The same transformation (using the mean values and scaling factors determined for
the training set) should be applied to any new data set that the network is supposed
to classify after it has been trained on the training set.
Figure 6.4 shows a distribution of inputs that falls into two distinct clusters. The
difference between the clusters is sometimes called covariate shift, here covariate is
just another term for input. Imagine feeding just inputs from one of the clusters
PREPROCESSING THE INPUT DATA 99
to the network. It will learn local properties of the decision boundary, instead of
its global features. Such global properties are efficiently learned if the network is
more frequently confronted with unfamiliar data. For sequential training (stochastic
gradient descent) this is not a problem, because the sequence of input patterns
presented to the network is random. However, if one trains with mini batches, the
mini batches should contain randomly chosen patterns in order to avoid covariate
shifts. To this end one randomly shuffles the sequence of the input patterns in the
training set, at the beginning of each epoch.
It is also recommended [76] to observe the output errors during training. If the
errors are similar for a number of subsequent learning steps, the corresponding
inputs appear familiar to the network. Larger errors correspond to unfamiliar inputs,
and Ref. [76] suggests to feed such inputs more often.
When the input data is very high dimensional, many input terminals are needed.
This usually means that one should use many neurons in the hidden layers. This
can be problematic because it increases the risk of overfitting the input data. To
avoid this as far as possible, one can reduce the dimensionality of the input data
by principal-component analysis. This method allows to project high-dimensional
data to a lower dimensional subspace (Figure 6.5).
The data shown on the left of Figure 6.5 falls approximately onto a straight line,
the principal direction u 1. We see that the coordinate orthogonal to the principal
direction is not useful in classifying the data. Consequently this coordinate can
be disregarded, reducing the dimensionality of the data set. The idea of principal
component analysis is to rotate the basis in input space so that the variance of the
data along the first axis of the new coordinate system, u 1, is maximal. One keeps
the input components corresponding to u 1, discarding those corresponding to u 2
(Figure 6.5).
To determine the maximal-variance direction, consider the data variance along
Figure 6.4: When the input data falls into clusters as shown in this Figure, one
should randomly pick data from either cluster. The decision boundary is shown as
a solid gray line. It has different slopes for the two clusters.
100 STOCHASTIC GRADIENT DESCENT
Figure 6.5: Principal-component analysis (schematic). The data set on the left can
be classified keeping only the principal component u 1 of the data. This is not true
for the data set on the right.
a unit direction vector v (|v | = 1):
σ2v = 〈(x · v )2〉 − 〈x · v 〉2 = v · Cv . (6.23)
Here
C = 〈δx δx T〉 with δx = x − 〈x 〉 (6.24)
is the data covariance matrix. The variance σ2v is maximal when v points in the
direction of the leading eigenvector of the covariance matrix C. This can be seen as
follows. The covariance matrix is symmetric, therefore its eigenvectors u 1, . . . , u N
form an orthonormal basis of input space. This allows us to express the matrix C as
C =
N∑
α=1
λαu αu Tα . (6.25)
The eigenvalues λα are non-negative. This follows from Equation (6.24) and the
eigenvalue equation Cu α = λαu α. We arrange the eigenvalues by magnitude, λ1 ≥
λ2 ≥ . . . ≥ λN ≥ 0. Using Equation (6.25) we can write for the variance
σ2v =
N∑
α=1
λα v 2α (6.26)
with vα = v · u α. We want to show that σ2v is maximal for v = ±u 1 subject to the
constraint that v is normalised to unity,
N∑
α=1
v 2α = 1 . (6.27)
OVERFITTING AND CROSS VALIDATION 101
To ensure that this constraint is satisfied as the vα are varied, one introduces a
Lagrange multiplier λ (Exercises 6.10 and 6.11). The constraint (6.27) is multiplied
with λ and added to the target function (6.26). The function to maximise reads
L =
∑
α
λα v 2α − λ

1 −
∑
α
v 2α

. (6.28)
To find the maximum of L , we determine its singular points, defined by ∂ L /∂ vβ = 0.
This yields vβ (λβ + λ) = 0. The maximum of L is obtained for λ = −λ1, where λ1 is
the maximal eigenvalue of C with eigenvector u 1. We conclude that all components
vβ must vanish, except one which must equal unity. This shows that the variance
σ2v is maximised by the principal direction.
In more than two dimensions there is commonly more than one direction along
which the data varies significantly. These k principal directions correspond to the
k eigenvectors of C with the largest eigenvalues. This can be shown recursively.
One projects the data to the subspace orthogonal to u 1 by applying the projection
matrix P1 = 1 − u 1u T1 . Then one repeats the procedure outlined above, and finds
that the data varies maximally along u 2. Upon iteration, one obtains the k principal
directions u 1, . . . , u k . Often there is a gap between the k largest eigenvalues and the
small ones (all close to zero). Then one can safely project the data onto the subspace
spanned by the k principal directions. If there is no gap then it is less clear what to
do.
The data set shown on the right of Figure 6.5 illustrates another problem. This
data set is much harder to classify if we use only the principal component alone.
In this case we lose important information by projecting the data on its principal
component.
6.4 Overfitting and cross validation
The goal of supervised learning is to generalise from a training set to new data.
Only general properties of the training set are of interest, not specific ones that
are particular to the training set in question. A neural network with more neurons
may classify the input data better, because it more accurately represents all specific
features of the given data set. But a different set of patterns from the same input
distribution can look quite different in detail, in which case the decision boundary
may not classify the new data very well (Figure 6.6). In other words, the network
may fit too fine details (for instance noise in the training set) that have no general
meaning. This problem, illustrated in Figure 6.6, is called overfitting. The tendency
to overfit is larger for networks with more neurons. In general, we should look for
a compromise, reducing the tendency of the network to overfit at the expense of
training accuracy.
102 STOCHASTIC GRADIENT DESCENT
Figure 6.6: Overfitting. Left: accurate representation of the decision boundary in
the training set, for a network with a single hidden layer with 15 neurons. Right: this
new data set differs from the first one just by a little bit of noise. The points in the
vicinity of the decision boundary are not correctly classified. Legend: Ñ corresponds
to t (μ) = 1, and É to t (μ) = −1.
One way of avoiding overfitting is to use cross validation and early stopping. One
splits the data into two sets: a training set and a validation set. The idea is that these
sets share the general features to be learnt. But although training and validation
sets are drawn from the same distribution, they may differ in details that are not of
interest.
While the network is trained on the training set, one monitors not only the energy
function for the training set, but also the energy function evaluated using the vali-
dation data. As long as the network learns general features of the input distribution,
both training and validation energies decrease. But when the network starts to learn
specific features of the training set, then the validation energy saturates, or may
start to increase. At this point the training is stopped. The scheme is illustrated in
Figure 6.7.
Often the possible state values of the output neurons are continuous while the
targets assume only discrete values. In this case one may also monitor the classifi-
cation error of the validation set. The definition of the classification error depends
on the type of the classification problem. For one single output neuron with targets
t = 0/1, the classification error is defined as
C =
1
p
p∑
μ=1
t (μ) − θH (O (μ) − 12 ) . (6.29a)
OVERFITTING AND CROSS VALIDATION 103
Figure 6.7: Progress of training and validation errors. The plot is schematic, and
the data is smoothed. Based on simulations performed by Oleksandr Balabanov.
Shown is the natural logarithm of the energy functions for the training set (solid
line) and the validation set (dashed line) as a function of the number of training
iterations. The training is stopped when the validation energy begins to increase.
If, by contrast, the targets take the values t = ±1, then the classification error reads:
C =
1
2p
p∑
μ=1
t (μ) − sgn(O (μ)) . (6.29b)
As a third example, consider a classification problem where inputs must be classified
into M mutually exclusive classes, such as the MNIST data set of hand-written digits
(Section 8.3) where M = 10. Another example is given in Table 6.1, with M = 3
classes. In both cases, one of the targets equals unity while all others equal zero. As
a consequence, the targets sum to unity:
∑M
i t
(μ)
i = 1. Now assume that the network
has sigmoid outputs, O (μ)i = σ(b (μ)i ). To classify input x (μ) from the network outputs
O (μ)i we define
y (μ)i =
®
1 if O (μ)i is the largest of all outputs i = 1, . . . , M ,
0 otherwise.
(6.30a)
Then the classification error can be computed as
C =
1
2p
p∑
μ=1
M∑
i =1
t (μ)i − y (μ)i . (6.30b)
In all cases, the classification accuracy is defined as (1 − C ) 100%, it is usually quoted
in percent.
The classification error determines the fraction of inputs that are classified
wrongly. However, it contains less information than the energy function, which is in
104 STOCHASTIC GRADIENT DESCENT
μ output O (μ) target t (μ) classification correct?
1 [0.4, 0.5, 0.4] [0,1,0] versicolor yes
2 [0.4, 0.3, 0.5] [0,0,1] setosa yes
3 [0.6, 0.5, 0.4] [1,0,0] virginica yes
Table 6.1: Illustrates the difference between energy function and classification
error. The table shows network outputs for three different inputs from the iris data
set, as well as the correct classifications. All inputs are classified correctly, but the
difference between outputs and targets is substantial.
fact a mean-squared error of the outputs. This is illustrated in Table 6.1. All three
inputs are classified correctly, but there is a substantial mean-squared error. This
indicates that the classification is not very reliable.
6.5 Adaptation of the learning rate
It is tempting to choose larger learning rates, because they enable the network to
escape more efficiently from shallow minima. But this can lead to problems when
the energy function varies rapidly, causing the training to fail. To avoid this, one
uses an adaptive learning rule, such as:
δw (t )mn = −η
∂ H
∂ wmn {wi j }={w (t )i j }
- αδw (t −1)mn . (6.31)
Here t = 1, 2, . . . , T labels the iteration number. We see that the increment at step
t depends not only on the instantaneous gradient, but also on the weight change
δw (t −1)mn of the previous iteration. We say that the dynamics becomes inertial, the
weights gain momentum. The parameter α ≥ 0 is called momentum constant. It
determines how strong the inertial effect is. We see that α = 0 corresponds to the
usual backpropagation rule. When α is positive, then how does inertia change the
learning process? Iterating Equation (6.31) yields
δw (T )mn = −η
T∑
t =0
αT −t
∂ H
∂ w (t )mn
. (6.32)
Here and in the following we use the short-hand notation
∂ H
∂ w (t )mn
≡
∂ H
∂ wmn {wi j }={w (t )i j }
.
ADAPTATION OF THE LEARNING RATE 105
Figure 6.8: (a) Momentum method (6.31). The gray arrow represents the increment
−η(∂ H /∂ wmn )|{w (t )i j }. (b) Nesterov’s accelerated gradient method (6.35). The gray
arrow represents −η(∂ H /∂ wmn )|{w (t )i j +αt −1δw (t −1)i j }. The location of w (t +1) (gray point) is
closer to the minimum (black point) than in panel (a).
Equation (6.32) shows that δw (T )mn is a weighted average of the gradients encountered
during training. Now assume that the training is stuck in a shallow minimum. Then
the gradient ∂ H /∂ w (t )mn remains roughly constant through many time steps. To
illustrate what happens, let us assume that ∂ H /∂ w (t )mn = ∂ H /∂ w (0)mn for t = 1, . . . , T .
In this case we can write
δw (T )mn ≈ −η
∂ H
∂ w (0)mn
T∑
t =0
αT −t = −η
αT +1 − 1
α − 1
∂ H
∂ w (0)mn
. (6.33)
In this situation, convergence is accelerated when α is close to unity. We also see
that it is necessary that α < 1 for the sum in Equation (6.33) to converge.
The other limit to consider is that the gradient changes rapidly from iteration
to iteration. How is the learning rule modified in this case? As an example, let us
assume that the gradient remains of the same magnitude, but that its sign oscillates,
∂ H /∂ w (t )mn = (−1)t ∂ H /∂ w (0)mn for t = 1 , . . . , T . Inserting this into Equation (6.32), we
obtain:
δw (T )mn ≈ −η
∂ H
∂ w (0)mn
T∑
t =0
(−1)t αT −t = −η
αT +1 + (−1)T
α + 1
∂ H
∂ w (0)mn
. (6.34)
Here the increments are much smaller compared with those in Equation (6.33).
This shows that introducing inertia can substantially accelerate convergence with-
out sacrificing accuracy. The disadvantage is, of course, that there is yet another
parameter to choose, namely the momentum constant α.
Nesterov’s accelerated gradient method [77] is another way of implementing
momentum. The algorithm was developed for smooth optimisation problems, but
106 STOCHASTIC GRADIENT DESCENT
it has been suggested to use the method when training deep neural networks with
gradient descent [78]:
δw (t )mn = −η
∂ H
∂ wmn {w (t )i j +αt −1δw (t −1)i j }
- αt −1δw (t −1)mn . (6.35)
A suitable sequence of coefficients αt is defined by recursion [78]. The coefficients
αt approach unity from below as t increases.
Nesterov’s accelerated-gradient method is more accurate than the simple mo-
mentum method, because the accelerated-gradient method evaluates the gradient
at an extrapolated point, not at the initial point. Figure 6.8 illustrates a situation
where Nesterov’s method converges more rapidly. Nesterov’s method is not much
more difficult to implement than Equation (6.31), and it is not much more expensive
in terms of computational cost.
There are other ways of adapting the learning rate during training, described in
Section 4.10 in Haykin’s book [2]. Finally, the learning rate need not be the same for
all neurons. If the weights of neurons in different layers change at very different
speeds (Section 7.2), one could define a layer-dependent learning rate η` that is
larger for neurons with smaller gradients.
6.6 Summary
Backpropagation is an efficient algorithm for stochastic gradient-descent on the
energy function (6.4) in weight space, because it refers only to quantities that are
local to the weight to be updated. Networks with many hidden neurons have many
free parameters (their weights and thresholds). This increases the risk of overfitting,
which reduces the power of the network to generalise. Deep networks with many
hidden layers are particularly prone to overfitting (Chapter 7). The tendency of
networks to overfit can be reduced by cross validation.
6.7 Further reading
The backpropagation algorithm is explained in Section 6.1 of Hertz, Krogh and
Palmer [1], and in Chapter 4 of Haykin’s book [2]. The paper [76] by LeCun et al.
predates deep learning, but it is still a very nice collection of recipes for making
backpropagation more efficient.
One of the first papers on error backpropagation is the one by Rumelhart et
al. [12] from 1986. The authors provide an elegant explanation and summary of
the backpropagation algorithm. They also describe results of different numerical
FURTHER READING 107
Figure 6.9: Patterns detected by the convolutional network of Ref. [12]. After Fig. 13
in Ref. [12].
experiments, and one of them introduces convolutional networks (Chapter 8) to
learn to tell the difference between the letters T and C (Figure 6.9).
108 DEEP LEARNING
Figure 7.1: Images of iris flowers. From left to right: iris setosa (copyright T. Monto),
iris versicolor (copyright R. A. Nonenmacher), and iris virginica (copyright A. West-
ermoreland). All images are copyrighted under the creative commons license.
Figure 7.2: Multi-layer perceptron for function approximation.
