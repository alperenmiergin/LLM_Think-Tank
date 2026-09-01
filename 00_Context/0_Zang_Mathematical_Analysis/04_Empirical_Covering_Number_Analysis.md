**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Empirical Covering Number Analysis and Symmetrization** 

In the seminal paper of Vapnik and Chervonenkis (1971), a mathematical theory was developed to analyze the generalization performance of binary classification algorithms. It influenced the development of computational learning theory, including PAC learning described in Chapter 3. An essential component of the analysis is a bound on the empirical covering number of binary functions (which can be considered as a family of sets) using VC-dimension; another essential component is the uniform convergence analysis using empirical covering numbers. 

In Chapter 3, we have shown uniform convergence results can be established using lower-bracketing covers, which directly estimate the number of functions over the unknown test distribution. To analyze empirical covering numbers, we need to introduce an additional technique, leading to the analysis of _symmetrized_ empirical processes. The symmetrization method is also used in the analysis of Rademacher complexity, which is studied in Chapter 6. 

In this chapter, we will consider a version of the symmetrization argument for empirical covering numbers. The key idea is to consider a validation set of size _n_ , and analyze the empirical validation performance on the validation data, with model trained on the training data of size _n_ . The uniform convergence is with respect to the convergence of training loss to the validation loss under random assignments of pairs of data to training and validation sets. We show that the uniform convergence with respect to the validation data can be used to derive a generalization bound on the test distribution. We note that the method for partitioning a dataset randomly into training and validation subsets is also a technique heavily used in the empirical evaluation of machine learning algorithms. A typical scheme in practice employs random permutation. The permutation argument was also used in the original analysis of Vapnik and Chervonenkis (1971). We will not study the permutation technique, but rather employ the related symmetrization argument instead of permutation because it is also used in the Rademacher complexity analysis (see Chapter 6). 

## **4.1 Metric and Empirical Covering Numbers** 

We introduce metric covering numbers on a general pseudometrics space as follows. 

**Definition 4.1.** Let ( _V, d_ ) be a pseudometric space with metric _d_ ( _·, ·_ ). A finite 

52 

4.1. METRIC AND EMPIRICAL COVERING NUMBERS 

53 

set _G_ ( _ϵ_ ) _⊂V_ is an _ϵ_ cover (or _ϵ_ net) of _G ⊂V_ if, for all _φ ∈G_ , there exists _φ_<sup>_′_</sup> _∈G_ ( _ϵ_ ) so that _d_ ( _φ_<sup>_′_</sup> _, φ_ ) _≤ ϵ_ . The _ϵ_ -covering number of _G_ with metric _d_ is the smallest cardinality _N_ ( _ϵ, G, d_ ) of such _G_ ( _ϵ_ ). The number ln _N_ ( _ϵ, G, d_ ) is called the _ϵ_ -entropy. 

For a function class _G_ with seminorm _Lp_ ( _D_ ) in (3.19), we denote the corresponding _Lp_ ( _D_ )-covering number as _N_ ( _ϵ, G, Lp_ ( _D_ )). When 1 _≤ p ≤ q_ , we have 



It is easy to verify the following relationship, which implies that _Lp_ ( _D_ ) bracketing cover is a stronger requirement than _Lp_ ( _D_ ) cover. 

**Proposition 4.2.** _The following result holds:_ 



_Proof_ Let _{_ [ _φ_<sup>_L_</sup> 1<sup>(</sup><sup>_z_)</sup><sup>_, φU_</sup> 1<sup>(</sup><sup>_z_)]</sup><sup>_. . . ,_[</sup><sup>_φL_</sup> _N_<sup>(</sup><sup>_z_)</sup><sup>_, φU_</sup> _N_<sup>(</sup><sup>_z_)]</sup><sup>_}_bean2</sup><sup>_ϵLp_(</sup><sup>_D_)-bracketingcover</sup> of _G_ . Let _φj_ ( _z_ ) = ( _φ_<sup>_L_</sup> _j_<sup>(</sup><sup>_z_) +</sup><sup>_φU_</sup> _j_<sup>(</sup><sup>_z_))</sup><sup>_/_2,then</sup><sup>_{φ_1(</sup><sup>_z_)</sup><sup>_, . . . , φN_(</sup><sup>_z_)</sup><sup>_}_isan</sup><sup>_ϵLp_(</sup><sup>_D_)-cover</sup> of _G_ . 

The following result shows that with _p_ = _∞_ , the reverse of Proposition 4.2 holds. That is, the _L∞_ ( _D_ ) bracketing cover is equivalent to _L∞_ ( _D_ ) cover. This means that the analysis in Chapter 3, which employs lower bracketing number, can be applied to _L∞_ ( _D_ ) covering number as well. 

**Proposition 4.3.** _We have_ 



_Proof_ Let _{φj}_ be an _ϵ/_ 2 _L∞_ ( _D_ ) cover of _G_ . Let _φ_<sup>_L_</sup> _j_<sup>=</sup><sup>_φj−ϵ/_2and</sup><sup>_φU_</sup> _j_ = _φj_ + _ϵ/_ 2. Then [ _φ_<sup>_L_</sup> _j_<sup>_, φU_</sup> _j_<sup>]formsan</sup><sup>_ϵ_bracketingcover.Thereverseisalsotrueas</sup> in Proposition 4.2. 

The above result implies that _L∞_ ( _D_ ) covering number leads to an upper bound of _L_ 1( _D_ ) bracketing number. Consequently, one can obtain uniform convergence result using _L∞_ ( _D_ ) covering number as indicated by Theorem 3.14. However, one cannot directly obtain uniform convergence using _Lp_ ( _D_ ) covering number directly with _p < ∞_ . In order to do so, one needs to introduce the concept of empirical and uniform covering numbers. 

**Definition 4.4** (Empirical and Uniform Covering Number) **.** Given an empirical distribution _Sn_ = _{Z_ 1 _, . . . , Zn}_ , we define the pseudometric _d_ = _Lp_ ( _Sn_ ) as 



The corresponding metric covering number _N_ ( _ϵ, G, Lp_ ( _Sn_ )) is referred to as the 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 4. EMPIRICAL COVERING NUMBER ANALYSIS 

54 

empirical _Lp_ covering number. Given _n_ , the largest _Lp_ covering number over empirical distribution _Sn_ is referred to as the uniform _Lp_ covering number 



Since the _Lp_ ( _Sn_ ) pseudometric increases with _p_ , we have the following simple result. 

**Proposition 4.5.** _For_ 1 _≤ p ≤ q, we have_ 



_and_ 



We will later show that the uniform _L_ 1 covering number can be used to obtain uniform convergence and oracle inequalities. First, we show that it is easy to obtain an estimate of the empirical _L∞_ covering number for linear classifiers, which implies a bound on the uniform _L_ 1 covering number. 

**Example 4.6.** Consider _{_ 0 _,_ 1 _}_ valued linear classifiers in _d_ dimension of the form _f_ ( _w, x_ ) = 1 ( _w_<sup>_⊤_</sup> _x ≥_ 0), where _w ∈_ Ω= R<sup>_d_</sup> and _∈X_ = R<sup>_d_</sup> . Let _Y ∈{_ 0 _,_ 1 _}_ , then classification error is _φ_ ( _w, z_ ) = 1 ( _f_ ( _w, x_ ) = _y_ ), where _z_ = ( _x, y_ ). Note that it is difficult to obtain bracketing cover for such problems with arbitrary _D_ . However it is easy to obtain _L∞_ empirical covering number. A general bound of uniform _L∞_ covering numbers can be obtained using the concept of VC-dimension. One may also use convex optimization to obtain a bound for linear classifiers as 



with _ϵ_ = 0. See Exercise 4.4. 

## **4.2 Symmetrization** 

Using the notations in Chapter 3, we let _Z_ = ( _X, Y_ ). Consider the setting that we observe training data _Sn_ = _{Z_ 1 _, . . . , Zn}_ , drawn independently from _D_ , and a separate validation data _Sn_<sup>_′_=</sup><sup>_{Z_</sup> 1<sup>_′, . . . , Z_</sup> _n_<sup>_′}_,alsodrawnindependentlyfrom</sup><sup>_D_.</sup> Given a function _f_ ( _Z_ ), we may define the training loss and the validation loss as 



for each partition ( _Sn, Sn_<sup>_′_).Anaturalquestionishowtoboundthevalidation</sup> loss in terms of training loss. Note that such a validation result can be naturally converted into a generalization result with respect to the test distribution _D_ . 

In the symmetrization argument, we bound the validation loss using the uniform convergence of symmetrized empirical process, which is defined as follows. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

4.2. SYMMETRIZATION 

55 

Since the symmetrized empirical process only depends on the empirical data _Sn_ , it can be analyzed using covering numbers on the empirical data. 

**Definition 4.7.** Consider a real-valued function family _F_ : _Z →_ R. Consider _n_ iid Bernoulli random variables _σi ∈{±_ 1 _}_ , where Pr( _σi_ = 1) = Pr( _σi_ = _−_ 1) = 0 _._ 5. The symmetrized empirical process is 



where the randomness is with respect to both _Sn_ = _{Zi}_ and _σ_ = _{σi}_ . 

Note that in order to bound the symmetrized empirical process, we only need a covering number result on _Sn_ . Therefore the symmetrization analysis allows us to work with empirical covering numbers. Next we will show that a bound on the symmetrized empirical process can be used to obtain uniform convergence of the empirical process _{f_ ( _Sn_ ) : _f ∈F}_ to the corresponding result on the validation data. Since one can relate the validation loss of a learning algorithm to its generalization error on the test data, we can use this result to obtain generalization bounds. 

The following lemma shows that if we can obtain an upper bound on the symmetrized empirical process _{f_ ( _σ, Sn_ ) : _f ∈F}_ , and the upper bound satisfies a superadditive property, then we can obtain the uniform convergence of the empirical process _{f_ ( _Sn_ ) : _f ∈F}_ on the training data _Sn_ to the corresponding result on the validation data _Sn_<sup>_′_.</sup> 

**Lemma 4.8** (Symmetrization) **.** _Consider a real valued function family F_ = _{f_ : _Z →_ R _}. Assume there exists a function ψ_ : _F × Z_<sup>_n_</sup> _→_ R _and ϵn_ : (0 _,_ 1) _→_ R _so that with probability at least_ 1 _− δ:_ 



_where the randomness is over both Sn ∼D_<sup>_n_</sup> _and σ. If there exists ψ_<sup>�</sup> ( _f, Sn ∪Sn_<sup>_′_)</sup> _so that the following superadditive inequality holds for all_ ( _Sn, Sn_<sup>_′_)</sup> 



_then with probability at least_ 1 _− δ over independent random data_ ( _Sn, Sn_<sup>_′_)</sup><sup>_∼D_2</sup><sup>_n:_</sup> 



_Proof_ Consider independent random samples ( _Sn, Sn_<sup>_′_)</sup><sup>_∼D_2</sup><sup>_n_.Thedistribution</sup> of _f_ ( _Sn_ ) _− f_ ( _Sn_<sup>_′_) is the same as that of</sup><sup>_f_(</sup><sup>_σ, Sn_)</sup><sup>_−f_(</sup><sup>_σ, S_</sup> _n_<sup>_′_), and the latter contains</sup> additional randomness from Bernoulli random variables _σ_ , drawn independently 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 4. EMPIRICAL COVERING NUMBER ANALYSIS 

56 

of ( _Sn, Sn_<sup>_′_),asinDefinition4.7.Itfollowsthat</sup> 



=2 Pr ( _∃f ∈F, f_ ( _σ, Sn_ ) _> ψ_ ( _f, Sn_ ) + _ϵn_ ( _δ/_ 2)) _≤_ 2( _δ/_ 2) _._ 

In the above derivation, the first equation used the fact that _f_ ( _Sn_ ) _− f_ ( _Sn_<sup>_′_)and</sup> _f_ ( _σ, Sn_ ) _− f_ ( _σ, Sn_<sup>_′_) have the same distributions. (</sup><sup>_a_) used the assumption</sup><sup>_ψ_(</sup><sup>_Sn_)+</sup> _ψ_ ( _Sn_<sup>_′_)</sup><sup>_≤ψ_�(</sup><sup>_Sn∪S_</sup> _n_<sup>_′_).(</sup><sup>_b_)usedtheunionbound,andthefactthatifevent</sup><sup>_E_0</sup> holds, then either event _E_ 1 holds or event _E_ 2 holds. The next equation used the symmetry of _−f_ ( _σ, Sn_ ) and _f_ ( _σ, Sn_ ), and the last inequality used the assumption of the lemma. The result implies the desired bound. Lemma 4.8 shows that symmetrized empirical process can be used to obtain a uniform convergence result of a properly defined training statistics (e.g. training loss) to validation statistics (e.g. validation loss). The following example illustrates the consequences. 

**Example 4.9.** We may take _ψ_ = _ψ_<sup>�</sup> = 0 in Lemma 4.8. Assume we have the following bound for the symmetrized empirical process: 



then with probability at least 1 _− δ_ : 



**Example 4.10.** In Lemma 4.8, we may also take _γ ∈_ (0 _,_ 1). Let 



Assume that we have the following bound for the symmetrized empirical process: with probability at least 1 _− δ_ , 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

4.2. SYMMETRIZATION 

57 

then we obtain with probability at least 1 _− δ_ : 



The following result can be used with Lemma 4.8 to obtain the uniform convergence of training statistics to the test statistics (e.g. test loss). The resulting bound can then be used with Lemma 3.11 to obtain oracle inequalities for empirical risk minimization. 

**Lemma 4.11.** _Let ψ_ trn : _F × Z_<sup>_n_</sup> _→_ R _, ψ_ val : _F × Z_<sup>_n_</sup> _→_ R _, ψ_ tst : _F × D →_ R _be appropriately training (where D denotes probability distributions on Z), validation, and test statistics. Assume that for any δ_ 1 _∈_ (0 _,_ 1) _, the following uniform convergence result holds. With probability at least_ 1 _− δ_ 1 _over randomly drawn training and validation sets_ ( _Sn, Sn_<sup>_′_)</sup><sup>_∼D_2</sup><sup>_n:_</sup> 



_Moreover, assume ∀f ∈F, we have with probability_ 1 _− δ_ 2 _over randomly drawn Sn_<sup>_′∼D:_</sup> 



_Then the following uniform convergence statement holds. With probability at least_ 1 _− δ_ 1 _− δ_ 2 _,_ 



_Proof_ Let _Q_ ( _f, Sn_ ) = _ψ_ tst( _f, D_ ) _−ψ_ trn( _f, Sn_ ) _−_ ( _ϵ_<sup>1</sup> _n_<sup>(</sup><sup>_δ_1)+</sup><sup>_ϵ_2</sup> _n_<sup>(</sup><sup>_δ_2)), and let</sup><sup>_E_be the</sup> event that sup _f ∈F Q_ ( _f, Sn_ ) _≤_ 0. We pick _f_<sup>ˆ</sup> ( _Sn_ ) _∈F_ so that if _E_ holds, then we choose an arbitrary _Q_ ( _f_<sup>ˆ</sup> ( _Sn_ ) _, Sn_ ) _≤_ 0, and if _E_ does not hold, we choose _f_<sup>ˆ</sup> ( _Sn_ ) so that _Q_ ( _f_<sup>ˆ</sup> ( _Sn_ ) _, Sn_ ) _>_ 0. We consider sample ( _Sn, Sn_<sup>_′_)</sup><sup>_∼D_2</sup><sup>_n_.Forsimplicity,inthe</sup> following, we let _f_<sup>ˆ</sup> = _f_<sup>ˆ</sup> ( _Sn_ ). The uniform convergence condition of the theorem implies that with probability at least 1 _− δ_ 1, the following event holds: 



Note that the validation data _Sn_<sup>_′_is independent of the training data</sup><sup>_Sn_. Therefore</sup> _Sn_<sup>_′_isalsoindependentof</sup><sup>_f_ˆ.Thereforetheconditionofthetheoremimpliesthat</sup> with probability at least 1 _− δ_ 2, the following event holds: 



If both events _E_ 1 and _E_ 2 hold, then 



The definition of _f_<sup>ˆ</sup> implies that _E_ holds. Therefore Pr( _E_ ) _≥_ Pr( _E_ 1& _E_ 2) _≥_ 1 _− δ_ 1 _− δ_ 2. This implies the desired bound. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 4. EMPIRICAL COVERING NUMBER ANALYSIS 

58 

In the literature, one can also obtain a different bound by considering the Independence relationship between _f_<sup>ˆ</sup> and _E_ 2. We leave the derivation as an exercise. 

## **4.3 Uniform Convergence with Uniform** _L_ 1 **Covering Number** 

Using the same notations of Chapter 3, we consider a function class 



with _φ_ ( _w, Sn_ ) and _φ_ ( _w, D_ ) defined in (3.5) and (3.6). We can obtain the following uniform convergence bounds, which are analogous to the results of Theorem 3.14. Here we simply replace _L_ 1( _D_ ) lower bracketing number by the _L_ 1 uniform covering number. It is also possible to relax the requirement of uniform covering number by assuming the bound holds with large probability. We do not consider such analysis for simplicity. 

**Theorem 4.12.** _Assume that φ_ ( _w, z_ ) _∈_ [0 _,_ 1] _for all w and z. Then given δ ∈_ (0 _,_ 1) _, with probability at least_ 1 _− δ, the following inequality holds:_ 



_where_ 



_Moreover, for any γ ∈_ (0 _,_ 1) _, with probability at least_ 1 _−δ, the following inequality holds:_ 



_where_ 



_Proof_ Let _F_ = _{f_ ( _z_ ) = _φ_ ( _w, z_ ) _−_ 0 _._ 5 : _w ∈_ Ω _}_ . Given _Sn_ , we consider an _ϵ_ - _L_ 1( _Sn_ ) cover _Fϵ_ ( _Sn_ ) of _F_ , of size no more _N_ = _N_ 1( _ϵ, G, n_ ). We may assume that _f_ ( _Zi_ ) _∈_ [ _−_ 0 _._ 5 _,_ 0 _._ 5] for _f ∈Fϵ_ ( _Sn_ ). From Corollary 2.27 (with _ai_ = 0 _._ 5) and the union bound, we obtain the following uniform convergence result over _Fϵ_ ( _Sn_ ). With probability 1 _− δ_ : 



Since for all _f ∈F_ , we can find _f_<sup>_′_</sup> _∈Fϵ_ ( _Sn_ ) so that _n_<sup>_−_1 �</sup> _Z∈Sn_<sup>_|f_(</sup><sup>_Z_)</sup><sup>_−f ′_(</sup><sup>_Z_)</sup><sup>_| ≤ϵ_</sup> for all _Z ∈Sn_ . It follows that 



Using Lemma 4.8 with _ψ_ = 0, this uniform convergence result for the symmetrized 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

4.3. UNIFORM _L_ 1 COVERING NUMBER ANALYSIS 

59 

empirical process implies the following uniform convergence result. With probability at least 1 _− δ_ 1 over ( _Sn, Sn_<sup>_′_)</sup><sup>_∼D_2</sup><sup>_n_:</sup> 



The standard additive Chernoff bound implies that for all _w ∈_ Ω, with probability at least 1 _− δ_ 2: 



Therefore in Lemma 4.11, we can take symbols as defined above, together with _δ_ 1 = 2 _δ/_ 3 and _δ_ 2 = _δ/_ 3 to obtain the desired bound. 

Similarly, we consider _F_ = _{f_ ( _z_ ) = _φ_ ( _w, z_ ) : _w ∈_ Ω _}_ . Given _Sn_ , we consider an _ϵ_ - _L_ 1( _Sn_ ) cover _Fϵ_ ( _Sn_ ) of _F_ , of size no more _N_ = _N_ 1( _ϵ, G, n_ ). We assume that _f_ ( _Zi_ ) _∈_ [0 _,_ 1] for all _f ∈Fϵ_ ( _Sn_ ). From Corollary 2.27 and the union bound, we obtain the following uniform convergence result over _Fϵ_ ( _Sn_ ). With probability at least 1 _− δ_ : 



The first inequality used Corollary 2.27. The second inequality used _√_ 2 _ab ≤ γ_<sup>_′_</sup> _a_ + _b/_ (2 _γ_<sup>_′_</sup> ) and _f_ ( _Z_ )<sup>2</sup> _≤ f_ ( _Z_ ). Since for all _f ∈F_ , we can find _f_<sup>_′_</sup> _∈Fϵ_ ( _Sn_ ) so that _n_<sup><u>1</u></sup> � _Z∈Sn_<sup>_|f_(</sup><sup>_Z_)</sup><sup>_−f ′_(</sup><sup>_Z_)</sup><sup>_| ≤ϵ_.Itfollowsthat</sup> 



Now, with _ψ_ ( _f, Sn_ ) = _ψ_<sup>�</sup> ( _f, Sn_ ) = _γ_<sup>_′_</sup> _n_<sup><u>1</u></sup> � _Z∈Sn_<sup>_f_(</sup><sup>_Z_),weobtainfromLemma4.8</sup> the following uniform convergence result. With probability at least 1 _− δ_ 1 over ( _Sn, Sn_<sup>_′_)</sup><sup>_∼D_2</sup><sup>_n_:</sup> 



Let _γ_<sup>_′_</sup> = _γ/_ (2 _−γ_ ), then it is easy to check algebraically that (1 _−γ_<sup>_′_</sup> ) _/_ (1+ _γ_<sup>_′_</sup> ) = 1 _−γ_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 4. EMPIRICAL COVERING NUMBER ANALYSIS 

60 

and 1 _/_ ( _γ_<sup>_′_</sup> (1 + _γ_<sup>_′_</sup> )) = (2 _− γ_ )<sup>2</sup> _/_ (2 _γ_ ). We thus obtain: 



The standard multiplicative Chernoff bound in (2.11) implies that with probability 1 _− δ_ 2: 



Therefore in Lemma 4.11, we can use symbols as displayed above, together with _δ_ 1 = 2 _δ/_ 3 and _δ_ 2 = _δ/_ 3 to obtain the desired bound. 

Using Lemma 3.11, the following oracle inequalities can be obtained from Theorem 4.12. The result is analogous to Corollary 3.15, with a similar proof. We will thus leave the proof as an exercise. 

**Corollary 4.13.** _If φ_ ( _w, z_ ) _∈_ [0 _,_ 1] _. Let G_ = _{φ_ ( _w, z_ ) : _w ∈_ Ω _}. With probability at least_ 1 _− δ, the approximate ERM method_ (3.3) _satisfies the (additive) oracle inequality:_ 



_Moreover, we have the following (multiplicative) oracle inequality for all γ ∈_ (0 _,_ 1) _: with probability at least_ 1 _− δ,_ 



**Example 4.14.** Consider the linear classifier example in Example 4.6. Since ln _N∞_ ( _ϵ, G, n_ ) _≤ d_ ln(2 _n_ ), it follows that for the ERM method, we have the following oracle inequalities. With probability at least 1 _− δ_ : 



Moreover, by optimizing the multiplicative bound over _γ_ from the set _γ ∈{i/n_ : _i ∈_ [ _n_ ] _}_ , and take a union bound, we can obtain the following inequality. With 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

4.4. VAPNIK-CHERVONENKIS DIMENSION 

61 

probability at least 1 _− δ_ : 



where _C_ is an absolute constant and 



## **4.4 Vapnik-Chervonenkis Dimension** 

Let _G_ = _{φ_ ( _w, z_ ) : _w ∈_ Ω _}_ be a _{_ 0 _,_ 1 _}_ valued binary function class of _z ∈Z_ indexed by _w ∈_ Ω. Given an arbitrary set of _n_ samples _Sn_ = _{Z_ 1 _, . . . , Zn} ∈Z_<sup>_n_</sup> , we are interested in the number of functions (uniform _L∞_ cover of the function class at _ϵ_ = 0) that _G_ ( _Sn_ ) = _{_ [ _φ_ ( _w, Z_ 1) _, . . . , φ_ ( _w, Zn_ )] : _w ∈_ Ω _}_ can achieve. We introduce the following definition of Vapnik and Chervonenkis (1971). 

**Definition 4.15** (VC-dimension) **.** We say that _G_ shatters _Sn_ if the number of elements _|G_ ( _Sn_ ) _|_ is 2<sup>_n_</sup> . That is, we can always find _w ∈_ Ωso that _φ_ ( _w, z_ ) matches any arbitrary possible choice of _{_ 0 _,_ 1 _}_<sup>_n_</sup> values at the _n_ points. The maximum _n_ such that _G_ shatters at least one instance of _Sn ∈Z_<sup>_n_</sup> , denoted by vc( _G_ ), is called the VC-dimension of _G_ . 

Note that the maximum number of functions in _G_ ( _Sn_ ) is 2<sup>_n_</sup> . If _n > d_ , then for any _n_ samples _Sn_ , _G_ ( _Sn_ ) contains fewer than 2<sup>_n_</sup> elements. Surprisingly, if a binary-valued function class _G_ has VC dimension _d_ , then when _n > d_ , the size of set _G_ ( _Sn_ ) can grow only polynomially in _n_ . This gives an _O_ ( _d_ ln _n_ ) upper bound on the uniform entropy of the function class _G_ with a finite VC-dimension (see Vapnik and Chervonenkis, 1968, 1971; Sauer, 1972). 

**Lemma 4.16** (Sauer’s Lemma) **.** _If_ vc( _G_ ) = _d, then we have for all n >_ 0 _and empirical samples Sn_ = _{Z_ 1 _, . . . , Zn} ∈Z_<sup>_n_</sup> _:_ 



_Proof_ First, we prove the statement under the assumption that _|G_ ( _Sn_ ) _|_ is upper bounded by the number of subsets of _Sn_ (including the empty set) that are shattered by _G_ . Under this assumption, since any subset shattered by _G_ cannot be larger than _d_ by the definition of VC-dimension, and the number of subsets of size _ℓ_ is � _nℓ_ �, we know that the number of subsets shattered by _G_ cannot be more than<sup>�</sup><sup>_d_</sup> _ℓ_ =1 � _nℓ_ �. When _n ≥ d_ , we have (see Exercise 4.1) 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 4. EMPIRICAL COVERING NUMBER ANALYSIS 

62 

When _n ≤ d_ , we have<sup>�</sup><sup>_d_</sup> _ℓ_ =0 � _nℓ_ � _≤_ 2 _d_ . This implies the desired result. In the following, we only need to prove the statement that _|G_ ( _Sn_ ) _|_ is upper bounded by the number of subsets of _Sn_ that are shattered by _G_ . This can be proved by induction on _n_ . When _n_ = 1, one can check that the claim holds trivially. 

Now assume that the claim holds for all empirical samples of size no more than _n −_ 1. Consider _n_ samples _{Z_ 1 _, . . . , Zn}_ . We define 





Using the induction hypothesis, we know that _|Gn−_ 1( _Sn_ ) _|_ is bounded by the number of shattered subset _S ⊂Sn−_ 1; for each shattered _S ⊂Sn−_ 1, _S ∪{Zn}_ is shattered by _G_ ( _Sn_ ) because both [ _φ_ ( _w, Sn−_ 1) _,_ 1] and [ _φ_ ( _w, Sn−_ 1) _,_ 0] belong to _G_ ( _Sn_ ). Therefore _|Gn−_ 1( _Sn_ ) _|_ is no more than the number of shattered subsets of _Sn_ that contains _Zn_ . 

Moreover, since for _φ_ ( _w, ·_ ) _∈G_ ( _Sn_ ) _−Gn−_ 1( _Sn_ ), _φ_ ( _w, Zn_ ) is uniquely determined by its values at _Sn−_ 1 (if not, then both [ _φ_ ( _w, Sn−_ 1) _,_ 0] and [ _φ_ ( _w, Sn−_ 1) _,_ 1] can be achieved in _G_ ( _Sn_ ) _−Gn−_ 1( _Sn_ ), which is impossible because by definition, we should have put [ _φ_ ( _w, Sn−_ 1) _,_ 1] in _Gn−_ 1( _Sn_ )), it follows that _|G_ ( _Sn_ ) _−Gn−_ 1( _Sn_ ) _|_ is no more than _|G_ ( _Sn−_ 1) _|_ . By induction hypothesis, _|G_ ( _Sn−_ 1) _|_ is no more than the number of shattered subsets of _Sn_ that does not contain _Zn_ . By combining the above two facts, _|G_ ( _Sn_ ) _|_ is no more than the number of shattered subsets of _Sn_ . 

Sauer’s lemma implies the following oracle inequalities for problems with finite VC dimensions. It is a direct consequence of Corollary 4.13. 

**Theorem 4.17.** _Assume L_ ( _·, ·_ ) _∈{_ 0 _,_ 1 _} is a binary valued loss function. Let G_ = _{L_ ( _f_ ( _w, x_ ) _, y_ ) : _w ∈_ Ω _}, with a finite VC-dimension_ vc( _G_ ) = _d. Given n ≥ d, and consider the approximate ERM method_ (3.3) _, with probability at least_ 1 _− δ:_ 



_Moreover, for all γ ∈_ (0 _,_ 1) _, with probability at least_ 1 _− δ, the following inequality holds_ 



**Proposition 4.18.** _Consider d-dimensional {_ 0 _,_ 1 _} valued linear classifiers of the form F_ = _{fw_ ( _x_ ) = 1 ( _w_<sup>_⊤_</sup> _x ≥_ 0) _, w ∈_ R<sup>_d_</sup> _}, we have_ vc( _F_ ) = _d. This implies that d-dimensional linear classifier G_ = _{_ 1 ( _fw_ ( _X_ ) = _Y_ ) _, w ∈_ R<sup>_d_</sup> _} has VC dimension_ vc( _G_ ) = _d._ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

4.5. UNIFORM _L_ 2 COVERING NUMBER ANALYSIS 

63 

_Proof_ Since it is easy to find _n_ = _d_ points shattered by _F_ , we only need to show that any _n_ = _d_ + 1 points cannot be shattered by linear functions. 

Let the _d_ + 1 points be _x_ 1 _, . . . , xd_ +1. Then we know that they are linearly dependent. Therefore there exists _d_ + 1 real valued coefficients _a_ 1 _, . . . , ad_ +1 that are not all zeros, such that _a_ 1 _x_ 1 + _· · ·_ + _ad_ +1 _xd_ +1 = 0 and we can assume that there exists at least one _aj_ such that _aj >_ 0. 

In order to show that _x_ 1 _, . . . , xd_ +1 cannot be shattered by _n_ points, we only need to show that there is no _w ∈_ R<sup>_d_</sup> such that 



which implies that a particular set of function value on these points cannot be achieved. We prove this by contradiction. Assume the above function values can be achieved, then _aiw_<sup>_⊤_</sup> _xi ≤_ 0 for all _i_ . Since there is at least one _aj >_ 0, we know that for this _j_ , _ajw_<sup>_⊤_</sup> _xj <_ 0. Therefore 



However, this is a contradiction to the fact that _a_ 1 _x_ 1 + _· · ·_ + _ad_ +1 _xd_ +1 = 0. 

Note that results of Theorem 4.17 holds uniformly for all distributions _D_ . Therefore concept classes with finite VC dimensions are PAC learnable by ERM if we assume that it is computationally efficient to solve ERM. On the other hand, if the VC dimension of a concept class is infinity, then for any sample size _n_ , there exists a distribution _D_ with _n_ samples, so that the concept class can achieve all possible binary values of 2<sup>_n_</sup> on _D_ . Therefore on such a distribution, the learning of this concept class cannot be better than random guessing on some training distributions. The following is an example of infinite VC dimension. 

**Example 4.19.** The binary-valued function class _G_ = _{_ 1 (cos( _wz_ ) _≥_ 0) : _w, z ∈_ R _}_ has infinite VC-dimension. 

Given any _d_ , we consider _{zj_ = 16<sup>_−j_</sup> _π_ : _j_ = 1 _, . . . , d}_ . Let _w_ =<sup>�</sup><sup>_d_</sup> _j_ =1<sup>(1</sup><sup>_−bj_)16</sup><sup>_j_,</sup> with _bj ∈{_ 0 _,_ 1 _}_ . It is easy to verify that 1 (cos( _w zj_ ) _≥_ 0) = _bj_ . It follows that the set can be shattered by _G_ . 

## **4.5 Uniform Convergence with Uniform** _L_ 2 **Covering Number** 

In order to apply Lemma 4.8, we need to estimate the uniform convergence of a symmetrized empirical process. We have shown in Section 4.3 such a bound can be obtained using the empirical _L_ 1 covering number. In the following, we show that with empirical _L_ 2 covering number, one can obtain a more refined result by using an important technique called _chaining_ . The improvement is obtained by considering multiple approximation scales instead of a single scale used in Section 4.3 (also in Chapter 3). The resulting formula is often expressed in the so-called entropy integral form, due to Dudley (1984). 

While it is possible to work with empirical _L_ 2 covering numbers directly, it 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 4. EMPIRICAL COVERING NUMBER ANALYSIS 

64 

is more convenient to apply Rademacher complexity and concentration inequalities, as in Chapter 6. We will thus leave the analysis to Chapter 6, but list its consequence here for comparison with the _L_ 1 covering number analysis presented earlier. 

The following result is a direct consequence of the uniform convergence result of Corollary 6.19, oracle inequality of Corollary 6.21, with Rademacher complexity estimated from the _L_ 2 empirical covering number in Theorem 6.25. 

**Proposition 4.20.** _Given a function class G ∈_ [0 _,_ 1] _. Let_ 



_then with probability at least_ 1 _− δ: for all w ∈_ Ω _,_ 



_This implies that for the approximate ERM method_ (3.3) _, we have with probability at least_ 1 _− δ:_ 



In Proposition 4.20, the average integral of _L_ 2 entropy replaces the worst case _L_ 1 entropy of Theorem 4.12. If the uniform _L_ 2 entropy of _G_ is of the form 



as in the case of VC dimension (see Theorem 5.6), then the complexity term 



which removes an ln _n_ factor from the uniform _L_ 1 entropy analysis in Section 4.3. Moreover, if uniform _L_ 2 entropy of _G_ is of the form 



for some _q <_ 2, then the complexity term 



Function classes with uniform _L_ 2 entropy that satisfies (4.3) are Donsker classes for which the central limit theorem holds. 

In comparison, if we consider the uniform _L_ 1-covering number analysis of Theorem 4.12, and assume that 



then the complexity term in the additive Chernoff bound is 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

4.6. UNIFORM _L∞_ COVERING NUMBER ANALYSIS 

65 

which implies a convergence rate slower than 1 _/_<sup>_√_</sup> _<u>n</u>_ <u>.</u> 

It is also possible to obtain fast convergence rate under the variance condition. We will leave such derivation to Section 6.5. 

## **4.6 Uniform Convergence with Uniform** _L∞_ **Covering Number** 

The _L∞_ covering number analysis has been used to study large margin methods where the training loss and the test loss differ. Consider a function class _F_ = _{f_ ( _w, x_ ) : _w ∈_ Ω _}_ , and a test loss _L_ ( _f_ ( _x_ ) _, y_ ). However, instead of minimizing the test loss directly, we try to minimize a surrogate training loss 



where we assume that the surrogate is an upper bound of training loss under small _L∞_ perturbation of size _γ >_ 0: 



In this case, one would like to bound the test loss using surrogate training loss. An example for binary classification problem ( _y ∈{±}_ ) is to take the test loss as the binary classification error _L_ ( _f_ ( _x_ ) _, y_ ) _≤_ 1 ( _f_ ( _x_ ) _y ≤_ 0), and _L_<sup>˜</sup> ( _f_ ( _x_ ) _, y_ ) = 1 ( _f_ ( _x_ ) _y ≤ γ_ ) as the margin error with margin _γ >_ 0. 

The _L∞_ -covering number can be used to obtain a result similar to Theorem 4.12, with a similar proof. 

**Theorem 4.21.** _Assume that L_<sup>˜</sup> ( _f_ ( _w, x_ ) _, y_ ) _, L_ ( _f_ ( _w, x_ ) _, y_ ) _∈_ [0 _,_ 1] _for all w and_ ( _x, y_ ) _, and both_ (4.4) _and_ (4.5) _hold. Then given δ ∈_ (0 _,_ 1) _, with probability at least_ 1 _− δ, the following inequality holds for all w ∈_ Ω _:_ 



_Moreover, with probability at least_ 1 _− δ, the following inequality holds for all w ∈_ Ω _:_ 



_Proof_ Given _Sn_ = _{_ ( _X_ 1 _, Y_ 1) _, . . . ,_ ( _Xn, Yn_ ) _}_ and _Sn_<sup>_′_=</sup><sup>_{_(</sup><sup>_X_1</sup><sup>_, Y_1)</sup><sup>_, . . . ,_(</sup><sup>_Xn, Yn_)</sup><sup>_}_,</sup> 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
> —<br>- Y - Y<br>> —<br>ee<br><!-- End of picture text -->



<!-- Start of picture text -->
> pa<br>> ee<br>—><br>> ee<br>—> —><br>> ee<br>> ee<br>> > a<br>oo —><br><!-- End of picture text -->

CHAPTER 4. EMPIRICAL COVERING NUMBER ANALYSIS 

68 

Therefore in Lemma 4.11, we can use symbols as displayed above, together with _δ_ 1 = 2 _δ/_ 3 and _δ_ 2 = _δ/_ 3 to obtain the desired bound. 

Similar to Corollary 4.13, one may also obtain an oracle inequality from Theorem 4.21, which we will not state here. 

**Example 4.22.** Consider binary classification with classifier _f_ ( _w, X_ ) _∈_ R and _Y ∈{±_ 1 _}_ . The classification loss is 



and the margin loss for _γ >_ 0 is 



Theorem 4.21 implies that 



Therefore if the function class has a finite _L∞_ norm at scale _γ/_ 2, then minimizing the margin loss leads to approximate minimization of training loss. Unlike VCdimension, the _L∞_ cover can be small even for infinite-dimensional systems with proper regularization. For example, if we consider regularized linear function class with 



and assume that _∥ψ_ ( _x_ ) _∥_ 2 _≤ B_ , then Theorem 5.20 implies that 



which is independent of the dimension of _w_ . In comparison, the VC dimension depends on the dimensionality of _w_ even with regularization. This implies that for high dimensional problems, maximizing margin leads to more stable generalization performance. 

## **4.7 Historical and Bibliographical Remarks** 

In (Vapnik and Chervonenkis, 1968, 1971), Vapnik and Chervonenkis developed a theory to use the uniform entropy to analyze empirical processes and the generalization performance of empirical risk minimization. This style of analysis is covered in Section 4.3, and often referred to as the VC theory. The original analysis of Vapnik and Chervonenkis (1968) used a random permutation argument instead of the symmetrization argument employed here. We leave it as an exercise in Exercise 4.7. The symmetrization argument for the additive version of the Chernoff bound was used by Pollard (1984). However, the treatment here is modified so that it can handle more general situations such as the multiplicative Chernoff bound and Bernstein’s inequality. The multiplicative form of Chernoff bound can also be found in (Blumer et al., 1989) using the permutation argument. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

4.7. HISTORICAL AND BIBLIOGRAPHICAL REMARKS 

69 

Note that we do not try to optimize constants here. It is possible to obtain better constants using more complex techniques, for example, concentration inequalities in Chapter 6. 

Lemma 4.16 was obtained by Vapnik and Chervonenkis (1968, 1971), and independently discovered by Sauer (1972). It is often referred to as the Sauer’s lemma in the computer science literature. The idea of chaining was invented by Kolmogorov in the 1930’s, according to Chentsov (1956), and further developed by Dudley in Dudley (1967, 1978, 1984). The entropy integral form in Proposition 4.20 is often credited to Dudley. 

The _L∞_ -cover analysis follows the analysis of large margin methods by Bartlett et al. (1998), with a slight generalization. Similar analysis has been employed to analyze support vector machines (see Cristianini and Shawe-Taylor, 2000). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 4. EMPIRICAL COVERING NUMBER ANALYSIS 

70 

## **Exercises** 

- 4.1 Prove that (4.2) holds for _n ≥ d_ . Hint: consider the upper bound<sup>�</sup><sup>_d_</sup> _ℓ_ =0<sup>(</sup><sup>_d/n_)</sup><sup>_ℓ−d_�</sup><sup>_n_</sup> _ℓ_ �. 4.2 Prove that for any non-decreasing convex function Φ : R+ _→_ R+, the following symmetrization inequality holds. 



- 4.3 In the proof of Lemma 4.11. Show that Pr( _E_<sup>_c_</sup> & _E_ 2) _≤_ Pr( _E_ 1<sup>_c_).Usethisrelationshipto</sup> show that Pr( _E_ ) _≥_ 1 _− δ_ 1 _/_ (1 _− δ_ 2). 

- 4.4 Prove the result of Example 4.6 using convex optimization. 

   - Consider _{X_ 1 _, . . . , Xn}_ . Consider any _w_ , and let _w_ ˜( _J_ ) be defined as the unique solution to the following optimization problem for all _J ⊂ Jn_ = _{_ 1 _, . . . , n}_ : 



Show this is a convex optimization problem, with a unique solution determined by _J_ . Write the KKT conditions of the solution. 

   - Let _J_<sup>˜</sup> be the smallest cardinality of subsets _J_ of _Jn_ such that _w_ ˜( _w, J_ ) = _w_ ˜( _w, Jn_ ). Show ˜ ˜ 

   - that for all _i ∈ J_<sup>˜</sup> : _w_<sup>_⊤_</sup> _Xi_ = 0 if _w_<sup>_⊤_</sup> _X ≥_ 0 and _w_<sup>_⊤_</sup> _Xi_ = _−_ 1 if _w_<sup>_⊤_</sup> _X <_ 0. Moreover, _|J_<sup>˜</sup> _| ≤ d_ . 

   - Show that there are at most (2 _n_ )<sup>_d_</sup> possible choices of _J_<sup>˜</sup> , and this implies that the achievable values of _{_ 1 ( _w_<sup>_⊤_</sup> _Xi ≥_ 0) : 1 _≤ i ≤ n}_ can be no more than (2 _n_ )<sup>_d_</sup> . 

- 4.5 Prove Corollary 4.13. 

- 4.6 Consider _z ∈_ R<sup>_d_</sup> , let _w_ = [ _w_ 1 _, . . . , wd, wd_ +1 _, . . . , w_ 2 _d_ ]. Find the VC dimension of the function class 



where _C_ ( _w_ ) = _{z_ = [ _z_ 1 _, . . . , zd_ ] : _zj ∈_ [ _wj , wd_ + _j_ ] _}_ . 

- 4.7 In addition to symmetrization, uniform convergence can be obtained using random permutations, as in Vapnik and Chervonenkis (1971). Consider _F_ = _{f_ : _Z →_ [0 _,_ 1] _}_ . Given a dataset _S_ 2 _n_ , we consider random partitions of _S_ 2 _n_ into disjoint training and validation subsets _Sn ∪Sn_<sup>_′_</sup> via random permutation of the data, with the first half in _Sn_ , and the second half in _Sn_<sup>_′_</sup> . 

   - Show that conditioned on _S_ 2 _n_ , for random permutation, the following inequality holds for all _f ∈F_ : 



   - (Hint: this inequality was proved in Hoeffding (1963). 

- Use this inequality to derive a result similar to Theorem 2.5, and then use this result to derive an additive Chernoff bound of the form for all _f ∈F_ : 

Pr<sup>�</sup> _f_ ( _Sn_<sup>_′_)</sup><sup>_≤f_(</sup><sup>_S_</sup> 2 _n_<sup>) +</sup><sup>_ϵ_(</sup><sup>_δ_)�</sup> _≥_ 1 _− δ._ 

- Derive a uniform convergence result of the form 

Pr<sup>�</sup> _∀f ∈F_ : _f_ ( _Sn_<sup>_′_)</sup><sup>_≤f_(</sup><sup>_S_</sup> 2 _n_<sup>) +</sup><sup>_ϵ_(</sup><sup>_δ_)�</sup> _≥_ 1 _− δ_ 

using the empirical covering number _N_ ( _ϵ, F , L∞_ ( _S_ 2 _n_ )) of _S_ 2 _n_ . 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

Exercises 

71 

- Derive a uniform convergence result of the form 

Pr ( _∀f ∈F_ : _f_ ( _D_ ) _≤ f_ ( _Sn_ ) + _ϵ_ ( _δ_ )) _≥_ 1 _− δ_ 

using Lemma 4.11. 

- Derive an oracle inequality for the empirical risk minimization method, and compare to that of Corollary 4.13. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

**5** 

