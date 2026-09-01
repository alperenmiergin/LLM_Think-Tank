**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Algorithmic Stability Analysis** 

The theory of empirical processes has become an important tool to analyze the generalization ability of learning algorithms based on empirical risk minimization. However, in practical applications, we typically solve the empirical risk minimization problem using optimization methods such as stochastic gradient descent (SGD). Such an algorithm searches a model parameter along a path, which does not cover the entire model space. Therefore the empirical process analysis may not be optimal to analyze the performance of specific computational procedures. In recent years, another theoretical tool, which we may refer to as _stability analysis_ , has been proposed to analyze such computational procedures. 

## **7.1 Algorithmic Stability** 

We consider an arbitrary randomized learning algorithm _A_ that maps a training data _Sn_ of _n_ samples to a (random) weight vector _w ∈_ Ω. An example of such randomized algorithm is SGD, which produces a random weight vector due to the randomness in selecting training examples during the training of SGD. 

Similar to previous chapters, our goal is still to minimize the expected test loss 



and we assume that _Sn_ contains _n_ iid samples, drawn from _D_ . Here the test loss _φ_ ( _w, z_ ) can be different from training loss as in regularized ERM method (6.1). But we consider a more general setting where the training algorithm may not necessarily correspond to an ERM method. 

We are still interested in bounding the difference of training error and generalization of such an algorithm. We introduce the notation of algorithmic stability as follows. 

**Definition 7.1.** An algorithm _A_ is _ϵ_ -uniformly stable if for all _Sn_ and _Sn_<sup>_′_that</sup> differ by only one element: 



where E _A_ denotes the expectation over the internal randomization of the algorithm. 

Stability can be used to derive an expected generalization bound for a learning 

117 

CHAPTER 7. STABILITY ANALYSIS 

118 

algorithm. We have the following result, which shows that the expected generalization loss of a stable learning algorithm is bounded by the expected training loss. 

**Theorem 7.2.** _If an algorithm A is ϵ-uniformly stable, then for Sn ∼D_<sup>_n_</sup> _:_ 



_Proof_ Consider two independent samples of size _n_ : _Sn_ = _{Z_ 1 _, . . . , Zn}_ and _Sn_<sup>_′_=</sup><sup>_{Z_</sup> 1<sup>_′, . . . , Z_</sup> _n_<sup>_′}_.Let</sup><sup>_S_</sup> _n_<sup>(</sup><sup>_i_)</sup> = _{Z_ 1 _, . . . , Zi−_ 1 _, Zi_<sup>_′, Zi_+1</sup><sup>_, . . . , Zn}_.Let</sup><sup>_p_(</sup> _t_<sup>_i_)</sup> be the distribution obtained by _A_ with _Sn_<sup>(</sup><sup>_i_).Wehave</sup> 





The first equation used the fact that _Zi_ is independent of _Sn_<sup>(</sup><sup>_i_),andthusthe</sup> distribution of _φ_ ( _A_ ( _Sn_<sup>(</sup><sup>_i_))</sup><sup>_, Zi_) is the same as that of</sup><sup>_φ_(</sup><sup>_A_(</sup><sup>_Sn_)</sup><sup>_, Z_) with</sup><sup>_Z∼D_. The</sup> inequality used the definition of uniform stability. 

It is also possible to obtain a large probability statement for any uniformly stable algorithm. The proof relies on a concentration inequality for leave-one-out estimate, which we leave to Section 7.6 (see Theorem 7.24). Using this result, we can obtain the following high probability result that bounds the generalization loss in terms of training loss for uniformly stable algorithms. 

**Theorem 7.3.** _Assume that A is ϵ uniformly stable. Let Sn_ = _{Z_ 1 _, . . . , Zn} ∼D_<sup>_n_</sup> _and Sn_<sup>_′_=</sup><sup>_{Z_</sup> 1<sup>_′, . . . , Z_</sup> _n_<sup>_′}∼Dnbeindependenttrainingandvalidationsetsofiid_</sup> _data from D. Assume that there exists α ∈_ (0 _,_ 1] _such that for some δ ∈_ (0 _,_ 1) _, we have the following inequality between the expected validation loss and the expected test loss. With probability at least_ 1 _− δ,_ 



_Then with probability at least_ 1 _− δ:_ 



_Proof_ We define 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

7.1. ALGORITHMIC STABILITY 

119 

Then E _Zg_ ( _Sn_ ; _Z_ ) = 0 and _g_ ( _Sn_ ; _z_ ) is 2 _ϵ_ uniformly stable. Theorem 7.24 implies that with probability at least 1 _− δ/_ 2: 



where 



Here _Sn_ +1 = _Sn ∪{Zn_ +1 _}_ with _Zn_ +1 _∼D_ independent of _Sn_ . Moreover, as in Theorem 7.24, we use the notation _Sn_<sup>(</sup><sup>_i_</sup> +1<sup>)=</sup><sup>_{Z_1</sup><sup>_, . . . , Zi−_1</sup><sup>_, Zn_+1</sup><sup>_, Zi_+1</sup><sup>_, . . . , Zn}_.</sup> 

In (7.1), we observe that E _Sn_ E _A φ_ ( _A_ ( _Sn_ ) _, D_ ) is a number that depends on _D_ , and E _Sn_ E _A φ_ ( _A_ ( _Sn_ ) _, Zi_<sup>_′_)dependsonlyon</sup><sup>_Z_</sup> _i_<sup>_′_.Thereforebychanging</sup><sup>_Sn_to</sup><sup>_S_</sup> _n_<sup>(</sup><sup>_i_</sup> +1<sup>)</sup> and _Zi_<sup>_′_to</sup><sup>_Zi_,weobtainthefollowingequivalentformof(7.1).Withprobability</sup> at least 1 _− δ/_ 2: 



The first inequality is equivalent to (7.1). The second inequality used Theorem 7.2. It follows from the union bound that with probability 1 _− δ_ , both (7.2) and (7.3) hold. This implies that 



In the proof, the first inequality used uniform stability of _A_ . The second inequality used (7.2) and (7.3). The third inequality used the uniform stability of _A_ . 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 7. STABILITY ANALYSIS 

120 

**Example 7.4.** For bounded loss _φ_ ( _·, ·_ ) _∈_ [0 _,_ 1], we can apply the additive Cherbound and let _α_ = 1 and 



in (7.1). This leads to the following inequality. With probability at least 1 _− δ_ : 



We note that in Example 7.4, if we employ a uniformly stable algorithm _A_ ( _Sn_ ) that achieves approximate empirical risk minimization, then the same argument in the standard analysis of ERM method (such as those in Chapter 3) can be used to derive an oracle inequality for _A_ that holds in high probability. An important advantage of deriving such results using stability analysis instead of empirical process in Chapter 3 is that stability analysis does not have to rely on covering numbers (or related concept such as Rademacher complexity). As we will see later, stability analysis can be used with computational procedures such as SGD for which the concept of covering numbers can be difficult to apply. 

**Example 7.5.** For bounded loss _φ_ ( _·, ·_ ) _∈_ [0 _,_ 1], we can apply the multiplicative Chernoff bound (2.11) with _α_ = 1 _− γ_ for _γ ∈_ (0 _,_ 1), and 



in (7.1). This leads to the following inequality. With probability at least 1 _− δ_ : 



The result implies that if one can design a stable learning algorithm that achieves near zero training loss, then the test loss is also near zero with large probability. One may also use Bernstein’s inequality together with the variance condition to obtain a similar result. We leave it as an exercise. 

In addition to uniform stability, we will also consider the following closely related concept of leave-one-out stability. It is easier to define training data dependent stability using leave-one-out stability, and to allow different training loss and test loss, as in (6.1). 

**Definition 7.6.** Given datasets _Sn_ = _{Z_ 1 _, . . . , Zn} ⊂Sn_ +1 = _{Z_ 1 _, . . . , Zn, Zn_ +1 _}_ . Let _ϵ_ ( _·, ·_ ) be a function _Z×Z_<sup>_n_+1</sup> _→_ R. The algorithm _A_ ( _Sn_ ) is _ϵ_ ( _·, ·_ ) leave-one-out stable if there exists _A_<sup>¯</sup> ( _Sn_ +1) such that for all ( _Zn_ +1 _, Sn_ +1): 



where E _A_ denotes the expectation over the internal randomization of the algorithm. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

7.2. REGULARIZED EMPIRICAL RISK MINIMIZATION 

121 

The following result shows that the expected generalization loss of _A_ on _Sn_ can be bounded by the expected training loss of _A_ on _Sn_ +1. The proof is left as an exercises. 

**Theorem 7.7.** _If an algorithm A is ϵ_ ( _·, ·_ ) _-leave-one-out stable, then_ 



For certain problems, one can obtain more refined results using the datadependent leave-one-out stability analysis of Theorem 7.7. We will mostly consider this approach in this chapter. 

## **7.2 Regularized Empirical Risk Minimization** 

In this section, we consider empirical risk minimization with convex functions, and analyze its generalization using stability. Properties of convex functions that are useful for our purpose can be found in Appendix A. Additional background on convex analysis and convex optimization can be found in Rockafellar (2015); Boyd and Vandenberghe (2004). 

We can now analyze the empirical risk minimization method for convex objectives. 

**Theorem 7.8.** _Assume that φ_ ( _w, z_ ) _is G_ ( _z_ ) _-Lipschitz in w on a closed convex set_ Ω _. The training loss φ_<sup>¯</sup> ( _w, Sn_ ) = _φ_ ( _w, Sn_ ) + _h_ ( _w_ ) _is λ strongly convex. Then the regularized empirical risk minimization method_ 



_is ϵ_ ( _Zn_ +1 _, Sn_ +1) = _G_ ( _Zn_ +1)<sup>2</sup> _/_ ( _λ_ ( _n_ +1)) _leave-one-out stable. If moreover we have_ sup _z G_ ( _z_ ) _≤ G, then it is ϵ_ = 2 _G_<sup>2</sup> _/_ ( _λn_ ) _uniformly stable._ 

_Assume h_ ( _w_ ) _≥_ 0 _, then the following expected oracle inequality holds:_ 



_Proof_ Consider _Sn_ and _Sn_ +1 = _Sn ∪{Zn_ +1 _}_ . We define 



and let _A_<sup>¯</sup> ( _Sn_ +1) be its minimizer on Ω. Using the optimality of _A_ ( _Sn_ ) and Proposition A.8, we obtain 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 7. STABILITY ANALYSIS 

122 

where _∇φ_<sup>¯</sup> ( _w, ·_ ) is the gradient with respect to _w_ . Since 



It follows that 



The first inequality used (7.4). The second inequality used the Lipschitz property of _φ_ . Since _A_<sup>¯</sup> ( _Sn_ +1) is the minimizer of _φ_<sup>¯</sup> ( _w, Sn_ +1) over _w ∈_ Ω, we obtain from Proposition A.8 that 



It follows that 



This proves the leave-one-out stability result. Similarly we can prove the uniform stability result, which we leave as an exercise. 

Now Theorem 7.7 implies that 



In the derivation, the inequality used the fact that _A_<sup>¯</sup> ( _Sn_ +1) is the minimizer of the regularized empirical risk, and _h_ ( _w_ ) _≥_ 0. 

**Example 7.9.** We consider the binary linear support vector machine (SVM) formulation with _y ∈{±_ 1 _}_ , which employs the hinge loss 



with linear function class _{f_ ( _w, x_ ) = _w_<sup>_⊤_</sup> _ψ_ ( _x_ ) : _w ∈_ R<sup>_d_</sup> _}_ , where _ψ_ ( _x_ ) _∈_ R<sup>_d_</sup> is a 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

7.2. REGULARIZED EMPIRICAL RISK MINIMIZATION 

123 

known feature vector. The loss _φ_ ( _w, z_ ) = _L_ ( _f_ ( _w, x_ ) _, y_ ) + _g_ ( _w_ ) with _h_ ( _w_ ) = 0 is _λ_ strongly convex. Moreover, the empirical minimizer _A_ ( _Sn_ ) satisfies 



Therefore _∥A_ ( _Sn_ ) _∥_ 2 _≤_ �2 _/λ_ . This implies that we may consider the restriction of SVM to 



without changing the solution. It is clear that on Ω, _φ_ ( _w, Z_ ) with _Z_ = ( _X, Y_ ) is _G_ ( _Z_ ) = _∥ψ_ ( _X_ ) _∥_ 2 + _√_ 2 _λ_ Lipschitz. From Theorem 7.8, we obtain the following expected generalization bound for SVM: 



Using Theorem 7.3, one can obtain an oracle inequality that holds with high probability. We leave it as an exercise. 

Similarly to the case of Lipschitz convex objective function, we have the following result for smooth convex functions. 

**Theorem 7.10.** _Assume that φ_ ( _w, z_ ) _is λ-strongly convex and L-smooth in w on_ R<sup>_d_</sup> _. Then the empirical risk minimization method_ 



_is ϵ_ ( _Zn_ +1 _, Sn_ +1) = (1+ _L/_ (2 _λn_ )) _∥∇φ_ ( _A_ ( _Sn_ +1) _, Zn_ +1) _∥_ 2<sup>2</sup><sup>_/_(</sup><sup>_λn_)</sup><sup>_leave-one-outstable_</sup> _with respect to A_<sup>¯</sup> ( _Sn_ +1) = _A_ ( _Sn_ +1) _._ 

_Moreover, if L ≤_ 0 _._ 2 _λn, then the following expected oracle inequality holds:_ 



_Proof_ Consider _Sn_ and _Sn_ +1 = _Sn ∪{Zn_ +1 _}_ . Let 



Using the optimality of _A_ ( _Sn_ +1) and Proposition A.8, we obtain 



Since 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 7. STABILITY ANALYSIS 

124 

it follows that 



The first inequality used (7.5). Using the fact that _A_ ( _Sn_ ) is the minimizer of _φ_ ( _·, Sn_ ), we obtain from Proposition A.8 that 



We thus obtain 



The first inequality used the smoothness of _φ_ . The second inequality used CauchySchwartz. The third inequality used (7.6). This implies the stability result. 

Next we want to apply Theorem 7.7, and need to bound the right hand side. For this purpose, we consider an arbitrary _w ∈_ R<sup>_d_</sup> : 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

7.2. REGULARIZED EMPIRICAL RISK MINIMIZATION 

125 

In the above derivation, the first inequality used the algebraic calculation _∥a∥_ 2<sup>2</sup><sup>_≤_</sup> 2 _∥b − a∥_ 2<sup>2+2</sup><sup>_∥b∥_2</sup> 2<sup>.ThesecondinequalityisduetoPropositionA.7.Thelast</sup> equation used the fact that _∇φ_ ( _A_ ( _Sn_ +1) _, Sn_ +1) = 0. 

Now we obtain 



In the above derivation, the first inequality is an application of Theorem 7.7, with the leave-one-out stability result in the first part of the theorem. The second inequality used (7.7). The third inequality used the fact that _φ_ ( _A_ ( _Sn_ +1) _, Sn_ +1) _≤ φ_ ( _w, Sn_ +1), and 1 _−_ (4 _L_ (1 + _L/_ (2 _λn_ ))) _/_ ( _λn_ ) _≥_ 0. We can now use _L/_ ( _λn_ ) _≤_ 0 _._ 2 to obtain the desired bound. 

**Example 7.11.** We consider the linear ridge regression formulation with _y ∈_ R, which employs the least squares loss 



with linear function class _{f_ ( _w, x_ ) = _w_<sup>_⊤_</sup> _ψ_ ( _x_ ) : _w ∈_ R<sup>_d_</sup> _}_ , where _ψ_ ( _x_ ) _∈_ R<sup>_d_</sup> is a known feature vector. The loss _φ_ ( _w, z_ ) = _L_ ( _f_ ( _w, x_ ) _, y_ ) + _g_ ( _w_ ) is _λ_ strongly convex. Moreover, _φ_ ( _w, z_ ) is 



smooth for all _z_ = ( _x, y_ ). If _L ≤_ 0 _._ 2 _λn_ , we obtain from Theorem 7.10 



In particular, if there exists _w∗_ such that noise is uniformly bounded: 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 7. STABILITY ANALYSIS 

126 

for all _X_ , then 



The result is superior to what can be obtained from Theorem 7.8 when _σ_<sup>2</sup> is small. 

## **7.3 Stochastic Gradient Descent** 

Stochastic Gradient Descent (SGD) has been widely used in practical machine learning applications. Since it approximately implements the ERM method, one may use empirical process and uniform convergence to study its generalization behavior. However, one challenge is the lack of covering number bounds for general convex objective functions, although covering number results for special cases such as linear function classes exist. Another consideration is that in many applications, one may need to run SGD for finite iterations without achieving convergence to the minimum solution of ERM. In such case, it is often much easier to obtain generalization analysis for SGD using the stability analysis, as demonstrated in (Hardt et al., 2016). 

**Algorithm 7.1:** Stochastic Gradient Descent Algorithm 

**Input:** _Sn_ , _φ_<sup>¯</sup> ( _w, z_ ), _w_ 0, learning rates _{ηt}_ **Output:** _wT_ **1 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 2** Randomly pick _Z ∼Sn_ **3** Let _wt_ = projΩ( _wt−_ 1 _− ηt∇φ_<sup>¯</sup> ( _wt−_ 1 _, Z_ )) **4** where projΩ( _v_ ) = arg min _u∈_ Ω _∥u − v∥_ 2<sup>2</sup> 

**Return:** _wT_ 

A key lemma in (Hardt et al., 2016) to analyze SGD for smooth convex function is the contraction property of SGD as follows. 

**Lemma 7.12** (SGD contraction) **.** _Assume φ_<sup>¯</sup> ( _w_ ) _is an L-smooth and λ-strongly convex function of w on_ R<sup>_d_</sup> _. Given any w, w_<sup>_′_</sup> _∈_ R<sup>_d_</sup> _, we have for all η ∈_ [0 _,_ 1 _/L_ ] _:_ 



_Proof_ Let 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

7.3. STOCHASTIC GRADIENT DESCENT 

127 

We have 

_∥_ ( _w − η∇φ_<sup>¯</sup> ( _w_ )) _−_ ( _w_<sup>_′_</sup> _− η∇φ_<sup>¯</sup> ( _w_<sup>_′_</sup> )) _∥_ 2<sup>2</sup> 



In the derivation, the first inequality used Proposition A.7. The second inequality used _ηL ≤_ 1. The third inequality used the strong convexity. We can now obtain the desired result by noticing that _∥_ projΩ( _u_ ) _−_ projΩ( _v_ ) _∥_ 2 _≤∥u − v∥_ 2. 

We have the following uniform stability result for the SGD procedure. The proof is similar to that of Theorem 7.14, and we leave it as an exercise. 

**Theorem 7.13.** _Assume that φ_<sup>¯</sup> ( _w, z_ ) = _φ_ ( _w, z_ ) + _h_ ( _w_ ) _is λ-strongly convex and L-smooth in w on_ R<sup>_d_</sup> _. Moreover, assume φ_ ( _w, z_ ) _is G Lipschitz on_ Ω _. Define b_ 0 = 0 _, and for t ≥_ 1 _:_ 



_where ηt ∈_ [0 _,_ 1 _/L_ ] _. Then after T steps, Algorithm 7.1 is ϵ_ = _bT uniformly stable with respect to φ_ ( _w, z_ ) _. The result also holds for an arbitrary convex combination of the form_<sup>�</sup><sup>_T_</sup> _t_ =0<sup>_αtwtastheoutputofAlgorithm7.1,aslongastheconvexcoef-_</sup> _ficient αt (where αt ≥_ 0 _and_<sup>�</sup><sup>_T_</sup> _t_ =0<sup>_αt_= 1</sup><sup>_)aredrawnfromaknowndistribution._</sup> 

We also have the following more refined result for SGD using the leave-one-out stability analysis. 

**Theorem 7.14.** _Assume that φ_<sup>¯</sup> ( _w, z_ ) = _φ_ ( _w, z_ ) + _h_ ( _w_ ) _is λ-strongly convex and L-smooth in w on_ R<sup>_d_</sup> _. Moreover, assume φ_ ( _w, z_ ) _is G_ ( _z_ ) _Lipschitz on_ Ω _. Define b_ 0 = 0 _, and for t ≥_ 1 _:_ 



_where ηt ∈_ [0 _,_ 1 _/L_ ] _. We have the following result for Algorithm 7.1_ 



_where we use_ E _A to denote the randomization in SGD. The result also holds for an arbitrary convex combination of the form_<sup>�</sup><sup>_T_</sup> _t_ =0<sup>_αtwtastheoutputofAlgo-_</sup> _rithm 7.1, as long as the convex coefficient αt (where αt ≥_ 0 _and_<sup>�</sup><sup>_T_</sup> _t_ =0<sup>_αt_=1</sup><sup>_)_</sup> _are drawn from a known distribution._ 

_Proof_ Let _wt_ be the intermediate steps of SGD on _Sn_ , and _wt_<sup>_′_be the intermediate</sup> steps of SGD on _Sn_ +1 = _Sn ∪{Zn_ +1 _}_ . We consider a coupling of _wt_ and _wt_<sup>_′_,with</sup> the same randomization for _wt_ and _wt_<sup>_′_,exceptwhenwechoose</sup><sup>_Z_=</sup><sup>_Zn_+1for</sup> update of _wt_<sup>_′_,wechoose</sup><sup>_Z_=</sup><sup>_Zi_forupdatingof</sup><sup>_wt_with</sup><sup>_i_drawnuniformlyfrom</sup> 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 7. STABILITY ANALYSIS 

128 

[ _n_ ]. It follows from Lemma 7.12 that with this coupling, at each time _t_ , with probability _n/_ ( _n_ + 1), we choose the same _Zi_ to update both _wt_ and _wt_<sup>_′_:</sup> 



With probability 1 _/_ ( _n_ + 1), we have 



where _i_ is uniformly from [ _n_ ]. Note that the second inequality used Lemma 7.12 again. Therefore 



We now 



then we have 



It follows from the definition of _bt_ that _st ≤ bt_ . Therefore 



Assume that _A_ ( _Sn_ ) returns an arbitrary convex combination<sup>�</sup><sup>_T_</sup> _t_ =0<sup>_αtwt_,and</sup> _A_ ( _Sn_ +1) returns<sup>�</sup><sup>_T_</sup> _t_ =0<sup>_αtw_</sup> _t_<sup>_′_withthesamerandomcoefficients</sup><sup>_αt_fromthesame</sup> known distribution. Let _ϵ_ ( _Zn_ +1 _, Sn_ +1) = E _Aφ_ ( _A_ ( _Sn_ ) _, Zn_ +1) _−_ E _Aφ_ ( _A_ ( _Sn_ +1) _, Zn_ +1), then from the Lipschitz condition of _φ_ ( _w, Zn_ +1) and (7.8), we obtain 



We obtain from Theorem 7.7 that 



This proves the desired result. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

7.4. GIBBS ALGORITHM FOR NON-CONVEX PROBLEMS 

129 

**Example 7.15.** We can obtain an oracle inequality from Theorem 7.14 by assuming further that after _T_ SGD steps, Algorithm 7.1 approximately solves the empirical risk minimization problem as 



for some _ϵT_ ( _·_ ) _≥_ 0. Here _A_ may return a convex combination of _wt_ for _t ≤ T_ (see Section 14.4 for examples of such convergence results). Using such a result, we obtain from Theorem 7.14 the following oracle inequality: 



In particular, we consider _h_ ( _w_ ) = 0, a constant learning rate _η_ for _T_ steps, and a final estimator _wt_ from the algorithm with _t_ drawn uniformly from 0 to _T −_ 1. Then Theorem 14.5 implies that 



where we assume that _∥∇φ_ ( _w, z_ ) _∥_ 2 _≤ G_ . In this case, _bt_ = 2 _ηtG_<sup>2</sup> _/_ ( _n_ + 1). This implies a bound 



Note that this result allows _T > n_ , which means we can run SGD repeatedly over the dataset _Sn_ . For example, we may take _T_ = _n_<sup>2</sup> , and _η_ = _O_ ( _n_<sup>_−_1</sup><sup>_._5</sup> ) to obtain a convergence rate of _O_ (1 _/_<sup>_√_</sup> _<u>n</u>_ <u>).</u> 

In comparison, the online to batch conversion technique in Chapter 14 requires each data point _Z_ in the algorithm to be drawn independently from _D_ . This means that the online to batch technique applies only when we run SGD over the dataset _Sn_ once via sampling without replacement. It does not handle the situation that SGD is applied to the dataset repeatedly (as commonly done in practice). 

Similar to Theorem 7.10, it is possible to remove the Lipschitz condition in Theorem 7.14, and obtain bounds in terms of smoothness only. However, the resulting bound will become more complex, and we will leave it as an exercise. 

## **7.4 Gibbs Algorithm for Non-convex Problems** 

Although it is possible to derive stability results for SGD for nonconvex problems under restrictive conditions, as shown in Hardt et al. (2016), the resulting bounds are rather weak. It is also difficult to establish stability results for the ERM solution of nonconvex optimization. However, in the following, we show that appropriate randomization can be used to achieve stability even in the nonconvex case. In particular, we consider a learning algorithm that randomly draws _w_ from 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 7. STABILITY ANALYSIS 

130 

the following “posterior distribution”, also referred to as the _Gibbs distribution_ : 



where _β >_ 0 is a tuning parameter, _p_ 0( _w_ ) is a prior on Ω. This randomized learning algorithm is often referred to as the _Gibbs Algorithm_ , and its test performance is measured by the expectation: 



If _β →∞_ , the method converges to ERM. We have the following characterization of Gibbs distribution, which means that it can be regarded as the entropy-regularized ERM over the probability distributions ∆(Ω). Here KL( _·||·_ ) is the KL-divergence defined in Appendix B, which is always non-negative. 

**Proposition 7.16.** _Given any function U_ ( _w_ ) _, we have_ 



_and the solution is achieved by the Gibbs distribution q_ ( _w_ ) _∝ p_ 0( _w_ ) exp( _−U_ ( _w_ )) _. Here_ ∆(Ω) _denotes the set of probability distributions on_ Ω _._ 

_Proof_ Let _C_ = E _w∼p_ 0 exp ( _−U_ ( _w_ )). Then we have 



The inequality used the fact that KL( _p||q_ ) _≥_ 0, and the equality holds when _p_ ( _w_ ) = _q_ ( _w_ ). 

Proposition 7.16 implies that (7.9) satisfies 



We can now state the uniform stability result for the Gibbs distribution. 

**Theorem 7.17.** _Consider the Gibbs algorithm A described in_ (7.9) _. If for all z:_ sup _w∈_ Ω _φ_ ( _w, z_ ) _−_ inf _w∈_ Ω _φ_ ( _w, z_ ) _≤ M , then A is ϵ_ = 0 _._ 5( _e_<sup>2</sup><sup>_βM_</sup> _−_ 1) _M uniformly stable._ 

_Proof_ Consider _Sn_ and _Sn_<sup>_′_thatdifferbyoneelement.Itfollowsthatforany</sup><sup>_w_:</sup> 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

7.4. GIBBS ALGORITHM FOR NON-CONVEX PROBLEMS 

131 

This implies that 



Therefore 



This implies that 



Now let _φ_<sup>¯</sup> ( _z_ ) = inf _w φ_ ( _w, z_ ) + 0 _._ 5 _M_ . We know that _|φ_ ( _w, z_ ) _− φ_<sup>¯</sup> ( _z_ ) _| ≤_ 0 _._ 5 _M_ . Therefore 



This proves the desired result. 

**Example 7.18.** Consider the Gibbs algorithm _A_ described in (7.9) with bounded loss as in Theorem 7.17. We have the following expected oracle inequality. 



The first inequality followed from Theorem 7.2 and Theorem 7.17. The second inequality used non-negativity of KL-divergence. The last inequality used the fact that the Gibbs distribution minimizes (7.10). 

We can also prove a more refined result using leave-one-out stability as follows. 

**Theorem 7.19.** _Consider the Gibbs algorithm A described in_ (7.9) _. If for all z:_ sup _w∈_ Ω _φ_ ( _w, z_ ) _−_ inf _w∈_ Ω _φ_ ( _w, z_ ) _≤ M , then A is_ 



_leave-one-out stable. If the loss function φ satisfies the variance condition_ (3.13) _which we restate as follows:_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 7. STABILITY ANALYSIS 

132 

_then for β >_ 0 _such that c_ 2 = 1 _− c_ 1 _βe_<sup>_βM_</sup> _>_ 0 _, we have_ 



_where_ Ω( _ϵ_ ) = _{w ∈_ Ω: _φ_ ( _w, D_ ) _≤_ inf _w φ_ ( _w, D_ ) + _ϵ}._ 

_Proof_ ˜ Let _A_<sup>¯</sup> ( _Sn_ +1 _, Zn_ +1) be the Gibbs algorithm with ˜posterior _p_ ( _·|Sn_ +1). Let _φ_ ( _w, Zn_ +1) = _φ_ ( _w, Zn_ +1) _−_ E _w′∼p_ ( _·|Sn_ ) _φ_ ( _w_<sup>_′_</sup> _, Zn_ +1). Then _|φ_ ( _w, Zn_ +1) _| ≤ M_ . Note 



E _w∼p_ ( _·|Sn_ ) _φ_<sup>˜</sup> ( _w, Zn_ +1) =0 _._ It follows that 





In the above derivations, the second equality used (7.11), and the third equality used (7.12). The first inequality used the Jensen’s inequality and the convexity of exp( _·_ ); the second inequality used _|e_<sup>_a_</sup> _−_ 1 _| ≤ e_<sup>_|a|_</sup> _|a|_ . The last equation used (7.12). This proves the desired leave-one-out stability result. It follows that 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

7.5. STOCHASTIC GRADIENT LANGEVIN DYNAMICS 

133 

The first inequality follows from Theorem 7.7. The second inequality used the fact that KL-divergence is non-negative. The third inequality used (7.10), and E _Sn_ +1 _φ_ ( _w, Sn_ +1) = _φ_ ( _w, D_ ). The last inequality used the variance condition. We can obtain the desired oracle inequality of the theorem by rearranging the terms. 

The second part of the oracle inequality is achieved by taking 



so that KL( _p||p_ 0) = _−_ ln _p_ 0(Ω( _ϵ_ )). 

**Example 7.20.** Consider a parametric model, where Ω _⊂_ R<sup>_d_</sup> is a compact set, and _w∗ ∈_ arg min _w∈_ Ω _φ_ ( _w, D_ ). Assume that _φ_ ( _w, z_ ) _− φ_ ( _w∗, z_ ) _≤ cm∥w − w∗∥_ 2, and _−_ ln _p_ 0( _{w ∈_ Ω: _∥w − w∗∥_ 2 _≤ ϵ}_ ) _≥ c_<sup>_′_</sup> 1<sup>+</sup><sup>_c′_</sup> 2<sup>_d_ln(1</sup><sup>_/ϵ_). Then thereexists</sup><sup>_c′_</sup> 3<sup>_>_0</sup> such that for _βn ≥_ 1: 



The oracle inequality in Theorem 7.19 becomes 



**Example 7.21.** Consider the least squares problem of Example 3.18: 



and we assume that _f_ ( _w∗, x_ ) = E[ _y|x_ ] with _w∗ ∈_ Ω. Then the variance condition is satisfied with _c_ 0 = 0 and _c_ 1 = 2. We can take _β_ so that 4 _βe_<sup>_β_</sup> _<_ 1. In the parametric model case of Example 7.20, this leads to a fast rate 



## **7.5 Stochastic Gradient Langevin Dynamics** 

Similar to SGD, which solves ERM, the stochastic gradient Langevin dynamics (SGLD) algorithm can be used to sample from the Gibbs distribution. The resulting algorithm, described in Algorithm 7.2, is a slight modification of Algorithm 7.1 with the addition of Gaussian noise _ϵt_ at each step. 

Since the addition of Gaussian noise is independent of the data, the stability analysis of SGD still holds. For strongly convex functions, we can thus obtain the following result. The proof is left as an exercise. 

**Theorem 7.22.** _Assume that φ_<sup>¯</sup> ( _w, z_ ) = _φ_ ( _w, z_ ) + _h_ ( _w_ ) _is λ-strongly convex and L-smooth in w on_ R<sup>_d_</sup> _. Moreover, assume φ_ ( _w, z_ ) _is G Lipschitz on_ Ω _. Define b_ 0 = 0 _, and for t ≥_ 1 _:_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 7. STABILITY ANALYSIS 

134 

**Algorithm 7.2:** Stochastic Gradient Langevin Dynamics Algorithm 

**Input:** _Sn_ , _φ_<sup>¯</sup> ( _w, z_ ), _p_ 0, learning rates _{ηt}_ **Output:** _wT_ 

**1** Draw _w_ 0 _∼ p_ 0 **2 for** _t_ = 1 _,_ 2 _, . . . , T_ **do** 

**3** Randomly pick _Z ∼Sn_ uniformly at random **4** Randomly generate _ϵt ∼ N_ (0 _, I_ ) ˜ **5** Let _wt_ = _wt−_ 1 _− ηt∇φ_<sup>¯</sup> ( _wt−_ 1 _, Z_ ) + �2 _ηt/βϵt_ **6** Let _wt_ = projΩ( ˜ _wt_ ), where projΩ( _v_ ) = arg min _u∈_ Ω _∥u − v∥_ 2<sup>2</sup> **Return:** _wT_ 

_where ηt ∈_ [0 _,_ 1 _/L_ ] _. Then after T steps, Algorithm 7.2 is ϵ_ = _bT uniformly stable. The result also holds for any random convex combinations of {wt_ : _t ≤ T } with combination coefficients from a known distribution._ 

It is also possible to derive stability result with nonconvex functions for SGLD. However, it is simpler to analyze the non-stochastic version (often referred to as unadjusted Langevin algorithm, or ULA), where line 5 of Algorithm 7.2 is replaced by the full gradient 



**Theorem 7.23.** _Assume that for all z, z_<sup>_′_</sup> _, φ_<sup>¯</sup> ( _w, z_ ) _− φ_<sup>¯</sup> ( _w, z_<sup>_′_</sup> ) _is a G-Lipschitz function of w on_ Ω _⊂_ R<sup>_d_</sup> _(but φ_<sup>¯</sup> _is not necessarily convex):_ 



_Assume also that_ sup _w,w′∈_ Ω[ _φ_ ( _w, z_ ) _− φ_ ( _w_<sup>_′_</sup> _, z_ )] _≤ M for all z. Then after T steps, ULA (with line 5 of Algorithm 7.2 replaced by_ (7.13) _) is ϵT uniformly stable with ϵT_ =<sup>_<u>MG</u>_</sup> 4 _n_ ~~�~~ 2 _β_<sup><u>�</u></sup><sup>_T_</sup> _t_ =1<sup>_ηt._</sup> 

_Proof_ Consider _Sn ∼D_<sup>_n_</sup> and _Sn_<sup>_′_=(</sup><sup>_Sn\ {Zn}_)</sup><sup>_∪{Z_</sup> _n_<sup>_′}_,where</sup><sup>_Z_</sup> _n_<sup>_′∼D_isa</sup> sample independent of _Sn_ . Let _wt_ and _wt_<sup>_′_betheoutputsofULAwith</sup><sup>_Sn_and</sup> _Sn_<sup>_′_respectively.Moreover,let</sup><sup>_pt_bethedistributionof</sup><sup>_wt_;let</sup><sup>_pt,t−_1(</sup><sup>_wt, wt−_1)be</sup> ˜ the joint distribution of ( _wt, wt−_ 1); let _pt,t−_ 1( ˜ _wt, wt−_ 1) be the joint distribution of ( ˜ _wt, wt−_ 1). Similarly we define _p_<sup>_′_</sup> _t_<sup>,</sup><sup>_p′_</sup> _t,t−_ 1<sup>and</sup><sup>_p_˜</sup><sup>_′_</sup> _t,t−_ 1<sup>.</sup> ¯ ¯ We now let _wt_ ( _w_ ) = _w − ηt∇φ_<sup>¯</sup> ( _w, Sn_ ) and _wt_<sup>_′_(</sup><sup>_w_) =</sup><sup>_w −ηt∇φ_¯(</sup><sup>_w, S_</sup> _n_<sup>_′_).Then</sup> 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

7.6. CONCENTRATION OF UNIFORMLY STABLE ALGORITHM 

135 

We have 



The second equality used the formula for the KL divergence of two Gaussian distributions. The last inequality used the Lipschitz condition of _φ_<sup>¯</sup> . We have 



The first inequality used the fact that KL-divergence is always non-negative. The second inequality used the data processing inequality for KL-divergence (see Theorem B.4). The last inequality used (7.14). 

By summing over _t_ = 1 to _t_ = _T_ and note that _p_ 0 = _p_<sup>_′_</sup> 0<sup>,weobtain</sup> 



Therefore for any _z_ , we have 





The first inequality used the definition of TV-norm in Proposition B.7. The second inequality used Pinsker’s inequality of Theorem B.9. The last inequality used (7.15). This implies the desired result. 

The stability result in Theorem 7.23 can be applied to nonconvex functions. Moreover, the final bound depends on _β_ . When _β →_ 0, we obtain a more and more stable algorithm. This is consistent with the analysis of the Gibbs algorithm. In comparison, the result of Theorem 7.22, which only applies to convex functions, does not depend on _β_ . 

## **7.6 Concentration of Uniformly Stable Leave-One-Out Estimate** 

This section proves a concentration inequality for an appropriately defined leaveone-out estimate of a uniformly stable algorithm, which is analogous to McDi- 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 7. STABILITY ANALYSIS 

136 

armid’s inequality and Talagrand’s inequality for empirical processes (see Chapter 6). Theorem 7.3 shows that this result can be used to obtain high probability generalization bounds for uniformly stable algorithms. 

**Theorem 7.24.** _Assume that g_ ( _Sn_ ; _z_ ) _is zero-mean with respect to z for all Sn:_ 



_Assume also that g_ ( _Sn_ ; _z_ ) _is an ϵ uniformly stable function. That is, for all z ∈Z, and Sn_<sup>_′thatdiffersfromSnbyoneelement,wehave_</sup> 



_Assume that Sn_ +1 _∼D_<sup>_n_+1</sup> _contains n_ + 1 _iid samples from D. Let_ 



_where Sn_<sup>(</sup><sup>_i_</sup> +1<sup>)=</sup><sup>_{Z_1</sup><sup>_, . . . , Zi−_1</sup><sup>_, Zn_+1</sup><sup>_, Zi_+1</sup><sup>_, . . . , Zn}.Thenforallλ ≤_0</sup><sup>_._4</sup><sup>_/ϵ:_</sup> ln E _Sn_ +1 exp (( _λ/L_ )¯ _g_ ( _Sn_ +1)) _≤_ 1 _._ 5 _λ_<sup>2</sup> _ϵ_<sup>2</sup> _,_ 

_where L_ = _⌈_ log2 _n⌉. This implies that with probability at least_ 1 _− δ:_ 



The proof requires the following result from Boucheron et al. (2003). 

˜ **Proposition 7.25.** _Consider a functional g_ ( _S_ ) _, where S_ = [ _Z_ 1 _, . . . , Zm_ ] _∼D_<sup>_m_</sup> _contains m iid samples from D. Let S_<sup>(</sup><sup>_i_)</sup> = [ _Z_ 1 _, . . . , Zi−_ 1 _, Zi_<sup>_′, Zi_+1</sup><sup>_, . . . , Zm_]</sup><sup>_,where_</sup> _S_<sup>_′_</sup> = _{Zi_<sup>_′} ∼DmaremiidsamplesfromDthatareindependentofS.Define_</sup> 



_Assume that there exist positive constants a and b such that_ 



_then for λ ∈_ (0 _,_ 1 _/a_ ) _:_ 



Note that for notation simplicity, in the following proof our notation assumes that _g_ ( _Sn, z_ ) is invariant to the order of elements in _Sn_ . The analysis itself holds without this assumption, but directly working with the general version requires a more complex notation, which creates unnecessary difficulty for understanding the main argument. We will thus write the proof with this assumption so that the 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

~~—>~~ | ~~-~~ y| ~~->r~~ | | ~~->r~~ | ~~—~~ r | ~~—~~ ) ~~— (~~ -s \ 

CHAPTER 7. STABILITY ANALYSIS 

138 

on _Zn_ +1 due to the expectation with respect to _Zn_ +1 over _Sm_<sup>(</sup><sup>_i_)</sup><sup>_′_and</sup><sup>_S_</sup> _m_<sup>(</sup><sup>_i_)):</sup> 



We note that for _i ≤ m_<sup>_′_</sup> , [E _Sm_ ( _i_ )<sup>_′g_(</sup><sup>_S_</sup> _n_<sup>(</sup><sup>_i_</sup> +1<sup>);</sup><sup>_Zi_)</sup><sup>_−_E</sup> _Sm_<sup>(</sup><sup>_i_)</sup><sup>_g_(</sup><sup>_S_</sup> _n_<sup>(</sup><sup>_i_</sup> +1<sup>);</sup><sup>_Zi_)] as a function of</sup><sup>_Zi∼_</sup> _D_ has the same distribution as that of [E _Sm′ g_ ( _Sn_ ; _Z_ ) _−_ E _Smg_ ( _Sn_ ; _Z_ )] (considered as a function of _Z ∼D_ ). Since _{Zi}_ are independent for _i ≤ m_<sup>_′_</sup> , conditioned on _Sm′_ +1 _,m_ , it follows that 



We also have the following result, which is a direct consequence of uniform stability. 



In the following derivations, we further assume that _m ≤_ 2 _m_<sup>_′_</sup> . It implies that 



It follows that 



In the above derivation, the first equality used (7.18). The first inequality used log( _z_ ) _≤ z −_ 1, and E _Zg_ ( _·_ ; _Z_ ) = 0 (which is an assumption of the theorem). The second inequality used the fact that _φ_ ( _z_ ) = ( _e_<sup>_z_</sup> _− z −_ 1) _/z_<sup>2</sup> is increasing in _z_ (this is the same derivation as that of the Bennett’s inequality), and _mλ_<sup>_′_[E</sup><sup>_S_</sup> _m_<sup>_′g_(</sup><sup>_Sn_;</sup><sup>_Z_)</sup><sup>_−_</sup> E _Smg_ ( _Sn_ ; _Z_ )]] _≤_ 0 _._ 4 (which follows from (7.19) , and _λ_ ( _m − m_<sup>_′_</sup> ) _ϵ/m_<sup>_′_</sup> _≤ λϵ ≤_ 0 _._ 4). Using the Efron-Stein inequality (6.10) and the _ϵ_ uniform stability of _g_ ( _·, ·_ ), we have 



Note also that for _Sm′_ +1 _,m_ and _Sm_<sup>_′′_</sup> +1 _,m_<sup>thatdifferbyoneelement,wehave</sup> 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

7.6. CONCENTRATION OF UNIFORMLY STABLE ALGORITHM 

139 

Therefore by summing over _Sm_<sup>_′′_</sup> +1 _,m_<sup>whichdiffersfrom</sup><sup>_Sm′_+1</sup><sup>_,m_at</sup><sup>_j_=</sup><sup>_m′_+</sup> 1 _, . . . , m_ , we know that with _g_<sup>_′′_</sup> , the condition of Proposition 7.25 holds with _a_ = 5( _m − m_<sup>_′_</sup> ) _ϵ_<sup>2</sup> and _b_ = 5( _m − m_<sup>_′_</sup> ) _ϵ_<sup>4</sup> . Therefore 



The second inequality used Proposition 7.25 for _g_<sup>_′′_</sup> , with _a_ = 5( _m−m_<sup>_′_</sup> ) _ϵ_<sup>2</sup> and _b_ = 5( _m−m_<sup>_′_</sup> ) _ϵ_<sup>4</sup> , and observe that (1 _−_ ( _λ_<sup>2</sup> _/m_<sup>_′_</sup> ) _φ_ (0 _._ 4) _a_ )<sup>_−_1</sup> _≤_ (1 _−_ 5(0 _._ 4)<sup>2</sup> _φ_ (0 _._ 4))<sup>_−_1</sup> _≤_ 2. By combining the above inequality with (7.20), and using _φ_ (0 _._ 4) _≤_ 0 _._ 58 and ( _m − m_<sup>_′_</sup> ) _/m_<sup>_′_</sup> _≤_ 1, we obtain 



The second inequality used _λϵ ≤_ 0 _._ 4. 

Now consider an increasing sequence 1 = _m_ 0 _< m_ 1 _< m_ 2 _< · · · < mL_ = _n_ , where _mℓ_ = min(2<sup>_ℓ_</sup> _, n_ ). Let _λℓ_ = _λ/ℓ_ for _ℓ>_ 0 and _λ_ 0 = _λ_ . We have 



The first inequality used (7.16). The second inequality used (7.17) for _ℓ>_ 1, and it becomes equality for _ℓ_ = 1. The third inequality used (7.21). 

By summing _ℓ_ from 1 to _L_ , we obtain 



This implies the first desired bound. 

The second inequality follows from the Markov’s inequality as follows. Consider _ϵ_<sup>_′_</sup> = 2 _._ 5 ln(1 _/δ_ ) _>_ 0 and take _λ_ = 0 _._ 4 _/ϵ_ . We have 



This implies the second bound. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 7. STABILITY ANALYSIS 

140 

## **7.7 Historical and Bibliographical Remarks** 

The idea of uniform stability for non-randomized algorithms was introduced by Bousquet and Elisseeff (2002), where the authors also considered deriving concentration bounds using McDiarmid’s inequality. However, concentration results obtained there were suboptimal. Better concentration bounds were obtained recently by Feldman and Vondrak (2019) and Bousquet et al. (2020). Theorem 7.24 is motivated by their analysis, and the result is comparable to that of Bousquet et al. (2020), but with a different proof. However, the concentration result holds only for uniform stability. The idea of using leave-one-out analysis to obtain expected oracle inequality was considered by Zhang (2003a). The leave-one-out stability analysis presented here generalizes the analysis of (Zhang, 2003a). 

The randomized stability, discussed in this chapter, was introduced by Hardt et al. (2016) to analyze the generalization of stochastic gradient descent. It has become a popular theoretical tool for analyzing SGD-like procedures when it is necessary to run such algorithms multiple times over the data. For example, it is an essential technique in the generalization analysis of differentially private SGD (Bassily et al., 2020). 

Gibbs distribution has its origin in physics (Gibbs, 1902). It has been studied in machine learning by McAllester (1999) in the supervised learning setting, and by Freund and Schapire (1997) in the online learning setting. 

The SGLD algorithm was proposed by Welling and Teh (2011) for sampling from Bayesian posterior distributions (or Gibbs distributions). Its analysis has drawn significant interests, both for convergence and for generalization. The generalization analysis of SGLD for nonconvex functions in Theorem 7.23 is related to the information theoretical approach studied in some recent work (see Russo and Zou, 2016, 2019; Xu and Raginsky, 2017; Mou et al., 2018), which we will study further in Section 10.3. 

The SGLD algorithm has also appeared in differential privacy, and in that setting it is referred to as the differentially private SGD (DP-SGD) algorithm (Abadi et al., 2016). Theorem 7.23 employs techniques simplified from the DPSGD analysis (see Abadi et al., 2016). A more complex analysis that handles SGLD can be found in Li et al. (2020). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

Exercises 

141 

## **Exercises** 

- 7.1 Assume that the variance condition (3.13) holds. Use Bernstein inequality to derive a bound for (7.1). Derive an oracle inequality using Theorem 7.3. 

- 7.2 Prove Theorem 7.7. 

- 7.3 In Example 7.9, assume that _∥ψ_ ( _X_ ) _∥_ 2 _≤ B_ for all _X_ . Derive an oracle inequality for SVM that holds in high probability using Theorem 7.3. 

- 7.4 Prove the uniform stability result in Theorem 7.8, under the assumption that sup _Z G_ ( _Z_ ) _≤ G_ . 

- 7.5 Assume a learning algorithm _A_ is deterministic and _ϵ_ uniformly stable on training data of size _n_ . Use McDiarmid’s inequality to obtain a concentration bound. Apply it to the case of Exercise 7.4. Compare the result to that of Theorem 7.3. 

- 7.6 Give an example to show that under the conditions of Theorem 7.10, ERM may not be uniformly stable. 

- 7.7 Use Theorem 7.8 to derive an expected generalization bound for the ridge regression problem in Example 7.11. 

- 7.8 Consider regularized binary linear logistic regression for _y ∈{±_ 1 _}_ : 



where _f_ ( _w, x_ ) = _w_<sup>_⊤_</sup> _ψ_ ( _x_ ) for some known feature vector _ψ_ ( _x_ ). Assume that there exists _B >_ 0 such that sup _X ∥ψ_ ( _X_ ) _∥_ 2 _≤ B_ . Show that _φ_ ( _w, z_ ) = _L_ ( _f_ ( _w, x_ ) _, y_ ) + _g_ ( _w_ ) is both Lipschitz (in a finite region) and smooth. Derive an expected oracle inequality using both Theorem 7.8 and Theorem 7.10. When does Theorem 7.10 give a better bound? 7.9 Prove Theorem 7.13. 

- 7.10 Under the condition of previous problem with sup _X ∥ψ_ ( _X_ ) _∥_ 2 _≤ B_ . Assume we solve the regularized logistic regression problem using SGD. Assume that we choose a learning rate _ηt_ = 1 _/_ ( _L_ + _λt_ ). Derive _bT_ and an oracle inequality using Theorem 7.14. 

- 7.11 Assume that we remove the Lipschitz condition in Theorem 7.14. Derive a stability result and oracle inequality for SGD, similar in spirit to Theorem 7.10. 

- 7.12 Consider binary linear classification with _L_ ( _f_ ( _w, x_ ) _, y_ ) = 1 ( _f_ ( _w, x_ ) _y ≤_ 0), where _y ∈ {±_ 1 _}_ , _f_ ( _w, x_ ) = _w_<sup>_⊤_</sup> _ψ_ ( _x_ ), with _ψ_ ( _x_ ) _∈_ R<sup>_d_</sup> and _∥ψ_ ( _x_ ) _∥_ 2 _≤_ 1. Let _p_ 0( _w_ ) = _N_ (0 _, I_ ), and assume that there exists _w∗ ∈_ R<sup>_d_</sup> so that 1 ( _f_ ( _w, x_ ) _y ≤_ 0) = 0 when _w ∈{w_ : _∥w −w∗∥_ 2 _≤ γ}_ , where _γ >_ 0. Use Theorem 7.19 to obtain an oracle inequality for the Gibbs algorithm. 

- 7.13 Prove Theorem 7.22. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

**8** 

