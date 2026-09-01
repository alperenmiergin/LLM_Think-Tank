**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Lower Bounds and Minimax Analysis** 

This chapter considers lower bounds for empirical processes and statistical estimation problems. We know that upper bounds for empirical processes and empirical risk minimization can be obtained from the covering number analysis. We show that under suitable conditions, lower bounds can also be obtained using covering numbers. 

## **12.1 Lower Bounds for Empirical Processes** 

In previous chapters, such as Chapter 6, we showed that uniform convergence of empirical processes in terms of Rademacher complexity can be obtained using covering numbers and the chaining technique. 

This section considers techniques to derive lower bounds. For simplicity, we will only consider empirical processes associated with a function family _F_ = _{f_ ( _w, z_ ) : _w ∈_ Ω _}_ , defined on the empirical measure _Sn_ = _{Z_ 1 _, . . . , Zn}_ . 

We shall first introduce the notation of Gaussian complexity, which is useful for obtaining lower bounds. 

**Definition 12.1.** The empirical Gaussian complexity of _F_ is defined as 



where [ _g_ 1 _, . . . , gn_ ] are independent standard normal random variables: _gi ∼ N_ (0 _,_ 1) for _i_ = 1 _, . . . , n_ . 

The following result shows that Gaussian complexity and Rademacher complexity are equivalent up to a logarithmic factor in _n_ . 

**Proposition 12.2** (Bartlett and Mendelson, 2002) **.** _There exists an absolute constant C >_ 0 _such that if F_ = _−F, then_ 



Both Rademacher complexity and Gaussian complexity can be used to obtain expected uniform convergence for empirical processes. Upper bounds for both Rademacher complexity and Gaussian complexity can be obtained from covering numbers via Dudley’s entropy integral, as shown in Theorem 6.25. However, 

254 

12.1. LOWER BOUNDS FOR EMPIRICAL PROCESSES 

255 

the Gaussian complexity also has a lower bound using covering numbers, called Sudakov minoration. Its proof relies on Slepian’s lemma, which is a comparison lemma for Gaussian complexity, similar to the comparison lemma for Rademacher complexity in Lemma 6.29. The proof of this result can be found in (Slepian, 1962; Joag-Dev et al., 1983). 

**Lemma 12.3** (Slepian’s Lemma) **.** _Let_ [ _X_ 1 _, . . . , Xn_ ] _and_ [ _Y_ 1 _, . . . , Yn_ ] _denote two zero-mean multivariate normal random vectors. Assume that_ 



_Then_ 



Empirical process lower bounds rely on the packing number _M_ ( _·_ ), which is defined in Definition 5.1. Theorem 5.2 implies that it is equivalent to covering number up to a scale of 2. The following result, referred to as _Sudakov minoration_ , is a direct consequence of Slepian’s lemma. 

**Theorem 12.4** (Sudakov Minoration) **.** _For any ϵ >_ 0 _:_ 



_Proof_ Let _FM_ = _{f_ 1 _, . . . , fM } ⊂F_ be an _ϵ_ packing subset of _F_ under the _L_ 2( _Sn_ ) metric. Consider independent standard Gaussian random variables [ _g_ 1 _, . . . , gn_ ]. 



Let _g_ 1<sup>_′, . . . , g_</sup> _M_<sup>_′_be independent zero-mean normal random variables with variance</sup> _ϵ_<sup>2</sup> _/_ (2 _n_ ) each. We then have for each _j_ = _k_ : 



Using Slepian’s lemma, we have 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
_<br>C S<br>( 8)<br>CL )<br>ro J 7 4<br>ji )<br>po oy<br>f oc) f<br>( )<br>JV<br><!-- End of picture text -->

12.2. MINIMAX ANALYSIS FOR STATISTICAL ESTIMATION 

257 

**Theorem 12.5** (The Majorizing Measure Theorem) **.** _There exists an absolute constant C >_ 0 _so that_ 



The result shows that the entropy integral bound for empirical processes is generally tight, although one may need to replace covering numbers by majorizing measures in certain situations. In other cases, the difference between covering number and majorizing measure is not significant. 

## **12.2 Minimax Analysis for Statistical Estimation** 

We consider the general statistical estimation problem, where we want to estimate a certain quantity _θ ∈_ Θ based on a sample _Z_ from a distribution _D_ on _Z_ . A learning algorithm (estimator) _A_ is a (possibly random) map _Z →_ Θ. The quality of the estimated distribution dependent quantity _θ ∈_ Θ can be measured by a general loss function 



and the goal is to find an estimator _A_ that achieves the smallest loss _Q_ ( _A_ ( _Z_ ) _, D_ ) when _Z ∼D_ . 

Note that this definition can handle the general setting of supervised learning, where we observe _n_ iid training examples _Sn_ = _{Z_ 1 _, . . . , Zn}_ from an unknown underlying distribution _D_ . In this case, we may simply take _Z_ = _Sn_ that is generated according to the product distribution _D_<sup>_n_</sup> . The model parameter space Θ can be regarded as the set of prediction functions, and we may denote _θ_ by _f_ , so that the learning algorithm _A_ learns a function _f_<sup>ˆ</sup> = _A_ ( _Sn_ ). 

**Example 12.6.** For least squares problem, _f_ ( _x_ ) is a real valued regression function. Let _fD_ ( _x_ ) = E _D_ [ _Y |X_ = _x_ ]. We may define 



**Example 12.7.** For conditional density estimation with _K_ classes _y ∈{_ 1 _, . . . , K}_ , we may consider Θ as the class of vector valued density functions 



For density estimation, the estimation quality can be measured by the KLdivergence 



or by squared Hellinger distance: 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 12. LOWER BOUNDS AND MINIMAX ANALYSIS 

258 

**Example 12.8.** For _K_ class classification problems, if we are interested in classification accuracy, then we may use the excess classification error over the Bayes classification error as quality measure. Here 



is the optimal Bayes classifier. Let _f_ ( _x_ ) _∈{_ 1 _, . . . , K}_ be any classifier, then we can 



In statistical estimation, we do not know the true distribution _D_ , but can only observe a sample _Sn_ from _D_<sup>_n_</sup> . In this case, we may consider a family of distributions _P_ that contains _D_ . For each _D ∈P_ , a learning algorithm learns a quantity _θ_ that depends on _D_ from a sample _Sn ∼D_<sup>_n_</sup> . We are interested in the worst case expected risk of a learning algorithm _A_ to measure the ability of the algorithm to learn the quantity _θ_ with respect to a family of distributions _P_ . 

**Definition 12.9.** Consider a distribution family _P_ on sample space _Z_ , a parameter space Θ. A learning algorithm _A_ : _Z_<sup>_n_</sup> _→_ Θ, a loss function _Q_ : Θ _× P →_ R. Then the worst case expected risk of a learning algorithm (i.e., a statistical estimator) _A_ with respect to _P_ is given by 



where E _A_ is the expectation over any internal randomization of _A_ . Moreover, the minimax risk is as: 



The standard statistical framework for optimality is to find an algorithm with the smallest worse case risk _rn_ ( _A, P, Q_ ). This type of analysis is referred to as _minimax analysis_ . The minimax risk _rn_ ( _P, Q_ ) depends only on the sample size _n_ , distribution family _P_ , and the loss function _Q_ . In nonparametric statistics, it is difficult to find the exact expression of minimax risk. Therefore we often consider rate optimal algorithms _A_ , which achieves the optimal minimax risk _rn_ ( _P, Q_ ) up to a constant factor as _n →∞_ . 

In minimax analysis, we are interested in estimating the minimax risk (up to a constant factor). To establish an upper bound of _rn_ ( _P, Q_ ), we consider specific learning algorithms and analyze their convergence rates. For example, if we consider the ERM method _A_ erm for the least squares regression problem, then we may obtain an upper bound of 



for some _r >_ 0, based on the analysis of Example 6.49. 

On the other hand, if we can show a lower bound _rn_ ( _P, Q_ ) _≥ cn_<sup>_−r_</sup> for some constant _c_ that may depend on _P_ but independent of _n_ , then we know that the 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

12.3. LOWER BOUNDS USING FANO’S INEQUALITY 

259 

ERM method achieves the optimal minimax lower bound. That is, no statistical estimator can perform much better than ERM up to a constant factor for this distribution family. If the lower bound is _O_ ( _n_<sup>_−r′_</sup> ) for _r_<sup>_′_</sup> _> r_ , then ERM may not be optimal. As we will see, both situations can happen depending on the entropy of the function class _F_ to be estimated. 

## **12.3 Lower Bounds Using Fano’s Inequality** 

In this section, we will describe a general method to derive lower bounds for statistical estimation based on Fano’s inequality, which is stated as follows. 

**Theorem 12.10** (Fano’s Inequality) **.** _Consider a finite family of distributions P_ = _{D_ 1 _, . . . , DN }. Assume that j is a random variable that is uniformly distributed in {_ 1 _, . . . , N }, and conditioned on j , Z ∼Dj. Let f_ ( _Z_ ) _∈{_ 1 _, . . . , N } be an estimate of the index j. Then_ 



_where_ 



_is the mutual information between random variables j and Z (see Appendix B)._ 

In the following, we prove a generalization of the Fano’s inequality, which is more convenient to apply for our purpose. 

**Theorem 12.11.** _Consider a finite family of distributions P_ = _{D_ 1 _, . . . , DN }. Given a loss function Q on_ Θ _× P, let_ 



_Assume that j is a random variable that is uniformly distributed in {_ 1 _, . . . , N }, and conditioned on j , Z ∼Dj. Given any (possibly random) estimator A_ ( _Z_ ) _. Then_ 



_where I_ ( _j, Z_ ) _is the mutual information of j and Z. The probability includes possible randomization in A._ 

_Proof_ Let _pj_ be the density function of _Z_ for _Dj_ . Then the joint distribution of ( _j, Z_ ) is given by 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 12. LOWER BOUNDS AND MINIMAX ANALYSIS 

260 

We can introduce a random variable _Z_<sup>_′_</sup> with the same marginal distribution as _Z_ , but is independent of _j_ : 



Now, consider an arbitrary and possibly random estimator _θ_<sup>ˆ</sup> = _A_ ( _Z_ ). Let _θ_<sup>ˆ</sup><sup>_′_</sup> = _A_ ( _Z_<sup>_′_</sup> ). By the data processing inequality for KL-divergence (see Theorem B.4), with input ( _j, Z_ ) and binary output _h_ ( _j, Z_ ) = 1 ( _Q_ ( _θ,_<sup>ˆ</sup> _Dj_ ) _< ϵ_ ), where 1 ( _·_ ) is the indicator function. We obtain 

KL( 1 ( _Q_ ( _θ,_<sup>ˆ</sup> _Dj_ ) _< ϵ_ ) _||_ 1 ( _Q_ ( _θ_<sup>ˆ</sup><sup>_′_</sup> _, Dj_ ) _< ϵ_ )) _≤_ KL(( _j, Z_ ) _||_ ( _j, Z_<sup>_′_</sup> )) = _I_ ( _j, Z_ ) _._ 

Now let _q_ = Pr( _Q_ ( _θ,_<sup>ˆ</sup> _Dj_ ) _< ϵ_ ) and _q_<sup>_′_</sup> = Pr( _Q_ ( _θ_<sup>ˆ</sup><sup>_′_</sup> _, Dj_ ) _< ϵ_ ), then the above inequality can be rewritten as: 



Since _θ_<sup>ˆ</sup><sup>_′_</sup> is independent of _j_ , and 



for each _θ_<sup>ˆ</sup><sup>_′_</sup> , we obtain 



If _q ≤ m/N_ , we have proved the desired inequality. Otherwise, since KL( _q||q_<sup>_′_</sup> ) as a function of _q_<sup>_′_</sup> is decreasing in [0 _, q_ ], we have 



Since _q_ ln _q_ + (1 _− q_ ) ln(1 _− q_ ) _≥−_ ln 2, we obtain 



This implies that 



We thus obtain the desired bound. 

**Example 12.12.** In Theorem 12.11, if we take Θ = _{_ 1 _, . . . , N }_ , _Q_ ( _θ, Dj_ ) = 1 ( _θ_ = _j_ ), and _ϵ_ = 1, then we have _m_ = 1. Note that 1 _/N ≤_ ln 2 _/_ ln( _N_ ), we obtain the following result 



This implies Fano’s inequality of Theorem 12.10. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

12.3. LOWER BOUNDS USING FANO’S INEQUALITY 

261 

The following example gives an application of _m >_ 1. 

**Example 12.13.** In Theorem 12.11, if we take Θ = [1 _, N_ ] for _N >_ 2, _Q_ ( _θ, Dj_ ) = _|θ − j|_ , and _ϵ_ = 1, then we have _m_ = 2. Note that 2 _/N ≤_ ln 2 _/_ ln( _N/_ 2), we obtain the following result 



The following result shows that if the distributions _{Dj}_ are close to each other, then the mutual information _I_ ( _j, Z_ ) in Theorem 12.11 is small. 

**Lemma 12.14.** _The mutual information I_ ( _j, Z_ ) _in Theorem 12.11 satisfies the inequality_ 



_Proof_ We have 



where the inequality used Jensen’s inequality and the convexity of _−_ ln _z_ . 

The following minimax risk lower bound is a direct application of generalized Fano’s inequality to the product distribution of KL-divergence. We leave its proof as an exercise. 

**Theorem 12.15.** _Consider a distributions family P that contains a finite subset of distributions {D_ 1 _, . . . , DN }. Let Q be a loss function on_ Θ _× P, and_ 



_Let A_ ( _Sn_ ) _be an arbitrary (possibly random) estimator of Dj from iid data Sn_ = [ _Z_ 1 _, . . . , Zn_ ] _∼Dj_<sup>_n.Ifm ≤N/_2</sup><sup>_and_</sup> 



_then_ 



_where the probability also includes possible randomization in A. If Q_ ( _·, ·_ ) _is nonnegative, then this implies that rn_ ( _P, Q_ ) _≥_ 0 _._ 5 _ϵ._ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 12. LOWER BOUNDS AND MINIMAX ANALYSIS 

262 

The following example illustrates how to use the result. 

**Example 12.16.** Consider the _d_ -dimensional Gaussian mean estimation problem, where the goal is to estimate a Gaussian _N_ ( _θ, I_ ) with unknown mean _θ ∈_ R<sup>_d_</sup> such that _∥θ∥_ 2 _≤_ 1, based on observations _Z_ 1 _, . . . , Zn ∼D_ = _N_ ( _θ, I_ ). Let _θ_<sup>ˆ</sup> be the estimated mean, and we define metric 



Then we are interested in the number of samples _n_ needed to obtain an estimate as good as 0 _._ 5 _ϵ_ for some small _ϵ >_ 0. 

In order to apply Theorem 12.15, we consider the ball _B_ (4 _ϵ_ ) = _{θ_ : _∥θ∥_ 2 _≤_ 4 _ϵ}_ . From Theorem 5.3, we know that there exists _N_ = ((4 _ϵ_ ) _/_ (2 _ϵ_ ))<sup>_d_</sup> = 2<sup>_d_</sup> centers _{θj_ : _j_ = 1 _, . . . , N }_ in _B_ (4 _ϵ_ ) such that _∥θj − θk∥_ 2 _>_ 2 _ϵ_ for _j_ = _k_ . Since _∥θ_<sup>ˆ</sup> _− θj∥_ 2 + _∥θ_<sup>ˆ</sup> _− θk∥_ 2 _≥∥θj − θk∥_ 2 _>_ 2 _ϵ_ , we obtain 



Let _pj_ = _N_ ( _θj, I_ ). This implies that for all _θj, θk ∈ B_ (4 _ϵ_ ), 



The condition of Theorem 12.15 holds when 

ln( _N_ ) = ln(2<sup>_d_</sup> ) _≥_ ln 4 + 64 _nϵ_<sup>2</sup> _≥_ ln 4 + 2 _n_ sup _j,k_<sup>KL(</sup><sup>_pj||pk_)</sup><sup>_._</sup> 

This implies that if 



then for all mean estimator _θ_<sup>ˆ</sup> , there exists _θj ∈ B_ (4 _ϵ_ ) so that for _n_ iid samples from _pj_ : 



## **12.4 Minimax Analysis for Least Squares Regression** 

For the least squares regression problem in Example 12.6, we consider a function class _F_ that contains the optimal prediction rule _fD_ ( _X_ ) = E[ _Y |X_ ], and 



The following result is a direct consequence of Theorem 12.15. 

**Theorem 12.17.** _Consider the regression model, where X ∼DX with known DX, and_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

12.4. MINIMAX ANALYSIS FOR LEAST SQUARES REGRESSION 

263 

_where ϵ is zero-mean noise that may depend on fD_ ( _·_ ) _∈F. Assume there exists σ >_ 0 _so that_ 



_where Df is the distribution of_ ( _X, Y_ ) _when fD_ = _f . If F contains N functions f_ 1 _, . . . , fN such that_ 



_then_ 



_Proof_ Define _Q_ ( _f, f_<sup>_′_</sup> ) = E _X∼D_ ( _f_ ( _X_ ) _− f_<sup>_′_</sup> ( _X_ ))<sup>2</sup> . Note that for each _f ∈F_ , we associate a _Df ∈P_ = _{Df_ : _f ∈F}_ . We also let _ϵ_ = 0 _._ 25 min _j_ = _k Q_ ( _fj, fk_ ), and it can be checked that for all _j_ = _k_ : 



This means that we can take _m_ = 1, and obtain the theorem as a direct consequence of Theorem 12.15. 

The following result implies that the condition of Theorem 12.17 holds for Gaussian noise. 

**Proposition 12.18.** _Consider Df_ ( _X, Y_ ) _so that X ∼DX is identical for all f ∈F, and Y ∼ N_ ( _f_ ( _X_ ) _, σ_<sup>2</sup> ) _for some constant σ >_ 0 _. Then_ 



_Proof_ We consider a distribution _D_ over _Z_ = ( _X, Y_ ) associated with each _f ∈F_ , with density defined as 



where _pDX_ ( _X_ ) is the density of _X ∼DX_ and _pN_ (0 _,_ 1) is the density of standard normal distribution. Using this notation, we have 



This proves the desired result. 

Similar results can also be obtained for other noise models such as Bernoulli noise, where _Y ∈{_ 0 _,_ 1 _}_ . 

**Proposition 12.19.** _Assume that Y ∈{_ 0 _,_ 1 _} such that_ 



_for some f ∈F, and let Df_ ( _Z_ ) _be the distribution of Z_ = ( _X, Y_ ) _. If there exists_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 12. LOWER BOUNDS AND MINIMAX ANALYSIS 

264 

_c ∈_ (0 _,_ 0 _._ 5) _, and for all f ∈F and X: f_ ( _X_ ) _∈_ [ _c,_ 1 _− c_ ] _, then there exists σ >_ 0 _such that for all f, f_<sup>_′_</sup> _∈ F :_ 



Consider a distribution _DX_ over _X_ , with the metric 



The following result shows that the corresponding metric entropy leads to a lower bound on the minimax risk. 

**Corollary 12.20.** _If for some C >_ 0 _and ϵ >_ 0 _:_ 



_For noise model that satisfies the condition of Theorem 12.17, we have_ 



_for some C_<sup>_′_</sup> _>_ 0 _._ 

_Proof_ We consider an _ϵ_ packing subset _F_<sup>_′_</sup> of _F_ with size of at least exp( _C_<sup>_−_1</sup> _ϵ_<sup>_−q_</sup> ). Since for some _C_ 0 _>_ 0, 



it implies that there exists a ball of size 0 _._ 5 _C_ 0 _ϵ_ , which contains at least 



members of _F_<sup>_′_</sup> . 

This means we can find _N ≥_ exp(0 _._ 5 _C_<sup>_−_1</sup> _ϵ_<sup>_−q_</sup> ) functions _{f_ 1 _, . . . , fN }_ such that 



where _Q_ ( _f, f_<sup>_′_</sup> ) = E _X∼DX_ ( _f_ ( _X_ ) _− f_<sup>_′_</sup> ( _X_ ))<sup>2</sup> . Now let _n_ = _⌈_ ( _C_<sup>_′_</sup> _/ϵ_<sup>2</sup> )<sup>(</sup><sup>_q_+2)</sup><sup>_/_2</sup> _⌉_ for a sufficiently small constant _C_<sup>_′_</sup> , then we have 



Theorem 12.17 implies that _rn_ ( _P, Q_ LS) _≥_ 0 _._ 125 _ϵ_<sup>2</sup> . Since _ϵ_<sup>2</sup> _≥ C_<sup>_′_</sup> _n_<sup>_−_2</sup><sup>_/_(</sup><sup>_q_+2)</sup> , we obtain the desired bound. 

If the regression function class _F_ is bounded, and has a uniform covering number of _O_ ( _ϵ_<sup>_−q_</sup> ) for _q <_ 2, then we know from the local Rademacher complexity analysis of Example 6.49 that for the empirical risk minimization method 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

12.4. MINIMAX ANALYSIS FOR LEAST SQUARES REGRESSION 

265 

the following risk bound holds: 



This matches the lower bound of Corollary 12.20. 

For _q >_ 2, the generalization bound for empirical risk minimization method is 



and since 1 _/q <_ 2 _/_ ( _q_ + 2), the rate is inferior to the minimax rate. In general, this rate cannot be improved without additional assumptions (Birg´e and Massart, 1993). Therefore when the nonparametric family has a large entropy, ERM can be suboptimal. 

It is possible to achieve the optimal rate of _O_ ( _n_<sup>_−_2</sup><sup>_/_(</sup><sup>_q_+2)</sup> ) even when _q >_ 2. One of the optimal method is least squares on sieves, and a related method is Gibbs algorithm with an appropriate prior. A third method is exponential model aggregation method, studied in Section 15.3. 

In the following, we consider the sieve method (Grenander, 1981; Geman and Hwang, 1982; Birg´e and Massart, 1998), which in our setting, is simply least squares regression on discrete _ϵ_ -net. 

Given a function class _F_ , instead of running least squares on _F_ with 



the sieve method considers a subset _Fn ⊂F_ , and then perform least squares regression restricted to this subset: 



The following result shows that with appropriate _Fn_ , we may achieve the minimax risk of Corollary 12.20. 

**Proposition 12.21.** _Assume that the distribution of X is DX. Let Fn be an ϵ packing subset of F in the L_ 2( _DX_ ) _metric with M_ ( _ϵ, F, L_ 2( _DX_ )) _members. Assume there exists b >_ 0 _such that_ [ _f_ ( _X_ ) _− f_<sup>_′_</sup> ( _X_ )] _≤_ 2 _b for all f, f_<sup>_′_</sup> _∈F. Assume that fD ∈F and Y is sub-Gaussian:_ 



_Then_ 



_Proof_ Let _φ_ ( _f, Z_ ) = ( _f_ ( _X_ ) _−Y_ )<sup>2</sup> _−_ ( _fD_ ( _X_ ) _−Y_ )<sup>2</sup> with _Z_ = ( _X, Y_ ). Let _ρ_ = _b_<sup>_−_2</sup> _/_ 4. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 12. LOWER BOUNDS AND MINIMAX ANALYSIS 266 

Then we have 



It follows from Theorem 10.18 by setting 1 _/_ ( _λn_ ) = _ρ_ = _b_<sup>_−_2</sup> _/_ 4 (which implies that _λ_ = 4 _b_<sup>2</sup> _/n_ ) that for any random estimator _q_ ˆ on _Fn_ : 



Let _q_ ˆ corresponding to the deterministic estimator _f_<sup>ˆ</sup> _Fn_ , and _q_ 0 be the uniform distribution on _Fn_ . Then KL(ˆ _q||q_ 0) _≤_ ln _|Fn|_ . Therefore we obtain 



The last inequality used the fact that _Fn_ is an _ϵ_ packing of _F_ and _fD ∈F_ . This implies the desired bound. 

**Example 12.22.** Consider the covering number condition of Corollary 12.20. We note that 



Therefore the upper bound of Proposition 12.21 matches the lower bound of Corollary 12.20. 

The method of sieves can be regarded as a regularization method for ERM. The optimality of using a sieve versus ERM on the original function class implies that ERM can overfit if not used properly, which leads to suboptimality. It is suitable only for certain function classes but not others. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

12.4. MINIMAX ANALYSIS FOR LEAST SQUARES REGRESSION 

267 

The following example gives a simple but intuitive illustration of such overfitting phenomenon. 

**Example 12.23.** Consider the following function class 



where _f_ 1( _x_ ) = _f_ 0( _x_ ) + 0 _._ 5 _n_<sup>_−_1</sup><sup>_/_4</sup> . 

If we consider ERM with sieve _Fn_ = _{fk_ ( _x_ ) : _k_ = 0 _,_ 1 _}_ , then we have a convergence rate no worse than _O_ (1 _/n_ ). 

However, we have a overfitting problem with ERM on _F_ . To see this, we may consider the model 



and training data ( _X_ 1 _, Y_ 1) _, . . . ,_ ( _Xn, Yn_ ). Let _δi_ = ∆ _f_ 1( _Xi_ ) and _ϵi_ = _Yi − f_ 0( _Xi_ ). Then we have 



The inequality is achieved by setting _δi_ = sign( _ϵi_ ) _/_<sup>_√_</sup> _<u>n</u>_ <u>.</u> When _n_ is large, this quantity is negative with large probability because the last term 



dominates with large probability. It implies that with large probability, ERM gives an estimator _f_<sup>ˆ</sup> ( _x_ ) = _f_ 1( _x_ )+∆ _f_ 1( _x_ ) with _|_ ∆ _f_ ( _x_ ) _| ≤_ 1 _/_<sup>_√_</sup> _<u>n</u>_ <u>. This means that</u> 



for some _c >_ 0. Note that this is a suboptimal rate. 

In addition to the ERM on sieve method, one may also employ the Gibbs algorithm (10.12) with _λ_ = 4 _b_<sup>2</sup> _/n_ under the assumptions of Proposition 12.21. From (12.1), and note that the Gibbs distribution _q_ ˆ is the solution of the entropy regularized empirical risk minimization problem (see Proposition 7.16), we obtain 



If we choose prior _q_ 0 to be uniform on a discrete net as in Proposition 12.21, we obtain the same rate. However, one may also choose an appropriate continuous prior _q_ 0 to achieve a similar result without explicit discretization. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 12. LOWER BOUNDS AND MINIMAX ANALYSIS 

268 

Another method which is closely related to the Gibbs algorithm is model aggregation which is studied in Section 15.3. The generalization bound there implies that using model aggregation on a sieve _Fn_ = _{f_ 1 _, . . . , fN }_ , with _N_ = _M_ ( _ϵ, F, L_ 2( _DX_ )), we have 



This achieves the same rate as that of Proposition 12.21. It follows that the exponential aggregation algorithm is also an optimal algorithm for least squares regression. 

## **12.5 Minimax Analysis for Density Estimation** 

Assume that we are given a family of conditional distributions 



and the true conditional distribution _pD ∈F_ . Similar to Section 12.4, we assume that all conditional densities share a marginal distribution _DX_ on _X_ (which the learning algorithm does not need to know). The joint distribution is _P_ = _{p_ ( _X, Y_ ) = _pDX_ ( _X_ ) _p_ ( _Y |X_ ) : _p ∈F}_ . 

Given any _p ∈F_ , we are interested in minimizing its squared Hellinger distance to the true distribution 



Here _HDX_ is the Hellinger distance between the joint probability _pDX_ ( _X_ ) _p_ ( _Y |X_ ) _∈ P_ . We focus on the case that there exists _cF >_ 0 so that for all _p, p_<sup>_′_</sup> _∈F_ 



For example, this condition holds if ln _p_ ( _Y |X_ ) is bounded. 

The following result is a direct consequence of Theorem 12.15. The proof is similar to that of Theorem 12.17, and we leave it as an exercise. 

**Theorem 12.24.** _Consider the conditional density estimation problem with X ∼ DX, and assume that the true conditional probability is given by_ 



_Assume that_ (12.2) _holds. If F contains N conditional densities p_ 1 _, . . . , pN such that_ 



_then_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

12.6. LOWER BOUNDS USING ASSOUAD’S LEMMA 

269 

We have the following lower bound using metric entropy with respect to the Hellinger distance, which is analogous to Corollary 12.20. 

**Corollary 12.25.** _If for some C >_ 0 _and ϵ >_ 0 _:_ 



_Assume that_ (12.2) _holds, then we have_ 



_for some C_<sup>_′_</sup> _>_ 0 _._ 

We also have the following upper bound using the Gibbs algorithm on sieves. 

**Proposition 12.26.** _Assume that the distribution of X is DX. Let Fn be an ϵ packing subset of F under the HDX metric with M_ ( _ϵ, F, HDX_ ) _members. Assume that pD ∈F and_ (12.2) _holds. Let q_ ˆ _be a Gibbs distribution on Fn defined as:_ 



_where q_ 0( _p_ ) _is the uniform distribution on Fn. Then_ 

_Proof_ Let ∆( _Fn_ ) denote the set of probability distributions on _Fn_ . We obtain 



The first inequality used Corollary 10.26 with _α_ = 0 _._ 5. The second inequality used (12.2) and KL( _q||q_ 0) _≤_ ln _M_ ( _ϵ, F, HDX_ ). Since _Fn_ is also an _ϵ_ -cover of _Fn_ in _HDX_ , we obtain the desired bound. 

Under the condition of Corollary 12.25, we note that 



Therefore the upper bound of Proposition 12.26 matches the lower bound of Corollary 12.25. 

## **12.6 Lower Bounds using Assouad’s Lemma** 

While the minimax risk analysis using Fano’s inequality is applicable to a number of problems, the resulting bound employs KL divergence which can be infinity for 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
y<br>/<br>—yy—<br>»<br>> _<br>— rd — Sy<br>—yy—<br>E<br>> y— Y/<br>— y y—y /<br>— y y——<br>E<br><!-- End of picture text -->

12.6. LOWER BOUNDS USING ASSOUAD’S LEMMA 

271 

In the above derivation, the first inequality used _Qj_ ( _·_ ) _≥_ 0; ( _a_ ) used the assumption of the lemma, and ( _b_ ) used the definition of TV-norm (see Appendix B). By rearranging the last term and using the definition of _β_ , we obtain the desired bound. 

The Assouad’s lemma stated here is a generalization of the typical Assouad’s lemma appeared in the literature. The latter is often stated with 



and _Mj_ contains indices in _{±_ 1 _}_<sup>_d_</sup> that may differ from _τ_ by only one coordinate _j_ . The following result is a direct application of Assouad’s Lemma with this representation, and the TV-norm of product distributions is estimated by Theorem B.13. 

**Theorem 12.28.** _Let d ≥_ 1 _be an integer and Pd_ = _{Dτ_ : _τ ∈{−_ 1 _,_ 1 _}_<sup>_d_</sup> _} contain_ 2<sup>_d_</sup> _probability measures. Suppose that the loss function Q can be decomposed as_ 



_where Qj_ ( _·, ·_ ) _≥_ 0 _. For any j and τ , let τ_<sup>_−_[</sup><sup>_j_]</sup> _be the index that differs with τ only by one coordinate j. Assume that there exists ϵ, βj ≥_ 0 _such that_ 



_Consider randomized A_ ( _Sn_ ) _based on Sn ∼Dτ_<sup>_nforsomeτ.Wehave_</sup> 



_where_ E _A is with respect to the internal randomization in A. This implies that_ 



In general, if we can choose _βj_ = _O_ ( _ϵ_ ), then Theorem 12.28 implies a bound of 



when _n_ = _O_ (1 _/ϵ_<sup>2</sup> ). The following example illustrates this with a specific application. 

**Example 12.29.** Consider observations _Zi ∈{_ 0 _,_ 1 _}_<sup>_d_</sup> , where each _Zi_ has _d_ components _Zi,j ∼_ Bernoulli( _θj_ ) for _j_ = 1 _, . . . , d_ . Let _θ_ = [ _θ_ 1 _, . . . , θd_ ] _∈_ (0 _,_ 1)<sup>_d_</sup> be the model parameters to be estimated. For _τ ∈{±_ 1 _}_<sup>_d_</sup> , we let _θτ,j_ = _ϵ_<sup>2</sup> (1+ _τj_ ) _/_ 2, where _ϵ ∈_ (0 _,_ 0 _._ 5). Let _Dτ_ be the corresponding Bernoulli distribution, and _Pd_ = _{Dτ }_ . the metric 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 12. LOWER BOUNDS AND MINIMAX ANALYSIS 

272 

We cannot apply Theorem 12.15 directly on this subclass _Pd_ because the KLdivergence of two distributions in _Pd_ can be infinity. On the other hand, for all _τ_ : 



and 



We thus obtain from Theorem 12.28 that 



For sufficiently small _ϵ_ , with _n ≤_ 1 _/_ (6 _ϵ_<sup>2</sup> ), we obtain 



## **12.7 Historical and Bibliographical Remarks** 

While Rademacher complexity is more widely used in machine learning, Gaussian complexity has also been studied (Bartlett and Mendelson, 2002; Koltchinskii and Panchenko, 2002). Slepian’s Lemma, which is the comparison lemma for Gaussian complexity, is more versatile than the corresponding Lemma 6.29 for Rademacher complexity. Among different applications, it directly implies Sudakov Minoration as a lower bound for Gaussian complexity (Sudakov, 1969). It can also be used to obtain upper bounds on empirical _L_ 2 covering numbers. Due the convenience of Gaussian distributions, more sophisticated results such as generic chaining can be developed (Talagrand, 1996a). 

The minimax criterion has become a widely adopted approach in statistical analysis. It has origins both from the game theory and from the statistical decision theory. The latter is closely related to Bayesian statistics, although the concept of minimax analysis has been studied mostly in the frequentist setting. 

In parametric statistics, with suitable regularity conditions, the classical asymptotic lower bound for unbiased parameter estimation of a probability model is given by the Cramer-Rao inequality (Rao, 1992; Cram´er, 2016). The matching upper bound can be achieved by the maximum likelihood method. This leads to the asymptotic optimality of the maximum likelihood method (under appropriate regularity conditions). In non-parametric statistics, one needs to consider other techniques originated from information theory to establish lower bounds for statistical convergence rates, usually up to a constant. Common techniques for lower bounds include the Fano’s inequality (Fano, 1961) and Assouad’s lemma (Assouad, 1983). Assouad’s method employs TV-norm and multiple hypothesis testing for a decomposable loss function. The idea of using TV-norm for hypothesis testing as a method to obtain lower bounds for statistical estimation has also been studied earlier by LeCam (1973). See (Yu, 1997) for a discussion of the relationship of these methods. These techniques have been employed in the minimax analysis of nonparametric statistical estimation problems (Birg´e, 1986; 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

12.7. HISTORICAL AND BIBLIOGRAPHICAL REMARKS 

273 

Yang, 1999; Yang and Barron, 1999). The condition used in the generalization of Fano’s inequality in Theorem 12.11 is motivated by the analysis of Zhang (2006). 

The method of sieves has been suggested in nonparametric statistics in the 1980s (Grenander, 1981; Geman and Hwang, 1982), although the sub-optimality of ERM was only formally shown much later in (Birg´e and Massart, 1993). Both of the sieve method and the exponential aggregation method are known to achieve the optimal convergence rate. The minimax analysis of the Gibbs algorithm can be found in Zhang (2006). Similar result holds for misspecified models for convex function classes when the variance condition holds (see Example 3.18). However, we can only achieve an inferior result with nonconvex function classes using ERM when competing to the optimal function in the function class (see Example 3.25 and Proposition 8.12). For general nonconvex function classes, it is known (see Example 15.21 ) that exponential model aggregation is superior to empirical risk minimization when model is misspecified (see Lecu´e, 2007; Audibert, 2007). The case of misspecified model does not affect the minimax analysis of this chapter, because we have only considered well specified models in our analysis. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 12. LOWER BOUNDS AND MINIMAX ANALYSIS 

274 

## **Exercises** 

12.1 Prove Proposition 12.2. 

12.2 Consider the function class 

_F_ = _{w_<sup>_⊤_</sup> _x_ : _∥w∥_ 2 _≤_ 1 _}._ 

Consider empirical distribution _Sn_ = _{X_ 1 _, . . . , Xn}_ so that _∥Xi∥_ 2 _≤_ 1 for all _i_ . Derive an upper bound for the Gaussian complexity _G_ ( _F , Sn_ ), and obtain an upper bound for _N_ ( _ϵ, F , L_ 2( _Sn_ )) using Sudakov minoration. 

12.3 Prove Theorem 12.15 using Theorem 12.11, Lemma 12.14, and Theorem B.6. 12.4 Consider a function class defined on [0 _,_ 1) as 

_F_ = _{f_ 0( _x_ ) _} ∪{f_ 0( _x_ ) + 0 _._ 1 _n_<sup>_−r/_3</sup> + _n_<sup>_−r/_2</sup> ∆ _fu_ ( _x_ ) : _u ∈{±_ 1 _}_<sup>_n_</sup> _},_ 

with _r ∈_ (0 _,_ 1]. Let _f_ 0( _x_ ) = 0 and ∆ _fu_ ( _x_ ) = _uj ∀x ∈_ [( _j −_ 1) _/n, j/n_ ) ( _j_ = 1 _, . . . , n_ ), Let 



for _f∗ ∈F_ , and _X_ drawn uniformly from [0 _,_ 1). Consider least squares problem 



and consider _n_ samples _Sn_ = _{_ ( _X_ 1 _, Y_ 1) _, . . . ,_ ( _Xn, Yn_ ) _}_ . 

- Find the minimax risk (up to a constant) for estimating _f∗_ using these _n_ samples. 

- Show that there is a small enough constant _c_ so that with probability at least 0 _._ 5, there are at least 0 _._ 1 _n_ buckets [( _j −_ 1) _/n, j/n_ ) so that one and only one _Xi_ belongs to [( _j −_ 1) _/n, j/n_ ). 

- Find a risk lower bound on the risk for the ERM method on _F_ for sufficiently large _n_ . 

12.5 Prove Theorem 12.24 and Corollary 12.25. 

- 12.6 Use Theorem 12.28 to derive a lower bound for Example 12.16. 

- 12.7 Consider a distribution family _D_ parametrized by _θD ∈_ R<sup>_d_</sup> , which we want to estimate from observations _Z_ 1 _, . . . , Zn ∼ N_ ( _θD, I_ ). Assume that _θD_ is sparse: _∥θD∥_ 0 = _s_ for some _s ≪ d_ . 

   - Derive a lower bound for estimating _θ_ with _Q_ ( _θ, D_ ) = _∥θ − θD∥_ 2<sup>2</sup> 

      - 2<sup>.</sup> 

   - Derive a matching upper bound. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

**13** 

