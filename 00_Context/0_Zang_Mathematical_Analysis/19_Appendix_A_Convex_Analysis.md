**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Appendix A** 

# **Basics of Convex Analysis** 

We informally review some basic concepts of convex functions used in this book. For readability, we avoid non-essential technical conditions that may be needed for mathematical rigor. A more formal and rigorous treatment of convex analysis can be found in (Rockafellar, 2015). 

## **A.1** 

**Definition A.1.** A set Ωin a vector space is a convex set if for all _w, w_<sup>_′_</sup> _∈_ Ω and _α ∈_ [0 _,_ 1], _αw_ + (1 _− α_ ) _w_<sup>_′_</sup> _∈_ Ω. A real-valued function _φ_ ( _w_ ) of _w_ is a convex function on a convex set Ωif its epigraph _{_ ( _w, t_ ) _∈_ Ω _×_ R : _t ≥ φ_ ( _w_ ) _}_ is a convex set. 

We also say that a function _φ_ ( _w_ ) is concave if _−φ_ ( _w_ ) is convex. 

**Proposition A.2.** _φ_ ( _w_ ) _is a convex function on_ Ω _if and only if for all α ∈_ (0 _,_ 1) _, and w, w_<sup>_′_</sup> _∈_ Ω 



**Proposition A.3.** _A function φ_ ( _w_ ) _is convex on_ Ω _if for all w ∈_ Ω _, there exists vector g so that for all w_<sup>_′_</sup> _∈_ Ω _:_ 



_Here g is referred to as a_ sub-gradient _in convex analysis, which may not necessarily be unique._ 

_If a convex function φ_ ( _w_ ) _is differentiable at an interior point w ∈_ Ω _, then g_ = _∇φ_ ( _w_ ) _is unique._ 

Without causing confusion, we will use _∇φ_ ( _w_ ) to denote an arbitrary subgradient of a convex function _φ_ ( _w_ ) in this book. An example of non-unique subgradient is given by the one-dimensional convex function _φ_ ( _w_ ) = _|w|_ , for which any _g ∈_ [ _−_ 1 _,_ 1] is a sub-gradient at _w_ = 0. 

**Definition A.4.** Given _λ >_ 0. A function _φ_ ( _w_ ) is _λ_ -strongly convex in _w_ if for all _w, w_<sup>_′_</sup> _∈_ Ω: 



427 

APPENDIX A. BASICS OF CONVEX ANALYSIS 

428 

A strongly convex function may not be differentiable. An example is one dimensional function _φ_ ( _w_ ) = _|w|_ + 0 _._ 5 _w_<sup>2</sup> , which is _λ_ = 1 strongly convex, but not differentiable at _w_ = 0. The following definitions are frequently used in theoretical analysis. It can be applied even for nonconvex functions. 

**Definition A.5.** A function _φ_ ( _w_ ) (which may not necessarily be convex) on Ω is _L_ -smooth if it is differentiable and for all _w, w_<sup>_′_</sup> _∈_ Ω: 



We say _φ_ ( _w_ ) is _G_ -Lipschitz if for all _w ∈_ Ω: 



**Proposition A.6.** _If φ_ ( _w_ ) _is L-smooth, then for any w, w_<sup>_′_</sup> _∈_ Ω _:_ 



_and ∥∇_<sup>2</sup> _φ_ ( _w_ ) _∥_ 2 _≤ L. If φ is G-Lipschitz, then for any w, w_<sup>_′_</sup> _∈_ Ω _:_ 



## **A.2 Basic Properties** 

We list some results for convex functions that are useful in the analysis of this book. 

**Proposition A.7.** _If φ_ ( _w_ ) _is L-smooth on_ R<sup>_d_</sup> _, then for all w, w_<sup>_′_</sup> _∈_ R<sup>_d_</sup> _:_ 



_Proof_ Let 



Then _φ_<sup>˜</sup> ( _w_ ) is _L_ -smooth, and _φ_<sup>˜</sup> ( _w_ ) _≥_ 0 due to convexity. Let _η_ = 1 _/L_ , then 



The second inequality used Proposition A.6. This implies the desired bound. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

A.2. BASIC PROPERTIES 

429 

**Proposition A.8.** _If φ_ ( _w_ ) _is convex on a closed convex set_ Ω _and_ 



_Then there exists a subgradient ∇φ_ ( _w∗_ ) _such that for all w ∈_ Ω _:_ 



_Moreover, if φ_ ( _w_ ) _is λ-strongly convex, and there exists a real number g ≥_ 0 _such that_ 



_then ∥w∗ − w∥_ 2 _≤ g/λ._ 

_Proof_ The first result follows from the theory of convex optimization (Boyd and Vandenberghe, 2004; Rockafellar, 2015), which says that _w∗_ is a minimizer of _φ_ ( _w_ ) on Ωif there exists a sub-gradient _∇φ_ ( _w∗_ ) such that 



Using the definition of strong convexity, we obtain 



Summing up the two inequalities, we obtain 



This implies the second bound. 

We also use the following result regularly in the book. 

**Proposition A.9** (Jensen’s inequality) **.** _Assume that φ_ ( _w_ ) _is a convex function on_ Ω _. Consider w_ 1 _, . . . , wm ∈_ Ω _, and non-negative numbers α_ 1 _, . . . , αm ∈_ R _so that_<sup>�</sup><sup>_m_</sup> _i_ =1<sup>_αi_= 1</sup><sup>_.Then_</sup> 



_More generally, let p be a probability measure on_ Ω _, then φ_ (E _w∼pw_ ) _≤_ E _w∼pφ_ ( _w_ ) _._ 

_Proof_ Let _w_ =<sup>�</sup><sup>_m_</sup> _i_ =1<sup>_αiwi_.Usingconvexity,weknowthatforeach</sup><sup>_i_:</sup> 



where _∇φ_ ( _w_ ) is a sub-gradient of _φ_ . Multiply by _αi_ and sum over _i_ , we obtain 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

APPENDIX A. BASICS OF CONVEX ANALYSIS 

430 

This finishes the proof. The more general inequality can be proved similarly. 

**Proposition A.10** (Cauchy Schwartz inequality) **.** _Let ⟨·, ·⟩ be an inner product, and ∥u∥_ = � _⟨u, u⟩, then_ 



**Proposition A.11** (H¨older’s inequality) **.** _Let p, q ≥_ 1 _such that_ 1 _/p_ + 1 _/q_ = 1 _. Then for any u, v ∈_ R<sup>_d_</sup> _:_ 



## **A.3 Common Convex Functions** 

The following functions are convex. 

_• φ_ ( _w_ ) = _|w|_<sup>_p_</sup> : R _→_ R for _p ≥_ 1. 

_• φ_ ( _w_ ) = _−w_<sup>_p_</sup> : R+ _→_ R for _p ∈_ (0 _,_ 1). 

_• φ_ ( _w_ ) = _w_<sup>_p_</sup> : R+ _→_ R for _p <_ 0. 

_• φ_ ( _w_ ) = _−_ ln _w_ : R+ _→_ R. 

_• φ_ ( _w_ ) = _w_ ln _w_ : R+ _→_ R. 

- _φ_ ( _w_ ) = ln(1 + exp( _w_ )) : R _→_ R 

_• φ_ ( _w_ ) = _∥w∥_ : R<sup>_d_</sup> _→_ R, where _∥· ∥_ is any norm. 

_• φ_ ( _w_ ) = ln<sup>�</sup><sup>_d_</sup> _i_ =1<sup>_pi_exp(</sup><sup>_wi_) : R</sup><sup>_d→_R(</sup><sup>_pi≥_0).</sup> 

_• φ_ ( _w_ ) = ln E _ξ∼p_ exp( _w_ ( _ξ_ )) as a function of _w_ ( _·_ ), where _p_ is a probability distribution of _ξ_ . 

The following results are useful for constructing convex functions. 

**Proposition A.12.** _Let φ_ 1( _w_ ) _and φ_ 2( _w_ ) _be two convex functions, and a_ 1 _, a_ 2 _≥_ 0 _, then_ 



_is a convex function._ 

**Proposition A.13.** _If φ_ 1( _z_ ) _is a non-decreasing convex function on_ R _and φ_ 2( _w_ ) _is a convex function on_ R<sup>_d_</sup> _, then_ 



_is a convex function on_ R<sup>_d_</sup> _._ 

**Proposition A.14.** _Assume that for each θ ∈_ Θ _, φ_ ( _θ, w_ ) _is a convex function of w, then_ 

sup _θ∈_ Θ<sup>_φ_(</sup><sup>_θ, w_)</sup> 

_is a convex function of w._ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

A.4. MATRIX TRACE FUNCTIONS 

431 

The above result implies that the hinge loss 



is convex on R<sup>_d_</sup> , where ( _xy, by_ ) _∈_ R<sup>_d_</sup> _×_ R. 

**Proposition A.15.** _Let φ_ ( _z_ ) _be a convex function on_ R<sup>_q_</sup> _, and let A be a q × d matrix. Then_ 



_is a convex function on_ R<sup>_d_</sup> _._ 

**Proposition A.16.** _If φ_ ( _z_ ) _is convex on_ Ω _, then tφ_ ( _z/t_ ) _is convex on {_ ( _z/t, t_ ) _∈_ Ω _×_ R+ _}._ 

_Proof_ We have 



This proves the convexity of _tφ_ ( _z/t_ ). 

## **A.4 Matrix Trace Functions** 

We can also directly form convex functions for symmetric matrices. 

**Definition A.17.** Let _f_ ( _z_ ) be a real-valued function. For a symmetric matrix _W_ with decomposition _W_ = _U_<sup>_⊤_</sup> Λ _U_ , where Λ = diag( _λ_ 1 _, . . . , λd_ ) is a diagonal matrix, and _U_ orthogonal matrix, we define 



where _f_ (Λ) = diag( _f_ ( _λ_ 1) _, . . . , f_ ( _λd_ )). 

If _f_ ( _z_ ) is differentiable with derivative _f_<sup>_′_</sup> ( _z_ ), then it is not difficult to check that 



The following result is useful in some of the theoretical analysis in the book. 

**Theorem A.18.** _Let S_ [<sup>_d_</sup> _a,b_ ]<sup>_be the set of d×d symmetric matrices with eigenvalues_</sup> _in_ [ _a, b_ ] _. If f_ ( _z_ ) : [ _a, b_ ] _→_ R _is a convex function, then_ 

trace( _f_ ( _W_ )) 

_is a convex function on S_ [<sup>_d_</sup> _a,b_ ]<sup>_.ThisimpliesthatforW, W ′∈S_</sup> [<sup>_d_</sup> _a,b_ ]<sup>_:_</sup> 

trace( _f_ ( _W_<sup>_′_</sup> )) _≥_ trace( _f_ ( _W_ )) + trace( _f_<sup>_′_</sup> ( _W_ )( _W_<sup>_′_</sup> _− W_ )) _,_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

Y rir) 

yy 

y 

> 

> 

y 

y 

y 

y 

~~O~~ 

