**Kaynak:** [[00_Context/0_Mehlig_Machine_Learning/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

9 Supervised recurrent networks
The layout of the perceptrons analysed in the previous Chapters is special. All
connections are one way, and only to the layer to the right, so that the update rule
for the i -th neuron in layer ` becomes, for example,
V (`)i = g
Ä ∑
j
w (`)i j V (`−1)j − θ (`)i
ä
. (9.1)
The backpropagation algorithm relies on this feed-forward layout. It means that
the derivatives ∂ V (`−1)j /∂ w (`)mn vanish. This ensures that the outputs are nested
functions of the inputs, which in turn implies the simple iterative structure of the
backpropagation algorithm (Chapter 6).
In some cases it is necessary or convenient to use networks that do not have this
simple layout. The Hopfield networks discussed in part I are examples where all
connections are symmetric. More general networks may have a feed-forward layout
with feedbacks, as shown in Figure 9.1. Such networks are called recurrent networks.
There are many different ways in which the feedbacks can act: from the output
layer to hidden neurons for example, or there could be connections between the
neurons in a given layer. Neurons 3 and 4 in Figure 9.1 are output neurons, they are
associated with targets just as in Chapters 5 to 7. The layout of recurrent networks
is very general, but because of the feedbacks we must consider how such networks
can be trained.
Unlike multilayer perceptrons that represent an input-to-output mapping in
terms of nested activation functions, recurrent networks are used as dynamical
networks, where the iteration index t replaces the layer index `:
Vi (t ) = g
Ä ∑
j
w (v v )i j Vj (t − 1) +
∑
k
w (v x )i k xk − θ (v )i
ä
for t = 1, 2, . . . . (9.2)
See Figure 9.1 for the definition of the different weights, and the parameters θ (v )i
are thresholds. Equation (9.2) is analogous to the deterministic McCulloch-Pitts
dynamics of Hopfield networks and Boltzmann machines [c.f. Equation (1.5)]. As in
the case of Hopfield networks (Exercise 2.10), one may also consider a continuous
network dynamics:
τ
dVi
dt
= −Vi + g
Ä ∑
j
w (v v )i j Vj (t ) +
∑
k
w (v x )i k xk − θ (v )i
ä
, (9.3)
with time constant τ. We shall see in a moment why it is convenient to assume that
the dynamics is continuous in t , as in Equation (9.3).
Figure 9.1: Network with a feedback connection. Neurons 1 and 2 are hidden
neurons. The weights from the input xk to the neurons Vi are denoted by w (v x )i k , the
weight from neuron Vj to neuron Vi is w (v v )i j . Neurons 3 and 4 are output neurons,
with prescribed target values yi . To avoid confusion with the iteration index t , the
targets are denoted by y in this Chapter.
Recurrent networks can learn in different ways. One possibility is to use a training
set of pairs [x (μ), y (μ)] with μ = 1 , . . . , p . To avoid confusion with the iteration index t ,
the targets are denoted by y in this Chapter. One feeds a pattern from this set and
runs the dynamics (9.2) or (9.3) for the given x (μ) until it reaches a steady state V ∗
(if this does not happen, the training fails). Then one adjusts the weights by one
gradient-descent step using the energy function
H =
1
2
∑
k
(E ∗k )2 where E ∗k =
®
y (μ)k − V ∗k if Vk is an output neuron,
0 otherwise.
(9.4)
The asterisk in this Equation indicates that all variables are evaluated in the steady
state, at V = V ∗. Iterating these steps, one feeds another pattern x (μ), finds the steady
state V ∗, adjusts the weights and so forth. Instead of defining the energy function
in terms of the mean-squared output errors, one could also use the negative log-
likelihood function (7.44). One continues to iterate these steps until the steady-state
outputs yield the correct targets for all input patterns. This is reminiscent of the
algorithms discussed in Chapters 5 to 7.
Another possibility is that inputs and targets change as functions of time t while
the network dynamics runs. This allows to solve temporal classification tasks. The
network is trained on a set of input sequences x (t ) and corresponding target se-
quences y (t ). In this way, recurrent networks can translate written text or recognise
speech. The network can be trained by unfolding its dynamics in time as explained
in Section 9.2, although this algorithm suffers from the vanishing-gradient problem
discussed in Chapter 7.
152 SUPERVISED RECURRENT NETWORKS
9.1 Recurrent backpropagation
This Section summarises how to generalise Algorithm 4 to recurrent networks with
feedback connections. Recall the recurrent network shown in Figure 9.1. The neu-
rons Vi have smooth activation functions, and they are connected by weights w (v v )i j .
Several neurons may be linked to inputs x (μ)k , with weights w (v x )i k . Other neurons are
output units with associated target values y (μ)i .
One takes the dynamics to be continuous in time, Equation (9.3), and assumes
that V (t ) runs into a steady state
V (t ) → V ∗ so that
dV ∗i
dt
= 0 . (9.5)
Equation (9.3) implies
V ∗i = g
Ä ∑
j
w (v v )i j V ∗j +
∑
k
w (v x )i k xk − θ (v )i
ä
, (9.6)
and it is assumed that V ∗ is a linearly stable steady state of the dynamics (9.3), so
that small perturbations δV away from V ∗ decay with time.
The synchronous discrete dynamics (9.2) can exhibit undesirable stable periodic
solutions [133], as mentioned in Section 1.3. This is a reason for using the continuous
dynamics (9.3), yet convergence to the steady state is not guaranteed in this case
either.
Equation (9.6) is a non-linear self-consistent condition for the components of V ∗,
in general difficult to solve. However, if the steady state V ∗ is stable, we can use the
dynamics (9.3) to automatically pick out the steady-state solution V ∗. This solution
depends on the pattern x (μ). Note that the superscript (μ) is left out in Equations
(9.5) and (9.6) and also in the remainder of this Section.
The goal is to find weights so that the outputs give the correct target values in
the steady state. To this end one uses gradient descent on the energy function (9.4).
Following Ref. [1], consider first how to adjust the weights w (v v )i j :
δw (v v )mn = −η
∂ H
∂ w (v v )mn
= η
∑
k
E ∗k
∂ V ∗k
∂ w (v v )mn
. (9.7)
One calculates the gradients of V ∗ by differentiating Equation (9.6):
∂ V ∗i
∂ w (v v )mn
= g ′(b ∗i )
∂ b ∗i
∂ w (v v )mn
= g ′(b ∗i )

δi m V ∗n +
∑
j
w (v v )i j
∂ V ∗j
∂ w (v v )mn

. (9.8)
RECURRENT BACKPROPAGATION 153
Here b ∗i =
∑
j w
(v v )
i j V ∗j +
∑
k w
(v x )
i k xk − θ
(v )
i is the local field in the steady state. Equa-
tion (9.8) is a self-consistent equation for the gradient, as opposed to the explicit
expressions we found in Chapter 6. The reason for the difference is that the recurrent
network has feedbacks.
Since Equation (9.8) is linear in the gradients, it can be solved by matrix inversion,
at least formally. In terms of the matrix L with elements
Li j = δi j − g ′(b ∗i )w (v v )i j , (9.9)
Equation (9.8) can be written as
∑
j
Li j
∂ V ∗j
∂ w (v v )mn
= δi m g ′(b ∗i )V ∗n . (9.10)
If L is invertible, one applies
∑
i

L−1

k i to both sides. Using the fact that
∑
i

L−1

k i Li j =
δk j one finds:
∂ V ∗k
∂ w (v v )mn
=

L−1

k m g
′(b ∗
m )V
∗
n . (9.11)
Inserting this result into (9.7) one obtains:
δw (v v )mn = η
∑
k
E ∗k

L−1

k m g
′(b ∗
m )V
∗
n . (9.12)
This learning rule can be written in the form of the backpropagation rule (6.10) by
introducing the error
∆∗m = g ′(b ∗m )
∑
k
E ∗k

L−1

k m . (9.13)
Then the learning rule (9.12) takes the form
δw (v v )mn = η∆∗m V ∗n . (9.14)
If there are no recurrent connections, then Li j = δi j . In this case Equation (9.13)
reduces to the standard expression (6.6b), Exercise 9.1.
The learning rule for the weights w (v x )mn is derived in an analogous fashion. The
result is:
δw (v x )mn = η∆∗m xn . (9.15)
The learning rules (9.14) and (9.15) are well-defined only if the matrix L is invertible.
Otherwise the solution (9.11) does not exist. Also, matrix inversion is an expensive
operation. As described in Chapter 5, one can try to avoid the problem by finding
154 SUPERVISED RECURRENT NETWORKS
the inverse iteratively. The trick [1] is to write down a dynamical equation for ∆i
that has a steady state at the solution of Equation (9.13):
τ ddt ∆j = −∆j + g ′(b ∗j )E ∗j +
∑
i
∆i w (v v )i j g ′(b ∗j ) . (9.16)
It is left as an exercise (Exercise 9.2) to verify that the dynamics (9.16) has a steady
state satisfying Equation (9.13). Equation (9.16) is written in a form to stress that
(9.16) and (9.3) exhibit the same duality as Algorithm 4, between forward propaga-
tion of states of neurons and backpropagation of errors. The sum in Equation (9.16)
has the same form as the recursion for the errors in Algorithm 4, except that there
are no layer indices ` here.
Equation (9.16) admits the steady state (9.13). But does ∆i (t ) converge to ∆∗i ?
For convergence it is necessary that the steady state is linearly stable. Whether or
not this is the case is determined by linear stability analysis [85]. One asks: does a
small deviation from the steady state increase or decrease under Equation (9.16)?
In other words, if one writes
V (t ) = V ∗ + δV (t ) and ∆(t ) = ∆∗ + δ∆(t ) , (9.17)
do δV (t ) and δ∆(t ) grow in magnitude? To answer this question, one inserts this
ansatz into (9.3) and (9.16), and linearises:
τ ddt δVi = − δVi + g ′(b ∗i )
∑
j
w (v v )i j δVj ≈ −
∑
j
Li j δVj , (9.18a)
τ ddt δ∆j = −δ∆j +
∑
i
δ∆i w (v v )i j g ′(b ∗j ) ≈ −
∑
i
δ∆i g ′(b ∗i )Li j /g ′(b ∗j ) . (9.18b)
Equation (9.18a) shows: whether or not the norm of δV (t ) grows is determined by
the eigenvalues of the matrix L. We say that V ∗ is a linearly stable steady state of
Equation (9.3) if all eigenvalues of L have negative real parts. In this case |δV (t )| → 0.
If at least one eigenvalue has a positive real part then |δV | grows. In this case we
say that V ∗ is linearly unstable. Since the matrix with elements g ′(b ∗i )Li j /g ′(b ∗j ) has
the same eigenvalues as L, ∆∗ is a stable steady state of (9.16) if V ∗ is a stable steady
state of (9.3). If the steady states are unstable, the algorithm does not converge.
In summary, recurrent backpropagation is analogous to backpropagation (Al-
gorithm 4) for layered feed-forward networks, save for two differences. First, the
non-linear network dynamics is no longer a simple input-to-output mapping with
nested activation functions, but a non-linear dynamics that may (or may not) con-
verge to a steady state. Second, the feedbacks give rise to linear self-consistent
equations for the steady-state gradients ∂ V ∗j /∂ wmn , which can be viewed as steady-
state conditions for a dual dynamics of the errors.
BACKPROPAGATION THROUGH TIME 155
The main conclusion of this Section is that convergence of the training is not
guaranteed if the network has feedback connections (for a layered feed-forward
network without feedbacks, recurrent backpropagation simplifies to stochastic gra-
dient descent, Algorithm 4, see Exercise 9.1). This explains why stochastic gradient
descent is used mostly for multi-layer networks with feed-forward layouts. The
algorithm tends to fail for networks with feedbacks. However, it is possible to get rid
of the feedbacks in recurrent networks by unfolding the dynamics in time. This is
described in the next Section.
9.2 Backpropagation through time
Recurrent networks can be used to learn sequential inputs, as in speech recognition
and machine translation. The training set consists of time sequences [x (t ), y (t )] of
inputs and targets. The network is trained on the sequences and learns to predict
the targets. In this context the layout differs from the one described in the previous
Section. There are two main differences. Firstly, the inputs and targets depend on t ,
and one uses a discrete-time update rule. Secondly, separate output neurons Oi (t )
are added to the layout. The update rule takes the form
Vi (t ) = g
Ä ∑
j
w (v v )i j Vj (t − 1) +
∑
k
w (v x )i k xk (t ) − θ (v )i
ä
, (9.19a)
Oi (t ) = g
Ä ∑
j
w (o v )i j Vj (t ) − θ (o )i
ä
. (9.19b)
The activation function of the output neurons Oi can be different from that of the
hidden neurons Vj . One possibility is to use the softmax function for the outputs
[134, 135]. For the hidden neurons one often uses tanh activations.
To train recurrent networks with time-dependent inputs and with the dynamics
(9.19), one uses backpropagation through time. The idea is to unfold the network in
time to get rid of the feedbacks. The price paid is that one obtains large networks in
this way, with as many copies of the original neurons as there are time steps.
The procedure is illustrated in Figure 9.2 for a recurrent network with one hidden
neuron, one input terminal, and one output neuron. The unfolded network has
T inputs and outputs. It can be trained in the usual way with stochastic gradient
descent. The errors are calculated using backpropagation as in Algorithm 4, but here
the error is propagated back in time, not from layer to layer. The energy function is
the squared error summed over all time steps
H =
1
2
T∑
t =1
E 2t with Et = yt − Ot . (9.20)
156 SUPERVISED RECURRENT NETWORKS
Figure 9.2: Left: recurrent network with one input terminal, one hidden neuron, and
one output neuron. Right: same network but unfolded in time. The weights w (v v )
remain unchanged as drawn, also the weights w (v x ) and w (o v ) remain unchanged
(not drawn). After Figures 7 and 8 in Ref. [135].
One could use the negative log-likelihood function (7.38), but here we use the
squared output-error function (9.20). There is only one hidden neuron in our exam-
ple, and the inputs and outputs are also one-dimensional. Here and in the following
we write the time argument as a subscript, Ot instead of O (t ) and so forth, because
there is no risk of confusing the time index with other subscripts.
Consider first how to adjust the weight w (v v ). Gradient descent (5.24) yields
δw (v v ) = η
T∑
t =1
Et
∂ Ot
∂ w (v v )
= η
T∑
t =1
∆t w (o v )
∂ Vt
∂ w (v v )
. (9.21a)
Here
∆t = Et g ′(Bt ) (9.22)
is an output error, and Bt = w (o v )Vt −1 − θ (o ) is the local field of the output neuron at
time t [Equation (9.19)]. Equation (9.21a) is similar to the learning rule for recur-
rent backpropagation, Equations (9.7) and (9.8), but the derivative ∂ Vt /∂ w (v v ) is
evaluated differently. Equation (9.19a) yields the recursion
∂ Vt
∂ w (v v )
= g ′(bt )
Ä
Vt −1 + w (v v )
∂ Vt −1
∂ w (v v )
ä
(9.23)
BACKPROPAGATION THROUGH TIME 157
for t ≥ 1. Since ∂ V0/∂ w (v v ) = 0, Equation (9.23) implies:
∂ V1
∂ w (v v )
= g ′(b1)V0 ,
∂ V2
∂ w (v v )
= g ′(b2)V1 + g ′(b2)w (v v )g ′(b1)V0 ,
∂ V3
∂ w (v v )
= g ′(b3)V2 + g ′(b3)w (v v )g ′(b2)V1 + g ′(b3)w (v v )g ′(b2)w (v v )g ′(b1)V0
...
∂ VT −1
∂ w (v v )
= g ′(bT −1)VT −2 + g ′(bT −1)w (v v )g ′(bT −2)VT −3 + . . .
∂ VT
∂ w (v v )
= g ′(bT )VT −1 + g ′(bT )w (v v )g ′(bT −1)VT −2 + . . .
Equation (9.21a) says that we must sum over t . Regrouping the terms in this sum
yields:
∆1
∂ V1
∂ w (v v )
- ∆2
∂ V2
∂ w (v v )
- ∆3
∂ V3
∂ w (v v )
- . . .
= [∆1g ′(b1) + ∆2g ′(b2)w (v v )g ′(b1) + ∆3g ′(b3)w (v v )g ′(b2)w (v v )g ′(b1) + . . .]V0
- [∆2g ′(b2) + ∆3g ′(b3)w (v v )g ′(b2) + ∆4g ′(b4)w (v v )g ′(b3)w (v v )g ′(b2) + . . .]V1
- [∆3g ′(b3) + ∆4g ′(b4)w (v v )g ′(b3) + ∆5g ′(b5)w (v v )g ′(b4)w (v v )g ′(b3) + . . .]V2
...
- [∆T −1g ′(bT −1) + ∆T g ′(bT )w (v v )g ′(bT −1)]VT −2
- [∆T g ′(bT )]VT −1 .
To write the learning rule in the usual form, we define errors δt recursively:
δt =
®
∆T w (o v )g ′(bT ) for t = T ,
∆t w (o v )g ′(bt ) + δt +1 w (v v )g ′(bt ) for 0 < t < T .
(9.24)
Then the learning rule (9.21a) takes the form
δw (v v ) = η
T∑
t =1
δt Vt −1 , (9.25)
just like Equation (6.9), or like the error recursion in Algorithm 4. The factor w (v v )g ′(bt −1)
in the recursion (9.24) gives rise to a product of many such factors in δt when T is
large, exactly as described in Section 7.2 for multilayer perceptrons. This means
158 SUPERVISED RECURRENT NETWORKS
that the training of recurrent networks suffers from unstable gradients, as back-
propagation of multilayer perceptrons does: if the factors |w (v v )g ′(bp )| are smaller
than unity, then the errors δt become very small when t becomes small (vanishing-
gradient problem). This means that the early states of the hidden neuron no longer
contribute to the learning, causing the network to forget what it has learned about
early inputs. When |w (v v )g ′(bp )| > 1, on the other hand, exploding gradients make
learning impossible. In summary, unstable gradients in recurrent neural networks
occur much in the same way as in multilayer perceptrons. The resulting difficulties
for training recurrent neural networks are discussed in more detail in Section 9.3,
see also Ref. [136].
A slight variation of the above algorithm (truncated backpropagation through
time) suffers less from the exploding-gradient problem. The idea is that the explod-
ing gradients are tamed by truncating the memory. This is achieved by limiting the
error propagation backwards in time, errors are computed back to T − τ and not
further, where τ is the truncation time [2]. Naturally this implies that long-time
correlations cannot be learnt.
The learning rules for the weights w (v x ) are obtained in a similar fashion. Equa-
tion (9.19a) yields the recursion
∂ Vt
∂ w (v x )
= g ′(bt )
Ä
xt + w (v v )
∂ Vt −1
∂ w (v x )
ä
. (9.26)
This looks just like Equation (9.23), except that Vt −1 is replaced by xt . As a conse-
quence we have
δw (v x ) = η
T∑
t =1
δt xt . (9.27)
The learning rule for w (o v ) is simpler to derive. From Equation (9.19b) we find by
differentiation w.r.t. w (o v ):
δw (o v ) = η
T∑
t =1
Et g ′(Bt )Vt = η
T∑
t =1
∆t Vt . (9.28)
How are the thresholds θ (v ) adjusted? Going through the above derivation we see
that we must replace Vt −1 in Equation (9.25) by −1. It works in the same way for the
output threshold.
In order to keep the formulae simple, we derived the algorithm for a single hidden
neuron, a single output neuron, and one-component inputs, so that we could
leave out the indices referring to different hidden neurons, and different input and
output components. If we consider several hidden and output neurons and multi-
dimensional inputs, the structure of the Equations remains exactly the same, except
BACKPROPAGATION THROUGH TIME 159
Algorithm 7 backpropagation through time
initialise weights w (v v )mn , w (v x )mn , w (o v )mn and thresholds θ (v )m , θ (o )m ;
for τ = 1, . . . , τmax do
choose input sequence x (1), . . . , x (T );
initialise Vj (0) = 0;
for t = 1, . . . , T do
propagate forward:
bi (t ) ←
∑
j w
(v v )
i j Vj (t − 1) +
∑
k w
(v x )
i k xk (t ) − θ
(v )
i and Vi (t ) ← g [bi (t )];
compute outputs:
Bi (t ) ←
∑
j w
(o v )
i j Vj (t ) − θ
(o )
i and Oi (t ) ← g [Bi (t )];
end for
compute errors for t = T (targets yi ):
∆i (T ) ← [yi − Oi (T )]g ′[Bi (T )] and δj (T ) ←
∑
i ∆i (T )w
(o v )
i j g ′[bj (T )];
for t = T, . . . , 2 do
propagate backwards: ∆i (t ) = [yi − Oi (t )]g ′[Bi (t )] and
δj (t − 1) ←
∑
i ∆
(t )
i w
(o v )
i j g ′(b
(t )
j ) +
∑
i δ
(t +1)
i w
(v v )
i j g ′(b
(t )
j );
end for
δw (v v )mn = 0, δw (v x )mn = 0, δw (o v )mn = 0, δθ (v ) = 0, δθ (o ) = 0;
for t = 1, . . . , T do
δw (v v )mn = δw (v v )mn + ηδm (t )Vn (t − 1);
δw (v x )mn = δw (v x )mn + ηδm (t )xn (t );
δw (o v )mn = δw (o v )mn + η∆m (t )Vn (t );
δθ (v )m = δθ (v )m − ηδm (t );
δθ (o )m = δθ (o )m − η∆m (t );
end for
adjust weights and thresholds: w (v v )mn = w (v v )mn + δw (v v )mn , . . .;
end for
160 SUPERVISED RECURRENT NETWORKS
for a number of extra sums over those indices:
δw (v v )mn = η
T∑
t =1
δ(t )m V (t −1)n (9.29)
δ(t )j =
®∑
i ∆
(T )
i w
(o v )
i j g ′(b
(T )
j ) for t = T ,∑
i ∆
(t )
i w
(o v )
i j g ′(b
(t )
j ) +
∑
i δ
(t +1)
i w
(v v )
i j g ′(b
(t )
j ) for 0 < t < T .
The second term in the recursion for δ(t )j is analogous to the error recursion in of
Algorithm 4. The time index t here plays the role of the layer index ` in Algorithm
4. A difference is that the weights in Equation (9.29) are the same for all time steps.
The algorithm is summarised in Algorithm 7.
In conclusion we see that backpropagation through time for recurrent networks is
similar to backpropagation for multilayer perceptrons. After the recurrent network is
unfolded to get rid of the feedback connections, it can be trained by backpropagation.
The time index t takes the role of the layer index `. Backpropagation through
time is the standard approach for training recurrent networks, despite the fact that
it suffers from the vanishing-gradient problem. The next Section describes how
improvements to the layout make it possible to more efficiently train recurrent
networks.
9.3 Vanishing gradients
Hochreiter and Schmidhuber [137] suggested to replace the hidden neurons of the
recurrent network with computation units that are specially designed to reduce the
vanishing-gradient problem. The method is referred to as long-short-term memory
(LSTM). The basic ingredient is the same as in residual networks (Section 7.4): short
cuts reduce the vanishing-gradient problem. For our purposes we can think of
LSTMs as units that replace the hidden neurons. For a detailed description of
LSTMs see Ref. [138].
Gated recurrent units [139] serve the same purpose as LSTMs, and they function
in a similar way. It has been argued that LSTMs outperform gated recurrent units for
certain tasks, but since they are simpler than LSTMs, the remainder of this Section
focuses on gated recurrent units. As illustrated in Figure 9.3, these units replace the
hidden neurons of a recurrent neural network [with update rule (9.19a)] by a new
VANISHING GRADIENTS 161
Figure 9.3: Gated recurrent unit. (a) The symbol refers to the standard recursion
(9.19a) for the hidden variable, as in the right panel of Figure 9.2. (b) To combat the
vanishing-gradient problem, the standard unit is replaced by a gated recurrent unit
(9.30).
rule:
zm (t ) = σ
 ∑
k
w (z x )mk xk (t ) +
∑
j
w (z v )m j Vj (t − 1)

, (9.30a)
rn (t ) = σ
 ∑
k
w (r x )nk xk (t ) +
∑
j
w (r v )n j Vj (t − 1)

, (9.30b)
hi (t ) = g
 ∑
k
w (h x )i k xk (t ) +
∑
j
w (h v )i j rj (t )Vj (t − 1)

, (9.30c)
Vi (t ) = [1 − zi (t )]hi (t ) + zi (t )Vi (t − 1) . (9.30d)
The first two Equations are referred to as gates because they regulate how the values
of the hidden state variables Vi are passed through the unit. Here σ(b ) is the sigmoid
function (6.19a). If zm (t ) = 0 for all m, and rn (t ) = 1 for all n, Equation (9.30)
coincides with the standard update rule (9.19a), save for the thresholds which were
left out in Equation (9.30). As explained above, the resulting recurrent network
suffers from the vanishing-gradient problem. This means that states in the past
history, V (0), V (1), . . . , have little effect upon the present state V (t ) for t  1. The
recurrent network forgets early inputs, so that it cannot learn from them.
If by contrast zm (t ) = 1 for all m, then the input is passed right through the
unit. Since ∂ Vi (t )/∂ Vj (t − 1) = δi j in this case, the gradients do not decrease as
the dynamics explores the history. However, since V (t − 1) = V (t ), the recurrent
network reproduces previous states. This is analogous to skipping layers in a residual
network, although comparison with Equation (7.35) reveals some differences in
detail.
For the recurrent network to learn in a meaningful way from past inputs, the
weights in Equation (9.30) (and the thresholds) are adjusted so that the gated recur-
rent unit operates between these two extreme limits. This is achieved by including
162 SUPERVISED RECURRENT NETWORKS
the weights and thresholds of the gated recurrent unit in the gradient-descent min-
imisation of the energy function (9.20). The learning rules for the weights (and
thresholds) are calculated in the same as before. Using Equation (9.19b) one has:
δw (a b )mn = η
T∑
t =1
∑
i
∆i (t )w (o v )i j
∂ Vj (t )
∂ w (a b )mn
, (9.31)
where w (a b ) stands for w (z x ), w (z v ), w (r x ), . . . . The derivatives ∂ Vj (t )/∂ w (a b )mn are eval-
uated using the chain rule and Equations (9.30).
It is instructive to inspect the values of zi (t ) and ri (t ) when the recurrent network
operates after training. Suppose that a unit assumes small values of zi (t ) and rj (t ).
This means that the update of the state variable Vi (t ) is determined entirely by the
instantaneous inputs xk (t ). Since the unit does not refer to the past history of the
hidden-state variables, it truncates the dynamical memory. In the opposite limit,
when zi (t ) ≈ ri (t ) ≈ 1, the unit can contribute to building up long-term dynamical
memory. These arguments suggest that a unit with just one gate may achieve the
same goal [140]:
zm (t ) = σ
 ∑
k
w (z x )mk xk (t ) +
∑
j
w (z v )m j Vj (t − 1)

, (9.32a)
hi (t ) = g
 ∑
k
w (h x )i k xk (t ) +
∑
j
w (h v )i j z j (t )Vj (t − 1)

, (9.32b)
Vi (t ) = (1 − zi )hi (t ) + zi (t )Vi (t − 1) . (9.32c)
This unit is easier to train because it has fewer parameters than the standard gated
recurrent unit (9.30). Yet, the additional parameters in Equation (9.30) may help to
represent and exploit correlations on different time scales. LSTMs have even more
parameters. How this tradeoff between ease of training and accurate representa-
tion of time correlations works out may well depend on the problem at hand. In
the following Section we describe recurrent networks with LSTM units, following
Refs. [134, 135].
9.4 Recurrent networks for machine translation
Recurrent networks are used for machine translation [134, 135]. How does this work?
The networks are trained using backpropagation through time. The vanishing-
gradient problem is dealt with by using LSTMs (Section 9.3).
How are the network inputs and outputs coded? For machine translation one
respresents all words in a given dictionary in terms of a code. The conceptually
simplest code is one where 100. . . represents the first word in the dictionary, 010. . . the
RECURRENT NETWORKS FOR MACHINE TRANSLATION 163
Figure 9.4: Schematic illustration of unfolded recurrent network for machine trans-
lation. The rectangular boxes represent the hidden states in the form of long-short-
term memory (LSTM) units, see Section 9.3. Sutskever et al. [134] found that the
network translates much better if the sentence is read in reverse order, from the end.
The tag <EOS> denotes the end-of-sentence tag. Here it denotes the beginning of
the sentence. After Figure 1 in Ref. [134].
164 SUPERVISED RECURRENT NETWORKS
second word, and so forth. The drawback of this scheme is that it does not account
for the fact that two given words might be more or less closely related to each other.
Other encoding schemes are described in Ref. [135].
Each input to the recurrent network is a vector with as many components as there
are words in the dictionary. A sentence corresponds to a sequence x 1, x 2, . . . , x T .
Each sentence ends with an end-of-sentence tag, <EOS>. This tag tells the network
when the input sentence ends. This is necessary because the number of words per
sentence is not fixed. Now suppose that a possible translation reads x ′1, x ′2, . . . , x ′T ′ .
The task of the network is to determine the probability p (x ′1, . . . , x ′T ′ |x 1, . . . x T ) that
the translation is correct. The idea is to estimate this probability recursively as
p (x ′1, . . . , x ′T ′ |x 1, . . . x T ) =
T ′∏
t =1
p (x ′t |x ′1, . . . , x ′t −1) . (9.33)
Sutskever et al. [134] describe how to achieve this with a recurrent network with
two hidden LSTMs. The network uses softmax outputs Ot , where j -th component
of Ot is interpreted as the probability that the j -th component of x ′t is the correct
word at position t in the translated sentence. As shown in Figure 9.4, the first LSTM
processes the input sentence x 1, . . . , x T , encoding its contents in the hidden states.
When the <EOS> tag appears, the second LSTM takes over, using the information
encoded by the first LSTM as an input. The second LSTM recursively outputs the
translated sentence word by word, using Equation (9.33).
There is a large number of recent papers on machine translation with recurrent
neural networks. Most studies are based on the training algorithm described in
Section 9.2, backpropagation through time. The different approaches mainly differ
in their network layouts. Google’s machine translation system uses a deep network
with several layers of hidden units arranged in a bidrectional layout [141]. In such
bidirectional networks, different hidden units are unfolded forward as well as back-
wards in time, as shown schematically in Figure 9.5. For several hidden and output
neurons and multidimensional inputs, the bidirectional network has the dynamics
Vi (t ) = g
Ä ∑
j
w (v v )i j Vj (t − 1) +
∑
k
w (v x )i k xk (t ) − θ (v )i
ä
,
Ui (t ) = g
Ä ∑
j
w (u u)i j Uj (t + 1) +
∑
k
w (u x )i k xk (t ) − θ (u)i
ä
, (9.34)
Oi (t ) = g
Ä ∑
j
w (o v )i j Vj (t ) +
∑
j
w (o u)i j Uj (t ) − θ (o )i
ä
.
It is natural to use bidirectional networks for machine translation because correla-
tions go either way in a sentence, forward and backwards. In German, for example,
the finite verb form is usually at the end of the sentence.
RESERVOIR COMPUTING 165
Figure 9.5: Schematic illustration of a bidirectional recurrent network . The network
consists of two hidden neurons, U (t ) and V (t ), that are unfolded in different ways.
After Figure 12 in Ref. [135].
Different schemes for scoring the accuracy of a translation are described by Lipton
et al. [135]. One difficulty is that there are often several different valid translations
of a given sentence, and the score must compare the machine translation with
all of them. More recent papers on machine translation usually use the so-called
BLEU score to evaluate the translation accuracy. The acronym stands for bilingual
evaluation understudy. The scheme was proposed by Papieni et al. [142]. It is argued
to evaluate the accuracy of a translation not too differently from humans.
9.5 Reservoir computing
An alternative to backpropagation through time for recurrent networks is reser-
voir computing [143]. This method has been used with success to predict chaotic
dynamics [144, 145] and rare transitions in stochastic bi-stable systems [146].
Consider input data in the form of a time series x (0), . . . x (T −1) of N -dimensional
vectors x (t ), and a corresponding series of M -dimensional targets y (t ). The goal is
to train the recurrent network so that its outputs O (t ) approximate the targets as
precisely as possible, by minimising the energy function H = 12
∑T −1
t =τ
∑M
i =1[Ei (t )]
2,
where Ei (t ) = yi (t ) − Oi (t ) is the output error, and τ represents an initial transient
that is disregarded.
Figure 9.6 shows the layout for this task. There are N input terminals. They are
connected with weights w (in)j k to a reservoir of hidden neurons with state variables
rj (t ). The reservoir is linked to M linear output units Oi (t ) with weights w (out)i j . The
reservoir itself is a large recurrent network with weights wi j . The update rule is
similar to Equation (9.19). There are many different versions that differ in detail
166 SUPERVISED RECURRENT NETWORKS
Figure 9.6: Reservoir computing (schematic). Not all connections are drawn. There
can be connections from all inputs to all neurons in the reservoir (gray), and from
all reservoir neurons to all output neurons.
[147]. One possibility is [146]
ri (t + 1) = g
Ä ∑
j
wi j rj (t ) +
N∑
k =1
w (in)i k xk (t )
ä
, (9.35a)
Oi (t + 1) =
∑
j
w (out)i j rj (t + 1) , (9.35b)
for t = 0, . . . , T − 1 with initial conditions rj (0).
The main difference to the training algorithms described in the previous Sections
of this Chapter is that the input weights w (in)j k and the reservoir weights w j k are
randomly initialised and then kept constant. Only the output weights w (out)j k are
trained. The idea is that the dynamics of a sufficiently large reservoir finds nonlin-
ear, high-dimensional representations of the input data [143], not unlike sparse
representations of binary classification problems embedded in a high-dimensional
space that become linearly separable in this way (Section 5.4).
In addition, and this is a difference to the problem described in Section 5.4, the
reservoir is a dynamical memory. This requires that the reservoir states faithfully
represent the input sequence: similar input sequences should yield similar reservoir
activations, provided one iterates it long enough. However, for random weights
the recurrent reservoir dynamics can be chaotic [85]. In this case, the state of the
reservoir after many iterations bears no relation to the input sequence. To avoid this,
one requires that the reservoir dynamics is linearly stable. Linearising the reservoir
RESERVOIR COMPUTING 167
dynamics (9.35a) gives
δr (t + 1) = D(t + 1)Wδr (t ) , (9.36)
where D(t + 1) is a diagonal matrix with entries Di i (t + 1) = g ′[bi (t + 1)], and where
bi (t + 1) =
∑
j wi j rj (t ) +
∑
k w
(in)
i k xk (t ). Whether or not δr grows is then determined
by the singular values of Jt = D(t )WD(t − 1)WD(1)W, as in Section 7.2. The singular
values of Jt are denoted by Λ1(n) ≥ Λ2(n) ≥ · · · . At large times, when driven with a
stationary input series, the maximal Lyapunov exponent λ1 = limt →∞ t −1 log Λ1(t )
must be negative to ensure that the reservoir dynamics is stable:
λ1<0 . (9.37)
Sometimes the stability criterion is quoted in terms of the maximal eigenvalue of
W. If one uses tanh activation-functions and if the local fields bi (t ) remain small,
then the diagonal elements of D(t ) remain close to unity. In this case the stability
condition for the reservoir dynamics is given by the weight matrix W alone. In
general the singular values of W are different from its eigenvalues, but what matters
here is that the maximal singular value of Wt approaches et λ|ν1|, where ν1 is the
eigenvalue of W with largest modulus (Exercise 9.8).
For inputs with long time correlations, the reservoir must not decay too quickly,
so that it can represent the dynamical correlations in the input sequence. There is
no precise mathematical theory that says how to optimise the reservoir. In practice
one adjusts the maximal Lyapunov exponent by trial and error. Its optimal value
depends on the properties of the input series, for instance on its time correlations.
There are many different recipes for how to set up a reservoir. Usually the reser-
voir is sparse, with only a small fraction of weights non-zero. The elements of the
resulting weight matrix W are rescaled to adjust λ1 [145]. The weight matrix W(in)
is commonly taken to be a full matrix, and its elements are drawn from the same
distribution as those of the reservoir. Lukosevicius [147] gives a practical overview
over different schemes for setting up reservoir computers.
For time-series prediction, one trains the network on an input series x (0), . . . ,
x (T − 1) with targets y (t ) = x (t ). After training, one continues to iterate the network
dynamics with inputs x (T + k ) = O (T + k ) to predict x (T + k + 1), for k = 0, 1 , 2, . . . .
Using Equation (9.35), we see that the reservoir dynamics takes the form ri (t + 1) =
g
 ∑
j

wi j +
∑N
k =1 w
(in)
i k w
(out)
k j ]rj (t )

during the prediction phase. In order to represent
complex spatio-temporal patterns, Pathak et al. [144] found it necessary to employ
several parallel reservoirs. Lim et al. [146] used a chain of reservoirs, replacing
Equation (9.35a) by a set of nested update rules.
Tanaka et al. [148] describe different physical implementations of reservoir com-
puters, based on electronic RC-circuits, optical cavities or resonators, spin-torque
oscillators, or mechanical devices.
168 SUPERVISED RECURRENT NETWORKS
9.6 Summary
It is sometimes said that recurrent networks learn dynamical systems, while multi-
layer perceptrons learn input-output maps. This emphasises a difference in how
these networks are usually used, but we should bear in mind that they are trained
in similar ways, by backpropagation. Neither is it given that the tasks must differ:
recurrent networks are also used to learn time-independent data. It is true, however,
that tools from dynamical-systems theory help to analyse the dynamics of recurrent
networks [136, 149].
Recurrent neural networks can be trained by stochastic gradient descent after
unfolding the network in time, to get rid of feedback connections. This algorithm
suffers from the vanishing-gradient problem. To overcome this difficulty, the hidden
neurons in the recurrent network are replaced by composite units that are trained
to sometimes act as residual connections, passing the signal right through, and
sometimes as non-linear units that can learn correlations in a meaningful way.
There are different versions, long-short-term memory units and gated recurrent
units. They all work in similar ways. Succesful layouts for machine translation use
deep bidirectional networks with layers of LSTMs.
An alternative scheme is reservoir computing, where a large reservoir of hidden
neurons is used to represent correlations in the input data, and a set of linear
output units is trained to learn the original sequence from such representations.
The idea is that it is easier to learn intricate features of an input sequence from a
high-dimensional, sparse representation of the data.
9.7 Further reading
The training of recurrent networks is discussed in Chapter 15 of Ref. [2], see also
Refs. [150, 151]. Recurrent backpropagation is described by Hertz, Krogh and Palmer
[1], for a very similar network layout. How LSTMs combat the vanishing-gradient
problem is explained in Ref. [138]. For a recent review of recurrent neural networks,
see Ref. [135]. This webpage [152] gives a very enthusiastic overview about what
recurrent networks can do. A more pessimistic view is expressed in this blog. For a
review of reservoir computing, see Ref. [143].
PART III
LEARNING WITHOUT LABELS
170 LEARNING WITHOUT LABELS
Chapters 5 to 9 describe supervised learning of labeled data with neural networks.
The network is trained to reproduce the correct labels (targets) for each input pattern.
The analysis of unlabeled data requires different methods. Machine learning can
be applied with success to large data sets of high-dimensional unlabeled data. The
machine can for instance mark patterns that are typical for the given distribution,
or detect outliers. Other tasks are to detect similarity, to find clusters in the data
(Figure 10.1), and to determine non-linear, low-dimensional representations of
high-dimensional data. More recently, such unsupervised learning algorithms have
been used to generate synthetic data, patterns that resemble those in a certain data
set. One possible application is data-set augmentation for supervised learning.
Learning without labels is called unsupervised learning , because there are no
targets that tell the network whether it has learnt correctly or not. There is no obvious
function to fit, or dynamics to learn. Instead the network organises the input data
in relevant ways. This requires redundancy in the input data. It is sometimes said
that unsupervised learning corresponds to learning without a teacher, implying
that the network itself discovers suitable ways of organising the input data. This is
inaccurate, because unsupervised networks usually operate with a pre-determined
learning rule, like Hopfield networks.
Part III of this book is organised as follows. Chapter 10 describes unsupervised-
learning algorithms, starting with unsupervised Hebbian learning to detect famil-
iarity and similarity of input patterns (Sections 10.1 and 10.2). Related algorithms
can be used to find low-dimensional non-linear projections of high-dimensional
input data (self-organising maps, Section 10.3). In Section 10.4, these algorithms
are compared and contrasted with a standard unsupervised clustering algorithm,
K -means clustering. Section 10.5 introduces radial basis-function networks, they
learn using a hybrid algorithm with supervised and unsupervised elements. Section
10.6 explains how to use layered feed-forward networks for unsupervised learning.
Chapter 11 deals with learning tasks that lie in between supervised and unsu-
pervised learning, problems where the machine receives partial feedback on its
performance in the shape of a penalty or a reward. Such tasks can be solved by
reinforcement-learning algorithms that allow a neural network or more generally
an agent to learn to reproduce outputs that tend to give positive rewards. Several
algorithms for reinforcement learning are described, the associative reward-penalty
algorithm (Section 11.1), temporal difference learning (Section 11.2), and Q -learning
(Section 11.3). The Q -learning algorithm is illustrated by demonstrating how it al-
lows two players to learn to compete in the board game tic-tac-toe.
Figure 10.1: Supervised learning finds decision boundaries for labeled data, like
in the binary classification problem shown on the left. Unsupervised learning can
find clusters in the input data (right).
Figure 10.2: Neural net for unsupervised Hebbian learning, with a single linear
output unit that has weight vector w . The network output is denoted by y in this
Chapter.
