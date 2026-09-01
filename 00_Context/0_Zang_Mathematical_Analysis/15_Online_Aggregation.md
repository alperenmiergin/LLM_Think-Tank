**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Online Aggregation and Second Order Algorithms** 

In Chapter 14, we introduced the basic definitions of online learning, and analyzed a number of first order algorithms. In this chapter, we consider more advanced online learning algorithms that inherently exploit second order information. 

## **15.1 Bayesian Posterior Averaging** 

Consider conditional probability density estimation with log-loss (negative-loglikelihood), where the loss function is 



Although we consider conditional probability models for online learning, in the regret bound analysis, we do not have to assume that the true conditional model of _p∗_ ( _Y |X_ ) is given by _p_ ( _Y |w, X_ ) for any _w_ . 

**Example 15.1.** For discrete _y ∈{_ 1 _, . . . , K}_ , we have 



and (let _Z_ = ( _x, y_ )): 



**Example 15.2.** For least squares regression with noise variance _σ_<sup>2</sup> , we may have 



and (let _Z_ = ( _x, y_ )): 



We may also consider the noise as part of the model parameter, and let 



316 

~~boo~~ 

/ 

yI ~~_|~~ / <u>JU</u> JW I I y I iu ~~|~~ 

CHAPTER 15. ONLINE AGGREGATION 

318 

**Corollary 15.4.** _If_ Ω= _{w_ 1 _, . . .} is discrete, then_ 



_Proof_ Given any _w_<sup>_′_</sup> _∈_ Ω, if we choose _q_ ( _w_ ) = 1 when _w_ = _w_<sup>_′_</sup> , and _q_ ( _w_ ) = 0 when _w_ = _w_<sup>_′_</sup> , then 



This implies the result. 

If _|_ Ω _|_ = _N_ is finite, and _p_ 0( _w_ ) = 1 _/N_ is the uniform distribution on Ω, then we have 



This means that we have a constant regret which is independent of _T_ . If we use online to batch conversion, then by taking expectation, we have 



Therefore the statistical convergence rate of the Bayesian posterior averaging algorithm for density estimation problem is naturally ln _N/T_ . This rate is generally superior to that of ERM, which is sub-optimal when the entropy number grows quickly in _ϵ_ (see Section 12.4 and Section 12.5). In comparison, under similar conditions, the Bayesian posterior averaging algorithm can achieve the optimal minimax convergence rate of Theorem 12.24 under a suitable prior. We may also compare the Bayesian posterior average algorithm to the Gibbs algorithm studied in Proposition 12.26. In particular, the Gibbs algorithm, which is a proper learning algorithm that samples a model from a generalized posterior distribution, can bound the Hellinger distance between the estimated conditional density and the true conditional density. On the other hand, the Bayesian posterior averaging method, which is an improper learning algorithm that employs the posterior mean, can bound the KL divergence between the estimated conditional density and the true conditional density. The result for posterior averaging is stronger because a small KL divergence implies a small Hellinger distance (see Proposition B.12) but not vice versa. 

It is worth mentioning that the Bayesian posterior averaging result of this section is valid even when the true conditional density does not belong to the model class, and thus can directly handle model mis-specification with ln _N/T_ regret. However, Gibbs algorithm will not achieve a ln _T/T_ regret under misspecification. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

15.2. RIDGE REGRESSION AS BAYESIAN POSTERIOR AVERAGING 319 

## **15.2 Ridge Regression as Bayesian Posterior Averaging** 

The general regret bound for Bayesian posterior averaging can be used to analyze the ridge regression method. Consider the following linear prediction problem with least squares loss: 



with loss function 



Consider the following ridge regression estimator: 



where Λ0 is a symmetric positive definite matrix, which is often chosen as _λI_ for some _λ >_ 0 in applications. We have the following Bayesian interpretation of ridge regression. 

**Proposition 15.5.** _Consider probability model_ 



_with prior_ 



_where w_ ˆ( _Sn_ ) _is given by_ (15.3) _and_ 



_Given x, the posterior distribution of y is_ 



_Proof_ It is clear that 



Note that (15.3) implies that 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 



<!-- Start of picture text -->
>| |<br>DS Joi<br>a<br>es |<br><!-- End of picture text -->



<!-- Start of picture text -->
I ey<br>_ y a<br>»<br>><br>|———__ - _<br><!-- End of picture text -->

» | | 

Y DS Joi 

» 

yr 

| ~~—~~ | >| ~~| >|~~ | 

| ( ~~—)~~ 

¥ | ( ~~—) 4~~ 



<!-- Start of picture text -->
Y » } (5<br>|——]<br>( —) ( —) z -<br>(<br>oy ee<br>( - ) —<br><!-- End of picture text -->

» 

YI 

>| >| 

~~>|~~ 

>| > > 

| 

| 

| 

Po 

| 

~~—~~ | | 

Po 

| 

Po 

15.3. EXPONENTIAL MODEL AGGREGATION 

325 

If we assume that ( _Xt, Yt_ ) _∼D_ are iid examples, then by taking expectation with respect to _D_ , and by using Jensen’s inequality for the concave logdeterminant function, we obtain from Corollary 15.11 that with Λ0 = _λI_ , we have 



Note that this bound is superior to the Rademacher complexity bound, and the best convergence rate can be achieved is _O_ (ln _T/T_ ). The result can be compared to Theorem 9.35, where log-determinant is replaced by trace. 

## **15.3 Exponential Model Aggregation** 

Exponential model aggregation is a generalization of Bayesian model averaging by using the average prediction over the Gibbs distribution (which may be regarded as a generalization of Bayesian posterior distribution). Consider a general loss function with _Z_ = ( _X, Y_ ): 



where _L_ ( _f, y_ ) is convex with respect to _f_ . Consider a prior _p_ 0( _w_ ) on Ω, and the following form of Gibbs distribution (which we will also refer to as posterior): 



where _η >_ 0 is a learning rate parameter. The exponential model aggregation algorithm computes 



where _p_ ( _w|Sn_ ) is given by (15.6). 

**Algorithm 15.1:** Online Exponential Model Aggregation 

**Input:** _η >_ 0, _{f_ ( _w, x_ ) : _w ∈_ Ω _}_ , prior _p_ 0( _w_ ) **Output:** _f_<sup>ˆ</sup> ( _·|ST_ ) **1 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 2** Observe _Xt_ **3** Let _f_<sup>ˆ</sup> _t_ = _f_<sup>ˆ</sup> ( _Xt|St−_ 1) according to (15.7) **4** Observe _Yt_ **5** Compute _L_ ( _f_<sup>ˆ</sup> _t, Yt_ ) **Return:** _f_<sup>ˆ</sup> <u>(</u> _·|ST_ <u>)</u> 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 15. ONLINE AGGREGATION 

326 

In order to analyze Algorithm 15.1, we need to employ the concept of _α_ - exponential concavity introduced below. 

**Definition 15.12.** A convex function _g_ ( _u_ ) is _α_ -exponential concave for some _α >_ 0 if 



is concave in _u_ . 

The following property is convenient to show exponential concavity. 

**Proposition 15.13.** _A convex function φ_ ( _u_ ) _is α exponentially concave if_ 

_α∇φ_ ( _u_ ) _∇φ_ ( _u_ )<sup>_⊤_</sup> _≤∇_<sup>2</sup> _φ_ ( _u_ ) _._ 

_Proof_ We have 

_∇_<sup>2</sup> _e_<sup>_−αφ_(</sup><sup>_u_)</sup> = _e_<sup>_−αφ_(</sup><sup>_u_) �</sup> _−α∇_<sup>2</sup> _φ_ ( _u_ ) + _α_<sup>2</sup> _∇φ_ ( _u_ ) _∇φ_ ( _u_ )<sup>_⊤_�</sup> _≤_ 0 _._ 

This implies the concavity of exp( _−αφ_ ( _u_ )). 

**Proposition 15.14.** _If a convex function φ_ ( _u_ ) _is α-exponentially concave for some α >_ 0 _, then it is also β exponentially concave for β ∈_ (0 _, α_ ] _._ 

_Proof_ Let _h_ ( _u_ ) = exp( _−αφ_ ( _u_ )). We note that exp( _−βφ_ ( _u_ )) = _g_ ( _h_ ( _u_ )), where _g_ ( _z_ ) = _z_<sup>_β/α_</sup> is an increasing and concave function. Since _h_ ( _u_ ) is concave, _g_ ( _h_ ( _u_ )) is also concave. 

**Example 15.15.** We note that if _φ_ ( _u_ ) is both Lipschitz _∥∇φ_ ( _u_ ) _∥_ 2 _≤ G_ , and _λ_ -strongly convex, then 

( _λ/G_<sup>2</sup> ) _∇φ_ ( _u_ ) _∇φ_ ( _u_ )<sup>_⊤_</sup> _≤ λI ≤∇_<sup>2</sup> _φ_ ( _u_ ) _._ 

Proposition 15.13 implies that _φ_ ( _u_ ) is _λ/G_<sup>2</sup> exponentially concave. 

The following proposition says that the property of exponential concavity holds under a linear transformation of the model parameter. Therefore in general, the exponential concavity criterion is easier to satisfy than strong convexity. 

**Proposition 15.16.** _Assume φ_ ( _u_ ) _is α exponentially concave in u. Let φ_<sup>˜</sup> ( _w_ ) = _φ_ ( _w_<sup>_⊤_</sup> _X_ ) _, then φ_<sup>˜</sup> _is also α exponentially concave in w._ 

_Proof_ Since _e_<sup>_−αφ_(</sup><sup>_u_)</sup> is concave, we know _e_<sup>_−αφ_˜(</sup><sup>_w_)</sup> = _e_<sup>_−αφ_(</sup><sup>_w⊤X_)</sup> is also concave. 

**Example 15.17.** Consider the loss function _L_ ( _u, y_ ) = ( _u − y_ )<sup>2</sup> . If _|u − y| ≤ M_ , then _L_ ( _u, y_ ) is _α_ -exponentially concave in _u_ with _α ≤_ 1 _/_ (2 _M_<sup>2</sup> ). 

**Example 15.18.** Consider a function _f_ ( _·_ ), and let _L_ ( _f_ ( _·_ ) _, y_ ) = _−_ ln _f_ ( _y_ ), then _L_ ( _f_ ( _·_ ) _, y_ ) is _α_ exponentially concave in _f_ ( _·_ ) for _α ≤_ 1. This loss function is applicable to conditional probability estimate ln _f_ ( _y|x_ ). 

For exponentially concave loss functions, we have the following result for the exponential model aggregation algorithm. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

| : p(s) . ~~_~~ : » 

CHAPTER 15. ONLINE AGGREGATION 

328 

**Example 15.22.** In Example 15.21, if we assume further that _f_ ( _w, x_ ) = _w_<sup>_⊤_</sup> _ψ_ ( _x_ ) is linear, _σ_<sup>2</sup> = 1 _/_ (2 _η_ ) and _p_ 0( _w_ ) _∼ N_ (0 _, σ_<sup>2</sup> _/λ_ ). Let _q_ = _N_ ( ˆ _w_ ( _St−_ 1) _,_ Σ) be the pos-<sup>ˆ</sup> terior distribution of ridge regression. This implies that the model aggregation estimator is given by the posterior mean _f_<sup>ˆ</sup> ( _x|St−_ 1) = _w_ ˆ( _St−_ 1)<sup>_⊤_</sup> _x_ , where _w_ ˆ( _St−_ 1) is the ridge regression solution. One can thus obtain a bound similar to Corollary 15.7 from Theorem 15.19. We leave it as an exercise. 

## **15.4 Second Order Online Convex Optimization** 

We note that ridge regression may be regarded as a second order method. This section shows that a similar analysis can be extended to more general second order methods for _α_ exponentially concave loss functions. 

In general, we consider online learning with loss functions _ℓ_ 1( _w_ ) _, . . . , ℓT_ ( _w_ ), where we assume that each _ℓt_ ( _w_ ) is _α_ -exponentially concave. Algorithm 15.2, referred to as _online Newton step_ (ONS) in Hazan et al. (2007), may be regarded as a generalization of the online ridge regression algorithm. 

## **Algorithm 15.2:** Online Newton Step 

**Input:** _η >_ 0, _w_ 0, _A_ 0, and a sequence of loss functions _ℓt_ ( _w_ ) **Output:** _wT_ **1 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 2** Observe loss _ℓt_ ( _wt−_ 1) **3** Let _gt_ = _∇ℓt_ ( _wt−_ 1) **4** Let _At_ = _At−_ 1 + _gtgt_<sup>_⊤_</sup> ˜ **5** Let _wt_ = _wt−_ 1 _− ηAt_<sup>_−_1</sup><sup>_g_</sup> _t_ ˜ ˜ **6** Let _wt_ = arg min _w∈_ Ω( _w − wt_ )<sup>_⊤_</sup> _At_ ( _w − wt_ ) 

**Return:** _wT_ 

The following result shows that ONS can achieve a logarithmic regret under exponential concavity. The result is analogous to that of the first order gradient descent for strongly convex loss functions. However, it employs the condition of _α_ exponential concavity, which is strictly weaker than strong convexity according to Example 15.15 and Proposition 15.16. 

**Theorem 15.23.** _Assume that for all t, the loss function ℓt_ : Ω _→_ R _is α exponentially concave and Lipschitz: ∥∇ℓt∥_ 2 _≤ G. Let η_<sup>_−_1</sup> = _β <_ 0 _._ 5 min( _α,_ 1 _/_ ( _G_ ∆2)) _. Then ONS has the following regret bound:_ 



_where_ ∆2 = sup _{∥w_<sup>_′_</sup> _− w∥_ 2 : _w, w_<sup>_′_</sup> _∈_ Ω _} is the diameter of_ Ω _._ 

We will first prove the following lemma. 

**Lemma 15.24.** _For a function ℓt_ : Ω _→_ R _that satisfies the conditions of Theo-_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

15.4. SECOND ORDER ONLINE CONVEX OPTIMIZATION 

329 

_rem 15.23, we have_ 



_Proof_ Since exp( _−αℓt_ ( _w_ )) is concave and 2 _β ≤ α_ , we know that the function _h_ ( _x_ ) = exp( _−_ 2 _βℓt_ ( _w_ )) is concave, which implies that 



That is 

exp( _−_ 2 _βℓt_ ( _w_<sup>_′_</sup> )) _≤_ exp( _−_ 2 _βℓt_ ( _w_ ))[1 _−_ 2 _β∇ℓt_ ( _w_ )<sup>_⊤_</sup> ( _w_<sup>_′_</sup> _− w_ )] _._ 

By taking logarithm on each side, we obtain 



where the second inequality is because ln(1 _− z_ ) _≤−z − z_<sup>2</sup> _/_ 4 when _|z| <_ 1, and _|_ 2 _β∇ℓt_ ( _w_ )<sup>_⊤_</sup> ( _w_<sup>_′_</sup> _− w_ ) _| ≤_ 2 _βG_ ∆2 _<_ 1. 

_Proof of Theorem 15.23_ Consider _w ∈_ Ω, then from Lemma 15.24, we obtain 



Using this inequality, we obtain: 



The first inequality used (15.8). We used _gtgt_<sup>_⊤_</sup> = _At − At−_ 1 twice for the last two terms in ( _a_ ). In ( _b_ ), we used the concavity of the log-determinant function ln _|A|_ = trace(ln( _A_ )) and Theorem A.18. 

Now by using the fact that ( _wt − w_ )<sup>_⊤_</sup> _At_ ( _wt − w_ ) _≤_ ( ˜ _wt − w_ )<sup>_⊤_</sup> _At_ ( ˜ _wt − w_ ), we obtain 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 15. ONLINE AGGREGATION 

330 

We can now sum over _t_ = 1 to _t_ = _T_ : 

( _wT − w_ )<sup>_⊤_</sup> _AT_ ( _wT − w_ ) _≤_ ( _w_ 0 _− w_ )<sup>_⊤_</sup> _A_ 0( _w_ 0 _− w_ ) 



This implies the desired bound. 

Using Proposition 15.8, we obtain a regret bound that is logarithmic in _T_ for ONS. If we let _A_ 0 = _λI_ , then 



If _ℓt_ ( _w_ ) = _L_ ( _f_ ( _w, Xt_ ) _, Yt_ ) with ( _Xt, Yt_ ) _∼D_ , then this implies the following online-to-batch conversion bound for _s_ randomly chosen from 0 to _T −_ 1: 



## **15.5 Adaptive Gradient Method** 

In many applications such as neural networks or learning with sparse features, the gradient _∇ℓt_ ( _w_ ) may have highly varying scales for different components of the model parameter _w_ . In practice, a popular method called AdaGrad (Adaptive subGradient Method), which tries to normalize different components, is effective for such problems. 

Algorithm 15.3 describes AdaGrad with diagonal matrix inversion. The corresponding full matrix version employs _Gt_ = _A_<sup>1</sup> _t_<sup>_−p_</sup> instead of _Gt_ = diag( _At_ )<sup>1</sup><sup>_−p_</sup> . The standard implementation of AdaGrad in the literature employs _p_ = 0 _._ 5. The version presented in Algorithm 15.3 is a generalization, which includes both AdaGrad ( _p_ = 0 _._ 5) and the standard SGD ( _p_ = 1) as special cases. 

**Algorithm 15.3:** Adaptive SubGradient Method <u>(AdaGrad)</u> 

**Input:** _η >_ 0, _w_ 0, _A_ 0, _p ∈_ [0 _._ 5 _,_ 1], and a sequence of loss functions _ℓt_ ( _w_ ) **Output:** _wT_ 

**1 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 2** Observe loss _ℓt_ ( _wt−_ 1) **3** Let _gt_ = _∇ℓt_ ( _wt−_ 1) **4** Let _At_ = _At−_ 1 + _gtgt_<sup>_⊤_</sup> **5** Let _Gt_ = diag( _At_ )<sup>1</sup><sup>_−p_</sup> (full matrix version: _Gt_ = _A_<sup>1</sup> _t_<sup>_−p_</sup> ) ˜ **6** Let _wt_ = _wt−_ 1 _− ηGt_<sup>_−_1</sup><sup>_g_</sup> _t_ ˜ ˜ **7** Let _wt_ = arg min _w∈_ Ω( _w − wt_ )<sup>_⊤_</sup> _Gt_ ( _w − wt_ ) **Return:** _wT_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

15.5. ADAPTIVE GRADIENT METHOD 

331 

The commonly used diagonal matrix inversion version of AdaGrad has the same computational complexity as the first order of gradient method, and thus can be regarded as a modification of SGD. However, its analysis is closely related to second order online methods studied in this chapter. In fact, we can obtain a regret bound for AdaGrad by using the techniques of analyzing ONS (but without assuming exponential concavity). The result shows the under suitable conditions, it is beneficial to use AdaGrad rather than SGD when gradients have different scales. 

**Theorem 15.25.** _Assume that for all t, the loss function ℓt_ : Ω _→_ R _is convex. Then AdaGrad method (diagonal version) with p ∈_ [0 _._ 5 _,_ 1) _has the following regret bound:_ 



_where q_ = 2 _p/_ (2 _p −_ 1) _,_ ∆ _q_ = sup _{∥w_<sup>_′_</sup> _− w∥q_ : _w, w_<sup>_′_</sup> _∈_ Ω _} is the Lq-diameter of_ Ω _._ 

_Proof_ Consider _w ∈_ Ω. The convexity of _ℓt_ implies that 



Let _Gt_ = diag( _At_ )<sup>1</sup><sup>_−p_</sup> . We obtain the following result: 



The first inequality used the convexity of _ℓt_ . In ( _a_ ), we used the fact that _gt_<sup>_⊤G_</sup> _t_<sup>_−_1</sup><sup>_g_</sup> _t_<sup>= trace((</sup><sup>_G_1</sup> _t_<sup>_/_(1</sup><sup>_−p_)</sup> )<sup>_p−_1</sup> ( _Gt_<sup>1</sup><sup>_/_(1</sup><sup>_−p_)</sup> _− Gt_<sup>1</sup> _−_<sup>_/_(1</sup> 1<sup>_−p_)</sup> )). In ( _b_ ), we used the fact that _h_ ( _B_ ) = _p_<sup>_−_1</sup> trace( _B_<sup>_p_</sup> ) is concave in _B_ , and with _B_ = _Gt_<sup>1</sup><sup>_/_(1</sup><sup>_−p_)</sup> and _B_<sup>_′_</sup> = _G_<sup>1</sup> _t−_<sup>_/_(1</sup> 1<sup>_−p_)</sup> , Theorem A.18 implies that trace( _B_<sup>_p−_1</sup> ( _B − B_<sup>_′_</sup> )) _≤ p_<sup>_−_1</sup> [trace( _B_<sup>_p_</sup> ) _−_ trace(( _B_<sup>_′_</sup> )<sup>_p_</sup> )]. Now let _p_<sup>_′_</sup> = _p/_ (1 _− p_ ). We can use the fact that ( _wt − w_ )<sup>_⊤_</sup> _Gt_ ( _wt − w_ ) _≤_ ( ˜ _wt − w_ )<sup>_⊤_</sup> _Gt_ ( ˜ _wt − w_ ), and then sum over _t_ = 1 to _t_ = _T_ . This implies that 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 15. ONLINE AGGREGATION 

332 

where 



In the derivation, we note that trace( _|G|_<sup>_p′_</sup> )<sup>1</sup><sup>_/p′_</sup> is the vector _p_<sup>_′_</sup> -norm of the diagonal of _G_ . The first inequality used H¨older’s inequality and 2 _/q_ +1 _/p_<sup>_′_</sup> = 1. The second inequality used the triangle inequality of _p_<sup>_′_</sup> -norm. This implies the bound. 

Since 



if we take optimal _η_ = _O_ (∆ _q_ trace(diag( _AT_ )<sup>_p_</sup> )<sup>_−_1</sup><sup>_/q_</sup> ) in Theorem 15.25, then the regret bound becomes 



similar to that of Theorem 14.5 for _p ∈_ [0 _._ 5 _,_ 1]. In fact, the SGD bound of Theorem 14.5 is a counterpart of _p_ = 1 in Theorem 15.25. 

However, for _p <_ 1 the bound of Theorem 15.25 uses the _Lq_ -diameter with _q >_ 2, and in this case ∆ _q_ of AdaGrad can be significantly smaller than ∆2 for SGD. This situation becomes important when gradient has different scales, and dimensions with smaller gradients can benefit from larger model parameter corresponding to such dimensions. If the gradient is sufficiently sparse, then trace(diag( _AT_ )<sup>_p_</sup> )<sup>1</sup><sup>_/_(2</sup><sup>_p_)</sup> with _p <_ 1 can be similar to trace(diag( _AT_ ))<sup>1</sup><sup>_/_2</sup> , but ∆ _q ≪_ ∆2. The bound of Theorem 15.25 for _p <_ 1 will be superior. In the specific case of _p_ = 0 _._ 5 (that is, _q_ = _∞_ ), we know ∆2 can be as large as Ω( _√d_ ∆ _∞_ ), where _d_ is the dimension of the model parameter. 

## **15.6 Historical and Bibliographical Remarks** 

In classical statistics, Bayesian posterior averaging is known to be the optimal method for density estimation if the underlying Bayesian model assumption is correct. Its online learning analysis without assuming the correctness of the underlying model has been explored in Vovk (1990), who considered more general aggregation strategies. The same idea has also been used by Yang and Barron (1999) to derive optimal statistical estimators in statistical minimax analysis. Vovk later used the same technique to study ridge regression, and obtained Corollary 15.7 in (Vovk, 2001). 

Aggregation method is known to be optimal for many statistical estimation problems, and has been investigated by many researchers both in the online setting, and in the supervised learning setting. For additional details on this topic, we refer the readers to (Tsybakov, 2003; Audibert, 2007; Dalalyan and Tsybakov, 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

15.6. HISTORICAL AND BIBLIOGRAPHICAL REMARKS 

333 

2007; Audibert, 2009; Lecu´e, 2007; Rigollet and Tsybakov, 2007; Dai et al., 2012; Lecu´e and Rigollet, 2014). The idea of exponential concavity was introduced by Kivinen and Warmuth (1999) to analyze aggregation methods for a general class of convex optimization problems with conditions weaker than strong convexity. The idea was later adopted by Hazan et al. (2007) to analyze the second order online Newton step method. 

AdaGrad was proposed in (Duchi et al., 2011), and the original motivation was to improve the effectiveness of SGD for training with sparse features. The proof technique is closely related to that of online Newton step. The method itself has been widely adopted in the training of neural networks, with multiple variations. In particular, the idea of AdaGrad became an important component in the popular Adam optimizer for deep learning (Kingma and Ba, 2015). We note that the original version of AdaGrad in Duchi et al. (2011) was only with _p_ = 0 _._ 5, where a version of AdaGrad with full matrix _Gt_ = _A_<sup>1</sup><sup>_/_2</sup> was also considered. We also note that the resulting bound stated in Duchi et al. (2011) relied on the _L_ 2 diameter of Ω. Theorem 15.25 modified the statement so that its advantage over Theorem 14.5 is more explicit. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 15. ONLINE AGGREGATION 

334 

## **Exercises** 

- 15.1 Consider the conditional density estimation problem, with function class _F_ = _{p_ ( _y|w, x_ ) : _w ∈_ Ω _}_ and log-loss. Consider the upper bound of Corollary 15.4 for Bayesian posterior averaging. Under what conditions can you derive a matching lower bound using Theorem 12.15? Compare the results to Corollary 12.25 and Proposition 12.26. 

- 15.2 Prove the second inequality of Proposition 15.8. 

- 15.3 In Proposition 15.8, consider _ψ_ ( _x_ ) = [ _ψj_ ( _x_ )]<sup>_∞_</sup> _j_ =1<sup>sothat</sup><sup>_ψj_(</sup><sup>_x_)2</sup><sup>_≤c_0</sup><sup>_µj_for</sup><sup>_µ ∈_(0</sup><sup>_,_1).</sup> 

   - Find an upper bound for _d_ ( _ϵ_ ). 

   - Use the bound for _d_ ( _ϵ_ ) to find an upper bound for the log-determinant function 



   - Derive a generalization bound for ridge regression using Corollary 15.11. 

   - Compare to Theorem 9.35, with _λ_ 1 _,λ_ estimated from Proposition 9.36. 

- 15.4 In Example 15.21, we assume that _f∗_ ( _Xt_ ) = E[ _Yt|Xt_ ] but _f∗_ may not belong to the function class _{f_ ( _w, x_ ) _}_ . Derive a regret bound for the Hedge algorithm using Theorem 14.16 and compare to that of the result for exponential model aggregation. 

- 15.5 In Example 15.22, obtain a regret bound from Theorem 15.19, and compare to that of Corollary 15.7. 

- 15.6 In Algorithm 15.3. Let _Gt_ = trace(diag( _At_ ))<sup>1</sup><sup>_/_2</sup> _I_ . Derive a regret bound by mimicking the proof of Theorem 15.25. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

**16** 

