**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Additive and Sparse Models** 

In this chapter, we focus on _additive models_ of the following form: 



where for simplicity, we consider real valued functions _ψ_ ( _θ, ·_ ) : _X →_ R first. In additive models, each _ψ_ ( _θ, ·_ ) may be regarded as a prediction function, which is parametrized by _θ ∈_ Θ. The goal of additive model is to find a combination of models _ψ_ ( _θ, ·_ ) so that the combined model _f_ ([ _w, θ_ ] _, x_ ) is more accurate than any single model _ψ_ ( _θ, x_ ). 

## **10.1 Sparse Model Combination** 

In order to motivate sparse regularization, we will first consider the case that Θ is finite. Assume that Θ has _m_ elements _{θ_ 1 _, . . . , θm}_ , then (10.1) can be regarded as a linear model with respect to the model parameter _w_ , and we can simply denote it as: 



with features _ψj_ ( _x_ ) = _ψ_ ( _θj, x_ ), and _ψ_ ( _x_ ) = [ _ψ_ 1( _x_ ) _, . . . , ψm_ ( _x_ )]. We further assume that each feature _ψj_ ( _x_ ) is a prediction function so that 



If we do not consider regularization, then the model complexity is determined by the model dimensionality _m_ . For example, the VC dimension of the linear decision function 1 ( _f_ ( _w, x_ ) _≥_ 0) is _m_ . If we consider regularization, such as kernel method or _L_ 2 regularization, then we may consider the function class 



Using the Rademacher complexity analysis for kernel methods in Chapter 9, we know 



CHAPTER 10. ADDITIVE MODELS 

190 

with 



The normalization factor of 1 _/m_ is to make sure that _k_ ( _x, x_ ) is bounded by _M_<sup>2</sup> . This implies that 



This gives a bound on the Rademacher complexity of _F_<sup>_′_</sup> as 



which depends linearly on<sup>_√_</sup> _<u>m</u>_ <u>.</u> This upper bound matches the worst case lower bound below with _M_ = 1. 

**Proposition 10.1.** _Assume that the m feature functions {ψj_ ( _X_ ) _} are orthonormal when X ∼D. Then there exists an absolute constant c >_ 0 _such that for sufficiently large n,_ 



_where F_<sup>_′_</sup> _is given by_ (10.2) _._ 

_Proof_ When _n_ is sufficiently large, the vectors _{ψj}_ are near orthonormal on the empirical distribution _Sn_ . Therefore with constant probability, _F_<sup>_′_</sup> is nearly an _m_ -dimensional ball of radius _A_ with respect to _L_ 2( _Sn_ ). Therefore Theorem 5.3 implies that _M_ ( _ϵ, F, L_ 2( _Sn_ )) _≥_ 2<sup>_m_</sup> at _ϵ_ = _c_ 0 _A_ for some _c_ 0 _>_ 0. The Rademacher complexity lower bound is now a direct consequence of Sudakov minoration (see Theorem 12.4) with such _ϵ_ . 

It follows from Proposition 10.1 that the factor<sup>_√_</sup> _<u>m</u>_ in _Rn_ ( _F_<sup>_′_</sup> _, D_ ) cannot be removed in general with _L_ 2 regularization (kernel methods) for additive models. To compensate the effect of _m_ , a proper regularization term when _m_ is large can be reformulated as 



This leads to an Rademacher complexity of 



Alternatively, one may consider other regularization conditions for model combination. One of such regularization conditions is sparse regularization or _L_ 0 regularization, which is given below. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

10.1. SPARSE MODEL COMBINATION 

191 

**Definition 10.2.** The sparsity pattern, or support of a weight vector _w ∈_ R<sup>_m_</sup> is as 

supp( _w_ ) = _{j_ : _wj_ = 0 _},_ 

and the _L_ 0 norm of _w_ is defined as 



The following example compares different regularization conditions with the RKHS functions. 

**Example 10.3.** Consider RBFs of the form 



for some _β >_ 0. If we treat it as a kernel _k_ ( _·, ·_ ) = _ψ_ ( _·, ·_ ) as in Chapter 9, then the corresponding RKHS is given by functions of the form 



Let _H_ be its RKHS, and the corresponding regularization is given by 



If we use RBFs as basis functions in additive models, we have 



In this case, the kernel associated with the additive model can be defined as 



The corresponding RKHS norm for additive model is different from (10.3), and can be instead as 



However, even for simple 1-dimensional functions such as 



with _β_ = 1, the complexity measured by the RKHS norm in (10.4) can be rather large. Alternatively, one can also measure the complexity of _f_ ([ _w, θ_ ] _, x_ ) by the sparsity _∥w∥_ 0. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 10. ADDITIVE MODELS 

192 

For each sparsity pattern _F ⊂{_ 1 _, . . . , m}_ , we may define the _|F |_ -dimensional sparse function class 



where _φ_ ( _w, z_ ) = _L_ ( _f_ ( _w, x_ ) _, y_ ) = _L_ ( _w_<sup>_⊤_</sup> _ψ_ ( _x_ ) _, y_ ). We can now consider the following sparse learning method: 



with a properly defined regularizer _r_ ( _F_ ) on the sparsity pattern _F_ . 

We note that the exact solution of (10.5) may be difficult to obtain because the sparsity constraint is nonconvex and discontinuous. In practice one often employs approximate solutions. Assume that we can find an approximate solution of (10.5), then we can obtain a generalization error bound that depends only logarithmically on _m_ , and linear with respect to the sparsity _|F |_ . The following theorem is a direct consequence of Theorem 8.7 which employs an upper bound of the expected Rademacher complexity. Note that similar to Theorem 8.11, one may also replace the expected (sample independent) Rademacher complexity by the sample dependent Rademacher complexity. 

**Theorem 10.4.** _Assume_ sup _w,z,z′_ [ _φ_ ( _w, z_ ) _−φ_ ( _w, z_<sup>_′_</sup> )] _≤ M . Let Sn be n iid samples from D. Then with probability at least_ 1 _− δ, the following bound holds for all w ∈_ R<sup>_m_</sup> _and sparsity pattern F such that_ supp( _w_ ) _⊂ F :_ 



_where_ 



_for all F . Consider the sparse learning algorithm in_ (10.5) _. We have the following oracle inequality. With probability of at least_ 1 _− δ:_ 



_Proof_ We note that 



We can now consider each _GF_ as a model, with 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

10.2. _L_ 1 REGULARIZATION 

193 

Therefore we have 



For each index _F_ , we may consider _w_ ˆ as the ERM solution under the constraint supp( _w_ ) _⊂ F_ . We can thus apply Theorem 8.7 with models indexed by _F ⊂ {_ 1 _, . . . , m}_ to obtain the desired bounds. 

**Example 10.5.** Consider the linear binary classification problem, with the loss function 



In this problem, we know from the Rademacher complexity of VC-class 



for some constant _c_ 0 _>_ 0 (see Example 6.26). It follows that we may simply take 



for a sufficiently large constant _c_<sup>_′_</sup> , which leads to the following sparsity constrained optimization: 



<u>ln</u> _<u>m</u>_ with _λ_ = _c_<sup>_′_�Weobtainthefollowingoracleinequality.Withprobabilityat</sup> _n_<sup>.</sup> least 1 _− δ_ : 



The bound is linear in � _∥w∥_ 0, and logarithmic in _m_ . 

The Rademacher complexity bound for sparse learning has a convergence rate of _O_ (�1 _/n_ ). For some specialized problems such as least squares regression, where the variance condition holds, we can obtain a better rate of _O_ (1 _/n_ ) using local Rademacher complexity analysis. The resulting bound has a convergence rate of _O_ ( _∥w∥_ 0 ln _m/n_ ), which is similar to the Bayesian information criterion (BIC) for parametric models in classical statistics (Schwarz, 1978). 

## **10.2** _L_ 1 **Regularization** 

Sparse regularization can reduce the learning complexity. However, the optimization problem of (10.5) is in general NP-hard because the sparse _L_ 0 regularization in Example 10.5 is nonconvex (Natarajan, 1995). To alleviate this computational 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 10. ADDITIVE MODELS 

194 

problem, practitioners often solve a convex relaxation of _L_ 0 regularization formulations, where the _L_ 0 regularization _∥w∥_ 0 is replaced by the _L_ 1 regularization _∥w∥_ 1. The resulting method is also referred to as _Lasso_ (Tibshirani, 1996) or as _basis pursuit_ (Chen et al., 2001). 

In this section, we consider the general situation that Θ is infinite. For notation simplicity, we can define the function class 



and its convex hull can be derived as (see Definition 5.12) 



The non-negative _L_ 1 regularized additive models are: 



We may also consider the class of _L_ 1 regularized additive models as: 



Note that in general, we have _FA,L_<sup>+</sup> 1<sup>(Ψ)</sup><sup>_⊂FA,L_</sup> 1<sup>(Ψ).However,if</sup><sup>_−f∈_Ψforall</sup> _f ∈_ Ψ, then _FA,L_ 1(Ψ) = _FA,L_<sup>+</sup> 1<sup>(Ψ).</sup> 

**Definition 10.6.** Let _FL_ 1(Ψ) be the point-wise closure of _∪A>_ 0 _FA,L_ 1(Ψ), then for any _f ∈FL_ 1(Ψ), 



For notational convenience, we write functions in _FL_ 1(Ψ) as 



where _ψ_ ( _x_ ) is the infinite dimensional vector [ _ψ_ ( _θ, x_ )] _θ∈_ Θ, and _∥f ∥_ 1 = _∥w∥_ 1. 

For smooth-loss functions (see Definition A.5), there is a strong relationship between _L_ 1 regularization and _L_ 0 regularization, in that functions with small _L_ 1 norms can be sparsified. Such a sparsification result was first shown for the least squares loss, and referred to as Maurey’s lemma in Pisier (1980-1981). 

**Theorem 10.7.** _Assume L_ ( _p, y_ ) _is a γ-smooth function in p. Consider f_ ( _x_ ) = _w_<sup>_⊤_</sup> _ψ_ ( _x_ ) _∈FL_ 1(Ψ) _. Let D be an arbitrary distribution over_ ( _x, y_ ) _. Then there exists a sparse vector u so that ∥u∥_ 0 _≤ N , and_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

10.2. _L_ 1 REGULARIZATION 

195 

_Proof_ For simplicity, we only consider _f_ ( _x_ ) such that for some _m >_ 0: 



and let _ψj_ ( _x_ ) = _ψ_ ( _θj, x_ ). Consider _N_ iid random variable _jk_ ( _k_ = 1 _, . . . , N_ ) that takes values in _{_ 1 _, . . . , m}_ , so that Pr( _jk_ = _j_ ) = _|wj|/∥w∥_ 1. Let 



where _J_ = _{j_ 1 _, . . . , jN }_ . It is easy to check that for all _x_ : 



Note also from the smoothness assumption, we have 



where _L_<sup>_′_</sup> 1<sup>(</sup><sup>_p, y_)isthederivativeof</sup><sup>_L_(</sup><sup>_p, y_)withrespectto</sup><sup>_p_.Takingexpectation</sup> with respect to _J_ , we have 



Therefore by taking expectation with respect to _D_ , we obtain 



Since each _fJ_ ( _X_ ) can be expressed as a sparse combination of _N_ functions, this implies the existence of _u_ . 

Theorem 10.7 implies that _L_ 1 regularization can be regarded as an approximation method to the _L_ 0 regularized sparse learning problem. Conversely, if a target function is a sparse additive model, then it is easier to approximate it by _L_ 1 regularization than _L_ 2 regularization. In order to illustrate this, we will consider the _L_ 1 regularization method for additive models, and investigate its generalization performance. The following result on Rademacher complexity for _L_ 1 regularization is straight forward. 

**Theorem 10.8.** _We have_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 10. ADDITIVE MODELS 

196 

_If either_ Ψ = _−_ Ψ _or_ 0 _∈_ Ψ _, then the following equality holds:_ 



_If_ Ψ = _−_ Ψ _, then the following equality holds:_ 



_Proof_ We will prove the second equality. Since _A ·_ Ψ _⊂FA,L_<sup>+</sup> 1<sup>(Ψ</sup><sup>_, Sn_),wehave</sup> _A · R_ (Ψ _, Sn_ ) _≤ R_ ( _FA,L_<sup>+</sup> 1<sup>(Ψ)</sup><sup>_, Sn_)</sup><sup>_._</sup> 

Moreover, consider any function 



and _σi ∈{±_ 1 _}_ , we know that under the conditions of the theorem, 



The first inequality used _wj ≥_ 0. The last inequality used the fact that _∥w∥_ 1 _≤ A_ and sup _ψ∈_ Ψ � _ni_ =1<sup>_σiψ_(</sup><sup>_Xi_)</sup><sup>_≥_0.Thisimpliesthat</sup> 



and thus we obtain the second desired equality of the theorem. The proof of the first equality of the theorem is similar. The third equality of the theorem holds because the condition implies that 



This proves the desired result. 

The following example shows that for a sparse target function, _L_ 1 regularization is preferred over _L_ 2 regularization due to smaller Rademacher complexity. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

10.2. _L_ 1 REGULARIZATION 

197 

**Example 10.9.** Assume that _|_ Ψ _|_ = _N_ , then _|_ Ψ _∪−_ Ψ _| ≤_ 2 _N_ . From Theorem 6.23, we have 



Theorem 10.8 implies that 



If _|ψ_ ( _x_ ) _| ≤ B_ for all _ψ ∈_ Ψ, then 



We now consider the following sparse function class 



To represent this function class using _L_ 1 regularization, we note that 



This implies a Rademacher complexity that depends logarithmically on _N_ as 



If instead, we consider _L_ 2 regularization, then we have to use the function class 



where 



Since<sup>�</sup> _j_<sup>_∥ψj_(</sup><sup>_x_)</sup><sup>_∥_</sup> 2<sup>2</sup><sup>_≤NB_2,thecorrespondingRademachercomplexityisupper</sup> bounded as 



If the vectors [ _ψ_ ( _X_ ) : _X ∈Sn_ ] are orthogonal for _ψ_ ( _X_ ) _∈_ Ψ, then it is not difficult to check that a matching lower bound holds for _R_ ( _F_<sup>_~~√~~_</sup> _<u>m,L</u>_ 2<sup>(Ψ)</sup><sup>_, S_</sup> _n_<sup>)(see</sup> Exercise 10.1). Since in sparse learning applications, we usually have _m ≪ N_ , the Rademacher complexity of _L_ 1 approximation of sparse target in (10.6) is much smaller than the Rademacher complexity of _L_ 2 approximation of sparse target in (10.7). The former depends logarithmically in _N_ , while the latter depends polynomially in _N_ . 

The following result shows that the Rademacher complexity of _L_ 1 combinations of functions with finite VC dimension can also be easily obtain. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 10. ADDITIVE MODELS 

198 

**Example 10.10.** Assume that Ψ is a binary function class with VC dimension _d_ , then we know that from Example 6.26 



It follows that 



The following result shows that the Rademacher complexity of two-layer neural networks can be obtained easily using _L_ 1 regularization. 

**Example 10.11.** In two-layer neural networks, let Ψ be an _L_ 2-regularized ReLU function class: 



and the corresponding _L_ 1 regularized two-layer NN can be expressed as a function 



This function class belongs to _FA,L_ 1(Ψ). We thus obtain the following bound for _L_ 1 regularized two-layer NN: 



where we note that max(0 _, f_ ) is 1-Lipschitz in _f_ . 

Next, we may consider the following hard-constrained _L_ 1 regularized learning problem. 



Similarly, we may consider the soft-regularized version as: 



Now by using Theorem 6.31, we obtain the following result. 

**Corollary 10.12.** _Assume that_ sup _p,p′,y,y′_ [ _L_ ( _p, y_ ) _− L_ ( _p_<sup>_′_</sup> _, y_<sup>_′_</sup> )] _≤ M , and L_ ( _p, y_ ) _is γ Lipschitz with respect to p. For fixed A >_ 0 _, with probability at least_ 1 _− δ: for all f_ ( _x_ ) = _w_<sup>_⊤_</sup> _ψ_ ( _x_ ) _such that ∥w∥_ 1 _≤ A:_ 



_where_ Ψ _±_ = _{ψ_ ( _x_ ) : _ψ_ ( _x_ ) _∈_ Ψ _or − ψ_ ( _x_ ) _∈_ Ψ _}. Moreover, for_ (10.8) _, if we solve_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
/—<br>/—<br>/——<br>—<br>——<br>a<br>Pt<br><!-- End of picture text -->

CHAPTER 10. ADDITIVE MODELS 

200 

_where_ 



_Proof_ Let _Aθ_ = 2<sup>_θ_</sup> _A_ 0, with _q_ ( _θ_ ) = (1 + _θ_ )<sup>_−_2</sup> for _θ_ = 1 _,_ 2 _, . . ._ , and let _f_ ( _x_ ) = _w_<sup>_⊤_</sup> _ψ_ ( _x_ ). Consider _F_ (1) = _{w_<sup>_⊤_</sup> _ψ_ ( _x_ ) : _∥w∥_ 1 _≤ A_ 1 _}_ , and _F_ ( _θ_ ) = _{w_<sup>_⊤_</sup> _ψ_ ( _x_ ) : _Aθ−_ 1 _≤ ∥w∥_ 1 _≤ Aθ}_ for _θ >_ 1. We have 



Given any _w_ , let _θ_ be the smallest number such that _f_ ( _w, x_ ) = _w_<sup>_⊤_</sup> Ψ( _x_ ) _∈F_ ( _θ_ ), then _Aθ ≤_ 2( _A_ 0 + _∥w∥_ 1). Therefore 



We can take _h_ = 0 in Theorem 8.7, _M_ ( _θ_ ) _≤ M_ 0 + 2 _γ_ ( _A_ 0 + _∥w∥_ 1) _B_ , and 1 _/q_ ( _θ_ ) _≤_ (2 + log2(1 + _∥w∥_ 1 _/A_ 0))<sup>2</sup> . Let 



This implies the desired uniform convergence result. 

Now we would like to show the second desired oracle inequality. With the condition of _λ_ , we have _∥w_ ˆ _∥_ 1 _≤ M_ 0 _/λ_ , and by considering _∥w∥_ 1 _≤ M_ 0 _/λ_ , we can 



This definition of _R_<sup>˜</sup> ( _θ_ ) is an upper bound of (10.10). We can thus apply Theorem 8.7 again to obtain the desired oracle inequality, where we also use 2 _M_ 0 + 4 _γA_ 0 _B_ + 4 _γB∥w∥_ 1 as an upper bound for 2 _M_ ( _θ_ ). 

**Example 10.15.** Consider (10.9) with a function class Ψ of finite VC-dimension (or pseudo-dimension) vc(Ψ _±_ ) = _d_ , which includes the two-layer neural network as a special case. Under the assumptions of Corollary 10.14, we have _Rn_ (Ψ _±, D_ ) = _O_ ( _B_ � _d/n_ ) (see Example 6.26). We can take _A_ 0 = _M_ 0 _/_ ( _γB_ ) and set 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

10.3. INFORMATION THEORETIC ANALYSIS 

201 

to obtain 



We use the notation _O_<sup>˜</sup> ( _·_ ) to hide log-factors. 

## **10.3 Information Theoretical Analysis with Entropy Regularization** 

We have analyzed the Gibbs algorithm in Section 7.4 using stability analysis. It is a randomized algorithm using the Gibbs distribution (or posterior distribution). From (7.10), we know that the Gibbs distribution can be regarded as the solution of an entropy regularized empirical risk minimization problem. We will further investigate entropy regularization as well as the closely related topic of information theoretical generalization analysis in this section. 

Note that entropy regularization is closely related to _L_ 1 regularization. Here we consider the case of convex hull, with weights _w ≥_ 0, and<sup>�</sup> _j_<sup>_wj_= 1. For entropy</sup> regularization, we will consider a probability interpretation of _w_ , which may now be regarded as a distribution over models, to be learned from the training data. Since we work with distributions in this section, in the following we will adopt a different notation, and replace the weight _w_ by a general distribution _q_ ( _θ_ ) on Θ, where Θ may be either continuous or discrete. 

Our goal is to find a distribution _q_ on Θ, such that the additive model (10.1) is replaced by the average over _ψ_ ( _θ, x_ ) _∈_ Ψ according to _q_ : 



Since _q_ ( _θ_ ) is learned from the training data _Sn_ , we will call such a distribution _q_ ( _θ_ ) _posterior distribution_ , using the Bayesian statistics analogy. Consider a _prior distribution q_ 0( _θ_ ) on Θ (we use the term prior distribution to indicate that it does not depend on the training data _Sn_ ), we may consider the entropy regularization to regularize the posterior distribution _q_ : 



We have the following Rademacher complexity estimate for this entropy regularization. 

**Theorem 10.16.** _Consider h_ ( _q_ ) = _h_ 0( _q_ ) = _λ_ KL( _q||q_ 0) _, and F_ = _{f_ ( _q, x_ ) _} in_ (10.11) _. The offset Rademacher complexity can be bounded as_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
fe<br>fe<br>fe<br>fe<br>/—<br><!-- End of picture text -->

e ~~e~~ | ~~=~~ ) oe ~~<u>)</u>~~ [| ( ~~C—~~ pI [| (C ~~=~~ 

CHAPTER 10. ADDITIVE MODELS 

204 

The first equation used Proposition 7.16. The second equation used algebraic manipulation. The third equation used the independence of _Zi_ . The fourth equation used the definition of Λ( _λ, w_ ). This implies that 



This implies the first bound. For the second inequality, we know that 

_−_ 1 _−_ 1 Pr � _λ_ ∆( _Sn_ ) _≥_ ln(1 _/δ_ )� _≤_ E _Sn_ exp � _λ_ ∆( _Sn_ ) _−_ ln(1 _/δ_ )� = _δ._ 

This proves the second result. 

The style of the generalization result stated in Theorem 10.18 is often referred to as _PAC-Bayes_ analysis (McAllester, 1999), which can be applied to an arbitrary randomized learning algorithm _A_ : _Z_<sup>_n_</sup> _→_ ∆(Ω). In the literature, it is often applied to bounded loss functions, for which we can estimate the logarithmic moment generating function Λ( _λ, w_ ) easily. More generally, we may consider subGaussian loss functions as in the following example. 

**Example 10.19.** Assume that _φ_ ( _w, Z_ ) is uniformly sub-Gaussian: there exists _σ >_ 0 so that 



Then we obtain from Theorem 10.18 the following generalization bound. For any _λ >_ 0, with probability at least 1 _− δ_ : 



Assume that _φ_ ( _w, Z_ ) satisfies a uniform Bennett style bound on the logarithmic moment generating function in Lemma 2.20, and the variance condition of (3.13), then we can obtain a fast rate result. 

**Corollary 10.20.** _Under the assumptions of Theorem 10.18, and assume that there exists b >_ 0 _so that_ 



_where ψ_ ( _z_ ) = ( _e_<sup>_z_</sup> _−z−_ 1) _/z_<sup>2</sup> _. Assume further that the variance condition of_ (3.13) _holds. Then with probability at least_ 1 _− δ:_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

10.3. INFORMATION THEORETIC ANALYSIS 

205 

_We also have the expected generalization error bound:_ 



_Proof_ We have 



This estimate, together with Theorem 10.18, implies the desired bounds. 

The result can be compared to the stability analysis of Gibbs algorithm in Theorem 7.19, and to the local Rademacher complexity analysis in Theorem 6.41. 

**Example 10.21.** Consider the least squares problem in Example 3.18 with either a convex or a nonconvex but realizable function class. Let 



We can take _b_ = _M_<sup>2</sup> , _c_ 0 = 0, and _c_ 1 = 4 _M_<sup>2</sup> . Let _λ_ = 4 _M_<sup>2</sup> _/n_ , and note that _ψ_ ( _b/_ ( _λn_ ) = _ψ_ (0 _._ 25) _<_ 0 _._ 6. We obtain the following bound from Corollary 10.20. With probability at least 1 _− δ_ : 



For least squares regression with sub-Gaussian noise, one can also perform a more direct calculation of logarithmic moment generating function with a slightly improved result. See Proposition 12.21. 

A more recent development of the information theoretical approach to generalization analysis is to rewrite the expected generalization result in Theorem 10.18 in terms of the mutual information between a learning algorithm _A_ and the training data _Sn_ . Using the notations of Theorem 10.18, we can define the mutual information of _A_ and _Sn_ as follows: 



We note that the mutual information optimizes the expected KL divergence in Theorem 10.18 over prior _q_ 0: 



The following result is a direct consequence of Theorem 10.18 with _q_ 0( _w_ ) = _q_ ˆ( _w_ ). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 10. ADDITIVE MODELS 

206 

**Corollary 10.22.** _Under the assumptions of Theorem 10.18, we have the following expected generalization bound for all λ >_ 0 _:_ 



_where_ E _A denotes the expectation over the randomization of algorithm A: that is,_ ˆ _w ∼ q_ ( _·|Sn_ ) _._ 

Similar to Example 10.19, we have the following result for sub-Gaussian loss functions. This is the result that is often stated in the literature. 

**Example 10.23.** Assume that sup[ _φ_ ( _w, z_ ) _− φ_ ( _w, z_<sup>_′_</sup> )] _≤ M_ . Then we have the following sub-Gaussian inequality 



We obtain from Corollary 10.22: 



We may also derive fast rate result for the mutual information generalization bound as follows. 

**Example 10.24.** Under the conditions of Corollary 10.20, we obtain 



We now consider the Gibbs Algorithm of (7.9), which we restate using notations of this section as follows: 



We have the following oracle inequality for the Gibbs algorithm. 

**Corollary 10.25.** _The following expected oracle inequality holds for the Gibbs distribution_ (10.12) _:_ 



_where_ Λ( _·_ ) _is defined in Theorem 10.18._ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

10.3. INFORMATION THEORETIC ANALYSIS 

207 

_Proof_ From Proposition 7.16, _q_ ˆ is the solution of the following regularized empirical risk minimization problem: 



Therefore for any _q_ , we obtain from Theorem 10.18 



The first inequality used Theorem 10.18. The second inequality used (10.13). The last equation used the fact that _Zi ∼D_ . This implies the result. 

We note that similar to the analysis of least squares using Corollary 10.20 of Theorem 10.18, we may use Corollary 10.25 to obtain a simpler oracle inequality than that of the local Rademacher complexity. One interesting application, which we state below, is a simple analysis of conditional density estimation for Gibbs algorithms. 

**Corollary 10.26.** _Consider the conditional density estimation problem with a density class {p_ ( _Y |w, X_ ) : _w ∈_ Ω _}. Let λ_ = 1 _/_ ( _αn_ ) _for some α ∈_ (0 _,_ 1) _, and φ_ ( _w, Z_ ) = _−_ ln _p_ ( _Y |w, X_ ) _in_ (10.12) _. Then_ 



_where Dα is the α-divergence defined in_ (B.3) _, and p∗_ ( _Y |X_ ) _is the true conditional density of D._ 

_Proof_ Consider _φ_<sup>_′_</sup> ( _w, Z_ ) = ln _p∗_ ( _Y |X_ ) _−_ ln _p_ ( _Y |w, X_ ). Then the Gibbs algorithm does not change if we replace _φ_ ( _w, Z_ ) by _φ_<sup>_′_</sup> ( _w, Z_ ). By applying Corollary 10.25 with _φ_ ( _w, Z_ ) replaced by _φ_<sup>_′_</sup> ( _w, Z_ ). With this replacement, we note that 



Moreover, E _Dφ_<sup>_′_</sup> ( _w, Z_ ) = E _X_ KL( _p∗_ ( _·|X_ ) _||p_ ( _·|w, X_ )). The desired bound follows directly from Corollary 10.25. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 10. ADDITIVE MODELS 

208 

**Example 10.27.** The squared Hellinger distance is _α_ -divergence with _α_ = 0 _._ 5. Consider the following the Gibbs algorithm with log-likelihood loss and _λ_ = 2 _/n_ : 



Corollary 10.26 implies that 



One may also obtain high probability oracle inequalities for the Gibbs algorithm. For example, we have the following result. 

**Theorem 10.28.** _Assume that_ sup _w,z,z′_ [ _φ_ ( _w, z_ ) _− φ_ ( _w, z_<sup>_′_</sup> )] _≤ M . Let q_ 0 _be a distribution on_ Θ _. Let q_ ˆ _be the Gibbs distribution of_ (10.12) _. Then with probability at least_ 1 _− δ:_ 



_Proof_ Let ∆(Ω) denote the set of posterior distributions _q_ ˆ( _·|Sn_ ). We note that with _h_ ( _q_ ) = _λ_ KL( _q||q_ 0), Theorem 10.18 (with ∆ _n_ ( _h_ ) = 0) implies that 



with a calculation similar to Example 10.19. We obtain the desired bound from Corollary 6.21. 

## **10.4 Boosting and Greedy Algorithm** 

In (10.1), both _wj_ and _θj_ needs to be learned from the training data. A popular algorithm to do so is boosting, which assumes the existence of an ERM algorithm _A_ that can learn _θ_<sup>ˆ</sup> = _A_ ( _S_<sup>�</sup> _n_ ) from any weighted version of data _S_<sup>�</sup> _n_ = _{_ ( _ρi, Xi, Yi_ ) : _i_ = 1 _, . . . , n}_ as follows: 



where _ρi ≥_ 0, and for simplicity, we normalize _ρi_ so that<sup>�</sup> _i_<sup>_ρi_= 1. The learner</sup><sup>_A_</sup> is often referred to as a weak learner (or base learner) in the boosting literature. 

In boosting, we repeatedly generate modified data _S_<sup>�</sup> _n_<sup>_j_(</sup><sup>_j_=1</sup><sup>_,_2</sup><sup>_, . . ._)fromthe</sup> training data _Sn_ and apply _A_ to obtain _θj_ . We then find weight _wj_ to form the additive model in (10.1). There are two commonly used weaker learners. In 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

10.4. BOOSTING AND GREEDY ALGORITHM 

209 

AdaBoost, classification weak learner is employed, where _ψ_ ( _θ, Xi_ ) _∈{±_ 1 _}_ and _Yi ∈{±_ 1 _}_ are both binary, and 



For AdaBoost, each dataset _S_<sup>�</sup> _n_<sup>_j_isformedbyadjustingtheweights</sup><sup>_{ρi}_.Ingra-</sup> dient boosting, _A_ is assumed to be a regression learner, with 



For gradient boosting, each dataset _S_<sup>�</sup> _n_<sup>_j_isformedbyadjustingtheresponse</sup><sup>_{Yi}_.</sup> Both AdaBoost and gradient boosting may be regarded as greedy algorithms, and their convergence will be analyzed in this section. In fact, the convergence analysis shows that greedy algorithms approximately solves the _L_ 1 regularization problem. One may then use the Rademacher complexity analysis of _L_ 1 regularization to analyze the generalization behavior of greedy algorithms. 

## **Algorithm 10.1:** AdaBoost 

**Input:** _Sn_ , Ψ **Output:** _f_<sup>(</sup><sup>_T_)</sup> ( _x_ ) **1** Let _f_<sup>(0)</sup> ( _x_ ) = 0 **2** Let _ρ_ 1 = _· · ·_ = _ρn_ = 1 _/n_ **3 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 4** Find _θt_ by approximately solving _n_ **5** _θt ≈_ arg min _θ∈_ Θ � _i_ =1<sup>_ρi_1(</sup><sup>_ψ_(</sup><sup>_θ, Xi_)</sup><sup>_Yi≤_0)</sup> **6** Let _rt_ =<sup><u>�</u></sup><sup>_n_</sup> _i_ =1<sup>_ρiψ_(</sup><sup>_θt, Xi_)</sup><sup>_Yi_</sup> **7** Let _wt_ = 2<sup><u>1</u>ln((1 +</sup><sup>_rt_)</sup><sup>_/_(1</sup><sup>_−rt_))</sup> **8** Let _ρi_ = _ρi ·_ exp( _−wtψ_ ( _θt, Xi_ ) _Yi_ ) for _i_ = 1 _, . . . , n_ . **9** Normalize _ρi_ so that<sup>�</sup><sup>_n_</sup> _i_ =1<sup>_ρi_= 1</sup> **10** Let _f_<sup>(</sup><sup>_t_)</sup> ( _x_ ) = _f_<sup>(</sup><sup>_t−_1)</sup> ( _x_ ) + _wtψ_ ( _θt, x_ ) **Return:** _f_<sup>(</sup><sup>_T_)</sup> <u>(</u> _x_ <u>)</u> 

**Theorem 10.29.** _Assume that_ Ψ = Ψ _±, ψ_ ( _θ, x_ ) _∈{±_ 1 _}, and y ∈{±_ 1 _}. Then AdaBoost implements the greedy algorithm to minimize the loss function_ 



_That is, at each time t, AdaBoost (with exact minimization in Line 5 of Algorithm 10.1) solves the following problem:_ 



_Moreover, the prediction function f_<sup>(</sup><sup>_T_)</sup> _obtained by Algorithm 10.1 satisfies_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 10. ADDITIVE MODELS 

210 

_Proof_ Let 



By the definition of _ρi_ , we know that 



It follows that _w_ ˜ _t_ is the solution of 



˜ Taking derivative with respect to _w_ at _w_ = _wt_ , we obtain 





This implies that 



and 



Since Ψ = Ψ _±_ , the parameter _θ_<sup>˜</sup> _t_ that achieves the smallest classification error also achieves the smallest 1 _− r_ ˜ _t_<sup>2.Thismeansthatwecantake</sup><sup>_θ_˜</sup><sup>_t_=</sup><sup>_θt_and</sup><sup>_w_˜</sup><sup>_t_=</sup><sup>_wt_</sup> to achieve the minimum of (10.15). This proves the first desired result. Since _ρi ∝_ exp( _−f_<sup>(</sup><sup>_t−_1)</sup> ( _Xi_ ) _Yi_ ) at each iteration _t_ , we obtain from (10.16) that 



By using induction on _t_ , we obtain the second desired bound. 

In practice, one often observes that the test performance of AdaBoost improves even after AdaBoost achieves zero-training error. This phenomenon can be explained by the fact that AdaBoost tries to minimize the margin under _L_ 1 constraints. This can be seen from the following simple corollary. 

**Corollary 10.30.** _Under the assumptions of Theorem 10.29, and assume further that_ Ψ _has VC-dimension d. Let_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
a<br>fe) ( > 0 -) )<br>J<br>- > :<br>> ><br>(——)<br><!-- End of picture text -->

CHAPTER 10. ADDITIVE MODELS 

212 

_f ∈FA,L_ 1, we have 



Now we apply this bound to _f_<sup>(</sup><sup>_T_)</sup> with _A_ = _⌈∥f ∥_ 1 _⌉_ , and use (10.17), we obtain the desired bound. 

For simplicity, we assume that each _rt <_ 1 _− δ_ for some _δ >_ 0. Otherwise, the problem itself becomes easy. If each time AdaBoost achieves error _rt ≥ r_ 0 _>_ 0, then _∥f_<sup>(</sup><sup>_T_)</sup> _∥_ 1 grow linearly but the margin error of Corollary 10.30 decreases exponentially. This shows that the generalization performance of AdaBoost can still reduce even when the training error goes to zero, because the margin error can still decrease. 

While AdaBoost implements the greedy algorithm for the exponential loss and binary classification problem, gradient boosting can be applied to arbitrary loss functions using a least squares base learner. The resulting method, described in Algorithm 10.2, is referred to as gradient boosting. We use _L_<sup>_′_</sup> 1<sup>(</sup><sup>_f, y_)todenote</sup> the gradient of _L_ ( _f, y_ ) with respect to _f_ , which is also referred to as functional gradient in the boosting literature when evaluated on the training data. 

## **Algorithm 10.2:** Gradient Boosting 

**Input:** _Sn_ , Ψ, _L_ ( _·, ·_ ) **Output:** _f_<sup>(</sup><sup>_T_)</sup> ( _x_ ) **1** Let _f_<sup>(0)</sup> ( _x_ ) = 0 **2 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 3** Let _gi_ = _L_<sup>_′_</sup> 1<sup>(</sup><sup>_f_(</sup><sup>_t−_1)(</sup><sup>_Xi_)</sup><sup>_, Yi_)(</sup><sup>_i_= 1</sup><sup>_, . . . , n_)bethefunctionalgradients</sup> _n_ **4** Solve for [ _wt, θt_ ] = arg min _w∈_ R _,θ∈_ Θ � _i_ =1<sup>[</sup><sup>_wψ_(</sup><sup>_θ, Xi_) +</sup><sup>_gi_]2</sup> **5** Let _f_<sup>(</sup><sup>_t_)</sup> ( _x_ ) = _f_<sup>(</sup><sup>_t−_1)</sup> ( _x_ ) + _wtψ_ ( _θt, x_ ) **Return:** _f_<sup>(</sup><sup>_T_)</sup> <u>(</u> _x_ <u>)</u> 

Boosting is closely related to _L_ 1 regularization. In Corollary 10.30, _L_ 1 regularization bound is used to estimate the generalization of AdaBoost. Moreover, a slight modification of gradient boosting, described in Algorithm 10.3, can also be used to solve _L_ 1 constrained optimization problem. 

The following result shows that Algorithm 10.3 converges to the solution of _L_ 1 regularization problem. 

**Theorem 10.31.** _Assume that_ sup _θ ∥ψ_ ( _θ, ·_ ) _∥L_ 2( _Sn_ ) _≤ B, and L_ ( _f, y_ ) _is a γ- smooth convex function with respect to f . If we take ηt_ = 2 _/_ ( _t_ + 1) _in Algo-_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
5<br>- S> - S- a<br><!-- End of picture text -->

» > 

»» »» »» » »du 

» » ~~—~~ 

CHAPTER 10. ADDITIVE MODELS 

214 

We have 



The first inequality used _γ_ -smoothness of _L_ ( _f, y_ ) with respect to _f_ , so that _L_ ( _f_<sup>_′_</sup> _, y_ ) _≤ L_ ( _f, y_ ) + _L_<sup>_′_</sup> 1<sup>(</sup><sup>_f, y_)(</sup><sup>_f ′ −f_) + 0</sup><sup>_._5</sup><sup>_γ_(</sup><sup>_f ′ −f_)2.Thesecondinequalityused</sup> (10.18). The third inequality used the convex of _L_ ( _f, y_ ) with respect to _f_ , so that _L_ ( _f, y_ ) + _L_<sup>_′_</sup> 1<sup>(</sup><sup>_f, y_)(</sup><sup>_f ′ −f_)</sup><sup>_≤L_(</sup><sup>_f ′, y_).Let</sup> 



then we have shown with _ηt_ = 2 _/_ ( _t_ + 1): 



Now multiply by _t_ ( _t_ + 1), w have 



By summing over _t_ = 1 _,_ 2 _,_ 3 _, . . . , T_ , we obtain the desired bound. 

Algorithm 10.3 can be extended to solve hard-constrained _L_ 1 regularization problem of the form _∥w∥_ 1 _≤ A_ . However this requires knowing _A_ in advance. One may also use gradient boosting to solve the sparse approximation problem in the more general setting without specifying _A_ . While results can be obtained for the original gradient boosting algorithm in Algorithm 10.2, a stronger convergence result can be obtained for a slight modification referred to as the fully-corrective gradient boosting algorithm (see Shalev-Shwartz et al., 2010). 

**Theorem 10.32** (Shalev-Shwartz et al., 2010) **.** _Assume that L_ ( _p, y_ ) _is convex and γ smooth in p. Then at time T , the solution f_<sup>(</sup><sup>_T_)</sup> _of Algorithm 10.4 satisfies_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

10.5. SPARSE RECOVERY ANALYSIS 

215 

**Algorithm 10.4:** Fully Corrective Gradient Boosting 

**Input:** _Sn_ , Ψ, _L_ ( _·, ·_ ) **Output:** _f_<sup>(</sup><sup>_T_)</sup> ( _x_ ) **1** Let _f_<sup>(0)</sup> ( _x_ ) = 0 **2 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 3** Let _gi_ = _L_<sup>_′_</sup> 1<sup>(</sup><sup>_f_(</sup><sup>_t−_1)(</sup><sup>_Xi_)</sup><sup>_, Yi_)(</sup><sup>_i_= 1</sup><sup>_, . . . , n_)befunctionalgradients</sup> **4** Solve for [ _αt, θt_ ] = arg min _α∈_ R _,θ∈_ Θ _Qt_ ( _α, θ_ ), **5** where _Qt_ ( _α, θ_ ) =<sup>�</sup><sup>_n_</sup> _i_ =1<sup>[</sup><sup>_αψ_(</sup><sup>_θ, Xi_) +</sup><sup>_gi_]2</sup> _n t_ **6** Let _w_<sup>(</sup><sup>_t_)</sup> = arg min[ _ws_ ] � _i_ =1<sup>_L_</sup> _s_ =1<sup>_wsψ_(</sup><sup>_θs, Xi_)</sup><sup>_, Yi_</sup> �� � **7** Let _f_<sup>(</sup><sup>_t_)</sup> ( _x_ ) =<sup>�</sup><sup>_t_</sup> _s_ =1<sup>_w_</sup> _s_<sup>(</sup><sup>_t_)</sup><sup>_ψ_(</sup><sup>_θs, x_)</sup> **Return:** _f_<sup>(</sup><sup>_T_)</sup> <u>(</u> _x_ <u>)</u> 

One can use the relationship of greedy algorithm and _L_ 1 regularization to analyze the generalization behavior of boosting. By combining a convergence analysis of greedy algorithm in terms of _L_ 1 norm, with generalization analysis using _L_ 1 regularization, one can show the consistency of boosting procedures (Zhang and Yu, 2005). It is also possible to investigate the generalization of boosting using margin with respect to the _L_ 1 norm, similar to Corollary 10.30 (also see Bartlett et al. (1998)) for AdaBoost. In addition to the _L∞_ -covering number analysis, one may also use Rademacher complexity to derive such a datadependent margin bound. This leads to a _O_ (1 _/_<sup>_√_</sup> _<u>n</u>_ <u>)</u> convergence rate instead of _O_ (1 _/n_ ) convergence rate. 

**Corollary 10.33.** _Assume that Y ∈{±_ 1 _}, and ψ_ ( _θ, x_ ) _∈_ [ _−_ 1 _,_ 1] _. Then ∀γ >_ 0 _, with probability_ 1 _− δ: for all f_ ( _x_ ) =<sup>�</sup> _j_<sup>_wjψ_(</sup><sup>_θj, x_)</sup><sup>_,wehave_</sup> 



_Proof_ Let _L_ ( _p, y_ ) = min(1 _,_ max(0 _,_ 1 _−py/γ_ )), which is _γ_<sup>_−_1</sup> Lipschitz. Let _A_ 0 = _γ_ , _B_ = 1, and _M_ 0 = 1. By using the fact that 



The result is a directly consequence of Corollary 10.14 . 

## **10.5 Sparse Recovery Analysis** 

We have shown that it is possible to approximate the _L_ 1 regularized solution by sparse solutions using greedy boosting. On the other hand, _L_ 1 regularization has frequently been used as an approximation technique to solve the nonconvex _L_ 0 regularization problem. Under appropriate conditions, it can be shown that such 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 10. ADDITIVE MODELS 

216 

a convex relaxation leads to exact or approximate solutions to the nonconvex problem. 

We consider the same linear model (9.19), in the fixed design setting and with _w∗_ replaced by the symbol _w_ ¯ so that subscripts are less cluttered. We assume that _w_ ¯ is sparse. For convenience, we replace the general feature map _ψ_ ( _x_ ) by _x_ . We also rescale the feature vector and target by 1 _/_<sup>_√_</sup> _<u>n</u>_ <u>,</u> so that the factor 1 _/n_ (which denotes the average over the training data) is absorbed into _x_ and _y_ . 

In the subsequent discussions, we will use the common convention in the high dimensional statistics literature, so that symbols may carry meanings not consistent with other sections. Specifically, we will let _X_ denote an _n × p_ design matrix, and _Y_ denote an _n_ dimensional observation vector. The model parameter _w_ is _p_ -dimensional. We assume the following sparse linear regression model 



where _ϵ_ is _n_ -dimensional zero-mean noise vector with independent components. Note that due to the rescaling mentioned above, we will assume that columns of _X_ are bounded in 2-norms. The corresponding proper scaling of _ϵ_ is to assume that each<sup>_√_</sup> _<u>nϵi</u>_ is _σ_ sub-Gaussian. 

We also assume that _∥w_ ¯ _∥_ 0 _≪ p_ . It is known that in this case, the complexity of learning _w_ ¯ is _O_ ( _∥w_ ¯ _∥_ 0 ln _p_ ) instead of _O_ ( _p_ ) (see Example 10.5). We allow _p ≫ n_ , and in the statistics literature, this situation is referred to as _high dimensional_ . Instead of solving the sparsity problem using _L_ 0 regularization, one often employs the following _L_ 1 regularization problem (Lasso) as a surrogate: 



where _λ >_ 0 is an appropriately chosen regularization parameter. 

Under appropriate conditions, one can recover the true sparse parameter _w_ ¯ using Lasso. This is referred to as the _sparse recovery_ problem. In sparse recovery, theoretical questions we ask for Lasso is whether the solution _w_ ˆ of Lasso with an appropriately chosen _λ_ leads to a good estimate of _w_ ¯ in the following sense: 

- (Support Recovery) Whether Lasso finds the correct feature set: supp( ˆ _w_ ) = supp( ¯ _w_ )? Moreover, we say the Lasso solution is _sign consistent_ if supp( ˆ _w_ ) = supp( ¯ _w_ ) and sign( ˆ _wj_ ) = sign( ¯ _wj_ ) when _j ∈_ supp( ¯ _w_ ). 

- (Parameter Recovery) How good is the parameter estimation, or how small is ˆ ¯ 

- _∥w − w∥_ 2? 

To answer these questions, we need to analyze the solution of the Lasso problem (10.20) using its Karush–Kuhn–Tucker conditions ( KKT conditions) at _w_ ˆ, which provide more precise characterizations of the solution than those from the empirical process analysis studied earlier. From the standard convex analysis (see Rockafellar, 2015), a solution of (10.20) satisfies the first order optimality equation (KKT condition) in Proposition 10.34. 

ˆ **Proposition 10.34.** _Let F_<sup>ˆ</sup> = supp( ˆ _w_ ) _, then w is a solution of_ (10.20) _if and_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

10.5. SPARSE RECOVERY ANALYSIS 

217 

_only if_ 



_where XF_ ˆ<sup>_containscolumnsofXwithcolumnsinF_ˆ</sup><sup>_,andXjisthej-thcolumn_</sup> _of X._ 

Note that the first condition in the proposition implies that _w_ ˆ is a solution with support restricted to _F_<sup>ˆ</sup> : 



In general, Lasso solutions may not be unique. For example, when _j_ = _j_<sup>_′_</sup> _∈ F_<sup>ˆ</sup> ˆ ˆ such that _Xj_ = _Xj′_ , then for any solution _w_ such that _wj_ = 0, we can construct ˜ ˜ ˆ ˜ ˜ ˆ ˆ _w_ so that _wk_ = _wk_ when _k ∈{/ j, j_<sup>_′_</sup> _}_ , _wj_ = 0 and _wj′_ = _wj_ + _wj′_ . Then it is easy to ˜ ˆ show that _w_ = _w_ is also a Lasso solution. However, under suitable assumptions, we can also obtain the uniqueness of Lasso solution. 

**Proposition 10.35.** _Let F_<sup>ˆ</sup> = supp( ˆ _w_ ) _. If XF_<sup>_⊤_</sup> ˆ<sup>_X_</sup> _F_<sup>ˆ</sup><sup>_ispositivedefinite,and_</sup> 



ˆ _then w is the unique solution of_ (10.20) _._ 

ˆ _Proof_ We only need to show that for any ∆ _w_ = 0, _w_ + ∆ _w_ is not a solution. For _j ∈/ F_<sup>ˆ</sup> , we define 



and let 



Since there exists a subgradient _∇Q_<sup>_′_</sup> _L_ 1<sup>( ˆ</sup><sup>_w_)=0,weknowthat</sup><sup>_w_ˆachievesthe</sup> minimum of _Q_<sup>_′_</sup> _L_ 1<sup>(</sup><sup>_w_), and thus</sup><sup>_Q_</sup> _L_<sup>_′_</sup> 1<sup>( ˆ</sup><sup>_w_+∆</sup><sup>_w_)</sup><sup>_≥Q_</sup> _L_<sup>_′_</sup> 1<sup>( ˆ</sup><sup>_w_) =</sup><sup>_QL_</sup> 1<sup>( ˆ</sup><sup>_w_). Now, if ∆</sup><sup>_wj_=</sup> 0 for some _j ∈/ F_<sup>ˆ</sup> , then _QL_ 1( ˆ _w_ +∆ _w_ ) _> Q_<sup>_′_</sup> _L_ 1<sup>( ˆ</sup><sup>_w_+∆</sup><sup>_w_)</sup><sup>_≥QL_</sup> 1<sup>( ˆ</sup><sup>_w_), and thus</sup><sup>_w_ˆ+∆</sup><sup>_w_</sup> is not a solution of the original Lasso problem. If ∆ _wj_ = 0 for all _j ∈/ F_<sup>ˆ</sup> , then supp( ˆ _w_ + ∆ _w_ ) _⊂ F_<sup>ˆ</sup> . However, the positive definiteness of _XF_<sup>_⊤_</sup> ˆ<sup>_X_</sup> _F_<sup>ˆmeansthat</sup> _QL_ 1( _w_ ) is strictly convex when the support is restricted to _F_<sup>ˆ</sup> , and hence the solution (with support restricted to _F_<sup>ˆ</sup> ) is unique. This implies that ∆ _w_ = 0. 

One important property of Lasso is that under suitable conditions, the method can find the set of nonzero elements supp( ˆ _w_ ) that equals supp( ¯ _w_ ). This property is referred to as _feature selection consistency_ for the support recovery problem. 

**Proposition 10.36.** _Let F_<sup>¯</sup> = supp( ¯ _w_ ) _. Let_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 10. ADDITIVE MODELS 

218 

˜ _and wj_ = 0 _for j ∈/ F_<sup>¯</sup> _. Assume that XF_<sup>_⊤_</sup> ¯<sup>_X_</sup> _F_<sup>¯</sup><sup>_ispositivedefinite,and_</sup> 

sign( ˜ _wF_ ¯<sup>) = sign( ¯</sup><sup>_w_</sup> _F_<sup>¯)</sup><sup>_,_</sup> _|Xj_<sup>_⊤_[</sup><sup>_−λX_</sup> _F_<sup>¯(</sup><sup>_X_</sup> _F_<sup>_⊤_</sup> ¯<sup>_X_</sup> _F_<sup>¯)</sup><sup>_−_1sign( ¯</sup><sup>_w_)</sup> _F_<sup>¯+ (</sup><sup>_X_</sup> _F_<sup>¯(</sup><sup>_X_</sup> _F_<sup>_⊤_</sup> ¯<sup>_X_</sup> _F_<sup>¯)</sup><sup>_−_1</sup><sup>_X_</sup> _F_<sup>_⊤_</sup> ¯<sup>_−I_)</sup><sup>_ϵ_]</sup><sup>_| < λ_</sup> ( _∀j ∈ F_<sup>¯</sup> ) _._ 

ˆ ˜ _Then w_ = _w is the unique solution of_ (10.20) _that is sign consistent._ 

_Proof_ We note that for _j ∈/ F_<sup>¯</sup> : 

_Xj_<sup>_⊤_(</sup><sup>_X_</sup> _F_<sup>¯</sup><sup>_w_˜</sup> _F_<sup>¯</sup><sup>_−Y_) =</sup><sup>_X_</sup> _j_<sup>_⊤_[</sup><sup>_−λX_</sup> _F_<sup>¯(</sup><sup>_X_</sup> _F_<sup>_⊤_</sup> ¯<sup>_X_</sup> _F_<sup>¯)</sup><sup>_−_1sign( ¯</sup><sup>_w_)</sup> _F_<sup>¯+ (</sup><sup>_X_</sup> _F_<sup>¯(</sup><sup>_X_</sup> _F_<sup>_⊤_</sup> ¯<sup>_X_</sup> _F_<sup>¯)</sup><sup>_−_1</sup><sup>_X_</sup> _F_<sup>_⊤_</sup> ¯<sup>_−I_)</sup><sup>_ϵ_]</sup><sup>_._</sup> 

By the assumption of the proposition, we have 



Moreover, we have 

_XF_<sup>_⊤_</sup> ¯<sup>(</sup><sup>_X_</sup> _F_<sup>¯</sup><sup>_w_˜</sup> _F_<sup>¯</sup><sup>_−Y_) +</sup><sup>_λ_sign( ˜</sup><sup>_w_)</sup> _F_<sup>¯=</sup><sup>_X_</sup> _F_<sup>_⊤_</sup> ¯<sup>(</sup><sup>_X_</sup> _F_<sup>¯</sup><sup>_w_˜</sup> _F_<sup>¯</sup><sup>_−X_</sup> _F_<sup>¯</sup><sup>_w_¯</sup> _F_<sup>¯</sup><sup>_−ϵ_) +</sup><sup>_λ_sign( ¯</sup><sup>_w_)</sup> _F_<sup>¯= 0</sup><sup>_._</sup> 

Therefore _w_ ˜ satisfies the KKT conditions of Proposition 10.34, and thus is a solution of the Lasso problem. Proposition 10.35 implies that _w_ ˜ is the unique solution of the Lasso problem. 



_Assume that we choose a sufficiently large λ so that_ 



_If the weight w_ ¯ _is sufficiently large:_ 



_then the solution of_ (10.20) _is unique and sign consistent. Here ∥M ∥∞→∞_ = sup _u_ [ _∥Mu∥∞/∥u∥∞_ ] _is the maximum absolute row sum of M ._ 

_Proof_ The proof is just a verification of Proposition 10.36. Since 



we know that sign( ˜ _wj_ ) = sign( ¯ _wj_ ) for all _j ∈ F_<sup>¯</sup> . This verifies the first condition. The second condition can be similarly verified as follows. 



where the inequality used the assumptions on _µ_ and _λ_ . This verifies the second condition. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

10.5. SPARSE RECOVERY ANALYSIS 

219 

If _µ <_ 1, then in order for the theorem to apply, we only need to choose a small _λ_ when _ϵ_ is small for the first condition to hold. When _λ_ is small enough, then the second condition will also hold. Therefore the result means that given any _w_ ¯, if _µ <_ 1, then as long as the noise _ϵ_ is sufficiently small, we can obtain sign consistency using Lasso. The requirement of _µ <_ 1 is called the _irrepresentable condition_ (Zhao and Yu, 2006), which is sufficient for the feature selection consistency of Lasso. 

**Example 10.38.** It is known that if elements of<sup>_√_</sup> _<u>nX</u>_ have iid standard normal distributions, then for any fixed _w_ ¯, such that _∥w_ ¯ _∥_ 0 = _s_ , the irrepresentable condition holds with high probability when _n_ = Ω( _s_ ln _p_ ), where _w_ ¯ is independent of _X_ (see Exercise 10.7). 

A stronger condition ( _mutual incoherence condition_ ) guarantees support recov¯ ¯ ery for all _w_ such that _∥w∥_ 0 _≤ s_ . It assumes that sup _i_ = _j |Xi_<sup>_⊤Xj|<_1</sup><sup>_/_(2</sup><sup>_s −_1)</sup> when we normalize columns of _X_ so that _∥Xi∥_ 2 = 1 for all _i ∈_ [ _p_ ]. Under this condition, the irrepresentable condition holds for all _∥w_ ¯ _∥_ 0 _∈_ R<sup>_p_</sup> such that _∥w_ ¯ _∥_ 0 _≤ s_ . However, this stronger condition is only satisfied with _n_ = Ω( _s_<sup>2</sup> ln _p_ ) (see Exercise 10.8). 

A slightly weaker condition _µ ≤_ 1 is necessary for the feature selection consistency of Lasso with sufficiently small noise _ϵ_ . That is, when _µ >_ 1, we have the following inconsistency result of Lasso sated in Proposition 10.39. 

**Proposition 10.39.** _Let F_<sup>¯</sup> = supp( ¯ _w_ ) _. Assume that XF_<sup>_⊤_</sup> ¯<sup>_X_</sup> _F_<sup>¯</sup><sup>_ispositivedefinite,_</sup> _and_ 



_Then for sufficiently small ϵ,_ 



_for some j ∈/ F_<sup>¯</sup> _. This implies that Lasso is not sign consistent._ 

Assume that _µ <_ 1. If the noise _ϵ_ is non-stochastic, the conditions of Theorem 10.37 can be satisfied when _ϵ_ is small. For stochastic zero-mean noise, the conditions can be satisfied when _n_ is large, as shown in the Theorem 10.37. 

**Theorem 10.40.** _Let F_<sup>¯</sup> = supp( ¯ _w_ ) _. Assume that the columns are normalized so that_ sup _j ∥Xj∥_ 2<sup>2</sup><sup>_≤B_2</sup><sup>_and(withthecorrespondingproperscaling)components_</sup> _of_<sup>_√_</sup> _<u>nϵ</u> are independent zero-mean σ sub-Gaussian noise:_ ln E _e_<sup>_λϵi_</sup> _≤ λ_<sup>2</sup> _σ_<sup>2</sup> _/_ (2 _n_ ) _. Assume that XF_<sup>_⊤_</sup> ¯<sup>_X_</sup> _F_<sup>¯</sup><sup>_ispositivedefinite,and_</sup> 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 10. ADDITIVE MODELS 

220 

_Given δ ∈_ (0 _,_ 1) _, and assume we choose a sufficiently large λ so that_ 



_Then with probability at least_ 1 _− δ, the solution of_ (10.20) _is unique and sign consistent._ 

_Proof_ Note that the sub-Gaussian probability tail inequality (Corollary 2.26) implies that for each fixed _Xj_ , we have: if _j ∈ F_<sup>¯</sup> , then 



and if _j ∈/ F_<sup>¯</sup> , 



with _P_ ¯ _F_<sup>=</sup><sup>_X_</sup> _F_<sup>¯(</sup><sup>_X_</sup> _F_<sup>_⊤_</sup> ¯<sup>_X_</sup> _F_<sup>¯)</sup><sup>_−_1</sup><sup>_X_</sup> _F_<sup>_⊤_</sup> ¯<sup>denotingtheprojectionmatrixtothesubspace</sup> spanned by _Xj_ ( _j ∈ F_<sup>¯</sup> ). Therefore by taking the union bound for _j_ = 1 _, . . . , p_ , we obtain the following inequalities. With probability at least 1 _− δ_ : 



We can now verify that the conditions of Theorem 10.37 hold. This implies the desired result. 

It is also possible to study the support recovery question without sign consistency, which leads to a slightly weaker condition. For parameter recovery, we often employ a condition that is weaker than the irrepresentable condition, referred to as the _restricted isometry property_ (RIP) Candes and Tao (2005). RIP requires the smallest eigenvalue of the matrix _XF_<sup>_⊤XF_tobeboundedawayfrom</sup> zero for all subsets _F_ such that _|F | ≤_ const _× ∥w_ ¯ _∥_ 0. A similar condition, referred to as _restrictive eigenvalue condition_ (RE), can be stated as follows. 

**Definition 10.41** (RE) **.** An _n × p_ matrix _X_ satisfies the restricted eigenvalue condition RE( _F, c_ 0) for _F ⊂_ [ _p_ ] if the following quantity is nonzero: 



Under this condition, we have the following parameter estimation bound. 

**Theorem 10.42.** _Let F_<sup>¯</sup> = supp( ¯ _w_ ) _. Assume that the columns are normalized so that_ sup _j ∥Xj∥_ 2 _≤ B and (with the corresponding proper scaling) components of_<sup>_√_</sup> _<u>nϵ</u> are independent zero-mean σ sub-Gaussian noise:_ ln E _e_<sup>_λϵi_</sup> _≤ λ_<sup>2</sup> _σ_<sup>2</sup> _/_ (2 _n_ ) _._ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

10.5. SPARSE RECOVERY ANALYSIS 

221 

_Assume that λ ≥_ 2 _σB_ ~~�~~ 2 ln( _n_ 2 _<u>p/δ</u>_ <u>)</u> _. Then with probability at least_ 1 _− δ, the solution of_ (10.20) _satisfies_ 



ˆ ¯ _Proof_ Let _w_ = _w_ + ∆ˆ _w_ . From 



we obtain 



From Corollary 2.26, and a union bound over _Xj_<sup>_⊤ϵ_for</sup><sup>_j∈_[</sup><sup>_p_],weobtainthe</sup> following sub-Gaussian tail probability inequality. With probability at least 1 _− δ_ , 



We obtain 



The first inequality used (10.22). The second inequality used the triangle inequality for _∥·∥_ 1 and _w_ ˆ _F_ ¯<sup>_c_= ∆ˆ</sup><sup>_w_</sup> _F_<sup>¯</sup><sup>_c_. The third inequality used (10.21). This implies the</sup> RE condition _∥_ ∆ˆ _w∥_ 1 _≤_ 4 _∥_ ∆ˆ _wF_ ¯<sup>_∥_</sup> 1<sup>.Thereforeweobtain</sup> 



This proves the desired bound. 

It is also known that for random Gaussian matrices, RE (or RIP) is satisfied uniformly for all _F_<sup>¯</sup> = supp( ¯ _w_ ) such that _∥w_ ¯ _∥_ 0 _≤ s_ with large probability when _n_ = Ω( _s_ ln _p_ ). This sample size requirement is weaker than that of the mutual incoherence condition in Example 10.38, which holds only when _n_ = Ω( _s_<sup>2</sup> ln _p_ ). Moreover, the RE (or RIP) condition does not imply irrepresentable condition, and thus under RE (or RIP), Lasso may not necessarily select features consistently. 

Sparse recovery results similar to those of Lasso can also be obtained using greedy algorithms, both for support recovery and for parameter recovery. For example, such results can be found in (Tropp, 2004; Zhang, 2009a, 2011). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 10. ADDITIVE MODELS 

222 

## **10.6 Historical and Bibliographical Remarks** 

Additive models have been extensively studied in statistics (Friedman and Stuetzle, 1981; Huber, 1985; Buja et al., 1989), and more recently, sparse additive models were studied explicitly by Ravikumar et al. (2009). Two-layer neural networks can also be regarded as special cases of additive models. It is known that many additive model families are sufficiently large so that they are universal function approximators. For example, it is known that both boosted shallow decision trees and two layer neural networks are universal function approximators. 

The _L_ 0 regularization method is a natural solution to the subset selection (variable selection) problem in classical statistics, where the goal is to choose a subset of the variables to fit the data. The subset selection problem can be regarded as a model selection problem, where each model corresponds to a subset of features. Model selection criteria such as AIC (Akaike, 1974) or BIC (Schwarz, 1978) can be applied. In the context of subset selection, AlC is closely related to the _Cp_ criterion of Mallows (2000), which has also been used frequently in the statistics literature. The use of _L_ 1 regularization as an alternative to _L_ 0 regularization for variable selection has been popularized by the seminal work of Tibshirani (1996), where _L_ 1 regularization is referred to as Lasso. The method is also referred to as basis pursuit (Chen et al., 2001) in the engineering literature. 

In the machine learning literature, the Rademacher complexity of convex hull and _L_ 1 regularization was first used by Koltchinskii and Panchenko (2002) to analyze model combination, and its simplicity helped the quick popularization of the Rademacher complexity as one of the main techniques for generalization analysis in supervised learning problems. The analysis presented in Section 10.2 follows this approach. 

Entropy regularization can be regarded as a smoothed upper bound of convex hull regularization. Its use in machine learning appeared first in the online learning literature, and referred to as _multiplicative updates_ (see Littlestone and Warmuth, 1994; Littlestone, 1988), which was used to combine a finite number of experts. It was shown that the polynomial dependency in the number of experts is needed with additive updates (corresponding to _L_ 2 regularization), while logarithmic dependency in the number of experts can be achieved using multiplicative updates (corresponding to entropy regularization). The situation is analogous to Example 10.9. The connection of multiplicative update and entropy regularization was explicitly discussed in (Zhang et al., 2002). The analysis of entropy regularization in the batch learning setting is often referred to as PAC-Bayes analysis (McAllester, 1999). The results stated in Theorem 10.18 can be found in Zhang (2006). In recent years, there has been renewed interest in entropyregularization, due to the mutual information based generalization bound stated in Corollary 10.22. Although the bound is a direct consequence of previously known results, the analysis allows some additional applications (see Russo and Zou, 2016, 2019; Xu and Raginsky, 2017). 

In the statistics literature, greedy algorithms have been used in projection 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

10.6. HISTORICAL AND BIBLIOGRAPHICAL REMARKS 

223 

pursuit and matching pursuit (Friedman and Stuetzle, 1981; Huber, 1985; Mallat and Zhang, 1993). The convergence analysis of greedy algorithm in the convex hull class (similar to Theorem 10.31) was obtained first by Jones (1992) for least squares regression, and later extended by Li and Barron (1999); Zhang (2003b); Barron et al. (2008) for other loss functions. The method of greedy approximation in convex hull is also referred to as Frank Wolfe’s algorithm in the optimization literature (Frank and Wolfe, 1956; Clarkson, 2010). The related boosting algorithms were pioneered by Freund and Schapire (1997) from the point of view of combining weak learners (see Theorem 10.29). Its connection to greedy algorithm was observed by Friedman et al. (2000), and this insight was further developed by Friedman (2001) into gradient boosting, which has been widely used in practical applications. The margin analysis of boosting in Corollary 10.30 was first developed by Bartlett et al. (1998) and later by Koltchinskii and Panchenko (2002). The connection of boosting and _L_ 1 regularization was explored by (Zhang and Yu, 2005) to prove the consistency of boosting procedure. 

The sparse recovery problem was initially investigated for the compressed sensing problem (Donoho, 2006), where the goal is to reconstruct a sparse signal from its random projections. The problem can be regarded as solving a sparse regularized least squares regression problem, and both greedy algorithm and _L_ 1 regularization can be used to recover the sparse signal. Since the signal dimension can be significantly larger than the number of examples, the theory is often referred to as high dimensional statistical analysis (Wainwright, 2019). The support recovery of _L_ 1 regularization in Theorem 10.37 under the _irrepresentable condition_ was due to Zhao and Yu (2006), and a similar analysis was given by Tropp (2006) around the same time. The asymptotic properties of irrepresentable condition was investigated by Wainwright (2009). 

For sparse least squares problem, it was shown in a seminal work (Candes and Tao, 2005) that a weaker condition, referred to as the RIP condition, can be used to obtain parameter estimation bounds in _L_ 2-norm. This condition has been generalized to handle other sparse estimation problems. The RE condition introduced in (Bickel et al., 2009) can be considered as a variant of RIP. Other variations such as conditions suitable for obtaining estimation results in _Lp_ -norms can be found in (Zhang, 2009b). 

Both support recovery and parameter recovery results can be established for greedy algorithms under conditions that are similar to irrepresentable condition (for support recovery) and RIP (for parameter estimation) (Tropp, 2004; Zhang, 2009a, 2011). In addition to _L_ 1 regularization which is convex, some nonconvex regularization methods have also been proposed in the literature (Fan and Li, 2001; Zhang, 2010). It was shown that by using appropriate numerical algorithms that can take advantage of the sparsity structure, one can solve nonconvex formulations, and obtain support recovery results under RIP-like conditions (Zhang, 2010; Zhang and Zhang, 2012). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 10. ADDITIVE MODELS 

224 

## **Exercises** 

- 10.1 In Example 10.9, assume that the vectors [ _ψ_ ( _X_ ) : _X ∈Sn_ ] are orthogonal for _ψ_ ( _X_ ) _∈_ Ψ. Derive a lower bound for the Rademacher complexity of _FA,L_ 2 (Ψ) via direct calculation. 

- 10.2 Let _w∗_ = _e_ 1 _∈_ R<sup>_d_</sup> . Consider _ψ_ ( _x_ ) = [ _ψ_ 1( _x_ ) _, · · · , ψd_ ( _x_ )] _∈_ R<sup>_d_</sup> such that for observations _{_ ( _X_ 1 _, Y_ 1) _, . . . ,_ ( _Xn, Yn_ ) _}_ , _n_<sup>_−_1</sup><sup>_/_2</sup> [ _ψj_ ( _X_ 1) _, . . . , ψj_ ( _Xn_ )] are _d_ orthonormal vectors in R<sup>_n_</sup> ( _j_ = 1 _, . . . , d_ ), and _Yi_ = _w∗_<sup>_⊤ψ_(</sup><sup>_X_</sup> _i_<sup>) +</sup><sup>_ϵ_</sup> _i_<sup>,where</sup><sup>_ϵ_</sup> _i_<sup>_∼N_(0</sup><sup>_, σ_2)(</sup><sup>_i_=1</sup><sup>_, . . . , n_)arezero-</sup> mean noises. Consider ridge regression: 



Find the optimal _λ_ so that 



is minimized. Compute the minimum value. 

- 10.3 In the previous example. Consider the Lasso regression: 



For _λ >_ 0, find an upper of 



Find _λ_ to approximately minimize the upper bound with logarithmic dependency on _d_ , and compare to that of the ridge regression. 

- 10.4 Consider the uniform convergence bound in Theorem 10.4. Let _{_ 1 _, . . . , m}_ = _J_ 1 _∪· · · ∪ Jg_ be a non-overlapping partition of _{_ 1 _, . . . , m}_ into _g_ groups of size _m/g_ each (we assume _m/g_ is an integer). Let _H_ contain the subsets of _{_ 1 _, . . . , m}_ that can be expressed as the union of one or more groups _{Jℓ}_ . That is, if _J ∈ H_ , then for all _ℓ_ = 1 _, . . . , g_ : either _Jℓ ⊂ J_ or _Jℓ ∩ J_ = _∅_ . In group sparsity, we consider only the sparse models indexed by _F ∈ H_ . 

   - Derive a uniform convergence bound for group sparsity, where we consider a uniform bound that holds for all _w_ and _F_ with supp( _w_ ) _⊂ F_ . 

   - Compare this bound to the sparse learning bound of Theorem 10.4, and derive an estimation method in (10.5) with _r_ ( _F_ ) obtained using this bound. Explain when does group sparsity perform better. 

- 10.5 Use the Rademacher complexity of constrained entropy regularization in Corollary 10.17, and the same techniques in the proof of Corollary 10.14 for the following. 

   - Derive a data dependent bound that holds uniformly for all _A >_ 0. 

   - Use the bound to derive an oracle inequality for the soft regularization version of the Gibbs algorithm, and compare the result to Theorem 10.18. 

- 10.6 Prove Proposition 10.39. 

- 10.7 Consider Theorem 10.37. Assume that<sup>_~~√~~_</sup> _<u>nX</u>_ is an _n × p_ random matrix, with iid standard Gaussian entries, and _F_<sup>¯</sup> is independent of _X_ . Show that there exists an absolute constant _c_ 0 _>_ 0 so that if 



then the irrepresentable condition _µ <_ 1 holds with probability at lest 0 _._ 5. 10.8 Consider Theorem 10.37 with columns of _X_ normalized: _∥Xi∥_ 2 = 1 for all _i ∈_ [ _p_ ]. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

Exercises 

225 

- Show that if the mutual incoherence condition sup _i_ = _j |Xi_<sup>_⊤Xj|<_1</sup><sup>_/_(2</sup><sup>_s−_1)holds</sup> for some integer _s ≥_ 1, then the irrepresentable condition holds for all _w_ ¯ such that ¯ 

- _∥w∥_ 0 _≤ s_ . 

- Show that if columns of _Xi_ are normalized from _X_<sup>_′_</sup> where _X_<sup>_′_</sup> is an _n×p_ random matrix with iid standard Gaussian entries, then the mutual incoherence condition holds with _n_ = Ω( _s_<sup>2</sup> ln _p_ ). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

**11** 

