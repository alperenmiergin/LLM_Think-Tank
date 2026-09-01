**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Basic Probability Inequalities for Sums of Independent Random Variables** 

In machine learning, the observations contain uncertainty, and to incorporate uncertainty, these observations are modeled as random variables. When we observe many data, a basic quantity of interest is the empirical mean of the observed random variables, which converges to the expectation according to the law of large numbers. We want to upper bound the probability of the event when the empirical mean deviates significantly from the expectation, which is referred to as the tail probability. This chapter studies the basic mathematical tools to estimate tail probabilities by using exponential moment estimates. 

Let _X_ 1 _, . . . , Xn_ be _n_ real-valued independent and identically distributed (iid) random variables, with expectation _µ_ = E _Xi_ . Let 



Given _ϵ >_ 0, we are interested in estimating the following tail probabilities: 



In machine learning, we can regard _X_<sup>¯</sup> _n_ as the training error observed on the training data. The unknown mean _µ_ is the test error which we want to infer from the training error. Therefore in machine learning, these tail inequalities can be interpreted as follows: with high probability, the test error is close to the training error. Such results will be used to derive rigorous statements of generalization error bounds in subsequent chapters. 

## **2.1 Normal Random Variable** 

The general form of tail inequality for the sum of random variables (with relatively light tails) is exponential in _ϵ_<sup>2</sup> . To motivate this general form, we will consider the case of normal random variables. The bounds can be obtained using simple calculus. 

**Theorem 2.1.** _Let X_ 1 _, . . . , Xn be n iid Gaussian random variables Xi ∼ N_ ( _µ, σ_<sup>2</sup> ) _, and let X_<sup>¯</sup> _n_ = _n_<sup>_−_1 �</sup><sup>_n_</sup> _i_ =1<sup>_Xi.Thengivenanyϵ >_0</sup><sup>_:_</sup> 



9 

CHAPTER 2. BASIC PROBABILITY INEQUALITIES 

10 

_Proof_ We first consider a standard normal random variable _X ∼ N_ (0 _,_ 1), which has probability density function 



Given _ϵ >_ 0, we can upper bound the tail probability Pr( _X ≥ ϵ_ ) as follows. 



We also have the following lower bound: 



Therefore we have 



Since<sup>_√_</sup> _<u>n</u>_ <u>(</u> _X_<sup>¯</sup> _n − µ_ ) _/σ ∼ N_ (0 _,_ 1), by using Pr( _X_<sup>¯</sup> _n ≥ µ_ + _ϵ_ ) = Pr(<sup>_√_</sup> _n_ ( _X_<sup>¯</sup> _n − µ_ ) _/σ ≥_<sup>_√_</sup> _nϵ/σ_ ) _,_ 

we obtain the desired result. 

We note that the tail probability of a normal random variable decays exponentially fast, and such an inequality is referred to as an _exponential inequality_ . This exponential bound is asymptotically tight as _n →∞_ in the following sense. For any _ϵ >_ 0, we have 



Such a result is also called a large deviation result, which is the regime when the deviation _ϵ_ of the empirical mean from the true mean _µ_ is much larger than the standard deviation _σ/_<sup>_√_</sup> _<u>n</u>_ of _X_<sup>¯</sup> _n_ (Deuschel and Stroock, 2001). The analysis of normal random variable can rely on standard calculus. For general random variables with exponentially decaying tail probabilities, we can use the technique of exponential moment to derive similar results. This leads to a general technique 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

2.2. MARKOV’S INEQUALITY 

11 

to estimate the probability of large deviation of the empirical mean from the true mean. 

## **2.2 Markov’s Inequality** 

A standard technique to estimate the tail inequality of a random variable is the Markov inequality. Let _X_ 1 _, . . . , Xn_ be _n_ real-valued iid random variables (that are not necessarily normal random variables) with mean _µ_ . Let _X_<sup>¯</sup> _n_ be the empirical mean defined in (2.1), we are interested in estimating the tail bound Pr( _X_<sup>¯</sup> _n ≥ µ_ + _ϵ_ ), and Markov’s inequality states as follows. 

**Theorem 2.2** (Markov’s Inequality) **.** _Given any non-negative function h_ ( _x_ ) _≥_ 0 _, and a set S ⊂_ R _, we have_ 



_Proof_ Since _h_ ( _x_ ) is non-negative, we have 



where _hS_ = inf _x∈S h_ ( _x_ ). This leads to the desired bound. 

In particular, we may consider the choice of _h_ ( _z_ ) = _z_<sup>2</sup> , which leads to Chebyshev’s inequality stated as below. 

**Corollary 2.3** (Chebyshev’s Inequality) **.** _We have_ 



_Proof_ Let _h_ ( _x_ ) = _x_<sup>2</sup> , then 



The desired bound follows from the Markov inequality with _S_ = _{|X_<sup>¯</sup> _n − µ| ≥ ϵ}_ . 

Note that Chebyshev’s inequality employs _h_ ( _z_ ) = _z_<sup>2</sup> , which leads to a tail inequality that is polynomial in _n_<sup>_−_1</sup> and _ϵ_ . It only requires that the variance of a random variable is bounded. In comparison, the Gaussian tail inequality has a much faster exponential decay. Exponential tail inequality is important for analyzing learning algorithms. In the following, we show that such an inequality can be established for sums of random variables with exponentially decaying tail probabilities. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 2. BASIC PROBABILITY INEQUALITIES 

12 

## **2.3 Exponential Tail Inequality** 

In order to obtain exponential tail bounds, we will need to choose _h_ ( _z_ ) = _e_<sup>_λnz_</sup> in Markov’s inequality with some tuning parameter _λ ∈_ R. Similar to Chebyshev’s inequality, which requires that the variance of a random variable is bounded, we assume that the exponential moment E _e_<sup>_λX_1</sup> _< ∞_ for some _λ_ = 0. This requires that the random variable _Xi_ has tail probability that decays exponentially fast. The following definition is helpful in the analysis. 

**Definition 2.4.** Given a random variable _X_ , we may define its logarithmic moment generating function as 



Moreover, given _z ∈_ R, the rate function _IX_ ( _z_ ) is defined as 



where _µ_ = E[ _X_ ]. 

The above definition can be used to obtain exponential tail bounds for sums of independent variables as follows. 

**Theorem 2.5.** _For any n and ϵ >_ 0 _:_ 



_Proof_ We choose _h_ ( _z_ ) = _e_<sup>_λnz_</sup> in Theorem 2.2 with _S_ = _{X_<sup>¯</sup> _n − µ ≥ ϵ}_ . For _λ >_ 0, we have 



The last equation used the independence of _Xi_ as well as they are identically distributed. Therefore by taking logarithm, we obtain 



Taking inf over _λ >_ 0 on the right hand side, we obtain the first desired bound. Similarly, we can obtain the second bound. 

The first inequality of Theorem 2.5 can be rewritten as 

Pr( _X_<sup>¯</sup> _n ≥ µ_ + _ϵ_ ) _≤_ exp[ _−nIX_ 1( _µ_ + _ϵ_ )] _._ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

2.3. EXPONENTIAL TAIL INEQUALITY 

13 

It shows that the tail probability of the empirical mean decays exponentially fast, if the rate function _IX_ 1( _·_ ) is finite. More concrete exponential tail inequalities can be obtained by applying Theorem 2.5 to specific random variables. For example, for Gaussian random variables, we can derive a tail inequality using Theorem 2.5, and compare to that of Theorem 2.1. 

**Example 2.6** (Gaussian Random Variable) **.** Assume that _Xi ∼ N_ ( _µ, σ_<sup>2</sup> ), then the exponential moment is 



Therefore, 



where the optimal _λ_ is achieved at _λ_ = _ϵ/σ_<sup>2</sup> . Therefore 



This leads to the same probability bound as that of Theorem 2.1 up to a constant factor. 

The Gaussian example above, together with Theorem 2.1, implies that the exponential inequality derived from Theorem 2.5 is asymptotically tight. This result can be generalized to the large deviation inequality for general random variables. In particular, we have the following theorem. 

**Theorem 2.7.** _For all ϵ_<sup>_′_</sup> _> ϵ >_ 0 _:_ 



_Similarly,_ 



_Proof_ We only need to prove the first inequality. Consider Pr( _Xi ≤ x_ ) as a function of _x_ , and define a random variable _Xi_<sup>_′_withdensityat</sup><sup>_x_as</sup> 



This choice implies that 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 2. BASIC PROBABILITY INEQUALITIES 

14 

We now take _λ_ such that 

_λ_ = arg max _λ_<sup>_′_</sup> _>_ 0<sup>[</sup><sup>_λ′_(</sup><sup>_µ_+</sup><sup>_ϵ′_)</sup><sup>_−_Λ</sup><sup>_X_1(</sup><sup>_λ′_)]</sup><sup>_._</sup> 

By setting the derivative to zero, we obtain 



Let _X_<sup>¯</sup> _n_<sup>_′_=</sup><sup>_n−_1 �</sup><sup>_n_</sup> _i_ =1<sup>_X_</sup> _i_<sup>_′_.Thenbythelawoflargenumbers,weknowthatfor</sup> _ϵ_<sup>_′′_</sup> _> ϵ_<sup>_′_</sup> , we obtain from (2.3) 





by using 1 ( _·_ ) to denote the set indicator function, we obtain 

Pr( _X_<sup>¯</sup> _n ≥ µ_ + _ϵ_ ) _≥_ Pr( _X_<sup>¯</sup> _n − µ ∈_ [ _ϵ, ϵ_<sup>_′′_</sup> ]) 



_·_ The first equality used the definition of Pr( ). The second equality used (2.6). The last inequality used Markov’s inequality. Now by taking logarithm, and divide by _n_ , we obtain 



The equality used (2.4). Now we obtain the desired bound by letting _n →∞_ , applying (2.5), and letting _ϵ_<sup>_′′_</sup> _→ ϵ_<sup>_′_</sup> so that _λ_ ( _ϵ_<sup>_′′_</sup> _− ϵ_<sup>_′_</sup> ) _→_ 0 (this is true because _λ_ depends only on _ϵ_<sup>_′_</sup> ). 

The combination of Theorem 2.5 and Theorem 2.7 shows that the large deviation tail probability is determined by the rate function. This result is referred to as Cram´er’s theorem (Cram´er, 1938; Deuschel and Stroock, 2001). 

For specific cases, one can obtain an estimate of Pr( _X_<sup>¯</sup> _<u>n</u>_<sup>_′−µ ∈_[</sup><sup>_ϵ, ϵ′′_]) in (2.8) with</sup> finite _n_ at _ϵ_<sup>_′_</sup> = _ϵ_ + 2�Var( _X_ 1) _/n_ and _ϵ_<sup>_′′_</sup> = _ϵ_ + 4�Var( _X_ 1) _/n_ . Using Chebyshev’s inequality, we expect that Pr( _X_<sup>¯</sup> _n_<sup>_′−µ∈_[</sup><sup>_ϵ, ϵ′′_])islowerboundedbyaconstant.</sup> This means that as _n →∞_ , the exponential tail inequality of Theorem 2.5 is generally loose by no more than _O_ (�Var( _X_ 1) _/n_ ) in terms of deviation _ϵ_ . A concrete calculation will be presented for bounded random variables in Section 2.5. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

2.3. EXPONENTIAL TAIL INEQUALITY 

15 

Before we investigate concrete examples of random variables, we state the following property of the logarithmic generating function of a random variable, which provides intuitions on its behavior. The proof is left as an exercise. 

**Proposition 2.8.** _Given a random variable with finite variance. We have:_ 



In the application of large deviation bounds, we are mostly interested in the case that deviation _ϵ_ is close to zero. As shown in Example 2.6, the optimal _λ_ we shall choose is _λ_ = _O_ ( _ϵ_ ) _≈_ 0. It is thus natural to consider the Taylor expansion of the logarithmic moment generating function around _λ_ = 0. Proposition 2.8 implies that the leading terms of the Taylor expansion are: 



where _µ_ = E[ _X_ ]. The first two terms match that of the normal random variable in Example 2.6. When _ϵ >_ 0 is small, then to obtain the rate function 



we should set the optimal _λ_ approximately as _λ ≈ ϵ/_ Var[ _X_ ], and the corresponding rate function becomes 



For specific forms of logarithmic moment generation functions, one may obtain more precise bounds of the rate function. In particular, the following general estimate is useful in many applications. This estimate is what we will use throughout the chapter. 

**Lemma 2.9.** _Consider a random variable X so that_ E[ _X_ ] = _µ. Assume that there exists α >_ 0 _and β ≥_ 0 _such that for λ ∈_ [0 _, β_<sup>_−_1</sup> ) _:_ 



_then for ϵ >_ 0 _:_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 2. BASIC PROBABILITY INEQUALITIES 

16 

_Proof_ Note that 



We can take _λ_ at _λ_<sup>¯</sup> = _ϵ/_ ( _α_ + _βϵ_ ). This implies that _αλ/_<sup>¯</sup> (1 _− βλ_<sup>¯</sup> ) = _ϵ_ . Therefore 



Moreover, with the same choice of _λ_<sup>¯</sup> , we have 



This proves the second desired bound. 

Lemma 2.9 implies the following generic theorem. 

**Theorem 2.10.** _If X_ 1 _has a logarithmic moment generating function that satisfies_ (2.9) _for λ >_ 0 _, then all ϵ >_ 0 _:_ 



_Moreover, for t >_ 0 _, we have_ 



_Proof_ The first inequality of the theorem follows from the first inequality of Lemma 2.9 and Theorem 2.5. The second inequality of the theorem follows from the second inequality of Lemma 2.9 and Theorem 2.5, with _ϵ_ = �2 _αt/n_ . 

## **2.4 Sub-Gaussian Random Variable** 

The logarithmic moment generating function of a normal random variable is quadratic in _λ_ . More generally, we may define a sub-Gaussian random variable as a random variable with logarithmic moment generating function dominated by a quadratic function in _λ_ . Such random variables have light tails, which implies that they have a tail probability inequality similar to that of a Gaussian random variable. 

**Definition 2.11.** A sub-Gaussian random variable _X_ has quadratic logarithmic moment generating function for all _λ ∈_ R: 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

2.5. HOEFFDING’S INEQUALITY 

17 

Using (2.10), we can obtain an upper bound of the rate function for subGaussian random variables, which imply the following tail inequality. 

**Theorem 2.12.** _If X_ 1 _is sub-Gaussian as in_ (2.10) _, then for all t >_ 0 _:_ 



_Proof_ The result follows from Theorem 2.10 with _α_ = _b_ and _β_ = 0. 

Common examples of sub-Gaussian random variables include Gaussian random variables and bounded random variables. 

**Example 2.13.** A Gaussian random variable _X_ 1 _∼ N_ ( _µ, σ_<sup>2</sup> ) is sub-Gaussian with _b_ = _σ_<sup>2</sup> . 

**Example 2.14.** Consider a bounded random variable: _X_ 1 _∈_ [ _α, β_ ]. Then _X_ 1 is sub-Gaussian with _b_ = ( _β − α_ )<sup>2</sup> _/_ 4. 

The tail probability inequality of Theorem 2.12 can also be expressed in a different form. Consider _δ ∈_ (0 _,_ 1) such that _δ_ = exp( _−t_ ), we have _t_ = ln(1 _/δ_ ). This means that we can alternatively express the first bound of Theorem 2.12 as follows. With probability at least 1 _− δ_ , we have 



This form is often preferred in the theoretical analysis of machine learning algorithms. 

## **2.5 Hoeffding’s Inequality** 

Hoeffding’s inequality (Hoeffding, 1963) is an exponential tail inequality for bounded random variables. In the machine learning and computer science literature, it is often referred to as the Chernoff bound. 

**Lemma 2.15.** _Consider a random variable X ∈_ [0 _,_ 1] _and_ E _X_ = _µ. We have the following inequality:_ 



_Proof_ Let _hL_ ( _λ_ ) = E _e_<sup>_λX_</sup> and _hR_ ( _λ_ ) = (1 _− µ_ ) _e_<sup>0</sup> + _µe_<sup>_λ_</sup> . We know that _hL_ (0) = _hR_ (0). Moreover, when _λ ≥_ 0: 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 2. BASIC PROBABILITY INEQUALITIES 

18 

and similarly _h_<sup>_′_</sup> _L_<sup>(</sup><sup>_λ_)</sup><sup>_≥h′_</sup> _R_<sup>(</sup><sup>_λ_)when</sup><sup>_λ ≤_0.Thisprovesthefirstinequality.</sup> Now we let 



It implies that 



and 



Using Taylor expansion, we obtain the inequality _h_ ( _λ_ ) _≤ h_ (0) + _λh_<sup>_′_</sup> (0) + _λ_<sup>2</sup> _/_ 8, which proves the second inequality. 

The lemma implies that the maximum logarithmic moment generating function of a random variable _X_ taking values in [0 _,_ 1] is achieved by a _{_ 0 _,_ 1 _}_ valued Bernoulli random variable with the same mean. Moreover, the random variable _X_ is sub-Gaussian. We can then apply the sub-Gaussian tail-inequality in Theorem 2.12 to obtain the following additive form of Chernoff bound. 

**Theorem 2.16** (Additive Chernoff Bounds) **.** _Assume that X_ 1 _∈_ [0 _,_ 1] _. Then for all ϵ >_ 0 _:_ 



_Proof_ We simply take _b_ = 1 _/_ 4 and _t_ = 2 _nϵ_<sup>2</sup> in Theorem 2.12 to obtain the first inequality. The second inequality follows from the equivalence of _X_<sup>¯</sup> _n ≤ µ − ϵ_ and _−X_<sup>¯</sup> _n ≤−µ_ + _ϵ_ . 

In some applications, one often needs to employ a more refined form of Chernoff bound, which can be stated as follows. 

**Theorem 2.17.** _Assume that X_ 1 _∈_ [0 _,_ 1] _. Then for all ϵ >_ 0 _, we have_ 



_where_ KL( _z||µ_ ) _is the_ Kullback-Leibler divergence _(KL divergence) defined as_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

2.5. HOEFFDING’S INEQUALITY 

19 

_Proof_ Consider the case _z_ = _µ_ + _ϵ_ . We have 



Assume that the optimal value of _λ_ on the right hand side is achieved at _λ∗_ . By setting the derivative to zero, we obtain the expression: 



which implies that 



This implies that _−IX_ 1( _z_ ) _≤−_ KL( _z||µ_ ). The case of _z_ = _µ − ϵ_ is similar. We can thus obtain the desired bound from Theorem 2.5. 

In many applications, we will be interested in the situation _µ ≈_ 0. For example, this happens when the classification error is close to zero. In this case, Theorem 2.17 is superior to Theorem 2.16, and the result implies a simplified form stated in the following corollary. 

**Corollary 2.18** (Multiplicative Chernoff Bounds) **.** _Assume that X_ 1 _∈_ [0 _,_ 1] _. Then for all ϵ >_ 0 _:_ 



_Moreover, for t >_ 0 _, we have:_ 

_Proof_ The first and the second results can be obtained from Theorem 2.17 and the inequality KL( _z||µ_ ) _≥_ ( _z − µ_ )<sup>2</sup> _/_ max(2 _µ, µ_ + _z_ ) (which is left as an exercise). We then take _z_ = (1 + _ϵ_ ) _µ_ and _z_ = (1 _− ϵ_ ) _µ_ respectively for the first and the second inequalities. 

For the third inequality (which is sharper than the first inequality), we may apply Theorem 2.10. Just observe from Lemma 2.15 that when _λ >_ 0: 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 2. BASIC PROBABILITY INEQUALITIES 

20 

In the above derivation, the equality used the Taylor expansion of exponential function. The last inequality used _k_ ! _≥_ 2 _·_ 3<sup>_k−_2</sup> and the sum of infinite geometric series. We may take _α_ = _µ_ and _β_ = 1 _/_ 3 in Theorem 2.10 to obtain the desired bound. 

The multiplicative form of Chernoff bound can be expressed alternatively as follows. With probability at least 1 _− δ_ : 



It implies that for any _γ ∈_ (0 _,_ 1): 

Moreover, with probability at least 1 _− δ_ : 



It implies that for any _γ >_ 0: 



For Bernoulli random variables with _X_ 1 _∈{_ 0 _,_ 1 _}_ , the moment generating function achieves equality in Lemma 2.15, and thus the proof of Theorem 2.17 implies that the rate function is given by 



We can obtain the following lower bound from (2.8), which suggests that the KLformulation of Hoeffding’s inequality is quite tight for Bernoulli random variables when _n_ is large. 

**Corollary 2.19.** _Assume that X_ 1 _∈{_ 0 _,_ 1 _}. Then for all ϵ >_ 0 _that satisfies_ 





_where_ 



_Proof_ In (2.8), we let _ϵ_<sup>_′′_</sup> = 2 _ϵ_<sup>_′_</sup> _− ϵ_ . Since _Xi_<sup>_′∈{_0</sup><sup>_,_1</sup><sup>_}_andE</sup><sup>_X_</sup> _i_<sup>_′_=</sup><sup>_µ_+</sup><sup>_ϵ′_,wehave</sup> 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

2.6. BENNETT’S INEQUALITY 

21 

Var( _X_ 1<sup>_′_) = (</sup><sup>_µ_+</sup><sup>_ϵ′_)(1</sup><sup>_−µ −ϵ′_).UsingChebyshev’sinequality,weobtain</sup> 



Therefore 



The choice of _λ_ in (2.4) is given by 



By using the above estimates, we can obtain the desired bound from (2.8). 

## **2.6 Bennett’s Inequality** 

In Bennett’s inequality, we assume that the random variable is upper bounded, and has a small variance. In this case, one can obtain a more refined estimate of the moment generating function by using the variance of the random variable (Bennett, 1962). 



_where φ_ ( _z_ ) = ( _e_<sup>_z_</sup> _− z −_ 1) _/z_<sup>2</sup> _. Proof_ Let _X_<sup>_′_</sup> = _X −_ E _X_ . We have 



where the first inequality used ln _z ≤ z −_ 1; the second inequality follows from the fact that the function _φ_ ( _z_ ) is non-decreasing (left as an exercise) and _λX_<sup>_′_</sup> _≤ λb_ . 

The above lemma gives an estimate of the logarithmic moment generating function, which implies the following result from Theorem 2.5. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 2. BASIC PROBABILITY INEQUALITIES 

22 

**Theorem 2.21** (Bennett’s Inequality) **.** _If X_ 1 _≤ µ_ + _b, for some b >_ 0 _. Let ψ_ ( _z_ ) = (1 + _z_ ) ln(1 + _z_ ) _− z, then ∀ϵ >_ 0 _:_ 



_Moreover, for t >_ 0 _:_ 



_Proof_ Lemma 2.20 implies that 



We can set the derivative of the objective function on the right hand side with respect to _λ_ to zero at the minimum solution, and obtain the condition for the optimal _λ_ as follows: 



This gives the solution _λ_ = _b_<sup>_−_1</sup> ln(1 + _ϵb/_ Var( _X_ 1)). Plugging this solution into the objective function, we obtain 



The first inequality of the theorem follows from an application of Theorem 2.5. Given _λ ∈_ (0 _,_ 3 _/b_ ), it is easy to verify the following inequality using the Taylor expansion of the exponential function 



The second and the third desired bounds follow from direct applications of Theorem 2.10 with _α_ = Var( _X_ 1) and _β_ = _b/_ 3. 

Bennett’s inequality can be expressed alternatively as follows. Given any _δ ∈_ (0 _,_ 1), with probability at least 1 _− δ_ , we have 



If we apply this to the case that _Xi ∈_ [0 _,_ 1], then using the variance estimation Var( _X_ 1) _≤ µ_ (1 _− µ_ ), and _b ≤_ 1 _− µ_ , the above bound implies 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

2.7. BERNSTEIN’S INEQUALITY 

23 

This is slightly tighter than the corresponding multiplicative Chernoff bound in Corollary 2.18. 

Compared to the tail bound for Gaussian random variables, this form of Bennett’s inequality has an extra term _b_ ln(1 _/δ_ ) _/_ (3 _n_ ), which is of higher order _O_ (1 _/n_ ). Compared to the additive Chernoff bound, the Bennett’s inequality is superior when Var( _X_ 1) is small. 

## **2.7 Bernstein’s Inequality** 

In Bernstein’s inequality, we obtain results similar to Bennett’s inequality, but using a moment condition (Bernstein, 1924) instead of the boundedness condition. There are several different forms of such inequalities, and we only consider one form, which relies on the following moment assumption. 

**Lemma 2.22.** _If X satisfies the following moment condition with b, V >_ 0 _for integers m ≥_ 2 _:_ 



_where c is arbitrary. Then when λ ∈_ (0 _,_ 3 _/b_ ) _:_ 



_Proof_ We have the following estimation of logarithmic moment generating function: 



This implies the desired bound. 

In general we may take _c_ = E[ _X_ ] and _V_ = Var[ _X_ ]. The following bound is a direct consequence of Theorem 2.10. 

**Theorem 2.23** (Bernstein’s Inequality) **.** _Assume that X_ 1 _satisfies the moment condition in Lemma 2.22. Then for all ϵ >_ 0 _:_ 



_and for all t >_ 0 _:_ 



_Proof_ We simply set _α_ = _V_ and _β_ = _b/_ 3 in Theorem 2.10. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 2. BASIC PROBABILITY INEQUALITIES 

24 

Similar to Bennet’s inequality, Bernstein’s inequality can be alternatively expressed as follows. With probability at least 1 _− δ_ , 



which implies with probability at least 1 _− δ_ , the following inequality holds for all _γ >_ 0: 



**Example 2.24.** If the random variable _X_ is bounded with _|X − µ| ≤ b_ , then the moment condition of Lemma 2.22 holds with _c_ = _µ_ and _V_ = Var( _X_ ). 

## **2.8 Non-identically Distributed Random Variables** 

If _X_ 1 _, . . . , Xn_ are independent but not identically distributed random variables, then a tail inequality similar to that of Theorem 2.5 holds. Let _X_<sup>¯</sup> _n_ = _n_<sup>_−_1 �</sup><sup>_n_</sup> _i_ =1<sup>_Xi_,</sup> and _µ_ = E _X_<sup>¯</sup> _n_ , then we have the following bound. 

**Theorem 2.25.** _We have for all ϵ >_ 0 _:_ 



For sub-Gaussian random variables, we have the following bound. 

**Corollary 2.26.** _If {Xi} are independent sub-Gaussian random variables with_ ln E _e_<sup>_λXi_</sup> _≤ λ_ E _Xi_ + 0 _._ 5 _λ_<sup>2</sup> _bi, then for all ϵ >_ 0 _:_ 



The following inequality is a useful application of the above sub-Gaussian bound for Rademacher average. This bound, also referred to as the Chernoff bound in the literature, is essential for the symmetrization argument of Chapter 4. 

**Corollary 2.27.** _Let σi_ = _{±_ 1 _} be independent Bernoulli random variables ( each takes value ±_ 1 _with equal probability). Let ai be fixed numbers (i_ = 1 _, . . . , n). Then for all ϵ >_ 0 _:_ 



_Proof_ Consider _Xi_ = _σiai_ in Corollary 2.26. We can take _µ_ = 0 and _bi_ = _a_<sup>2</sup> _i_<sup>to</sup> obtain the desired bound. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

| ~~=|~~ 

» 

ans S ~~E~~ 

CHAPTER 2. BASIC PROBABILITY INEQUALITIES 

26 

have 



where the inequality used the sub-Gaussian assumption. The second and the last equalities can be obtained using Gaussian integration. This proves the first bound of the theorem. 

For _λ ≥_ 0, we obtain 



The first probability inequality of the theorem follows from Theorem 2.10 with _µ_ = _n_<sup>_−_1 �</sup><sup>_n_</sup> _i_ =1<sup>_bi_,</sup><sup>_α_= (2</sup><sup>_/n_) �</sup><sup>_n_</sup> _i_ =1<sup>_b_</sup> _i_<sup>2and</sup><sup>_β_= 2 max</sup><sup>_ibi_.</sup> If _λ ≤_ 0, then 



The second probability inequality of the theorem follows from the sub-Gaussian tail inequality of Theorem 2.12 with _µ_ = _n_<sup>_−_1 �</sup><sup>_n_</sup> _i_ =1<sup>_bi_and</sup><sup>_b_= (2</sup><sup>_/n_) �</sup><sup>_n_</sup> _i_ =1<sup>_b_</sup> _i_<sup>2.</sup> 

From Theorem 2.29, we can obtain the following expressions for _χ_<sup>2</sup> _n_<sup>tailbound</sup> by taking _bi_ = 1. With probability at least 1 _− δ_ : 



and with probability at least 1 _− δ_ : 



One may also obtain a tail bound estimate for _χ_<sup>2</sup> _n_<sup>distributionsusingdirectinte-</sup> gration. We leave it as an exercise. 

## **2.10 Historical and Bibliographical Remarks** 

Chebyshev’s inequality is named after the Russian mathematician Pafnuty Chebyshev, and was known in the 19th century. The investigation of exponential tail 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

2.10. HISTORICAL AND BIBLIOGRAPHICAL REMARKS 

27 

inequalities for sums of independent random variables occurred in the early 20th century. Bernstein’s inequality was one of the first such results. The large deviation principle was established by Cram´er, and was later rediscovered by Chernoff (1952). In the following decade, several important inequalities were obtained such as Hoeffding’s inequality and Bennett’s inequality. The tail bounds in Theorem 2.29 for _χ_<sup>2</sup> random variables was first documented in (Laurent and Massart, 2000), where they were used to analyze least squares regression problems with Gaussian noise. It was later extended to arbitrary quadratic forms of independent sub-Gaussian random variables by Hsu et al. (2012b). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 2. BASIC PROBABILITY INEQUALITIES 

28 

## **Exercises** 

2.1 Assume that _X_ 1 _, X_ 2 _, . . . , Xn_ are real-valued iid random variables with density function 

_x_<sup>2</sup> _p_ ( _x_ ) = exp( _−x_<sup>2</sup> _/_ 2) _._ _~~√~~_ 2 _π_ 

Let _µ_ = E _X_ 1, and _X_<sup>¯</sup> _n_ = _n_<sup>_−_1 �</sup><sup>_n_</sup> _i_ =1<sup>_Xi_.</sup> 

- Estimate ln E exp( _λX_ 1) 

- Estimate Pr( _X_<sup>¯</sup> _n ≥ µ_ + _ϵ_ ) 

- _•_ Estimate Pr( _X_<sup>¯</sup> _n ≤ µ − ϵ_ ) 

2.2 Prove Proposition 2.8. 

- 2.3 Prove the following inequality 



which is needed in the proof of Corollary 2.18. 

- 2.4 Prove that the function _φ_ ( _z_ ) = ( _e_<sup>_z_</sup> _− z −_ 1) _/z_<sup>2</sup> is non-decreasing in _z_ . 

- 2.5 Assume that the density function of a distribution _D_ on R is (1 _−p_ ) _U_ ( _−_ 1 _,_ 1)+ _pU_ ( _−_ 1 _/p,_ 1 _/p_ ) for _p ∈_ (0 _,_ 0 _._ 5), where _U_ ( _·_ ) denotes the density of the uniform distribution. Let _X_ 1 _, . . . , Xn_ be iid samples from _D_ . For _ϵ >_ 0, estimate the probability 



using Bernstein’s inequality. 

2.6 Write down the density of _χ_<sup>2</sup> distribution, and use integration to estimate the tail inequalities. Compare the results to those of Theorem 2.29. 

- 2.7 Prove Corollary 2.26 and Corollary 2.28. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

**3** 

