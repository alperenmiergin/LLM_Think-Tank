**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Contextual Bandits** 

In the standard multi-armed bandit problem, one observes a fixed number of arms. To achieve optimal regret bounds, one estimates confidence intervals of the arms by counting. In the contextual bandit problem, one observes side information for each arm, which can be used as features for more accurate confidence interval estimation. 

**Definition 17.1** (Contextual Bandit Problem) **.** In contextual bandit, we consider a context space _X_ and an action space _A_ . Given context _x ∈X_ , we take an action _a ∈A_ , and observe a reward _r ∈_ R that can depend on ( _x, a_ ). The contextual bandit problem is a repeated game: at each time step _t_ : 

- The player observes a sample _xt ∈X_ 

- The player chooses precisely one action (or arm) _at ∈A_ 

- The reward _rt_ is revealed. 

Note that in this chapter, we will follow the convention in the bandit literature of using _A_ to denote the action space instead of the learning algorithm. We may also introduce the notation of _policy_ for contextual bandits. Using the notation ˆ of Section 13.4, a bandit learning algorithm returns a policy _q_ ( _St−_ 1) based on the history _St−_ 1. 

**Definition 17.2.** A policy _π_ for contextual bandit is a map _X →_ ∆( _A_ ), where ∆( _A_ ) denotes probability measures over _A_ with an appropriately defined _σ_ - algebra. One may also write it as a conditional distribution _π_ ( _a|x_ ), and the policy ˆ draws _a ∼ π_ ( _·|x_ ) when it observes context _x_ . A contextual bandit algorithm _q_ maps historic observations 



ˆ to a policy _πt_ = _q_ ( _·|St−_ 1) at each time step _t_ , and pulls an arm _at ∼ πt_ ( _·|xt_ ) based on the observation _xt_ . In this chapter, we will also write the history dependent ˆ policy as _at ∼ q_ ( _at|xt, St−_ 1). 

The contextual bandit problem includes the multi-armed bandit problem as a special case if we take _x_ = _x_ 0 to be a fixed context for all time steps. 

Similar to the case of multi-armed bandit problem, we may also consider the adversarial setting with an oblivious adversary as follows. At each time step _t_ , we have the information of all rewards [ _rt_ ( _a_ ) : _a ∈A_ ], but only reveals the value 

355 

CHAPTER 17. CONTEXTUAL BANDITS 

356 

of _rt_ ( _at_ ) for the chosen arm _at_ . The goal is to maximize the expected cumulative reward 



If we are given a policy class Π, then regret of a contextual bandit algorithm with respect to Π can be written as 



If we consider the stochastic contextual bandit setting with unknown _value functions_ 



that do not change over time, then the goal becomes to maximize the expected reward 



The regret of the algorithm that produces policy sequence _{πt}_ is: 



## **17.1 EXP4 for Adversarial Contextual Bandits** 

The EXP4 algorithm is a generalization of the EXP3 algorithm for the adversarial multi-armed bandit problem (Auer et al., 2002b). It can be regarded as a policy based method for adversarial contextual bandits. EXP4 can be applied to the case that the action space _A_ = _{_ 1 _, . . . , K}_ is finite, and it works in the setting of “experts.” An expert in EXP4 can be regarded as a policy. 

Assume that we have an expert class indexed by _w_ : 



Given any context _xt ∈X_ , an expert _w_ returns a probability distribution ˆ _qt_ ( _·|w, xt_ ) on _at ∈{_ 1 _, . . . , K}_ . 

Let _p_ 0( _w_ ) be a prior on Ω, then the EXP4 algorithm, presented in Algorithm 17.1, has a regret bound that is logarithmic in _|G|_ for finite _G_ , if the regret is to compete with the best expert in _G_ . EXP4 can also be regarded as a generalization of EXP3, which has _K_ experts, and each expert pulls one arm _a ∈{_ 1 _, . . . , K}_ constantly. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

17.1. EXP4 FOR ADVERSARIAL CONTEXTUAL BANDITS 

357 

**Example 17.3.** Any stationary policy can be regarded as an expert. As an example, we may consider experts of logistic policies (parametrized by _w_ ) defined as 



with Gaussian prior _p_ 0( _w_ ): 

_w ∼ N_ (0 _, σ_<sup>2</sup> ) _._ 

**Algorithm 17.1:** EXP4 

**Input:** _K_ , _T_ , _G_ , _p_ 0( _·_ ), _γ ∈_ (0 _,_ 1] _, η >_ 0 _, b ≥_ 0 **1** Let _u_ 0( _w_ ) = 1 **2 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 3** Observe _xt_ **4 for** _a_ = 1 _, . . . , K_ **do** ˆ ˆ **5** Let _πt_ ( _a_ ) = (1 _− γ_ )E _w∼pt−_ 1( _w_ ) _qt_ ( _a|w, xt_ ) + _γ/K_ ˆ **6** Sample _at_ according to _πt_ ( _·_ ) **7** Pull arm _at_ and observe reward _rt_ ( _at_ ) _∈_ [0 _,_ 1] ˆ ˆ ˆ **8** Let _rt_ ( _w, xt, at_ ) = _qt_ ( _at|w, xt_ )( _rt_ ( _at_ ) _− b_ ) _/πt_ ( _at_ ) ˆ **9** Let _ut_ ( _w_ ) = _ut−_ 1( _w_ ) exp( _ηrt_ ( _w, xt, at_ )) **10** Let _pt_ ( _w_ ) = _p_ 0( _w_ ) _ut_ ( _w_ ) _/_ E _w∼p_ 0( _w_ ) _ut_ ( _w_ ) 

Note that conditioned on the history, the estimator _r_ ˆ _t_ ( _w, xt, at_ ) is a random ˆ estimator that depends on the partial reward _rt_ ( _at_ ) received for _at ∼ πt_ ( _a_ ). Moreover, it is an unbiased estimator of the following shifted reward of _w_ , according to policy _q_ ˆ _t_ ( _·|w, xt_ ): 



which relies on the full reward vector [ _rt_ ( _a_ )] at time step _t_ over all arms _a_ . 

Both parameter _γ_ and _b_ control exploration. The original EXP4 set _b_ = 0, and in such case we need to set _γ >_ 0. The larger _γ_ is, the more uniform _q_ ˆ _t_ ( _a_ ) becomes, and thus we explore more. 

Similarly, the larger _b_ is, the more penalty we put on arms that have been observed, and this favors arms that are not observed in the future. In the full information case, where all _rt_ ( _a_ ) are observed at every time step, the parameter _b_ doesn’t affect the algorithm. However, in the partial information case, if we set _b_ = 0, we need _γ >_ 0 to perform exploration. On the other hand, if we choose _b_ = 1, then we can set _γ_ = 0. 

**Theorem 17.4.** _For any K, T ≥_ 0 _, and any γ ∈_ (0 _,_ 1] _, η >_ 0 _and b ≥_ 0 _. Consider any expert class G_ = _{_ [ˆ _qt_ ( _·|w, x_ )] _t_ =1 _,_ 2 _,..._ : _w ∈_ Ω _} with prior p_ 0( _w_ ) _. Let_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 17. CONTEXTUAL BANDITS 

358 

_be the reward of expert w. Then the expected reward of Algorithm 17.1 satisfies:_ 



_where the expectation is with respect to the randomization of the algorithm,_ 



_Proof_ The proof is similar to that of Theorem 16.17. By the definition of _π_ ˆ _t_ ( _at_ ), we have 



Therefore 



ˆ The first equation used the definition of _r_ . The inequality used (17.4). Moreover 



ˆ The first equation used the definition of _r_ . The first inequality used _|rt_ ( _at_ ) _− b| ≤_ max( _b,_ 1 _− b_ ). The second inequality used (17.4). If we let 



then 



The second equality used the definition of _ut_ . The first inequality used exp( _z_ ) _≤_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

aa, 

aa, _ —_ 

| | 

CHAPTER 17. CONTEXTUAL BANDITS 

360 

_where the expectation is with respect to the randomization of the algorithm, and_ 



ˆ _Proof_ We have _ηrt_ ( _w, xt, at_ ) _≤_ 1, and thus _c_ ( _η, b_ ) = _e−_ 2. Note that the uniform random policy belongs to Ωimplies that 



We consider Theorem 17.4, with _q_ defined as _q_ ( _w_ ) = 1 ( _w_ = _w∗_ ), where _w∗_ achieves the maximum of _G∗_ . This implies 



This implies the bound. 

**Example 17.6.** We can take _γ_ = 0 and _b_ = 1 in Algorithm 17.1. By noting that _φ_ ( _z_ ) is an increasing function of _z_ and _η_ (1 _− b_ ) _≤_ 0, we may take 



Theorem 17.4 implies that 



In the finite policy case _|_ Ω _|_ = _N_ with uniform prior: 



By choosing _η_ = �ln _N/_ ( _KT_ ), we obtain 



We may compare EXP4 to its full information counterpart Hedge in Algorithm 14.4. We note that in the online setting of Hedge algorithm, we can observe the information for all arms _a ∈{_ 1 _, . . . , K}_ even if _a_ is not pulled. In this ˆ case, it is possible to replace _rt_ ( _w, xt, at_ ) by _rt_ ( _w, xt_ ) = _−ℓt_ ( _wt−_ 1), and we do not have to explore in order to obtain rewards for different arms. This removes the _K_ -dependency in the resulting online regret bound. Using the same notation of Theorem 17.4, we obtain the following Hedge online regret bound (in the full 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

17.2. LINEAR UCB FOR STOCHASTIC CONTEXTUAL BANDITS 

361 

information case) from Theorem 14.15: 



Assumes that _|_ Ω _|_ = _N < ∞_ . Let _p_ 0( _w_ ) be the uniform prior over Ω, then we obtain the following online regret bound for Hedge (in the full information case): 



With _η_ = ~~�~~ ln _N/T_ , we obtain the full information regret bound of 



which does not contain the factor _K_ . 

## **17.2 Linear UCB for Stochastic Contextual Bandits** 

The EXP4 algorithm tries to find the best policy in a policy class. We can also design an algorithm that finds the best value function from a value function class. In particular, if _f∗_ ( _x, a_ ) is a linear function, then we can directly generalize the UCB algorithm to find a near optimal value function, and use its induced greedy policy to select an arm to pull. We first introduce the following definition, which generalizes stochastic linear bandit model in Section 16.4 to the contextual bandit setting. 

**Definition 17.7.** Stochastic linear contextual bandit (or stochastic contextual bandit with linear payoff) is a contextual bandit problem, where the reward at each time step _t_ is given by 



where _ϵt_ ( _x, a_ ) is a zero-mean random variable. We assume that _H_ is a known inner product space, _w∗ ∈H_ is the unknown model parameter, and the feature vector _ψ_ ( _x, a_ ) _∈H_ is known. 

In the stochastic linear bandit model, the number of arms can be either infinite or finite, and an UCB style algorithm is presented in Algorithm 17.2. Note that the algorithm selects an arm which has the largest confidence bound adjusted reward. This methodology is referred to as the _optimism in the face of uncertainty_ , and is a direct generalization of upper confidence bound (UCB) for MAB. Therefore we call Algorithm 17.2 linear UCB, although it is also referred to as OFUL (optimism in the face of uncertainty linear bandit) in the literature (Abbasi-yadkori et al., 2011). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

~~|~~ ~~<u>| =</u>~~ | ~~vo~~ »| » ~~_~~ 

17.2. LINEAR UCB FOR STOCHASTIC CONTEXTUAL BANDITS 

363 

inequality. The last inequality used the definition of _βt_ . This implies the desired bound. 

**Example 17.9.** Assume that noise in (17.8) satisfies the sub-Gaussian conditions of Theorem 13.7, and assume that _d_ = dim( _H_ ) is finite dimensional, with _B_<sup>_′_</sup> = sup _x,a ∥ψ_ ( _x, a_ ) _∥H_ . Then in Lemma 17.8 we can set 



so that (17.9) holds. Note that Proposition 15.8 is used to obtain a bound on the log determinant function. 

**Example 17.10.** Assume that noise in (17.8) satisfies the conditions of Theorem 13.10. Then in Lemma 17.8 we can set 



so that (17.9) holds. Note that entro( _·_ ) is defined in Proposition 15.8. 

The confidence interval estimate in Lemma 17.8 can be used to obtain a regret bound for the UCB method in Algorithm 17.2, and the proof is similar to that of Theorem 16.3. 

**Theorem 17.11.** _Assume that in the stochastic linear bandit model, rt_ ( _xt, at_ ) _∈_ [0 _,_ 1] _and ∥w∗∥_ 2 _≤ B for some constant B. Let µt_ ( _x, a_ ) = E _ϵt_ ( _x,a_ ) _rt_ ( _x, a_ ) = _w∗_<sup>_⊤ψ_(</sup><sup>_x, a_)</sup><sup>_.Leta∗_(</sup><sup>_x_)</sup><sup>_∈_arg max</sup><sup>_aµt_(</sup><sup>_x, a_)</sup><sup>_betheoptimalarmforeachcontext_</sup> _x. Then in Algorithm 17.2, with probability at least_ 1 _− δ,_ 



_where {βt} is any sequence that satisfies_ (17.9) _._ 

_Proof_ We have for _t ≥_ 1: 



where the first and the third inequalities used Lemma 17.8 . The second inequality is due to the UCB choice of _at_ in Algorithm 17.2. 

Let _Et_ be the event of _∥ψ_ ( _xt, at_ ) _∥At−_ 1 _≤_ 1. Since _w∗_<sup>_⊤ψ_(</sup><sup>_xt, a_)</sup><sup>_∈_[0</sup><sup>_,_1],wehave</sup> 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

Y Y Y a ~~a See~~ 

~~> :7~~ 

~~()~~ 

17.2. LINEAR UCB FOR STOCHASTIC CONTEXTUAL BANDITS 

365 

_Proof_ Consider 2<sup>_d_</sup> arms, represented by feature vectors _ψ_ ( _a_ ) = _a ∈{−_ 1 _,_ 1 _}_<sup>_d_</sup> . The reward _r_ of pulling arm _a_ (without context) is in _{−_ 0 _._ 5 _,_ 0 _._ 5 _}_ , and 



for some _w ∈{−ϵ, ϵ}_<sup>_d_</sup> , where _ϵ ∈_ (0 _,_ 0 _._ 5 _/d_ ] will be specified later. Using notations of Theorem 13.24 with _τ_ changed to _w_ and _m_ = 2, _PZ_ = _{qw_ ( _r|a_ ) _}_ , where each _qw_ ( _r|a_ ) is a _{−_ 0 _._ 5 _,_ 0 _._ 5 _}_ valued binary random variable Bernoulli(0 _._ 5 + _w_<sup>_⊤_</sup> _a_ ) _−_ 0 _._ 5. A policy _π_ is a probability distribution on _A_ , and we can define _qw_ ( _r|π_ ) = E _a∼πqw_ ( _r|a_ ). 

Let _θ_ indicate an arbitrary arm returned by a learning algorithm, represented by its feature vector _θ ∈{±_ 1 _}_<sup>_d_</sup> . It follows that the regret of pulling arm _θ_ is 



This means that for _w ∼j w_<sup>_′_</sup> and _w_ = _w_<sup>_′_</sup> ( _w_<sup>_′_</sup> _∼j w_ means that _w_<sup>_′_</sup> and _w_ are identical except at the _j_ -th component): 



Let _w_<sup>(</sup><sup>_j_)</sup> = _w − wjej_ be the vector with value zero at the _j_ -th component but the same value as that of _w_ elsewhere. 

ˆ Now we can let _ϵ_ = min �0 _._ 1 _/d,_ 0 _._ 24�1 _/T_ <u>�.</u> Given any learning algorithm _q_ , for all _w_ , time step _t_ , and _at_ represented by feature representation in _{−_ 1 _,_ 1 _}_<sup>_d_</sup> : 



where the last inequality follows from (see Exercise 16.4) 



Here we set _q_ 1 = 0 _._ 5 + ( _w_<sup>(</sup><sup>_j_)</sup> )<sup>_⊤_</sup> _a_ and _q_ 2 = 0 _._ 5 + ( _w_<sup>_′_</sup> )<sup>_⊤_</sup> _a_ . This implies that _q_ 1 _, q_ 2 _∈_ [0 _._ 4 _,_ 0 _._ 6] and _|q_ 1 _− q_ 2 _| ≤ ϵ_ . 

We can now take _βj,t_<sup>2= 2</sup><sup>_._1</sup><sup>_ϵ_2andapplyTheorem13.24.For</sup><sup>_n ≤T_,</sup> 



Since this holds for all _n ≤ T_ , we obtain the bound. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 17. CONTEXTUAL BANDITS 

366 

We note that the lower bound in Theorem 17.13 requires 2<sup>_d_</sup> number of arms. However, for _K_ arms with small _K_ , this bound is suboptimal. 

**Example 17.14.** The stochastic multi-armed bandit with _K_ arms and rewards in [0 _,_ 1] can be considered as a stochastic linear bandit, where we take _w∗_ = [ _µ_ (1) _, . . . , µ_ ( _K_ )], and _ψ_ ( _a, x_ ) = _ea_ for _a ∈{_ 1 _, . . . , K}_ . Therefore we may chose _B_ = _√K_ , so that _∥w∗∥_ 2 _≤ B_ . We can also choose _λ_ = 1 and _M_ = 1. Theorem 17.11 implies a suboptimal bound of (ignoring log factors): 



The extra _√K_ factor is due to the fact that the analysis does not take advantage of the fact that only finite number of arms are available. In comparison, Algorithm 16.2 for the noncontextual stochastic linear bandit achieves a regret of _O_<sup>˜</sup> ( _√KT_ ) according to Theorem 16.14 and Example 16.15. 

The extra dependency on _d_ (and _K_ ) is due to the uniform confidence interval over all _u ∈_ R<sup>_d_</sup> in Lemma 17.8. To obtain better dependence on _K_ , one needs to obtain confidence interval which is for a fixed _u_ as in Lemma 9.34, instead of uniform over all _u ∈_ R<sup>_d_</sup> . One difficulty for obtaining non-uniform result for in Algorithm 17.2 is that _At_ depends on _ϵs_ ( _as, ts_ ) for _s ≤ t_ , which breaks the independence argument in Lemma 9.34. 

A more complex scheme, presented in Auer (2002); Chu et al. (2011), can be used to derive such a non-uniform convergence result, which leads to an improved bound for stochastic linear bandits with finitely many arms. The resulting bound is similar to that of Theorem 16.14. 

It is also relatively easy to apply Thompson sampling to the stochastic linear bandit model. Consider the prior and likelihood functions defined as 



At the beginning of any time step _t_ , after we have observed data up to time _t −_ 1, the posterior is 



The Thompson sampling method samples _w_ ˜ from the posterior and plays an arm ˜ that is optimal with respect to _w_ . The algorithm is presented in Algorithm 17.3. 

In Section 17.4, we will analyze a variant of Thompson sampling with optimistic prior for the more general nonlinear contextual bandit problem. However, the theoretical result for the standard Thompson sampling without such an optimistic prior is inferior to that of linear UCB, although Thompson sampling can be an effective practical algorithm in many applications (see Chapelle and Li, 2011). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

17.3. NONLINEAR UCB WITH ELUDER COEFFICIENT 

367 

**Algorithm 17.3:** Thompson Sampling for Linear Contextual Bandits **Input:** _λ_ , _σ_ , _T_ **1** Let _A_ 0 = _λI_ **2** Let _w_ 0 = 0 **3** Let _b_ 0 = 0 **4 for** _t_ = 1 _,_ 2 _, . . . , T_ **do** ˜ **5** Sample _wt−_ 1 _∼ N_ ( _wt−_ 1 _, σ_<sup>2</sup> _A_<sup>_−_</sup> _t−_<sup>1</sup> 1<sup>)</sup> **6** Observe _xt_ ˜ _⊤_ **7** Let _at ∈_ arg max _a_ � _wt−_ 1<sup>_ψ_(</sup><sup>_xt, a_)</sup> � **8** Pull arm _at_ and observe reward _rt_ ( _xt, at_ ) **9** Let _bt_ = _bt−_ 1 + _rt_ ( _xt, at_ ) _ψ_ ( _xt, at_ ) **10** Let _At_ = _At−_ 1 + _ψ_ ( _xt, at_ ) _ψ_ ( _xt, at_ )<sup>_⊤_</sup> **11** Let _wt_ = _A_<sup>_−_</sup> _t_<sup>1</sup><sup>_b_</sup> _t_ 

## **17.3 Nonlinear UCB with Eluder** 

One may generalize stochastic linear contextual bandits using nonlinear function approximation as follows. 

**Definition 17.15.** The stochastic nonlinear contextual bandit is a contextual bandit problem, where the reward at each time step _t_ is given by 



where _ϵt_ ( _x, a_ ) is a zero-mean random variable, where we assume that _f∗_ ( _x, a_ ) _∈F_ for a known function class _F_ : _X × A →_ R. Given any _f_ ( _x, a_ ) _∈F_ , we also define 



and the greedy policy of _f_ as: _πf_ ( _x_ ) _∈_ arg max _a∈A f_ ( _x, a_ ). 

For stochastic nonlinear bandit model, we may generalize Algorithm 17.2 as in Algorithm 17.4. In general, we say _Ft_ is a version space if _f∗ ∈Ft_ with high probability. Choosing the optimal _ft_ in a properly defined version space is a natural generalization of upper confidence bound. The algorithm directly implements the optimism in the face of uncertainty principle. 

The following result shows that with an appropriately defined version space, Algorithm 17.4 is a generalization of Algorithm 17.2. We leave its proof to an exercise. 

**Proposition 17.16.** _Assume that F_ = _{f_ ( _w, x, a_ ) = _w_<sup>_⊤_</sup> _ψ_ ( _x, a_ ) : _w ∈_ R<sup>_d_</sup> _}. Let_ 



_where wt_ = arg min _w φt_ ( _w_ ) _, and_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 17. CONTEXTUAL BANDITS 

368 

**Algorithm 17.4:** Version Space UCB Algorithm 

**Input:** _λ_ , _T_ , _f_ 0 _∈F_ **1** Let _F_ 0 = _{f_ 0 _}_ **2 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 3** Observe _xt_ **4** Let _ft ∈_ arg max _f ∈Ft−_ 1 _f_ ( _xt_ ) **5** Let _at ∈_ arg max _a ft_ ( _xt, a_ ) **6** Pull arm _at_ and observe reward _rt_ ( _xt, at_ ) _∈_ [0 _,_ 1] **7** Let _Ft_ be an appropriate version space based on _St_ = _{_ ( _xs, as_ ) _}_<sup>_t_</sup> _s_ =1<sup>.</sup> 

_Then Algorithm 17.4 is equivalent to Algorithm 17.2. In particular, we have_ 



_and_ 



In general, the version space _Ft_ in Algorithm 17.4 contains functions that fit well on historic data _St_ . In order to analyze such a version space algorithm, we need to introduce the concept of eluder coefficient below. 

**Definition 17.17.** Given a function class _F_ , its eluder coefficient EC( _ϵ, F, T_ ) is defined as the smallest number _d_ so that for any sequence _{_ ( _xt, at_ ) _}_<sup>_T_</sup> _t_ =1<sup>and</sup> _{ft}_<sup>_T_</sup> _t_ =1<sup>_∈F_:</sup> 



The intuition behind eluder coefficient is that on average, if functions in the version space has small in sample prediction error 



on the training data at each time step _t_ , then the confidence interval _|ft_ ( _xt, at_ ) _− f∗_ ( _xt, at_ ) _|_ on the next data point is also small (on average). This allows us to obtain the following generic theorem for version space based upper confidence bound algorithm. 

**Lemma 17.18.** _In Algorithm 17.4, assume that f∗ ∈Ft−_ 1 _for all t ≤ T , and there exists f_<sup>ˆ</sup> _t and βt >_ 0 _such that_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

» 

y (=) 

~~<u>ae</u>~~ y (=) 

CHAPTER 17. CONTEXTUAL BANDITS 

370 

_where ϵt is conditional zero-mean sub-Gaussian noise: for all λ ∈_ R _,_ 



_In Algorithm 17.4, we define_ 

_and_ 

_where_ 



_Then with probability at least_ 1 _− δ:_ 



_Proof_ We note that Theorem 13.15 (with _ϵ_<sup>_′_</sup> = 0) implies that _f∗ ∈Ft−_ 1 for all _t ≥_ 2. The result is a direct consequence of Lemma 17.18. 

The following result shows that if a function class can be embedded into a RKHS (which does not need to be known to the algorithm), then its eluder is bounded. 

**Proposition 17.20.** _Assume that F ⊂H, where H is a RKHS which does not need to be known to the learning algorithm. For all f ∈H, we have the feature representation f_ ( _x, a_ ) = _⟨w_ ( _f_ ) _, ψ_ ( _x, a_ ) _⟩. Assume ∥w_ ( _f_ ) _− w_ ( _f∗_ ) _∥H ≤ B for all f ∈F and f − f∗ ∈_ [ _−_ 1 _,_ 1] _for all f ∈F. Then_ 



_where_ entro( _·_ ) _is defined in Proposition 15.8. More generally, we have_ 



_with ϵ_ = _λB_<sup>2</sup> _T_ + _T_<sup><u>2</u>entro(</sup><sup>_λ, ψ_(</sup><sup>_X× A_))</sup><sup>_._</sup> 

_Proof_ Let _A_ 0 = ( _λT_ ) _I_ and _At_ = _A_ 0 +<sup>�</sup><sup>_T_</sup> _s_ =1<sup>_ψ_(</sup><sup>_xs, as_)</sup><sup>_ψ_(</sup><sup>_xs, as_)</sup><sup>_⊤_.Let</sup><sup>_f∗_(</sup><sup>_x, a_)=</sup> _⟨w∗, ψ_ ( _x, a_ ) _⟩_ and _ft_ ( _x, a_ ) = _⟨wt, ψ_ ( _x, a_ ) _⟩_ . By using the Cauchy Schwartz inequality, we obtain 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
Vd = ><br>\d vo<br><!-- End of picture text -->

\d ~~vo~~ > > ~~re~~ 

<u>|</u> 

CHAPTER 17. CONTEXTUAL BANDITS 

372 

dimensional linear function class for a finite _d_ , then we have the following bound from Proposition 17.20 and Proposition 15.8: 



Since Theorem 5.3 implies that the covering number of _F_ is also _O_<sup>˜</sup> ( _d_ ), we can obtain the following regret bound from Theorem 17.19: 



which is consistent with that of Theorem 17.11. One may also use Proposition 15.8 to obtain bounds for nonparametric models such as RKHS induced by RBF kernels (also see Example 15.10). 

We note that different from Algorithm 17.2, Algorithm 17.4 does not use the feature representation _ψ_ ( _x, a_ ) explicitly. That is, Algorithm 17.4 allows a nonlinear function class which may be embedded into a RKHS with unknown feature _ψ_ ( _x, a_ ). Therefore the algorithm is more flexible. Moreover, if we consider a function class _F_ that can be represented as a function in RKHS _H_ , it may be a small subset of _H_ , which has a small covering number. This can also reduce the overall complexity. 

In the literature, one often employs a slightly different concept called _eluder dimension_ , which is defined below. We note that Definition 17.17 is more general because it can be shown that a small eluder dimension implies a small eluder coefficient (also see Dann et al., 2021). We leave it as an exercise. 

**Definition 17.22** (Eluder Dimension) **.** Given _ϵ >_ 0, the eluder dimension Edim( _F, ϵ_ ) of a function class _F_ is the length of the longest possible sequence of elements _{_ ( _xt, at_ ) _}_ so that for some _ϵ_<sup>_′_</sup> _≥ ϵ_ and _f_<sup>_′_</sup> _∈F_ , _∀t ≥_ 2, 



## **17.4 Nonlinear Contextual Bandits with Decoupling Coefficient** 

Optimism based contextual bandit algorithm described in Algorithm 17.4 requires an assumption on eluder coefficient, which may not behave well for general nonlinear function classes. In general, eluder coefficient allows mild nonlinearity, but the underlying structural assumption is analogous to linear function classes. On the other hand, it is known that if the number of arms _K_ is finite, then it is possible to design a contextual bandit algorithm with sublinear regret. In this section, we present a variation of Thompson Sampling called _Feel-Good Thompson Sampling_ , which can solve general nonlinear contextual bandits with finite number of arms, as well as certain nonlinear contextual bandits with infinite number of arms. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

17.4. NONLINEAR BANDITS WITH DECOUPLING COEFFICIENT 

373 

**Definition 17.23.** Given any value function _f ∈F_ , let _πf_ ( _x_ ) _∈_ arg min _a f_ ( _x, a_ ) be the greedy policy induced by _f_ . Given _ϵ >_ 0, the decoupling coefficient DC( _ϵ, F_ ) of a function class _F_ is defined as the smallest _d >_ 0 so that for all distribution _p_ on _F_ : 



The following result indicates that decoupling coefficient allows linear embedding of the function class with linear weight that can depend on the context _x_ . This allows it to deal with much more general nonlinear function classes that cannot be handled by eluder coefficient, such as general nonlinear function classes with a number of arms. 

**Definition 17.24** (Linearly Embeddable Condition) **.** Let _H_ be a vector space with inner product _⟨·, ·⟩_ . We say a function class _F_ is linearly embeddable in _H_ if there exists _ψ_ : _X × A →H_ , and _w_ : _F × X →H_ , so that for all _f ∈F_ and ( _x, a_ ) _∈X × A_ , we have 



The following result shows that decoupling coefficients can be estimated for linear embeddable function classes. 

**Proposition 17.25.** _Assume that F satisfies Definition 17.24, and ∥w_ ( _f, x_ ) _− w_ ( _f∗, x_ ) _∥H ≤ B. Then_ 



_where_ dim( _·_ ) _is defined in Proposition 9.36._ 

_Proof_ Let _A_ ( _p_ ) = E _f ∼pψ_ ( _x, πf_ ( _x_ )) _ψ_ ( _x, πf_ ( _x_ ))<sup>_⊤_</sup> . We have 



The first inequality is Cauchy-Schwartz. We can now use _λ∥w_ ( _f, x_ ) _−w_ ( _f∗, x_ ) _∥_ 2<sup>2</sup><sup>_≤_</sup> _λB_<sup>2</sup> to obtain the desired bound. 

**Example 17.26.** If there are only _K_ arms: _a ∈{_ 1 _, . . . , K}_ , then DC( _ϵ, F_ ) _≤ K_ for all _ϵ >_ 0. This can be achieved by embedding all _f_ ( _x, a_ ) to a weight vector 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 17. CONTEXTUAL BANDITS 

374 

_w_ ( _x_ ) such that _w_ ( _x_ ) = [ _f_ (1 _, x_ ) _, . . . , f_ ( _K, x_ )], and _ψ_ ( _x, a_ ) = _ea_ . The decoupling coefficient is bounded by DC(0 _, F_ ) _≤ K_ . 

This example shows that the decoupling coefficient in Definition 17.23 for finite arm nonlinear contextual bandits is always finite, which is a property that does not hold for eluder in 17.17. 

**Example 17.27.** Assume _F ⊂H_ is linearly embeddable in an inner product space _H_ with _ψ_ . If _H_ is finite dimensional, then DC(0 _, F_ ) _≤_ dim( _H_ ). Estimate for infinite dimensional embeddings can be found in Proposition 9.36. 

We now present an algorithm, referred to as _Feel-Good Thompson Sampling_ , which adds an optimistic prior to Thompson sampling. The resulting algorithm solves nonlinear contextual bandit under small decoupling coefficient. Given history _St−_ 1 = _{_ ( _x_ 1 _, a_ 1 _, r_ 1) _, . . . ,_ ( _xt−_ 1 _, at−_ 1 _, rt−_ 1) _}_ . Let _p_ 0( _f_ ) be an arbitrary prior distribution on _F_ . We 



where _L_ ( _f, x, a, r_ ) = _−λf_ ( _x_ ) + _η_ ( _f_ ( _x, a_ ) _− r_ )<sup>2</sup> . The term _λf_ ( _x_ ) (referred to as Feel-Good term) favors an optimistic value function _f_ ( _x_ ), which plays a similar role as upper confidence bound. 

**Algorithm 17.5:** Feel-Good Thompson Sampling for Contextual Bandits 

**Input:** _p_ 0, _T_ 

**1 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 2** Observe _xt ∈X_ **3** Draw _ft ∼ p_ ( _f |St−_ 1) according to (17.12) **4** Pull arm _at_ = _πft_ ( _xt_ ) **5** Observe reward _rt ∈_ [0 _,_ 1] 

To analyze Algorithm 17.5, we need the following lemma that can be used to reduce regret for contextual bandit problems into online regret analysis for random Gibbs algorithm. 

**Lemma 17.28.** _Given any distribution p on f , we have for all µ >_ 0 _:_ 



_Proof_ We note that _f_ ( _x_ ) = _f_ ( _x, πf_ ( _x_ ))). Therefore 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

17.4. NONLINEAR BANDITS WITH DECOUPLING COEFFICIENT 

375 

Using Definition 17.23, we have 



By combining the two inequalities, we obtain the desired bound. 

The lemma implies that bandit regret can be upper bounded with the FeelGood term plus least squares loss. Next we show that both can be bounded using online learning analysis similar to that of Theorem 14.15 and Theorem 14.16. 

**Lemma 17.29.** _Assume that f ∈_ [0 _,_ 1] _for all f ∈F. If η ≤_ 0 _._ 5 _, then the following bound holds for Algorithm 17.5:_ 





_Proof_ Let 



be the log-partition function for observations up to time _t_ . Let _pt−_ 1( _f_ ) = _p_ ( _f |St−_ 1). We have 



The first inequality follows from Jensen’s inequality and the convexity of the function ln E _Z_ exp( _Z_ ) in _Z_ . The second inequality used the estimate of logarithmic moment generation function in Lemma 2.15 with _f − f∗ ∈_ [ _−_ 1 _,_ 1]. 

Next, we introduce the simplified notation 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 17. CONTEXTUAL BANDITS 

376 

and bound _At_ as follows. 



The first inequality used Jensen’s inequality to move E _rt|xt,at_ into the concave function ln( _·_ ). The second inequality used Lemma 2.15 and E [ _rt|xt, at_ ] = _f∗_ ( _xt, at_ ). The third inequality used ln E exp( _Z_ ) _≤_ exp( _c_ ) E[ _Z_ ] when _c ≤ Z ≤_ 0. 

By combining the previous inequalities, and summing over _t_ , we obtain 



The first inequality used _η ≤_ 0 _._ 5. The second inequality used (17.14). The third inequality used (17.13). We can now use Proposition 7.16 to reformulate the log-partition function _ZT_ , and obtain the desired bound. 

**Theorem 17.30.** _Assume that f ∈_ [0 _,_ 1] _for all f ∈F. If η ≤_ 0 _._ 5 _, then the following bound holds for Algorithm 17.5:_ 



_where_ ∆ _L_ ( _f, x, a, r_ ) = _L_ ( _f, x, a, r_ ) _− L_ ( _f∗, x, a, r_ ) _._ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
yO<br>~—— YO<br>~ [ |<br>.<br>= |<br>Ww<br>= |<br><!-- End of picture text -->

CHAPTER 17. CONTEXTUAL BANDITS 

378 

**Theorem 17.33.** _Consider K ≥_ 2 _and d ≥_ 1 _. There exists a bandit problem with {_ 0 _,_ 1 _} valued rewards, such that the realizable condition holds with |A|_ = _K,_ ˆ _|F|_ = _K_<sup>_d_</sup> _, so that the expected regret of any bandit algorithm q is at least_ 



_Proof_ We would like to apply Theorem 13.24 with _m_ = _K_ . We consider finite _X_ = _{_ 1 _, . . . , d}_ with _d_ different contexts. Consider the class of all possible deterministic policies _G_ = _{τ_ : _X →_ [ _K_ ] _}_ , which contains _|G|_ = _K_<sup>_d_</sup> policies. For each policy _τ_ , we define its value function 



where _ϵ ∈_ (0 _,_ 0 _._ 1] will be specified later. For each _j_ , we assume also that 



We now consider _{_ 0 _,_ 1 _}_ -valued reward distribution 

_q_<sup>_τ_</sup> ( _r|x, a_ ) = Bernoulli( _f_<sup>_τ_</sup> ( _x, a_ )) _, qj_<sup>_τ_(</sup><sup>_r|x, a_) = Bernoulli(</sup><sup>_f_</sup> _j_<sup>_τ_(</sup><sup>_x, a_))</sup><sup>_._</sup> 

Given a (random) policy _π_ which returns a distribution _π_ ( _a|x_ ) for all _x ∈X_ , we can 



and similarly for _qj_<sup>_τ_(</sup><sup>_r|π, x_). Let</sup><sup>_τ∼jτ ′_if</sup><sup>_τ_(</sup><sup>_x_) and</sup><sup>_τ ′_(</sup><sup>_x_) differs at most at</sup><sup>_x_=</sup><sup>_j_.</sup> Assume that we choose context in _X_ uniformly at random. Let _θ_ = _θ_ ( _·|x_ ) be a policy learned from a bandit algorithm. We can decompose the regret of _θ_ as follows: 



where 



This implies that when _τ ∼j τ_<sup>_′_</sup> and _τ_ = _τ_<sup>_′_</sup> : 



We can now set _ϵ_ = min(0 _._ 1 _,_ 0 _._ 24� _Kd/T_ ), and apply Theorem 13.24 with 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

17.5. NONLINEAR BANDITS WITH COVERAGE COEFFICIENT 

379 

ˆ _m_ = _K_ . Given any bandit algorithm _q_ , and time step _t_ . We have 



The first inequality used the fact that KL( _·||·_ ) = 0 when _xt_ = _j_ , and the probability of _xt_ = _j_ is 1 _/d_ . The last inequality used _ϵ ≤_ 0 _._ 1 and Exercise 16.4. We can thus take _βj,t_<sup>2=</sup> _dK_<sup><u>2</u></sup><sup>_<u>.</u>_</sup><sup><u>1</u></sup><sup>_ϵ_2in Theorem 13.24, and obtain at the end of</sup><sup>_n ≤T_iteration</sup> that _θ_<sup>ˆ</sup> returned by _q_ ˆ satisfies 



The second inequality used _nϵ_<sup>2</sup> _/_ ( _dK_ ) _≤_ 0 _._ 24<sup>2</sup> . Since this bound holds for all _n ≤ T_ , we obtain the desired result. 

## **17.5 Nonlinear Bandits with Coverage Coefficient** 

In this section, we consider the pure exploration setting for nonlinear contextual bandits, which is defined below. 

**Definition 17.34.** Consider a stochastic contextual bandit problem, in which the context comes from a fixed distribution: _x ∼D_ . Let _πE_ be a bandit policy, (referred to as an _exploration policy_ ). Given any integer _T_ , the goal of the pure exploration problem in contextual bandit is to design an exploration policy _πE_ , and draw _T_ samples _xt ∼D_ and _at ∼ πE_ ( _·|xt_ ) ( _t_ = 1 _, . . . , T_ ), so that one can learn a bandit policy _π_ ˆ from the samples with small regret defined below: 



where _f∗_ is the true value function. 

In the following, we show that it is possible to design a pure exploration strategy to solve the stochastic nonlinear bandit problem if the problem is realizable and linearly embeddable. This is comparable to the problems which we can solve with Feel-Good Thompson sampling in Section 17.4. However, instead of decoupling coefficient, we will introduce the following concept of coverage coefficient. 

**Definition 17.35.** The contextual coverage coefficient of a contextual bandit policy _π_ is defined as 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 17. CONTEXTUAL BANDITS 

380 

where 



is defined for any distribution over _A_ according to Definition 9.42. 

The coverage coefficient in Definition 17.35 is the conditional version of the coverage coefficient in Definition 9.42. Theorem 9.44 implies that coverage coefficient is small for linearly embeddable function classes. 

**Proposition 17.36.** _Let F be a function class that is linearly embeddable in H according to Definition 17.24. Let πG be a pure exploration policy so that for each x ∈X , πG_ ( _·|x_ ) _is the solution of the G-optimal design problem (over A, conditioned on x) in Definition 9.42:_ 



_then with ∥w_ ( _f, x_ ) _− w_ ( _f_<sup>_′_</sup> _, x_ ) _∥H ≤ B for all f, f_<sup>_′_</sup> _∈F,_ 



The following proposition shows that one can reduce the contextual bandit problem in the pure exploration setting to a supervised least squares regression problem. It plays a similar role as Lemma 17.28 which employs the decoupling 

**Proposition 17.37.** _Assume that f∗ ∈F, and the context x are drawn from a fixed distribution D on X . For any exploration policy πE, and f ∈F, we have_ 



_where d_ = CC _X_ ( _ϵ, πE, F_ ) _and πf is the greedy policy of f ._ 

_Proof_ We note that 



The first inequality used the fact that 0 _≤−f_ ( _x, πf∗_ ( _x_ )) + _f_ ( _x, πf_ ( _x_ )), which follows from the definition of greedy policy _πf_ . The third inequality used Jensen’s inequality and the concavity of<sup>_√_</sup> _<u>·</u>_ <u>.</u> The last inequality used the definition of coverage coefficient. This implies the desired bound. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

17.6. HISTORICAL AND BIBLIOGRAPHICAL REMARKS 

381 

Proposition 17.37 reduces a bandit problem in the pure exploration setting to a supervised learning problem. We can simply draw _T_ samples _x_ 1 _, . . . , xT_ from _D_ , and draw _at ∼ π_ (<sup>˙</sup> _|xt_ ). This means that the generalization error 



can be established for the ERM method or the Gibbs algorithm as in Section 12.4. 

**Example 17.38.** Assume that both _F_ and _A_ are finite. Let _πE_ be the uniform distribution over _A_ and let _ϵ_ = 0. We have CC _X_ (0 _, πE, F_ ) _≤ K_ . Given _T_ samples with the pure exploration policy _πE_ , and let 



then it follows from Section 12.4 that with probability 1 _− δ_ : 



This implies that 



In the pure exploration setting, the performance of the greedy policy of _fT_ is comparable to that of Thompson sampling in Example 17.31 by using online to batch conversion. 

## **17.6 Historical and Bibliographical Remarks** 

The EXP4 algorithm was studied in (Auer et al., 2002b) as an extension of EXP3. It handles general policy classes that can change over time, and thus the result can be directly applied to contextual bandit in the adversarial setting. The problem of contextual bandit (or bandit with side information) was formulated more explicitly by Langford and Zhang (2007). It was argued in (Langford and Zhang, 2007) that EXP4 is not an efficient algorithm for contextual bandit because the computation of 



is difficult to implement efficiently. An empirical risk minimization oracle based method called _epoch-greedy_ was investigated in (Langford and Zhang, 2007). However, epoch greedy has a suboptimal regret of _O_ ( _T_<sup>2</sup><sup>_/_3</sup> ) instead of the regret of _O_ ( _√T_ ) for EXP4. The gap was closed in subsequent works (Dudik et al., 2011; Agarwal et al., 2014) using more complicated algorithms with empirical minimization oracles. However, these algorithms are policy based, and the empirical minimization problems require solutions of classification problems. More recently, significant interests were given to value function based approaches that use regression instead of classification (see Agarwal et al., 2012). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 17. CONTEXTUAL BANDITS 

382 

The first model for value-function based approach to the contextual bandit problem is the stochastic linear bandit model, where the number of arms can be infinite. The UCB style algorithms for this model have been analyzed in (Auer, 2002; Dani et al., 2008; Chu et al., 2011; Abbasi-yadkori et al., 2011). One version of the resulting UCB algorithm is described in Algorithm 17.2, and was analyzed in (Dani et al., 2008) and (Abbasi-yadkori et al., 2011). A matching lower bound similar to Theorem 17.13 was also obtained by Dani et al. (2008). It is relatively easy to apply Thompson sampling to linear contextual bandit (see Agrawal and Goyal, 2013b; Russo and Van Roy, 2016). However, the regret bound obtained in (Agrawal and Goyal, 2013b) is superlinear in _d_ , and hence inferior to that of the ridge regression with UCB. The suboptimality can be addressed by using Feel-Good Thompson sampling (Zhang, 2022). 

The idea of eluder dimension was introduced by Russo and Van Roy (2013), and adopted recently by various researchers as a technique to generalize upper confidence bound based linear bandit and reinforcement learning models to nonlinear models. The resulting technique can be considered as a nonlinear generalization of UCB. Section 17.3 employs a different treatment via eluder coefficient instead of eluder dimension. The concept of eluder coefficient was introduced by Dann et al. (2021), and it was shown that a small eluder dimension implies a small eluder coefficient. We note that eluder coefficient was referred to as decoupling coefficient in (Dann et al., 2021). However, due to the close relationship of eluder coefficient and eluder dimension, and distinctive difference between eluder coefficient and decoupling coefficient, we adopt the more appropriate term eluder in this book. 

The value function based approach to nonlinear contextual bandit problem was considered in (Agarwal et al., 2012). A general solution to this problem using online regression oracle was obtained by Foster and Rakhlin (2020). It was shown by Simchi-Levi and Xu (2022) that this method can be regarded as an approximate solution of Dudik et al. (2011). More recently, it was shown by Zhang (2022) that general nonlinear contextual bandit can also be solved using a modification of Thompson sampling, referred as Feel-Good Thompson sampling that incorporates an optimistic exploration term. It was shown in (Zhang, 2022) that this optimistic term is necessary, and without this term, the standard Thompson sampling algorithm will not be able to solve the nonlinear contextual bandit problem. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

Exercises 

383 

## **Exercises** 

- 17.1 In Algorithm 17.2 for stochastic linear contextual bandits, we consider a pure exploration scheme where we choose arm in line 6 according to confidence as 

_at ∈_ arg max _ψ_ ( _xt, a_ )<sup>_⊤_</sup> _A_<sup>_−_</sup> _t−_<sup>1</sup> 1<sup>_ψ_(</sup><sup>_xt, a_)</sup><sup>_._</sup> _a_ 

Similar to Lemma 17.8, we would like to derive an upper confidence bound after step _T_ , but instead of a uniform bound for all _u ∈_ R<sup>_d_</sup> , we consider a bound for any fixed vector _u ∈_ R<sup>_d_</sup> . Given any fixed _u ∈_ R<sup>_d_</sup> , show that with probability at least 1 _− δ_ : 



for some _β_<sup>˜</sup> _T_ that is independent of _d_ . 

- Show that for appropriately defined _γt_ , 



where _{γt}_ and _{ϵt_ ( _xt, at_ ) _}_ are independent. 

- Use Azuma’s inequality to obtain a concentration bound so that 



with appropriately chosen _β_<sup>˜</sup> _T_ independent of _d_ . As in Lemma 17.8, we assume that _∥w∗∥_ 2 _≤ B_ with known _B_ , and for all _t_ , _rt_ ( _xt, at_ ) _∈_ [0 _, M_ ]. 

- Assume we have _K_ arms. Define _β_<sup>˜</sup> _T_ so that with probability at least 1 _− δ_ , the following inequality holds uniformly for all _a ∈{_ 1 _, . . . , K}_ 



Compare this bound to that of Lemma 17.8. Why we cannot use this better _β_<sup>˜</sup> _T_ for _βT_ in the original Algorithm 17.2? 

- 17.2 Consider stochastic linear bandit with _K_ = 2<sup>_s_</sup> arms and feature dimension _d_ with _s ≤ d_ . Construct an example, and so that the regret of any bandit algorithm is at least 

Ω( _~~√~~ sdT_ ) _._ 

- 17.3 Prove Proposition 17.16. 

- 17.4 Prove (17.10) by using the following inequality with _At−_ 1 = _B_<sup>_−_2</sup> _I_ + _At−_ 1: 



- 17.5 Compute the eluder coefficient of a function class under the conditions of Example 9.10. 

- 17.6 Using Theorem 13.22 to derive a lower bound for the construction in Theorem 17.33, and compare the result to that of Theorem 17.33. 

- 17.7 Show that the eluder coefficient EC( _ϵ, F , T_ ) = _O_<sup>˜</sup> (Edim( _F , ϵ_ )), where _O_<sup>˜</sup> hides a logarithmic factor. 

- 17.8 Assume that _F_ is linearly embeddable with dim( _ϵ, ψ_ ( _X_ )) _≤ c_ 0 _/ϵ_<sup>_p_</sup> for some _p, c_ 0 _>_ 0, and assume that _F_ has _L∞_ ( _D_ ) covering number _N_ ( _ϵ, F , L∞_ ( _D_ )) _≤ c_ 1 _/ϵ_<sup>_q_</sup> for some _c_ 1 _, q >_ 0. Derive a regret bound for an appropriately designed bandit algorithm in the pure exploration setting. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

**18** 

