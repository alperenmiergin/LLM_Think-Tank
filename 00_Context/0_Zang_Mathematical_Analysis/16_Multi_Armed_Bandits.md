**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Multi-armed Bandits** 

In supervised learning and online learning, we assume that the outcome _y_ of an observation is fully observed. For example, for online image classification, we first predict the label _y_ ˆ of an image _x_ , and then the true label _y_ is revealed. 

In comparison, for bandit problems, we consider the so-called _partial information_ setting, where only the outcome of the action taken is observed. For the online classification example, we may assume that an image is multiply classified, and we only predict one label, which is correct if the image contains the label and incorrect otherwise. Assume the feedback we receive only says whether the predicted label _y_ ˆ is correct or not, but not what the true labels are, then it becomes a bandit problem. In this chapter, we will investigate some bandit algorithms that are commonly used. 

## **16.1 Multi-armed Bandit Problem** 

The multi-armed bandit problem can be regarded as a repeated game, similar to online learning. 

**Definition 16.1.** In the multi-armed bandit (or MAB) problem, we consider _K_ arms. The environment generates a sequence of reward vectors for time steps _t ≥_ 1 as _rt_ = [ _rt_ (1) _, . . . , rt_ ( _K_ )]. Each _rt_ ( _a_ ) is associated with an _arm a ∈{_ 1 _, . . . , K}_ . In the literature, an arm _a_ is also referred to as an _action_ . At each time step _t_ = 1 _,_ 2 _, . . . , T_ , 

- The player pulls one of the arms _at ∈{_ 1 _, . . . , K}_ . 

- The environment returns the reward _rt_ ( _at_ ), but does not reveal information on any other arm _a_ = _at_ . 

At each time _t_ , a (randomized) bandit algorithm takes the historic observations observed so far, and maps it to a distribution _π_ ˆ _t−_ 1 over actions _a ∈{_ 1 _, . . . , K}_ . ˆ ˆ We then draw a random action _at_ (arm) from _πt−_ 1. Here _πt−_ 1 is referred to as policy. 

In the adversarial bandit problem, we are given an arbitrary reward sequence _{_ [ _r_ 1(1) _, . . . , rt_ ( _K_ )] : _t ≥_ 1 _}_ before hand. The adversary in this setting is called _oblivious_ , who decides the rewards of all the rounds before the game starts (but may take advantage of the bandit algorithm’s weakness). For this reward se- 

335 

CHAPTER 16. MULTI-ARMED BANDITS 

336 

quence, the expected cumulative reward of a randomized bandit algorithm is 



where the randomization is over the internal randomization of the bandit algorithm. The expected regret is defined as 



If the bandit algorithm is deterministic: i.e. pulling a single arm _at_ only at any time step, then the regret is 



In the adversarial bandit problem, our goal is to minimize the expected regret REG _T_ (and the expectation is with respect to the internal randomization of the algorithm instead of the data). 

Another form of bandit problem, called _stochastic bandit_ , assumes that the reward _rt_ ( _a_ ) is drawn independently from a distribution _Da_ , with mean _µ_ ( _a_ ) = E _rt_ ( _a_ ) _∼Da_ [ _rt_ ( _a_ )]. In this setting, the goal of bandit is to find _a_ that maximizes the expected reward _µ_ ( _a_ ). We are interested in the expected regret defined as: 



Again, this regret is defined for each realization of the stochastic rewards, and the expectation is with respect to the randomness of the algorithm. If algorithm is deterministic and outputs _at_ at each time _t_ , then 



We can further include randomization over data into the regret of stochastic bandit, by considering expected regret as follows: 



where the expectation is with respect to both the data and the internal randomization of the learning algorithm. 

## **16.2 Upper Confidence Bound for Stochastic MAB** 

An important algorithm for stochastic bandit is _Upper Confidence Bound_ (UCB), which is a deterministic algorithm presented in Algorithm 16.1. In this method, 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

16.2. UPPER CONFIDENCE BOUND FOR STOCHASTIC MAB 

337 

we define for each _a_ = 1 _, . . . , K_ 



and a properly defined _ct_ ( _a_ ), so that the following upper confidence bound holds for an optimal arm _a∗ ∈_ arg max _a µ_ ( _a_ ) with high probability: 

ˆ _µ_ ( _a∗_ ) _≤ µt−_ 1( _a∗_ ) + ˆ _ct−_ 1( _a∗_ ) _._ 

**Algorithm 16.1:** UCB Algorithm 

**Input:** _K_ and _T ≥ K_ 

**1 for** _a_ = 1 _, . . . , K_ **do** 

**2** Let _n_ ˆ0( _a_ ) = 0 **3** Let _µ_ ˆ0( _a_ ) = 0 

**4 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 5 if** _t ≤ K_ **then 6** Let _at_ = _t_ **7 else 8** Let _at ∈_ arg max _a_ [ˆ _µt−_ 1( _a_ ) + ˆ _ct−_ 1( _a_ )] according to (16.3) **9** Pull arm _at_ and observe reward _rt_ ( _at_ ) 

We first establish a regret bound for UCB which holds in high probability. The corresponding analysis is more intuitive. A generic result can be obtained as follows. We note that while the algorithm only uses upper confidence bound, the analysis requires both upper and lower confidence bounds. 

**Lemma 16.2.** _Let a∗ ∈_ arg max _a µ_ ( _a_ ) _. Let_ 



_be the probability that the upper confident bound fails on a∗. Let_ 



_be the probability that the lower confident bound fails on a_ = _a∗. Then for Algorithm 16.1, we have with probability at least_ 1 _− δ_ 1 _− δ_ 2 _:_ 



_Proof_ We have with probability 1 _− δ_ 1 _− δ_ 2, the following hold for all _t > K_ : 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 16. MULTI-ARMED BANDITS 

338 

It follows that for all _t > K_ : 

_µ_ ( _a∗_ ) 1 ( _at_ = _a∗_ ) _≤_ [ˆ _µt−_ 1( _a∗_ ) + ˆ _ct−_ 1( _a∗_ )] 1 ( _at_ = _a∗_ ) (upper confidence bound) _≤_ [ˆ _µt−_ 1( _at_ ) + ˆ _ct−_ 1( _at_ )] 1 ( _at_ = _a∗_ ) (UCB algorithm) _≤_ [ _µ_ ( _at_ ) + ˆ _c_<sup>_′_</sup> _t−_ 1<sup>(</sup><sup>_at_) + ˆ</sup><sup>_ct−_1(</sup><sup>_at_)]1(</sup><sup>_at_=</sup><sup>_a∗_)</sup><sup>_._</sup> (lower confidence bound) 

For _t ≤ K_ , we have 



We obtain the bound by summing over _t_ = 1 to _t_ = _T_ . 

The analysis of bandit problem in Lemma 16.2 is similar to the empirical process analysis of ERM. This technique can be used in other bandit problems such as linear bandits. We note that although the algorithm uses an upper confidence bound, it only requires the bound to hold for the optimal arm _a∗_ . The regret analysis, however, relies on both upper confidence and lower confidence bounds. The lower confidence bound needs to hold for all arms _a_ , which implies that it holds for _at_ . The estimation of lower confidence requires uniform convergence. However, the upper confidence bound does not have to satisfy for all _at_ , and thus its estimation does not require uniform convergence. Given upper and lower confidence bounds, the regret bound for MAB becomes an estimation of the summation of the confidence bounds, which requires showing that the confidence bounds shrink to zero as the time step goes to infinity. A careful analysis of the confidence interval size using Martingale exponential inequality leads to the following result for MAB. 

**Theorem 16.3.** _Assume that rewards rt_ ( _a_ ) _∈_ [0 _,_ 1] _. Let a∗ ∈_ arg max _a µ_ ( _a_ ) _. With a choice of_ 



_we have with probability at least_ 1 _− δ:_ 



_Proof_ Given any integer _m ≥_ 1 and _a ∈{_ 1 _, . . . , K}_ . We know that the sequence _r_ ( _at_ ) 1 ( _at_ = _a_ ) satisfies the sub-Gaussian bound in Theorem 13.3 with _σi_ = 0 _._ 5 1 ( _ai_ = _a_ ). This means that<sup>�</sup><sup>_t_</sup> _i_ =1<sup>_σ_</sup> _i_<sup>2=0</sup><sup>_._25ˆ</sup><sup>_nt_(</sup><sup>_a_).Byletting</sup><sup>_σ_=0</sup><sup>_._5</sup><sup>_√_</sup> _<u>m</u>_ for ˆ a constant _m_ , and consider the event _nt_ ( _a_ ) = _m_ , we obtain with probability at most 0 _._ 5 _δ/_ ( _m_ + 1)<sup>2</sup> : 



Similarly, with probability at most (0 _._ 5 _/K_ ) _δ/_ ( _m_ + 1)<sup>2</sup> : 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
—<br>><br>><br>><br>>><br>>y<br>>>><br>><br>><br>yy |-——<br>> yy<br>Sf ye<br>SJ<br>{_——<br><!-- End of picture text -->

CHAPTER 16. MULTI-ARMED BANDITS 

340 

ˆ Equation ( _a_ ) used the fact that for each arm _a_ , with _at_ = _a_ , _nt−_ 1( _at_ ) takes values ˆ from _m_ = 1 to _m_ = _nT_ ( _a_ ) _−_ 1, once for each value. In the derivation of the last inequality, we used Jensen’s inequality and the concavity of<sup>_√_</sup> _<u>z</u>_ <u>,</u> which implies that 



This implies the desired bound. 

**Example 16.4.** Assume in Theorem 16.3, _µ_ ( _a∗_ ) _≈_ 0. In such case, we can use the following multiplicative Chernoff bound in Theorem 13.5 to obtain an upper confidence bound. We know that with probability at most 1 _− δ_ : 



This implies that we may use an upper confidence bound 



in Algorithm 16.1. In order to obtain a better regret bound than that of Theorem 16.3, one also needs to use the multiplicative Chernoff bound for the lower confidence interval, and than repeat the analysis of Theorem 16.3 with such a multiplicative lower confidence interval bound. We leave it as an exercise. 

**Example 16.5.** Assume for each arm _a_ , the reward _rt_ ( _a_ ) is a sub-Gaussian random variable, but different arms have different reward distributions: 



where _M_ ( _a_ ) is known. Then one can obtain a bound similar to Theorem 16.3, with an arm dependent UCB estimate involving _M_ ( _a_ ). 

One can also obtain a refined version of Lemma 16.2 that replies on the gap between _a∗_ and any other _a_ . 

**Lemma 16.6.** _Let a∗ ∈_ arg max _a µ_ ( _a_ ) _. Let_ 







_Then for Algorithm 16.1, we have with probability at least_ 1 _− δ_ 1 _− δ_ 2 _:_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

16.2. UPPER CONFIDENCE BOUND FOR STOCHASTIC MAB 

341 

_Proof_ The proof of Lemma 16.2 shows that with probability at least 1 _− δ_ , for all _t ≥ K_ + 1: 



which implies that 



Using the assumption of the lemma, we obtain for all _a_ = _a∗_ and 1 _≤ t ≤ T_ , ˆ _nt−_ 1( _a_ ) 1 ( _at_ = _a_ ) _≤ T_ ( _a_ ). 

It follows that for all _a_ = _a∗_ , let _t_ be the last time such that _at_ = _a_ , then _t ≤ T_ and _n_ ˆ _T_ ( _a_ ) = _n_ ˆ _t−_ 1( _at_ ) + 1 _≤ T_ ( _a_ ) + 1. We thus obtain the following regret bound for any ∆0 _≥_ 0: 



The second inequality used<sup>�</sup><sup>_K_</sup> _a_ =1<sup>_n_ˆ</sup><sup>_T_(</sup><sup>_a_)=</sup><sup>_T−K_and</sup><sup>_n_ˆ</sup><sup>_T_(</sup><sup>_a_)</sup><sup>_−_1</sup><sup>_≤T_(</sup><sup>_a_).This</sup> implies the bound. 

We note that in Lemma 16.6, _δ_ 1 is still the failure probability for the upper confidence bound, and _δ_ 2 is the failure probability for the lower confidence bound. The intuition of the quantity _T_ ( _a_ ) is that after we have pulled arm _a_ for more than _T_ ( _a_ ) times, the confidence interval for _a_ becomes smaller than the gap ∆( _a_ ), which means that we will not choose arm _a_ in the future. That is, _T_ ( _a_ ) is the maximum number of times that one will pull a particular arm _a_ . This means that the regret caused by choosing _a_ is upper bounded by _T_ ( _a_ )∆( _a_ ). 

Using Lemma 16.6, we can now obtain a gap dependent bound in Theorem 16.7. 

**Theorem 16.7.** _Assume that the reward rt_ ( _a_ ) _∈_ [0 _,_ 1] _. Let a∗ ∈_ arg max _a µ_ ( _a_ ) _. With a choice of_ 



_we have_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 16. MULTI-ARMED BANDITS 

342 

_Proof_ From the proof of Theorem 16.3, we know that with the choice of 



the inequality ∆( _a_ ) _≤ c_ ˆ _t−_ 1( _a_ ) + ˆ _c_<sup>_′_</sup> _t−_ 1<sup>(</sup><sup>_a_)inthedefinitionof</sup><sup>_T_(</sup><sup>_a_)impliesthat</sup> 



This implies that 



Therefore 



This implies the desired result from Lemma 16.6. 

**Example 16.8.** We may take ∆0 = 0 in the gap dependent regret bound of Theorem 16.7, and obtain 



**Example 16.9.** The gap dependent regret bound of Theorem 16.7 implies the gap independent regret bound of Theorem 16.3. In fact, if we take 



then we obtain a regret of 



from Theorem 16.7. 

Results we have obtained so far require the construction of UCB knowing the confidence level _δ_ . This might be inconvenient for some applications. In the following, we show that using a similar analysis, it is possible to obtain a regret analysis with a construction of UCB that does not depend on either _T_ or _δ_ . In the analysis, we will first introduce a lemma to replace Lemma 16.6 without the need to consider events that hold uniformly for all _t_ . Lemma 16.10 is a variant of Lemma 16.6 that considers each specific time step _t_ separately. It leads to a similar result that holds in expectation. 

**Lemma 16.10.** _Let a∗ ∈_ arg max _a µ_ ( _a_ ) _. For t > K, define_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

> 

> 

> ry > 

> 

> > 

>> > 

> > > > 

~~<u>/—</u> =~~ | ~~— /—~~ >> ~~/_—~~ 

16.3. LOWER BOUNDS FOR STOCHASTIC MAB 

345 

The inequality ∆( _a_ ) _≤ c_ ˆ _t−_ 1( _a_ ) + ˆ _c_<sup>_′_</sup> _t−_ 1<sup>(</sup><sup>_a_)inthedefinitionof</sup><sup>_T_(</sup><sup>_a_)impliesthat</sup> 



It follows that 



We can now apply Lemma 16.10 to obtain the desired bound. 

## **16.3 Lower Bounds for Stochastic MAB** 

The following result gives a lower bound on any consistent algorithm for MAB. 

**Theorem 16.12** (Lai and Robbins, 1985) **.** _Assume rt_ ( _a_ ) _∈{_ 0 _,_ 1 _}. Consider an algorithm such that ∀β ∈_ (0 _,_ 1) _,_ lim _T →∞_ (REG _T /T_<sup>_β_</sup> ) = 0 _, then_ 



_for all a, where µ∗_ = max _a µ_ ( _a_ ) _._ 

The result implies that 



Since KL( _µ_ ( _a_ ) _, µ∗_ )<sup>_−_1</sup> = Ω(∆( _a_ )<sup>_−_2</sup> ), it follows that the UCB bound in Theorem 16.11 has the worst case optimal dependency on the gap ∆( _a_ ) up to a constant. One may also obtain more refined dependency on ∆( _a_ ) using the KLdivergence version of the Hoeffding’s inequality in Theorem 2.17. This leads to KL-UCB as in Garivier and Capp´e (2011); Maillard et al. (2011), with a gapdependence that matches the lower bound of Theorem 16.12. 

By taking ∆0 = _O_ (� _K_ ln( _T_ ) _/T_ ) in Theorem 16.11, we can obtain a gapindependent expected regret bound similar to Theorem 16.3: 



The lower bound, stated in Theorem 16.13, is Ω( _√KT_ ). It only matches the regret bound for UCB in Theorem 16.11 up to a log( _T_ ) factor. It is known that there exists an algorithm that can remove this log _T_ factor, and achieve the lower bound up to a constant (Audibert and Bubeck, 2009). 

**Theorem 16.13.** _Given K ≥_ 2 _and T ≥_ 1 _. Then there exists a distribution over the assignment of rewards rt_ ( _a_ ) _∈_ [0 _,_ 1] _such that the expected regret of any algorithm (where the expectation is taken with respect to both the randomization over rewards and the algorithm’s internal randomization) is at least_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 16. MULTI-ARMED BANDITS 

346 

_Proof_ We would like to apply Theorem 13.24 with _d_ = 1 and _m_ = _K_ . We consider a family of _K_ distributions _PZ_ = _{q_<sup>_τ_</sup> _, τ_ = 1 _, . . . , K}_ , and for each arm _a_ , the distribution _q_<sup>_τ_</sup> ( _a_ ) is a Bernoulli distribution _r ∈{_ 0 _,_ 1 _}_ with mean E[ _r_ ] = 0 _._ 5 + _ϵ_ 1 ( _a_ = _τ_ ) with _ϵ ∈_ (0 _,_ 0 _._ 1] to be determined later. We also define _q_ 0( _a_ ) as a Bernoulli distribution _r ∈{_ 0 _,_ 1 _}_ with mean E[ _r_ ] = 0 _._ 5. Since by construction, _q_<sup>_τ_</sup> _∼_ 1 _q_<sup>_τ ′_</sup> for all _τ, τ_<sup>_′_</sup> _∈_ [ _K_ ], we can map them all to _q_ 1<sup>_τ_=</sup><sup>_q_0.</sup> If we pull an arm _θ_ , we have 



It is clear that [ _Q_ ( _θ, q_<sup>_τ_</sup> ) + _Q_ ( _θ, q_<sup>_τ ′_</sup> )] _≥ ϵ_ for _τ_ = _τ_<sup>_′_</sup> . Consider _n ≤ T_ samples generated sequentially by an arbitrary bandit algorithm and _q_<sup>_τ_</sup> ( _a_ ), and let the resulting distribution that generates _Sn_ as _p_<sup>_τ_</sup> ( _Sn_ ), where _Sn_ = _{a_ 1 _, r_ 1 _, . . . , an, rn}_ . Let _ϵ_ = min(0 _._ 1 _,_ 0 _._ 24� _K/T_ ). We have for all _at_ : 



The first inequality is left as Exercise 16.4. The second inequality used _ϵ ≤_ 0 _._ 1. Theorem 13.24 (with _d_ = 1, _m_ = _K_ , and _β_ 1<sup>2</sup> _,t_<sup>=</sup><sup><u>2</u></sup> _K_<sup>_<u>.</u>_</sup><sup><u>1</u></sup><sup>_ϵ_2)impliesthatattheendof</sup> the _n_ -th iteration, _θ_<sup>ˆ</sup> of any learning algorithm satisfies 



The second inequality used ( _n/K_ ) _ϵ_<sup>2</sup> _≤_ 0 _._ 24<sup>2</sup> . Since this holds for all steps _n ≤ T_ , we obtain the desired bound. 

It is worth noting that due to the special structure of MAB, Theorem 13.22 ˆ is not suitable because _q_ ( _St−_ 1) may pick an arm _at_ = _τ_ for any _q_<sup>_τ_</sup> , and in such case, KL( _q_<sup>_τ_</sup> _||q_<sup>_τ ′_</sup> ) = KL(0 _._ 5 + _ϵ||_ 0 _._ 5) for all _τ_<sup>_′_</sup> = _τ_ . Therefore a direct application of Theorem 13.22 can only lead to a loose lower bound of Ω( _√T_ ). We leave the detailed calculation to an exercise. 

## **16.4 Arm Elimination Algorithm for Stochastic Linear Bandits** 

In the standard MAB problem, the regret bound scales with the number of arms _K_ . This might not be desirable for problems that contain many arms. In order to deal with such problems, we need to impose additional structures that model correlations among arms. A popular model for such problems is stochastic linear bandits, which allow large action (arm) space. In this section, we assume that 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

16.4. ARM ELIMINATION FOR STOCHASTIC LINEAR BANDITS 

347 

the set of arms (or actions) is _A_ , which is finite: _|A|_ = _K_ . Each time, we pull one arm _a ∈A_ . We also know a feature vector _φ_ ( _a_ ) _∈H_ (where _H_ is an inner product space) so that the expected reward is a linear function 



with an unknown parameter _θ∗ ∈H_ to be estimated. In this section, we present an arm elimination method for stochastic linear bandits in Algorithm 16.2 with regret depending linearly on dim( _λ, ψ_ ( _A_ ) _, T_ ) and logarithmically on _K_ . Here dim( _λ, ψ_ ( _A_ ) _, T_ ) is defined in Proposition 9.36). The lower order term also depends on the quantity entro( _λ, ψ_ ( _A_ ) _, T_ ) in Proposition 15.8. 

**Algorithm 16.2:** Arm Elimination for Stochastic Linear Bandit 

**Input:** _A_ , _{ψ_ ( _a_ ) : _a ∈A}_ 

**1** Let _A_ 0 = _A_ **2 for** _ℓ_ = 1 _,_ 2 _, . . . , L_ **do** 

**3** Set parameters _λℓ, Tℓ, βℓ, nℓ, ηℓ_ **4** Use Algorithm 9.1 (with _λ_ = _λℓ, n_ = _nℓ, η_ = _ηℓ_ ) to obtain a policy � _mi_ =1 _ℓ_<sup>_πℓ,i_1(</sup><sup>_a_=</sup><sup>_aℓ,i_)with</sup><sup>_mℓ≤nℓ_examples</sup><sup>_{aℓ,s∈Aℓ−_1</sup><sup>_}_</sup> **5** For each _i_ = 1 _, . . . , Tℓ_ , pull _aℓ,i_ for _Jℓ_ = _⌈Tℓπℓ,i⌉_ times, and observe rewards _rℓ,i,j ∈_ [0 _,_ 1] ( _j_ = 1 _, . . . , Jℓ_ ) _mℓ Jℓ ⊤_ 2 2 **6** Let _θℓ_ = arg min _θ_ � _i_ =1 � _j_ =1 �( _θ ψ_ ( _aℓ,i_ ) _− rℓ,i,j_ ) + _λℓ∥θ∥_ 2� **7** Let _aℓ_ = arg max _a∈Aℓ−_ 1 _θℓ_<sup>_⊤ψ_(</sup><sup>_a_)</sup> **8** Let _Aℓ_ = _{a ∈Aℓ−_ 1 : _θℓ_<sup>_⊤ψ_(</sup><sup>_a_)</sup><sup>_≥θ_</sup> _ℓ_<sup>_⊤ψ_(</sup><sup>_aℓ_)</sup><sup>_−βℓ}_</sup> 

**Theorem 16.14.** _Assume that we know ∥θ∗∥_ 2 _≤ B. Let a∗ ∈_ arg max _a∈A µ_ ( _a_ ) _. Given η >_ 0 _. For each ℓ ≥_ 1 _we set_ 



_in Algorithm 16.2. We also define β_ 0 = 0 _._ 5 _. It follows that ∀ℓ ≥_ 0 _, a∗ ∈Aℓ and_ 



_This implies that after iteration L, and we have pulled total number of T ≤_ (2<sup>_L_</sup> _−_ 1) +<sup>�</sup><sup>_L_</sup> _ℓ_ =1<sup>_nℓarms,withprobabilityatleast_1</sup><sup>_−δ:_</sup> 



_Proof_ The claim holds for _ℓ_ = 0. Assume the claim holds for _ℓ −_ 1, and consider 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 16. MULTI-ARMED BANDITS 

348 

stage _ℓ_ . Let Σ _ℓ_ =<sup>�</sup><sup>_m_</sup> _i_ =1<sup>_ℓJℓ_[</sup><sup>_ψ_(</sup><sup>_aℓ,i_)</sup><sup>_ψ_(</sup><sup>_aℓ,i_)</sup><sup>_⊤_+</sup><sup>_λℓI_] and˜Σ</sup><sup>_ℓ_= �</sup><sup>_m_</sup> _i_ =1<sup>_ℓπℓ,i_[</sup><sup>_ψ_(</sup><sup>_aℓ,i_)</sup><sup>_ψ_(</sup><sup>_aℓ,i_)</sup><sup>_⊤_+</sup> _λℓI_ ]. From Example 9.41, we have for all _a ∈Aℓ−_ 1: 



It follows from Lemma 9.34 (with _σ_ = 0 _._ 5 since _rℓ,s ∈_ [0 _,_ 1]) and a union bound over _a ∈Aℓ−_ 1 that with probability at least 1 _− δ/_ ( _ℓ_ + 1)<sup>2</sup> , for all _a ∈Aℓ−_ 1, 



Therefore 



The first and the third inequalities used (16.6). The second inequality used the definition of _a∗_ as the optimal arm. Because _a∗ ∈Aℓ−_ 1 by the induction hypothesis, we know that _a∗ ∈Aℓ_ . 

Moreover, if _a ∈Aℓ_ , then 



The second inequality used the definition of _Aℓ_ . The third inequality used the definition of _aℓ_ . The first and the last inequalities used (16.6). By taking the union bound over _ℓ_ , we complete the proof. 

**Example 16.15.** For finite dimensional linear bandits, we can take dim( _H_ ) = _d_ and _α_ = 1 in Theorem 16.14. Proposition 15.8 implies that 

dim( _λℓ, ψ_ ( _A_ )) _≤ d,_ entro( _λℓ, ψ_ ( _A_ )) _≤ d_ ln(1 + ( _BB_<sup>_′_</sup> )<sup>2</sup> _/_ ( _λℓd_ )) = _O_ ( _dℓ_ ) _,_ 

where we assume that _B_<sup>_′_</sup> = sup _a ∥ψ_ ( _a_ ) _∥_ 2. We thus have _nℓ_ = _O_ ( _d_ ln _T_ ). One can obtain a regret of 



If we ignore the log-factors, this generalizes the result of MAB. In fact, we note that MAB can be regarded as a linear bandit with _ψ_ ( _a_ ) = _ea ∈_ R<sup>_K_</sup> , where _ea_ is the vector with value 1 at component _a_ , and value 0 elsewhere. Therefore with _d_ = _K_ , we recover MAB results up to logarithmic factors. 

**Example 16.16.** We may also consider nonparametric problems with infinite dimensional embedding. We assume that 



for some _q ∈_ (0 _,_ 1). In Theorem 16.14, with _α_ = �ln(8 _KT/δ_ ), we can upper bound _T_ 0( _α_ ) by a constant, and obtain a regret of 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

16.5. THOMPSON SAMPLING FOR STOCHASTIC MAB 

349 

## **16.5 Thompson Sampling for Stochastic MAB** 

As a popular algorithm for bandit problems, Thompson sampling has a rather long history (Thompson, 1933). The basic idea is to consider a prior distribution on the mean of the reward distribution of every arm. At any time step, sample a mean from the posterior for each arm, and then pick the arm with the highest sampled mean. 

In practice, it will be convenient to use a model so that the posterior is simple. This can be achieved with conjugate priors. For example, we can assume that a Gaussian prior and reward likelihood: 



Then the posterior for arm _a_ after time step _t −_ 1 is given by the normal distribution _N_ (ˆ _µt−_ 1( _a_ ) _, V_<sup>ˆ</sup> _t−_ 1( _a_ )), where 



This leads to Algorithm 16.3. 

**Algorithm 16.3:** Thompson Sampling <u>(Gaussian)</u> 

**Input:** _K_ and _T_ **1 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 2 for** _a_ = 1 _, . . . , K_ **do** ˜ **3** Sample _µt_ ( _a_ ) _∼ N_ (ˆ _µt−_ 1( _a_ ) _, V_<sup>ˆ</sup> _t−_ 1( _a_ )) according to (16.7) **4** Let _at_ = arg max _a_ ˜ _µt_ ( _a_ ) **5** Pull arm _at_ and observe reward _rt_ ( _at_ ) 

Alternatively, for binary rewards _rt_ ( _a_ ) _∈{_ 0 _,_ 1 _}_ , we can use Beta prior with Bernoulli likelihood: 



The posterior for arm _a_ after time step _t −_ 1 is given by the Beta distribution 



where for _y ∈{_ 0 _,_ 1 _}_ : 



This leads to Algorithm 16.4. 

It is known (Agrawal and Goyal, 2013a) that for Thompson Sampling, we can obtain a regret bound of _O_ ( _√TK_ ln _K_ ) for Gaussian Thompson Sampling, and a bound of _O_ ( _√TK_ ln _T_ ) for Beta Thompson Sampling. Moreover, near optimal 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 16. MULTI-ARMED BANDITS 

350 

**Algorithm 16.4:** Thompson Sampling <u>(Beta)</u> 

**Input:** _K_ and _T_ **1 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 2 for** _a_ = 1 _, . . . , K_ **do** ˜ **3** Sample _µt_ ( _a_ ) _∼_ Beta(1 + ˆ _n_<sup>1</sup> _t−_ 1<sup>(</sup><sup>_a_)</sup><sup>_,_1 + ˆ</sup><sup>_n_0</sup> _t−_ 1<sup>(</sup><sup>_a_))accordingto(16.8)</sup> **4** Let _at_ = arg max _a_ ˜ _µt_ ( _a_ ) **5** Pull arm _at_ and observe reward _rt_ ( _at_ ) _∈{_ 0 _,_ 1 _}_ 

gap-dependent bound can also be obtained. In general, one may analyze Thompson sampling using techniques similar to the analysis of UCB, by upper bound the number of times each suboptimal arm can be pulled based on confidence interval calculations. The analysis requires an anti-concentration argument, as illustrated in Exercise 16.7. 

## **16.6 EXP3 for Adversarial MAB** 

The UCB algorithm can only be applied to stochastic bandit problems. For adversarial bandits, one can use an exponential weighting method motivated from the Hedge algorithm for online learning. The algorithm, referred to as EXP3 (Auer et al., 2002b), is given in Algorithm 16.5. 

**Algorithm 16.5:** EXP3 **Input:** _K_ , _T_ , _γ ∈_ (0 _,_ 1] **1 for** _a_ = 1 _, . . . , K_ **do 2** Let _w_ 0( _a_ ) = 1 **3 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 4** Let _wt−_ 1 =<sup>�</sup><sup>_K_</sup> _a_ =1<sup>_wt−_1(</sup><sup>_a_)</sup> **5 for** _a_ = 1 _, . . . , K_ **do** ˆ **6** Let _πt_ ( _a_ ) = (1 _− γ_ ) _wt−_ 1( _a_ ) _/wt−_ 1 + _γ/K_ ˆ **7** Sample _at_ according to _πt_ ( _·_ ) **8** Pull arm _at_ and observe reward _rt_ ( _at_ ) _∈_ [0 _,_ 1] **9 for** _a_ = 1 _, . . . , K_ **do 10** Let _r_ ˆ _t_ ( _a, at_ ) = _rt_ ( _at_ ) 1 ( _a_ = _at_ ) _/π_ ˆ _t_ ( _at_ ) **11** Let _wt_ ( _a_ ) = _wt−_ 1( _a_ ) exp( _γr_ ˆ _t_ ( _a, at_ ) _/K_ ) 

Conditioned on the observations made before time step _t_ , the reward estimator _r_ ˆ _t_ ( _a, at_ ) is a random estimator with respect to the random selection of the next ˆ arm _at ∼ πt_ ( _·_ ). It converts a partial information problem (where we only observe the reward _rt_ ( _at_ ) at _at_ ) into a full information problem, where the reward _r_ ˆ _t_ ( _a, at_ ) as a function of _a_ is defined for all arms _a ∈{_ 1 _, . . . , K}_ . With the choice of 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
»<br>»<br>ye<br>a<br>2| ]<br>» » |<br>-( - —)<br><!-- End of picture text -->



<!-- Start of picture text -->
><br>iii,<br>><br>><br>—- — - 5<br>> ee<br>>?<br>yo a<br>YD<br>O<br>a<br><!-- End of picture text -->

16.7. HISTORICAL AND BIBLIOGRAPHICAL REMARKS 

353 

## **16.7 Historical and Bibliographical Remarks** 

The multi-armed bandit problem has a long history (Robbins, 1952), with many practical applications. An important theoretical development on this topic was given in Lai and Robbins (1985), where the authors studied asymptotic properties of the MAB problem. It was shown by Agrawal (1995); Auer et al. (2002a) that a simple algorithm using upper confidence bounds provides a satisfactory solution to this problem. 

The asymptotic lower bound for MAB was obtained by Lai and Robbins (1985). The matching upper bound can be found in (Garivier and Capp´e, 2011; Maillard et al., 2011). Finite sample lower bound can be found in Auer et al. (2002b), and the result is similar to that of Theorem 16.13. The matching upper bound was obtained by Audibert and Bubeck (2009). 

The linear bandit problem was first studied by (Auer, 2002), which was later adopted in many other follow up works. The model can be regarded as a direct generalization of MAB, but it can also directly handle large action space (number of arms). A different generalization of MAB to large action space is to consider continuous actions, such as actions in a metric space (Kleinberg et al., 2008). However, without additional structures comparable to linear bandit, the optimal regret can become near linear in _T_ . 

While Thompson sampling has a long history, its theoretical analysis has only been established very recently (see Agrawal and Goyal, 2012, 2013a; Kaufmann et al., 2012). We will analyze a variant of Thompson sampling in Chapter 17. 

The techniques to analyze MAB can be extended to handle contextual bandit problems which we will investigate in Chapter 17. We also refer the readers to (Lattimore and Szepesv´ari, 2020) for further studies on bandit problems. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 16. MULTI-ARMED BANDITS 

354 

## **Exercises** 

- 16.1 Finish Example 16.4 by analyzing the corresponding UCB algorithm and obtain its regret bound in the style of Theorem 16.3. 

- 16.2 Finish Example 16.5 by deriving the corresponding UCB algorithm and its regret bound in the style of Theorem 16.3. 

- 16.3 Consider MAB with _K_ arms and rewards in [0 _,_ 1]. We want to obtain a gap dependent regret bound using the KL Chernoff bound in Theorem 2.17. For each _a_ and _t_ , estimate _T_ ( _a_ ) in Lemma 16.10 with _δ_ 1( _t_ ) = _δ_ 2( _t_ ) = _O_ (( _t −_ 1)<sup>_−α_</sup> ), and obtain a regret bound with ∆0 = 0. Let _T →∞_ , and compare the result to the lower bound in Theorem 16.12. 

- 16.4 Let KL( _q_ 1 _||q_ 2) = _q_ 1 ln( _q_ 1 _/q_ 2) + (1 _− q_ 1) ln((1 _− q_ 1) _/_ (1 _− q_ 2)) for _q_ 1 _, q_ 2 _∈_ (0 _,_ 1). Show that KL( _q_ 1 _||q_ 2) _≤_ 0 _._ 5( _q_ 1 _− q_ 2)<sup>2</sup> _/_ min( _q_ 1(1 _− q_ 1) _, q_ 2(1 _− q_ 2)). 

- 16.5 Construct a lower bound for the MAB problem using Theorem 13.22, and compare it to the result of Theorem 16.13. 

- 16.6 In Algorithm 16.2, if an arm _a_ = _a∗_ has a gap ∆( _a_ ) = _µ_ ( _a∗_ ) _− µ_ ( _a_ ) _>_ 0. In what stage _ℓ_ will the arm get eliminated? Us this to derive a gap dependent bound for the algorithm. 

- 16.7 In Algorithm 16.3, assume that the reward is Gaussian for all _a_ : _rt_ ( _a_ ) _∼ N_ ( _µ_ ( _a_ ) _, σ_<sup>2</sup> ). Let _a∗_ be the best arm. At each time _t_ , for each arm _a_ and _ϵ >_ 0, 

   - estimate an upper bound of the probability of _|µ_ ( _a_ ) _− µ_ ˜ _t_ ( _a_ ) _| ≤ ϵ_ 

   - estimate a lower bound of the probability of _µ_ ˜ _t_ ( _a∗_ ) _≥ µ_ ( _a∗_ ) + _ϵ_ (which is referred to as anti-concentration) 

   - Using these results to show that the confidence interval of _µ_ ˜ _t_ ( _a∗_ ) _− µ_ ( _a∗_ ) shrinks. 

   - Use an UCB style analysis to derive a regret bound for Algorithm 16.3. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

**17** 

