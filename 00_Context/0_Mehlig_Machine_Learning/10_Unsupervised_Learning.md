**Kaynak:** [[00_Context/0_Mehlig_Machine_Learning/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

10 Unsupervised learning
10.1 Oja’s rule
A simple example for an unsupervised-learning algorithm uses a single McCulloch-
Pitts neuron with linear activation function (Figure 10.2). The neuron computes1
y = w · x with weight vector w = [w1, . . . , wN ]T. Now consider a distribution Pdata(x )
of input patterns x = [x1, . . . , xN ]T with continuous-valued components xi . Patterns
are drawn from this distribution at random and fed one after another to the net. For
each pattern x , the weights w are adjusted as follows:
w ′ = w + δw with δw = ηy x . (10.1)
This rule is also called Hebbian unsupervised learning rule [1], because it is reminis-
cent of Hebb’s rule (Chapter 2). As usual, η is the learning rate.
1In this Chapter we follow a common convention [1] and denote the output of unsupervised-
learning algorithms by y .
172 UNSUPERVISED LEARNING
What can this rule learn about the input distribution Pdata(x )? Since we keep
adding multiples of the pattern vectors x to the weights (just as described in Section
5.2), the magnitude of the output |y | becomes the larger the more often the input
pattern occurs in the distribution Pdata(x ). So the most familiar pattern produces
the largest output. In this way the network can detect how familiar certain input
patterns are.
A problem is that the components of the weight vector continue to grow as we
keep adding. This means that the simple Hebbian learning rule (10.1) does not
converge to a steady state. To analyse learning outcomes we want the learning
to converge. This is achieved by adding a weight-decay term (Section 7.6.1) with
coefficient proportional to y 2 to Equation (10.1):
δw = ηy (x − y w ) . (10.2)
Making use of y = w · x = w Tx = x Tw , Equation (10.2) can be rewritten in the
following form:
δw = η

x x Tw − [w · (x x T)w ]w . (10.3)
This learning rule is called Oja’s rule [155]. Equation (10.3) ensures that w remains
normalised. To see why, consider an analogy: a vector q that obeys the differential
equation
d
dt q = A(t )q . (10.4)
For a general matrix A(t ), the norm |q | may increase or decrease, depending on the
singular values of A. We can ensure that q remains normalised by adding a term to
Equation (10.4):
d
dt w = A(t )w − [w · A(t )w ]w . (10.5)
The vector w turns in the same way as q , and if we set |w | = 1 initially, then w
remains normalised, w = q /|q | (Exercise 10.1). Equation (10.5) describes the dy-
namics of the normalised orientation vector of a small rod in turbulence [156], where
A(t ) is the matrix of fluid-velocity gradients.
Returning to Equation (10.2), we note that the dynamics of (10.2) and (10.5) is the
same in the limit of small learning rates η. Therefore we conclude that w remains
normalised under (10.3) when the learning rate is small enough. Oja’s algorithm is
summarised in Algorithm 8. One draws a pattern x from the distribution Pdata(x )
of input patterns, applies it to the network, and updates the weights as prescribed
in Equation (10.2). This is repeated many times. In the following we denote the
average over T input patterns as 〈· · · 〉 = 1T
∑T
t =1 · · · .
While the rule (10.1) does not have a steady state, Oja’s rule (10.3) does. For
zero-mean input data, its steady state w ∗ corresponds to the principal component
OJA’S RULE 173
Algorithm 8 Oja’s rule
initialise weights randomly;
for t = 1, . . . , T do
draw an input pattern x from Pdata(x );
adjust all weights using δw = ηy (x − y w );
end for
Figure 10.3: Oja’s rule finds the principal component of zero-mean data (schematic).
The initial weight vector is w 0, the steady-state weight vector is w ∗.
of the input data, as illustrated in Figure 10.3. This can be seen by analysing the
steady-state condition
0 = 〈δw 〉w ∗ . (10.6)
Here 〈· · · 〉w ∗ is an average over iterations of the learning rule (10.3) at fixed w ∗, the
steady state. Equation (10.6) says that the weight increments δw must average to
zero in the steady state, to ensure that the weights neither grow nor decrease in the
long run. Equation (10.6) is a condition upon w ∗. Using the learning rule (10.3), it
can be written as:
0 = C′w ∗ − (w ∗ · C′w ∗)w ∗ with C′ = 〈x x T〉 . (10.7)
Equation (10.7) shows that w ∗ must be an eigenvector of the matrix2 C′, normalised
to unity, |w ∗| = 1. But which one?
We denote the eigenvectors and eigenvalues of C′ by u α and λα, and investigate
the stability of w ∗ = u α for different values of α by linear stability analysis, just as in
Section 9.1. To this end, consider a small perturbation "t away from w ∗ = u α:
w t = u α + "t . (10.8)
A difference to the analysis in Section 9.1 is that the dynamics is discrete in time.
The perturbation at the next time step, "t +1, is defined by w t +1 = u α +"t +1. A second
2For zero-mean input data, C′ equals the data-covariance matrix, Equation (6.24).
174 UNSUPERVISED LEARNING
difference is that the sequence of weight increments depends on the randomly
chosen input patterns. In order to determine the linear stability one should iterate
and then linearise the dynamics (10.3), to see whether "t grows or not. However,
in the limit of small learning rate it is sufficient to average over x before iterating
(Exercise 10.4). To linear order in "t one finds:
"t +1 ≈ "t + η
î
C′"t − 2u α(u α · C′"t ) − (u α · Cu α)"t
ó
= M(α)"t , (10.9)
where the last equality sign defines the matrix M(α). The steady state w ∗ = u α is
linearly stable if all eigenvalues of M(α) have real parts with magnitudes smaller than
unity.3 To determine the eigenvalues of M(α), we use the fact that M(α) has the same
eigenvectors as C′. Since C′ is symmetric, these eigenvectors form an orthonormal
basis, u α · u β = δαβ . As a consequence, the eigenvalues of M(α) are simply given by
Λ(α)β = u β · M(α)u β = 1 + η[(λβ − λα) − 2λαδαβ ] . (10.10)
Since C′ is a positive-semidefinite matrix (its eigenvalues λα cannot be negative),
Equation (10.10) shows that there are eigenvalues with |Λ(α)β | > 1 unless w ∗ is the
leading eigenvector of C′, the one corresponding to its largest eigenvalue. This
means that Algorithm 8 finds the principal component of zero-mean data, and it
also implies that the algorithm maximises 〈y 2〉 over all w with |w | = 1, see Section 6.3.
Note that 〈y 〉 = 0 for zero-mean input data.
Now consider inputs with non-zero mean. In this case Algorithm 8 still finds the
maximal-eigenvalue direction of C′. But for inputs with non-zero mean, this direc-
tion is different from the principal direction. Figure 10.4 illustrates this difference.
The Figure shows three data points in a two-dimensional input plane. The elements
of C′ = 〈x x T〉 are
C′ =
1
3

2 1
1 2

, (10.11)
with eigenvalues and eigenvectors
λ1 = 1 , u 1 =
1
p
2

1
1

and λ2 = 13 , u 2 =
1
p
2

−1
1

. (10.12)
So the the maximal-eigenvalue direction of C′ is u 1. To compute the principal
direction of the data we must determine the data-covariance matrix C, Equation
(6.24). Its maximal-eigenvalue direction is u 2, and this is the principal component
of the data shown in Figure 10.4.
3For time-continuous dynamics (Section 9.1), linear stability is ensured when all eigenvalues
have negative real parts, for discrete dynamics their magnitudes must all be smaller than unity [85].
COMPETITIVE LEARNING 175
Figure 10.4: Input data with non-zero mean. Algorithm 8 converges to u 1, but the
principal direction is u 2.
Oja’s rule can be generalised to determine M principal components of zero-mean
input data using M output neurons that compute yi = w i · x for i = 1, . . . , M :
δwi j = ηyi
Ä
x j −
M∑
k =1
yk wk j
ä
(10.13)
This is called Oja’s M-rule [1]. For M = 1, Equation (10.13) simplifies to Oja’s rule.
10.2 Competitive learning
Oja’s M -rule (10.13) results in neurons that are activated simultaneously. Any input
usually causes several outputs to assume non-zero values yi 6 = 0 at the same time.
In Sections 4.5 and 7.1 we encountered the notion of a winning neuron where the
weights are trained in such a way that each pattern activates only a single neuron,
and different patterns activate different winning neurons. This allows to represent
a distribution of input patterns with a neural network.
Unsupervised learning algorithms can categorise or cluster input data in this
way: similar inputs are classified to belong to the same category, and activate the
same winning neuron. This is called competitive learning [1]. Figure 10.5(a) shows
an example, input patterns on the unit circle that cluster into two distinct clusters.
The idea is to find weight vectors w i that point into the direction of the clusters. To
this end we take M linear output units i with weight vectors w i , i = 1 , . . . , M . We
feed a pattern x from the distribution Pdata(x ) and define the winning neuron i0 as
the one that has minimal angle between its weight and the pattern vector x . This is
illustrated in Figure 10.5(b), where i0 = 2. Then only this weight vector is updated
by adding a little bit of the difference x − w i0 between the pattern vector and the
176 UNSUPERVISED LEARNING
Figure 10.5: Detection of clusters by unsupervised learning. (a) Distribution of
input patterns on the unit circle and two unit-length weight vectors initialised to
random angles. The winning neuron for pattern x is the one with weight vector w 2.
(b) Updating w ′2 = w 2 + δw moves this weight vector closer to x .
weight of the winning neuron. The other weights remain unchanged:
δw i =
®
η(x − w i ) for i = i0(x , w 1 . . . w M ) ,
0 otherwise .
(10.14)
In other words, only the winning neuron is updated, w ′i0 = w i0 + δw i0 . Equation
(10.14) is called competitive-learning rule.
The learning rule (10.14) has the following geometrical interpretation: the weight
of the winning neuron is drawn towards the pattern x . Upon iterating (10.14), the
weight vectors are drawn to clusters of inputs. If the input patterns are normalised as
in Figure 10.5, the weights end up normalised on average, even though |w i0 | = 1 does
not imply that |w i0 + δw i0 | = 1, in general. The algorithm for competitive learning
is summarised in Algorithm 9. When weight and input vectors are normalised,
then the winning neuron i0 is the one with the largest scalar product w i · x . For
linear output units yi = w i · x (Figure 10.2) this is simply the unit with the largest
output. Equivalently, the winning neuron is the one with the smallest distance
|w i − x |. Output units with w i that are very far away from any pattern may never be
Algorithm 9 competitive learning (Figure 10.5)
initialise weights to vectors with random angles and norm |w i | = 1;
for t = 1, . . . , T do
draw a pattern x from Pdata(x );
find the winning neuron i0 (smallest angle between w i0 and x );
adjust only the weight of the winning neuron δw i0 = η(x − w i0 );
end for
SELF-ORGANISING MAPS 177
Figure 10.6: Principal-component analysis (Section 6.3) finds the linear principal
direction (dashed line) of the data (Ñ). A self-organising map can instead find the
principal manifold (solid line), a non-linear approximation to the data.
updated (dead units). There are several strategies to avoid this [1]. One possibility is
to initialise the weights to directions found in the inputs. Also, how to choose the
number of weight vectors is a matter of trial and error. Clearly it is better to start
with too many rather than too few.
Finally, consider the relation between the competitive learning rule (10.14) and
Oja’s rule (10.13). If we define
yi = δi i0 =
®
1 for i = i0 ,
0 otherwise.
(10.15)
then the rule (10.14) can be written in the form of Oja’s M -rule:
δwi j = ηyi
Å
x j −
M∑
k =1
yk wk j
ã
. (10.16)
Equation (10.16) is reminiscent of Hebb’s rule (Chapter 2) with weight decay.
10.3 Self-organising maps
In order to analyse high-dimensional data it is often useful to map the high-dimensional
input patterns to a low-dimensional output space, to obtain a low-dimensional
representation of the input distribution. Principal-component analysis (Section
6.3) does just that. However, it does not necessarily preserve distance. To visualise
clusters or other arrangements of the input patterns, similar patterns or patterns
that are close in input space should be mapped to nearby points in output space,
and patterns that are far apart should be mapped to outputs that are far from each
other. Maps that achieve this are called semantic or topgraphic maps.
178 UNSUPERVISED LEARNING
Moreover, principal-component analysis is a linear method. As explained in
Section 6.3, it projects the data to the space spanned by the leading eigenvectors
of the correlation matrix. In many cases, however, the data may not lie in a linear
subspace, as illustrated in Figure 10.6. In order to project the data onto the non-
linear principal manifold (solid line), a non-linear map is needed.
In neuroscience, the term topographic map refers to the relation between the
spatial arrangement of stimuli and the activation patterns in certain parts of the
mammalian brain. Similar patterns of visual stimuli on the retina, for instance,
activate close-by regions in the visual cortex [157]. Other cognitive stimuli, auditory
and sensory, are mapped in analogous ways. The complex neural networks in the
mammalian cortex contain large numbers of such maps, arranged in a hierarchical
fashion. They represent local stimuli in terms of spatially localised neural activation.
How did this complex structure arise? One possibility is that the mappings are coded
in the genetic sequence, that the connections are hard wired, so to speak. However,
it is observed that such maps can change over time [158], leading to the hypothesis
that they are learned, and that the our DNA merely encodes a set of fairly simple
learning rules.
This motivated Kohonen [158, 159] and others to propose and analyse learning
rules for topographic maps. The term self-organising map [18, 160] emphasises
that the mapping develops in response to the stimuli it maps, that it learns in
an unsupervised fashion. Kohonen’s model for a non-linear self-organising map
relies on an ordered array of output neurons, as illustrated in Figure 10.7. The map
learns to activate nearby output neurons for similar inputs. This is achieved using
a competitive learning rule, similar to the learning rule (10.14) described in the
previous Section. In order to represent the proximity or similarity of inputs, the rule
is endowed with the notion of distance in the output array, by updating not only the
winning neuron, but also those that are neighbours in the output array. To this end
one replaces the competitive-learning rule (10.14) by
δw i = ηh(i , i0)(x − w i ) , (10.17)
where i0 is the index of the winning neuron, the one with weight vector closest to the
input x . The neighbourhood function function h(i , i0) depends on the distance of the
neurons i and i0 in the output array. The neighbourhood function has a maximum at
i = i0 and decreases as the distance between i and i0 increases. One possibility is to
assign decreasing values to h(i , i0) for nearest neighbours, next-nearest neighbours,
and so forth (Figure 10.8). Another possibility is to use a Gaussian function of the
Euclidean distance |r i − r i0 | in the output array [1]:
h(i , i0) = exp
Ä
− 12σ2 |r i − r i0 |2
ä
. (10.18)
SELF-ORGANISING MAPS 179
Figure 10.7: Kohonen’s self-organising map. If patterns x (1) and x (2) are close in
input space, then the two patterns activate neighbouring winning neurons in the
output array (with coordinates r = [r1, r2]T). Often the dimension of the output array
is much lower than that of input space.
Here r i is the position of neuron i in the output array (Figure 10.7). Different
normalisations of the Gaussian [2] can be subsumed in different learning rates.
Kohonen’s rule has two parameters: the learning rate η, and the width σ of the
neighbourhood function. Usually one adjusts these parameters as the learning
proceeds. Typically one begins with large values for η and σ (ordering phase), and
then reduces these parameters as the elastic network evolves (convergence phase):
quickly at first and then in smaller steps, until the algorithm converges [1, 2, 158].
According to Equations (10.17) and (10.18), similar patterns activate nearby neu-
rons in output space, and their weight vectors change in similar ways. Kohonen’s
rule drags the winning weight vector w i0 towards x , just as the competitive learning
rule (10.14), but it also drags the neighbouring weight vectors along. Figure 10.9
illustrates a geometrical interpretation of Kohonen’s rule [18]. We can think of the
weight vectors as pointing to the nodes of an elastic net that has the same layout
as the output array. As one feeds patterns from the input distribution, the weights
are updated, causing the nodes of the network to move. This changes the shape of
the elastic network until it resembles the shape defined by the distribution of input
180 UNSUPERVISED LEARNING
Figure 10.8: Nearest neighbours (•) and next-nearest neighbours (◦) to the neuron
at the centre (Ñ) of the output array.
patterns. Figure 10.6 shows another example where the dimensionality of the output
array (one-dimensional) is lower than that of the input space (two-dimensional).
The algorithm finds a non-linear approximation to the data, the principal manifold.
As opposed to the principal direction in principal-component analysis, the principal
manifold need not be linear. Therefore it can approximate the data more precisely,
leading to a smaller residual variance (Exercise 10.7).
In summary, Kohonen’s algorithm learns by distributing the weight vectors of
the output neurons to reflect the distribution of input patterns. In general this
works well, but problems occur at the boundaries. Why this happens is quite clear
(Figure 10.9): since the density of patterns outside the parallelogram is low, the
elastic network cannot be drawn very close to the boundary. To analyse how the
boundaries affect learning for Kohonen’s rule, consider the steady-state condition
〈δw i 〉 =
η
T
T∑
t =1
h(i , i0)

x (t ) − w ∗i

= 0 . (10.19)
This condition is more complicated than it looks at first sight, because i0 depends
on the weights and on the patterns, as mentioned above. The steady-state condition
(10.19) is very difficult to analyse in general. One of the reasons is that global
geometric information is difficult to learn. It is usually much easier to learn local
structures. This is particularly true in the continuum limit where we can analyse
local learning progress using Taylor expansions.
The analysis of condition (10.19) in the continuum limit is due to Ritter and Schul-
ten [161], and it is described in detail by Hertz, Krogh, and Palmer [1]. One assumes
that there is a very dense network of output neurons, so that one can approximate
i → r , i0 → r 0, w i → w (r ), h(i , i0) → h

r − r 0(x )

, and 1T
∑
t →
∫
dx Pdata(x ). In this
continuum limit, Equation (10.19) reads
∫
dx Pdata(x ) h

r − r 0(x )
 
x − w ∗(r )

= 0 . (10.20)
SELF-ORGANISING MAPS 181
Figure 10.9: Learning a distribution Pdata(x ) (gray) of two-dimensional real-
valued inputs x with Kohonen’s algorithm. Illustration of the dynamics of the self-
organising map in terms of an elastic net. (a) Initial condition. (b) Intermediate
stage. (c) In the steady-state the elastic network resembles the shape defined by the
input distribution Pdata(x ).
This is a condition for the steady-state learning outcome, the function w ∗(r ).
In the continuum limit the position r 0(x ) of the winning neuron in the output
array for pattern x is given by
w ∗(r 0) = x . (10.21)
We use this relation to write Equation (10.20) as:
∫
dx Pdata(x ) h

r − r 0(x )
 
w ∗(r 0(x )) − w ∗(r )

= 0 . (10.22)
Equation (10.21) defines a mapping r 0(x ) from input space to output space, the
self-organising map (Figure 10.7). Assuming that this mapping is one-to-one, we
change integration variable from x to r 0:
∫
dr 0 |detJ|Q (r 0) h(r − r 0)

w ∗(r 0) − w ∗(r )

= 0 , (10.23)
where Q (r 0) ≡ Pdata

x (r 0)

, and where the determinant represents the volume ele-
ment of the variable transformation. Using Equation (10.21), the Jacobian J of the
transformation has elements
Ji j =
∂ wi (r 0)
∂ rj
. (10.24)
The neighbourhood function is sharply peaked at r = r 0, and this makes it possible
to evaluate the steady-state condition (10.23) approximately, expanding the inte-
grand in δr = r 0 − r , assuming that w ∗(r ) is a smooth function. This is illustrated
in Figure 10.10, for one-dimensional inputs and outputs. We consider this special
case not only to simplify the notation, but also because it is one of the few cases
182 UNSUPERVISED LEARNING
Figure 10.10: In order to find out how the steady-state map w ∗(r ) varies near r (gray
line), one expands w ∗ in δr around r , w ∗(r + δr ) = w ∗(r ) + dw ∗dr δr + 12d2 w ∗dr 2 δr 2 + . . ..
that admit mathematical analysis (Exercise 10.9). Expanding w ∗(r + δr ) as shown
in Figure 10.10 yields
w ∗(r + δr ) − w ∗(r ) = ddr w ∗(r )δr + 12d2dr 2 w ∗(r )δr 2 + . . . . (10.25)
The other factors in Equation (10.23) are expanded in a similar way:
J (r + δr ) = dw ∗dr + d2 w ∗dr 2 δr + . . . , (10.26a)
Q (r + δr ) = Pdata(w ∗) + δr dw ∗drddw Pdata(w ∗) . (10.26b)
Inserting these expressions into Equation (10.20), discarding terms of order higher
than δr 2, and changing the integration variable to δr , one finds
0 = w ′[ 32 w ′′Pdata(w ) + (w ′)2 ddw Pdata(w )]
∫ ∞
−∞
dδr δr 2h(δr ) , (10.27)
where we introduced the short-hand notation w ′ = ddr w ∗(r ), dropped the asterisk,
and used that the neighbourhood function (10.18) is symmetric, h(−δr ) = h(δr ).
Since the integral in Equation (10.27) is non-zero, we must either have
w ′ = 0 or
3
2
w ′′Pdata(w ) + (w ′)2 ddw Pdata(w ) = 0 . (10.28)
The first solution can be excluded because it corresponds to a singular weight
distribution that does not contain any geometrical information about the input
distribution Pdata. The second solution gives
w ′′
w ′
= −
2
3
w ′ ddw Pdata(w )
Pdata(w )
. (10.29)
K -MEANS CLUSTERING 183
In other words, ddr log |w ′| = − 23ddr log Pdata(w ), and this means that |w ′| ∝ [Pdata(w )]− 23 .
The density of output weights can be computed as
%(w ) =
∫
dr δ[w − w ∗(r )] , (10.30)
where δ(w ) is the Dirac δ-function [162]. Changing variables in the δ-function
δ[w − w ∗(r )] =
∑
j |w =w ∗(rj )
1
|w ′|
δ(r − rj ) , (10.31)
and assuming that the function w ∗(r ) is one-to-one, one finds
%(w ) =
1
|w ′|
= [Pdata(w )]
23
. (10.32)
This tells us that the self-organising map learns the input distribution in the following
way: the distribution of output weights in the steady state reflects the distribution
of input patterns. Equation (10.32) shows that the two distributions are not equal
(equality would have been a perfect outcome). The distribution of weights is instead
proportional to

Pdata(w )
 23
. Little is known in higher dimensions, but the general
idea is that the elastic network has difficulties reaching the corners and edges of the
domain where the input distribution is non-zero.
The output of a self-organising map can be interpreted in different ways. For
a low-dimensional inputs and outputs, one can simply plot the map w ∗(r ), as in
Figure 10.7. Dense regions of weights point to regions in input space with a high
density of inputs. Often the output dimension is taken to be much lower than the
dimension of input space. In this case the self-organising map performs non-linear
dimensionality reduction, and it can be used to find clusters in high-dimensional
input data [163]. The analysis proceeds in two steps. First, one runs Kohonen’s
algorithm until the map has converged to a steady state. Second, one feeds all
inputs into the net, and for each input one determines the location of the winning
neuron in the output array. The spatial activation patterns in the output array
represent clusters of similar inputs. This is illustrated in Figure 10.11, which shows
how a self-organising map represents handwritten digits from the MNIST data set.
To reveal the semantic map, the Figure labels clusters of outputs that correspond
to the same digits (as determined by the labels in the training set). We see that
the self-organising map groups the same digits together, but it has some difficulty
distinguishing the digits 3 and 8, and also 4 and 9.
184 UNSUPERVISED LEARNING
Figure 10.11: Clustering of hand-written digits (MNIST data set) with a self-
organising map with a 30 × 30 output array. In the shaded regions the outputs
are quite certain: here the winning neurons are activated by the indicated digit in
80% of the cases. The white regions correspond to outputs where the majority digit
appears in less than 80% of the cases, or to outputs that are never activated, or only
once. Schematic, based on simulations performed by Juan Diego Arango.
10.4 K -means clustering
Sections 10.2 and 10.3 described different ways of finding clusters in input data.
In particular, it was shown how self-organising maps can find clusters in high-
dimensional input data, and represent them in a low-dimensional, non-linear pro-
jection. K -means clustering [2] is an alternative unsupervised-learning algorithm
for finding clusters in the input data. Let us compare and contrast this algorithm with
Kohonen’s self-organising map. The goal is to cluster input patterns x (μ), μ = 1 , . . . , p
into K clusters. Usually K is much smaller than the number of inputs, p , and than
the input dimension N .
A solution of the clustering task is a mapping k (μ) that associates each input x (μ)
with one of the clusters k = 1 , . . . , K . The function k (μ) is determined by minimising
K -MEANS CLUSTERING 185
Figure 10.12: Schematic illustration of the K -means clustering algorithm with two
weight vectors w 1 and w 2. The radii of the disks equal s1 and s2, Equation (10.34).
the energy function
H (w 1, . . . , w K ) =
1
2
K∑
k =1
Ä ∑
μ | k (μ)=k
|x (μ) − w k |2
ä
. (10.33)
The second sum is over all values of μ that satisfy k (μ) = k . The vector w k becomes
the average of all pattern vectors in cluster k , and the expression in the parentheses
is the variance associated with this cluster:
σ2k =
∑
μ | k (μ)=k
|x (μ) − w k |2 . (10.34)
In other words, H measures the sum of the cluster variances σ2k . A solution to the
clustering problem corresponds to a local minimum of H . To determine the cluster
vectors w k and the corresponding variances σ2k , one starts from an initial guess for
k (μ). For each cluster, one begins by adjusting w k to minimise the cluster variance:
arg min
w k
=
∑
μ|k (μ)=k
|x (μ) − w k |2 . (10.35)
In a second step, one optimises the encoding function
k (μ) = arg min
1≤k ≤K
|x (μ) − w k |2 , (10.36)
given the vectors w k . These steps are repeated until a satisfactory solution is found.
The solution is not unique, usually the algorithm converges to a local minimum of
H . In practice one should try different random initialisations to find the best local
minimum.
All three algorithms, competitive learning, the self-organising map, and K -means
clustering move weight vectors towards clusters in input space. A difference between
186 UNSUPERVISED LEARNING
Figure 10.13: Linear separation of the XOR function by the non-linear mapping
(10.37). (a) In the input plane the problem is not linearly separable. (b) In the u1-u2
plane the problem is homogeneously linearly separable.
the self-organising map and the other two algorithms is that the self-organising map
uses a neighbourhood function (so that similar inputs activate close-by neurons in
the output array), and updates their weight vectors in similar fashion. In this way, a
self-organising map with a large output array can find a smooth parameterisation
of the principal manifold. If we shrink the neighbourhood function to the centre
point in Figure 10.8, all geometric information is lost, and the self-organising map
becomes equivalent to competitive learning (Algorithm 9). Essentially, competitive
learning and K -means clustering are sequential and batch versions of the same
algorithm [1]. So the self-organising map becomes equivalent to K -means clustering
when the neighbourhood range tends to zero.
10.5 Radial basis functions
Problems that are not linearly separable can be solved by perceptrons with hidden
layers, as we saw in Chapter 5. Figure 5.13(b), for example, shows a piecewise linear
decision boundary parameterised by hidden neurons.
Separability can also be achieved by a non-linear transformation of input space.
Figure 10.13 shows how the XOR problem can be transformed into a linearly separa-
ble problem by the transformation
u1(x ) = (x2 − x1)2 − 12 and u2(x ) = x2 . (10.37)
The Figure shows the non-separable problem in the x1-x2 plane, and in the new
coordinates u1 and u2. The problem is homogeneously linearly separable in the
u1-u2 plane. We can solve it by a single McCulloch-Pitts neuron with weights W
and zero threshold, parameterising the decision boundary as W · u (x ) = 0.
RADIAL BASIS FUNCTIONS 187
It is even better to map the patterns (non-linearly) to a space of higher dimension,
because Cover’s theorem (Section 5.4) says that it is easier to separate the patterns
there: consider a set u (x ) = [u1(x ), . . . , um (x )]T of m polynomial functions of finite
order that embed N -dimensional input space in an m-dimensional space. Then
the probability that a problem with p points x (μ) in N -dimensional input space is
separable by a polynomial decision boundary is given by P (p , m) [Equation (5.29)]
[2, 72]. Note that this probability is independent of the dimension N of input space.
The question is of course how to find the non-linear mapping u (x ). One possibil-
ity is to use radial basis functions. The idea is to parameterise the functions u j (x )
in terms of weight vectors w j , and to use an unsupervised-learning algorithm to
find weights that separate the input data. A common choice [2] is to use radial basis
functions of the form:
u j (x ) = exp
Ä
−
1
2s 2j
x − w j2
ä
. (10.38)
Note that these functions are not of the finite-order polynomial form that was
assumed above. So strictly speaking we cannot invoke Cover’s theorem. In practice
the mapping u j (x ) works nevertheless quite well. The parameters sj parameterise
the widths of the radial basis functions. In the simplest version of the algorithm they
are set to unity. Hertz, Krogh, and Palmer [1] discuss radial basis-function networks
with normalised radial basis functions
u j (x ) =
exp

− 12s 2jx − w j2

∑m
k =1 exp

− 12s 2k|x − w k |2
 . (10.39)
Other choices for radial basis functions are given by Haykin [2].
Figure 10.14 shows a radial basis-function network for N = 2 and m = 4. The four
neurons in the hidden layer stand for the four radial basis functions (10.38) that
map the inputs to four-dimensional u -space. The network looks like a perceptron
(Chapter 5). But here the hidden layers work in a different way. Perceptrons have
hidden McCulloch-Pitts neurons that compute non-local outputs σ(w j · x − θ ). The
output of radial basis functions u j (x ), by contrast, is localised in input space [Figure
10.15 (left)]. We saw in Section 7.1 how to make localised basis functions out of
McCulloch-Pitts neurons with sigmoid activation functions σ(b ), but one needs
two hidden layers to do that [Figure 10.15 (right)].
Radial basis functions produce localised outputs with a single hidden layer, they
divide up input space into localised regions, each corresponding to one radial basis
function. Imagine for a moment that we have as many radial basis functions as
input patterns. In this case we can simply take w ν = x (ν) for ν = 1, . . . , p . The linear
188 UNSUPERVISED LEARNING
Figure 10.14: Radial basis-function network for N = 2 inputs and m = 4 radial basis
functions (10.38). The output neuron has a linear activation function, weights W ,
and zero threshold.
Figure 10.15: Comparison between radial-basis function network and perceptron.
Left: the output of a radial basis function is localised in input space. Right: to
achieve a localised output with sigmoid units one needs two hidden layers (Figure
7.5).
output in Figure 10.14 computes O (μ) = W ·u (x (μ)), and so the classification problem
in u-space takes the form
p∑
μ=1
W μUμν = t (ν) (10.40)
with Uμν = uν(x (μ)). If all patterns are pairwise different, x (μ) 6 = x (ν) for μ 6 = ν, then
the matrix U is invertible [2]. In this case the solution of the classification problem
reads
Wμ =
p∑
ν=1
t (ν)[U−1]νμ , (10.41)
where U is the symmetric p × p matrix with elements Uμν.
RADIAL BASIS FUNCTIONS 189
Algorithm 10 radial basis functions
initialise the weights w j k independently randomly from [−1, 1];
set all widths to sj = 0;
for t = 1, . . . , T do
feed randomly chosen pattern x (μ);
determine winning neuron j0: u j0 ≥ u j for all values of j ;
update widths: sj = minj 6 =k |w j − w k |;
update only winning neuron: δw j0 = η(x (μ) − w j0 );
end for
In practice one can get away with fewer radial basis functions by choosing their
weights to point in the directions of clusters of input data. To this end one uses
unsupervised competitive learning (Algorithm 10), where the index j0 of the winning
neuron is defined to be the one with largest u j . How are the widths sj determined?
The width sj of radial basis function u j (x ) is taken to be equal to the minimum
distance between w j and the centers of the surrounding radial basis functions.
Once weights and widths of the radial basis functions are found, the weights of the
output neuron are determined by minimising
H =
1
2
∑
μ

t (μ) − O (μ)
2
(10.42)
with respect to W . This works even if U is not invertible. An approximate solution
can be obtained by stochastic gradient descent on H , keeping the parameters of
the radial basis functions fixed. Cover’s theorem indicates that the problem is more
likely to be separable if the embedding dimension m is higher.
Radial basis-function networks are similar to the perceptrons described in Chap-
ters 5 to 7, in that they are feed-forward networks designed to solve classification
problems. A fundamental difference is that the parameters of the radial basis func-
tions are determined by unsupervised learning, whereas perceptrons are trained
using supervised learning for all units. While McCulloch-Pitts neurons compute
weights to minimise their output from given targets, the radial basis functions com-
pute weights by maximising the output u j as a function of j . The algorithm for
finding the weights of the radial basis functions is summarised in Algorithm 10.
Further, as opposed to the deep networks from Chapter 7, radial basis-function
networks have only one hidden layer, and a linear output neuron. In summary,
radial basis-function networks learn using a hybrid scheme: unsupervised learning
for the parameters of the radial basis functions, and supervised learning for the
weights of the output neuron.
190 UNSUPERVISED LEARNING
Figure 10.16: Autoencoder (schematic). Both encoder and decoder consist of a
number of fully connected or convolutional layers (depicted as squares). In the
layout shown, the bottleneck consists of a layer with very few neurons. Sparse
autoencoders have bottlenecks with many neurons, but only few are activated.
10.6 Autoencoders
Multi-layer perceptrons, layered feed-forward networks, were developed for super-
vised learning, as described in Part II. Such layouts can also be used for unsupervised
learning. Examples are autoencoders and generative adversarial networks.
Autoencoders employ layered feed-forward networks for unsupervised learning
of an unlabeled data set of input patterns, using the inputs as targets, t (μ) = x (μ).
The layout is illustrated in Figure 10.16. The network consists of two main parts,
an encoder (on the left), and a decoder (on the right). The encoder consists for
instance of several fully connected or convolutional layers and maps the inputs to
a bottleneck layer with a small number M of neurons, significantly smaller than
the input dimension, M  N . We denote the states of the bottleneck neurons by z j .
The encoder corresponds to a non-linear mapping z = f e(x ). The decoder maps the
bottleneck (or latent) variables back to the inputs, x = f d(z ). One adjusts weights
and thresholds by backpropagation until the network learns to approximate the
inputs as
x = f d[ f e(x )] . (10.43)
The energy function reads:
H =
1
2
∑
μ
x (μ) − f d[ f e(x (μ))] 2, (10.44)
AUTOENCODERS 191
where |x |2 = x Tx . In other words, the autoencoder learns the identity function. The
point is that the identity is represented in terms of two non-linear functions, the
encoder f e and the decoder f d. While the identity function is trivial, the encoding
and decoding functions need not be. The bottleneck ensures that the network does
not simply learn f e(x ) = f d(x ) = x .
The latent variables z may encode interesting properties of the input patterns. If
the number of neurons is much smaller than the number of pattern bits, as indicated
by the term bottleneck, the encoder is a low-dimensional (compressed) representa-
tion of the input data. In this way autoencoders can perform non-linear dimension-
ality reduction, like self-organising maps (Section 10.3). If both encoder and decoder
are linear functions with zero thresholds, then H = 12
∑
μ |x (μ) − WdWex (μ))|2. In this
case, z1(x ), . . . , zM (x ) are simply the first M principal components of zero-mean
input data [164] (Exercise 10.14).
Sparse autoencoders [165] have a large number of neurons in the bottleneck, pos-
sibly more than the number of pattern bits. But only a small number of bottleneck
neurons are allowed to be active at the same time. The idea is that sparse representa-
tions of input data are more robust than dense ones, and generalise more reliably. At
least high-dimensional but sparse representations of binary classification problems
are more likely to be linearly separable (Section 5.4). There are different ways of
enforcing sparsity, for instance using L1- or L2-regularisation (Section 7.6.1). An
alternative [165] is to ensure that the average activation of each bottleneck neuron
with sigmoid activation function,
a j =
1
p
p∑
μ=1
σ(b (μ)j ) , (10.45)
remains small. This is achieved by adding the term
λ
∑
j
a log
a
a j
- (1 − a ) log
1 − a
1 − a j
(10.46)
to the energy function, with Lagrange multiplier λ (Section 6.3). This term penalises
any deviation of a j from a j = a  1, where a > 0 is a sparsity parameter. Each term
in the sum is non-negative and vanishes when a j = a for all j , because each term
can be interpreted as the Kullback-Leibler divergence (Section 4.4) between two
Bernoulli distributions with parameters a and a j .
Variational autoencoders [166– 168] have layouts similar to the one shown schemat-
ically in Figure 10.16, but their purpose is quite different. Variational autoencoders
are generative models (Section 4.5): just like restricted Boltzmann machines they
approximate a data distribution of inputs Pdata(x ), and allow to sample from it. As
an example consider the MNIST data set of handwritten digits. The patterns define
192 UNSUPERVISED LEARNING
a data distribution that encodes the properties of the digits in terms of covariances
and higher-order correlations. The question is how to generate new digits from
this distribution, different from those in the data set, yet with their defining prop-
erties. In other words, how can a machine learn to generate images that look like
handwritten digits?
The idea of variational autoencoders is to represent the data distribution in terms
of a Gaussian distribution PL(z ) of latent variables z , using the fact that one can
approximate any given data distribution Pdata(x ) in terms of PL(z ) by a suitable non-
linear transformation f (z ) [167]. Variational autoencoders are trained not unlike
neural networks, but an essential difference to the algorithms described in Part
II is that variational autoencoders learn probabilities rather than deterministic
input-output mappings.
Given the Gaussian distribution PL(z ) of the latent variables, the goal is to max-
imise the log-likelihood (Section 4.5):
L = log P (x ) = log
∫
dz P (x |z )PL(z ) . (10.47)
Here P (x |z ) is the probability to generate x given z . In the simplest case, this dis-
tribution is assumed to be Gaussian with mean μP (z ) = f (z ), and with correlation
matrix CP (z ). The decoder represents these functions in terms of a multilayer per-
ceptron or a convolutional neural network. Weights and thresholds are determined
to maximise L by gradient ascent. To this end we must find an efficient way of
computing L and its gradients. One possibility is Monte-Carlo sampling (Section
4.2), but this is not very efficient because most values of z drawn from PL(z ) result
in unlikely patterns x , with only negligible contributions to L . To get around this
problem, one needs to know which values of z are likely to produce a given pattern x .
The idea is to learn a second approximate distribution Q (z |x ) of z given x . We can
think of Q (z |x ) as an encoder. So Q (x |z ) corresponds to the encoder f e discussed
above, while P (z |x ) corresponds to the decoder f d. An important difference is that
P and Q are probabilities, not deterministic functions.
To determine a good approximation Q (z |x ), we minimise the difference between
Q (z |x ) and the unknown exact distribution P (z |x ),
DKL[Q (z |x ), P (z |x )] = 〈logQ (z |x ) − log P (z |x )〉Q . (10.48)
A first trick is to rewrite this expression using Bayes’ theorem [29],
P (z |x ) = P (x |z )PL(z )/P (x ) . (10.49)
This gives:
L − DKL[Q (z |x )|P (z |x )] = 〈log P (x |z ) − DKL[Q (z |x )|PL(z )]〉Q . (10.50)
SUMMARY 193
The second trick is to note that the l.h.s of Equation (10.50) is a suitable target
function to maximise. We want to maximise L subject to the constraint that the
unknown function Q (z |x ) approximates the probability of z encoding the pattern
x . Usually one takes Q (z |x ) to be a Gaussian with mean μQ and correlation matrix
CQ . The task is then to determine the functions μP (z ), CP (z ), μQ (z ), and CQ (z ) by
adjusting the weights of two neural networks, encoder and decoder.
This task, maximising the r.h.s. of Equation (10.50), is not as straightforward
as it may seem, because the target function (10.50) involves an average over the
distribution Q which in turn depends on the weights. The question is how to move
the derivative ∂ /∂wmn inside the average 〈· · · 〉Q , to obtain an unbiased expression
for the weight updates δwmn . In other words, the goal is to ensure that the average
weight increments are proportional to the gradients of the target function (10.50).
A related problem occurs when training binary stochastic neurons (Section 11.1).
Similarities and differences are described in Ref. [169].
One solution is to use stochastic backpropagation [168]. In its simplest form, this
algorithm makes use of a relation for the gradient of the average of a test function
F (z ) with a Gaussian probability Q (z ; wi j ) that depends on the weights wi j :
∂
∂ wmn
〈F (z )〉Q = 〈b · ∂∂ wmn μQ +
1
2
trA ∂∂ wmn C〉Q . (10.51)
Here b and A are the gradient and the Hessian of the function F (z ). A challenge
is that these derivatives tend to be difficult to compute reliably. Suitable approxi-
mations are described in Ref. [168]. The expression inside the average in Equation
(10.51) is the unbiased weight increment. Iterating the learning rule allows one to
determine the parameters of P (x |z ) and Q (z |x ). This allows tio efficiently sample x
by sampling the latent variables and then applying the decoder.
Generative adversarial networks [170] are generative models based on learning
rules similar to that described above for variational autoencoders, but there are
some differences in detail. Generative adversarial networks consist of two multilayer
perceptrons, a generator and a discriminator. The generative network produces new
outputs from a given data distribution (fakes), and the task of the discriminator is to
classify these outputs into two classes: real or fake data. Generator and discriminator
are trained together. The weights of the generator are adjusted to maximise the
classification error of the discriminator, while those of the discriminator are trained
to minimise this error [171].
10.7 Summary
The unsupervised-learning algorithms described in Sections 10.1 and 10.2 are based
on Hebb’s rule. These algorithms can learn different features of unlabeled input data:
194 UNSUPERVISED LEARNING
they can detect the familiarity of inputs, perform principal-component analysis,
and identify clusters in the input data.
Self-organising maps also rely on Hebb’s rule. An important difference is that
the outputs are arranged in an array, and that output neurons that are close-by in
the output array are updated in similar ways. Self-organising maps can therefore
represent topographic and semantic maps, where close-by or similar inputs are
mapped to nearby outputs. When the dimension of the output array is much lower
than the input dimension, self-organising maps perform non-linear dimensional
reduction.
Radial basis-function networks are classifiers, just like multilayer perceptrons.
Their output neurons are trained in the same way, using labeled input data. However,
the decision boundaries of radial basis-function networks are polynomial functions
(not just hyperplanes), and their parameters are determined by unsupervised learn-
ing.
Autoencoders are multilayer perceptrons. They can learn to encode non-linear
features of unlabeled input data by using the input patterns as targets. Finally, gener-
ative adversarial networks do not require labeled inputs, so they can be considered
unsupervised-learning machines. They are used to generate synthetic data in or-
der to expand training sets for supervised learning, and pose an ethical dilemma
because they can be used to generate deep fakes [172], manipulated videos where
someone’s facial expression and speech are replaced by another person’s.
In summary, the simple algorithms described in this Chapter provide a proof of
concept: how machines can learn without labels.
10.8 Further reading
The primary source for Sections 10.1 and 10.2 is the book by Hertz, Krogh, and Palmer
[1]. A good reference for self-organising maps is Kohonen’s book [159]. Radial basis-
function networks are discussed by Haykin in Chapter 5 of his book [2]. It has been
argued that radial-basis function networks do not generalise as well as perceptrons
do [173]. To solve this problem, Poggio and Girosi [174] suggested to determine the
parameters w j of the radial basis function by supervised learning, using stochastic
gradient descent.
Autoencoders can generate non-linear, low-dimensional representations of an
input distribution. The relation to principal component analysis is discussed in
Refs. [164, 175].
The recommended introduction to variational autoencoders is the tutorial by
Doersch [167]. He also mentions that the underlying mathematics for variational
autoencoders is similar to that of Helmholtz machines (Section 4.7), although the
FURTHER READING 195
two machines learn in quite different ways.
Variational autoencoders are used for a number of different purposes. Ref. [176]
suggests to employ a variational autoencoder for active learning (Section 7.8). The
idea is to represent the input distribution in terms of lower-dimensional latent
variables, and to use K -means clustering (Section 10.4) to identify groups of patterns
that should be labeled. Variational autoencoders have also been used for outlier
detection [177] and language generation [178].
196 REINFORCEMENT LEARNING
