**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Rademacher Complexity and Concentration Inequalities** 

In Chapter 3 and Chapter 4, we obtained uniform convergence results using covering numbers and exponential probability inequalities. This chapter considers a different, although highly related method. In this approach, we first bound the expectation of the supremum of an underlying empirical process using the so-called _Rademacher complexity_ , and then use _concentration inequalities_ to obtain high probability bounds. This approach simplifies various derivations in generalization analysis. 

## **6.1 Rademacher Complexity** 

Using the notations from Section 3.3, we are given a function class _G_ = _{φ_ ( _w, z_ ) : _w ∈_ Ω _}_ , and are interested in the uniform convergence of training error 



on a training data _Sn_ = _{Z_ 1 _, . . . , Zn} ∼D_<sup>_n_</sup> , to the test error 



on the test data _D_ . In particular, in the general analysis of learning algorithms, we want to estimate the supremum of the associated empirical process: 



We introduce the following definition, which will be useful in the analysis of this chapter. 

**Definition 6.1.** Given an empirical process _{φ_ ( _w, Sn_ ) : _w ∈_ Ω _}_ , with _Sn ∼D_<sup>_n_</sup> . Define the expected supremum of this empirical process as 



which will be referred to as the _uniform convergence complexity_ of the function class _G_ . 

The smaller this quantity is, the closer the gap between the training error and the test error is, which implies that we have less overfitting. In Chapter 3, we 

85 

CHAPTER 6. RADEMACHER COMPLEXITY 

86 

obtained large probability uniform convergence results for empirical processes, and then derived oracle inequalities in large probabilities. In the following, we show that if average convergence can be obtained, then we can derive oracle inequalities in expectation directly. 

**Theorem 6.2.** _Consider φ_ ( _w, Z_ ) _with Z ∼D. Let Sn ∼D_<sup>_n_</sup> _be n iid samples from D. Then the approximate ERM method of_ (3.7) _satisfies_ 



_Proof_ Given any _w ∈_ Ω, we have for each instance of training data _Sn_ 



Taking expectation with respect to _Sn_ , and note that _w_ does not depend on _Sn_ , we obtain 



This implies the desired bound. 

We are now ready to define Rademacher complexity. While the standard definition is two-sided where the supremum is over the absolute value of the sum, we consider one-sided bound which is more convenient for our purpose. 

**Definition 6.3.** Given _Sn_ = _{Z_ 1 _, . . . , Zn}_ , the (one-sided) empirical Rademacher complexity of _G_ is defined as 



where _σ_ 1 _, . . . , σn_ are independent uniform _{±_ 1 _}_ -valued Bernoulli random variables. Moreover, the expected Rademacher complexity is 



The following result shows that the quantity _ϵn_ ( _G, D_ ) can be upper bounded by Rademacher complexity. It follows that an average oracle inequality can be obtained using Rademacher complexity. The proof employs the _symmetrization_ technique, which was also used in Chapter 4 to obtain uniform convergence bounds from empirical covering numbers. 

**Theorem 6.4.** _We have_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

6.2. OFFSET RADEMACHER COMPLEXITY 

87 

_Consequently, the approximate ERM method of_ (3.7) _satisfies_ 



_Proof_ Let _Sn_<sup>_′_=</sup><sup>_{Z_</sup> 1<sup>_′, . . . , Z_</sup> _n_<sup>_′} ∼Dn_be</sup><sup>_n_iid samples from</sup><sup>_D_that are independent</sup> of _Sn_ . We have 



This proves the desired bound. 

One reason to introduce Rademacher complexity is that it can be estimated on the training data. Moreover, for many problems it is often not difficult to estimate this quantity theoretically. The following example demonstrates this. 

**Example 6.5.** Consider a (binary-valued) VC class _G_ such that vc( _G_ ) = _d_ . Consider _n ≥ d_ . Then Sauer’s lemma implies that for any _Sn_ , the number of functions of _φ ∈G_ on _Sn_ is no more than ( _en/d_ )<sup>_d_</sup> . We thus obtain (see Theorem 6.23) 



This implies that the approximate ERM method of (3.7) satisfies 



A better bound can be obtained using Theorem 5.6 and Theorem 6.25, which removes the ln _n_ factor. Also see Example 6.26. 

## **6.2 Offset Rademacher Complexity** 

While the standard Rademacher complexity is suitable for many problems, for regularized empirical risk minimization problems which frequently occur in practice, it can be more convenient to use _offset Rademacher complexity_ . In this section, we consider a generalization of the empirical risk minimization method, where we allow the training error to be different from the test error, which frequently occurs in practical applications. A typical example is to include a regularizer in the training loss to stablize the training process, such as _L_ 2 regularization 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 6. RADEMACHER COMPLEXITY 

88 

0 _._ 5 _λ∥w∥_ 2<sup>2.Insuchcase,weconsiderthefollowingregularizedtrainingloss,with</sup> a general training set dependent regularizer _h_ ( _w, Sn_ ): 



Here we assume that _h_ ( _w, Sn_ ) is a general function that can depend on the training data _Sn_ . By following the notations from Section 3.3, we use _φ_ ( _w, z_ ) to denote the loss function at a data point _z_ , and use _Sn_ = _{Z_ 1 _, . . . , Zn}_ to denote the training data. The test loss is 



with respect to the unknown test distribution _D_ . Training data _Sn_ are iid samples from _D_ . 

We consider a function class _G_ = _{φ_ ( _w, z_ ) : _w ∈_ Ω _}_ , and the following approximate regularized ERM method to find _w_ ˆ: 



which is a more general formulation than (3.7). This formulation will become convenient in some of the future analysis. In order to analyze the behavior of this method, we need to analyze the uniform convergence of the regularized training loss to the test loss. 

For this purpose, we consider a modified empirical process (to compensate the difference of training error and test error), which we refer to as _offset empirical process_ , and study the supremum of this offset empirical process: 



It characterizes the degree of (one-sided) uniform convergence of function class _G_ , with a offset function _h_ ( _w, Sn_ ). Here we incorporate a known offset function _h_ ( _w, Sn_ ) into the training loss, which may depend on the model parameter and training data. In the usual setting of empirical process in Chapter 3 and Chapter 4, one may simply take _h_ ( _w, Sn_ ) = 0. 

**Definition 6.6.** Consider any known data-dependent offset function _h_ ( _w, Sn_ ). Define the uniform convergence complexity of a function class _G_ with offset _h_ as 



This quantity measures the one-sided _expected uniform convergence_ of function class _G_ with offset function _h_ ( _w, Sn_ ). 

We note that 



We have the following generalization of Theorem 6.2, with a similar proof. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

6.2. OFFSET RADEMACHER COMPLEXITY 

89 

**Theorem 6.7.** _Let Sn be n iid samples from D. Then the approximate ERM method of_ (6.1) _satisfies_ 



_Proof_ Given any _w ∈_ Ω, we have for each training data _Sn_ 





In the derivation of the last inequality, we used (6.1). Taking expectation with respect to _Sn_ , and note that _w_ does not depend on _Sn_ , we obtain 



This implies the desired bound. 

The following example shows that with an appropriately defined offset function, we can obtain generalization result for regularized empirical risk minimization. 

**Example 6.8.** Take _h_ ( _w, Sn_ ) = _g_ ( _w_ ) in (6.1), and let _φ_ ( _w, z_ ) = _L_ ( _f_ ( _w, x_ ) _, y_ ), then Theorem 6.7 implies the following generalization bound for the approximate regularized ERM method in (6.1): 



From Theorem 6.7, we may also obtain a slightly more general formulation, which is some times useful. 

**Corollary 6.9.** _Consider_ (6.1) _, and define_ 



_where h_<sup>_′_</sup> ( _w_ ) _is an arbitrary function of w. Then_ 



_Proof_ Let 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 6. RADEMACHER COMPLEXITY 

90 

then (6.1) remains the same with _φ_ ( _w, z_ ) replaced by _φ_<sup>˜</sup> ( _w, z_ ), and _h_ ( _w, Sn_ ) replaced by _h_<sup>˜</sup> ( _w, Sn_ ). We can now apply Theorem 6.7 with _ϵ_<sup>_h_</sup> _n_<sup>(</sup><sup>_G, D_)replacedby</sup> 



to obtain 



This implies the desired bound. 

**Example 6.10.** One advantage of Corollary 6.9 is that it allows us to introduce an unknown distribution dependent offset term _h_<sup>_′_</sup> ( _w_ ) into the definition of uniform convergence complexity because the learning algorithm in (6.1) does not depend on _h_<sup>_′_</sup> ( _w_ ). As a simple example, we may take _h_<sup>_′_</sup> ( _w_ ) = _γφ_ ( _w, D_ ) and obtain 



We are now ready to define (one-sided) offset Rademacher complexity. Note that the offset function in Rademacher complexity is more restrictive than the more general offset function considered in the uniform convergence complexity (6.2). This is because we would like to use symmetrization argument, which works only for this special form of offset function. 

**Definition 6.11.** Consider a function class _G_ = _{φ_ ( _w, Z_ ) : _w ∈_ Ω _}_ , and let _h_ be an offset function of the following form 



Given _Sn_ = _{Z_ 1 _, . . . , Zn}_ , the (one-sided) empirical Rademacher complexity of _G_ with offset _h_ decomposition (6.3) is defined as 



where _σ_ 1 _, . . . , σn_ are independent uniform _{±_ 1 _}_ -valued Bernoulli random variables. Moreover, the expected Rademacher complexity is 



We note that the standard Rademacher complexity can be regarded as a special case of the offset Rademacher complexity with _h_ ( _·_ ) = _h_ 0( _·_ ) = _h_ 1( _·_ ) = 0: 



It should be pointed out that the decomposition of _h_ in (6.3) may not be unique, and the offset Rademacher complexity relies on the specific decomposition used. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

6.2. OFFSET RADEMACHER COMPLEXITY 

91 

As shown in Example 6.10, we allow distribution dependent offset in the definition of uniform convergence complexity. We also allow distribution dependent offset in the definition of offset Rademacher complexity. 

The following result shows that for some cases, offset Rademacher complexity can be obtained easily for some function classes. 

**Example 6.12.** Consider a function class _F_ = _{f_ ( _w, x_ ) = _w_<sup>_⊤_</sup> _ψ_ ( _x_ ) : _w ∈_ R<sup>_d_</sup> _}_ , consisting of linear functions. Let _h_ ( _w_ ) = _h_ 0( _w_ ) = 0 _._ 5 _λ∥w∥_ 2<sup>2.Thenforany</sup><sup>_Sn_,</sup> we have 



Let _FA,B_ = _{{f_ ( _w, x_ ) = _w_<sup>_⊤_</sup> _ψ_ ( _x_ ) : _∥w∥_ 2 _≤ A, ∥ψ_ ( _x_ ) _∥_ 2 _≤ B}_ , then for any _λ_ : 



By optimizing over _λ_ , we obtain 



The following example illustrates that offset Rademacher complexity can lead to a result analogous to the multiplicative form of the Chernoff bound. 

**Example 6.13.** Consider a (binary-valued) VC class _G_ such that vc( _G_ ) = _d_ . Consider _n ≥ d_ , and let _h_ ( _f, Sn_ ) = _h_ 1( _f, Sn_ ) = ( _γ/n_ )<sup>�</sup><sup>_n_</sup> _i_ =1<sup>_f_(</sup><sup>_Zi_).ThenSauer’s</sup> lemma implies that for any _Sn_ , the number of functions of _φ ∈G_ on _Sn_ is no more than ( _en/d_ )<sup>_d_</sup> . We thus obtain (see Theorem 6.23) 



This result can be compared to the standard Rademacher complexity result in Example 6.5, which leads to an additive expected generalization bound. 

The following result is a generalization of Theorem 6.4. 

**Theorem 6.14.** _Consider offset function of_ (6.3) _. We have_ 



## _Consequently, the approximate regularized ERM method of_ (6.1) _satisfies_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 6. RADEMACHER COMPLEXITY 

92 

_Proof_ Let _Sn_<sup>_′_=</sup><sup>_{Z_</sup> 1<sup>_′, . . . , Z_</sup> _n_<sup>_′} ∼Dn_be</sup><sup>_n_iid samples from</sup><sup>_D_that are independent</sup> of _Sn_ . We have 







In the above derivation, ( _a_ ) used the fact that _σi_ ( _φ_ ( _w, Zi_<sup>_′_)+0</sup><sup>_._5</sup><sup>_h_1(</sup><sup>_w, Z_</sup> _i_<sup>_′_))</sup><sup>_−_</sup> _σi_ ( _φ_ ( _w, Zi_ )+0 _._ 5 _h_ 1( _w, Zi_ )) and ( _φ_ ( _w, Zi_<sup>_′_)+0</sup><sup>_._5</sup><sup>_h_1(</sup><sup>_w, Z_</sup> _i_<sup>_′_))</sup><sup>_−_(</sup><sup>_φ_(</sup><sup>_w, Zi_)+0</sup><sup>_._5</sup><sup>_h_1(</sup><sup>_w, Zi_))</sup> have the same distributions. 

**Example 6.15.** Using the offset Rademacher complexity estimate for VC-class in Example 6.13, we can obtain the following multiplicative form of expected oracle inequality from Theorem 6.14: 



This implies an expected generalization of _O_ ( _d_ ln _n/n_ ) when inf _w∈_ Ω _φ_ ( _w, D_ ) = 0. In comparison, the standard Rademacher complexity leads to a convergence of _O_ (� _d_ ln _n/n_ ) in Example 6.5. 

## **6.3 Concentration Inequality** 

We showed that using Rademacher complexity, we may obtain an oracle inequality in expectation. By using concentration inequality, we can also obtain high probability uniform convergence and oracle inequality statements. 

The simplest concentration inequality is a generalization of the additive Chernoff bound, due to McDiarmid (1989). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

6.3. CONCENTRATION INEQUALITY 

93 

**Theorem 6.16** (McDiarmid’s Inequality) **.** _Consider n independent random variables X_ 1 _, . . . , Xn, and a real-valued function f_ ( _X_ 1 _, . . . , Xn_ ) _that satisfies the following inequality_ 



_for all_ 1 _≤ i ≤ n. Then for all ϵ >_ 0 _:_ 



_Similarly:_ 



_Proof_ Let _Xk_<sup>_l_=</sup><sup>_{Xk, . . . , Xl}_.Consider</sup><sup>_X_</sup> 1<sup>_n_,andforsome1</sup><sup>_≤k≤n_,weuse</sup> the simplified notation _X_<sup>˜</sup> 1<sup>_n_=</sup><sup>_{X_1</sup><sup>_, . . . , Xk−_1</sup><sup>_,X_˜</sup><sup>_k, Xk_+1</sup><sup>_, Xn}_.Thenwehave</sup> _|_ E _Xk_<sup>_n_</sup> +1<sup>_f_(</sup><sup>_X_</sup> 1<sup>_n_)</sup><sup>_−_E</sup><sup>_X_</sup> _k_<sup>_n_</sup> +1<sup>_f_( ˜</sup><sup>_X_</sup> 1<sup>_n_)</sup><sup>_| ≤ck._</sup> 

We now consider E _Xk_<sup>_n_</sup> +1<sup>_f_(</sup><sup>_X_</sup> 1<sup>_n_)asarandomvariabledependingon</sup><sup>_Xk_,condi-</sup> tioned on _X_ 1<sup>_k−_1</sup> . It follows from derivation of the Chernoff bound that we have the following logarithmic moment generating function estimate (see Example 2.14): 

ln E _Xk_ exp[ _λ_ E _Xk_<sup>_n_</sup> +1<sup>_f_(</sup><sup>_X_</sup> 1<sup>_n_)]</sup><sup>_≤λ_E</sup><sup>_X_</sup> _k_<sup>_nf_(</sup><sup>_X_</sup> 1<sup>_n_) +</sup><sup>_λ_2</sup><sup>_c_2</sup> _k_<sup>_/_8</sup><sup>_._</sup> 

Now we may exponentiate the above inequality, and take expectation with respect to _X_ 1<sup>_k−_1</sup> to obtain 

E _X_ 1 _k_<sup>exp[</sup><sup>_λ_E</sup><sup>_X_</sup> _k_<sup>_n_</sup> +1<sup>_f_(</sup><sup>_X_</sup> 1<sup>_n_)]</sup><sup>_≤_E</sup> _X_ 1<sup>_k−_1</sup> exp[ _λ_ E _Xk_<sup>_nf_(</sup><sup>_X_</sup> 1<sup>_n_) +</sup><sup>_λ_2</sup><sup>_c_2</sup> _k_<sup>_/_8]</sup><sup>_._</sup> 

By taking logarithm, we obtain 

ln E _X_ 1 _k_<sup>exp[</sup><sup>_λ_E</sup><sup>_X_</sup> _k_<sup>_n_</sup> +1<sup>_f_(</sup><sup>_X_</sup> 1<sup>_n_)]</sup><sup>_≤_ln E</sup> _X_ 1<sup>_k−_1</sup> exp[ _λ_ E _Xk_<sup>_nf_(</sup><sup>_X_</sup> 1<sup>_n_)] +</sup><sup>_λ_2</sup><sup>_c_2</sup> _k_<sup>_/_8</sup><sup>_._</sup> 

By summing from _k_ = 1 to _k_ = _n_ , and canceling redundant terms, we obtain 



Let 



Using Markov’s inequality, we have for all positive _λ_ 



Since _λ >_ 0 is arbitrary, we conclude that 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 6. RADEMACHER COMPLEXITY 

94 

This implies the theorem. 

McDiarmid’s inequality is referred to as _concentration inequality_ because it states that the sample dependent quantity _f_ ( _X_ 1 _, . . . , Xn_ ) does not deviate significantly from its expectation E _f_ ( _X_ 1 _, . . . , Xn_ ). 

Note that if we take 



and assume that _xi ∈_ [0 _,_ 1], then we can take _ci_ = 1 _/n_ , which implies the additive Chernoff bound in Theorem 2.16. Therefore McDiarmid’s inequality is a generalization of the additive Chernoff bound. 

We can apply Theorem 6.16 to empirical processes and obtain a uniform convergence result. In order to handle offset Rademacher complexity, we introduce the sensitivity of _h_ ( _w, Sn_ ) as follows, which measures the maximum change when the data _Sn_ is modified by no more than one element. Note that the sensitivity is needed in order to apply McDiarmid’s inequality. 

**Definition 6.17.** Given a function _h_ ( _w, Sn_ ), we define 





In particular, if _h_ ( _w, Sn_ ) = _h_ 0( _w_ ), then 



We have the following uniform convergence result using Rademacher complexity. 

**Corollary 6.19.** _Assume that for some M ≥_ 0 _:_ 



_Then with probability at least_ 1 _− δ: for all w ∈_ Ω _,_ 



_Moreover, assume that the decomposition_ (6.3) _holds, then with probability at least_ 1 _− δ: for all w ∈_ Ω _,_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

6.3. CONCENTRATION INEQUALITY 

95 

_Proof_ Consider _Sn_ = _{Z_ 1 _, . . . , Zn}_ and _Sn_<sup>_′_=</sup><sup>_{Z_1</sup><sup>_, . . . , Zi−_1</sup><sup>_, Z_</sup> _i_<sup>_′, Zi_+1</sup><sup>_, . . . , Zn}_.</sup> Let _f_ ( _Sn_ ) = sup _w∈_ Ω[ _φ_ ( _w, D_ ) _− φ_ ( _w, Sn_ ) _− h_ ( _w, Sn_ )]. For simplicity, we assume that the sup can be achieved at _w_ ˆ as 

_w_ ˆ = arg max _w∈_ Ω<sup>[</sup><sup>_φ_(</sup><sup>_w, D_)</sup><sup>_−φ_(</sup><sup>_w, Sn_)</sup><sup>_−h_(</sup><sup>_w, Sn_)]</sup><sup>_._</sup> 

Then 



Similarly, _f_ ( _Sn_<sup>_′_)</sup><sup>_−f_(</sup><sup>_Sn_)</sup><sup>_≤M/n_.Thereforewemaytake</sup><sup>_ci_=</sup><sup>_M/n_inTheorem</sup> 6.16, which implies the first desired result. The second bound follows from the estimate _ϵ_<sup>_h_</sup> _n_<sup>(</sup><sup>_G, D_)</sup><sup>_≤_2</sup><sup>_R_</sup> _n_<sup>_h_(</sup><sup>_G, D_)ofTheorem6.14.</sup> 

**Example 6.20.** If we use the standard Rademacher complexity, then ∆ _nh_ ( _w_ ) = 0. Corollary 6.19 implies that 



where _M_ = sup _w∈_ Ω sup _z,z′_ [ _φ_ ( _w, z_ ) _− φ_ ( _w, z_<sup>_′_</sup> )]. 

Corollary 6.19 implies the following result. 

**Corollary 6.21.** _Assume that for some M ≥_ 0 _:_ 



_Then the approximate ERM method_ (6.1) _satisfies the following oracle inequality. With probability at least_ 1 _− δ − δ_<sup>_′_</sup> _:_ 



_If h_ ( _·_ ) _has the decomposition_ (6.3) _, then_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 6. RADEMACHER COMPLEXITY 

96 

_Proof_ Given any _w ∈_ Ω, from the Chernoff bound, we know that with probability 1 _− δ/_ 2, 



Moreover, from McDiarmid’s inequality, we know that with probability 1 _− δ_<sup>_′_</sup> , 



Taking the union bound with the inequality of Corollary 6.19 at _δ/_ 2, we obtain at probability 1 _− δ − δ_<sup>_′_</sup> , 



In the above derivation, the first inequality used Corollary 6.19. The second inequality used (6.1). The third inequality used (6.5). The last inequality used (6.6). This proves the first desired bound. The second desired bound employs Theorem 6.14. 

**Example 6.22.** If we use standard Rademacher complexity, then ∆ _nh_ ( _w_ ) = 0. Corollary 6.21 implies that the approximate ERM method (6.1) satisfies the following oracle inequality. With probability at least 1 _− δ_ : 



where _M_ = sup _w∈_ Ω sup _z,z′_ [ _φ_ ( _w, z_ ) _− φ_ ( _w, z_<sup>_′_</sup> )]. 

The Rademacher complexity analysis (together with McDiarmid’s inequality) is convenient to apply. Therefore we will focus on this analysis in later chapters. 

However, one drawback of the Rademacher complexity analysis is that it only leads to convergence rates of no better than _O_ (1 _/_<sup>_√_</sup> _<u>n</u>_ <u>).</u> In order to prove faster convergence rate, we will have to reply on more sophisticated analysis, referred to as _local Rademacher complexity analysis_ , which we will discuss in Section 6.5. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

~~f=~~ rir | ~~-~~~ yr | 

~~ce~~ 

CHAPTER 6. RADEMACHER COMPLEXITY 

98 

**Example 6.24.** Consider _φ_ ( _w, Z_ ) _∈_ [0 _,_ 1] and _|G|_ = _N_ . With probability 1 _− δ_ . We have the following uniform convergence results for all _w_ . If we use the union of Chernoff bound (covering number) method, then 



which implies that 



If we use the Rademacher complexity bound, then we can obtain from Corollary 6.19 (with Rademacher complexity estimate from Theorem 6.23) 



which leads to similar result. We may also obtain multiplicative bound using offset Rademacher complexity from Corollary 6.19 (with offset Rademacher complexity estimate from Theorem 6.23 with _h_ ( _w, Sn_ ) = _γφ_ ( _w, Sn_ )) as follows 



While the expected uniform convergence has _O_ (1 _/n_ ) rate, the concentration term has a slower rate of _O_ (1 _/_<sup>_√_</sup> _<u>n</u>_ <u>)</u> due to the use of McDiarmid’s concentration. This can be addressed using localized analysis in Section 6.5. 

The following result shows that Rademacher complexity can be estimated from the empirical _L_ 2 covering number using the chaining technique. The result is expressed in Dudley’s entropy integral. The constant can be improved using packing number (see Exercise 6.4). 

**Theorem 6.25.** _We have_ 



_Proof_ Let _B_ = sup _g∈G ∥g∥L_ 2( _Sn_ ), and let _ϵℓ_ = 2<sup>_−ℓ_</sup> _B_ for _ℓ_ = 0 _,_ 1 _, . . ._ . Let _Gℓ_ be an _ϵℓ_ -cover of _G_ with metric _L_ 2( _Sn_ ), and _Nℓ_ = _|Gℓ|_ = _N_ ( _ϵℓ, G, L_ 2( _Sn_ )). We may let _G_ 0 = _{_ 0 _}_ at scale _ϵ_ 0 = _B_ . 

For each _g ∈G_ , we consider _gℓ_ ( _g_ ) _∈Gℓ_ so that _∥g − gℓ_ ( _g_ ) _∥L_ 2( _Sn_ ) _≤ ϵℓ_ . The key idea in chaining is to rewrite _g ∈G_ using the following multi-scale decomposition: 



We also have 

_∥gℓ_ ( _g_ ) _− gℓ−_ 1( _g_ ) _∥L_ 2( _Sn_ ) _≤∥gℓ_ ( _g_ ) _− g∥L_ 2( _Sn_ ) + _∥gℓ−_ 1( _g_ ) _− g∥L_ 2( _Sn_ ) _≤_ 3 _ϵℓ._ (6.7) 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
> » y y<br>S° , /——______—<br>><br>an a<br>/ , {———______—<br>Jv Jv<br>a<br><!-- End of picture text -->

~~jv~~ (( ~~=)~~ 

» — 

| 

ee 



<!-- Start of picture text -->
Lo<br>j—<br>———<br>[-—<br>» —<br>———<br>[-—<br>» —<br>————<br>j—<br>» —<br>———<br>pe<br>pe<br><!-- End of picture text -->

CHAPTER 6. RADEMACHER COMPLEXITY 

102 



**Figure 6.1** Smoothed Classification Loss 

It follows that 



The following result is a direct consequence of Theorem 6.28 and Corollary 6.21. 

**Theorem 6.31.** _Consider real-valued function class F_ = _{f_ ( _w, ·_ ) : _w ∈_ Ω _}, and G_ = _{φ_ ( _w, z_ ) = _L_ ( _f_ ( _w, x_ ) _, y_ ) : _w ∈_ Ω _, z_ = ( _x, y_ ) _}. Assume that we have the decomposition in_ (6.3) _with h_ 1( _w, Sn_ ) = 0 _. Assume that_ 



_and L_ ( _f, y_ ) _is γ-Lipschitz in f :_ 



_Let Sn be n iid samples from D. With probability at least_ 1 _− δ, for all w ∈_ Ω _:_ 



_Moreover, for the approximate regularized ERM method_ (6.1) _with φ_ ( _w, z_ ) = _L_ ( _f_ ( _w, x_ ) _, y_ ) _, we have with probability at least_ 1 _− δ:_ 



We have the following example for the smoothed classification loss. 

**Example 6.32.** Consider the smoothed classification loss in Example 6.30 with 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

6.5. LOCAL RADEMACHER COMPLEXITY ANALYSIS 

103 

For the approximate regularized ERM method in (6.1), we have with probability at least 1 _− δ_ : 



## **6.5 Local Rademacher Complexity Analysis** 

The technique to prove McDiarmid’s inequality is called the _Martingale method_ , and it can derive concentration inequalities with convergence rates of _O_ (1 _/_<sup>_√_</sup> _<u>n</u>_ <u>).</u> As shown in Example 6.24, it is possible to obtain _O_ (1 _/n_ ) expected convergence result using offset Rademacher complexity. However, the rate with respect to concentration is still 1 _/_<sup>_√_</sup> _<u>n</u>_ <u>. In order to improve the analysis, we need to establish</u> concentration inequalities with faster convergence rate. It is possible to prove faster convergence rates with the Martingale method by deriving Bernstein style concentration inequalities. However, more refined forms of Bernstein style concentration inequalities are needed to analyze empirical processes, and those refined forms are referred to as _Talagrand’s concentration inequality_ (Talagrand, 1995, 1996b). We state the following version of Talagrand’s inequality by Bousquet (2002). 

**Theorem 6.33** (Bousquet, 2002) **.** _Consider iid random variables_ ( _Z_ 1 _, . . . , Zn_ ) _∼ D_<sup>_n_</sup> _. Let ζ be a real-valued function of_ ( _Z_ 1 _, . . . , Zn_ ) _. Moreover, for each k ∈_ [ _n_ ] _, let ζk be a real-valued function of_ ( _Z_ 1 _, . . . , Zk−_ 1 _, Zk_ +1 _, . . . , Zn_ ) _so that_ 



_Assume that for each k, there exists a function ζk_<sup>_′of_(</sup><sup>_Z_1</sup><sup>_, . . . , Zn_)</sup><sup>_suchthat_</sup> _ζk_<sup>_′≤ζ −ζk≤M,_</sup> E _Zkζk_<sup>_′≥_0</sup><sup>_,_</sup> _ζk_<sup>_′≤uM._</sup> 

_We have for all t ≥_ 0 _:_ 



Theorem 6.33 is a Bernstein style concentration inequality, which can be compared to the additive Chernoff style concentration inequality of Theorem 6.16. We can apply Theorem 6.33 to empirical processes, and obtain the following counterpart of Corollary 6.19. A similar (two-sided) uniform convergence result can be found in (Bousquet, 2002). 

**Corollary 6.34.** _Consider a real valued function class F_ = _{f_ ( _z_ ) : _Z →_ R _}. Let D be a distribution on Z. Assume that there exists M, σ >_ 0 _so that ∀f ∈F,_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

~~<u>—</u> j—— _——~~ [| 2 | an 

P| 0 

~~<u>oo</u> ve~~ ~~<u>OO</u>~~ 

6.5. LOCAL RADEMACHER COMPLEXITY ANALYSIS 

105 



<!-- Start of picture text -->
r =  r ′<br>ϵn ( F h ( r ′ /α )) , D )<br>r r ¯ n h ( α, F , D )<br>r ′<br><!-- End of picture text -->

**Figure 6.2** Rate function 

To illustrate its consequences, we introduce the following definition of rate function. In general, we expect the uniform convergence complexity _ϵn_ ( _F_<sup>_h_</sup> ( _r_<sup>_′_</sup> _/α_ ) _, D_ ) to grow sublinearly in _r_<sup>_′_</sup> (see examples later), which implies that the rate function _r_ ¯ is well-defined (see Figure 6.2). 

**Definition 6.35.** Given _D_ and _F_ , and consider a localization function _h_ : _F →_ R such that _b_ 0 = inf _f ∈F h_ ( _f_ ) _> −∞_ . Define localized function class _F_<sup>_h_</sup> ( _b_ ) = _{f ∈ F_ : _h_ ( _f_ ) _≤ b}_ for all _b > b_ 0. For any _α >_ 0, the rate function with respect to localization _h_ is as 



We note that the requirement of _r_<sup>_′_</sup> _> αb_ 0 in Definition 6.35 is only to make sure that _F_<sup>_h_�</sup> _r_<sup>_′_</sup> _/α_ � is always non-empty, and thus _ϵn_ ( _F h_ ( _r′/α_ ) _, D_ ) is well-defined. 

**Example 6.36.** In (Bartlett et al., 2005), the definition of the localization function is _h_ ( _f_ ) = E _Z∼D_ [ _f_ ( _Z_ )<sup>2</sup> ]. The localized function class _F_ ( _b, D_ ) is _{f ∈F_ : E[ _f_ ( _Z_ )<sup>2</sup> ] _≤ b}_ , with _b_ 0 _≥_ 0. 

In the analysis of ERM, it is natural to employ the same local function class as in (Bartlett et al., 2005), the more general definition given in Definition 6.35 simplifies some calculations of _r_ ¯ _n_ ( _α, F, D_ ) using the offset uniform convergence complexity, as shown in Proposition 6.40. This leads to a result similar to Example 6.10 which employs offset uniform convergence. 

Next we state the following simple property of rate function. 

**Proposition 6.37.** _The rate function in Definition 6.35 is always non-negative._ 

_Proof_ Note that _F_<sup>_h_</sup> ( _r_<sup>_′_</sup> _/α_ ) = _∅_ when _r_<sup>_′_</sup> _>_ max(0 _, αb_ 0). Since _ϵn_ ( _F_<sup>_h_</sup> ( _r_<sup>_′_</sup> _/α_ ) _, D_ ) is always non-negative, with _r_ = 0, we have _r ≤ ϵn_ ( _F_<sup>_h_</sup> ( _r_<sup>_′_</sup> _/α_ ) _, D_ ) when _r_<sup>_′_</sup> _>_ max( _r, αb_ 0). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 6. RADEMACHER COMPLEXITY 

106 

The usefulness of rate function _r_ ¯ in Definition 6.35 is based on the following result, which shows that _ϵn_ can be upper bounded by this quantity. 

**Proposition 6.38.** _For all α >_ 0 _and b >_ inf _f ∈F h_ ( _f_ ) _, we have_ 



ˆ ¯ _Proof_ Note that _F_<sup>_h_</sup> ( _b_ ) is non-empty. Let _r_ = _rn_<sup>_h_(</sup><sup>_α, F, D_). The definition implies</sup> that 



If _b ≤ r/α_ ˆ , then 

_ϵn_ ( _F_<sup>_h_</sup> ( _b_ ) _, D_ ) _≤ ϵn_ � _F h_ (ˆ _r/α_ ) _, D_ � _≤ r_ ˆ = _r_ ¯ _nh_<sup>(</sup><sup>_α, F, D_)</sup><sup>_._</sup> ˆ ¯ Otherwise, let _r_<sup>_′_</sup> = _αb > r_ = _rn_<sup>_h_(</sup><sup>_α, F, D_).Bythedefinitionof</sup><sup>_r_¯</sup> _n_<sup>_h_(</sup><sup>_α, F, D_),we</sup> have 



By combining the two situations, we obtain the desired bound. 

**Example 6.39.** Let _h_ ( _f_ ) = E _D_ [ _f_ ( _Z_ )<sup>2</sup> ] and assume that _b_ 0 = inf _f ∈F h_ ( _f_ ) = 0. If 



for some 0 _< q <_ 1, then we obtain 



As we will see, the convergence rate of ERM under variance condition is determined by ¯ _rn_<sup>_h_(</sup><sup>_α, F, D_), and this leads to a rate of convergence faster than</sup><sup>_O_(1</sup><sup>_/√_</sup> _<u>n</u>_ <u>).</u> 

The following result shows that under the variance condition, the rate function can be estimated from the uniform convergence complexity with a properly function. 

**Proposition 6.40.** _Let F_ = _{φ_ ( _w, Z_ ) : _w ∈_ Ω _}. Consider a localization function h_ ( _w_ ) _and the corresponding offset function h_<sup>_′_</sup> ( _w, Sn_ ) = 0 _._ 5 _αh_ ( _w_ ) _. Then_ 



_Proof_ Let _b_ 0 = inf _w∈_ Ω _h_ ( _w_ ). Consider any _r ≥_ 0 such that 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

6.5. LOCAL RADEMACHER COMPLEXITY ANALYSIS 

107 

For any _φ_ ( _w, ·_ ) _∈F_<sup>_h_</sup> ( _r_<sup>_′_</sup> _/α, D_ ), we know by the definition of localized function class that 



It follows that 



This means that for all _r_<sup>_′_</sup> _>_ max( _r, αb_ 0), the condition 



implies that 



Let _r_<sup>_′_</sup> _→_ max( _r, αb_ 0), we obtain either _r ≤ αb_ 0, or 



Therefore 



This implies the desired bound. 

By using the concept of rate function, we can obtain the following uniform convergence result from Corollary 6.34, where we assume that the localization function satisfies a variance condition similar to (3.13). 

**Theorem 6.41.** _Consider F, D, and iid samples Sn_ = _{Z_ 1 _, . . . , Zn} ∼D. Let f_ ( _D_ ) = E _Z∼D_ [ _f_ ( _Z_ )] _, and f_ ( _Sn_ ) = _n_<sup>_−_1 �</sup><sup>_n_</sup> _i_ =1<sup>_f_(</sup><sup>_Zi_)</sup><sup>_.Assumethatforallf∈F,_</sup> 



_for some c_ 0 _, c_ 1 _, h_ ( _·_ ) _≥_ 0 _. Assume also that F is bounded:_ sup _z′_ [ _f_ ( _D_ ) _− f_ ( _z_<sup>_′_</sup> )] _≤ M for all f ∈F. Then with probability at least_ 1 _− δ over Sn, ∀f ∈F and ∀α >_ 0 _:_ 



_where_ 



_with h_<sup>_′_</sup> ( _f, Sn_ ) = 0 _._ 5 _αh_ ( _f_ ) _._ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
/———__ ——<br>/———__ ——<br>—_— —<br>/—— ————<br>/— ———<br>——<br>/— ————<br>/—— ———_<br>(y= —)<br><!-- End of picture text -->

6.5. LOCAL RADEMACHER COMPLEXITY ANALYSIS 

109 

We thus obtain the desired bound. 

**Example 6.42.** In Theorem 6.41, we can take _h_ ( _f_ ) = 0, and we can take _c_ 1 _, α →_ 0 with _c_ 1 _/α →_ 0. Since _r_ ¯ _n_<sup>0(0</sup><sup>_, F, D_) =</sup><sup>_ϵn_(</sup><sup>_F, D_),weobtain</sup> 



If _c_ 0 is small, then this result improves Corollary 6.19 with _h_ = 0 since _M_ is replaced by a potentially smaller quantity _c_ 0 in the _O_ (1 _/_<sup>_√_</sup> _<u>n</u>_ <u>)</u> term. 

**Example 6.43.** In Theorem 6.41, assume that _f_ ( _Z_ ) _∈_ [0 _,_ 1]. Then we can take _h_ ( _f_ ) = _f_ ( _D_ ) so that the variance condition holds with _c_ 0 = 0 and _c_ 1 = 1. In such case, we may take _α_ as a constant. This implies the following bound: 



This leads to a _O_ (1 _/n_ ) concentration term. This result can be used to improve the concentration of the multiplicative bound in Example 6.24. We leave it as an exercise. 

While the Chernoff style bound of Corollary 6.19 only implies an oracle inequality for ERM with convergence rate no better than _O_ (1 _/_<sup>_√_</sup> _<u>n</u>_ <u>),</u> the Bennett style bound in Theorem 6.41 can lead to faster convergence rate. We state the following result, which is a direct consequence of Theorem 6.41. 

**Corollary 6.44.** _Let φ_ ( _w, z_ ) = _L_ ( _f_ ( _w, x_ ) _, y_ ) _− L∗_ ( _x, y_ ) _for an appropriately defined L∗_ ( _x, y_ ) _so that φ_ ( _w, D_ ) _≥_ 0 _. Assume_ sup _w_ sup _z,z′_ [ _φ_ ( _w, z_ ) _− φ_ ( _w, z_<sup>_′_</sup> )] _≤ M , and the variance condition_ (3.13) _holds. Consider h_ 0( _w_ ) _≥_ 0 _, and let h_ ( _w, Sn_ ) = 5 _αh_ 0( _w_ ) _. Then for δ such that_ ln(2 _/δ_ ) _≥_ 1 _, with probability at least_ 1 _− δ, for all α >_ 0 _, the approximate ERM method_ (6.1) _satisfies_ 



_where h_<sup>_′_</sup> ( _w_ ) = _h_ 0( _w_ ) + _φ_ ( _w, D_ ) _and G_ = _{φ_ ( _w, z_ ) : _w ∈_ Ω _}. Moreover, with probability at least_ 1 _− δ, we have_ 



_Proof_ For any _w ∈_ Ω, we know from Bennett’s inequality that with probability 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 6. RADEMACHER COMPLEXITY 

110 

1 _− δ/_ 2, 



The first inequality used the Bennett’s inequality for sum of independent random variables. The second inequality used the variance condition. The third inequality used _√a_ + _b ≤_<sup>_√_</sup> _<u>a</u>_ + _√b_ . The last inequality used _√_ 2 _ab ≤_ 0 _._ 5 _αa_ + _b/α_ . Moreover, from Theorem 6.41 with _h_ ( _φ_ ( _w, ·_ )) = _h_<sup>_′_</sup> ( _w_ ), we obtain with probability 1 _− δ/_ 2: 







The first inequality used Theorem 6.41. The second inequality used (6.1). By taking the union bound of the two inequalities, we obtain with the probability at least 1 _− δ_ : 



where we used ln(2 _/δ_ ) _≥_ 1 to simplify the result. By taking the inf over _w ∈_ Ω on the right hand side, we obtain the first bound. By using Proposition 6.40, we obtain 

5¯ _rn_<sup>_h′_(</sup><sup>_α, G, D_)</sup><sup>_≤_10</sup><sup>_ϵ_</sup> _n_<sup>0</sup><sup>_._5</sup><sup>_αh′_</sup> ( _G, D_ ) + 5 _α_ [ _φ_ ( _w, D_ ) + _h_ 0( _w_ )] _._ 

Substitute into the previous inequality, and take the inf over _w ∈_ Ωon the right hand side, we obtain the second bound. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

6.5. LOCAL RADEMACHER COMPLEXITY ANALYSIS 

111 

We have the following interpretation of Corollary 6.44. 

**Example 6.45.** In Corollary 6.44, we take _L∗_ ( _x, y_ ) = _L_ ( _f_ ( _w∗, x_ ) _, y_ ) for some _w∗ ∈_ Ω, and assume that the variance condition holds with _c_ 0 = 0. The rate of convergence is determined by _r_ ¯ _n_<sup>_h_(</sup><sup>_α, G, D_),where</sup><sup>_h_(</sup><sup>_w_) =</sup><sup>_φ_(</sup><sup>_w, D_)(i.e.,</sup><sup>_h_0(</sup><sup>_w_) = 0</sup> in Corollary 6.44) and a constant _α_ = 0 _._ 1. 





Since Example 3.18 implies that least squares regression satisfies the variance condition, this bound holds for least squares regression. 

The following result shows that the rate function can be obtained from a uniform upper bound of the Rademacher complexity. 

**Proposition 6.46.** _Consider function class G_ = _{φ_ ( _w, z_ ) : _w ∈_ Ω _} with h_ ( _w_ ) = _φ_ ( _w, D_ ) _and_ inf _w∈_ Ω _h_ ( _w_ ) = 0 _. Assume that |φ_ ( _·_ ) _| ≤ M and the variance condition_ (3.14) _holds with c_ 0 = 0 _. Assume that for any b >_ 0 _, we have_ 



_where rn_ ( _b_ ) _is a continuous concave function of b. Let α ≤_ 0 _._ 5 _c_ 1 _/M and_ 



_then r_ ¯ _n_<sup>_h_</sup> � _α, G, D_ � _≤_ 0 _._ 5 _αb_ 0 _/c_ 1 _._ 

_Proof_ Consider any _b_<sup>_′_</sup> 0<sup>_> b_0andlet</sup> 

_G_ 0 = _{φ_ ( _w, ·_ ) : _φ_ ( _w, D_ ) _≤_ 0 _._ 5 _b_<sup>_′_</sup> 0<sup>_/c_1</sup><sup>_} ,_</sup> 

and 



We have 



The first inequality used the definition of _rn_ and the definition of<sup>ˆ</sup> _b_ . The second inequality used Theorem 6.28 and _|φ_ ( _w_ 1 _, z_ )<sup>2</sup> _− φ_ ( _w_ 2 _, z_ )<sup>2</sup> _| ≤_ 2 _M |φ_ ( _w_ 1 _, z_ ) _− φ_ ( _w_ 2 _, z_ ) _|_ . Let<sup>˜</sup> _b_ = E _Sn_<sup>ˆ</sup> _b_ ( _Sn_ ), then we have 



The first inequality used sup _g∈G_ 0 E _Z∼Dg_ ( _Z_ )<sup>2</sup> _≤_ 0 _._ 5 _b_<sup>_′_</sup> 0<sup>,whichfollowsfromthe</sup> 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 6. RADEMACHER COMPLEXITY 

112 

variance condition. The second inequality used Theorem 6.4. The third inequality used (6.8). The last inequality used the concavity of _rn_ ( _·_ ) and 4 _M ≤_ 2 _c_ 1 _/α_ . From the above inequality, we have either<sup>˜</sup> _b < b_<sup>_′_</sup> 0<sup>,or˜</sup><sup>_b≤_(2</sup><sup>_c_1</sup><sup>_/α_)</sup><sup>_rn_(˜</sup><sup>_b_) + 0</sup><sup>_._5˜</sup><sup>_b_.</sup> The latter also implies that<sup>˜</sup> _b ≤ b_ 0 _< b_<sup>_′_</sup> 0<sup>byusingthedefinitionof</sup><sup>_b_0.Wethus</sup> obtain 

_ϵn_ ( _G_ 0) _≤_ 2E _Sn R_ ( _G_ 0 _, Sn_ ) _≤_ 2E _Sn rn_ (<sup>ˆ</sup> _b_ ( _Sn_ )) _≤_ 2 _rn_ (<sup>˜</sup> _b_ ) _<_ (0 _._ 5 _α/c_ 1) _b_<sup>_′_</sup> 0<sup>_._</sup> 

The first inequality used Theorem 6.4. The second inequality (6.8). The third inequality used the concavity of _rn_ ( _·_ ). The last inequality used<sup>˜</sup> _b < b_<sup>_′_</sup> 0<sup>,</sup><sup>_b′_</sup> 0<sup>_>b_0,</sup> and the definition of _b_ 0. 

Therefore if we let _r_ = 0 _._ 5( _α/c_ 1) _b_<sup>_′_</sup> 0<sup>,then</sup><sup>_ϵn_(</sup><sup>_Gh_(</sup><sup>_r/α_))=</sup><sup>_ϵn_(</sup><sup>_G_0)</sup><sup>_≤_2</sup><sup>_rn_(˜</sup><sup>_b_)</sup><sup>_<_</sup> _r_ , where<sup>˜</sup> _b_ 0 _<_ 2( _c_ 1 _/α_ ) _r_ . The condition that _rn_ ( _·_ ) is continuous implies that lim∆ _r→_ 0+ _ϵn_ ( _G_<sup>_h_</sup> (( _r_ + ∆ _r_ ) _/α_ )) _< r_ . The desired result follows from the definition of _r_ ¯ _n_<sup>_h_</sup> � _α, G, D_ �. 

In the following, we apply Proposition 6.46 to obtain the rate function estimate. In general, from Figure 6.2, we know that _b_ 0 can be obtain by solving 



For parametric models, we have the following result (see Section 5.2). 

**Example 6.47.** In Example 6.45, assume that 





For nonparametric models, we have the following result from Proposition 6.46. 

**Example 6.48.** In Example 6.45, assume that 



for some _p <_ 2. Then it can be shown from Theorem 6.25 that (we leave it to Exercise 6.9) _rn_ ( _b_ ) = _O_ (( _√b_ )<sup>1</sup><sup>_−_0</sup><sup>_._5</sup><sup>_p_</sup> _/_<sup>_√_</sup> _<u>n</u>_ <u>).</u> This implies that _r_ ¯ _n_<sup>_h_(</sup><sup>_α, G, D_) =</sup><sup>_O_(</sup><sup>_n−_1</sup><sup>_/_(1+</sup><sup>_p/_2))</sup><sup>_._</sup> 

In comparison, we may apply the uniform _L_ 1 entropy analysis with 



The multiplicative Chernoff bound in Corollary 4.13 has a suboptimal complexity of 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

6.6. HISTORICAL AND BIBLIOGRAPHICAL REMARKS 

113 

**Example 6.49.** Consider a function class _F_ and the ERM method for least squares regression: 



where _Zi_ = ( _Xi, Yi_ ) are iid samples from _D_ . Assume that _|f_ ( _X_ ) _− Y | ∈_ [0 _,_ 1] for all _X_ and _Y_ . Example 3.18 implies that the loss function _φ_ ( _f, Z_ ) = [( _f_ ( _X_ ) _− Y_ )<sup>2</sup> _−_ ( _f∗_ ( _X_ ) _− Y_ )<sup>2</sup> ] satisfies the variance condition if the true regression function _f∗ ∈F_ . Assume also that the empirical covering number of _F_ satisfies: 



for some constant _c >_ 0 and _p >_ 0. We consider the following two situations: _p ∈_ (0 _,_ 2) and _p ≥_ 2. Let _h_ ( _f_ ) = _φ_ ( _f, D_ ) with _h_ 0( _f_ ) = 0. 

- _p ∈_ (0 _,_ 2). The conditions of Corollary 6.44 hold with _c_ 0 = 0. This implies the following bound (see Exercises 6.9) on the rate function with constant _α_ : 



We thus have with probability at least 1 _− δ_ : 



- _p >_ 2. The entropy integral of Theorem 6.25 implies that 



˜ for some constant _c_ 1. We thus obtain a rate of convergence of 



for local Rademacher complexity. It can be shown that this is the same rate as what we can obtain from the standard non-localized Rademacher complexity (see Exercise 6.7). 

## **6.6 Historical and Bibliographical Remarks** 

The introduction of Rademacher complexity in machine learning was due to Koltchinskii (2001); Koltchinskii and Panchenko (2002); Bartlett and Mendelson (2002). The treatment presented here mainly follows that of Bartlett and Mendelson (2002), and the proof of Lemma 6.29 was presented in Meir and Zhang (2003), which generalizes a result of Ledoux and Talagrand (2013) to handle offset functions. We also employs a generalized version of Rademacher complexity which we refer to as offset Rademacher complexity. The notation of offset Rademacher complexity was considered by Liang et al. (2015). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 6. RADEMACHER COMPLEXITY 

114 

The concept of local Rademacher complexity was proposed in Bartlett et al. (2005). Our treatment follows their approach, which leads to the uniform convergence result presented in Corollary 6.34, and oracle inequality in Corollary 6.44. Similar results can be found in Bartlett et al. (2005), which also employed the notation of rate function, although the precise definition is different. 

The idea of concentration inequality can be dated back to the Efron-Stein inequality in (Efron and Stein, 1981; Steele, 1986), which can be stated as follows. 

**Proposition 6.50.** _Let f_ ( _X_ 1 _, . . . , Xn_ ) _be a function of n variables, and {Xi, Xi_<sup>_′}_</sup> _(_ 1 _≤ i ≤ n) be_ 2 _n iid random variables, then_ 



_where X_ = [ _X_ 1 _, . . . , Xn_ ] _, and X_<sup>(</sup><sup>_i_)</sup> = [ _X_ 1 _, . . . , Xi−_ 1 _, Xi_<sup>_′, Xi_+1</sup><sup>_, . . . , Xn_]</sup><sup>_._</sup> 

This inequality may be regarded as a generalization of Chebyshev’s inequality for the sum of iid random variables. Similarly, the McDiarmid’s inequality (McDiarmid, 1989) can be regarded as a generalization of the Chernoff bound. The generalization of Bernstein style inequality for empirical processes, needed for establishing convergence rate faster than _O_ (1 _/_<sup>_√_</sup> _<u>n</u>_ <u>) and</u> for the local Rademacher complexity analysis, is more complicated. Such an inequality was obtained first by Talagrand (1995, 1996b), and thus has been referred to as Talagrand’s inequality. Its variations and improvements have been obtained by various researchers (Ledoux, 1997; Massart, 2000; Boucheron et al., 2000, 2003; Bousquet, 2002; Boucheron et al., 2013). Talagrand’s inequality can also be used with matrix concentration techniques to obtain sharper tail bounds for the spectral norm of the sum of independent matrices (Tropp, 2015). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

Exercises 

115 

## **Exercises** 

- 6.1 Consider _G_ = _{φ_ ( _w, z_ ) : _w ∈_ Ω _}_ with _φ_ ( _w, z_ ) _∈_ [0 _,_ 1]. Given a dataset _Sn_ + _m_ , we consider random partitions of _Sn_ + _m_ into disjoint subsets _Sn ∪Sm_<sup>_′_</sup> . Define 

_R_ ( _G, Sn, Sm_<sup>_′_) =sup</sup> [ _φ_ ( _w, Sn_ + _m_ ) _− φ_ ( _w, Sn_ )] _. w∈_ Ω 

If _Sn_ + _m ∼D_<sup>_n_+</sup><sup>_m_</sup> , then find constant _cn,m_ so that _ϵn_ ( _G, D_ ) _≤ cn,m_ E _Sn∪Sm′ R_ ( _G, Sn, Sm_<sup>_′_</sup> ). 6.2 Given a dataset _Sn_ + _m_ , we consider random partitions of _Sn_ + _m_ into disjoint subsets _Sn ∪ Sm_<sup>_′_</sup> . Consider any function _f_ ( _Z_ ) _∈_ [ _a, b_ ]. Define 



- Show that the sub-Gaussian inequality holds: 



where the expectation is over random partitions. Hint: see (Hoeffding, 1963). 

- Derive a Chernoff bound 



where _ϵ >_ 0. Here the probability is with respect to all random partitions of _Sn_ + _m_ . 

- If _|G|_ = _N_ is finite, derive an upper bound of 



by using the proof technique of Theorem 6.23, where the expectation is with respect to the random partition. 

- 6.3 For general _G_ , with covering number _N_ ( _ϵ, G, L∞_ ( _Sn_ + _m_ )), estimate 



defined in the previous problem by using the chaining technique of Theorem 6.25. Here the expectation is with respect to the random partition. 

- 6.4 In Theorem 6.25, assume that 0 _∈G_ . If we replace covering number by packing number, then show that (6.7) can be improved to obtain 



- 6.5 Let _F_ = _{f_ ( _w, x_ ) : _w ∈_ Ω _}_ , where _x ∈X_ , and and each function _f_ ( _w, x_ ) takes binary values in _{±_ 1 _}_ . Consider _Sn_ = _{_ ( _X_ 1 _, Y_ 1) _, . . . ,_ ( _Xn, Yn_ ) _}_ , where _Xi ∈X_ and _Yi ∈{±_ 1 _}_ . Let _φ_ ( _w, X, Y_ ) = 1 ( _f_ ( _w, X_ ) = _Y_ ), and _G_ = _{φ_ ( _w, X, Y_ ) : _w ∈_ Ω _}_ Let _R_ ( _F , Sn_ ) be the Rademacher complexity of _F_ on _Sn_ , find _R_ ( _G, Sn_ ). 

- 6.6 Consider the least squares problem in Example 6.49. If _p_ = 2, derive an oracle inequality using local Rademacher complexity. 

- 6.7 Assume the empirical covering number of a function class _F_ satisfies (6.9) with _p ≥_ 2. Estimate the Rademacher complexity _R_ ( _F , Sn_ ). 

- 6.8 Assume that we have a VC-subgraph class with finite VC-dimension _d_ . The variance condition (3.13) holds. Use Theorem 6.41 and Theorem 6.23 to derive a multiplicative style uniform convergence result. Compare with Example 6.24. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 6. RADEMACHER COMPLEXITY 

116 

- 6.9 In Example 6.48, prove the bound for _r_ ¯ _n_<sup>_h_</sup> ( _α, G, D_ ) when _p <_ 2. Moreover assume that _p >_ 2; find a bound for _r_ ¯ _n_<sup>_h_</sup> ( _α, G, D_ ). 

- 6.10 Consider the variance condition (3.16) for some _β ∈_ (0 _,_ 1). Use the result of Example 3.19 to write this condition in the form of (3.14) with _β_ -dependent tuning parameters _c_ 0 and _c_ 1. Write an oracle inequality using Corollary 6.44. Consider the entropy number in Example 6.48, and compute the convergence rate in terms of _β_ by optimizing the tuning parameters _c_ 0 and _c_ 1. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

**7** 

