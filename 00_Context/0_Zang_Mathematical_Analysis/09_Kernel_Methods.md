**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Analysis of Kernel Methods** 

A number of different kernel methods have appeared in the statistics literature. One of such methods, which employs the so-called reproducing kernel Hilbert space (RKHS), was popularized in machine learning through support vector machines (SVMs) in the 1990s (Cortes and Vapnik, 1995). This chapter presents an overview of RKHS kernel methods and their theoretical analysis. A more detailed treatment of RKHS kernel methods can be found in (Sch¨olkopf et al., 2018). 

## **9.1 Introduction to Kernel Learning** 

In order to motivate kernel methods, we first consider the classical linear models, with the following real-valued function class _X →_ R indexed by _w_ : 



where _ψ_ ( _x_ ) is a pre-defined (possibly infinite dimensional) feature vector for the input variable _x ∈X_ , and _⟨·, ·⟩_ denotes an inner product in the feature vector space. In classical machine learning, the process of constructing the feature vector (or feature map) _ψ_ ( _x_ ) is referred to as _feature engineering_ , which is problem dependent. The feature vector is usually constructed by hand-crafted rules. 

Given such a feature vector, we consider the following regularized ERM problem, with _L_ 2 regularization: 



which employs the linear function class of (9.1). 

If _ψ_ ( _x_ ) is infinite dimensional (or its dimension is very large), then computationally it may not be feasible to work with _ψ_ ( _x_ ) directly. The learning of the linear model class _F_ can be achieved via an equivalent kernel formulation. We can define a kernel function _k_ ( _x, x_<sup>_′_</sup> ) (also called reproducing kernel) as the inner product of their feature vectors. 



One important observation, referred to as _kernel trick_ , can be described by the following result. 

158 

9.1. INTRODUCTION TO KERNEL LEARNING 

159 

**Proposition 9.1.** _Assume that_ (9.3) _holds. Consider a linear function f_ ( _x_ ) = _⟨w, ψ_ ( _x_ ) _⟩∈F of_ (9.1) _. If w has a representation_ 



_then_ 



_and_ 



_The reverse is also true. That is, if f_ ( _x_ ) _satisfies_ (9.5) _, then with w defined by_ (9.4) _, f_ ( _x_ ) _can be equivalently expressed as f_ ( _x_ ) = _⟨w, ψ_ ( _x_ ) _⟩, and_ (9.6) _holds. Proof_ Consider _f_ ( _x_ ) = _⟨w, ψ_ ( _x_ ) _⟩_ . If (9.4) holds, then 



Moreover, 



This implies (9.6). Similarly the reverse direction holds. 

Proposition 9.1 implies if a linear machine learning algorithm produces a linear solution _f_ ( _x_ ) = _⟨w, ψ_ ( _x_ ) _⟩_ with a weight vector _w_ that satisfies (9.4), then the algorithm can be kernelized in that we can also use the kernel formulation (9.5) to represent the learned function. 

In particular it can be shown that the solution _f_ ( ˆ _w, x_ ) of (9.2) satisfies (9.4), and thus can be kernelized. This result is often referred to as the representer theorem (Sch¨olkopf et al., 2001). 

**Theorem 9.2.** _For real valued functions f_ ( _x_ ) _, the solution of_ (9.2) _has the following kernel representation:_ 



_Therefore the solution of_ (9.2) _is equivalent to the solution of the following finite dimensional kernel optimization problem:_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 9. KERNEL METHODS 

160 

_with kernel Gram matrix_ 



_Proof_ Let 



be the objective function of (9.2), and let 



be the objective function of (9.7). 

The solution of (9.2) satisfies the following first order optimality condition: 



Here _L_<sup>_′_</sup> 1<sup>(</sup><sup>_p, y_)isthederivativeof</sup><sup>_L_(</sup><sup>_p, y_)withrespectto</sup><sup>_p_.Wethusobtainthe</sup> following representation as its solution: 



where 



Using this notation, we obtain from Proposition 9.1 that 

ˆ ˆ ˆ ˜ ˜ _⟨w, ψ_ ( _x_ ) _⟩_ = _f_<sup>¯</sup> (˜ _α, x_ ) _, ⟨w, w⟩_ = _α_<sup>_⊤_</sup> _Kn×nα._ 

This implies that 



˜ where the last equality follows by setting _w_ =<sup>�</sup><sup>_n_</sup> _i_ =1<sup>_α_ˆ</sup><sup>_iψ_(</sup><sup>_Xi_).Proposition9.1</sup> implies that _Q_ 2(ˆ _α_ ) = _Q_ 1( ˜ _w_ ). It follows that _w_ ˜ is a solution of (9.2), which proves the desired result. 

We note that the kernel formulation does not depend on the feature _ψ_ ( _x_ ), and thus can be computed even for an infinite dimensional feature _ψ_ ( _x_ ) as long as _k_ ( _x, x_<sup>_′_</sup> ) is easy to compute. 

Mathematically, the function space spanned by kernel functions of (9.5) with norm defined by (9.6) is referred to as a RKHS, which we can define formally below. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

9.1. INTRODUCTION TO KERNEL LEARNING 

161 

**Definition 9.3.** A symmetric function _k_ ( _x, x_<sup>_′_</sup> ) is called a positive-definite kernel on _X × X_ if for all _α_ 1 _, . . . , αm ∈_ R and _x_ 1 _, . . . , xm ∈X_ , we have 



**Definition 9.4.** Given a symmetric positive-definite kernel, we define a function space _H_ 0 of the form 



with inner product defined as 



The completion of _H_ 0 with respect to this inner product, defined as _H_ , is called the reproducing kernel Hilbert space (RKHS) of kernel _k_ . 

We note that RKHS norm of _f_ ( _x_ ) in Definition 9.4 is well defined. That is, different representations lead to the same norm definition, as stated below. The proof is left as an exercise. 

**Proposition 9.5.** _Assume that for all x ∈X :_ 



_then_ 



We have derived kernel methods from linear models using the kernel trick. The following result shows that the reverse is also true. That is, there exists a feature representation of any RKHS. The result is a consequence of Mercer’s theorem (Mercer, 1909). 

**Theorem 9.6.** _A symmetric kernel function k_ ( _x, x_<sup>_′_</sup> ) _is positive-definite if and only if there exists a feature map ψ_ ( _x_ ) _so that it can be written in the form of_ (9.3) _. Moreover, let H be the RKHS of k_ ( _·, ·_ ) _, then any function f_ ( _x_ ) _∈H can be written uniquely in the form of_ (9.1) _, with ∥f_ ( _x_ ) _∥_<sup>2</sup> _H_<sup>=</sup><sup>_⟨w, w⟩._</sup> 

It is worth noting that although a decomposition (9.3) exists for a positivedefinite kernel function, such decomposition may not be unique. Therefore it is possible to have different feature representations of an RKHS. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 9. KERNEL METHODS 

162 

While the existence of decomposition stated in Theorem 9.6 is general, in practice, to construct a feature representation, one may use simple techniques such as Taylor expansion, as shown by the following example. 

**Example 9.7.** If _x ∈_ R<sup>_d_</sup> , then a standard choice of kernel is the RBF (radial basis function) kernel: 



It is easy to check that it can be written in the form of (9.3) using Taylor expansion as: 



Given an RKHS _H_ , one may consider a norm constrained ERM problem in _H_ as follows: 



The corresponding soft-regularized formulation with appropriate _λ >_ 0 is 



The following result shows that if(9.3) holds, then _f_ ( _x_ ) _∈H_ can be represented by a feature formulation (9.1). In this feature representation, we can write (9.10) equivalently as (9.2). The proof is left as an exercise. 

**Theorem 9.8.** _Consider any kernel function k_ ( _x, x_<sup>_′_</sup> ) _and feature map ψ_ ( _x_ ) _that satisfies_ (9.3) _. Let H be the RKHS of k_ ( _·, ·_ ) _. Then any f_ ( _x_ ) _∈H can be written in the form_ 



_and_ 



_Consequently, the solution of_ (9.10) _is equivalent to the solution of_ (9.2) _._ 

Note that Theorem 9.6 implies that there exists a feature representation of any RKHS, so that the RKHS norm is the same as the 2-norm of the linear weight. In this case, it is easy to see that (9.2) is equivalent to (9.10). Theorem 9.8 shows that the same conclusion holds for any decomposition (9.3) of the kernel function _k_ ( _x, x_<sup>_′_</sup> ). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
2 O o<br>- Y(¥ ) -<br>-<br>-<br>|<br>2O o<br>S CE y e<br>| |<br><!-- End of picture text -->

CHAPTER 9. KERNEL METHODS 

164 

Proposition 9.11 establishes a link of kernel methods and Gaussian processes. In the Gaussian process view of kernel methods, the function values defined on a discrete set of _n_ points _{X_ 1 _, . . . , Xn}_ is a Gaussian **f** _∼ N_ ( **m** _, Kn×n_ ), where **m** _∈_ R<sup>_n_</sup> is the mean, and the kernel Gram matrix _Kn×n_ is the covariance matrix. If the mean function is zero, then the density of the Gaussian is _∝_ exp( _−_ 0 _._ 5 **f**<sup>_⊤_</sup> _Kn_<sup>+</sup> _×n_<sup>**f**),</sup> which is closely related to Proposition 9.11. One can also extend Gaussian processes to infinitely many data points, with covariance of any two points given by the kernel function _k_ ( _x, x_<sup>_′_</sup> ). For least squares regression, it can be shown that the posterior mean of the Gaussian process is equivalent to kernel ridge regression. For other loss functions, the inference may be different. Although Gaussian processes and kernel methods are closely related, one interesting fact is that samples from the Gaussian process corresponding to a kernel function _k_ ( _x, x_<sup>_′_</sup> ) does not in general belong to the RKHS of the kernel function. Exercise 9.4 illustrates why this happens, and more discussions can be found in (Neal, 1998). 

The RHKS representation in Proposition 9.11 can be directly used to obtain a semi-supervised formulation of kernel method, defined on both labeled and unlabeled data as follows. 

**Corollary 9.12.** _Assume that we have labeled data X_ 1 _, . . . , Xn, and unlabeled data Xn_ +1 _, . . . , Xn_ + _m. Let K_ = _K_ ( _n_ + _m_ ) _×_ ( _n_ + _m_ ) _be the kernel Gram matrix of a kernel k on these m_ + _n points, and let H be the corresponding RKHS. Then_ (9.10) _defined on these data points is equivalent to_ 



A drawback of kernel methods is that the computation requires the full kernel matrix _Kn×n_ , and thus it is at least quadratic in _n_ . Moreover, the inference time is linear in _n_ . Both are rather expensive if _n_ is large. 

## **9.2 Universal Approximation** 

An important question for learning methods is whether the underlying function class (model family) can approximate all measurable functions. A function class that can represent all functions is called a _universal approximator_ . Since the set of continuous functions is dense in the set of measurable functions, we only require that all continuous functions can be approximated by the RKHS of a kernel function. The approximation can be measured using different metrics. For simplicity, we consider uniform approximation here. 

**Definition 9.13.** A kernel _k_ ( _x, x_<sup>_′_</sup> ) is called a universal kernel on _X ⊂_ R<sup>_d_</sup> (under the uniform convergence topology) if for any continuous function _f_ ( _x_ ) on _X_ , and any _ϵ >_ 0, there exists _g_ ( _x_ ) _∈H_ such that 

## _∀x ∈X_ : _|f_ ( _x_ ) _− g_ ( _x_ ) _| ≤ ϵ,_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

9.2. UNIVERSAL APPROXIMATION 

165 

where _H_ is the RKHS of kernel _k_ ( _·, ·_ ). 

For kernel methods, the universal approximation result was established in Park and Sandberg (1991). Following their approach, we present a more refined approximation bound for Lipschitz functions using translation invariant kernels on R<sup>_d_</sup> which include the RBF kernel as a special case. Since Lipschitz functions are dense in the set of continuous functions, this result implies universal approximation on any compact set _X ⊂_ R<sup>_d_</sup> . 

**Theorem 9.14.** _Consider a positive definite translation invariant kernel_ 



_where ∥· ∥ is a norm on_ R<sup>_d_</sup> _. Assume that h_ ( _·_ ) _∈_ [0 _,_ 1] _, and_ 



_Assume that f is Lipschitz with respect to the norm ∥· ∥: ∃γ >_ 0 _such that |f_ ( _x_ ) _− f_ ( _x_<sup>_′_</sup> ) _| ≤ γ∥x − x_<sup>_′_</sup> _∥ for all x, x_<sup>_′_</sup> _∈_ R<sup>_d_</sup> _. If_ 



_then for any ϵ >_ 0 _and σ_ = _ϵc_ 0 _/_ ( _γc_ 1) _, there exists ψσ_ ( _x_ ) _∈H, where H is the RKHS of k_ ( _·_ ) _, so that ∥ψσ_ ( _x_ ) _∥H ≤_ ( _c_ 0 _σ_<sup>_d_</sup> )<sup>_−_1</sup> _∥f ∥_ 1 _and_ 



_Proof_ We approximate _f_ by the following function: 



where _α_ ( _z_ ) = _f_ ( _z_ ) _/_ ( _c_ 0 _σ_<sup>_d_</sup> ). Let 



then 



The first inequality used the Cauchy-Schwarz inequality. The second inequality used the fact that _h_ ( _·_ ) _∈_ [0 _,_ 1]. Therefore 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 9. KERNEL METHODS 

166 

The RKHS norm of _ψσ_ ( _x_ ) is given by 



In the following, we only need to show that _|f_ ( _x_ ) _− ψσ_ ( _x_ ) _| ≤ ϵ_ for all _x ∈_ R<sup>_d_</sup> . Using a change of variable for convolution, we also obtain the expression 



Note that 



Since _f_ is Lipschitz, we have 



By setting _ϵ_ = _σγc_<sup>_−_</sup> 0<sup>1</sup><sup>_c_1,weobtainthedesiredresult.</sup> 

The parameter _σ_ is often referred to as the bandwidth in the literature. Theorem 9.14 shows that it is useful to adjust the bandwidth in the kernel approximation because there is a trade-off between approximation error and RKHS norm. As we will see later, the RKHS norm affects generalization. While this result provides a specific approximation bound for Lipschitz functions, in the general situation, one can obtain a more qualitative universal approximate result without such a bound. One approach is to use the Stone-Weierstrass theorem, which states that a continuous function on a compact set in R<sup>_d_</sup> can be uniformly approximated by polynomials. It implies the following result. 

**Theorem 9.15.** _Consider a compact set X in_ R<sup>_d_</sup> _. Assume that a kernel function k_ ( _x, x_<sup>_′_</sup> ) _on X × X has a feature representation k_ ( _x, x_<sup>_′_</sup> ) =<sup>�</sup><sup>_∞_</sup> _i_ =1<sup>_ciψi_(</sup><sup>_x_)</sup><sup>_ψi_(</sup><sup>_x′_)</sup><sup>_,_</sup> _where each ψi_ ( _x_ ) _is a real valued function, and ci >_ 0 _. Assume the feature maps {ψi_ ( _x_ ) : _i_ = 1 _, . . .} contain all monomials of the form {g_ ( _x_ ) =<sup>�</sup><sup>_d_</sup> _j_ =1<sup>_x_</sup> _αj j_ : _x_ = [ _x_ 1 _, . . . , xd_ ] _, αj ≥_ 0 _}. Then k_ ( _x, x_<sup>_′_</sup> ) _is universal on X ._ 

_Proof_ Let _H_ be the RKHS of _k_ ( _·, ·_ ). Note that according to Theorem 9.8, a function of the form _g_ ( _x_ ) =<sup>�</sup><sup>_∞_</sup> _j_ =1<sup>_wiψi_(</sup><sup>_x_) has RKHS norm as</sup><sup>_∥g∥_2</sup> _H_<sup>_≤_�</sup><sup>_∞_</sup> _i_ =1<sup>_w_</sup> _i_<sup>2</sup><sup>_/ci_.</sup> It follows from the assumption of the theorem that all monomials _p_ ( _x_ ) has RKHS norm _∥p∥_<sup>2</sup> _H_<sup>_< ∞_. Therefore</sup><sup>_H_contains all polynomials. The result of the theorem</sup> is now a direct consequence of the Stone-Weierstrass theorem. 

**Example 9.16.** Let _α >_ 0 be an arbitrary constant. Consider the kernel function 



on a compact set of R<sup>_d_</sup> . Since 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

9.2. UNIVERSAL APPROXIMATION 

167 

it is clear that the expansion of ( _x_<sup>_⊤_</sup> _x_<sup>_′_</sup> + 1)<sup>_i_</sup> contains all monomials of order _i_ . Therefore Theorem 9.15 implies that _k_ ( _x, x_<sup>_′_</sup> ) is universal. 

The following result is also useful when we consider compositions of kernels. 

**Theorem 9.17.** _If k_ ( _x, x_<sup>_′_</sup> ) _is a universal kernel on X , and let k_<sup>_′_</sup> ( _x, x_<sup>_′_</sup> ) _be any other kernel function on X × X . Then k_ ( _x, x_<sup>_′_</sup> ) + _k_<sup>_′_</sup> ( _x, x_<sup>_′_</sup> ) _is a universal kernel on X . Moreover, let u_ ( _x_ ) _be a real-valued continuous function on X so that_ 



_Then k_<sup>_′_</sup> ( _x, x_<sup>_′_</sup> ) = _k_ ( _x, x_<sup>_′_</sup> ) _u_ ( _x_ ) _u_ ( _x_<sup>_′_</sup> ) _is a universal kernel on X ._ 

_Proof_ Let _k_ ( _x, x_<sup>_′_</sup> ) = _⟨ψ_ ( _x_ ) _, ψ_ ( _x_<sup>_′_</sup> ) _⟩H_ with the corresponding RKHS denoted by _H_ , and let _k_<sup>_′_</sup> ( _x, x_<sup>_′_</sup> ) = _⟨ψ_<sup>_′_</sup> ( _x_ ) _, ψ_<sup>_′_</sup> ( _x_<sup>_′_</sup> ) _⟩H′_ with RKHS _H_<sup>_′_</sup> . 



Using feature representation, we can represent functions in the RKHS of _k_ ( _x, x_<sup>_′_</sup> )+ _k_<sup>_′_</sup> ( _x, x_<sup>_′_</sup> ) by _⟨w, ψ_ ( _x_ ) _⟩H_ + _⟨w_<sup>_′_</sup> _, ψ_<sup>_′_</sup> ( _x_ ) _⟩H′_ , and thus it contains _H ⊕H_<sup>_′_</sup> . This implies the result. 

For the second result, we know that _k_<sup>_′_</sup> ( _x, x_<sup>_′_</sup> ) = _⟨ψ_ ( _x_ ) _u_ ( _x_ ) _, ψ_ ( _x_<sup>_′_</sup> ) _u_ ( _x_<sup>_′_</sup> ) _⟩H_ , and thus its RHKS can be represented by _⟨w, ψ_ ( _x_ ) _u_ ( _x_ ) _⟩H_ . Since the universality of _k_ ( _x, x_<sup>_′_</sup> ) implies that for any continuous _f_ ( _x_ ), _f_ ( _x_ ) _/u_ ( _x_ ) can be uniformly approximated by _⟨w, ψ_ ( _x_ ) _⟩H_ , we obtain the desired result. 

**Example 9.18.** Consider the RBF kernel function 



Since 



where _u_ ( _x_ ) = exp( _−α∥x∥_ 2<sup>2),Theorem9.17andExample9.16implythat</sup><sup>_k_(</sup><sup>_x, x′_)</sup> is universal on any compact set _X ⊂_ R<sup>_d_</sup> . 

One can also establish a relationship of universal kernel and the Gram matrix _Kn×n_ in Theorem 9.2 as follows. It will be useful when we discuss Neural Tangent kernel in Chapter 11. 

**Theorem 9.19.** _Let k_ ( _x, x_<sup>_′_</sup> ) _be a universal kernel on X . Consider n different data points X_ 1 _, . . . , Xn ∈X , and let Kn×n be the Gram matrix defined in Theorem 9.2. Then Kn×n is full-rank._ 

_Proof_ Consider a vector _Y_ = [ _Y_ 1 _, . . . , Yn_ ] _∈_ R<sup>_n_</sup> . Given _ϵ >_ 0, there exists a continuous function _f_ ( _x_ ) so that _|f_ ( _Xi_ ) _− Yi| ≤ ϵ/_<sup>_√_</sup> _<u>n</u>_ for all _i_ . Since _k_ ( _x, x_<sup>_′_</sup> ) is universal, there exists _g_ ( _x_ ) _∈H_ such that _|g_ ( _Xi_ ) _− f_ ( _Xi_ ) _| ≤ ϵ/_<sup>_√_</sup> _<u>n</u>_ for all _i_ . Therefore _|g_ ( _Xi_ ) _− Yi| ≤_ 2 _ϵ/_<sup>_√_</sup> _<u>n</u>_ for all _i_ . Consider _λ_ = _ϵ_<sup>2</sup> _/∥g∥_<sup>2</sup> _H_<sup>,andlet</sup> 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 9. KERNEL METHODS 

168 

Then 



Using Theorem 9.2, this implies that there exists _α ∈_ R<sup>_n_</sup> so that 



Since _ϵ_ is arbitrary, _Kn×n_ has to be full-rank. 

## **9.3 Generalization Analysis** 

In this section, we study the generalization behavior of kernel methods using the Rademacher complexity analysis. In particular, we want to bound the Rademacher complexities of (9.9) and (9.10). 

We will consider the feature representation (9.1), with the induced kernel (9.3). We know from Theorem 9.8 that if we the function class 



then for any feature map that satisfies (9.3), _F_ ( _A_ ) can be equivalently written in the linear feature representation form as: 



That is, kernel methods with RKHS regularization are equivalent to linear model with _L_ 2 regularization. In the following, we will use the two representation interchangeably. 

**Theorem 9.20.** _Consider F_ ( _A_ ) _defined in_ (9.11) _. We have the following bound for its Rademacher complexity:_ 



_Moreover let F_ = _F_ (+ _∞_ ) _, then_ 



_where in_ (6.3) _, we set_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
pe<br>pe<br>:<br>\e ><br>——<br><!-- End of picture text -->



<!-- Start of picture text -->
i<br>\ Ss<br>s ——<br>-<br>-<br><!-- End of picture text -->

9.3. GENERALIZATION ANALYSIS 

171 

**Example 9.23.** For binary classification problem with _y ∈{±_ 1 _}_ , we may consider a classifier induced by a real valued function _f_ ( _x_ ) such that we predict _y_ = 1 if _f_ ( _x_ ) _≥_ 0 and _y_ = _−_ 1 otherwise. If _f_ ( _x_ ) is taken from an RKHS, then we have the following margin bound. With probability 1 _−δ_ , for all _f ∈H_ with _∥f ∥H ≤ A_ : 



It says that if we can find a classifier with a small margin error, then we can achieve a good test classification error. Unlike the VC analysis in Chapter 4, the bound does not depend on the dimensionality of the feature vector _ψ_ ( _x_ ), but rather the classifier’s RKHS norm _A_ , and margin condition. 

The bound can be obtained as a direct consequence of Corollary 9.22, using a loss function _L_ ( _p, y_ ) = min(1 _,_ max(0 _,_ 1 _− py/γ_ )), which is _γ_<sup>_−_1</sup> Lipschitz. In this case, 1 ( _f_ ( _x_ ) _y ≤_ 0) _≤ L_ ( _f_ ( _x_ ) _, y_ ) _≤_ 1 ( _f_ ( _x_ ) _y ≤ γ_ ). 

We note that the Rademacher complexity analysis only leads to a convergence rate of _O_ (1 _/_<sup>_√_</sup> _<u>n</u>_ <u>).</u> However, similar to the VC-analysis, it is possible to obtain a margin bound of _O_ (ln _n/n_ ) when the margin error is zero. This requires a different analysis stated in Theorem 4.21, together with the empirical _L∞_ covering number of Theorem 5.20. We leave it to Exercise 9.5. 

**Example 9.24.** For SVM loss, _γ_ = 1. With hard regularization, we can take _M_ = (1 + _AB_ ), where we assume that _k_ ( _x, x_ ) _≤ B_<sup>2</sup> . Consider _f_<sup>ˆ</sup> that solves (9.9) up to an accuracy of _ϵ_<sup>_′_</sup> _>_ 0. From Corollary 9.22, we obtain with probability at least 1 _− δ_ , 



Given an arbitrary competitor _f ∈H_ , the optimal value of _A_ would be _A_ = _∥f ∥H_ . However, this requires us to know the value of _∥f ∥H_ , which is not feasible. In practice, it is more convenient to use the soft-regularized version (9.10), where the choice of _λ_ is less sensitive than _A_ , and it can be set independently of _∥f ∥H_ . The following result is a direct consequence of Corollary 9.21 and Theorem 6.14. 

**Corollary 9.25.** _If L_ ( _p, y_ ) _is γ-Lipschitz with respect to p, then we have the following expected oracle inequality for_ (9.10) _._ 



Observe that in Corollary 9.25, the expected oracle inequality does not rely on the boundedness of _L_ ( _·, ·_ ). One may also obtain high probability inequalities by employing the technique of Chapter 8 and a union bound over a properly defined sequence of nested function classes. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
| o e I s<br>a<br>p e fe<br>p e lS<br>|i<br>_<br>—<br>j/———<br>— j/——<br>p e<br><!-- End of picture text -->

9.4. VECTOR VALUED FUNCTIONS 

173 

This implies that 



The first inequality used (9.13). The second inequality can be obtained by maximizing _V_ over _∥f_<sup>ˆ</sup> _∥H_ . The third inequality used the fact that _f_<sup>ˆ</sup> is the solution of (9.10). The last inequality used (9.13) again. 

**Example 9.28.** Consider the soft-regularized SVM in <u>(9.10).</u> We can let _γ_ = 1 and _M_ 0 = 1 _/B_ . It follows that if we take _λ_ = _O_ (1 _/_<sup>_√_</sup> _<u>n</u>_ <u>),</u> then we <u>get</u> an oracle inequality from Corollary 9.27 with a convergence rate of _O_ (�ln ln _n/n_ ). 

## **9.4 Vector Valued Functions** 

We now consider vector valued functions using kernels. In this case, we have _f_ ( _x_ ) : _X →_ R<sup>_q_</sup> for some _q >_ 1. Let _f_ ( _x_ ) = [ _f_ 1( _x_ ) _, . . . , fq_ ( _x_ )]. If we consider the feature space representation, then there are two possibilities. One is to treat these functions as sharing the same feature vector, but with different _w_ : 



Another view is to consider the same _w_ , but with different features for different dimension: 



The second view is more general because we may write the first view as follows. We concatenate the feature representation by letting _w_ = [ _w_ 1 _, . . . , wq_ ] and _ψ_ ( _x, ℓ_ ) = [0 _, . . . ,_ 0 _, ψ_ ( _x_ ) _,_ 0 _, . . . ,_ 0] with only _ℓ_ -the concatenating component to be _ψ_ ( _x_ ), and the other components as zeros. With this representation, _⟨w, ψ_ ( _x, ℓ_ ) _⟩_ = _⟨wℓ, ψ_ ( _x_ ) _⟩_ . In the following discussions, we focus on (9.14). 

Similar to (9.2), we have the following formulation in feature representation: 



where _⟨w, ψ_ ( _Xi, ·_ ) _⟩_ denotes the _q_ -dimensional vector with _⟨w, ψ_ ( _Xi, ℓ_ ) _⟩_ as its _ℓ_ -th component. Its solution has a kernel representation as follows. It may be regarded as a generalization of the representer theorem for scalar functions in Theorem 9.2. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

~~S~~ E) ~~“~~ ry | 

9.4. VECTOR VALUED FUNCTIONS 

175 

Using this representation, we have 

and 



˜ This implies that _Q_ 1( ˆ _w_ ) = _Q_ 2(˜ _α_ ). Similarly, there exists _w_ such that _Q_ 1( ˜ _w_ ) = ˜ _Q_ 2(ˆ _α_ ). Therefore _Q_ 1( ˆ _w_ ) = _Q_ 2(˜ _α_ ) _≥ Q_ 2(ˆ _α_ ) = _Q_ 1( ˜ _w_ ). This implies that _w_ is a solution of (9.15), which proves the result. 

In order to obtain generalization analysis using Rademacher complexity for vector valued functions, we can employ following generalization of Theorem 6.28. The proof is similar to that of Lemma 6.29. 

**Theorem 9.30.** _Consider L_ ( _p, y_ ) _that is γ_ 1 _-Lipschitz in p with respect to the L_ 1 _-norm:_ 



_Consider_ 



_then_ 



For vector kernel method, we may consider the hard-constrained version using feature representation: 



We have the following estimate of Rademacher complexity 

**Lemma 9.31.** _Let_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 9. KERNEL METHODS 

176 

_then with γ_ 1 _defined in Theorem 9.30,_ 



_and_ 



_Proof_ We can set and let _Fj_ = _{⟨w, ψ_ ( _x, j_ ) _⟩_ : _⟨w, w⟩≤ A_<sup>2</sup> _}_ . From Theorem 9.20, we obtain 



and 



We can now apply Theorem 9.30 to obtain the desired bound. 

If _kj,j_ ( _x, x_ ) _≤ B_<sup>2</sup> for all _j_ and _x_ , then Corollary 9.31 implies a bound 



One drawback of this bound is that the Rademacher complexity becomes linear in _q_ , which is usually suboptimal when _q_ is large. For such problems, one needs a more sophisticated estimation of Rademacher complexity. 

**Example 9.32.** Consider the structured SVM loss function (Tsochantaridis et al., 2005) for _q_ -class classification problem, with _y ∈{_ 1 _, . . . , q}_ , and for _f ∈_ R<sup>_q_</sup> : 



where _γ_ ( _y, y_ ) = 0 and _γ_ ( _y, ℓ_ ) _≥_ 0. This loss tries to separate the true class _y_ from alternative _ℓ_ = _y_ with margin _γ_ ( _y, ℓ_ ). It is Lipschitz with respect to _∥f ∥_ 1 with _γ_ 1 = 1. Therefore for problems with _kℓ,ℓ_ ( _x, x_ ) _≤ B_<sup>2</sup> for all _x_ and _ℓ_ , we have from Corollary 9.31 that 



For the structured SVM loss, a better bound on Rademacher complexity, stated in Proposition 9.33, can be obtained from the covering number estimate of Theorem 5.20. The bound depends on _q_ only logarithmically, and we leave its proof as an exercise. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

9.5. REFINED ANALYSIS: RIDGE REGRESSION 

177 

**Proposition 9.33.** _Consider a loss function L_ ( _f, y_ ) _that is γ∞-Lipschitz in p with respect to the L∞-norm:_ 



_Let F_ = _{f_ ( _x_ ) = [ _f_ 1( _x_ ) _, . . . , fq_ ( _x_ )] : _fℓ_ ( _x_ ) = _⟨w, ψ_ ( _x, ℓ_ ) _⟩, ⟨w, w⟩≤ A_<sup>2</sup> _}. Assume that_ sup _x,ℓ⟨ψ_ ( _x, ℓ_ ) _, ψ_ ( _x, ℓ_ ) _⟩≤ B_<sup>2</sup> _. Let G_ = _{L_ ( _f, y_ ) : _f ∈F}. Then there exists a constant c_ 0 _>_ 0 _such that_ 



One may also consider the soft regularized version of structured SVM 



and analyze it using the stability analysis of Chapter 7. In fact, it can be easily checked that _L_ ( _⟨w, ψ_ ( _x, ·_ ) _⟩, y_ ) is _B_ -Lipschitz in _w_ when sup _x,ℓ ∥ψ_ ( _x, ℓ_ ) _∥_ 2 _≤ B_ . Theorem 7.8 implies that for the structured SVM problem, we have an expected generalization bound of 



The structured SVM example shows that for some vector valued estimation problems, stability analysis can be used to obtain results that may be more difficult to obtain using the theory of empirical processes. 

## **9.5 Refined Analysis: Ridge Regression** 

Although the Rademacher complexity analysis leads to useful generalization results, they are not always tight. Moreover, to obtain faster rate, we need to employ local Rademacher complexity analysis, as discussed in Section 6.5. 

For the ridge regression problem, 



we show that it is possible to obtain faster rate more directly. Here we use the vector notation _u_<sup>_⊤_</sup> _v_ = _⟨u, v⟩_ for convenience. 

For simplicity, we will consider the realizable case in that there exists _w∗_ such that 



where _ϵ_ is a zero-mean stochastic noise that may depend on _X_ . 

The following basic result is useful in the theoretical analysis of ridge regression. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

| ~~<u>Cv)</u>~~ | ~~Fv~~ ) 

9.5. REFINED ANALYSIS: RIDGE REGRESSION 

179 

It follows that if Var[ _ϵi|Xi_ ] _≤ σ_<sup>2</sup> , then 



The first equality used (9.20), and the fact that _ϵi_ are independent and zero-mean random variables. The first inequality used E[ _ϵ_<sup>2</sup> _i_<sup>]</sup><sup>_≤σ_2. The second inequality used</sup> (9.21) and the Cauchy-Schwartz inequality. The last inequality used _∥w∗∥_<sup>2</sup> ˆΣ<sup>_−_</sup> _λ_<sup>1</sup> _≤ ∥w∗∥_ 2<sup>2</sup><sup>_/λ_.</sup> 

Moreover, if each _ϵi_ is sub-Gaussian, then 



The first equality used (9.20). The first inequality used the sub-Gaussian noise assumption. The second inequality used (9.21) and the Cauchy-Schwartz inequalˆ ity. The last inequality used _∥w∗∥_ ˆΣ _−λ_ 1<sup>_≤∥w∗∥_2</sup><sup>_/_</sup> _√λ_ . This implies that _w_<sup>_⊤_</sup> _ψ_ ( _X_ ) _− w∗_<sup>_⊤ψ_(</sup><sup>_X_)issub-Gaussian.Thedesiredprobabilityboundsfollowfromthestan-</sup> dard sub-Gaussian tail inequalities in Theorem 2.12. 

Lemma 9.34 implies that the model confidence at an arbitrary test data point _X_ is proportional to _∥ψ_ ( _X_ ) _∥_ ˆΣ _−λ_ 1<sup>.Thismeansthatforridgeregression,onecan</sup> obtain a _confidence interval_ at any data point _X_ . In particular, if we are interested in estimating _w∗_<sup>_⊤ψ_(</sup><sup>_Xi_)forall</sup><sup>_Xi_inthetrainingdata,thenbytakingtheunion</sup> bound over _{X_ 1 _, . . . , Xn}_ , we obtain with probability 1 _− δ_ : 



One can also use a generalization of the _χ_<sup>2</sup> tail probability bound to obtain a bound on the training prediction error more directly without paying a ln _n_ penalty due to the union bound. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 9. KERNEL METHODS 

180 

For the generalization performance of ridge regression on the test data, deriving large probability bounds require concentration of Σ<sup>ˆ</sup><sup>_−_</sup> _λ_<sup>1</sup> to (E Σ<sup>ˆ</sup> _λ_ )<sup>_−_1</sup> . We will not consider such matrix concentration inequalities in this book. Nevertheless, one may also obtain an expected generalization bound without such a matrix concentration result when _λ_ is at least Ω(1 _/n_ ). 

**Theorem 9.35.** _Assume that Sn_ = _{_ ( _Xi, Yi_ ) _}_ 1<sup>_n∼Dn,and_Var[</sup><sup>_ϵi|Xi_]</sup><sup>_≤σ_2</sup><sup>_for_</sup> _all Xi. If we choose λ such that λn > B_<sup>2</sup> _≥_ sup _x ψ_ ( _x_ )<sup>_⊤_</sup> _ψ_ ( _x_ ) _, then_ (9.18) _satisfies_ 



_where_ 





ˆ _Proof_ Consider _Sn_ +1 = _{_ ( _X_ 1 _, Y_ 1) _, . . . ,_ ( _Xn_ +1 _, Yn_ +1) _}_ . Let _w_ be the solution with training data _Sn_ . Let 



then Σ<sup>ˆ</sup> _n ≥_ Σ<sup>ˆ</sup> _n_ +1 + ( _λn − B_<sup>2</sup> ) _I_ . It follows that 



In the above derivation, the first inequality used Lemma 9.34 and Σ<sup>ˆ</sup><sup>_−_</sup> _n_<sup>1</sup> _≤_ (Σ<sup>ˆ</sup> _n_ +1 + ( _λn − B_<sup>2</sup> ) _I_ )<sup>_−_1</sup> . The first equality used the symmetry of _X_ 1 _, . . . , Xn_ +1 conditioned on _Sn_ +1. The second inequality used Jensen’s inequality and the concavity of the matrix function trace(( _A_ + _µI_ )<sup>_−_1</sup> _A_ ) for _µ >_ 0, where _A_ is a symmetric positive semi-definite matrix (see Theorem A.18). 

The quantity _d_ 1 _,λ′_ in Theorem 9.35 measures the effective dimension of ridge regression (see Hsu et al., 2012a). The following result gives an upper bound for _d_ 1 _,λ′_ . The proof is left as an exercise. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

9.5. REFINED ANALYSIS: RIDGE REGRESSION 

181 

**Proposition 9.36.** _Consider ψ_ : _X →H, and λ >_ 0 _. Let_ 



_where_ Σ _D_ = E _X∼Dψ_ ( _X_ ) _ψ_ ( _X_ )<sup>_⊤_</sup> _. If_ dim( _H_ ) _< ∞, then_ 



_More generally, assume that H has a representation ψ_ ( _x_ ) = [ _ψj_ ( _x_ )]<sup>_∞_</sup> _j_ =1<sup>_in 2-norm._</sup> _Given any ϵ >_ 0 _, define the ϵ-scale sensitive dimension as_ 



_then_ 



For finite dimensional problems, where _ψ_ ( _x_ ) _∈_ R<sup>_d_</sup> , the results of Theorem 9.35 and Proposition 9.36 imply that with _λ_ = _B_<sup>2</sup> _/n_ , we have 



This result is superior to the result from standard Rademacher complexity. Note that in Corollary 9.27, with _λ_ = Ω(1 _/_<sup>_<u>√</u>_</sup> _<u>n</u>_ <u>),</u> we can obtain a convergence of _O_ (1 _/_ ( _λn_ )). By choosing _λ_ of order 1 _/_<sup>_√_</sup> _<u>n</u>_ <u>,</u> we can obtain a rate of _O_ (1 _/_<sup>_√_</sup> _<u>n</u>_ <u>).</u> In comparison, we can choose _λ_ of order _O_ (1 _/n_ ) in Theorem 9.35, and obtain a convergence rate of _O_ ( _d/n_ ). 

While the rate of _O_ ( _d/n_ ) is optimal for the finite dimensional case, the constant of _B_<sup>2</sup> _∥w∗∥_ 2<sup>2issub-optimal.Tofurtherimprovethisdependency,oneneedsto</sup> employ a more refined matrix concentration result, as in Hsu et al. (2012a). 

For finite dimensional problems, the result in Hsu et al. (2012a), in a simplified form, can be written as 



This implies _O_ (1 _/n_ ) rate without the extra dependency on _B_<sup>2</sup> in the leading term. Additional results in the infinite dimensional case, with non-zero approximation error term can also be found in Hsu et al. (2012a). 

**Example 9.37.** Consider kernel regression with a kernel that has a scale sensitive dimension _d_ ( _ϵ_ ) in Proposition 9.36. We obtain from Theorem 9.35 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 9. KERNEL METHODS 

182 

## **9.6** _G_ **-Optimal Design in RKHS** 

Lemma 9.34 shows that one can estimate the uncertainty (confidence interval) of the ridge regression prediction on an arbitrary data point _X_ that is independent of the observed _Y_ , and the uncertainty is measured by 



Assume that we are given a set of unlabeled data _{ψ_ ( _X_ ) : _X ∈X} ⊂H_ , where _H_ is an RKHS. Our goal is to select data _Sn_ = _{X_ 1 _, . . . , Xn}_ from _X_ to label, so that the ridge regression solution (9.18) has the smallest maximum uncertainty over _X_ . Using the uncertainty measure (9.22), we can find _Sn_ by solving the following optimization problem: 



Note that in _Sn_ , we may select some _X ∈X_ multiple times. 

This motivates the following closely related problem, which seeks the limiting distribution when _n →∞_ . 

**Theorem 9.38.** _Given a compact set ψ_ ( _X_ ) _⊂H where H is an inner product space. Let λ >_ 0 _, the λ-regularized G-optimal design is a probability distribution π over X that solves the problem_ 



_where_ ∆( _X_ ) _denotes the probability distributions on X , and_ 



_Define the regularized D-optimal design as_ 



_then the following inequality for πD gives an upper bound for the G-optimal design:_ 



_where_ dim( _λ, ψ_ ( _X_ )) _is defined in Proposition 9.36._ 

_Proof_ Without loss of generality, we may assume that _X_ is finite (we can take the limit of finite subset when _X_ is infinite). We note that 



is a convex optimization problem in _π_ because ln _|Z|_ is a concave function of _Z_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

9.6. _G_ -OPTIMAL DESIGN IN RKHS 

183 

(see Theorem A.18). The KKT condition of the optimal solution implies that there exists _ρ >_ 0 such that for all _X ∈X_ : 



Taking expectation over _πD_ , we obtain 



This implies the desired result. 

We note that neither _πG_ nor _πD_ is necessarily unique. Since _πD_ is the solution of a convex problem in _π_ , one may use convex optimization techniques to find an approximation of _πD_ , which gives an approximate solution of the _G_ -optimal design problem (9.24). In particular, the _D_ -optimal design problem can be solved using a greedy algorithm which we state in Algorithm 9.1 (also see Algorithm 10.3 for a similar algorithm). The following convergence result shows that with _η →_ 0 and _n →∞_ , we can achieve a bound of _γm ≤_ dim( _λ, ψ_ ( _X_ ))+ _o_ (1), which matches that of Theorem 9.38. 

**Theorem 9.39.** _For Algorithm 9.1, we have_ 



_where γm_ = max _X∈X ψ_ ( _X_ )<sup>_⊤_</sup> Σ _λ_ ( _πm−_ 1)<sup>_−_1</sup> _ψ_ ( _X_ ) _._ 

_Proof_ Let 



We have for each _i ∈_ [ _n_ ]: 





The first inequality used Theorem A.18 with the matrix trace function _−_ ln _|_ Σ _|_ = trace( _−_ ln Σ) which is convex in Σ. The first equality used the definition of _πi_ in terms of _πi−_ 1. The second inequality used (9.25) and the Sherman–Morrison formula. Inequality ( _a_ ) used (Σ<sup>˜(</sup> _λ_<sup>_i−_1)</sup> )<sup>_−_1</sup> _≥_ Σ _λ_ ( _πi−_ 1)<sup>_−_1</sup> and _ηz/_ (1+ _ηz_ ) is an increasing 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 9. KERNEL METHODS 

184 

function of _z >_ 0 to bound the first term, and used Σ _λ_ ( _πi_ ) _≥_ (1 _− η_ )Σ _λ_ ( _πi−_ 1) to bound the second term. The last inequality used the definition of _m_ and dim( _·_ ). By summing over _i_ = 1 to _i_ = _n_ , we obtain 



The algorithm implies that _gm_ ( _Xm_ ) _≥_ (1 _− η_ ) _γm_ . We can replace _gm_ ( _Xm_ ) by (1 _− η_ ) _γm_ to obtain the desired result. 

## **Algorithm 9.1:** Greedy _G_ -optimal Design 

**Input:** _X_ , _ψ_ ( _·_ ), _π_ 0, _λ >_ 0, _n_ , _η ∈_ (0 _,_ 1) **Output:** _Sn_ **1 for** _i_ = 1 _,_ 2 _, . . . , n_ **do 2** Define _gi_ ( _x_ ) = _ψ_ ( _x_ )<sup>_⊤_</sup> Σ _λ_ ( _πi−_ 1)<sup>_−_1</sup> _ψ_ ( _x_ ) **3** Find _Xi_ so that _gi_ ( _Xi_ ) _≥_ (1 _− η_ ) max _X∈X gi_ ( _X_ ) **4** Let _πi_ = (1 _− η_ ) _πi−_ 1 + _η_ 1 ( _X_ = _Xi_ ) **5** Let _m_ = arg min _i gi_ ( _Xi_ ) **6 return** _πm−_ 1 

**Example 9.40.** If _H_ is a (finite) _d_ -dimensional space and _∥ψ_ ( _X_ ) _∥H ≤ B_ , then 

ln _|_ Σ _λ_ ( _πn_ ) _/_ Σ _λ_ ( _π_ 0) _| ≤ d_ ln trace(Σ _λ_ ( _πn_ ) _/_ ( _d_ Σ _λ_ ( _π_ 0))) _≤ d_ ln(1 + _B_<sup>2</sup> _/_ ( _λd_ )) _._ 

The first inequality used the inequality of arithmetic and geometric means (AMGM). Since dim( _λ, ψ_ ( _·_ ) _≤ d_ , we have 



By taking _η_ = 0 _._ 25 _/d_ and _n_ = _O_ ( _d_ ln(1 + _B_<sup>2</sup> _/_ ( _λd_ )) in Theorem 9.39, we obtain obtain a bound of _γm_ = _O_ ( _d_ ), which matches Theorem 9.38 up to a constant. 

**Example 9.41.** In general, we can define quantity entro( _λ, ψ_ ( _X_ )) according to Proposition 15.8 so that 



If we take _η_ = min(0 _._ 1 _,_ 0 _._ 1 _/_ dim( _λ, ψ_ ( _X_ ))) with an arbitrary _π_ 0 = 1 ( _X_ = _X_ 0) in Algorithm 9.1, then after _n_ = _⌈_ 8entro( _λ, ψ_ ( _X_ )) _⌉_ iterations, we have for _m ≤ n_ in Theorem 9.39, we obtain 



This implies that we can find _m ≤ n_ so that 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

9.6. _G_ -OPTIMAL DESIGN IN RKHS 

185 

More generally, for any nonlinear function class _F_ : _X →_ R, we may define the corresponding nonlinear _G_ -optimal design problem as follows. 

**Definition 9.42.** Given any _ϵ >_ 0, the coverage coefficient of a distribution _π_ on _X_ with respect to a function class _F_ : _X →_ R is defined as 



Given any _ϵ >_ 0, a _G_ -optimal design _πG_ with respect to a function class _F_ : _X →_ R is as the solution to 



where ∆( _X_ ) is the set of probability measures on _X_ . 

The following result shows that nonlinear _G_ -optimal design is a convex optimization problem. 

**Proposition 9.43.** _The G-optimal design objective function_ CC( _ϵ, π, F_ ) _is convex in π._ 

_Proof_ Note that with fixed _f, f_<sup>_′_</sup> _, x_ , the following function of _π_ 



is convex in _π_ . Because sup of convex functions is still convex, we obtain the result. 

The following result is a straight-forward consequence of Theorem 9.38. Note _·_ that in the result, we do not assume that the feature representation _ψ_ ( ) is known. 

**Theorem 9.44.** _Assume that F ⊂H, where H is an RKHS. Assume that f_ ( _x_ ) _has the feature representation f_ ( _x_ ) = _⟨w_ ( _f_ ) _, ψ_ ( _x_ ) _⟩. Let B_ = sup _f,f ′∈F ∥w_ ( _f_ ) _− w_ ( _f_<sup>_′_</sup> ) _∥H be the diameter of F. Then we have_ 



_where_ dim( _·_ ) _is defined in Proposition 9.36._ 

_Proof_ Let Σ = _λI_ + E _x∼πψ_ ( _x_ ) _ψ_ ( _x_ )<sup>_⊤_</sup> , with _λ_ = _ϵ/B_<sup>2</sup> . Then we have 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 9. KERNEL METHODS 

186 

The first inequality used the assumption of the theorem which implies that _λ∥w_ ( _f_ ) _− w_ ( _f_<sup>_′_</sup> ) _∥_<sup>2</sup> _H_<sup>_≤ϵ_.ThesecondinequalityusedtheCauchy-Schwartzin-</sup> equality. The result is now a straight-forward application of Theorem 9.38. 

## **Algorithm 9.2:** Greedy Nonlinear _G_ -optimal Design 

**Input:** _F_ , _X_ , _π_ 0, _λ >_ 0, _n_ , _η ∈_ (0 _,_ 1) **Output:** _πn_ **1 for** _i_ = 1 _,_ 2 _, . . . , n_ **do 2** Define ∆ _F_ = _{f_ ( _x_ ) _− f_<sup>_′_</sup> ( _x_ ) : _f, f_<sup>_′_</sup> _∈F}_ , and _∀_ ∆ _f ∈_ ∆ _F, x ∈X_ : _<u>|</u>_ ∆ _<u>f</u>_ <u>(</u> _x_ <u>)</u> _<u>|</u>_<sup>2</sup> _gi_ (∆ _f, x_ ) = _ϵ_ + E _x′∈πi−_ 1∆ _f_ ( _x_<sup>_′_</sup> )<sup>2</sup><sup>_._</sup> Find _Xi ∈X ,_ ∆ _fi ∈_ ∆ _F_ : _gi_ (∆ _fi, Xi_ ) _≥_ (1 _− η_ ) sup sup _x∈X_ ∆ _f ∈_ ∆ _F_<sup>_gi_(∆</sup><sup>_f, x_)</sup><sup>_._</sup> Let _πi_ = (1 _− η_ ) _πi−_ 1 + _η_ 1 ( _X_ = _Xi_ ) **3** Let _m_ = arg min _i gi_ (∆ _fi, Xi_ ) 

**4 return** _πm−_ 1 

Algorithm 9.2 is a direct generalization of Algorithm 9.1. It is easy to see from (9.26) that the following result holds with a proof nearly identical to that of Theorem 9.39. We leave the proof as an exercise. 

**Theorem 9.45.** _Under the assumptions of Theorem 9.44, Algorithm 9.2 finds a solution that satisfies_ 



## **9.7 Historical and Bibliographical Remarks** 

In mathematics, reproducing kernel Hilbert space was introduced in the early 1900s by Stanislaw Zaremba and Mercer Mercer (1909) in the studies of differential equations and integral equations. It was further developed by various researchers and most noticeably Aronszajn (1950); Bergman (1970). The idea was brought to machine learning by Vapnik with collaborators, for his treatment of support vector machines (Boser et al., 1992; Cortes and Vapnik, 1995; Vapnik, 2013). 

In statistics, kernel methods have been studied in the context of Kriging and Gaussian processes (Krige, 1951; Matheron, 1965). These methods are widely used in spatial statistics and computer experiments. Gaussian processes have been extensively used (see Rasmussen, 2004) both as kernel methods for prediction problems and as a method for hyperparameter tuning (see Bergstra et al., 2011). Kernel methods have also been studied in statistics in the context of smoothing 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

9.7. HISTORICAL AND BIBLIOGRAPHICAL REMARKS 

187 

splines (see Craven and Wahba, 1978; Wahba, 1990), and their convergence rates have been investigated by Stone (1982, 1985). 

As we have shown, kernel least squares regression is related to infinite dimensional ridge regression. A more modern treatment of this subject can be found in (Hsu et al., 2012a). The concept of kernel has also been frequently associated with kernel smoothing in statistics (Wand and Jones, 1994), which is a different way of using kernels than RKHS of this chapter. 

The representer theorem (Sch¨olkopf et al., 2001) was observed by Wahba and Vapnik. Vapnik has also popularized the idea of “kernel trick”, which can be used to kernelize machine learning algorithms that use linear features. This idea has been investigated further by various researchers to kernelize different machine learning algorithms. We refer the readers to Sch¨olkopf et al. (2018) for a more thorough treatment of this subject. 

The universal approximation of kernel method has been shown by Park and Sandberg (1991), and studied further in (Micchelli et al., 2006), which considered universal approximation from the view of kernel’s feature representations. It has also been investigated by Steinwart (2001); Zhang (2004b) in the context of statistical consistency. 

Vector valued kernel functions have been studied by Micchelli and Pontil (2005); Alvarez et al. (2012). Rademacher complexity for vector valued functions have been investigated in Bartlett and Mendelson (2002), and the result is similar to Theorem 9.30. However, as we have pointed out in Section 9.4, the resulting bound is often suboptimal in the dependency of the vector dimension _q_ . In comparison, stability analysis does not suffer from this problem. 

The _G_ -optimal design criterion has been widely used in experimental design (Fedorov, 2013). Theorem 9.38 can handle some infinite dimensional problems, and is related to the well-known result in (Kiefer and Wolfowitz, 1960), where the equivalence of _G_ -optimal design and _D_ -optimal design (without regularization) was established. It is also known that the _G_ -optimal design solution can be achieved with no more than _d_ ( _d_ + 1) _/_ 2 points. The convergence of Algorithm 9.1 and its variants can also be analyzed using techniques described in Section 10.4. While asymptotic formulations of nonlinear _G_ -optimal design have been studied in statistics, the more general formulation presented in Definition 9.42 is new. Its applications in sequential estimation problems can be found in Section 17.5 and Section 18.4. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 9. KERNEL METHODS 

188 

## **Exercises** 

- 9.1 Prove Proposition 9.5 

- 9.2 Prove Theorem 9.8. 

- 9.3 In Example 9.9, assume that _Kn×n_ is positive definite. Show that the primal and dual solutions are identical. Show that the minimum value of the primal objective function is the same as the maximum value of the dual objective function. 

- 9.4 Assume that the Gram matrix _Kn×n_ on _{X_ 1 _, . . . , Xn}_ is positive definite. Consider a Gaussian process on these points with 



Compute E _∥_ **f** _∥_<sup>2</sup> _H_<sup>,andexplainwhathappenswhen</sup><sup>_n →∞_?</sup> 

- 9.5 We consider linear models with _L_ 2 regularization: 



Assume that _k_ ( _x, x_ ) = _ψ_ ( _x_ )<sup>_⊤_</sup> _ψ_ ( _x_ ) _≤ B_<sup>2</sup> for all _x_ . Using the covering number estimate of Theorem 5.20 and Theorem 4.21 to derive a multiplicative form of margin bound similar to the additive form margin bound of Example 9.23. 

- 9.6 Show that the structured SVM problem in Example 9.32 satisfies Proposition 9.33. 

   - Use the empirical _L∞_ covering number bound of Theorem 5.20 to derive an _L∞_ -covering number bound for the structured SVM loss _L_ ( _f, y_ ) defined in the example, with a logarithmic dependence on _q_ . 

   - Use chaining to obtain an estimate of the Rademacher complexity _R_ ( _G, Sn_ ), and compare the results to that of Example 9.32. 

- 9.7 Assume we want to solve the soft-regularized SVM of Example 9.23, with _λ_ chosen based on the training data according to an appropriate learning bounds. Assume we obtain the ˆ ˆ 

- SVM solutions _w_ 1 _, . . . , wN_ at different choices _λ_ 1 _, . . . , λN_ . Assume that _k_ ( _X, X_ ) _≤ B_<sup>2</sup> . 

   - Which bound do you use to select the best _λj_ ? Corollary 9.22, Corollary 9.26, or Corollary 9.27? And explain the procedure. 

   - Obtain an oracle inequality for your procedure. 

- 9.8 Prove Proposition 9.33. 

- 9.9 Prove Proposition 9.36. 

- 9.10 In Proposition 9.36, consider _ψ_ ( _x_ ) = [ _ψj_ ( _x_ )]<sup>_∞_</sup> _j_ =1<sup>sothat</sup><sup>_ψj_(</sup><sup>_x_)2</sup><sup>_≤_</sup> _j_<sup>_<u>c</u>_</sup><sup><u>0</u></sup><sup>_<u>q</u>_forsome</sup><sup>_q>_0.</sup> 

   - Find an upper bound for _d_ ( _ϵ_<sup>_′_</sup> ). 

   - Use the bound for _d_ ( _ϵ_<sup>_′_</sup> ) to find an upper bound for _d_ 1 _,λ_ . 

   - Find the rate of convergence for ridge regression using Theorem 9.35. 

- 9.11 In Example 9.41, for _n ≥_ 2 _m_ , show how to generate _n_ data with equal weighting so that 



with _ν_ = 4. More generally, show that for any _ν >_ 1, there exists _c_ 0 _>_ 0 and _m ≤ ⌈c_ 0entro( _λ, ψ_ ( _X_ )) _⌉_ , such that when _n ≥_ 2 _m_ , the result holds with _ν_ . 

- 9.12 Prove Theorem 9.45 by using the technique of (9.26) to adapt the proof of Theorem 9.39. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

**10** 

