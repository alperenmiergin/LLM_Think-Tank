**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Reinforcement Learning** 

This chapter describes some theoretical results on reinforcement learning, and the analysis may be regarded as a natural generalization of technique introduced for contextual bandit problems. In the literature, there are two formulations of reinforcement learning, episodic reinforcement learning, and reinforcement learning with discounted rewards. We focus on episodic reinforcement learning in this chapter, due to its close relationship with contextual bandits. Generally speaking, results for episodic reinforcement learning can be converted into results for discounted reinforcement learning. An episodic MDP, illustrated in Figure 18.1, can be formally defined below. 

**Definition 18.1.** An episodic Markov decision process (MDP) of length _H_ , denoted by _M_ = MDP( _X , A, P_ ), contains a state space _X_ , an action space _A_ , and probability measures _{P_<sup>_h_</sup> ( _r_<sup>_h_</sup> _, x_<sup>_h_+1</sup> _|x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) _}_<sup>_H_</sup> _h_ =1<sup>.Ateachstep</sup><sup>_h∈_[</sup><sup>_H_]=</sup> _{_ 1 _, . . . , H}_ , we observe a state _x_<sup>_h_</sup> _∈X_ and take action _a_<sup>_h_</sup> _∈A_ . We then get a reward _r_<sup>_h_</sup> and go to the next state _x_<sup>_h_+1</sup> with probability _P_<sup>_h_</sup> ( _r_<sup>_h_</sup> _, x_<sup>_h_+1</sup> _|x_<sup>_h_</sup> _, a_<sup>_h_</sup> ). We assume that _x_<sup>1</sup> is drawn from an unknown but distribution. 

A random policy _π_ is a set of conditional probability _π_<sup>_h_</sup> ( _a_<sup>_h_</sup> _|x_<sup>_h_</sup> ) that determines the probability of taking action _a_<sup>_h_</sup> on state _x_<sup>_h_</sup> at step _h_ . If a policy _π_ is deterministic, then we also write the action _a_<sup>_h_</sup> it takes at _x_<sup>_h_</sup> as _π_<sup>_h_</sup> ( _x_<sup>_h_</sup> ) _∈A_ . 

The policy _π_ interacts with the MDP in an episode as follows: for step _h_ = 1 _, . . . , H_ , the player observes _x_<sup>_h_</sup> , and draws _a_<sup>_h_</sup> _∼ π_ ( _a_<sup>_h_</sup> _|x_<sup>_h_</sup> ); the MDP returns ( _r_<sup>_h_</sup> _, x_<sup>_h_+1</sup> ). The reward of the episode is 



The observations ( _x, a, r_ ) = _{_ ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> _, r_<sup>_h_</sup> ) _}_<sup>_H_</sup> _h_ =1<sup>iscalledatrajectory,andeachpol-</sup> icy _π_ , when interacting with the MDP, defines a distribution over trajectories, which we denote as ( _x, a, r_ ) _∼ π_ . The value of a policy _π_ is defined as its expected reward: 



We note that the state _x_<sup>_H_+1</sup> has no significance as the episode ends after taking action _a_<sup>_h_</sup> at _x_<sup>_h_</sup> and observe the reward _r_<sup>_h_</sup> . 

384 

385 



<!-- Start of picture text -->
r 1 r 2 r h− 1 r h r h +1 r h +1<br>a 1 a 2 a h− 1 a h a H− 1 a H<br>x 1 x 2 x h x H<br><!-- End of picture text -->

**Figure 18.1** Episodic Markov decision process 

With the above definition of episodic MDP, we can now introduce the episodic reinforcement learning problem as follows. 

**Definition 18.2.** In episodic reinforcement learning (RL), we consider an episodic MDP. The player interacts with the MDP via a repeated game: at each time (episode) _t_ : 

- The player chooses a policy _πt_ based on historic observations. 

- The policy interacts with the MDP, and generates a trajectory ( _xt, at, rt_ ) = _{_ ( _x_<sup>_h_</sup> _t_<sup>_, ah_</sup> _t_<sup>_, r_</sup> _t_<sup>_h_)</sup><sup>_}H_</sup> _h_ =1<sup>_∼πt_.</sup> 

The regret of episodic reinforcement learning is 



where _V∗_ = sup _π Vπ_ is the optimal value function. 

One may also define the optimal value function within a policy class, and define the regret with respect to the optimal policy in this class. Note that in the case of contextual bandit, EXP4 can be used to solve such a problem. However, it is nontrivial to generalize an EXP4 style algorithm to handle episodic reinforcement learning without suffering an exponential dependency in _H_ . Therefore we will focus on value function based algorithms by extending value function based contextual bandit analysis. Under the realizability assumption, the resulting regret bound can compete with the optimal value function achieved with the best policy over the class of all possible policies. 

**Example 18.3** (Contextual Bandits) **.** Consider the episodic MDP with _H_ = 1. We observe _x_<sup>1</sup> _∈X_ , take action _a_<sup>1</sup> _∈A_ , and observe reward _r_<sup>1</sup> _∈_ R. This case is the same as contextual bandits. 

**Example 18.4** (Tabular MDP) **.** In a Tabular MDP, both _X_ and _A_ are finite: _|X|_ = _S_ and _|A|_ = _A_ . It follows that the transition probability at each step _h_ 



can be expressed using _HS_<sup>2</sup> _A_ numbers. The expected reward E[ _r_<sup>_h_</sup> _|x_<sup>_h_</sup> _, a_<sup>_h_</sup> ] can be expressed using _HSA_ numbers. 

**Example 18.5** (LQR) **.** Linear quadratic regulator (LQR) has state space _X_ = 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 18. REINFORCEMENT LEARNING 

386 

R<sup>_d_</sup> and _A_ = R<sup>_k_</sup> . The transition probability is given by 



where _ϵ_<sup>_h_</sup> _∼ N_ (0 _, σ_<sup>2</sup> _I_ ) is Gaussian noise. The reward is 



where _Q_<sup>_h_</sup> and _R_<sup>_h_</sup> are positive semi-definite matrices. 

## **18.1 Value Functions of Episodic MDP** 

In value function based approach to RL, we consider value functions as follows. 

**Definition 18.6.** Given any policy _π_ , we can define its value function (also referred to as the _Q_ -function in the literature) starting at a state-action pair ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) at step _h_ as follows: 



where _r_<sup>_h′_</sup> _∼ π|_ ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) is the reward distribution at step _h_<sup>_′_</sup> conditioned on starting from state action pair ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) at step _h_ . Similarly, we also define 



By convention, we set _Vπ_<sup>_H_+1</sup> ( _x_<sup>_H_+1</sup> ) _≡_ 0. 

We note that the value of a policy _π_ can be expressed as 



where the distribution of _x_<sup>1</sup> is independent of _π_ . 

The following result is a straight-forward application of the definition of value function. We leave it as an exercise. 

## **Proposition 18.7.** _We have_ 



We may also define the optimal value functions that are the best possible value function achieved by any policy, starting from an arbitrary state _x_<sup>_h_</sup> or state-action pair ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) at step _h_ . 

**Definition 18.8.** The optimal value functions starting at step _h_ are given by 



We also define the optimal value as _V∗_ = E _x_ 1 _V∗_<sup>1(</sup><sup>_x_1).</sup> 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

18.1. VALUE FUNCTIONS OF EPISODIC MDP 

387 

In the following, for notation simplicity, we assume that the solution to 

arg max _a∈A_<sup>_Q_</sup> _∗_<sup>_h_(</sup><sup>_xh, a_)</sup> 

can be achieved by some _a ∈A_ so that greedy policy in in Theorem 18.9 can be properly defined. The following theorem describes key properties of optimal value functions and optimal policy for reinforcement learning. The proof is straightforward, and we leave it as an exercise. 

**Theorem 18.9.** _The optimal Q-function Q∗ satisfies the Bellman equation:_ 

_Q_<sup>_h_</sup> _∗_<sup>(</sup><sup>_xh, ah_) = E</sup><sup>_rh,xh_+1</sup><sup>_|xh,ah_�</sup><sup>_rh_+</sup><sup>_V_</sup> _∗_<sup>_h_+1</sup> ( _x_<sup>_h_+1</sup> )� _._ 

_The optimal value function satisfies_ 

_V∗_<sup>_h_(</sup><sup>_xh_) = max</sup> _∗_<sup>(</sup><sup>_xh, a_)</sup><sup>_,_</sup> _a∈A_<sup>_Qh_</sup> 

_and the optimal value function can be achieved using a deterministic greedy policy π∗ below_ 

_π∗_<sup>_h_(</sup><sup>_xh_)</sup><sup>_∈_arg max</sup> _∗_<sup>(</sup><sup>_xh, a_)</sup><sup>_._</sup> _a∈A_<sup>_Qh_</sup> 

Theorem 18.9 motivates the following definition of Bellman error for reinforcement learning. 

**Definition 18.10.** We say _f_ is a candidate _Q_ -function if _f_ = _{f_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) : _X × A →_ R : _h ∈_ [ _H_ + 1] _}_ , with _f_<sup>_H_+1</sup> ( _·_ ) = 0. Define 



and define its greedy policy _πf_ as a deterministic policy that satisfies 



Given an MDP _M_ , we also define the Bellman operator of _f_ as 



and its Bellman error as 



where the conditional expectation is with respect to the MDP _M_ . 

Theorem 18.9 implies that 



The following theorem shows that the difference of the true value of policy _πf_ and the candidate value function _f_<sup>1</sup> ( _x_<sup>1</sup> ) are close if (and only if) the average Bellman error is small along the path generated by _πf_ . Since Bellman error can be evaluated on real data, we can use this decomposition to design reinforcement algorithms and obtain their regret bounds. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 18. REINFORCEMENT LEARNING 

388 

**Theorem 18.11.** _Consider any candidate value function f_ = _{f_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) : _X × A →_ R _}, with f_<sup>_H_+1</sup> ( _·_ ) = 0 _. Let πf be its greedy policy. Then_ 



_Proof_ We prove the following statement by induction from _h_ = _H_ to _h_ = 1. 



When _h_ = _H_ , we have _a_<sup>_H_</sup> = _πf_<sup>_H_(</sup><sup>_xH_)and</sup> 



Therefore (18.1) holds. Assume that the equation holds at _h_ + 1 for some 1 _≤ h ≤ H −_ 1. Then at _h_ , we have 



The first equation used the induction hypothesis. The second equation used the definition of Bellman error. The third equation used Proposition 18.7. The last equation used _a_<sup>_h_</sup> = _πf_ ( _x_<sup>_h_</sup> ) and thus by definition, _f_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) = _f_<sup>_h_</sup> ( _x_<sup>_h_</sup> ). 

In value function based methods, we consider the following assumptions. 

**Assumption 18.12.** Given a candidate value function class _F_ of functions _f_ = _{f_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) : _X × A →_ R _}_ , with _f_<sup>_H_+1</sup> ( _·_ ) = 0. We assume that (realizable assumption) 





Bellman error plays an important role in the analysis of reinforcement learning algorithms. For value function based approach to reinforcement learning, we would like to approximate Bellman error by minimizing least squares loss 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

18.1. VALUE FUNCTIONS OF EPISODIC MDP 

389 

By taking conditional expectation with respect to ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ), we obtain 



Since noise variance depends on _f_ , if we use (18.2) to estimate _f_ , we will favor _f_ with smaller noise variance, which may not have zero Bellman error. To overcome this issue, one can estimate the noise variance term, and then substract it from (18.2) to obtain the term _E_<sup>_h_</sup> ( _f, x_<sup>_h_</sup> _, a_<sup>_h_</sup> )<sup>2</sup> . This requires an additional assumption referred to as _Bellman completeness_ (or simply _completeness_ ). 

**Definition 18.13** (Bellman Completeness) **.** A candidate value function class _F_ is complete with respect to another candidate value function class _G_ if for any _h ∈_ [ _H_ ], _f ∈F_ , there exists _g ∈G_ so that for all _h ∈_ [ _H_ ]: 



We say _F_ is complete if _F_ is complete with respect to itself. 

Note that if _F_ is complete with respect to _G_ , then we may use the solution of 



to estimate ( _T_<sup>_h_</sup> _f_ )( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ), which can be used to cancel the variance term in (18.2). This motivates the following loss function 



The following result is a counterpart of Theorem 13.15. 

**Theorem 18.14.** _Assume that assumption 18.12 holds, F is complete with respect to G, and g_<sup>_h_</sup> ( _·_ ) _∈_ [0 _,_ 1] _for all g ∈G. Consider_ (18.3) _, and let_ 



_where_ 



_with M_ ( _·_ ) _denotes the ∥· ∥∞ packing number, and ∥f ∥∞_ = sup _h,x,a |f_<sup>_h_</sup> ( _x, a_ ) _|. Then with probability at least_ 1 _− δ, for all t ≤ n: Q∗ ∈Ft and for all f ∈Ft:_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
xy > a<br>aan<br>xy >»<br>|<br>D y<br>y y<br>r y<br><!-- End of picture text -->

y ~~>~~ > 

ey ~~>~~ > 

yl 1 | ~~y~~ y 

yy yy! yy! 

EE yy! yy! 

| 

| 

| 

| 

CHAPTER 18. REINFORCEMENT LEARNING 

392 

Taking sup over _g ∈G_ , and note that ∆<sup>_h_</sup> _s_<sup>(</sup><sup>_Q∗, Q∗_)=0,andthat</sup><sup>_F_iscomplete</sup> with respect to _G_ , we obtain 



In the two displayed inequalities, the first implies that _Q∗ ∈Ft_ . The second implies that if _f ∈Ft_ , then 



which implies the second result of the theorem. 

## **18.2** _Q_ **-type Model-Free Linear MDP** 

Linear MDP is a special MDP which can be defined as follows. 

**Definition 18.15** (Linear MDP) **.** Let _H_ = _{H_<sup>_h_</sup> _}_ be a sequence of vector spaces with inner products _⟨·, ·⟩_ . An MDP _M_ = MDP( _X , A, P_ ) is a linear MDP with feature maps _φ_ = _{φ_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) : _X × A →H_<sup>_h_</sup> _}_<sup>_H_</sup> _h_ =1<sup>ifforall</sup><sup>_h∈_[</sup><sup>_H_],thereexista</sup> map _ν_<sup>_h_</sup> ( _x_<sup>_h_+1</sup> ) : _X →H_<sup>_h_</sup> and _θ_<sup>_h_</sup> _∈H_<sup>_h_</sup> , such that 



Here _⟨·, ·⟩_ denotes the inner product in _H_<sup>_h_</sup> for different _h_ , and the conditional probability measure _dP_<sup>_h_</sup> ( _·|x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) is absolute continuous with respect to a measure _dµ_<sup>_h_+1</sup> ( _·_ ) with density _⟨ν_<sup>_h_</sup> ( _x_<sup>_h_+1</sup> ) _, φ_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) _⟩_ . In general, we assume that _ν_<sup>_h_</sup> ( _·_ ) and _θ_<sup>_h_</sup> are unknown. We may assume _φ_ ( _·_ ) to be either known or unknown. 

**Example 18.16** (Tabular MDP) **.** In a tabular MDP, we assume that _|A|_ = _A_ and _|X|_ = _S_ . Let _d_ = _AS_ , and we can encode the space of _X ×A_ into a _d_ -dimensional vector with components indexed by ( _x, a_ ). Let _φ_<sup>_h_</sup> ( _x, a_ ) = _e_ ( _x,a_ ) and let _ν_<sup>_h_</sup> ( _x_<sup>_h_+1</sup> ) be a _d_ dimensional vector so that its ( _x, a_ ) component is _P_<sup>_h_</sup> ( _x_<sup>_h_+1</sup> _|x_<sup>_h_</sup> = _x, a_<sup>_h_</sup> = _a_ ). Similarly, we can take _θ_<sup>_h_</sup> as a _d_ dimensional vector so that its ( _x, a_ ) component is E[ _r_<sup>_h_</sup> _|x_<sup>_h_</sup> = _x, a_<sup>_h_</sup> = _a_ ]. Therefore tabular MDP is linear MDP with _d_ = _AS_ . 

**Example 18.17** (Low-Rank MDP) **.** For a low-rank MDP, we assume that the transition probability matrix can be decomposed as 



In this case we can set _φ_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) = [ _P_<sup>_h_</sup> ( _z_ = _j|x_<sup>_h_</sup> _, a_<sup>_h_</sup> )]<sup>_d_</sup> _j_ =1<sup>,and</sup><sup>_νh_(</sup><sup>_xh_+1)=</sup> 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

18.2. _<u>Q</u>_ -TYPE MODEL-FREE LINEAR MDP 

393 

[ _P_<sup>_h_</sup> ( _x_<sup>_h_+1</sup> _|z_ = _j_ )]<sup>_d_</sup> _j_ =1<sup>.Thereforealow-rankMDPisalinearMDPswithrank</sup> as dimension. 

We have the following structural result for linear MDP, which is useful in our analysis. 

**Proposition 18.18.** _In a linear MDP with feature map φ_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) _on vector spaces H_<sup>_h_</sup> _(h ∈_ [ _H_ ] _). Consider the linear candidate Q function class_ 



_Any function g_<sup>_h_+1</sup> ( _x_<sup>_h_+1</sup> ) _on X satisfies_ 



_It implies that F is complete, and Q∗ ∈F. Moreover, ∀f ∈F,_ 



_Proof_ Let 



We have 



This implies that 

( _T_<sup>_h_</sup> _g_ )( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) = _⟨θ_<sup>_h_</sup> + _u_<sup>_h_</sup> _g_<sup>_, φh_(</sup><sup>_xh, ah_)</sup><sup>_⟩∈F._</sup> 

Since _Q_<sup>_h_</sup> _∗_<sup>(</sup><sup>_xh, ah_) = (</sup><sup>_ThQ∗_)(</sup><sup>_xh, ah_),weknow</sup><sup>_Qh_</sup> _∗_<sup>(</sup><sup>_xh, ah_)</sup><sup>_∈F_.</sup> Similarly, since ( _T_<sup>_h_</sup> _f_ )( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) _∈F_ , we know that _f ∈F_ implies 



This proves the desired result. 

Proposition 18.18 implies that if the feature map _φ_ is known, then a linear MDP with linear function class is both realizable and complete. 

We can generalize the UCB algorithm for contextual bandit to the UCB algorithm for reinforcement learning in Algorithm 18.1. It is again an implementation of the optimism in the face of uncertainty principle. Its analysis is similar to that of Algorithm 17.4. We may define an extension of eluder coefficient as follows, which is similar to Definition 17.17. For convenience, we define it in terms of expectation, which is more general than the definition without expectation in 17.17. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
—_<br><!-- End of picture text -->

es 

, yr{ ¥ 

18.2. _<u>Q</u>_ -TYPE MODEL-FREE LINEAR MDP 

395 

_where_ entro( _·_ ) _is defined in Proposition 15.8. In particular, if {H_<sup>_h_</sup> _} are finite dimensional, then we have_ 



_where B_<sup>_′_</sup> = sup _h_ sup _xh,ah ∥φ_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) _∥Hh._ 

We note that _F_ may be nonlinear by itself, although it can be embedded into a linear function space. One may also choose a sufficiently large RKHS to realize such an embedding assumption. We can now prove a direct extension of Theorem 17.19 as follows. Similar to Theorem 17.19, the structural assumption of the MDP is characterized by Definition 18.19, which may include examples other than linear MDP. For simplicity, we state the result in expectation, and leave the high probability bound as an exercise. 

**Theorem 18.21.** _Assume that Assumption 18.12 holds, F is complete with respect to G, and g_<sup>_h_</sup> ( _·_ ) _∈_ [0 _,_ 1] _for all g ∈G. Assume also that βt is chosen in Algorithm 18.1 according to_ 



_with M_ ( _·_ ) _denoting the ∥· ∥∞ packing number, and ∥f ∥∞_ = sup _h,x,a |f_<sup>_h_</sup> ( _x, a_ ) _|. Then_ 



_Proof_ For _t ≥_ 2, we have 



The inequality used the fact that if _Q∗ ∈Ft−_ 1, then _ft_ ( _x_<sup>1</sup> _t_<sup>) = max</sup><sup>_f∈F_</sup> _t−_ 1<sup>_f_(</sup><sup>_x_1</sup> _t_<sup>)</sup><sup>_≥_</sup> _V∗_<sup>1(</sup><sup>_x_1</sup> _t_<sup>),andif</sup><sup>_Q∗∈F/t−_1,</sup><sup>_V_</sup> _∗_<sup>1(</sup><sup>_xt_)</sup><sup>_−ft_(</sup><sup>_x_1</sup> _t_<sup>)</sup><sup>_≤_1.ThelastequationusedTheo-</sup> rem 18.11. 

Theorem 18.14 implies that Pr( _Q∗ ∈Ft−_ 1) _≥_ 1 _− δ_ . We thus have 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

y 

3 

» 

yy : <u>yy( ¥</u> y ( 

E 

( ~~vo)~~ CY ~~)~~ 

(v ) 

18.3. LEAST SQUARES VALUE ITERATION 

397 

solving a minimax formulation with global optimism, which may be difficult computationally. This section shows that a computationally more efficient approach can also be used to solve linear MDP. In this approach, we are restricted to the case that the function class _F_ can be factored as the product of _F_<sup>_h_</sup> , and we need to make a stronger assumption of Bellman completeness in (18.9), and a stronger form of Bellman eluder coefficient to control point-wise confidence interval in (18.10). 

**Assumption 18.22.** Assume that the _Q_ function class _F_ can be factored as the product of _H_ function classes: 



so that for all _g_<sup>_h_+1</sup> ( _x_<sup>_h_+1</sup> ) _∈_ [0 _,_ 1]: 



Assume for any _ϵ >_ 0, there exist a function class _B_<sup>_h_</sup> ( _ϵ_ ) so that for any sequence _{_ ( _x_<sup>_h_</sup> _t_<sup>_, ah_</sup> _t_<sup>_,f_ˆ</sup> _t_<sup>_h_)</sup><sup>_∈X×A×F h_:</sup><sup>_t_=1</sup><sup>_, . . . , T}_,wecanconstructasequenceof</sup> non-negative bonus functions _b_<sup>_h_</sup> _t_<sup>(</sup><sup>_·_)</sup><sup>_∈Bh_(</sup><sup>_ϵ_)(each</sup><sup>_f_ˆ</sup> _t_<sup>_h_and</sup><sup>_bh_</sup> _t_<sup>onlydependonthe</sup> historic observations up to _t −_ 1) such that 



and the bonus function satisfies the following _uniform eluder condition_ : 



We note that the uniform eluder condition of Assumption 18.22 is related to the coverage coefficient of Definition 9.42 (also see the conditional versions in Definition 17.35 and Definition 18.30), and the assumption is stronger than Bellman eluder coefficients. However, the following example shows that linear MDP satisfies Assumption 18.22. 

**Example 18.23.** Consider a linear MDP in Definition 18.15, such that 



If _F_<sup>_h_</sup> is any function class that contains 



then the proof of Proposition 18.18 implies that (18.9) holds. Note that if _r_<sup>_h_</sup> _∈_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 18. REINFORCEMENT LEARNING 

398 

[0 _,_ 1], then ( _T_<sup>_h_</sup> _g_<sup>_h_+1</sup> )( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) _∈_ [0 _,_ 2]. Therefore at any time step _t_ , we may consider a subset of _F_<sup>_h_</sup> that satisfies the range constraint on historic observations, and in the mean time, impose the same range constraints in _F_<sup>˜</sup><sup>_h_</sup> as 

_F_ ˜<sup>_h_</sup> = � _⟨wh, φh_ ( _xh, ah_ ) _⟩_ : _∥wh∥Hh ≤ Bh, ⟨wh, φh_ ( _xhs_<sup>_, a_</sup> _s_<sup>_h_)</sup><sup>_⟩∈_[0</sup><sup>_,_2]</sup><sup>_∀s ∈_[</sup><sup>_t −_1]</sup> � _._ 

If moreover, each _f_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) _∈F_<sup>_h_</sup> can be written as _⟨w_ ˜<sup>_h_</sup> ( _f_<sup>_h_</sup> ) _, φ_<sup>˜</sup><sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) _⟩_ so that _∥w_ ˜<sup>_h_</sup> ( _f_<sup>_h_</sup> ) _− w_ ˜<sup>_h_</sup> ( _f_<sup>˜</sup><sup>_h_</sup> ) _∥_ 2 _≤ B_<sup>˜</sup><sup>_h_</sup> (here we assume that _φ_<sup>˜</sup><sup>_h_</sup> may or may not be the same as _φ_<sup>_h_</sup> ), then we can take 



so that (18.10) holds. By using Lemma 13.9, we have 



Using Proposition 15.8, we can set dim( _T, B_<sup>_h_</sup> ( _ϵ_ )) = entro� _ϵ/_ (( ˜ _Bh_ )2 _T_ ) _,_ ˜ _φh_ ( _·_ )�. 

With the stronger assumptions in Assumption 18.22, we can solve the corresponding RL problem using Algorithm 18.2, which is computationally simpler than Algorithm 18.1. At each time step _t_ , the algorithm forms upper confidence bounds of the optimal _Q_ function for _h_ = _H, H −_ 1 _, . . . ,_ 1, and then plays the greedy policy according to the upper confidence bounds. This requires explicit bonus term _b_<sup>_h_</sup> _t_<sup>(</sup><sup>_·_). We call this algorithm</sup><sup>_Least Squares Value Iteration_(with UCB)</sup> to be consistent with (Jin et al., 2020). However, the algorithm is also referred to as _Fitted Q-learning_ in the literature. 

**Lemma 18.24.** _Consider Algorithm 18.2 under Assumption 18.22. Assume also that Q_<sup>_h_</sup> _∗_<sup>_∈F h,Qh_</sup> _∗_<sup>_∈_[0</sup><sup>_,_1]</sup><sup>_,rh∈_[0</sup><sup>_,_1]</sup><sup>_,f h∈_[0</sup><sup>_,_2]</sup><sup>_forh ∈_[</sup><sup>_H_]</sup><sup>_andf h∈F h.Given_</sup> _any t >_ 0 _, let βt_<sup>_H_+1</sup> = _β_<sup>_H_+1</sup> ( _ϵ, δ_ ) = 0 _, and for h_ = _H, H −_ 1 _, . . . ,_ 1 _:_ 



_where (with ∥f ∥∞_ = sup _x,a,h f_<sup>_h_</sup> ( _x, a_ ) _)_ 

_MT_<sup>_h_(</sup><sup>_ϵ_) =</sup><sup>_M_(</sup><sup>_ϵ/T, F h, ∥· ∥∞_)</sup><sup>_M_(</sup><sup>_ϵ/T, F h_+1</sup><sup>_, ∥· ∥∞_)</sup><sup>_M_(</sup><sup>_ϵ/T, Bh_+1(</sup><sup>_ϵ_)</sup><sup>_, ∥· ∥∞_)</sup><sup>_._</sup> _Then with probability at least_ 1 _− δ, for all h ∈_ [ _H_ ] _, and_ ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) _∈X × A:_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

(> ) (e ) (> — ~~_~~ (= ) 

(1 ) | (1 <u>J)</u> ~~“fo-) —~~ 

y 

, ¥ 

» 

» 

yd 

~ dU 

\ 22d \) LL 

> 

\ 

\ 

» 

~~o~~ 

CHAPTER 18. REINFORCEMENT LEARNING 

402 

## **18.4 Bellman Factorization and** _V_ **-type Bellman Eluder Coefficient** 

In linear MDP, we assume that the _Q_ function class is a linear model. Although moderate nonlinear generalization can be handled by eluder coefficient, it still requires a near linear _Q_ -function class. In particular, one condition to ensure small eluder coefficient is to assume that the _Q_ function lies in the linear space spanned by the feature maps _{φ_<sup>_h_</sup> ( _·_ ) _}_ of the underlying MDP. It is however, desirable to allow the _Q_ function class to contain functions outside of _{φ_<sup>_h_</sup> ( _·_ ) _}_ . The resulting algorithm will be able to allow more non-linearity in the _Q_ function class, similar to the case of contextual bandits of Section 17.4 and Section 17.5. 

We first state the following structural assumption of the MDP, in terms of eluder coefficient, which we refer to as the _V_ -type Bellman eluder coefficient. 

**Definition 18.27** ( _V_ -type Bellman Eluder Coefficient) **.** Given a candidate _Q_ function class _F_ , its _V_ -type Bellman eluder coefficient EC<sup>_h_</sup> _V_<sup>(</sup><sup>_ϵ, F, T_) at step</sup><sup>_h ≥_1</sup> is the smallest number _d_ so that for any filtered sequence _{ft,_ ( _xt, rt, at_ ) _∼ πft}_<sup>_T_</sup> _t_ =1 



In order to bound the _Q_ -type Bellman eluder coefficient, we need to assume in Proposition 18.20 that the _Q_ function class can be embedded in a linear vector space. This is not necessary for the _V_ -type Bellman eluder coefficient, which allows general nonlinear _Q_ function class. 

We note that for linear MDP, from the proof of Proposition 18.18, we know that for any _h ≥_ 2, there exists _u_<sup>_h−_1</sup> ( _f_ ) _∈H_<sup>_h−_1</sup> so that 



If moreover, we assume that ( _x_<sup>_h−_1</sup> _, a_<sup>_h−_1</sup> ) _∼ π_<sup>_′_</sup> , where _π_<sup>_′_</sup> is referred to as a _roll-in policy_ , then we have the following decomposition, 



where _φ_<sup>_h−_1</sup> ( _π_<sup>_′_</sup> ) = E _xh−_ 1 _,ah−_ 1 _∼π′φ_<sup>_h−_1</sup> ( _x_<sup>_h−_1</sup> _, a_<sup>_h−_1</sup> ). 

One may expand this property and define Bellman factorizable MDPs as follows, which includes linear MDP as a special case. 

**Definition 18.28** (Bellman Factorization) **.** Let _H_ = _{H_<sup>_h_</sup> _}_ be a sequence of vector spaces, with dimensions (Bellman ranks) dim( _H_<sup>_h_</sup> ) for _h_ = 1 _, . . . , H_ . We allow dim( _H_<sup>_h_</sup> ) = _∞_ . An MDP has a Bellman factorization with respect to _H_ if the following condition holds. There exists _u_<sup>_h−_1</sup> ( _f_ ) _∈H_<sup>_h−_1</sup> for all _h ≥_ 2 and _Q_ -function _f ∈F_ ; there exists _φ_<sup>_h−_1</sup> ( _π_<sup>_′_</sup> ) _∈H_<sup>_h−_1</sup> for all policy _π_<sup>_′_</sup> , so that the following factorization is valid: 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

~~<u>r=</u>~~ \ ~~=~~ 

CHAPTER 18. REINFORCEMENT LEARNING 

404 

The inequality follows from (17.10). 

Compared with the _Q_ -type Bellman eluder coefficient, the _V_ -type Bellman eluder coefficient employs the optimal action _πft_ on the historic data without using the historic action _at_ . It is necessary to draw random actions according a fixed exploration policy _π_ ˜ by using the techniques of Section 17.5. For finite actions, we can simply draw the actions uniformly at random. Otherwise, we have to design a policy _π_ ˜ for the purpose. The resulting algorithm is given in Algorithm 18.3. 

## **Algorithm 18.3:** _V_ -type Bellman Error UCB Algorithm 

**Input:** _λ_ , _T_ , _F_ , _G_ , _π_ ˜ **1** Let _F_ 0 = _{f_ 0 _}_ **2** Let _β_ 0 = 0 **3 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 4** Observe _x_<sup>1</sup> _t_ **5** Let _ft ∈_ arg max _f ∈Ft−_ 1 _f_ ( _x_<sup>1</sup> _t_<sup>)</sup> **6** Let _πt_ = _πft_ **7** Draw _ht ∼_ [ _H_ ] uniformly at random **8** Play policy _πt_ and observe trajectory ( _xt, at, rt_ ) up to _x_<sup>_h_</sup> _t_<sup>_t_</sup> **9** Play random policy _a_<sup>_h_</sup> _t_<sup>_t∼π_˜</sup><sup>_ht_(</sup><sup>_·|xh_</sup> _t_<sup>_t_),andobserve(</sup><sup>_r_</sup> _t_<sup>_ht, xh_</sup> _t_<sup>_t_+1</sup> ) **10** Let _t Ft_ = _f ∈F_ : sup � _L_<sup>_hs_</sup> ( _f, g, x_<sup>_h_</sup> _s_<sup>_s, ah_</sup> _s_<sup>_s, r_</sup> _s_<sup>_hs, xh_</sup> _s_<sup>_s_+1</sup> ) _≤ βt_<sup>2</sup> � _g∈G s_ =1 � with appropriately chosen _βt_ , where _L_<sup>_h_</sup> ( _·_ ) is defined according to (18.3). 

**11 return** randomly chosen _πt_ from _t_ = 1 to _t_ = _T_ 

If we compare Algorithm 18.3 to Algorithm 18.1, there are two major differences. One difference is that at each time _t_ , it stops at a randomly chosen _ht_ . Another difference is that a one-step exploration using a predefined policy _π_ ˜ is needed. The policy is designed so that the optimal action _πft_ for any _ft_ is well ˜ covered, so that we can bound the Bellman error with _πft_ by _as ∼ π_ . We may use Definition 17.35, which we adapt to the RL problem as follows. 

**Definition 18.30.** The coverage coefficient CC<sup>_h_</sup> ( _ϵ,_ ˜ _π, F_ ) (for _ϵ >_ 0) of a random policy _π_ ˜ at step _h_ is defined as 



We note that Definition 18.30 is consistent with Definition 17.35, which can be regarded as a conditional version of Definition 9.42. Therefore we may employ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

18.4. MODEL-FREE _V_ -TYPE BELLMAN ELUDER COEFFICIENT 

405 

˜ a conditional _G_ -optimal design _π_<sup>_h_</sup> ( _a_<sup>_h_</sup> _|x_<sup>_h_</sup> ) by conditioning on _x_<sup>_h_</sup> . The following result shows that if Bellman error is linearly embeddable (with possibly unknown feature map), then good coverage coefficient can be obtained using nonlinear _G_ -optimal design. It is a direct consequence of Theorem 9.44. 

**Proposition 18.31.** _Assume that F is complete with respect to G, then for each h ∈_ [ _H_ ] _,_ 

_{E_<sup>_h_</sup> ( _f, x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) : _f ∈F} ⊂F_<sup>_h_</sup> _⊖G_<sup>_h_</sup> = _{f_<sup>_h_</sup> _− g_<sup>_h_</sup> : _f_<sup>_h_</sup> _∈F_<sup>_h_</sup> _, g_<sup>_h_</sup> _∈G_<sup>_h_</sup> _}._ 

_If F_<sup>_h_</sup> _⊖G_<sup>_h_</sup> _is linearly embeddable in H_<sup>_h_</sup> _, with a decomposition u_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) = _f_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) _− g_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) = _⟨w_<sup>_h_</sup> ( _u_<sup>_h_</sup> _, x_<sup>_h_</sup> ) _, ψ_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) _⟩ for some unknown embedding functions w_<sup>_h_</sup> ( _·_ ) _and ψ_<sup>_h_</sup> ( _·_ ) _(see Definition 17.24). Let_ ˜ _B_ = sup _xh,uh,u_ ˜ _h ∥w_<sup>_h_</sup> ( _u_<sup>_h_</sup> _, x_<sup>_h_</sup> ) _− w_<sup>_h_</sup> (˜ _u_<sup>_h_</sup> _, x_<sup>_h_</sup> ) _∥Hh, and for all x_<sup>_h_</sup> _, let {π_<sup>_h_</sup> ( _·|x_<sup>_h_</sup> ) _} be the solution of the conditional G- optimal design problem_ 



_Then_ 



_where_ dim( _·_ ) _is the effective dimension in Proposition 9.36._ 

The linear embedding condition allows the _Q_ -function class to be nonlinear and it does not need to be contained in the linear space spanned by the feature maps of the underlying MDP (which is needed for the analysis of the _Q_ -type problems). The analogy for the bandit case has been discussed in Section 17.4. For example, if the number of actions is finite, then any nonlinear function classes _F_ is linearly embeddable. 

**Example 18.32.** If the number of actions _K_ is finite, then one may use encoding ˜ _ψ_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) = _eah ∈_ R<sup>_K_</sup> , and the corresponding _G_ -optimal design is uniform _π_ over the actions. Using this result, we obtain CC<sup>_h_</sup> (0 _,_ ˜ _π, F_ ) _≤ K_ . 

By combining Proposition 18.29 and Proposition 18.31, we know that both eluder and covering coefficients can be bounded without the need to know either the linear embedding feature maps or the Bellman factorization. The overall complexity is stated as follows. 

**Proposition 18.33.** _In Algorithm 18.3, we let_ 



_then_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

yy <u>yy y{ ¥</u> yy <u>h(x )</u> y ~~yf~~ 

. \ y 

<u>y</u> ~~<u>e</u> (——)~~ 

18.4. MODEL-FREE _V_ -TYPE BELLMAN ELUDER COEFFICIENT 

407 

where we choose _λ_ = 0 _._ 9. Let _ξ_ = _λ_<sup>2</sup> ∆<sup>_h_</sup> _s_<sup>_s_(</sup><sup>_fϵ, gϵ_)2</sup><sup>_/_8,then</sup><sup>_ξ≤_0</sup><sup>_._92</sup><sup>_/_8</sup><sup>_≤_0</sup><sup>_._102,and</sup> thus 



By combining the previous two inequalities, and use exp(0 _._ 102) _λ ≤_ 1, and 1 _/λ ≤_ 1 _._ 2, we obtain 



This inequality can replace (18.4) in the proof of Theorem 18.14. The same argument leads to the following inequalities as counterparts of (18.5) and (18.6). With probability at least 1 _− δ_ , for all _f ∈F_ , _g ∈G_ , and _t ≥_ 0: 



We can set 

0 _._ 5 _βt_<sup>2</sup><sup>_≥_[</sup><sup>_ϵt_(4 +</sup><sup>_ϵ_) + 1</sup><sup>_._2 ln (4</sup><sup>_M_1</sup><sup>_M_2</sup><sup>_/δ_)] + [</sup><sup>_ϵt_(4 +</sup><sup>_ϵ_) + 1</sup><sup>_._2 ln (4</sup><sup>_M_1</sup><sup>_/δ_)]</sup> as in the proof of Theorem 18.14, and obtain _Q∗ ∈Ft_ , and 



where _E_<sup>¯</sup><sup>_h_</sup> is defined in Proposition 18.33. The result now follows directly from Proposition 18.33 and the same derivation of Theorem 18.21. 

It is worth pointing out that while Algorithm 18.3 returns a policy _πt_ with good average regret, the online algorithm itself does not achieve such a regret, because the algorithm needs to employ a one-step pure exploration policy _π_ ˜ which is different from _πt_ . The purpose of this policy is to cover all possible actions equally well (e.g. by using nonlinear _G_ -optimal design). It is similar to pure exploration in contextual bandit of Section 17.5, which also employs nonlinear _G_ - optimal design. Nevertheless, the algorithm can solve the low-Bellman-rank MDP problem with a nonlinear _Q_ function class, and without knowing the underlying Bellman factorization. If we consider linear MDP with _d_ dimensional unknown feature maps, and assume that we have finite _K_ actions, with _F_ containing _MF_ members and _G_ containing _MG_ members, then _d_<sup>˜</sup> = _O_<sup>˜</sup> ( _HdK_ ), _βt_<sup>2=</sup><sup>_O_˜(ln(</sup><sup>_MFMG_)).</sup> 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 18. REINFORCEMENT LEARNING 

408 

Therefore the regret of _πt_ return by Algorithm 18.3 satisfies 



Compared to that of Theorem 18.21, this result is worse by a factor of _√HK_ . The _√H_ factor is due to the random _ht_ choice, which does not efficiently use all data in a trajectory. The _√K_ factor is due to pure exploration with a nonlinear _Q_ function class without knowing the feature maps of the underlying Bellman factorization. 

## **18.5 Model-based Reinforcement Learning** 

In linear MDP, the version space UCB algorithm does not need to know or to learn the transition probability _P_<sup>_h_</sup> ( _x_<sup>_h_+1</sup> _|x_<sup>_h_</sup> _, a_<sup>_h_</sup> ). Such an algorithm is referred to as _model free_ in reinforcement learning. On the other hand, if the learning algorithm estimates and employs the transition probability _P_<sup>_h_</sup> ( _x_<sup>_h_+1</sup> _|x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) information, then the corresponding method is referred to as _model-based_ . Instead of looking at _Q_ -function class, in model-based RL, we consider a class of MDP models and explicitly estimate the transition probabilities. 

**Definition 18.35.** In a model-based RL problem, we are given an MDP model class _M_ . Each _M ∈M_ includes explicit transition probability 



and expected reward 



We use E _M_ [ _·_ ] to denote the expectation with respect to model _M_ ’s transition dynamics _PM_ . Given any _f_<sup>_h_+1</sup> on _X_ , we define the model Bellman operator 



We use _fM_ = _{fM_<sup>_h_(</sup><sup>_xh, ah_)</sup><sup>_}H_</sup> _h_ =1<sup>todenotethe</sup><sup>_Q_functionofmodel</sup><sup>_M_,anduse</sup> _πM_ = _πfM_ to denote the corresponding optimal policy under model _M_ . 

We will also impose the following assumption for model-based RL. 

**Assumption 18.36.** Let _M_ be a class of MDP models. We assume that the correct model _M∗ ∈M_ : the true transition probability is given by _PM_<sup>_h_</sup> _∗_<sup>(</sup><sup>_xh_+1</sup><sup>_|xh, ah_),</sup> and the true expected reward is given by 



We assume that _r_<sup>_h_</sup> + _fM_<sup>_h_(</sup><sup>_xh, ah_)</sup><sup>_∈_[0</sup><sup>_,_1]and</sup><sup>_f_</sup> _M_<sup>1(</sup><sup>_x_1)</sup><sup>_∈_[0</sup><sup>_,_1].Wealsoassume</sup> that there is a _planning oracle_ that solves the optimal policy _πM_ and _Q_ -function _fM_<sup>_h_(</sup><sup>_xh, ah_)foranygivenmodel</sup><sup>_M∈M_.</sup> 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

18.5. MODEL-BASED REINFORCEMENT LEARNING 

409 

One advantage of model-based RL is that the completeness assumption is not required if the model Bellman operator ( _TM_<sup>_hf_)(</sup><sup>_xh, ah_) can be evaluated efficiently.</sup> In this case, we may simply compare the model value to _r_<sup>_h_</sup> + _f_<sup>_h_+1</sup> ( _x_<sup>_h_+1</sup> ), which is an unbiased estimate of the true Bellman operator ( _TM_<sup>_h_</sup> _∗_<sup>_f_)(</sup><sup>_xh, ah_).Usingthis</sup> observation, one may define the following loss function 



which we call value-targeted loss to be consistent with (Ayoub et al., 2020). It is natural to require that a good model has a value targeted loss which fits well on historic data. This allows us to define a version space for the models in _M_ . We can then apply the general principle of optimism as in Algorithm 17.4 and Algorithm 18.1. The resulting algorithm is presented in Algorithm 18.4. Since we do not need completeness, the analysis of the algorithm is a direct extension of Algorithm 17.4. 

## **Algorithm 18.4:** Value Targeted Loss UCB Algorithm 

**Input:** _λ_ , _T_ , _M_ **1** Let _F_ 0 = _{f_ 0 _}_ **2** Let _β_ 0 = 0 **3 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 4** Observe _x_<sup>1</sup> _t_ **5** Let _Mt ∈_ arg max _t_<sup>)</sup><sup>_._</sup> _M ∈Mt−_ 1<sup>_fM_(</sup><sup>_x_1</sup> Let _πt_ = _πMt_ **6** Play policy _πt_ and observe trajectory ( _xt, at, rt_ ) **7** Let _H t M_ ˆ _t_ = arg _M_ min _∈M_ � � _L_<sup>_h_</sup> ( _M, Ms, x_<sup>_h_</sup> _s_<sup>_, ah_</sup> _s_<sup>_, r_</sup> _s_<sup>_h, xh_</sup> _s_<sup>+1</sup> ) _. h_ =1 _s_ =1 where _L_<sup>_h_</sup> ( _·_ ) is defined according to (18.16). **8** Define _H t Mt_ = _M ∈M_ : � �(( _TM_<sup>_hfM_</sup> _s_<sup>)(</sup><sup>_xh_</sup> _s_<sup>_, ah_</sup> _s_<sup>)</sup><sup>_−_(</sup><sup>_T_</sup> _M_<sup>_h_</sup> ˆ _t_<sup>_fMs_)(</sup><sup>_x_</sup> _s_<sup>_h, ah_</sup> _s_<sup>))2</sup><sup>_≤β_</sup> _t_<sup>2</sup> � _h_ =1 _s_ =1 � with appropriately chosen _βt_ . **9 return** randomly chosen _πt_ from _t_ = 1 to _t_ = _T_ 

In order to analyze Algorithm 18.4, we need to introduce the concept of modelbased Bellman error for model-based RL problems. 

**Definition 18.37** (model-based Bellman error) **.** For model-based RL, given a model _M_ and candidate _Q_ function _f_ , we define the corresponding model-based 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 18. REINFORCEMENT LEARNING 

410 

Bellman error as 



We also use the following simplified notation: 



The definition of _E_<sup>_h_</sup> ( _M, x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) is consistent with the corresponding model-free Bellman error _E_<sup>_h_</sup> ( _fM , x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) in Definition 18.10: 



This immediately implies the following specialization of Theorem 18.11 for modelbased RL. The proof is left to Exercise 18.6. 

**Theorem 18.38.** _Consider a model M with its value function fM and optimal policy πM . Then we have_ 



_where Vπ_<sup>1</sup> _M_<sup>(</sup><sup>_x_1)</sup><sup>_isthetruevaluefunctionofthetrueunderlyingMDPM∗,and_</sup> ( _x, a, r_ ) _∼ πM |x_<sup>1</sup> _denotes the trajectory of policy πM under the true MDP M∗._ 

We can now introduce the definition of Bellman eluder coefficient for modelbased RL. Instead of reducing the on-policy Bellman error _E_<sup>_h_</sup> ( _Mt, x_<sup>_h_</sup> _t_<sup>_, ah_</sup> _t_<sup>)to</sup> squared Bellman error on the historic training data as in Definition 18.19, we can reduce it to different loss functions. Note that similar to Definition 18.19, we define it in expectation for more generality. 

**Definition 18.39** (Model-based Bellman Eluder Coefficient) **.** Consider an arbitrary loss function sequence _L_ = _{L_<sup>_h_</sup> _t_<sup>(</sup><sup>_M, M∗_):</sup><sup>_M × M→_R+</sup><sup>_, t∈_[</sup><sup>_T_]</sup><sup>_, h∈_[</sup><sup>_H_]</sup><sup>_}_</sup> so that each loss function _L_<sup>_h_</sup> _t_<sup>may also depend on (</sup><sup>_Mt, xh_</sup> _t_<sup>_, ah_</sup> _t_<sup>). The</sup><sup>_L_-loss Bellman</sup> eluder coefficient EC _L_ ( _ϵ, M, T_ ) of a model-based RL problem _M_ is the smallest _d_ so that for any filtered sequence _{Mt,_ ( _xt, rt, at_ ) _∼ πMt, Lt}_<sup>_T_</sup> _t_ =1<sup>:</sup> 



Definition 18.39 is generic, which can include both _Q_ -type and _V_ -type problems. We will only consider _Q_ -type problems in this section. In the following, we introduce several commonly used _Q_ -type loss functions for model-based RL. 

**Definition 18.40.** Consider model-based eluder coefficients in Definition 18.39 with the following _Q_ -type loss functions. The loss function 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

18.5. MODEL-BASED REINFORCEMENT LEARNING 

411 

is referred to as the _value targeted loss_ , and the corresponding Bellman eluder coefficient, denoted by EC _Q−_ VT, is referred to as the _Q_ -type value targeted Bellman eluder 

Given a _Q_ function class _F_ that contains _{fM_ : _M ∈M}_ . Assume that _r_<sup>_h_</sup> + _f_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) _∈_ [0 _,_ 1] for all _f ∈F_ and _h ∈_ [ _H_ ]. The loss function 



is referred to as the _witness loss_ , and the corresponding Bellman eluder coefficient, denoted by EC _Q−_ Wit, is referred to as the _Q_ -type witness Bellman eluder 

The loss function 



is referred to as the _Hellinger loss_ , and the corresponding Bellman eluder coefficient, denoted by EC _Q−_ Hel, is referred to as the _Q_ -type Hellinger Bellman eluder 

We have the following result concerning the relationship of different modelbased eluder coefficients. The proof is left as an exercise. 

## **Proposition 18.41.** _We have_ 



With this definition, we can now prove a regret bound for Algorithm 18.4 using the value targeted eluder coefficient. We first state a result which is an extension of Theorem 13.15. The proof is almost identical to that of Theorem 13.15 (with _σ_ = 0 _._ 5), and thus we leave it as an exercise. 

**Lemma 18.42.** _Assume that Assumption 18.36 holds. Consider function class F_ = _{f_<sup>_h_</sup> ( _M_<sup>_′_</sup> _, x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) : _M × X × A →_ R _} that contains {E_<sup>_h_</sup> ( _M, ·, ·_ ) : _M ∈M}. Assume that in Algorithm 18.4, we set_ 



_where ∥f ∥∞_ = sup _M ′,h,xh,ah |f_<sup>_h_</sup> ( _M_<sup>_′_</sup> _, x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) _|. Then with probability at least_ 1 _− δ, for all t ≤ T : M∗ ∈Mt._ 

We can now obtain the following regret bound, which is analogous to Theorem 18.21, with a similar proof. 

**Theorem 18.43.** _Assume that Assumption 18.36 holds. Consider function class F_ = _{f_<sup>_h_</sup> ( _M_<sup>_′_</sup> _, x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) : _M × X × A →_ R _} that contains {E_<sup>_h_</sup> ( _M, ·, ·, ·_ ) : _M ∈M}. Assume that in Algorithm 18.4, we set_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

. 

yo ) 

: <u>yy( ¥</u> \ fF 

18.5. MODEL-BASED REINFORCEMENT LEARNING 

413 

we have 



The last inequality used _Mt ∈Mt−_ 1 and _M∗ ∈Mt−_ 1. 

One advantage of model-based approach is that one can use other types of Bellman eluder coefficients in Proposition 18.41 that are weaker than value targeted Bellman eluder coefficients. We may consider the Hellinger Bellman eluder coefficient, which reduces the on policy Bellman error to the Hellinger loss on the historic training data. The latter can be bounded using a log-likelihood (KL) loss and posterior sampling, as shown in Corollary 10.26. Therefore a more general approach (with the weaker Bellman eluder coefficient) to model-based RL is to use log-likelihood loss to directly estimate the model parameter _M_ . Given trajectories _St−_ 1 = _{_ ( _x_<sup>_h_</sup> _s_<sup>_, a_</sup> _s_<sup>_h, r_</sup> _s_<sup>_h_):</sup><sup>_h_=1</sup><sup>_, . . . , H, s_=1</sup><sup>_, . . . , t −_1</sup><sup>_}_,wemaydefinea</sup> posterior with optimistic Feel-Good terms as follows 



where 



We can then employ posterior sampling as in Algorithm 18.5, which only requires the value _fM_<sup>1(</sup><sup>_x_1)tobecalculated.Comparedtothevaluetargetedapproach,</sup> Algorithm 18.5 replaces the integration of _fM_<sup>_h_+1</sup> _s_<sup>(</sup><sup>_x_</sup> _s_<sup>_h_+1</sup> ) for _h ≥_ 1 by log-likelihood, which is simpler for many problems. Since the algorithm relies on the weaker Hellinger Bellman eluder coefficient, it can be more effective in exploration. For example, it applies to problems such as model-based linear MDP (which we will discuss later) that cannot be handled by the value targeted approach. Although one can derive a general regret analysis for Algorithm 18.18 (see Agarwal and Zhang, 2022a, for example), the general analysis needs to deal with the reward term and the Feel-Good term _fM_<sup>1(</sup><sup>_x_1</sup> _s_<sup>) in addition to the log-likelihood</sup> term. In the following, we want to focus on the analysis of the log-likelihood term, and thus we will consider a simplified version as follows. We assume that the expected reward is known, so that _RM_<sup>_h_(</sup><sup>_xh, ah_) =</sup><sup>_R_</sup> _M_<sup>_h_</sup> _∗_<sup>(</sup><sup>_xh, ah_)forall</sup><sup>_M∈M_.</sup> Moreover, we assume that the distribution of _x_<sup>1</sup> _t_<sup>is known, so that</sup><sup>_fM_= E</sup><sup>_x_1</sup><sup>_f_1(</sup><sup>_x_1)</sup> 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 18. REINFORCEMENT LEARNING 

414 

**Algorithm 18.5:** _<u>Q</u>_ -type Model-Based Posterior Sampling Algorithm 

**Input:** _λ_ , _η_ , _η_ ˜, _T_ , _p_ 0, _M_ **1 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 2** Observe _x_<sup>1</sup> _t_ **3** Draw _Mt ∼ pt_ ( _M |x_<sup>1</sup> _t_<sup>_, St−_1)</sup> according to _pt_ ( _M |x_<sup>_t_</sup> 1<sup>_, St−_1)definedin(18.18)</sup> **4** Let _πt_ = _πMt_ **5** Play policy _πt_ and observe trajectory ( _xt, at, rt_ ) 

is also given. With these modifications, we can simplify (18.18) as 



We introduce the following definition, which plays a role similar to the concept of covering (see Example 17.32). 

**Definition 18.44.** Given a model class _M_ and true model _M∗_ , we define the KL ball and Hellinger ball around the true model _M∗_ as 



We have the following result, which shows that as long as one avoids negativeinfinity model log-likelihood, Hellinger-ball and KL-ball are equivalent up to a log-factor specified by _ρ_ . 

**Lemma 18.45.** _Let_ 



_We have_ 



_Moreover, for any M ∈MH_ ( _ϵ_ ) _, we have_ 



_Proof_ The first two inequalities used _H_ ( _P ||Q_ )<sup>2</sup> _≤_ KL( _P ||Q_ ) _≤ ρH_ ( _P ||Q_ )<sup>2</sup> in 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

—, 

— an 

—, 

| 

| 

| 

sy Sy 

— | =y ~~a) ||~~ [ [ 

S- ~~_ _ —~~ 

y y yy ~~y:~~ ~~<u>y-</u>~~ ryy ~~<u>—</u> _ _ yoo~~ 

(v ) 

CHAPTER 18. REINFORCEMENT LEARNING 

418 

dependent parameter _θ_<sup>_h_</sup> _∈H_ and _θ_<sup>˜</sup><sup>_h_</sup> _∈ H_<sup>˜</sup> such that 



Note that a linear mixture MDP is not necessarily a linear MDP because the transition matrix may not be low rank. The following are examples of linear mixture MDP. 

**Example 18.49** (Tabular MDP) **.** In a Tabular MDP, we assume that _|A|_ = _A_ and _|X|_ = _S_ . Let _d_ = _AS_<sup>2</sup> which encodes the space of _X ×A×X_ with components indexed by ( _x, a, x_<sup>_′_</sup> ). Then we can take _φ_<sup>_h_</sup> ( _x, a, x_<sup>_′_</sup> ) = _e_ ( _x,a,x′_ ) and _w_<sup>_h_</sup> be a _d_ dimensional vector so that its ( _x, a, x_<sup>_′_</sup> ) component is _P_<sup>_h_</sup> ( _x_<sup>_h_+1</sup> = _x_<sup>_′_</sup> _|x_<sup>_h_</sup> = _x, a_<sup>_h_</sup> = _a_ ). Similarly, let _φ_<sup>˜</sup><sup>_h_</sup> ( _x, a_ ) = _e_ ( _x,a_ ) be _d_<sup>_′_</sup> = _AS_ dimensional vector. We can take _θ_<sup>_h_</sup> as a _d_<sup>_′_</sup> = _AS_ dimensional vector so that _φ_<sup>˜</sup><sup>_h_</sup> ( _x, a_ ) = _e_ ( _x,a_ ), and its ( _x, a_ ) component is E[ _r_<sup>_h_</sup> _|x_<sup>_h_</sup> = _x, a_<sup>_h_</sup> = _a_ ]. Therefore a Tabular MDP is a linear mixture MDP. 

**Example 18.50** (Mixture of known MDPs) **.** Consider _d_ base MDPs _M_ 1 _, . . . , Md_ , where each MDP _Mj_ corresponds to a transition distribution _PM_<sup>_h_</sup> _j_<sup>(</sup><sup>_xh_+1</sup><sup>_|xh, ah_)</sup> and an expected reward _RM_<sup>_h_</sup> _j_<sup>(</sup><sup>_xh, ah_). Consider a model family</sup><sup>_M_, where</sup><sup>_M∈M_</sup> is represented by _w_ 1 _, . . . , wd ≥_ 0 and<sup>�</sup><sup>_d_</sup> _j_ =1<sup>_wj_= 1.Thenwecanexpress</sup> 



One can similarly define _RM_<sup>_h_(</sup><sup>_xh, ah_) = �</sup><sup>_d_</sup> _j_ =1<sup>_wjR_</sup> _M_<sup>_h_</sup> _j_<sup>(</sup><sup>_xh, ah_).</sup> 

Similar to Proposition 18.18, we have the following structural result for linear mixture MDP. 

**Proposition 18.51.** _Consider linear mixture MDP in Definition 18.48. There exist w_<sup>_h_</sup> ( _M_ ) _∈H_<sup>_h_</sup> _⊕ H_<sup>˜</sup><sup>_h_</sup> _and ψ_<sup>_h_</sup> ( _M_<sup>_′_</sup> _, x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) _∈H_<sup>_h_</sup> _⊕ H_<sup>˜</sup><sup>_h_</sup> _such that_ 



_It implies that_ 



For linear mixture MDP, one can employ Proposition 17.20 (and Proposition 15.8) to obtain an estimate of the _Q_ -type Value Targeted eluder coefficient in 18.39. 

**Proposition 18.52.** _Consider a linear mixture MDP with representation in_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

18.7. _<u>Q</u>_ -TYPE MODEL-BASED LINEAR MDP 

419 

˜ _Proposition 18.51. Assume that_ sup _M ∈M ∥w_<sup>_h_</sup> ( _M_ ) _− w_<sup>_h_</sup> ( _M∗_ ) _∥Hh⊕H_<sup>_h≤B,then_</sup> 



_In particular, if H_<sup>_h_</sup> _⊕ H_<sup>˜</sup><sup>_h_</sup> _are finite for all h, then we have_ 



˜ _where B_<sup>_′_</sup> = sup _h_ sup _M,xh,ah ∥ψ_<sup>_h_</sup> ( _M, x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) _∥Hh⊕H_<sup>_h._</sup> 

We can apply Algorithm 18.4 to solve the linear mixture MDP problem. Assume that dim( _H_<sup>_h_</sup> _⊕ H_<sup>˜</sup><sup>_h_</sup> ) = _d_ for all _h_ , then EC(1 _, M, T_ ) = _O_<sup>˜</sup> ( _Hd_ ). If different _h_ -steps do not share feature maps and model coefficients, then we know that the entropy in Theorem 18.43 can be bounded as _O_<sup>˜</sup> ( _Hd_ ). This implies that _βt_<sup>2=</sup><sup>_O_˜(</sup><sup>_Hd_).We</sup> thus obtain the following regret bound 



We note that this regret bound is similar to that for linear MDP of (18.8). The dependency in _d_ is not improvable because it matches the lower bound for bandit problems. However, the dependency on _H_ can be improved using weighted regression (see Zhou et al., 2021; Zhou and Gu, 2022). 

## **18.7** _Q_ **-type Model-Based Linear MDP** 

Consider linear MDP in Definition 18.15. In a model based approach, we may assume that that _ν_<sup>_h_</sup> ( _x_<sup>_h_+1</sup> ) is parametrized as _ν_<sup>_h_</sup> ( _M, x_<sup>_h_+1</sup> ), so that we have a full model for transition probability and for the expected reward. 

**Definition 18.53.** Let _{H_<sup>_h_</sup> : _h ∈_ [ _H_ ] _}_ be inner product spaces. In _Q_ -type model-based linear MDP, we assume that there exists maps _ν_<sup>_h_</sup> : _M × X →H_<sup>_h_</sup> , _θ_<sup>_h_</sup> : _M →H_<sup>_h_</sup> , and _φ_<sup>_h_</sup> : _X × A →H_<sup>_h_</sup> , so that model dynamics can be expressed as 



Note that although we work with linear MDP, the model for _PM_ and _RM_ do not have to be linear functions. However, for the _Q_ -type approaches, we assume that they can be embedded into a linear function space with respect to the true feature map _φ_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) of the underlying linear MDP. Proposition 18.18 implies that for 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 18. REINFORCEMENT LEARNING 

420 

model-based linear MDP in Definition 18.53, there exists maps _w_<sup>_h_</sup> : _M×F →H_<sup>_h_</sup> for _h ∈_ [ _H_ ] so that 



This implies that unlike linear mixture MDP, value targeted Bellman eluder coefficient (see Definition 18.40) cannot be directly used in model-based linear MDP because the weight vector _w_ ( _Mt, fMs_ ) (for _s < t_ ) depends on _Ms_ in the decomposition of (18.22). If we use _w_ ( _Mt, fMt_ ) instead of _w_ ( _Mt, fMs_ ), then the resulting method is equivalent to model-free linear MDP, as 



based on (18.17). This decomposition leads to the same eluder coefficient for model-free linear MDP in Proposition 18.20. However, for model-based problems, we can also replace _L_<sup>_h_</sup> _s_<sup>(</sup><sup>_Mt, M∗_)ontherighthandsideofDefinition18.39byany</sup> upper bound. Therefore we can use the witness loss upper bound 



to obtain the following result from Proposition 18.20. The proof is left as an exercise. 

**Proposition 18.54.** _Consider the model-based linear MDP in Definition 18.53. Assume that ∥w_<sup>_h_</sup> ( _M, fM_ ) _− w_<sup>_h_</sup> ( _M∗, fM∗_ ) _∥Hh ≤ B, where w_<sup>_h_</sup> ( _M, fM_ ) _is defined in_ (18.22) _, then_ 



Proposition 18.54 implies that we can apply Algorithm 18.5 to solve the modelbased linear MDP problem. Assume that each _H_<sup>_h_</sup> is _d_ dimensional, then 



and we obtain the following regret bound from Theorem 18.47 with optimal _λ_ : 



We note that _κ_ ( _·_ ) behaves like entropy number. For a finite function class of _M_ members, _κ_ ( _·_ ) _≤_ ln _M_ . For function class with infinite members, similar results can be obtained by choosing a small Hellinger ball for the model class, with a small constant added to each conditional probability model to avoid negative infinity model log-likelihood. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

18.8. MODEL-BASED _V_ -TYPE BELLMAN ELUDER COEFFICIENT 

421 

## **18.8 Model-Based** _V_ **-type Bellman Eluder Coefficient** 

We have shown in Section 18.4 that in the model-free setting, it is possible to learn an MDP which has an unknown Bellman factorization with a nonlinear _Q_ -function class that is linearly embeddable. If we assume that the transition probability is known, then it is also possible to learn similar models using a model-based approach. To motivate this approach, we may consider the modelbased approach to linear MDP. In the _Q_ -type approach, we have to assume that the model can be represented linearly with the true linear map of the underlying MDP. In the _V_ -type approach, this is not necessary. Similar to the model free approach in Definition 18.27, we can introduce the following definition. 

**Definition 18.55** (Model-Based _V_ -type Bellman Eluder Coefficient) **.** Consider loss functions _{L_<sup>_h_</sup> ( _M, M∗, x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) : _M × M × X × A →_ R+ _, h ∈_ [ _H_ ] _}_ . For each _h ∈_ [ _H_ ], the corresponding _V_ -type _L_ -loss Bellman eluder coefficient EC _L_<sup>_h_(</sup><sup>_ϵ, M, T_)</sup> of a model-based RL problem _M_ is the smallest _d_ so that for any filtered sequence _{Mt,_ ( _xt, rt, at_ ) _∼ πMt}_<sup>_T_</sup> _t_ =1<sup>:</sup> 



Although the generic definition in Definition 18.39 can handle _V_ -type problems, we rewrite it in Definition 18.55 to focus on the special structure of _V_ -type problems (and to separate different _h_ instead of taking the sum over _h_ ). Specifically, _Q_ -type problems considered in Definition 18.40 assume that the _Q_ -type loss function _L_<sup>_h_</sup> _s_<sup>(</sup><sup>_Mt, M∗_) depends on (</sup><sup>_Mt, Ms, xh_</sup> _s_<sup>_, ah_</sup> _s_<sup>). The dependency is replaced by</sup> ˜ dependency on ( _Mt, Ms,_ ˜ _x_<sup>_h_</sup> _,_ ˜ _a_<sup>_h_</sup> = _πMt_ (˜ _x_<sup>_h_</sup> )), with _x_<sup>_h_</sup> _∼ πMs_ in the _V_ -type definition of Definition 18.55. Similar to model-free RL in Definition 18.27, we require ˜ the loss to depend on the action _a_<sup>_h_</sup> = _πMt_ (˜ _x_<sup>_h_</sup> ) using the current model _Mt_ . We may still consider loss functions in Definition 18.40 for _V_ -type problems. 

**Definition 18.56.** Consider model-based _V_ -type eluder coefficients in Definition 18.55. Given a _Q_ function class _F_ that contains _{fM_ : _M ∈M}_ . Assume that _r_<sup>_h_</sup> + _f_<sup>_h_</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) _∈_ [0 _,_ 1] for all _f ∈F_ and _h ∈_ [ _H_ ]. The Bellman eluder coefficient corresponding to the following loss 



denoted by EC _V −_ Wit( _ϵ, M, F, T_ ), is referred to as the _V_ -type witness Bellman eluder 

The Bellman eluder coefficient corresponding to the loss function 



denoted by EC _V −_ Hel( _ϵ, M, T_ ), is referred to as the _V_ -type Hellinger Bellman eluder 

The following result is a counterpart of Proposition 18.41. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 18. REINFORCEMENT LEARNING 

422 

**Proposition 18.57.** _We have_ 



It was shown in Proposition 18.29 that Bellman factorization in Definition 18.28 can be used to bound the _V_ -type Bellman eluder coefficient for model-free RL. For model-based RL, we can introduce a weaker form of Bellman factorization using the witness loss. To motivate it, we note that the model-free Bellman factorization and (18.17) implies that 



We can thus employ an easier to satisfy inequality for witness loss to define a factorization assumption. This leads to an inequality based definition called witness Bellman factorization, which is weaker than Bellman factorization in 18.28 for model-free RL. 

**Definition 18.58** (Witness Bellman Factorization) **.** Let _H_ = _{H_<sup>_h_</sup> _}_ be a sequence of inner product vector spaces for _h_ = 1 _, . . . , H_ . An MDP has a witness Bellman factorization with respect to _H_ if the following condition holds. For all _h ≥_ 2 and model _M ∈M_ , there exists _u_<sup>_h−_1</sup> ( _M_ ) _∈H_<sup>_h−_1</sup> , for all policy _π_<sup>_′_</sup> , there exists _φ_ ( _π_<sup>_′_</sup> ) _∈H_<sup>_h−_1</sup> , such that the following factorization holds: 



where _κ ≥_ 1 is some constant. 

Similar to Proposition 18.29, we have the following result for the witness Bellman eluder coefficient. The proof is left as an exercise. 

**Proposition 18.59.** _Consider an MDP with a witness Bellman factorization in Definition 18.58. Assume that x_<sup>1</sup> _t_<sup>_are iid samples drawn from the same underlying_</sup> _distribution, and for h ≥_ 2 _,_ sup _f ∈F ∥u_<sup>_h−_1</sup> ( _M_ ) _∥Hh−_ 1 _≤ B. Assume that r_<sup>_h_</sup> + _f_<sup>_h_+1</sup> ( _x_<sup>_h_</sup> _, a_<sup>_h_</sup> ) _∈_ [0 _,_ 1] _, then_ 



_where_ entro( _·_ ) _is defined in Proposition 15.8._ 

Proposition 18.57 and Proposition 18.59 imply that the _V_ -type Hellinger Bellman eluder coefficient can be bounded using witness Bellman factorization. Therefore a general approach for model-based RL is to employ the Hellinger eluder coefficient, which reduces on-policy Bellman error to Hellinger loss on the training data. The latter can be bounded using the standard likelihood based criterion. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

18.8. MODEL-BASED _V_ -TYPE BELLMAN ELUDER COEFFICIENT 

423 

The resulting procedure is given in Algorithm 18.6, which has been analyzed in (Agarwal and Zhang, 2022a) using decoupling coefficients. One can also derive a regret bound for this algorithm comparable to that of Theorem 18.34 by using techniques for analyzing Algorithm 18.5 via Bellman eluder coefficients. 

**Algorithm 18.6:** _V_ -type Model-Based Posterior Sampling Algorithm 

**Input:** _λ_ , _η_ , _η_ ˜, _π_ ˜, _T_ , _p_ 0, _M_ **1 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 2** Observe _x_<sup>1</sup> _t_ **3** Draw _Mt ∼ pt_ ( _M |x_<sup>1</sup> _t_<sup>_, St−_1)</sup> according to _t t−_ 1 _pt_ ( _M |x_<sup>_t_</sup> 1<sup>_, St−_1)</sup><sup>_∝p_0(</sup><sup>_M_) exp</sup> _λ_ � _fM_ ( _x_<sup>1</sup> _s_<sup>) +</sup> � _L_<sup>_h_</sup> _s_<sup>_s_(</sup><sup>_M_)</sup> _,_ � _s_ =1 _s_ =1 � with _L_<sup>_h_</sup> _s_<sup>(</sup><sup>_M_) =</sup><sup>_−η_˜(</sup><sup>_R_</sup> _M_<sup>_h_(</sup><sup>_xh_</sup> _s_<sup>_, ah_</sup> _s_<sup>)</sup><sup>_−r_</sup> _s_<sup>_h_)2 +</sup><sup>_η_ln</sup><sup>_P h_</sup> _M_<sup>(</sup><sup>_xh_</sup> _s_<sup>+1</sup> _| x_<sup>_h_</sup> _s_<sup>_, ah_</sup> _s_<sup>).</sup> **4** Draw Let _πt_ = _πMt_ **5** Play policy _πt_ and observe trajectory ( _xt, at, rt_ ) up to _x_<sup>_h_</sup> _t_<sup>_t_</sup> with uniformly random _ht_ **6** Play random policy _a_<sup>_h_</sup> _t_<sup>_t∼π_˜</sup><sup>_ht_(</sup><sup>_·|xh_</sup> _t_<sup>_t_),andobserve(</sup><sup>_r_</sup> _t_<sup>_ht, xh_</sup> _t_<sup>_t_+1</sup> ) 

**7 return** randomly chosen _πt_ from _t_ = 1 to _t_ = _T_ 

One benefit of model-based approach over model-free approach is that exploration is generally easier in model-based approach. This is a direct implication of the fact that model-based witness eluder coefficients are smaller than model-free eluder coefficients. In fact, it is easy to check that the following result holds. 

**Proposition 18.60.** _Consider model class M and a candidate Q function class F so that {fM_ : _M ∈M} ⊂F. Then_ 



Proposition 18.60 shows that in general model-based RL problems can be easier to solve than model free problems. In fact, there can be a significant separation between model free method and model-based method for certain problems such as factored MDPs. 

**Example 18.61** (Factored MDP (Kearns and Koller, 1999)) **.** Let _d ≥_ 1 and let Ωbe a small finite set. Define the context space _X_ = Ω<sup>_d_</sup> , with the natural partition by time. For a state _x_<sup>_h_</sup> _∈X_ we use _x_<sup>_h_</sup> [ _i_ ] _⊂_ Ωfor _i ∈_ [ _d_ ] to denote _i_ -th component of _x_<sup>_h_</sup> , and for a subset of state variables. For each _i ∈_ [ _d_ ], the 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 18. REINFORCEMENT LEARNING 

424 

parent of _i_ , pa _i ⊂_ [ _d_ ] are the subset of state variables that directly influence _i_ . In factored MDPs, the transition probability _P_ factorizes according to 



It is known that factored MDPs are learnable using model-based approach in polynomial time, with well-behaved witness Bellman factorization. However any model free method has a complexity exponential in _H_ (Sun et al., 2019). 

## **18.9 Historical and Bibliographical Remarks** 

Reinforcement learning (Sutton and Barto, 2018) has a long history, and important algorithms such as _Q_ -learning (Watkins and Dayan, 1992) for value function based approach, and policy gradient (REINFORCE) (Williams, 1992) for policy based approach were developed in the earlier 1990s. The theoretical analysis considered in this chapter only covers the value function approach. The mathematical foundation of reinforcement learning is closely related to dynamic programming and optimal control (Bertsekas, 2012). While the convergence analysis of _Q_ -learning appeared shortly after the algorithm was introduced (Jaakkola et al., 1993), the earlier theoretical results did not consider exploration, and they studied the simpler tabular setting. 

Theoretical analysis of reinforcement learning with exploration has been studied much more recently, and main results have been developed using value function based approaches. This chapter introduced the main technical tools to analyze reinforcement learning which has been developed in recent years. We mainly considered statistical behavior of various algorithms, and did not consider their computational complexity. In fact, many algorithms studied in the chapter may not necessarily be computationally efficient. Earlier results on reinforcement learning that takes exploration into consideration studied the tabular case (Kearns and Singh, 2002; Auer et al., 2008; Bartlett and Tewari, 2009; Dann and Brunskill, 2015). In particular, a sharp result matching minimax rate was obtained by Azar et al. (2017). 

A _Q_ -learning style model free algorithm for tabular problems was considered by Jin et al. (2018), and its extension to linear MDP, referred to as least squares value iteration with UCB (LSVI-UCB), was analyzed in (Jin et al., 2020). Algorithm 18.2 can be considered as a variant of LSVI-UCB in (Jin et al., 2020). This algorithm is quite similar to practically used _Q_ learning, but with an extra bonus term added into the regression target. The regret bound for this algorithm has a slight suboptimal dependence on _d_ . It is possible to improve the dependency on both _H_ and _d_ in the leading order by using weighted regression, similar to that of (Zhou and Gu, 2022). While Algorithm 18.2 can handle some nonlinearity, it is more complex than Algorithm 18.1 due to the requirement to explicitly incorporate the bonus function _b_<sup>_h_</sup> _t_<sup>(</sup><sup>_·_)intheregressiontarget.Thiscomplicationcan</sup> 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

18.9. HISTORICAL AND BIBLIOGRAPHICAL REMARKS 

425 

be seen in other variants such as (Wang et al., 2020), which proposed a generic procedure for bonus function design. 

For linear MDP, a different approach was proposed by Zanette et al. (2020) which improved the _d_ dependency of (Jin et al., 2020). The minimax objective used in (Zanette et al., 2020) was introduced by Antos et al. (2008). This approach, when generalized to nonlinear _Q_ -function classes, becomes Algorithm 18.1. An advantage of this method over LSVI-UCB is that the nonlinear generalization only requires the _Q_ -function class _F_ to be complete with respect to another function class _G_ , which is relatively easy to satisfy. The extension presented here using the concept of Bellman eluder coefficient has also been considered by Jin et al. (2021), which employed a similar notion of Bellman eluder dimension. A posterior sampling approach was studied by Dann et al. (2021), in which the concept of Bellman eluder coefficient was introduced. 

The idea of Bellman decomposition (and Bellman rank) was introduced by Jiang et al. (2017), and the paper presented a _V_ -type algorithm OLIVE to solve this problems with low Bellman rank. The regret decomposition in Theorem 18.11 was also presented there. An advantage of OLIVE over Algorithm 18.3 is that it does not require the completeness assumption. However, it only works for the case with finite actions (there is no easy way to generalize OLIVE to handle infinite actions), and the resulting bound is inferior in terms of its dependency on various MDP parameters such as _d_ and _H_ . A more generic framework for model-free MDP was considered in (Du et al., 2021), which can handle many cases discussed in this chapter. However, their regret bounds may be suboptimal for specific problems. The generalization of _V_ -type results to infinite actions when the linear embedding feature is unknown was obtained by Agarwal and Zhang (2022b), where the idea of employing linear _G_ -optimal design was studied under the assumption that the embedding feature is known. 

Algorithm 18.4 is similar to the method of Ayoub et al. (2020). For linear mixture MDP, the _H_ dependency is suboptimal, and was subsequently improved in (Zhou et al., 2021; Zhou and Gu, 2022) using variance (and uncertainty) weighted regression, as well as law of total variance used by Azar et al. (2017) to achieve minimax regret for tabular MDPs. The concept of witness rank for _V_ -type problems, and the decomposition in Theorem 18.38 were both introduced by Sun et al. (2019). Other _V_ -type algorithms for learning the underlying representation of the MDP such as Flambe have also been developed (Agarwal et al., 2020). The general approach to model-based reinforcement learning presented in Algorithm 18.6 using log-likelihood function was presented and analyzed in (Agarwal and Zhang, 2022a) using the decoupling coefficient approach of Section 17.4. One may also employ Bellman eluder coefficients as shown in Theorem 18.47. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 18. REINFORCEMENT LEARNING 

426 

## **Exercises** 

- 18.1 Prove Proposition 18.7. 

- 18.2 Prove Theorem 18.9. 

- 18.3 Prove a high probability version of Theorem 18.21, with a modified Bellman eluder coefficient in Definition 18.19 without the expectation. 

- 18.4 Derive a high probability version of Theorem 18.25. 

   - Show that with probability at least 1 _− δ_ : 



for some _ϵT_ ( _δ_ ) using an appropriate martingale tail inequality from Chapter 13. 

   - _H_ 

   - _•_ Show that<sup>�</sup><sup>_T_</sup> _t_ =1 � _h_ =1<sup>_Eh_(</sup><sup>_ft, x_</sup> _t_<sup>_h, ah_</sup> _t_<sup>) can be bounded with large probability under the</sup> assumptions of Lemma 18.24. 

   - Derive a high probability version of Theorem 18.25. 

- 18.5 Fill in details in the proof of Theorem 18.34. 

- 18.6 Show that (18.17) holds, and use this to prove Theorem 18.38. 

- 18.7 Prove Lemma 18.42 using Theorem 13.15. 

- 18.8 Prove Proposition 18.41 and Proposition 18.59. 

- 18.9 Prove Proposition 18.51 and compare the result to Proposition 18.18. 

- 18.10 Prove Proposition 18.54 by using a similar argument as that of Proposition 17.20. 

- 18.11 Prove Proposition 18.59 by using a similar argument as that of Proposition 18.29. 18.12 Prove Proposition 18.60. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

