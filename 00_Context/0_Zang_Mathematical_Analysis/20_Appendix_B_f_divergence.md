**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Appendix B** 

# _f_ **-divergence of Probability Measures** 

Consider a probability space Ω, with a properly defined _σ_ -algebra. Consider two probability measures _P_ and _Q_ that are absolutely continuous with respect to a reference measure _µ_ with density _p_ and _q_ : 



We have the following definition of _f_ -divergence. 

**Definition B.1.** Given a convex function _f_ ( _t_ ) defined on R+ such that _f_ (1) = 0, the _f_ -divergence of _P_ and _Q_ is defined as 



Let _W_ and _Z_ be two random variables, with probability measures _P_ and _Q_ respectively. We also write 



Note that the condition of absolute continuity is stated for notation convenience. For certain _f_ divergence that are always bounded, absolute continuity is not required. 

## **B.1 Basic Properties of** _f_ **-divergence** 

Due to the convexity of _f_ , _f_ -divergence is always non-negative. 

**Proposition B.2.** _We have_ 



_Moreover, if f_ ( _t_ ) _is strictly convex at_ 1 _, that is, there exists sub-gradient g of f at_ 1 _so that_ 



_then Df_ ( _P ||Q_ ) = 0 _only when P_ = _Q._ 

_Proof_ Using Jensen’s inequality, we obtain 



433 

APPENDIX B. _F_ -DIVERGENCE OF PROBABILITY MEASURES 

434 

This proves the first desired result. For the second result, we note that 



which is zero only when _p_ ( _z_ ) _/q_ ( _z_ ) = 1 almost everywhere. 

The following result shows that _f_ -divergence is jointly convex in _P_ and _Q_ . **Proposition B.3.** _Given any α ∈_ [0 _,_ 1] _, probability measures P , P_<sup>_′_</sup> _, Q, Q_<sup>_′_</sup> _, we have_ 



_Proof_ This is a direct consequence of the fact that the function _qf_ ( _p/q_ ) is jointly convex in [ _p, q_ ] _∈_ R+ _×_ R+ (see Proposition A.16). 

The following data-processing inequality of _f_ -divergence is very useful for establishing lower bounds for statistical estimation. 

**Theorem B.4** (Data Processing Inequality) **.** _Let W and Z be two random variables on_ Ω _. Let h_ : Ω _→_ Ω<sup>_′_</sup> _be a data processing map which can be a random function. Then_ 



_Proof_ Let _W_ and _Z_ be distributed according to probability measures _P_ ( _W_ ) _dµ_ and _Q_ ( _Z_ ) _dµ_ respectively. Let _W_<sup>_′_</sup> = _h_ ( _W_ ) and _Z_<sup>_′_</sup> = _h_ ( _Z_ ). Let _P_ ( _W, W_<sup>_′_</sup> ) and _Q_ ( _Z, Z_<sup>_′_</sup> ) be the joint distributions of [ _W, W_<sup>_′_</sup> ] and [ _Z, Z_<sup>_′_</sup> ]. By the definition of data processing, the conditional distribution satisfies 



Therefore 



Moreover, we have 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

B.2. EXAMPLES OF _F_ -DIVERGENCE 

435 

It follows that 



Note that (B.2) implies (a); (b) follows from Jensen’s inequality, and (c) can be obtained from (B.1). 

## **B.2 Examples of** _f_ **-divergence** 

In the following, we list useful examples of _f_ divergence encountered in the main text. However, it is worth noting that different _f_ ( _t_ ) can lead to the same divergence, as shown by the following simple fact. 

**Proposition B.5.** _The f -divergence with f_ ( _t_ ) _is the same as the f -divergence with f_<sup>˜</sup> ( _t_ ) = _f_ ( _t_ ) + _β_ (1 _− t_ ) _for any β ∈_ R _._ 

We will choose only one _f_ ( _t_ ) for each divergence in the example, although one can choose different _f_ ( _t_ ) for convenience. The examples are all strictly convex at _z_ = 1, and thus _Df_ ( _P ||Q_ ) = 0 if and only if _P_ = _Q_ . 

## **_KL-divergence_** 

With _f_ ( _t_ ) = _t_ ln _t_ , we obtain the KL-divergence (Kullback–Leibler divergence) as follows 



KL-divergence can be unbounded. 

Given random variables [ _X, X_<sup>_′_</sup> ], with probability measure _P_ , their mutual information is as 



Mutual information is often used to measure the independence of the random variables _X_ and _X_<sup>_′_</sup> . If the random variables are independent, then the mutual information is zero. In the general case, mutual information can be unbounded. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
(0<br>a on<br>(1 )<br>K ()<br><!-- End of picture text -->

B.3. BASIC INEQUALITIES 

437 

**Theorem B.6.** _Let P_<sup>_n_</sup> _and Q_<sup>_n_</sup> _be the product distribution of n iid samples from P and Q respectively. Then_ 



_For α_ = 1 _, this becomes_ 





With _f_ ( _t_ ) = _|z −_ 1 _|_ , we obtain the _L_ 1 norm between two measures as 



The quantity is always bounded between [0 _,_ 2]. We can also define the TV-norm between two measures as 



which is always between [0 _,_ 1]. 

The TV-norm can also be defined equivalently as follows. 

**Proposition B.7.** 



_where A is over all measurable sets, and g is over all measurable functions with bounded L∞ norm._ 

## **B.3 Basic Inequalities** 

Many _f_ -divergence inequalities can be found in (Sason and Verd´u, 2016). In the following, we will only present some of the inequalities that are used in the book. 

In many applications, it is useful to bound the TV-norm of two distributions in terms of other divergences. The following inequality is a straight-forward application of data-processing inequality. 

**Lemma B.8.** _We have_ 



_where cf is defined below with p_ ( _s_ ) = (1 _− s_ ) _q_ + _sp:_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
C) (~)<br>(| -) t ~)<br>i<br>I L -) — -—)<br><!-- End of picture text -->

/ 

~~-~~ [ 



<!-- Start of picture text -->
P/ E | |<br>UIvW vlvi iWov fv | |<br>I IWoovWov | |<br>|<br>{Vv<br>IW<br>Wo |<br><!-- End of picture text -->

APPENDIX B. _F_ -DIVERGENCE OF PROBABILITY MEASURES 

440 

then by using the fact that _f_ KL( _t_ ) _/fH_ ( _t_ ) is an increasing function of _t ∈_ [0 _, ∞_ ), we obtain _κ ≤ f_ KL(exp( _ρ_ )) _/fH_ (exp( _ρ_ )). 

Moreover we know that for ratio of distributions _ρ ≥_ 0, and when _ρ ∈_ (0 _, ∞_ ), we have _κ ≤ f_ KL(exp( _ρ_ )) _/fH_ (exp( _ρ_ )) _≤_ 2 _._ 5 + _ρ_ . We now have 

KL( _P ||Q_ ) =E _Z∼Qf_ KL( _p_ ( _z_ ) _/q_ ( _z_ )) _≤ κ_ E _Z∼QfH_ ( _p_ ( _z_ ) _/q_ ( _z_ )) = _κH_ ( _P ||Q_ )<sup>2</sup> _,_ 

which implies the desired bounds. 

It is also relatively easy to obtain bounds of _α_ -divergences for different values of _α_ . In general, if _α < α_<sup>_′_</sup> , then we can bound _α_ -divergence by _α_<sup>_′_</sup> -divergence as follows. It is a direct consequence of Jensen’s inequality. 

**Proposition B.12.** _if_ 0 _< α < α_<sup>_′_</sup> _, then_ 



_where the convention of_ (B.4) _is adopted for α_ = 1 _or α_<sup>_′_</sup> = 1 _._ 

_Proof_ We consider the case of 1 _< α ≤ α_<sup>_′_</sup> . Then Jensen’s inequality implies that 



By taking logarithm and divide each side by _α_<sup>_′_</sup> _−_ 1, we obtain the desired bound. Similarly we can prove the case of 0 _< α ≤ α_<sup>_′_</sup> _<_ 1. By combining the two cases, and taking limit at _α →_ 1 or _α_<sup>_′_</sup> _→_ 1, we obtain the desired inequality for all 0 _< α ≤ α_<sup>_′_</sup> . 

Theorem B.9 is useful to bound the product distributions for TV-norm via _α_ -divergence. Due to Proposition B.12, it is beneficial to use _α <_ 1. In particular, we have the following result using Hellinger distance. 

**Theorem B.13.** _Let P_<sup>_n_</sup> _and Q_<sup>_n_</sup> _be the product distribution of n iid samples from P and Q respectively. We have_ 



_Proof_ From Theorem B.6 with _α_ = 0 _._ 5, we obtain ln(1 _−_ 0 _._ 5 _H_ ( _P_<sup>_n_</sup> _||Q_<sup>_n_</sup> )<sup>2</sup> ) = _n_ ln(1 _−_ 0 _._ 5 _H_ ( _P ||Q_ )<sup>2</sup> ) _._ 

It follows that 



Together with Theorem B.9, we obtain the desired bound. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

