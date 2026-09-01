**Kaynak:** [[00_Context/0_Mehlig_Machine_Learning/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

11 Reinforcement learning
Supervised learning requires labeled data, where each input comes with a target
the network is supposed to learn. Unsupervised learning, by contrast, does not
require labeled data. Reinforcement learning lies between these extremes. The term
reinforcement describes the principle of learning by means of a reward function.
This function assigns penalties or rewards to the network output, depending on how
the output relates to the learning goal. For a neural network with a vector of outputs,
the reward function could be
r =
®
+1 reward if all outputs correct ,
−1 penalty otherwise .
(11.1)
The goal is to learn to produce outputs that receive a reward more frequently than
those that trigger a penalty. We say that rewarded outputs are reinforced. The
feedback may be random, given by a distribution initially unknown to the network.
The reward function reflects the learning goal.The training process as well as
the learning outcome depend crucially on this function. Suppose one replaces the
reward function (11.1) by the more lenient alternative: r = 1 if at least one output is
correct, and r = −1 otherwise. Naturally this leads to more errors, possibly not a
good idea if the goal is to teach a robot to fly.
One distinguishes two different types of reinforcement problems, associative and
non-associative tasks [179]. An example for a non-associative task is the N -armed
bandit problem [16]. Imagine N slot machines with different reward distributions,
initially unknown to the player. Given a finite amount of money, the question is in
which order to play the machines so as to maximise the overall profit. The dilemma
is whether to stick with a machine that yields a good reward, or whether to try out
other machines that may yield a low reward initially, but could give much higher
rewards eventually (exploit-versus-explore dilemma). In this type of problem, the
player receives only the reinforcement signal, no other inputs. In associative tasks,
by contrast, the agent receives inputs, or stimuli, and it should learn to associate
with each stimulus the output that yields the highest reward. Such tasks occur for
instance in behavioural psychology, where the problem is to discriminate between
different stimuli, and to associate the right behaviour with each stimulus.
In general, such associative tasks can be described as sequential decision processes
(Figure 11.1), where an agent explores a sequence of states s 0, s 1, s 2, . . . through a
sequence of actions a 0, a 1, a 2, . . .. Consider for instance a motile microorganism in
the turbulent ocean that should swim to the water surface as quickly as possible
[180]. It determines its state by observing the local environment. The microorganism
might measure local strain and vorticity of the flow. The environment provides a
Figure 11.1: Sequential decision process (schematic). After Figure 3.1 in Ref. [16].
reinforcement signal (the distance to the surface for example), and the organism
determines which action to take, given its state and the reinforcement signal. Should
it turn, stop to swim, or accelerate? The organism learns to associate actions with
certain states that maximise the reward. This sounds quite similar to associating
optimal outputs with stimuli. A conceptual difference is that the action of the agent
modifies the environment: its actions take it to a different place in the turbulent
flow, with different vorticity and different strain. A second point is that the reward
to an action may not be immediate. In this case the challenge is to credit actions
that optimise the expected future reward, given the information collected so far.
This is the credit-assignment problem [181].
There are two different kinds of associative tasks: continuous and episodic ones.
In continuous tasks, the intertwined sequences of states and actions have no natural
end, so that one must either terminate the sequence in an ad-hoc fashion or intro-
duce a weighting factor to ensure that the expected future reward remains finite.
In episodic tasks, by contrast, the learning is divided into episodes that terminate
after a finite number of steps. An example is to learn a strategy for winning a board
game. In this case, each episode corresponds to a round of the game, and the re-
ward is incurred at the end of each episode. The number of steps per round, the
episode length T , may vary from round to round. In order to estimate the expected
reward one usually needs many episodes. A second, very simple example is the
stimulus problem described above, where the states (stimuli) are independent from
the actions. Each episode consists of only one step, so that T = 1. In response to a
randomly chosen state s 0, the agent learns to perform the action a 0 that maximises
the immediate reward. This can be achieved by the associative reward-penalty
algorithm (Section 11.1). It uses stochastic neurons with weights that are trained by
gradient ascent to maximise the expected immediate reward.
To estimate the expected future reward when T > 1, one must use a different
method, usually temporal difference learning. It allows to estimate the expected
future reward, after T steps, by breaking up the learning into time steps t = 1, . . . , T .
198 REINFORCEMENT LEARNING
The idea is that it is better to adjust the prediction of a future reward as one iterates,
rather than waiting for T iterations before updating the prediction. In temporal
difference learning one expresses the reward at time T in terms of differences at
time steps t + 1 and t [182].
Temporal difference learning builds up a lookup table that summarises the best
actions for each state, the Q -table Q (s , a ). Given Ns states s and Na possible actions
a , Q (s , a ) is a Ns × Na table. Its elements contain the expected future reward for
each state-action pair. To implement temporal difference learning, one must adopt
a policy or strategy. It specifies for each state which action is taken. In total there
are N Nsa possibilities of assigning actions to states. When there are many states and
actions it quickly becomes impossible to determine the best strategy by simple
sampling, because there are too many to consider.
The advantage of temporal difference learning and related algorithms is that they
do not rely on the evaluation of all possible policies. Instead, the policy is updated
using iterated estimates of the Q table. We write Qt for the estimate at time step t .
There are different ways of deriving a policy from a Q -table. The greedy policy is a
deterministic policy, it corresponds to choosing the action that corresponds to the
largest Q -element in a given row of the Q -table: a = argmaxa ′Qt (s , a ′). This policy
maximises the current estimate of the future reward.
Stochastic policies are often better, in particular for non-stationary or stochastic
environments, because they allow the agent to explore potentially better alterna-
tives. Also, for a deterministic environment, a deterministic policy may lead to
cycles. This can be avoided with a stochastic policy. One example for a stochastic
policy is the "-greedy policy. With probability 1 − ", it chooses the greedy action
a = argmaxa ′Qt (s , a ′), but with a small probability " it takes a suboptimal action.
Another example is the softmax policy, where argmax is replaced by the softmax
function (Section 7.5). The softmax policy can handle actions described in terms of
continuous variables.
In general the policy can change as the algorithm is iterated. A common choice is
to reduce the parameter " in the "-greedy policy as one iterates, so that the algorithm
converges to the optimal deterministic policy.
Q -learning is an approximation to the temporal difference algorithm. In Q -
learning, the Q -table is updated assuming that the agent always follows the greedy
policy, even though it might actually follow a different policy. Q -learning allows
agents to learn to play strategic games [183]. A simple example is the game of tic-tac-
toe (Section 11.3). Games such as chess or go require to keep track of a very large
number of states, so large that Q -learning in its simplest form becomes impractical.
An alternative is to represent the state-action mapping by a deep neural network
[184].
ASSOCIATIVE REWARD-PENALTY ALGORITHM 199
11.1 Associative reward-penalty algorithm
The associative reward-penalty algorithm uses stochastic neurons that are trained
to maximise the average immediate reward. In Chapters 5 to 9 the output neurons
were deterministic functions of their inputs. For reinforcement learning, by contrast,
it is better to use stochastic neurons. The idea is the same as in Chapters 3 and
4: stochastic neurons can explore a wider range of possible states which may in
the end lead to a better solution. The state yi of neuron i is given by the stochastic
update rule (3.1):
yi =
®
+1 with probability p (bi ) ,
−1 with probability 1 − p (bi ) ,
(11.2)
where bi = w i · x is the local field (no thresholds), and p (b ) = (1 + e −2β b )−1. Recall
that the parameter β −1 is the noise level. Since the outputs can assume only two
values, yi = ±1, Equation (11.2) describes a binary stochastic neuron.
To illustrate the associative reward-penalty algorithm for a single binary stochas-
tic neuron, consider an agent experiencing different stimuli x drawn with equal
probability from a distribution of inputs. Upon receiving stimulus x , the stochastic
neuron outputs either y = 1 or y = −1. Given x and y , the environment provides a
stochastic reward r (x , y ) = ±1 drawn from a reward distribution preward(x , y ):
r (x , y ) =
®
+1 with probability preward(x , y ),
−1 with probability 1 − preward(x , y ).
(11.3)
The goal is to adjust the weights so that the neuron produces outputs that are
rewarded with high probability. Figure 11.2(a) shows an example with just two
stimuli, x (1) = [1 , 0]T and x (2) = [1, 1]T. The numerical values of preward(x , y ) indicate
that the expected reward is maximised when the neuron outputs y = 1 in response
to x (1), and y = −1 in response to x (2). Since x (1) and x (2) occur with equal probability,
the maximal expected reward is
rmax = 12

〈r (x (1), +1)〉reward + 〈r (x (2), −1)〉reward

= 0.1 . (11.4)
Here we used 〈r (x , y )〉reward = preward(x , y )−[1−preward(x , y )], as well as the numerical
values for preward(x , y ) given in Figure 11.2(a).
Figure 11.2 (b) shows the contingency space [185] of the problem, representing
the inputs x in a plane with coordinates preward(x , +1) and preward(x , −1). It is easier
to learn to associate the correct output with inputs that lie in the shaded regions
where preward(x , +1) > 12 and preward(x , −1) < 12 , or vice versa. In this case one can solve
the problem by fixing y = +1 and sampling preward(x , +1) for all x . If preward(x , +1) > 12
then y = +1 is the optimal output for x , otherwise it is y = −1. This strategy cannot
200 REINFORCEMENT LEARNING
preward y =−1 y =+1
x (1) = [1, 0]T 0.6 0.8
x (2) = [1, 1]T 0.3 0.1
Figure 11.2: Conditioning by reward [185]. A stochastic neuron responds to stimuli
x (1) and x (2) with different outputs, y = ±1 and receives the reward (11.1): r = +1
with probability preward(x , y ), and r = −1 with probability 1 − preward(x , y ). The goal
is to always respond with the output that maximises the expected reward. Table:
reward distribution. Panel (a): contingency space [185] of the problem, representing
each input x in a plane with coordinates preward(x , +1) and preward(x , −1). (b) Reward
versus iteration number of the associative reward-penalty rule (11.10). Schematic,
based on simulations by Phillip Graefensteiner averaged over 100 independent
realisations.
be used outside the shaded region. For example, if both reward probabilities are
larger than one half, it is necessary to sample both preward(x , −1) and preward(x , +1)
sufficiently often in order to determine which one is larger: one must find the greater
of two goods according to Barto [185]. This illustrates the fundamental dilemma of
reinforcement learning: an output that appears at first to yield a high reward may
not be the optimal one in the long run. To find the optimal output it is necessary
to estimate both reward probabilities precisely. This means that one must try all
possible outputs frequently, not only the one that appears to be optimal at the
moment.
To derive a learning rule we need a cost function. One possibility is to use the
average of the immediate reward for a given stimulus x ,
〈r 〉 =
∑
y1=±1,...,yM =±1
r (x , y )P (y |x ) reward . (11.5)
Here 〈· · · 〉reward is an average over the response of the environment, determined by
ASSOCIATIVE REWARD-PENALTY ALGORITHM 201
the reward distribution preward(x , y ). It is assumed that the reward distribution is
stationary. Furthermore,
P (y |x ) =
M∏
i =1
®
p (bi ) for yi = 1 ,
1 − p (bi ) for yi = −1
(11.6)
is the probability that the network produces the output y = [y1, . . . , yM ]T given the
local field bi =
∑
j wi j x j .
To find the maximum of 〈r 〉 one uses gradient ascent on 〈r 〉, analogous to max-
imising the log-likelihood for Boltzmann machines (Section 4.4), and to gradient
descent on the energy function for perceptrons in supervised learning (Chapter 6).
The gradient is computed by applying the chain rule, as usual. The calculation is
similar to the one for Boltzmann machines (Chapter 4). After some algebra (Exer-
cise 11.2) one finds for given x and y that the derivative of P (y |x ) with respect to
wmn equals P (y |x ) β [ym − tanh(β bm )]xn . We conclude that
∂ 〈r 〉
∂ wmn
= β r (x , y )

ym − tanh(β bm )

xn (11.7)
with bm =
∑
j wm j x j , as before. The average is taken over the output of the network
and over the reward distribution, just as in Equation (11.5).
Now we seek a learning rule that increases the expected immediate reward 〈r 〉.
In other words, we require that the weight increment δwmn is an unbiased of the
gradient of the expected immediate reward [179]:
〈δwmn 〉 = η
∂ 〈r 〉
∂ wmn
. (11.8)
Comparison with Equation (11.7) leads to:
δwmn = αr [ym − tanh(β bm )]xn , (11.9)
with α = ηβ . This learning rule belongs to a set of more general rules derived by
Williams [179]. It is plausible that the rule (11.9) converges to a steady state, because
the weight increments approach zero as the network learns to produce the output
maxy {preward(x , y )}, independent of y , so that y − 〈y 〉 averages to zero. But there is
no proof of convergence.
An alternative is the associative reward-penalty rule [185]:
δwmn = α
® 
ym − tanh(β bm )

xn for r = +1 ,
−δ

ym + tanh(β bm )

xn for r = −1 ,
(11.10)
202 REINFORCEMENT LEARNING
with 0 < δ  1. For r = 1, the learning rules (11.9) and (11.10) give the same weight
increment, but for r = −1 the increments are different. With rule (11.10) the agent
learns primarily from positive feedback. One advantage of this asymmetric rule is
that it can be proven to converge in the limit of δ → 0 [185]. In general, however, the
convergence becomes quite slow when δ is small. Figure 11.2(c) shows simulation
results for the immediate reward, averaged over 100 independent realisations of the
learning process, versus the iteration number of the rule (11.10). We see that the
average immediate reward approaches a steady state. The steady-state average of
the immediate reward is smaller than rmax = 0.1, but as expected it approaches rmax
as δ decreases.
The averaged learning curves still exhibit substantial fluctuations. They reflect
significant variations within and between individual realisations. Furthermore,
the convergence proof assumes that the input patterns are linearly independent.
This means that the number of patterns cannot exceed the input dimension N .
Associative reinforcement problems with linearly dependent inputs can be solved
by embedding the input patterns in a higher-dimensional input space (Section 5.4).
The associative reward-penalty rule illustrates how an agent can use a reinforce-
ment signal to maximise the expected immediate reward. The algorithm could
for instance be a model for how an animal learns to respond in different ways to
different stimuli.
Yet there are many problems where the reward is not immediate. When we play
chess, the reward comes at the end of the game, for example r = +1 if we won, r = −1
if we lost, and r = 0 if the game ended in a draw. More generally, an agent navigating
a complex environment should not only consider immediate rewards, but also how
a certain action may affect possible future rewards. One way of estimating future
rewards for such tasks is temporal difference learning, discussed next.
11.2 Temporal difference learning
How does temporal difference learning allow an agent to optimise its expected future
reward? For an episodic task, given an episode with T steps, the agent visits the
finite sequence of states s 0, . . . , s T −1, and collects the rewards r1, . . . , rT . The future
reward is defined as
Rt =
T −1∑
τ=t
rτ+1 . (11.11)
Continuous tasks, by contrast, do not have defined end points. Since the sum in
(11.11) might diverge as T → ∞, it is customary to introduce a weighting factor
TEMPORAL DIFFERENCE LEARNING 203
0 ≤ γ ≤ 1 in the sum over rewards:
Rt =
∞∑
τ=t
γτ−t rτ+1 . (11.12)
The weighting factor reduces the contribution of the far future to the estimate.
Smaller values of γ give more weight to the immediate future, and the limit γ → 0+
corresponds to Rt = rt +1. The sum in Equation (11.12) is called future discounted
reward.
We use a neural network with input s t to estimate Rt . In general, the network
output is a non-linear function of the inputs, parameterised by weights that could
be arranged into several layers of hidden neurons (Part II). The simplest choice is to
use a single linear unit, just as in Equation (5.19):
O (s t ) = w · s t . (11.13)
The components w j of the weight vector w are determined so that the network
output O (s t ) approximates Rt . This can be achieved by minimising the energy
function
H = 12
T −1∑
t =0
[Rt − O (s t )]2 (11.14)
using gradient descent. The corresponding learning rule reads:
δwm = α
T −1∑
t =0
[Rt − O (s t )]
∂ O
∂ wm
. (11.15)
The idea of temporal difference learning [182] is to express the error Rt − O (s t ) as a
sum of temporal differences:
Rt − O (s t ) =
T −1∑
τ=t
[rτ+1 + O (s τ+1) − O (s τ)] , (11.16)
where O (s T ) is defined to be zero, O (s T ) ≡ 0. Using the gradient-descent rule (11.15)
one obtains
δw = α
T −1∑
t =0
T −1∑
τ=t
[rτ+1 + O (s τ+1) − O (s τ)]s t . (11.17)
The terms in this double sum can be summed in a different way, as illustrated in
Figure 11.3:
δw = α
T −1∑
τ=0
τ∑
t =0
[rτ+1 + O (s τ+1) − O (s τ)]s t . (11.18)
204 REINFORCEMENT LEARNING
Figure 11.3: The double sum in Equation (11.17) extends over the terms indicated
in black. The corresponding terms can be summed in two ways, as illustrated in the
two panels, for T = 6.
Exchanging the summation variables and introducing a weighting factor 0 ≤ λ ≤ 1
gives:
δw = α
T −1∑
t =0
[rt +1 + O (s t +1) − O (s t )]
t∑
τ=0
λt −τs τ . (11.19)
The purpose of the weighting factor is to reduce the weight of past states in the
sum [186]. Alternatively one may update w (and hence O ) at each time step, with
increment [182]
δw t = α[rt +1 + O (w t ,s t +1) − O (w t ,s t )]
t∑
τ=0
λt −τs τ . (11.20)
This is the temporal-difference learning rule, also called TD(λ) [186]. Temporal
difference learning allows a machine to learn the board game backgammon [17, 187],
using a deep layered network and backpropagation (Section 6.1) to determine the
weights.
The rule TD(0) is similar to the learning rule (6.6a) with target rt +1 + O (w t ,s t +1).
It allows to learn one-step prediction of the time series. Using Equation (11.13), we
see that the TD(0)-learning rule corresponds to the following learning rule for the
output O :
Ot +1(s t ) = Ot (s t ) + α[rt +1 + Ot (s t +1) − Ot (s t )] . (11.21)
The subscript t in Ot emphasises that the output function is updated iteratively . The
learning rule (11.21) applies to estimating the future reward (11.11) for episodic tasks.
If the environment is stationary, one may average over many consecutive episodes,
TEMPORAL DIFFERENCE LEARNING 205
Figure 11.4: Sequence of states s t in sequential reinforcement learning. The action
a t leads from s t to s t +1 where the agent receives reinforcement rt +1. The Q -table
with elements Q (s t , a t ) estimates the future discounted reward.
using the final weights from episode k as initial weight values for episode k + 1.
For continuous tasks, the corresponding rule for estimating the future discounted
reward (11.12) reads:
Ot +1(s t ) = Ot (s t ) + α[rt +1 + γOt (s t +1) − Ot (s t )] . (11.22)
Returning to the problem outlined in the beginning of this Chapter, consider an
agent exploring a complex environment. The task might be to get from location
A to location B as quickly as possible, or expending as little energy as possible. At
time t the agent is at position x t with velocity v t . These variables as well as the
local state of the environment are summarised in the state vector s t . Given s t , the
agent can act in certain ways: it might for example slow down, speed up, or turn.
These possible actions are summarised in a vector a t . At each time step, the agent
takes the action a t that optimises the expected future discounted reward (11.12),
given its present state s t . The estimated expected future reward for any state-action
pair is summarised in a table: the Q -table with elements Qt (s t , a t ) is the analogue
of Ot (s t ). Different rows of the Q -table correspond to different states, and different
columns to different actions. The TD(0) rule for the Q table reads:
Qt +1(s t , a t ) = Qt (s t , a t ) + αt

rt +1 + γQt (s t +1, a t +1) −Qt (s t , a t )

. (11.23)
This algorithm is called SARSA, because one needs s t , a t , rt +1, s t +1, and a t +1 to
update the Q -table (Figure 11.4). A difficulty with the rule (11.23) is that it depends
not only on the present state-action pair [s t , a t ], but also on the next action a t +1,
and thus indirectly upon the policy. Sometimes this is indicated by writing Qπ for
the Q -table given policy π.
206 REINFORCEMENT LEARNING
Algorithm 11 Q -learning for episodic task with the "-greedy policy
initialise Q ;
for k = 1, . . . , K do
initialise s 0;
for t = 0, . . . , Tk − 1 do
choose a t from Q (a t , s t ) according to "-greedy policy;
compute s t +1 and record rt +1;
update Q (s t , a t ) ← Q (s t , a t ) + α[rt +1 + maxa Q (s t +1, a ) −Q (s t , a t )];
end for
end for
11.3 Q -learning
The Q -learning rule [188] is an approximation to Eq. (11.23) that does not depend
on a t +1. Instead one assumes that the next action, a t +1, is the optimal one:
Qt +1(s t , a t ) = Qt (s t , a t ) + αt

rt +1 + γ maxa Qt (s t +1, a ) −Qt (s t , a t )

, (11.24)
regardless of the policy that is currently followed. Although Equation (11.24) does
not refer to any policy, the learning outcome nevertheless depends on it, because
the policy determines the sequence of states and actions [s t , a t ]. For the greedy
policy, Eq. (11.24) is equivalent to (11.23), but in general the two algorithms differ,
and converge to different solutions. While the Q -table converges to the expected
future reward of the greedy policy in Q -learning, for SARSA it converges to the
expected future reward corresponding to the policy used in training. This can be
an advantage when performance during training is important, for example when
training an expensive robot that should not crash too often, or for a small bird that
learns flying by doing. Q -learning is simpler, and can be used for problems where
the final strategy based on argmaxa ′Q (s , a ′) matters, but where the reward during
training is less important. Examples are board games where only the quality of
the final strategy counts, not how often one loses during training. In summary,
Q -learning is simpler, and if one takes " → 0 during training, it yields the optimal
strategy as well as SARSA, but it may give lower rewards during training.
The Q -learning algorithm is summarised in Algorithm 11. Usually one sets the ini-
tial entries in the Q -table to large positive values (optimistic initialisation), because
this prompts the agent to explore many different actions, at least in the beginning.
If the agent is in state s t , it chooses the action a t from Qt (s t , a t ) according to the
given policy. For the "-greedy policy, for example, the agent picks a random action
from the corresponding row of the Q -table with probability ". With probability 1 − "
Q -LEARNING 207
it chooses the action a t that yields the largest1 Qt (s t , a t ) given s t . The choice of ac-
tion a t determines the next state s t +1, and this in turn allows to update the Q -table:
given the new state s t +1 resulting from the action a t , one updates Qt (s t , a t ) using
Equation (11.24). For episodic tasks one puts γ = 1 in (11.24), and one averages over
many episodes using the outcome QTk from episode k as initial condition for the
Q -table for episode k + 1. Each new episode can start with a new initial state s 0. It
helps the exploration process if s 0 is one of the states that are rarely visited by the
learning algorithm.
When the sequence s 0, s 1, s 2, . . . is a Markov chain (Section 4.2), then the Q -
learning algorithm can be shown [186, 189] to converge if one uses a time-dependent
learning rate αt that satisfies
∞∑
t =0
αt = ∞ and
∞∑
t =0
α2t < ∞ . (11.25)
Often Q -learning is implemented in combination with the "-greedy policy. This
policy shares an important property with the associative reward-penalty algorithm
with stochastic neurons: stochasticity allows for a wider range of responses, some
of which may turn out beneficial in the long run. When " is very small, the agent
picks the action that appears optimal. As a consequence, suboptimal Q -elements
are sampled less frequently and are therefore subject to larger errors. Therefore it is
advantageous to begin with a relatively large value of ". It is customary to decrease
" as the algorithm is iterated, because this accelerates convergence to the greedy
policy.
It is important to bear in mind that the learning outcome depends on the reward
function, as mentioned above. In general it is a good idea to analyse how the optimal
strategy changes as one varies the reward function. Sometimes we are faced with
the inverse problem: consider how a microorganism swimming in the turbulent
ocean responds to different stimuli. How was this behaviour shaped by genetic
evolution? Which quantity was optimised? Is it most important to reduce the energy
cost for propulsion? Or is it more important to avoid predation?
Another challenge is to determine suitable states and actions. An agent navigating
a complex environment may have a continuous range of positions and velocities,
and may experience continuous-valued signals from the environment. To represent
the corresponding states in a Q -table it is necessary to discretise. To this end one
must determine suitable ranges and resolutions of these variables, and for the
actions. If there are too many states and actions, Q -learning becomes inefficient.
This is referred to as the curse of dimensionality [16, 190].
1If several elements in the relevant row have the same maximal value then any one of them is
chosen with equal probability.
208 REINFORCEMENT LEARNING
Let us see how Q -learning works for a very simple example, for the associative
task described in Fig. 11.2. One episode corresponds to computing the output of the
neuron given its initial state, so T = 1. There is no sequence of states, and the task is
to estimate the immediate reward. In this case the learning rule (11.24) simplifies to
δQ (s , a ) = α

r (s , a ) −Q (s , a )

. (11.26)
Since each episode consists only of a single time step, we dropped the subscript t .
Also, the term maxa Q (s t +1, a ) from Equation (11.24) does not appear in (11.26) since
Q estimates the immediate reward. There are only two states in this problem, s = x (1)
and s = x (2), and the possible actions are a = ±1. In other words, Ns = Na = 2 in this
case. In each round, one of the states is chosen randomly, with equal probability.
The action is determined from the current estimate of the immediate reward as
argmaxa Q (s , a ) with probability 1 − ", and uniformly randomly otherwise. These
steps are iterated over many iterations (episodes), using the outcome of episode k as
initial condition for episode k + 1. The rule (11.26) describes exponential relaxation
to the target for small learning rate α. In this limit, Equation (11.26) is approximated
by the stochastic differential equation
d
dk Q (s , a ) = α f" (s , a ) [r (s , a ) −Qk (s , a )] , (11.27)
where f" (s , a ) is the stationary frequency with which the state-action pair [s , a ] is
visited using the "-greedy policy:
f" (s , a ) =
1
Ns
®
1 − " + "Na if a = argmaxa ′Qk (s , a ′) ,
"
Na otherwise.
(11.28)
The frequency is normalised to unity, 1 =
∑
s ,a f" (s , a ). Averaging the solution of
Equation (11.27) with initial condition Q0(s , a ) = 1 over the reward distribution gives:
〈Qk (s , a )〉 = exp[−αf" (s , a )k ]+αf" (s , a )
∫ k
0
dk ′ 〈r (s , a )〉exp[f" (s , a )α(k ′−k )] . (11.29)
For " > 0, Qt (s , a ) converges on average to

Q ∗(x (1), −1) Q ∗(x (1), +1)
Q ∗(x (2), −1) Q ∗(x (2), +1)

=

0.2 0.6
−0.4 −0.8

. (11.30)
Here we used that 〈r (x , y )〉 = 2preward(x , y ) − 1, as well the reward probabilities in
Figure 11.2. Figure 11.5 illustrates how the rate of convergence depends on the value
of the parameter ". For " = 1, all state-action pairs are visited and evaluated equally
Q -LEARNING 209
Figure 11.5: Q -learning for the task described in Figure 11.2. (a) Entries of the
Q -table versus the number of iterations of Equation (11.26) for α = 0 .01 and " = 1.
(b) Same, but for " = 0.05. Schematic, based on simulations by Navid Mousavi,
averaged over 5000 independent realisations of the learning curve.
often, independently of the present elements of the Q -table. Equations (11.28) and
(11.29) show that all elements of the Q -table converge to their steady-state values
at the same rate, equal to α4 . For small values of ", by contrast, the algorithm tends
to take optimal actions, argmaxa ′Qk (s , a ′). Therefore it finds the optimal elements
of the Q -table more quickly, at the rate α2 . However, the other elements converge
much more slowly. Initially, the theory (11.29) does not apply because optimal and
suboptimal Q -elements in each row of the Q -table are not well separated. As a result
the decay rates of all elements are similar at first. But once optimal and suboptimal
elements are significantly different, the suboptimal ones decay at the rate "α/4, as
predicted by the theory.
This example illustrates the strength of Q -learning with the "-greedy policy. For
small values of ", the algorithm tends to converge to the optimal strategy more
quickly than a brute-force algorithm that visits every state-action pair equally often.
Equation (11.28) shows that this advantage becomes larger for larger values of Na.
The price one pays is that the suboptimal entries of the Q -table converge more
slowly.
The gain is even more significant for episodic tasks with T > 1 steps. In this case
the learning rule for the Q table depends on argmaxa ′Qt (s , a ′). As mentioned above,
there are N Nsa ways in which the largest elements can be distributed over the rows of
the Q -table. To find the optimal deterministic strategy by complete enumeration,
one must run a large number of episodes for each of the N Nsa possibilities, to find
out which one gives the largest reward. This is impractical when either Na or Ns
or both become too large. Q -learning with a small value of ", by contrast, tends
to explore actions that appear to yield the largest expected future reward given
the current estimates of the Q -values. Using experience in this way allows the
210 REINFORCEMENT LEARNING
algorithm to simultaneously improve its policy and the Q -values towards optimality.
As a consequence, Q -learning can find optimal, or at least good strategies when
complete enumeration of all possibilities fails.
A second example for Q -learning is illustrated in Figure 11.6, the board game
tic-tac-toe. It is a very simple game where two players take turns in placing their
pieces on a 3 × 3 board. The player who manages to first obtain three pieces in a
row, column, or diagonal wins and receives the reward r = +1. A draw gives r = 0,
and the player receives r = −1 when the round is lost. The goal is to win as often as
possible, to maximise the expected future reward. However, there is a strategy for
both players to ensure that they do not lose. If both players try to maximise their
expected future reward, then they end up following this strategy. As a consequence,
every game must end in a draw [191]. As a result, the game is quite boring.
Nevertheless it is instructive to ask how the players can learn to find this strategy
using Q -learning with the "-greedy policy. To this end we let two agents play many
rounds against each other. The state space is the collection of all board configura-
tions. Player × starts, and thus always sees a board with an even number of pieces,
while the number of pieces is odd for player ◦. Since the players encounter different
sets of states, each must keep track of their own Q -table. The task is episodic, and
the number T of steps may vary from round to round. Feedback is only obtained at
the end of each round.
We use Equation (11.24) with a constant learning rate α. We can set γ = 1 since
the number of steps in each round is finite. The Q -table is a 2 × n table where each
entry is a 3 × 3 array. Here n is the number of states the player encountered so far.
The first row lists the states, each a 3 × 3 array with entries −1 (◦), 1 (×), or 0 (empty).
The second row contains the Q -values. Given a certain state of the board, a player
can play a piece on any empty field. The corresponding estimate of the expected
future reward is stored in the corresponding 3 × 3 array in the second row. Since
one cannot place a piece onto an occupied field, the corresponding entries in the
Q -table are assigned NaN.
During a round, the Q -tables of the players are updated in turns, always the one
of the player who places a piece. After a round, the Q -tables of both players are
updated. During the first round, the elements of Q -tables encountered are initialised
to zero and remain zero. The first change to Q occurs in the last step of this round.
If player × wins, for example, the element QT −1(s T −1, aT −1) corresponding to the
state-action pair that led to the final state s ′T −1 is updated for the winning player,
and QT −2(s ′T −2, a ′T −2) is set to −1 for player ◦.
Both players follow the "-greedy policy . With probability 1 − " they take the
optimal move (if the maximal Q -element in the relevant row is degenerate, then
one of the maximal elements is chosen randomly). With probability ", a random
action is chosen. As the players continue to play rounds against each other, the
Q -LEARNING 211
Figure 11.6: Tic-tac-toe. Two players, × and ◦, take turns in placing a piece on an
empty field of 3 × 3 board. The goal is to be the first to complete a row, column,
or diagonal consisting of three of one’s own pieces. In the example shown, player
× starts and ends up winning the game. The states encountered by player × are
denoted by s t , those encountered by player ◦ by s ′t . Their actions are denoted by a t
and a ′t .
rewards spread to other elements of Q . Suppose that the state s T −1 is encountered
once more, the one that allowed player × to win the first round with a T −1. Then the
term maxa QT −1(s T −1, a ) causes a Q -element for the previous state to change, the
one from which s T −1 was reached the second time. However as times goes on, this
process slows down, because later updates are multiplied with higher powers of the
learning rate α. Also, if the opponent lost in the previous round, it will try different
actions that may block winning moves for the other player.
Figure 11.7 illustrates how the players learn, after playing many rounds against
each other. Since both players try to maximise their expected future reward in the
steady state of the Q -learning algorithm, all games end in a draw in this case. The
corresponding Q -tables contain the strategies each player should adopt to maximise
their reward. Suppose player ◦ places the first piece as shown below:
board
Q -table
ï 1.00 1.00 1.00
0.34 NaN NaN
1.00 1.00 1.00
ò ï NaN −0.57 1.00
−0.69 NaN NaN
−0.59 −0.73 NaN
ò ï NaN 1.00 NaN
−0.86 NaN NaN
NaN 0.027 NaN
ò
.
(11.31)
How does this game continue? There are several different ways in which player ×
may try to win. The left Q -table in Equation (11.31) shows that one possibility is
to place the piece in the top or bottom row, because this creates the opportunity
212 REINFORCEMENT LEARNING
Figure 11.7: Learning curves for two players learning to play tic-tac-toe with Q -
learning and the "-greedy policy. Shown are the frequencies that the game ends
in a draw, that player × wins, and that player ◦ wins. Similar curves are obtained
using a learning rate α = 0.1. The parameter " was equal to unity for the first 104
rounds, and then decreased by a factor of 0.9 after each 100 rounds, and averaging
each curve over a running window of 30 rounds. Schematic, based on simulations
performed by Navid Mousavi.
of creating a bridge in the next move, a configuration that cannot be blocked by
the opponent, allowing × to win. The right Q -table shows that player × could still
lose or end up with a draw if he makes the wrong move. The corresponding Q -
entries have not quite converged to −1 and 0, respectively. Q -entries corresponding
to suboptimal states are not estimated as precisely because they are visited less
frequently. Here " = 0.3 was chosen quite large. Smaller values of " give even less
accurate estimates for the suboptimal Q -elements compared with those in Equation
(11.31), after training for the same number of rounds.
As pointed out above, the learning outcome depends on the reward function.
If one increases reward for winning, to r = +2 for instance, the optimal strategy
appears to be to take turns in winning. The same learning outcome is expected if
one imposes a penalty for a draw, r = +1 (win), r = −1 (draw, lose), Exercise 11.8.
More examples of reinforcement-learning problems in robotics and in the natural
sciences are described in Ref. [192].
The Q -learning algorithm described above is quite efficient when the number of
states and actions is not too large. For very large Q -tables, the algorithm becomes
quite slow. In this case it may be more efficient to replace the Q -table by an ap-
proximate Q -function that maps states to actions. As explained in Section 11.2,
one can use a neural network to represent the Q -function [184] (deep reinforcement
learning). An application of this method is AlphaGo, a machine-learning algorithm
that learnt to play the game of go [183]. The Q -function is represented in terms of a
SUMMARY 213
convolutional neural network. This makes it possible to use a variant of Q -learning
despite the fact that the number of states is enormous.
In recent years many proof-of-principle studies have demonstrated the possi-
bilities of reinforcement learning in a wide range of scientific problems. Recent
advances in deep reinforcement learning hold promise for the future, for real-world
control problems in the engineering sciences.
11.4 Summary
Reinforcement learning lies between unsupervised learning (Chapter 10) and su-
pervised learning (Chapters 5 to 9). In reinforcement learning, there are no labeled
data sets. Instead, the neural network or agent learns through feedback from the
environment in the shape of a reward or a penalty. The goal is to find a strategy that
maximises the expected reward. Reinforcement learning is applied in a wide range
of fields, from psychology to mechanical engineering, using a large variety of algo-
rithms. The associative reward-penalty algorithm and many versions of temporal
difference learning were originally formulated using neural networks. Q -learning is
an approximation to temporal difference learning for sequential decision processes.
In its simplest form it does not rely on neural networks. However, when the number
of states and actions is large this algorithm becomes slow. In this case it may be
more efficient to approximate the Q -function by a neural network.
11.5 Further reading
The standard reference for reinforcement learning is Reinforcement learning: an
introduction by Sutton and Barto [16]. The original reference for the convergence
of the Q -learning algorithm is Ref. [189]. A more mathematical introduction to
reinforcement learning is given in Ref. [186]. Examples for reinforcement learning
in statistical and non-linear physics are summarised in Ref. [192].
An open question is when and how symmetries can be exploited to simplify a
reinforcement problem. For a small microorganism learning to navigate a turbulent
flow, some aspects are discussed in Ref. [193], but little is known in general. Another
open question concerns the convergence of the Q -learning algorithm. Convergence
to the optimal policy is assured if the sequence of states is a Markov chain. However,
most real-world problems are not Markovian, so that convergence is not guaranteed.
The algorithm appears to perform well nevertheless (a recurring theme in this book),
but it is an open question under which circumstances it may fail.
