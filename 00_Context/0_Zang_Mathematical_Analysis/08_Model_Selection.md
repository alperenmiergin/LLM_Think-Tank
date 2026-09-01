**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Model Selection** 

In previous chapters, we studied the generalization of supervised learning algorithms, when the model is given. That is, we assume that the loss function is _L_ ( _f_ ( _w, x_ ) _, y_ ), where the model class _{f_ ( _w, x_ ) : _w ∈_ Ω _}_ is known. In practical applications, we often encounter the situation that many different model classes (such as SVM, neural networks, decision trees) are tried, and we want to select the best model to achieve the smallest test loss. A typical approach by practitioner is to select models via a validation set. One disadvantage is that model training and selection needs to be done separately. An alternative method allows one to do model selection directly on the training data, using a data-dependent generalization bound as regularization term. In this approach, we do not have to rely on a separate validation data, but employ a specially designed regularization term. We will discuss both approaches. 

## **8.1 Model Selection Problem** 

Mathematically, we may regard a model, indexed by a hyperparameter _θ ∈_ Θ, as a learning algorithm _A_ ( _θ, Sn_ ) that maps the training data _Sn_ to a prediction function _f ∈F_ . In general, these algorithms may be completely different and the underlying model function classes are not related to each other (for example, one model may be decision tree, and another model may be support vector machine). However, in applications, one may also encounter the situation that the algorithms are related, and _θ_ is a tuning parameter of the algorithm. For example, if we consider using stochastic gradient descent to train a classifier, the tuning parameter _θ_ may be the learning rate schedule. If we consider using regularization methods, then _θ_ may be the regularization parameter. If we consider training neural networks with different width, then the tuning parameter _θ_ may be the width of the hidden layers. For such problems, each model _A_ ( _θ, Sn_ ) _∈F_ ( _θ_ ) = _{f_ ( _w, x_ ) : _w ∈_ Ω( _θ_ ) _}_ . The model functions _F_ = _∪F_ ( _θ_ ) have the same functional form. The goal of model selection is to find the best model hyperparameter _θ_ so that the corresponding learning algorithm _A_ ( _θ, ·_ ) achieves a small test error. 

**Definition 8.1.** Consider a loss function _φ_ ( _f, z_ ) : _F × Z →_ R, and a model family _{A_ ( _θ, Sn_ ) : Θ _× Z_<sup>_n_</sup> _→F, n ≥_ 0 _}_ . Consider _N ≥ n ≥_ 0, and iid dataset _Sn ⊂SN ∼D_<sup>_N_</sup> . A model selection algorithm _A_<sup>¯</sup> maps _SN_ to _θ_<sup>ˆ</sup> = _θ_<sup>ˆ</sup> ( _SN_ ) _∈_ Θ, 

142 

8.1. MODEL SELECTION PROBLEM 

143 

and then train a model _f_<sup>ˆ</sup> = _A_ ( _θ_<sup>ˆ</sup> ( _SN_ ) _, Sn_ ) = _A_<sup>¯</sup> ( _SN_ ). It satisfies an _ϵn,N_ ( _·, ·_ ) oracle inequality if there exists _ϵn,N_ ( _θ, δ_ ), such that for all _δ ∈_ (0 _,_ 1), with probability at least 1 _− δ_ over _SN_ : 



More generally, a learning algorithm _A_<sup>¯</sup> : _SN →F_ is _ϵn,N_ ( _·, ·_ ) adaptive to the model family _{A_ ( _θ, ·_ ) : _θ ∈_ Θ _}_ if there exists _ϵn,N_ ( _θ, δ_ ), such that for all _δ ∈_ (0 _,_ 1), with probability at least 1 _− δ_ over _SN_ : 



Note that we have used a slightly different notation _φ_ ( _f, Z_ ), instead of _φ_ ( _w, Z_ ) as in earlier chapters, to emphasize that in model selection, the prediction function _f_ ( _w, ·_ ) from different models can be compared, but the parameter _w_ of the functions may not be comparable when different models have different functional forms such as decision trees versus neural networks. Without causing confusion, one may consider _f_ to be the function represented by _w_ , so that _φ_ ( _f, Z_ ) = _L_ ( _f_ ( _X_ ) _, Y_ ) and _φ_ ( _w, Z_ ) = _L_ ( _f_ ( _w, X_ ) _, Y_ ). Similar to Definition 3.8, we use the simplified notation 



The concept adaptivity is more general than model selection, as the algorithm does not need to choose a specific model _A_ ( _θ, ·_ ) indexed by _θ_ . For example, a commonly used method to achieve adaptivity is model averaging, where we take the average of several different model outputs _f_<sup>ˆ</sup> _θj_ = _A_ ( _θj, Sn_ ) as 



If different models have the same functional form, with a vector model parameter _w ∈_ R<sup>_d_</sup> : _f_<sup>ˆ</sup> _θj_ ( _x_ ) = _f_ ( ˆ _wj, x_ ). Then one may also average the model parameters as follows: 



In general, the training data _Sn_ is a subset of _SN_ , and we allow _n < N_ in order to analyze validation methods which are commonly used in practice. In addition to the large probability bounds in Definition 8.1, one may also derive bounds that holds for expectation over _SN_ . 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 8. MODEL SELECTION 

144 

## **8.2 Model Selection on Validation Data** 

A frequently employed method for model hyperparameter tuning is to split a labeled data _SN_ into a training data _Sn_ and a validation data _S_<sup>¯</sup> _m_ with _N_ = _m_ + _n_ . We can then train the models on the training data _Sn_ , and then evaluate on validation data _S_<sup>¯</sup> _m_ . We select the model according to their performance on the validation set. 

In this section, we consider a countable sequence of models _{A_ ( _θ, ·_ ) : _θ_ = 1 _,_ 2 _, . . .}_ that can produce _f_<sup>ˆ</sup> _θ_ = _A_ ( _θ, Sn_ ) _∈F_ from the training data _Sn_ . Let _{q_ ( _θ_ ) _≥_ 0 _}_ be a sequence of non-negative numbers that satisfies the inequality 



Consider the following model selection algorithm, which trains a prediction function _θ_ ˆ to _A_ approximately( _θ, Sn_ ) on trainingminimizedata thefor anyfollowinggiven generica modelmodel _θ_ , andselectionthen selectscriteriona modelon the validation data: 



where 



We have the following generic model selection result using the union bound of additive Chernoff bound. Similar results can be obtained for multiplicative Chernoff bounds, and Bernstein’s inequalities. 

**Theorem 8.2** (Model Selction on Validation Data) **.** _Assume_ sup _Z,Z′_ [ _φ_ ( _f, Z_ ) _− φ_ ( _f, Z_<sup>_′_</sup> )] _≤ M for all f , and the validation data S_<sup>¯</sup> _m contains m iid samples from D. Given training data Sn, consider_ (8.2) _with_ 



_Then with probability at least_ 1 _− δ over the random selection of Sm:_ 



_This implies the following oracle inequality. With probability at least_ 1 _− δ over the random sampling of S_<sup>¯</sup> _m:_ 



_where q_ ( _θ_ ) _satisfies_ (8.1) _._ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

8.2. MODEL SELECTION ON VALIDATION DATA 

145 

_Proof_ For each model _θ_ , let _f_<sup>ˆ</sup> _θ_ = _A_ ( _θ, Sn_ ). We obtain from the additive Chernoff bound that with probability at least 1 _− q_ ( _θ_ ) _δ_ : 



Taking the union bound over _θ_ , we know that the above claim holds for all _θ ≥_ 1 with probability at least 1 _− δ_ . This result, combined with the definition of _θ_<sup>ˆ</sup> in (8.2), leads to the first desired bound. 

Now by applying the Chernoff bound for an arbitrary _θ_ that does not depend on _S_<sup>¯</sup> _m_ , we obtain with probability at least 1 _− δ/_ 2: 



By combining this inequality with the first bound of the theorem, we obtain the second desired inequality. 

A frequent choice of _q_ ( _θ_ ) is _q_ ( _θ_ ) = 1 _/_ ( _θ_ ( _θ_ + 1)). In this case, _rm_ depends only logarithmically on _θ_ , and the penalty _rm_ ( _θ_ ) grows very slowly as _θ_ increases. It means that for model selection with bounded loss functions, we can compare exponentially (in _m_ ) many models without paying a significant penalty. 

Theorem 8.2 can be combined with uniform convergence results such as Corollary 6.21 to obtain a more precise statement for the ERM method, showing that a near optimal generalization bound can be obtained using the method of (8.2). This leads to an oracle inequality for model selection with ERM learners. 

**Corollary 8.3.** _Consider a countable family of approximate ERM algorithms {A_ ( _θ, ·_ ) : _θ_ = 1 _,_ 2 _, . . .}, each characterized by its model space F_ ( _θ_ ) _, and returns a function f_<sup>ˆ</sup> _θ ∈F_ ( _θ_ ) _such that_ 



_where we use the notation of Definition 8.1._ 

_Assume further that_ sup _Z,Z′_ [ _φ_ ( _f, Z_ ) _− φ_ ( _f, Z_<sup>_′_</sup> )] _≤ M for all f , and we use_ (8.2) _to select the best model θ_<sup>ˆ</sup> _on the validation data S_<sup>¯</sup> _m, with the choice_ 



_Then the following result holds with probability at least_ 1 _−δ over random selection_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 8. MODEL SELECTION 

146 

_of Sn and S_<sup>¯</sup> _m:_ 



_where Rn_ ( _G_ ( _θ_ ) _, D_ ) _is the Rademacher complexity of G_ ( _θ_ ) = _{φ_ ( _f, ·_ ) : _f ∈F_ ( _θ_ ) _} and q_ ( _θ_ ) _satisfies_ (8.1) _._ 

_Proof_ Consider any model _θ_ . We have from Theorem 8.2 that with probability 1 _− δ/_ 2, 



Moreover, from Corollary 6.21 with _h_ ( _·_ ) = 0, we know that with probability at least 1 _− δ/_ 2: 



Taking the union bound, both inequalities hold with probability at least 1 _− δ_ , which leads to the desired bound. 

In the application of Corollary 8.3, we often choose a nested function class _F_ ( _θ_ ) _⊂F_ ( _θ_<sup>_′_</sup> ) when _θ ≤ θ_<sup>_′_</sup> . This means we consider a sequence of model families that become more complex. A larger function class _F_ ( _θ_ ) can achieve a smaller test loss inf _f ∈F_ ( _θ φ_ ( _f, D_ ), but it also has a larger Rademacher complexity _Rn_ ( _G_ ( _θ_ ) _, D_ ). With the choice of _q_ ( _θ_ ) = 1 _/_ ( _θ_ + 1)<sup>2</sup> , _rm_ depends only logarithmically on _θ_ , and hence _Rn_ ( _G_ ( _θ_ ) _, D_ ) is the dominant penalty for the overall generalization performance. It also implies that we should usually choose _n_ to be larger than _m_ in the training/validation split, as the dominant penalty _Rn_ ( _G_ ( _θ_ ) _, D_ ) decreases as _n_ increases. 

**Example 8.4.** Consider a _{_ 0 _,_ 1 _}_ valued binary classification problem, with binary classifiers _F_ ( _θ_ ) = _{fθ_ ( _w, x_ ) _∈{_ 0 _,_ 1 _}_ : _w ∈_ Ω( _θ_ ) _}_ of VC-dimension _d_ ( _θ_ ). The Rademacher complexity of _G_ ( _θ_ ) is no larger than (16� _d_ ( _θ_ )) _/_<sup>_√_</sup> _<u>n</u>_ (See Example 6.26). Take _q_ ( _θ_ ) = 1 _/_ ( _θ_ + 1)<sup>2</sup> . Then we have from Corollary 8.3 that 



This result shows that the model selection algorithm of (8.2) can automatically balance the model accuracy E _D_ 1 ( _fθ_ ( _w, X_ ) = _Y_ ) and model dimension _d_ <u>(</u> _θ_ <u>).</u> it can adaptively choose the optimal model _θ_ , up to a penalty of _O_ ( ~~�~~ ln( _θ_ + 1) _/n_ ). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

8.3. MODEL SELECTION ON TRAINING DATA 

147 

While we only considered the selection of discrete models with training data and validation data split, it is also possible to consider continuous models, if the learning algorithm is stable with respect to model hyperparameter _θ_ . In such case, we may introduce a notion similar to covering numbers and then discrete the continuous model space accordingly. 

## **8.3 Model Selection on Training Data using Data Dependent Bounds** 

In the typical application of model selection, we can split a large labeled data into training and validation partitions, and employ the technique of Section 8.2 to do model selection on the validation data. However, the split effectively reduces training data size, and it is difficult to nest model selection procedures (that is, to select model selection algorithms). To address this issue, an alternative approach is to do model selection directly on the training data ( _SN_ = _Sn_ ) without any training and validation partition. This is possible if we have a sample dependent generalization bound, as we will demonstrate in this section. 

In the following, we still consider a countable sequence of models, parameterized by function families _{F_ ( _θ_ ) : _θ_ = 1 _,_ 2 _, . . .}_ . Consider the following model selection algorithm, which simultaneously finds the model hyperparameter _θ_<sup>ˆ</sup> and model function _f_<sup>ˆ</sup> _∈F_ ( _θ_<sup>ˆ</sup> ) on the training data _Sn_ : 



where for _f ∈F_ ( _θ_ ), 



where _R_<sup>˜</sup> is an appropriately chosen sample dependent upper bound of the complexity for family _F_ ( _θ_ ). 

Sample dependent uniform convergence bounds can be used to design _R_<sup>˜</sup> in the model selection algorithm (8.3) on training data only, without splitting the training data into training versus validation partitions. The idea is similar to the model selection on validation data presented in Section 8.2, with data dependent uniform convergence bound replacing the Chernoff bound. The following generic result shows that for this model selection method, we can obtain an oracle inequality from any sample-dependent uniform convergence bound. 

**Theorem 8.5.** _Let {q_ ( _θ_ ) _≥_ 0 _} be a sequence of numbers that satisfy_ (8.1) _. Assume that for each model θ, we have uniform convergence result as follows. With probability at least_ 1 _− δ, for all f ∈F_ ( _θ_ ) _,_ 



_for some constants α, λ, β >_ 0 _and c_ 0 _≥_ 1 _. If we choose_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

[ 

[ 

~~(—)~~ | | 

~~(—) (—— —) (——) (—) (—)~~ 

~~(—) (—)~~ 

[ 

| 

8.3. MODEL SELECTION ON TRAINING DATA 

149 

Taking the union bound, and sum of the two inequalities, we obtain the desired oracle inequality. 

The result demonstrates that one can turn any sample dependent uniform convergence bound into a model selection method. The algorithm itself does not depend on the concentration result involving _ϵ_<sup>_′_</sup> . In fact, an expected oracle inequality can be obtained even if we do not know _ϵ_<sup>_′_</sup> , as shown in Exercises 8.2. The following example illustrates the roles of _α, α_<sup>_′_</sup> _, α_<sup>_′′_</sup> _, β_ and _λ_ . 

**Example 8.6.** In Theorem 8.5, we consider the following absolute deviation loss 



and assume that _y ∈_ [ _−_ 1 _,_ 1]. Assume also we have function families _{F_ ( _θ_ ) _}_ , each with _N_ ( _θ_ ) elements, and _|f_ ( _x_ ) _| ≤ θ_ for all _f_ ( _x_ ) _∈F_ ( _θ_ ) ( _θ_ = 1 _,_ 2 _, . . ._ ). We thus have _φ_ ( _f, z_ ) _∈_ [0 _, θ_ +1]. The multiplicative Chernoff bound in (2.11) implies that for any _θ_ , with probability at least 1 _− δ_ , for all _f ∈F_ ( _θ_ ): 



It implies the following result for _γ ∈_ (0 _,_ 1): 



In _R_ ˜ inthetheabovemodelderivation,selection wemethodtried (8.3)to decoupledoes not _θ_ anddepend _δ_ soonthat _δ_ . Nowthe penaltywe can termtake _β_ = 2. It follows that we can take 



Both _ϵ_ ˆ and _R_<sup>˜</sup> depend on the model index _θ_ but not on the training data _Sn_ . Now for all _θ_ and _f ∈F_ ( _θ_ ), the multiplicative Chernoff bound (2.12) implies that for all _θ_ and _f ∈F_ ( _θ_ ), with probability 1 _− δ_ : 



Theorem 8.5 implies that the following oracle inequality holds: 



where 

If we take _λ_ = 1 _/_<sup>_√_</sup> _<u>n</u>_ <u>,</u> then we have a complexity term of _ϵn_ ( _θ, δ_ ) = _O_ (1 _/n_ ). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 8. MODEL SELECTION 

150 

Next we focus on bounded loss functions with Rademacher complexity analysis. In such case, we can simplify apply Theorem 8.5 with _α_ = _α_<sup>_′_</sup> = _α_<sup>_′′_</sup> = 1 and _β_ = 0 _._ 5. 

**Theorem 8.7.** _Consider the model selection algorithm in_ (8.3) _, with_ 



_where M_ ( _θ_ ) = sup _f,z,z′_ �� _φ_ ( _f, z_ ) _− φ_ ( _f, z′_ )�� _, and q_ ( _θ_ ) _satisfies_ (8.1) _. Then with probability at least_ 1 _− δ, for all θ and f ∈F_ ( _θ_ ) _:_ 



_Moreover, we have the following oracle inequality. With probability of at least_ 1 _− δ:_ 



_Proof_ Note that from Corollary 6.19, we obtain for any _θ_ with _h_ = 0, with probability 1 _− δ_ , the following uniform convergence result holds for all _f ∈F_ ( _θ_ ): 



The choice of _R_<sup>˜</sup> satisfies the condition of Theorem 8.5 with _c_ 0 = 1 and _β_ = 0 _._ 5. It implies the desired uniform convergence result. 

Given fixed _θ_ and _f ∈F_ ( _θ_ ), we know that 



when _Sn_ and _Sn_<sup>_′_differbyoneelement.FromMcDiarmid’sinequality,weknow</sup> that with probability at least 1 _− δ_ , 



It follows that we can take 



in Theorem 8.5, and obtain the desired oracle inequality. 

Compared to Corollary 8.3, Theorem 8.7 achieves similar results using sample depend uniform convergence bounds. The resulting model selection algorithm (8.3) avoids partitioning data into training and validation parts, and can be used to design integrated algorithms that simultaneously estimate the model parameter and hyperparameter on the training data. However, the algorithm in (8.3) requires knowing the specific generalization bound for each model class, which may not be practical in some real applications. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

8.3. MODEL SELECTION ON TRAINING DATA 

151 

**Example 8.8.** Consider the same problem considered in Example 8.4. We can take _M_ ( _θ_ ) = 1 and _h_ = 0 in Theorem 8.7. It implies that the model selection method (8.3) with 



satisfies the following oracle inequality. With probability 1 _− δ_ : 



The result is comparable to that of Example 8.4. 

It is also possible to develop a sample dependent bound using the empirical Rademacher complexity. We note that an important property of Rademacher complexity is that for any function class _F_ , _R_ ( _F, Sn_ ) is concentrated around _Rn_ ( _F, D_ ). This result follows directly from McDiarmid’s inequality. 

**Theorem 8.9** (Concentration of Empirical Rademacher Complexity) **.** _Consider h with decomposition 6.3 as h_ ( _f, z_ ) = _h_ 0( _f_ ) + _h_ 1( _f, z_ ) _. Assume that for some M ≥_ 0 _:_ 



_We have with probability at least_ 1 _− δ,_ 



_Similarly, with probability at least_ 1 _− δ, we have_ 



_Proof_ Let _Sn_ = _{Z_ 1 _, . . . , Zn}_ and _Sn_<sup>_′_=</sup><sup>_{Z_</sup> 1<sup>_′, . . . , Z_</sup> _n_<sup>_′}_,where</sup><sup>_Zi_=</sup><sup>_Z_</sup> _i_<sup>_′_exceptata</sup> single index _k_ . For any _σ_ , we assume the sup of the following can be achieved at 

Let 



It follows that 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 8. MODEL SELECTION 

152 

where _f_<sup>ˆ</sup> is the short for _f_<sup>ˆ</sup> ( _σ, Sn_ ), and _f_<sup>ˆ</sup><sup>_′_</sup> is the short for _f_<sup>ˆ</sup> ( _σ, Sn_<sup>_′_).Therefore</sup> 



The first inequality used (8.4). Similarly, we have _R_<sup>_h_</sup> ( _F, Sn_<sup>_′_)</sup><sup>_−Rh_(</sup><sup>_F, Sn_)</sup><sup>_≤M/n_.</sup> This implies that _|R_<sup>_h_</sup> ( _F, Sn_ ) _− R_<sup>_h_</sup> ( _F, Sn_<sup>_′_)</sup><sup>_| ≤M/n_.Thedesiredboundisadirect</sup> consequence of McDiarmid’s inequality. 

This result, combined with Corollary 6.19, can be used to obtain the following sample-dependent uniform convergence result. 

**Corollary 8.10.** _Consider h with decomposition_ (6.3) _as h_ ( _f, z_ ) = _h_ 0( _f_ ) + _h_ 1( _f, z_ ) _. Assume that for some M ≥_ 0 _:_ 



_Then with probability at least_ 1 _− δ, for all f ∈F:_ 



_Proof_ With probability at least 1 _− δ/_ 2, Corollary 6.19 holds. With probability at least 1 _− δ/_ 2, Theorem 8.9 holds. The desired inequality follows by taking the union bound of the two events. 

In order to apply the sample-dependent bound of Corollary 8.10, the right hand side can be estimated using training data only. Although computationally the estimation of _R_<sup>_h_</sup> ( _F, Sn_ ) can be quite challenging, it is statistically possible to do. One may also replace it by a sample dependent upper bound, which are some time possible to derive. The following theorem is a direct consequence of Theorem 8.5. The proof is similar to that of Theorem 8.7. 

**Theorem 8.11.** _Consider h_ ( _θ, f, ·_ ) _with decomposition_ (6.3) _as h_ ( _f, z_ ) = _h_ 0( _f_ )+ _h_ 1( _f, z_ ) _. Assume that for some M ≥_ 0 _:_ 



_Let R_<sup>¯</sup> ( _θ, Sn_ ) _be any upper bound of R_<sup>_h_(</sup><sup>_θ,f,·_)</sup> ( _F_ ( _θ_ ) _, Sn_ ) _. Assume that_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

8.4. BAYESIAN MODEL SELECTION AND AVERAGING 

153 

_then the following uniform convergence result holds. With probability_ 1 _− δ, for all θ and f ∈F_ ( _θ_ ) _:_ 



_Consider the model selection algorithm in_ (8.3) _. We have the following oracle inequality. With probability of at least_ 1 _− δ:_ 



_where_ ∆ _n_ ( _·_ ) _is defined in Definition 6.17._ 

## **8.4 Bayesian Model Selection and Averaging** 

We have studied the Gibb’s algorithm in Section 7.4. We showed that the algorithm is algorithmically stable, which can be used to show that it has good generalization performance in expectation. In this section, we further show that the Gibbs algorithm can be used for model selection. 

We consider a family of Gibbs algorithms _A_ ( _θ, Sn_ ), and for each _θ_ , the algorithm chooses a random _f ∈F_ ( _θ_ ) according to the probability 



where _p_ 0( _f |θ_ ) is a known prior on the model class _F_ ( _θ_ ), and 



Now, assume that we are further given a prior _p_ 0( _θ_ ) on _θ ∈_ Θ, then the following algorithm is the Bayesian formula for Gibbs model selection, which randomly selects a model _θ ∈_ Θ according to the posterior formula: 



After selecting _θ_ , we then randomly select _f ∈F_ ( _θ_ ) according to (8.5). 

Using the Bayesian formula, we obtain the joint posterior for both _θ_ and _f_ as: 





We simply randomly select a model from this distribution. This is still a Gibb’s algorithm which defines a posterior distribution jointly on the hyperparameter _θ_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 8. MODEL SELECTION 

154 

and the model function _f_ . Theorem 7.19 can still be applied to obtain a generalization bound for this method. 

Instead of selecting a model _θ_ , and then obtaining the corresponding model parameter _f_ using _A_ ( _θ, Sn_ ), it is observed in practice that model averaging, which simply average different models, often leads to superior performance. To illustrate the idea, we consider the same setting as that of the Gibbs algorithm, which randomly picks a model from the posterior distribution (8.7). In model averaging, we simply use the averaged model output 



Since this particular model averaging method employs the posterior distribution, it is also referred to as Bayesian model averaging. The analysis of this method can be found in Chapter 15. If the loss function satisfies the _α_ -exponential-concavity property defined in Definition 15.12, then one can obtain better results from model averaging, especially when the underlying model is misspecified. Such loss functions include log-loss, used in maximum-likelihood methods for conditional density estimation (e.g. logistic regression), and least squares regression with bounded target. For log-loss, model averaging is also the optimal estimation method under the Bayesian setting, where the underlying distribution is drawn according to a known prior (see Exercise 8.5). One may also come up with examples in which model averaging is superior to model selection, when model selection is unstable, as stated below. The construction is left to Exercise 8.6. 

**Proposition 8.12.** _Consider the least squares regression problem_ 



_where y ∼ N_ ( _f∗_ ( _x_ ) _,_ 1) _. We consider a model selection problem that contains only two models θ_ = 1 _,_ 2 _, and each model contains only one (possibly misspecified) function F_ ( _θ_ ) = _{fθ_ ( _x_ ) _}, where |fθ_ ( _x_ ) _− f∗_ ( _x_ ) _| ≤_ 1 _for all θ. Then there exists such a problem and an absolute constant c_ 0 _>_ 0 _so that given training data of size n, all model selection algorithms Asel can only achieve an expected oracle inequality no better than_ 



_However, the Bayesian model averaging method A_ avg _achieves an expected oracle inequality_ 



## **8.5 Historical and Bibliographical Remarks** 

Model selection is an important topic in statistics. There are two classical asymptotic criteria for model selection, including the _Akaike information criterion_ by 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

8.5. HISTORICAL AND BIBLIOGRAPHICAL REMARKS 

155 

Akaike (1974) (also referred to as AIC), and the _Bayesian Information Criterion_ by Schwarz (1978) (also referred to as BIC). Both considered the parametric density estimation problem (negative-log likelihood loss) with _φ_ ( _w, z_ ) = _−_ ln _p_ ( _y|w, x_ ) in the asymptotic statistical setting, where _n →∞_ . If the models are well specified, one can employ well-known classical asymptotic statistical techniques to derive these methods. 

For AIC, one considers the ERM method (maximum-likelihood method) _f_<sup>ˆ</sup> _θ_ . If the model class _F_ ( _θ_ ) is parametric, then one can show the following expected generalization bound 



The leading excess risk term<sup>_d_</sup><sup><u>(</u></sup> _n_<sup>_θ_</sup><sup><u>)</u></sup> on the right hand side is AIC. For BIC, one considers Bayesian model selection, and it can be shown using Laplace approximation that 



where _f_<sup>ˆ</sup> _θ_ is the maximum likelihood estimate over _F_ ( _θ_ ). The leading excess term _d_ <u>(</u> _θ_ <u>) ln</u> _n_ 2 _n_ on the right hand side is BIC. While simple, both AIC and BIC can only be applied in the asymptotic setting, and only for parametric models because both criteria depend linearly on the model parameter dimension _d_ ( _θ_ ). For nonparametric density estimation, one can employ a different criterion from information theory which may be regarded as a generalization of BIC, referred to as _minimum description length_ (MDL) (see Rissanen, 1978; Barron et al., 1998; Gr¨unwald, 2007). The MDL method, while not as easy to apply as BIC, is more consistent with the learning theory analysis which we investigated in this chapter. In fact, with our choice of _q_ ( _θ_ ) so that � _θ_<sup>_q_(</sup><sup>_θ_)</sup><sup>_≤_1,thepenalty</sup><sup>_−_ln</sup><sup>_q_(</sup><sup>_θ_)(whichappearsasmodelselectionpenalty)</sup> can be regarded as a coding length. Therefore the method considered in this chapter may be regarded as a generalized version of MDL. 

Model selection has also been considered by Vapnik in his statistical learning approach, and was referred to as structural risk minimization (see Vapnik, 2013, 1999). The technique employs sample dependent generalization bounds similar to what we considered in Section 8.3, with nested function classes. 

Both Bayesian model selection and Bayesian model averaging have been used in practice (Raftery, 1995; Raftery et al., 1997; Wasserman, 2000; Robert, 2007). 

The asymptotic analysis of Bayesian model selection for parametric models leads to BIC. For nonparametric models, as we have shown, the theoretical analysis of Bayesian model selection can be done either via the Gibbs algorithm or via MDL, and Bayesian model averaging can be analyzed using aggregation techniques studied in Chapter 15. 

The concept of model selection is related to adaptive estimation in statistics (see Bickel, 1982; Birg´e and Massart, 1997), which aims at optimal estimation 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 8. MODEL SELECTION 

156 

across a family of models. This requires oracle inequalities similar to those of Section 8.3. Typically, the design of adaptive estimation methods also relies on data dependent generalization analysis, similar to results developed in Section 8.3. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

Exercises 

157 

## **Exercises** 

- 8.1 In Theorem 8.2, we may consider model selection with 





for a fixed _γ >_ 0. Use multiplicative Chernoff bound to obtain oracle inequalities similar to those of Theorem 8.2 and Corollary 8.3. 

- 8.2 We can derive an expected oracle inequality under conditions of Theorem 8.5. Find a _β_ dependent constant _C_ ( _β_ ) such that the following expected oracle inequality holds: 



Note that the inequality does not depend on _ϵ_<sup>_′_</sup> . 

- 8.3 Consider a function family _F_ , and for each _f ∈F_ , we have a complexity measure _c_ ( _f_ ) _≥_ 0. Let _F_ ( _θ_ ) = _{f ∈F, c_ ( _f_ ) _≤ θ}_ for _θ >_ 0. Assume that we have a bound 



for any _θ >_ 0. Assume that _φ_ ( _f, z_ ) _∈_ [0 _,_ 1]. Use Theorem 8.7 to obtain an oracle inequality for the following regularized ERM method: 



Hint: consider a sequence of function classes _F_ (1), _F_ (2) _\ F_ (1) _, F_ (4) _\ F_ (2) _, · · ·_ . 

- 8.4 Prove Theorem 8.11. 

- 8.5 Consider the conditional density estimation problem 



Let _p_ 0( _f_ ) be a prior on _F_ , and assume that the true model is _p_ ( _y|f_ ( _x_ )) is drawn according to the prior _p_ 0( _f_ ), and the corresponding data distribution _D_ = _Df∗_ has density _pf∗_ ( _x, y_ ) = _p∗_ ( _x_ ) _p_ ( _y|f∗_ ( _x_ )) for some unknown function _f∗_ ( _x_ ). Show that for a given set of training data _Sn_ , the optimal Bayes estimator _f_<sup>ˆ</sup> _Sn_ in terms of minimizing the expected loss 



is given by Bayesian model averaging over _p_ ( _y|f_ ( _x_ )). Moreover, the Bayesian optimal model selection method is given by arg max _θ_ Γ( _θ|Sn_ ). 

- 8.6 Show that the following example satisfies Proposition 8.12. Consider a one dimensional problem with _x ∼_ Uniform( _−_ 1 _,_ 1). Assume that we choose _f∗_ ( _x_ ) randomly from a twofunction family _{f∗_<sup>_k_</sup> ( _x_ ) : _k_ = 1 _,_ 2 _}_ , each with probability 0 _._ 5, where _f∗_<sup>1</sup> ( _x_ ) = 1 _/_<sup>_~~√~~_</sup> _<u>n</u>_ <u>,</u> and _f∗_<sup>2</sup> ( _x_ ) = _−_ 1 _/_<sup>_~~√~~_</sup> _<u>n</u>_ <u>.</u> Define two misspecified single-function model families _{fθ_ ( _x_ ) _}_ for _θ_ = 1 _,_ 2 as _fθ_ ( _x_ ) = 0 _._ 5 for _θ_ = 1 and _fθ_ ( _x_ ) = _−_ 0 _._ 5 for _θ_ = 2. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

**9** 

