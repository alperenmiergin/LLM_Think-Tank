**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Basic Concepts of Online Learning** 

In online learning, we consider a learning model that is different from that of supervised learning, in that we make predictions sequentially and obtain feedbacks after predictions are made. In this chapter, we introduce this learning model as well as some first order online learning algorithms. 

## **14.1 Online Learning Model** 

We will use the notations that are consistent with earlier chapters on supervised learning. In online learning, we consider observing _Zt_ = ( _Xt, Yt_ ) one by one in a time sequence from _t_ = 1 _,_ 2 _, . . ._ . At each time step, we try to predict the next datum in the sequence, and then obtain a feedback of the prediction. 

More formally, the online learning learning model can be considered as a repeated game. For _t_ = 1 _,_ 2 _, . . ._ , 

- An adversary picks ( _Xt, Yt_ ), and reveals _Xt_ only. 

- An online learning algorithm _A_ predicts _f_<sup>ˆ</sup> _t−_ 1( _Xt_ ). 

- The value of _Yt_ is revealed and a loss _L_ ( _f_<sup>ˆ</sup> _t−_ 1( _Xt_ ) _, Yt_ ) is computed. 

The goal of online learning is to minimize the aggregated loss 



In general, an online algorithm _A_ picks a prediction model _f_ ( _x_ ) from _F_ = _{f_ ( _w, x_ ) : _w ∈_ Ω _}_ by learning a model parameter _wt−_ 1 _∈_ Ωat time _t_ based on previously observed data _St−_ 1 = _{Z_ 1 _, . . . , Zt−_ 1 _}_ . That is, we take _f_<sup>ˆ</sup> _t−_ 1( _Xt_ ) = _f_ ( _wt−_ 1 _, Xt_ ) with _wt−_ 1 = _A_ ( _St−_ 1). We are interested in the following inequality, referred to as _regret bound_ , where the aggregated loss of an online algorithm is compared to the optimal aggregated loss: 



In many situations, online regret bounds hold for all sequences _{Zt}_ , although the definition can also be modified to hold in expectation. In the online learning literature, the choice of prediction functions in the form _f_ ( _wt−_ 1 _, x_ ) is referred to as _proper learning_ , since it matches the function form of _{f_ ( _w, X_ ) : _w ∈_ Ω _}_ 

298 

14.2. PERCEPTRON ALGORITHMS 

299 

which it competes with. More generally, one may also consider _improper online learning_ , where _f_<sup>ˆ</sup> _t−_ 1( _x_ ) may not belong to the function class _{f_ ( _w, x_ ) : _w ∈_ Ω _}_ . We do not the two situations in our discussion. 

To differentiate from online learning, the standard supervised learning setting is often referred to as _batch learning_ in the machine learning literature. Regret bound analysis can be considered as a generalization of the oracle inequality in batch learning. We will show later that a regret bound directly implies an oracle inequality using a simple technique called _online to batch conversion_ . 

## **14.2 Perceptron Algorithms** 

In this section, we will study a simple online learning algorithm called the perceptron Algorithm, which is a precursor to modern neural networks. 

Consider the binary classification problem with _Y ∈{±_ 1 _}_ , and linear functions 



with prediction rule: 



The loss function is binary classification error: 1 ( _f_ ( _w, X_ ) _Y ≤_ 0). The perceptron algorithm (Rosenblatt, 1957, 1962) is an online learning algorithm that takes data sequentially as in Algorithm 14.1. It is mistake-driven, which means it only updates the model weight vector when the prediction makes a mistake. The algorithm belongs to the family of linear classifiers. In many applications, one needs to design the linear features by hand. 

**Algorithm 14.1:** Perceptron Algorithm 

**Input:** Sequence ( _X_ 1 _, Y_ 1) _, . . . ,_ ( _XT , YT_ ) **Output:** _ws_ **1** Let _w_ 0 = 0 **2 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 3** Observe _Xt_ and predict label sign( _wt_<sup>_⊤_</sup> _−_ 1<sup>_Xt_)</sup> **4** Observe _Yt_ and compute mistake 1 ( _wt_<sup>_⊤_</sup> _−_ 1<sup>_XtYt≤_0)</sup> **5 if** _wt_<sup>_⊤_</sup> _−_ 1<sup>_XtYt>_0</sup><sup>**then**</sup> **6** // No mistake **7** Let _wt_ = _wt−_ 1 **8 else 9** // A mistake is observed **10** Let _wt_ = _wt−_ 1 + _XtYt_ 

**11** Randomly pick _s_ from 0 to _T −_ 1 **Return:** _ws_ 

Note that the randomly choice of the returned predictor in the perceptron 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 14. ONLINE LEARNING 

300 

algorithm is for the purpose of online to batch conversion, which we will discuss later. In the following, we first state the mistake bound of perceptron as follows. 

**Theorem 14.1.** _Consider the perceptron Algorithm in Algorithm 14.1. Consider γ >_ 0 _and weight vector w∗ such that for all t_ 



_Then we have the following mistake bound:_ 



_Proof_ Let _M_ = sup _t ∥Xt∥_ 2, and let _η_ = _γ/M_<sup>2</sup> . Assume that we have a mistake at time step _t_ , then we have 



This implies that 



Note also that _∥ηwt − w∗∥_ 2<sup>2=</sup><sup>_∥ηwt−_1</sup><sup>_−w∗∥_2</sup> 2<sup>ifthereisnomistakeattimestep</sup> _t_ . Therefore by summing over _t_ = 1 to _t_ = _t_ , we obtain 



where _k_ is the number of mistakes. This implies the bound. 

The perceptron mistake bound can be regarded as an online version of the margin bound discussed in Chapter 9, where empirical process was used to obtain similar margin bounds for the ERM method. The technique required for analyzing the ERM method is much more complicated. 

Using essentially the same proof, we can also obtain a mistake bound for multiclass classification problems (Collins, 2002). In comparison, the analysis of the ERM method for multi-class classification is more complex, as discussed in Section 9.4. 

For multi-class prediction with _q_ classes _y ∈{_ 1 _, . . . , q}_ , we may use the notations of Section 9.4, and consider a vector prediction function _f_ ( _x_ ) _∈_ R<sup>_q_</sup> , with linear prediction model for class _ℓ_ in (9.14) defined as: 



The predicted class for each _x_ is 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

14.2. PERCEPTRON ALGORITHMS 

301 

and the error (or mistake) for an instance _x_ with true label _y_ is 

- 1 (ˆ _y_ ( _w, x_ ) = _y_ ) _._ 

**Algorithm 14.2:** Multi-Class Perceptron Algorithm 

**Input:** Sequence ( _X_ 1 _, Y_ 1) _, . . . ,_ ( _XT , YT_ ) **Output:** _ws_ **1** Let _w_ 0 = 0 **2 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 3** Observe _Xt_ and predict label _Y_<sup>ˆ</sup> _t ∈_ arg max _ℓ{wt_<sup>_⊤_</sup> _−_ 1<sup>_ψ_(</sup><sup>_Xt, ℓ_)</sup><sup>_}_</sup> **4** Observe _Yt_ and compute mistake 1 ( _Y_<sup>ˆ</sup> _t_ = _Yt_ ) **5 if** _Y_<sup>ˆ</sup> _t_ == _Yt_ **then 6** // No mistake **7** Let _wt_ = _wt−_ 1 **8 else 9** // A mistake is observed **10** Let _wt_ = _wt−_ 1 + [ _ψ_ ( _Xt, Yt_ ) _− ψ_ ( _Xt, Y_<sup>ˆ</sup> _t_ )] **11** Randomly pick _s_ from 0 to _T −_ 1 **Return:** _ws_ 

**Theorem 14.2.** _Consider Algorithm 14.2. We have the following mistake bound:_ 



_Proof_ The proof is basically the same as that of the binary case. Given any _γ >_ 0 and _w_ . We let _ψt_ = _ψ_ ( _Xt, Yt_ ) _− ψ_ ( _Xt, Y_<sup>ˆ</sup> _t_ ), _M_ = sup _{∥ψt∥_ 2 _}_ , and _η_ = _γ/M_<sup>2</sup> . Assume that we have a mistake at time step _t_ , then we have _Y_<sup>ˆ</sup> _t_ = _Yt_ , and _wt_<sup>_⊤_</sup> _−_ 1<sup>_ψt≤_0.Itimpliesthat</sup> 

( _ηwt−_ 1 _− w∗_ )<sup>_⊤_</sup> _ψt ≤_ 0 _− w∗_<sup>_⊤ψt≤_max(0</sup><sup>_, γ −w_</sup> _∗_<sup>_⊤ψt_)</sup><sup>_−γ._</sup> 

Therefore by taking 



Note also that _∥ηwt − w∗∥_ 2<sup>2=</sup><sup>_∥ηwt−_1</sup><sup>_−w∗∥_2</sup> 2<sup>ifthereisnomistakeattimestep</sup> 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 14. ONLINE LEARNING 

302 

_t_ . Therefore by summing over _t_ = 1 to _t_ = _T_ , we obtain 



where _k_ is the number of mistakes. This implies the bound. 

Unlike Theorem 14.1, Theorem 14.2 does not require there exists _γ >_ 0 so that _w∗_<sup>_⊤ψ_(</sup><sup>_X, Y_)</sup><sup>_≥w_</sup> _∗_<sup>_⊤ψ_(</sup><sup>_X, ℓ_) +</sup><sup>_γ_forall</sup><sup>_ℓ_=</sup><sup>_Y_.Theboundisthusasoft-margin</sup> bound, with a margin based hinge loss as penalty. In the special case of hardmargin condition, where _w∗_<sup>_⊤ψ_(</sup><sup>_X, Y_)</sup><sup>_≥w_</sup> _∗_<sup>_⊤ψ_(</sup><sup>_X, ℓ_) +</sup><sup>_γ_forall</sup><sup>_ℓ_=</sup><sup>_Y_,weobtain</sup> the simpler mistake bound 



This is analogous to the binary class perceptron mistake bound of Theorem 14.1. 

## **14.3 Online to Batch Conversion** 

In online learning, each time, we train a model using historic data, and then test on the next datum. This naturally corresponds to the generalization performance. If we assume that in online learning, the observed data are random, with _Zt_ = ( _Xt, Yt_ ) _∼D_ , then by taking expectation, we can obtain an expected oracle inequality. 

Specially, we may consider an online algorithm _A_ such that it returns a weight vector _wt_ = _A_ ( _St_ ) with _St_ = _{Z_ 1 _, . . . , Zt}_ . Assume that we have a regret bound of the general form: 



By taking expectations, we obtain an expected generalization bound of 



This implies that if we select _s_ uniformly from 0 to _T −_ 1, then 



For example, for the perceptron algorithm, we may let 



then the following expected generalization bound can be obtained from the perceptron mistake bound of Theorem 14.2. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

Po, ~~ee~~ 

» / S- / s ( > ) 

s ( > 

) 

S- / | ( , | 

~~O~~ 

» » 

CHAPTER 14. ONLINE LEARNING 

304 

The following result is a concrete example on how to use martingale inequalities and online mistake bound to derive high probability generalization error bound. 

**Proposition 14.4.** _Consider Algorithm 14.1, with s uniformly drawn from_ 0 _to T −_ 1 _. Assume w∗_<sup>_⊤XY≥γ>_0</sup><sup>_forallZ_=(</sup><sup>_X, Y_)</sup><sup>_.IfZt_=(</sup><sup>_Xt, Yt_)</sup><sup>_∼D,then_</sup> _with probability at least_ 1 _− δ:_ 



_Proof_ Let 

_{ξi_ = 1 ( _wi_<sup>_⊤_</sup> _−_ 1<sup>_XiYi≤_0) :</sup><sup>_i_= 1</sup><sup>_,_2</sup><sup>_, . . . , n}_</sup> 

be a sequence of random variables, Theorem 13.5 implies that for any _λ >_ 0, with probability at least 1 _− δ_ , 



Also note that the mistake bound in Theorem 14.1 implies that 



Since E( _X,Y_ ) _∼D_ 1 ( _wi_<sup>_⊤_</sup> _−_ 1<sup>_XY≤_0) = E(</sup><sup>_X_</sup> _i_<sup>_,Y_</sup> _i_<sup>)</sup><sup>_∼Dξi_,weobtainthedesiredresult.</sup> 

## **14.4 Online Convex Optimization** 

One can extend the analysis of perceptron algorithms to general convex loss functions, leading to the so-called online convex optimization, introduced into machine learning by Zinkevich (2003). A general first-order algorithm for online convex optimization, which we refer to as online gradient descent, can be found in Algorithm 14.3. Its analysis is given in Theorem 14.5. 

**Algorithm 14.3:** Online Gradient Descent 

**Input:** Sequence of loss functions _ℓ_ 1 _, . . . , ℓT_ defined on Ω **Output:** _w_ ˆ 

**1** Let _w_ 0 = 0 

**2 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 3** Observe loss _ℓt_ ( _wt−_ 1) ˜ **4** Let _wt_ = _wt−_ 1 _− ηt∇ℓt_ ( _wt−_ 1) ˜ **5** Let _wt_ = arg min _w∈_ Ω _∥w − wt∥_ 2<sup>2</sup> ˆ **6** Let _w_ = _T_<sup>_−_1 �</sup><sup>_T_</sup> _t_ =1<sup>_wt−_1or</sup><sup>_w_ˆ=</sup><sup>_ws_forarandom</sup><sup>_s_from0to</sup><sup>_T−_1</sup> **<u>Return:</u>** _<u>w</u>_ ˆ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

14.4. ONLINE CONVEX OPTIMIZATION 

305 

**Theorem 14.5.** _Let {ℓt_ ( _w_ ) : _w ∈_ Ω _} be a sequence of real-valued convex loss functions defined on a convex set_ Ω _. Assume that all ℓt_ ( _w_ ) _are G-Lipschitz (that is, ∥∇ℓt_ ( _w_ ) _∥_ 2 _≤ G). If we let ηt_ = _η >_ 0 _be a constant in Algorithm 14.3. Then for all w ∈_ Ω _, we have_ 



_Proof_ We have the following inequality: 



where the first inequality used the Lipschitz condition, and the second inequality used the convexity condition. 

Since _wt ∈_ Ωis the projection of _w_ ˜ _t_ onto Ωand _w ∈_ Ω. We also have 



Therefore, we have 



Now we may sum over _t_ = 1 to _t_ = _T_ , and obtain 



Rearrange the terms, we obtain the desired bound. 

The analysis technique of Theorem 14.5 is quite similar to that of the perceptron mistake bound. In fact, we may state the following more general result which includes both online convex optimization and perceptron mistake analysis as special cases. We leave its proof as an exercise. 

**Theorem 14.6.** _Consider Algorithm 14.5 with the update rule replaced by the following method_ 



_If we can choose gt so that_ 



_then_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 14. ONLINE LEARNING 

306 

Note that in Theorem 14.6, _ℓt_ ( _wt−_ 1) may not necessarily be a convex function of _wt−_ 1. 

**Example 14.7.** Theorem 14.5 is a special case of Theorem 14.6 by taking _ℓ_<sup>˜</sup> _t_ ( _w_ ) = _ℓt_ ( _w_ ) and _gt_ = _∇ℓt_ ( _wt−_ 1). 

**Example 14.8.** When _wt_<sup>_⊤_</sup> _−_ 1<sup>_XtYt≤_0,wehave</sup> 



When _wt_<sup>_⊤_</sup> _−_ 1<sup>_XtYt>_0,wehave</sup> 



( _w − wt−_ 1)<sup>_⊤_</sup> _gt ≤_ max(0 _, γ − w_<sup>_⊤_</sup> _XtYt_ ) _− γ_ 1 ( _wt_<sup>_⊤_</sup> _−_ 1<sup>_XtYt≤_0)</sup><sup>_._</sup> 

This˜ implies that Theorem 14.1 is a special case of Theorem 14.6 by taking _ℓt_ ( _w_ ) = max(0 _, γ − w_<sup>_⊤_</sup> _XtYt_ ) and _ℓt_ ( _wt−_ 1) = _γ_ 1 ( _wt_<sup>_⊤_</sup> _−_ 1<sup>_XtYt≤_0).</sup> 

We may also obtain an oracle inequality for Algorithm 14.3 as follows. 

**Theorem 14.9.** _Consider loss function φ_ ( _w, Z_ ) _∈_ [0 _, M_ ] _with Z ∼D, and w ∈_ Ω _, where_ Ω _is a convex set. Assume that φ_ ( _w, Z_ ) _is convex and G-Lipschitz with_ ˆ _respect to w. Let_ [ _Z_ 1 _, . . . , ZT_ ] _∼D_<sup>_T_</sup> _be independent samples, and consider w obtained from Algorithm 14.3, with ℓi_ ( _w_ ) = _φ_ ( _w, Zi_ ) _and ηt_ = _η >_ 0 _. Then with probability at least_ 1 _− δ,_ 



_Proof_ Note that the convexity and Jensen’s inequality implies that 



_−_ Moreover, using the Azuma’s inequality, we have with probability at least 1 _δ/_ 2, 



Using Theorem 14.5, we obtain 



Using the Chernoff bound, we have with probability at least 1 _− δ/_ 2: 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

14.4. ONLINE CONVEX OPTIMIZATION 

307 

By taking the union bound, and combine the above four inequalities, we obtain the following. With probability at least 1 _− δ_ : 



The first inequality used (14.4). The second inequality used (14.5). The third inequality used (14.6). The last inequality used (14.7). 

If we take _η_ = _O_ (1 _/√T_ ), then we obtain a convergence result of _O_ (1 _/√T_ ) in Theorem 14.9. This result can be compared to that of Corollary 9.27, which has a similar convergence rate if we set _λ_ = 1 _/_ ( _ηT_ ). 

In Corollary 9.27, the loss function does not have to be convex, and the theorem applies to ERM, which implies the following bound for the ERM estimator: 



This result is similar to that of Theorem 14.9 with _η_ = 1 _/_ ( _λT_ ). 

However, the result in Theorem 14.9 does not apply to ERM, but rather the specific online learning procedure for convex functions described in Algorithm 14.3. We note that the definitions of Lipschitz constants are different, with _G ≤ γB_ , where _γ_ is the Lipschitz of the loss function, and _B_ = sup _{∥X∥_ 2 _}_ . In addition, one may regard the regret bound in the online learning analysis as an analogy of the Rademacher complexity bound for ERM estimator. Azuma’s inequality is the counterpart of McDiarmid’s inequality to obtain the concentration results. 

The techniques used in online learning analysis are closely related to the stability analysis of Chapter 7. In fact, these two techniques often lead to similar results. Stability analysis has the advantage of allowing the computational procedure (SGD) to go through the data more than once, while the online to batch conversion technique only allows the computational procedure (online algorithm) to go through the training data once. 

For vector valued functions, the Rademacher complexity analysis is trickier unless one works with covering numbers. This is due to the fact that the corresponding comparison lemma based on the Lipschitz loss assumption may depend on the dimensionality of the vector function, as discussed in Section 9.4. However, the Lipschitz parameter of _φ_ ( _w, ·_ ) in Theorem 14.9 is with respect to the model 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 14. ONLINE LEARNING 

308 

parameter, and thus the difficulty of Rademacher complexity analysis does not exist. In particular, we may directly analyze the structured-SVM loss of Example 9.32 without much difficulty using online learning (or stability analysis). 

**Example 14.10.** Consider the structured-SVM loss of Example 9.32, where 



If _∥ψ_ ( _x, y_ ) _− ψ_ ( _, ℓ_ ) _∥_ 2 _≤ B_ , then we can take _G_ = _B_ . Using Theorem 14.5, we obtain 



By taking expectation, and using Jensen’s inequality with _λ_ = 1 _/_ ( _ηT_ ), we obtain 



For _L_ 2 regularization (or kernel methods), one can obtain a better bound using strong convexity. Observe that for regularized loss, we take 



If _φ_ ( _w, z_ ) is convex in _w_ , then _ℓt_ ( _w_ ) is _λ_ strongly convex. 

The following result holds for strongly convex loss functions, and the specific learning rate schedule was proposed by (Shalev-Shwartz et al., 2011) to solve SVMs. 

**Theorem 14.11.** _Consider convex loss functions ℓt_ ( _w_ ) : Ω _→_ R _, which are G- Lipschitz (that is, ∥∇ℓt_ ( _w_ ) _∥_ 2 _≤ G) and λ strongly convex. If we let ηt_ = 1 _/_ ( _λt_ ) _>_ 0 _in Algorithm 14.3, then for for all w ∈_ Ω _, we have_ 



_Proof_ Similar to the proof of Theorem 14.5, we have 



where strong-convexity is used to derive the second inequality. Note that 1 _−ηtλ_ = _ηt/ηt−_ 1 and for notation convenience we take 1 _/η_ 0 = 0. This implies that 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

14.4. ONLINE CONVEX OPTIMIZATION 

309 

By summing over _t_ = 1 to _t_ = _T_ , we obtain 



Using<sup>�</sup><sup>_T_</sup> _t_ =1<sup>(1</sup><sup>_/t_)</sup><sup>_≤_1 + ln</sup><sup>_T_,weobtainthedesiredbound.</sup> 

It is possible to remove the ln _T_ factor if we use weighted regret, as shown in the following theorem. 

**Theorem 14.12.** _Consider convex loss functions ℓt_ ( _w_ ) : Ω _→_ R _, which are G-Lipschitz (that is, ∥∇ℓt_ ( _w_ ) _∥_ 2 _≤ G) and λ strongly convex. If we let ηt_ = 2 _/_ ( _λ_ ( _t_ + 1)) _>_ 0 _in Algorithm 14.3, then for for all w ∈_ Ω _, we have_ 



_Proof_ As in the proof of Theorem 14.11, we have 

_∥wt − w∥_ 2<sup>2</sup><sup>_≤_(1</sup><sup>_−ηtλ_)</sup><sup>_∥wt−_1</sup><sup>_−w∥_2</sup> 2<sup>+ 2</sup><sup>_ηt_[</sup><sup>_ℓt_(</sup><sup>_w_)</sup><sup>_−ℓt_(</sup><sup>_wt−_1)] +</sup><sup>_G_2</sup><sup>_η_</sup> _t_<sup>2</sup><sup>_._</sup> This implies that _ηt_<sup>_−_2(1</sup><sup>_−η_</sup> _t_<sup>_λ_)</sup><sup>_≤η_</sup> _t_<sup>_−_</sup> _−_<sup>2</sup> 1<sup>,whereweset</sup><sup>_η_</sup> 0<sup>_−_2</sup> = 0: 

_ηt_<sup>_−_2</sup><sup>_∥wt−w∥_2</sup> 2<sup>_≤η_</sup> _t_<sup>_−_</sup> _−_<sup>2</sup> 1<sup>_∥wt−_1</sup><sup>_−w∥_2</sup> 2<sup>+ 2</sup><sup>_η_</sup> _t_<sup>_−_1[</sup><sup>_ℓt_(</sup><sup>_w_)</sup><sup>_−ℓt_(</sup><sup>_wt−_1)] +</sup><sup>_G_2</sup><sup>_._</sup> 

By summing over _t_ = 1 to _t_ = _T_ , we obtain 



This leads to the bound. 

Using batch to online conversion, we can obtain the following expected oracle inequality as a straight-forward result of Theorem 14.11 and Theorem 14.12. 

**Corollary 14.13.** _Consider the regularized loss function_ (14.8) _with w_ 0 = 0 _, where φ_ ( _w, z_ ) _is convex in w, and G Lipschitz in w. Moreover assume that d_ (Ω) = sup _{∥w∥_ 2 : _w ∈_ Ω _}. If Z_ 1 _, . . . , ZT ∼D are independent samples, then we can obtain the following expected oracle inequality for Algorithm 14.3 if we take learning rate in Theorem 14.11:_ 



_We can also obtain the following expected oracle inequality for Algorithm 14.3 if we take learning rate in Theorem 14.12 with_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 14. ONLINE LEARNING 

310 

_then_ 



_Proof_ Note that _ℓt_ ( _w_ ) is _λ_ -strongly convex in _w_ . Moreover, it is _G_ + _λd_ (Ω) Lipschitz. We simply take expectation and apply Jensen’s inequality to obtain the desired bounds. 

In the stochastic setting, the online gradient algorithm is often referred to as the _stochastic gradient descent_ algorithm (SGD). The result in Corollary 14.13 directly imply both a generalization bound and convergence bound for SGD. In order to obtain concentration bounds, or obtain an oracle inequality without the assumption of _d_ (Ω), one can apply the technique of sample dependent bounds similar to the analysis of kernel methods as in Corollary 9.26 and Corollary 9.27. If we restrict _D_ to the uniform distribution of training data, then Corollary 14.13 implies the convergence of SGD to a minimizer of the training loss. However, once we go through the data more than once, Corollary 14.13 cannot be used to obtain a generalization bound for SGD. In this case, we have to combine the convergence analysis of Corollary 14.13 and the stability analysis of Theorem 7.14 to obtain a generalization bound if we run SGD multiple times over the data. We leave the resulting bound as an exercise. Moreover, some recent work studied the generalization of SGD (and the related SGLD method) using the mutual information based generalization bound of Corollary 10.22. 

## **14.5 Online Nonconvex Optimization** 

Consider the online optimization problem with a nonconvex but bounded loss function _ℓt_ ( _w_ ). In this case, in order to obtain a meaningful online regret bound, it is necessary to consider randomized algorithms. We have the following negative result for any deterministic algorithm. 

**Proposition 14.14.** _Consider_ Ω= _{w_ 0 _, w_ 1 _, . . . , wT } that contains T members. Given any deterministic online learning algorithm A that returns a model parameter wt−_ 1 _based on {ℓs_ : _s_ = 1 _, . . . , t−_ 1 _}, there exists a loss sequence ℓt_ ( _w_ ) _∈{_ 0 _,_ 1 _} so that_ 



_Proof_ We simply pick the loss at each time _t_ so that 



In this case, after time _T_ , there exists one _w ∈_ Ωthat differs from _w_ 1 _, . . . , wT_ . It follows that<sup>�</sup><sup>_T_</sup> _t_ =1<sup>_ℓt_(</sup><sup>_w_) = 0.</sup> 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

14.5. ONLINE NONCONVEX OPTIMIZATION 

311 

In general, Proposition 14.14 implies that for a deterministic online learning algorithm, the worst case regret for nonconvex loss cannot be logarithmic in the size of the model family Ω. To resolve this difficult, one needs to employ randomized algorithms. In fact, it is known that the Gibbs algorithm considered in Section 7.4 for nonconvex supervised learning problems can also be used for nonconvex online learning. In the online learning context, this algorithm is often referred to as Hedge. In the setting of general online (nonconvex) optimization, the Gibbs distribution of (7.9) can be defined after time _t_ as follows 



where _p_ 0( _w_ ) is a prior on Ω. 

## **Algorithm 14.4:** Hedge Algorithm 

**Input:** _T_ , prior _p_ 0( _w_ ) on Ω, learning rate _η >_ 0 **1** Randomly draw _w_ 0 _∼ p_ 0( _w_ ) **2 for** _t_ = 1 _,_ 2 _, . . . , T_ **do 3** Observe loss _ℓt_ ( _wt−_ 1) **4** Randomly draw _wt ∼ pt_ ( _w_ ) according to (14.9) 

We have the following result for the Hedge algorithm, using conditions similar to those of Theorem 7.17. 

**Theorem 14.15.** _Assume that for all t:_ 



_then Algorithm 14.4 has regret_ 

_where_ ∆(Ω) _denotes the set of probability distributions on_ Ω _. Proof_ Let 



be the log-partition function for observations up to time _t_ . We have 



where the first equation is simple algebra, and the inequality follows from the estimate of logarithmic moment generation function in Lemma 2.15. By summing 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 14. ONLINE LEARNING 

312 

over _t_ = 1 to _T_ , and noticing that _Z_ 0 = 0, we obtain 



The desired bound follows by applying Proposition 7.16 to reformulate the logpartition function _ZT_ . 

If Ωcontains a discrete number of functions, and consider _p_ to be a measure concentrated on a single _w ∈_ Ω, then KL( _p||p_ 0) = ln(1 _/p_ 0( _w_ )). We thus obtain from Theorem 14.15 







This matches the generalization result using empirical process in Chapter 3. Large probability bounds can be obtained by using online to batch conversion with Azuma’s inequality. Theorem 14.15 is also comparable to the stability analysis of Gibbs algorithm in Example 7.18. 

We note that the proof of Theorem 14.15 relied on the logarithmic moment generating function in the proof of Chernoff bound, which leads to a regret of _O_ ( _√T_ ). In Theorem 14.11, it is shown that for strongly convex problems, one can obtain an online regret bound of _O_ (ln _T_ ). The following result shows that if the variance condition holds, then similar result can be obtained for nonconvex problems as well by using Bennett’s inequality. The resulting bound is similar to that of the stability analysis in Theorem 7.19. 

**Theorem 14.16.** _Assume that at each step t, we draw ℓt ∼Dt, where Dt is an arbitrary sequence of distributions, and the variance condition holds_ 



_Assume that −_ inf _t,w_ [ _ℓt_ ( _w_ )] _≤ M , and we choose a small enough η >_ 0 _so that ηc_ 1 _φ_ ( _−ηM_ ) _<_ 1 _, where φ_ ( _z_ ) = ( _e_<sup>_z_</sup> _−_ 1 _− z_ ) _/z_<sup>2</sup> _. Then Algorithm 14.4 has regret_ 



_where_ ∆(Ω) _denotes the set of probability measures on_ Ω _._ 

_Proof_ Let 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

14.6. HISTORICAL AND BIBLIOGRAPHICAL REMARKS 

313 

be the log-partition function for observations up to time _t_ . We have 





The first inequality used ln _z ≤ z −_ 1. The second inequality used the fact that _φ_ ( _z_ ) is an increasing function of _z_ , which was used to estimate the moment generating function in the Bennett’s inequality. The last inequality used the variance condition. By summing over _t_ = 1 to _T_ , and notice that _Z_ 0 = 0, we obtain 



The desired bound follows by applying Proposition 7.16 to reformulate the logpartition function _ZT_ . 

Since for the Gibbs distribution, if we replace _ℓt_ ( _w_ ) by _ℓt_ ( _w_ ) _− ℓt_ ( _w∗_ ) for any _w∗ ∈_ Ω, the posterior is unchanged. Therefore if _ℓt_ ( _w_ ) _− ℓt_ ( _w∗_ ) satisfies the variance condition, and _|_ Ω _|_ = _N_ is finite, then we obtain from Theorem 14.16 



which does not grow when _T_ increases. This matches the result of empirical process analysis in Chapter 3 using the variance condition and Bernstein’s inequality. The result is also comparable with that of Theorem 7.19. 

## **14.6 Historical and Bibliographical Remarks** 

The perceptron algorithm for binary classification was studied in (Rosenblatt, 1957, 1962; Novikoff, 1963), and is the precursor of neural networks. It is also closely related to support vector machines (SVMs), because the perceptron mistake bound depends on the concept of margin, which motivated the design of SVM loss. The idea of online learning was motivated by the analysis of the perceptron algorithm, and a number of different online learning algorithms were developed in the 1990s by the computational learning community. The multiclass perceptron algorithm was used by Collins (2002) for natural language processing, and it has achieved great success for a number of problems using hand-tuned features. Although the standard analysis of perceptron algorithms assumes that the data is linear separable, the result in Theorem 14.2 allows the data to be non-separable. 

The idea of online to batch conversion has been frequently used to obtain 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 14. ONLINE LEARNING 

314 

algorithms with performance guarantees in the supervised learning setting using online learning techniques. The high probability results can be obtained as direct consequences of martingale exponential tail inequalities. 

One can extend the mistake analysis of the perceptron algorithms to general convex loss functions, leading to the analysis of online convex optimization. The problem was introduced into machine learning by Zinkevich (2003), and the stochastic optimization setting was studied by Zhang (2004a). The resulting proof technique is also very similar to that of the first order gradient descent methods in the optimization literature (Nesterov, 2014). If we assume that each online sample is drawn from an iid distribution, then the online learning technique can be used to analyze both the convergence behavior and the generalization performance of the underlying stochastic optimization problem. The analysis of nonsmooth strongly convex function was studied by Shalev-Shwartz et al. (2011), with a convergence rate of _O_ (ln _T/T_ ) using the standard online to batch conversion. The _O_ (ln _T/T_ ) can be improved to _O_ (1 _/T_ ) using weighted averaging as shown in (Rakhlin et al., 2012; Shamir and Zhang, 2013). The results for convex and strongly convex problems match the lower bounds of (Agarwal et al., 2009). 

The Hedge algorithm is the online counterpart of the Gibbs algorithm, which was named in (Freund and Schapire, 1997). It is related to the weighted majority algorithm and the Winnow algorithm studied by Littlestone and Warmuth (1994); Littlestone (1988). The analysis is analogous to the stability analysis of the Gibbs algorithm in Section 7.4. In fact, online learning heavily relies on a similar stability argument, which can be seen clearly in the analysis of online convex optimization. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

Exercises 

315 

## **Exercises** 

- 14.1 Prove Theorem 14.6. 

- 14.2 Consider Corollary 14.13. Show that even if _d_ (Ω) = _∞_ , we can still derive an oracle inequality for _w_ ˆ of the form 



Derive such a bound. 

- 14.3 For the previous problem, obtain a large probability statement of an oracle inequality which is of the form (14.10). 

   - Hint: First derive a sample dependent version of the sub-Gaussian inequality with boundedness condition _|g_ ˆ _wt−_ 1<sup>(</sup><sup>_z_)</sup><sup>_−g_</sup> 0<sup>(</sup><sup>_z_)</sup><sup>_|≤G∥w_ˆ</sup> _t−_ 1<sup>_∥_</sup> 2<sup>,wheretheconcentrationtermdepends</sup> on the sample dependent quantity 



Then obtain the desired oracle inequality. 

- 14.4 Assume that we run SGD for strongly convex problem more than once over the data with a learning rate schedule _ηt_ = 1 _/_ ( _λt_ ). Use Theorem 14.11 and Theorem 7.14 to obtain an oracle inequality. 

- 14.5 Use Theorem 14.16 to obtain an upper bound for the least squares problem in Section 12.4, and compare the result to that of Proposition 12.21 and Corollary 12.20. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

**15** 

