**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Covering Number Estimates** 

This chapter derives covering number estimates of certain function classes, including some parametric and nonparametric function classes. 

## **5.1 Packing Number** 

In many applications, it is more convenient to estimate the packing number of a set, which is a concept closely related to covering number. Given a set _G_ in a pseudometric space, one can naturally define its metric covering number as in Definition 4.1. Similarly, one can define its packing number below. 

**Definition 5.1** (Packing Number) **.** Let ( _V, d_ ) be a pseudometric space with metric _d_ ( _·, ·_ ). A finite subset _G_ ( _ϵ_ ) _⊂G_ is an _ϵ_ -packing of _G_ if _d_ ( _φ, φ_<sup>_′_</sup> ) _> ϵ_ for all _φ, φ_<sup>_′_</sup> _∈G_ ( _ϵ_ ). The _ϵ_ -packing number of _G_ , denoted by _M_ ( _ϵ, G, d_ ), is the largest cardinality of _ϵ_ -packing of _G_ . 

The following results illustrate the equivalence between covering number and packing number. One advantage of using an _ϵ_ packing of _G_ instead of an _ϵ_ cover of _G_ is that all members in the _ϵ_ packing also belong to _G_ . There if members in _G_ satisfy certain assumptions such as the variance condition, then members of its _ϵ_ packing also satisfy such assumptions. For this reason, we will use packing numbers instead of covering numbers in some of the theoretical analysis in later chapters. 

**Theorem 5.2.** _For all ϵ >_ 0 _, we have_ 



_Proof_ Let _G_ ( _ϵ_ ) = _{φ_ 1 _, . . . , φM } ⊂G_ be a maximal _ϵ_ -packing of _G_ . Given any _φ ∈G_ , by the definition of maximality, we know that there exists _φj ∈G_ ( _ϵ_ ) so that _d_ ( _φj, φ_ ) _≤ ϵ_ . This means that _G_ ( _ϵ_ ) is also an _ϵ_ cover of _G_ . Therefore _N_ ( _ϵ, G, d_ ) _≤ M_ . This proves the first inequality. 

On the other hand, let _G_<sup>_′_</sup> ( _ϵ/_ 2) be an _ϵ/_ 2 cover of _G_ . By definition, for any ˜ _φj ∈G_ ( _ϵ_ ), there exists _g_ ( _φj_ ) _∈G_<sup>_′_</sup> ( _ϵ/_ 2) such that _d_ (˜ _g_ ( _φj_ ) _, φj_ ) _≤ ϵ/_ 2. For _j_ = _i_ , we know that _d_ ( _φi, φj_ ) _> ϵ_ , and thus triangle inequality implies that 



72 

5.2. LIPSCHITZ FUNCTION IN FINITE DIMENSION 

73 

˜ ˜ ˜ Therefore _g_ ( _φi_ ) = _g_ ( _φj_ ). This implies the map _φj ∈G_ ( _ϵ_ ) _→ g_ ( _φj_ ) _∈G_<sup>_′_</sup> ( _ϵ/_ 2) is one to one. Therefore _|G_ ( _ϵ_ ) _| ≤|G_<sup>_′_</sup> ( _ϵ/_ 2) _|_ . This proves the second inequality. 

We have the following well-known estimate of the covering and packing numbers on a finite dimensional compact set. 

**Theorem 5.3.** _Let ∥· ∥ be a seminorm on_ R<sup>_k_</sup> _. Let B_ ( _r_ ) = _{z ∈_ R<sup>_k_</sup> : _∥z∥≤ r} be the ∥· ∥-ball with radius r. Then_ 



_Moreover,_ 



_Proof_ Let _{z_ 1 _, . . . , zM } ⊂ B_ ( _r_ ) be a maximal _ϵ_ packing of _B_ ( _r_ ). Let _Bj_ = _{z ∈_ R<sup>_k_</sup> : _∥z − zj∥≤ ϵ/_ 2 _}_ , then _Bj ∩ Bk_ = _∅_ for _j_ = _k_ and _Bj ⊂ B_ ( _r_ + _ϵ/_ 2) for all _j_ . It follows that 



Let _v_ = volume( _B_ (1)). Since volume( _Bj_ ) = ( _ϵ/_ 2)<sup>_k_</sup> _v_ and volume( _B_ ( _r_ + _ϵ/_ 2)) = ( _r_ + _ϵ/_ 2)<sup>_k_</sup> _v_ , we have 



This implies the first bound. 

Let _{z_ 1 _, . . . , zN } ⊂_ R<sup>_k_</sup> be a cover of _B_ ( _r_ ). If we define _Bj_ = _{z ∈_ R<sup>_k_</sup> : _∥z −zj∥≤ ϵ}_ , then _B_ ( _r_ ) _⊂∪jBj_ . Therefore 



Let _v_ = volume( _B_ (1)). Since volume( _Bj_ ) = ( _ϵ_ )<sup>_k_</sup> _v_ and volume( _B_ ( _r_ )) = _r_<sup>_k_</sup> _v_ , we have 



This implies the second bound. 

## **5.2 Lipschitz Function in Finite Dimension** 

We now consider the following function class 



where Ω _⊂_ R<sup>_k_</sup> is a compact set. The situation that the model parameter _w_ is finite dimensional is often called a _parametric model_ . The following result shows that the bracketing number of parametric model is polynomial in _ϵ_ . 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 5. COVERING NUMBER ESTIMATES 

74 

**Theorem 5.4.** _Consider_ (5.1) _. Assume that_ Ω _⊂_ R<sup>_k_</sup> _is a compact set so that_ Ω _∈ B_ ( _r_ ) _with respect to a norm ∥· ∥. Assume for all z, φ_ ( _w, z_ ) _is γ_ ( _z_ ) _Lipschitz with respect to w:_ 







_Proof_ Let _{w_ 1 _, . . . , wM }_ be an _ϵ/γp_ packing of Ω. Then it is also an _ϵ/γp_ cover of Ω. Let _φ_<sup>_L_</sup> _j_<sup>(</sup><sup>_z_)=</sup><sup>_φ_(</sup><sup>_wj, z_)</sup><sup>_−γ_(</sup><sup>_z_)</sup><sup>_ϵ/γp_and</sup><sup>_φU_</sup> _j_<sup>(</sup><sup>_z_)=</sup><sup>_φ_(</sup><sup>_wj, z_) +</sup><sup>_γ_(</sup><sup>_z_)</sup><sup>_ϵ/γp_.Then</sup> _{_ [ _φ_<sup>_L_</sup> _j_<sup>_, φU_</sup> _j_<sup>]:</sup><sup>_j_=1</sup><sup>_, . . . , M}_isan2</sup><sup>_ϵLp_(</sup><sup>_D_)-bracketingcover.Wecannowapply</sup> Theorem 5.3 to obtain the desired result. 

Note that if we take _p_ = _∞_ , the we obtain the following result on the uniform covering number. 



One may also obtain bracketing numbers for certain smooth nonparametric function classes, with entropy of the form 



We refer the readers to (van der Vaart and Wellner, 1996, chapter 2.7) and (Nickl and P¨otscher, 2007) for such examples. 

## **5.3 Empirical** _Lp_ **Covering Numbers of VC-class** 

We have obtained empirical _L∞_ covering number bounds for VC classes in Section 4.4, and the covering number depends logarithmically on the sample size _n_ . It is also possible to obtain the empirical _Lp_ covering number for VC classes for _p < ∞_ which is independent of _n_ . The estimate of _L_ 2 empirical covering number can be directly used with chaining. 

Recall that given empirical distribution _Sn_ , the empirical _Lp_ cover is the number of functions needed to cover _φw_ based on the empirical _Lp_ metric: 



We have the following estimate. 

**Theorem 5.5.** _If a binary valued function class G_ = _{φ_ ( _w, Z_ ) : _w ∈_ Ω _} is a VC class, then for ϵ ≤_ 1 _:_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

5.3. EMPIRICAL _LP_ COVERING NUMBERS OF VC-CLASS 

75 

_Proof_ Given _Sn_ = _{Z_ 1 _, . . . , Zn}_ . Let _Q_ = _{φ_ 1 _, . . . , φm}_ be a maximal _ϵ L_ 1( _Sn_ ) packing of _G_ . _Q_ is also an _L_ 1 _ϵ_ -cover of _G_ . Consider the empirical distribution, denoted by _Sn_ , which puts a probability of 1 _/n_ on each _Zi_ . We have for _j_ = _k_ : 

Pr _Z∼Sn_<sup>[</sup><sup>_φj_(</sup><sup>_Z_) =</sup><sup>_φk_(</sup><sup>_Z_)] = 1</sup><sup>_−_E</sup><sup>_Z∼Sn|φj_(</sup><sup>_Z_)</sup><sup>_−φk_(</sup><sup>_Z_)</sup><sup>_| <_1</sup><sup>_−ϵ._</sup> 

Now consider random sample with replacement from _Sn_ for _T_ times to obtain samples _{Zi_ 1 _, . . . , ZiT }_ . We have 

Pr( _{∀ℓ_ : _φj_ ( _Ziℓ_ ) = _φk_ ( _Ziℓ_ ) _}_ ) _<_ (1 _− ϵ_ )<sup>_T_</sup> _≤ e_<sup>_−T ϵ_</sup> _._ 

That is, with probability larger than 1 _− e_<sup>_−T ϵ_</sup> , 



Taking the union bound for all _j_ = _k_ , we have with probability larger than 1 _−_ � _m_ 2 � _· e−T ϵ_ , for all _j_ = _k_ : 



If we take _T_ = _⌈_ ln( _m_<sup>2</sup> ) _/ϵ⌉_ , then _e_<sup>_−T ϵ_�</sup><sup>_m_</sup> 2 � _≤_ 1. Then there exists _T_ samples _{Ziℓ_ : _ℓ_ = 1 _, . . . , T }_ such that _φj_ = _φk_ for all _j_ = _k_ when restricted to these samples. Since vc( _G_ ) = _d_ , we obtain from Sauer’s lemma: 



The theorem holds automatically when _m ≤_ 2<sup>_d_</sup> . Otherwise, 



Let _u_ = _d_<sup>_−_1</sup> ln _m −_ ln(1 _/ϵ_ ) _−_ ln ln(4 _/ϵ_ ) and let _ϵ ≤_ 1, we can obtain the following bound by using the upper bound of ln _m_ : 





where the last inequality is obtained by taking sup over _ϵ ∈_ (0 _,_ 1]. By solving this inequality we obtain a bound _u ≤_ 3. This implies the desired result. 

It is possible to prove a slightly stronger result using a refined argument in the proof of Theorem 5.5. 

**Theorem 5.6** (Haussler, 1995) **.** _Let G be a binary valued function class with_ vc( _G_ ) = _d. Then_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 5. COVERING NUMBER ESTIMATES 

76 

From Exercise 5.3, we have 

ln _N_ ( _ϵ, G, Lp_ ( _Sn_ )) _≤_ 1 + ln( _d_ + 1) + _d_ ln(2 _e/ϵ_<sup>_p_</sup> ) _._ 

If we replace _Sn_ by any distribution _D_ over _Z_ , then we still have 

ln _N_ ( _ϵ, G, Lp_ ( _D_ )) _≤_ 1 + ln( _d_ + 1) + _d_ ln(2 _e/ϵ_<sup>_p_</sup> ) _,_ 

because any _D_ can be approximated by empirical distribution drawn from _D_ with sufficiently large _n_ . We thus have the following result. 

**Corollary 5.7.** _If_ vc( _G_ ) = _d, then for all distributions D over Z, we have_ 

ln _N_ ( _ϵ, G, Lp_ ( _D_ )) _≤_ 1 + ln( _d_ + 1) + _d_ ln(2 _e/ϵ_<sup>_p_</sup> ) 

_for ϵ ∈_ (0 _,_ 1] _and p ∈_ [1 _, ∞_ ) _._ 

We note that the result of Corollary 5.7 is independent of the underlying distribution. For empirical distribution _Sn_ , the bound is independent of _n_ . Of particular interest is the case of _p_ = 2, for which we may apply the chaining technique with the _L_ 2( _Sn_ ) covering number bound of Corollary 5.7. The result (see Example 6.26) removes a ln _n_ factor, when compared to the result in Theorem 4.17, which employs the original _L∞_ ( _Sn_ ) VC covering number bound. 

## **5.4 VC-subgraph Class** 

One may extend the concept of VC dimension to real valued functions by introducing the definition of VC subgraph class. 

**Definition 5.8.** A real valued function class of _z ∈Z_ 

_G_ = _{φ_ ( _w, Z_ ) : _w ∈_ Ω _}_ 

is a VC-subgraph class, if the binary function class 



defined on ( _z, t_ ) _∈Z ×_ R is a VC class. The VC dimension (some times also called pseudo-dimension) of _G_ is vc( _G_ ) = vc( _G_ sub _−_ graph). 

**Example 5.9.** The _d_ dimensional linear functions of the form _fw_ ( _x_ ) = _w_<sup>_⊤_</sup> _x_ is VC subgraph class of VC dimension _d_ + 1. This is because _w_<sup>_⊤_</sup> _x − t_ is linear function in _d_ + 1 dimension, and we have shown that it has VC dimension _d_ + 1. 

**Example 5.10.** If _F_ = _{f_ ( _w, x_ ) : _w ∈_ Ω _}_ is a VC subgraph class and _h_ is monotone function, then _h ◦F_ = _{h_ ( _f_ ( _w, x_ )) : _w ∈_ Ω _}_ is a VC subgraph class with vc( _h ◦F_ ) _≤_ vc( _F_ ). 

**Theorem 5.11.** _Assume that G is a VC subgraph class, with VC dimension d, and all φ ∈G are bounded: φ_ ( _Z_ ) _∈_ [0 _,_ 1] _. Then for any distribution D over Z, ϵ ∈_ (0 _,_ 1] _and p ∈_ [1 _, ∞_ ) _, we have_ 

ln _N_ ( _ϵ, G, Lp_ ( _D_ )) _≤_ 1 + ln( _d_ + 1) + _d_ ln(2 _e/ϵ_<sup>_p_</sup> ) _._ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

5.5. CONVEX HULL CLASS 

77 

_Moreover,_ 

ln _N∞_ ( _ϵ, G, n_ ) _≤ d_ ln max[2 _, en/_ ( _dϵ_ )] _._ 

_Proof_ Let _U_ be a random variable distributed uniformly over [0 _,_ 1]. Then for all _a ∈_ (0 _,_ 1): E _U_ 1 ( _U ≤ a_ ) = _a_ . Thus for all _φ, φ_<sup>_′_</sup> _∈G_ : 



The last inequality used the Jensen’s inequality. Therefore 



This leads to the desired bound. 

The second bound can be proved by discretizing _U_ into intervals with thresholds min(1 _, ϵ_ (2 _k_ + 1)) for _k_ = 0 _,_ 1 _, . . ._ with no more than _⌈_ (2 _ϵ_ )<sup>_−_1</sup> _⌉≤_ 1 _/ϵ_ thresholds. This gives an _ϵ_ -cover of _U_ in Euclidean distance. We can then approximate E _U_ by average over the thresholds to get _ϵ L∞_ cover with the discretization. Let the set of thresholds be _U_<sup>_′_</sup> . If _D_ contain _n_ data points, then _D × U_<sup>_′_</sup> contains at most _n|U_<sup>_′_</sup> _| ≤ n/ϵ_ points, and one may apply Sauer’s lemma to obtain a cover on these points. This implies the second bound. 

## **5.5 Convex Hull Class** 

Convex hull of a function class is frequently encountered in applications, and is related to _L_ 1 regularization. We can define the convex hull of a function class as follows. 

**Definition 5.12.** The convex hull of a function class _F_ = _{f_ ( _θ, x_ ) : _θ ∈_ Θ _}_ is as 



We also include the closure of the finite sum functions above with respect to an appropriate topology in the convex hull. 

If _F_ is finite, then we have the following covering number estimates. 

**Theorem 5.13.** _Consider a finite function class F_ = _{f_ 1 _, . . . , fd}, and assume that for a distribution D and p ∈_ [1 _, p_ ] _,_ sup _f ∈F ∥f ∥Lp_ ( _D_ ) _≤ A. Then for ϵ ≤ A:_ ln _M_ ( _ϵ,_ conv( _F_ ) _, Lp_ ( _D_ )) _≤ d_ ln(3 _A/ϵ_ ) _._ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

bie or | & ! 

~~l~~ c | 

| ~~b~~ el ~~l~~ e ~~] f~~ s x | 

5.5. CONVEX HULL CLASS 

79 

Since _k_<sup>_−_1 �</sup><sup>_k_</sup> _s_ =1<sup>_fj_</sup> _s_<sup>_∈Qk_,weknowthat</sup><sup>_Qk_isan1</sup><sup>_/_</sup> _√k_ cover of conv( _F_ ). Take _k_ = _⌈_ 1 _/ϵ_<sup>2</sup> _⌉_ , we know that _Qk_ is an _ϵ_ cover. Moreover, since 



we obtain the bound in the theorem. 

We can also estimate the _L_ 2 covering number for the convex hull of a parametric function class, such as VC-subgraph class. Specifically, in a parametric function class, the covering number is given by 



where _c_ is a constant, and _V_ is the dimensionality (such as VC-dimension) of the function class _F_ . 

The convex hull of (5.2) is referred to as the _VC-hull class_ . Its covering number estimate can be obtained as follows. 

**Theorem 5.15.** _Consider a function class F with covering number given by_ (5.2) _for some c >_ 0 _and V >_ 0 _. Let A_ = sup _f ∈F ∥f ∥L_ 2( _D_ ) _, then we have_ 

ln _N_ ( _ϵ,_ conv( _F_ ) _, L_ 2( _D_ )) _≤_ 10(2 _c/ϵ_ )<sup>2</sup><sup>_V/_(</sup><sup>_V_+2)</sup> ln max[12 _A/ϵ,_ 3 + 3(2 _c/ϵ_ )<sup>_V_</sup> ] 

_for all ϵ ≤_ 2 _c._ 

_Proof_ We let _Fϵ_ be an _ϵ/_ 2 cover of _F_ in _L_ 2( _D_ ). Then any _ϵ/_ 2 cover of conv( _Fϵ_ ) gives an _ϵ_ cover of conv( _F_ ). 

Moreover, we consider _Fϵ′_ as an _ϵ_<sup>_′_</sup> _/_ 2 cover of _Fϵ_ for some _ϵ_<sup>_′_</sup> _≥ ϵ_ , and decompose each _fj ∈Fϵ_ as 



where _f_<sup>_′_</sup> _∈Fϵ′_ and _∥_ ∆ _f ∥L_ 2( _D_ ) _≤ ϵ_<sup>_′_</sup> _/_ 2. Let ∆ _Fϵ_ = _{_ ∆ _f_ : _f ∈Fϵ}_ , then using this decomposition, we know that 



It follows that 

ln _N_ ( _ϵ,_ conv( _F_ ) _, L_ 2( _D_ )) _≤_ ln _N_ ( _ϵ/_ 2 _,_ conv( _Fϵ_ ) _, L_ 2( _D_ )) 

_≤_ ln _N_ ( _ϵ/_ 4 _,_ conv( _Fϵ′_ ) _, L_ 2( _D_ )) + ln _N_ ( _ϵ/_ 4 _,_ conv(∆ _Fϵ_ ) _, L_ 2( _D_ )) _._ 

Since 



we have from Theorem 5.13 

ln _N_ ( _ϵ/_ 4 _,_ conv( _Fϵ′_ ) _, L_ 2( _D_ )) _≤_ (2 _c/ϵ_<sup>_′_</sup> )<sup>_V_</sup> ln(12 _A/ϵ_ ) _._ 

Moreover, since 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 5. COVERING NUMBER ESTIMATES 

80 

we have from Theorem 5.14 that 

ln _N_ ( _ϵ/_ 4 _,_ conv(∆ _Fϵ_ ) _, L_ 2( _D_ )) _≤_ (3 _ϵ_<sup>_′_</sup> _/ϵ_ )<sup>2</sup> ln[ _e_ + _e_ (2 _c/ϵ_ )<sup>_V_</sup> ( _ϵ/ϵ_<sup>_′_</sup> )] _._ 

Now let _ϵ_<sup>_′_</sup> _/_ 2 _c_ = ( _ϵ/_ 2 _c_ )<sup>2</sup><sup>_/_(</sup><sup>_V_+2)</sup> , we have 

ln _N_ ( _ϵ/_ 4 _,_ conv( _Fϵ′_ ) _, L_ 2( _D_ )) + ln _N_ ( _ϵ/_ 4 _,_ conv(∆ _Fϵ_ ) _, L_ 2( _D_ )) 

_≤_ (2 _c/ϵ_<sup>_′_</sup> )<sup>_V_</sup> ln(12 _A/ϵ_ ) + (3 _ϵ_<sup>_′_</sup> _/ϵ_ )<sup>2</sup> ln[ _e_ + _e_ (2 _c/ϵ_ )<sup>_V_</sup> ( _ϵ/ϵ_<sup>_′_</sup> )] 

_≤_ (2 _c/ϵ_ )<sup>2</sup><sup>_V/_(</sup><sup>_V_+2)</sup> ln(12 _A/ϵ_ ) + 9(2 _c/ϵ_ )<sup>2</sup><sup>_V/_(</sup><sup>_V_+2)</sup> ln[ _e_ + _e_ (2 _c/ϵ_ )<sup>_V_</sup> ] _._ 

This proves the theorem. 

Note that for a finite dimensional class _d_ = _|F| < ∞_ , its VC dimension is no more than log2 _d_ because any _⌊_ log2 _|F|⌋_ + 1 points cannot be shattered. It means that we can take _V_ = log2 _d_ , and obtain a result 



which is slightly better in its dependency of _ϵ_ than that of Theorem 5.14, which has an entropy growth rate of _O_ ( _ϵ_<sup>_−_2</sup> ). 

Using a similar proof technique, but with a more careful analysis, it is possible to get rid of ln(1 _/ϵ_ ) in Theorem 5.15, and obtain the following result. The details can be found in (van der Vaart and Wellner, 1996). 

**Theorem 5.16.** _Let A_ = sup _f ∈F ∥f ∥L_ 2( _D_ ) _. If_ ln _N_ ( _F, ϵ, L_ 2( _D_ )) _≤ V_ ln( _cA/ϵ_ ) _for some c ≥_ 1 _and V >_ 0 _, then when ϵ ≤_ 1 _, we have_ 



_for some K_ ( _c, V_ ) _that depends on c and V ._ 

The convex hull of a parametric function class has entropy growth rate with a polynomial (1 _/ϵ_ )<sup>_r_</sup> dependency on 1 _/ϵ_ . Since _r <_ 2, the entropy integral 



Therefore the convex hull of a parametric function class is a Donsker class, for which the central limit theorem holds for the corresponding empirical process. 

**Example 5.17.** Consider neural networks with _x ∈_ R<sup>_d_</sup> . Let _h_ ( _z_ ) = 1 _/_ (1 + exp( _−z_ )) be the sigmoid activation function. Let 



be the function class of one-layer neurons, then _F_ is a VC sub-graph class with vc( _F_ ) = _d_ + 1. Thus it has parametric covering number 



> This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

5.6. REGULARIZED LINEAR FUNCTION CLASSES 

81 

uniformly for all distributions _D_ . The _L_ 1 regularized two-layer neural network of the form 



has entropy number of 



## **5.6 Regularized Linear Function Classes** 

In machine learning, one often encounters a linear function class of the form: 

_F_ = _{f_ ( _w, x_ ) = _w_<sup>_⊤_</sup> _ψ_ ( _x_ ) : _w ∈_ Ω _, x ∈X}_ (5.3) 

where _ψ_ ( _x_ ) is a known feature vector, and we assume both _w_ and _ψ_ ( _x_ ) can be infinite dimensional. This includes kernel methods, which are studied in Chapter 9. We have the following theorem, which can be used to estimate the covering numbers for kernel methods. The result is independent of the dimensionality of the problem. 

**Theorem 5.18.** _Let w_ = [ _w_ 1 _, w_ 2 _, . . ._ ] _∈_ R<sup>_∞_</sup> _and ψ_ ( _x_ ) = [ _ψ_ 1( _x_ ) _, ψ_ 2( _x_ ) _, . . ._ ] _∈_ R<sup>_∞_</sup> _. Let_ Ω= _{w_ : _∥w∥_ 2 _≤ A}. Given a distribution D on X . Assume there exists B_ 1 _≥ B_ 2 _≥· · · such that_ 



_Define_ 



_Then the function class F of_ (5.3) _satisfies:_ 



_Proof_ Given _ϵ >_ 0. Consider _j_ = _d_<sup>˜</sup> ( _ϵ/_ 2) such that _ABj_ +1 _≤ ϵ/_ 2. Let _F_ 1 = _{_<sup>�</sup><sup>_j_</sup> _i_ =1<sup>_wiψi_(</sup><sup>_x_) :</sup><sup>_w∈_Ω</sup><sup>_}_and</sup><sup>_F_2=</sup><sup>_{_�</sup> _i>j_<sup>_wiψi_(</sup><sup>_x_) :</sup><sup>_w∈_Ω</sup><sup>_}_.Since</sup><sup>_∥f∥L_</sup> 2<sup>(</sup><sup>_D_)</sup><sup>_≤ϵ/_2</sup> for all _f ∈F_ 2, we have _N_ ( _ϵ/_ 2 _, F, L_ 2( _D_ )) = 1. Moreover, Theorem 5.3 implies that 



Note that _F ⊂F_ 1 + _F_ 2, we have ln _N_ ( _ϵ, F, L_ 2( _D_ )) _≤_ ln _N_ ( _ϵ/_ 2 _, F_ 1 _, L_ 2( _D_ )) + ln _N_ ( _ϵ/_ 2 _, F_ 2 _, L_ 2( _D_ )). This implies the result. 

One may regard _d_ ( _ϵ_ ) as the effective dimension of the regularized linear system (5.3) at a scale _ϵ_ . The following example gives a consequence of Theorem 5.18. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 5. COVERING NUMBER ESTIMATES 

82 

**Example 5.19.** Assume that _Bj_ = _j_<sup>_−q_</sup> , then 



If _Bj_ = _O_ ( _c_<sup>_j_</sup> ) for some _c ∈_ (0 _,_ 1), then 



For a general linear function class (5.3) with _L_ 2 regularization: _∥w∥_ 2 _≤ A_ and _∥ψ_ ( _x_ ) _∥_ 2 _≤ B_ , we can obtain a bound on ln _N_ ( _ϵ, F, L_ 2( _D_ )) using Gaussian complexity estimate and Sudakov minoration (see Theorem 12.4). 

Moreover, it is known that the uniform _L∞_ covering number of _L_ 2-regularized linear function class can be bounded as follows. The proof can be found in (Zhang, 2002). 

**Theorem 5.20.** _Assume that_ Ω= _{w_ : _∥w∥_ 2 _≤ A} and ∥ψ_ ( _x_ ) _∥_ 2 _≤ B, then the function class_ (5.3) _has the following covering number bound:_ 



It is also possible to obtain uniform _L∞_ covering number results under other regularization conditions. Of particular interest is the covering number for _L_ 1- regularization, which we present below. The proof can also be found in (Zhang, 2002). 

**Theorem 5.21.** _Assume that_ Ω= _{w ∈_ R<sup>_d_</sup> : _∥w∥_ 1 _≤ A} and ∥ψ_ ( _x_ ) _∥∞ ≤ B, then the function class_ (5.3) _has the following covering number bound:_ 



The uniform _L∞_ cover results in Theorem 5.20 and Theorem 5.21 can be combined with the analysis of Section 4.6 to study large margin methods. They can also be used to study vector valued prediction problems which were considered in Section 9.4. 

## **5.7 Historical and Bibliographical Remarks** 

The concepts of covering number and entropy were introduced by Kolmogorov and Tikhomirov (1959). A number of results for smooth function classes were established there. Since then, the tool of covering numbers has been widely used in the theoretical analysis of empirical processes. The volume comparison argument used in the proof of Theorem 5.2 is well-known, and can be found in (Lorentz, 1966). See (Pisier, 1999) and (Edmunds and Triebel, 1996) for entropy estimates on Banach and general function spaces. Some estimates of bracketing numbers for smooth function classes can be found in (van der Vaart and Wellner, 1996, Chapter 2.7), (van der Vaart, 1994), and (Nickl and P¨otscher, 2007). Such 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

5.7. HISTORICAL AND BIBLIOGRAPHICAL REMARKS 

83 

estimates can be used as estimates of lower bracketing numbers, which can be used to analyze ERM as in Chapter 3. Additional applications of bracketing numbers in statistical analysis such as the analysis of maximum likelihood estimate can be found in (Birg´e and Massart, 1993; van de Geer, 1993; Wong and Shen, 1995; van de Geer, 2000). 

In the machine learning literature, the use of uniform covering numbers has become prevalent, largely influenced by the original VC analysis (Vapnik and Chervonenkis, 1971). Note that uniform covering number results similar to bracketing results can be obtained for smooth function classes (Nickl and P¨otscher, 2007). Therefore this is not a severe limitation. For VC-classes, the _n_ -independent empirical _L_ 1 covering number bounds have been considered by Dudley (1978) and Haussler (1992). The extension of VC dimension to real-valued VC-subgraph class was investigated in (Pollard, 1984; Haussler, 1992). Additional generalization to _fat-shattering dimension_ was proposed in (Kearns and Schapire, 1994; Bartlett et al., 1996), which can also be used to obtain bounds of covering numbers. However, due to the complexity of fat-shattering dimension, it is often easier to directly estimate covering numbers using other techniques. Therefore we do not discuss fat-shattering dimension in this chapter. The result in Theorem 5.6 is due to Haussler (1995), where a matching lower bound was also obtained. The covering number estimates of VC-hull class can be found in (van der Vaart and Wellner, 1996, Chapter 2.6) and (Carl, 1997). Covering number bounds for kernel function classes were studied in (Guo et al., 1999; Cucker and Smale, 2002; Zhou, 2002, 2003; K¨uhn, 2011). We have only considered a simplified version in Theorem 5.18. Uniform _L∞_ covering number bounds for general regularized linear function classes were obtained in (Zhang, 2002). These bounds are useful in large margin analysis, and in vector valued prediction problems. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 5. COVERING NUMBER ESTIMATES 

84 

## **Exercises** 

5.1 Consider the function class _F_ of monotone functions from R _→_ [0 _,_ 1]. Show that for any distribution _D_ on R: 



Hint: discretize both R and [0 _,_ 1] into regular grids and use piecewise constant approximations. 

5.2 For Exercise 5.1, a more involved argument can be used to show that 

ln _N_ []( _ϵ, F , Lp_ ( _D_ )) _≤_<sup>_K_</sup> _ϵ_<sup>_<u>p</u>,_</sup> 

where _Kp_ is a constant that depends on _p_ (see van der Vaart and Wellner, 1996, Theorem 2.7.5). Use this result to bound the bracketing numbers of real-valued function class with bounded total variation: 



5.3 Assume that _φ_ ( _z_ ) _∈_ [0 _,_ 1] for all _g ∈G_ . Show that for _p ≥_ 1: 



5.4 Consider the following set in R<sup>_d_</sup> : 



where 1 _≤ p <_ 2. Show that there are constants _Cp_ and _rp_ such that 



5.5 Consider the set 



_∞_ with metric induced by the _L_ 2-norm _∥x∥_ 2 = �� _i_ =1<sup>_x_2</sup> _i_<sup>.Deriveanupperboundanda</sup> lower bound for ln _N_ ( _ϵ,_ Ω _, ∥· ∥_ 2). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

**6** 

