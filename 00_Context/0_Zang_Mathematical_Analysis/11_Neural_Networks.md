**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Analysis of Neural Networks** 

The idea of neural networks (NNs) can be dated back to the 1960s, and the key computational procedures for neural network using stochastic gradient descent was developed in the 1980s. However, the training of neural networks was quite costly, and large scale training of neural networks has only become practical with the advance of GPU computing in the 2010s. 

A major difficulty to analyze neural networks is its nonconvexity, and many of its empirically observed properties have not been fully explained by theory. This chapters presents some known theoretical results for neural networks, including some theoretical analysis that has been developed recently. While a general theory of neural networks is still under development, we will cover some existing results, including function approximation results and generalization analysis. In particular, we show that neural networks can be analyzed both using the kernel analysis of Chapter 9, and the _L_ 1 regularization based analysis of Chapter 10. 

## **11.1 Introduction to Neural Networks** 

The simplest neural networks are two-layer neural networks that are closely related to additive models. With real-valued output, and _d_ -dimensional input vector _x ∈_ R<sup>_d_</sup> , such two-layer neural networks can be written as an additive model in (10.1) 



where _x ∈_ R<sup>_d_</sup> , _θj ∈_ R<sup>_d_</sup> , _bj ∈_ R, _uj ∈_ R, and _w_ = _{_ [ _uj, θj, bj_ ] : _j_ = 1 _, . . . , m}_ . The function _h_ ( _·_ ) is referred to as an activation function, and some popular choices include rectified linear unit (ReLU) _h_ ( _z_ ) = max(0 _, z_ ) and sigmoid _h_ ( _z_ ) = 1 _/_ (1 + _e_<sup>_−z_</sup> ) as shown in Figure 11.1. 

In practice, the model parameters _w_ are often trained using stochastic gradient descent (SGD). Since a two-layer neural network can be regarded as an additivemodel, we may apply the generalization analysis in Chapter 10 directly. Similar to kernel methods, it is known that two-layer neural networks are universal function approximators (see Section 11.2). 

More generally, we may define a _K_ -layer fully-connected deep neural network with real-valued output as follows. Let _m_<sup>(0)</sup> = _d_ and _m_<sup>(</sup><sup>_K_)</sup> = 1, we recursively 

226 

11.1. INTRODUCTION TO NEURAL NETWORKS 

227 



<!-- Start of picture text -->
2 1 . 5<br>1 . 5<br>1<br>1<br>0 . 5<br>0 . 5<br>0 0<br>− 2 − 1 0 1 2 − 3 − 2 − 1 0 1 2 3<br>z z<br>(a) ReLU (b) sigmoid<br>)( hz )( hz<br><!-- End of picture text -->

**Figure 11.1** Neural network activation functions 



<!-- Start of picture text -->
x (1) 1 x (2) 1<br>x (3) 1<br>x (0) 1 x (1) 2 x (2) 2<br>x (3) 2<br>x (0) 2 x (1) 3 x (2) 3 x (4) 1<br>x (3) 3<br>x (0) 3 x (1) 4 x (2) 4<br>x (3) 4<br>x (1) 5 x (2) 5<br><!-- End of picture text -->

**Figure 11.2** Four-layer fully-connected neural network 



where the model parameters can be represented by _w_ = _{_ [ _uj, θj,j_<sup>(</sup><sup>_k_)</sup><sup>_′, b_</sup> _j_<sup>(</sup><sup>_k_)] :</sup><sup>_j, j′, k}_,</sup> with _m_<sup>(</sup><sup>_k_)</sup> being the number of hidden units at layer _k_ . Figure 11.2 illustrates a _K_ = 4 layer neural network with _m_<sup>(0)</sup> = 3, _m_<sup>(1)</sup> = _m_<sup>(2)</sup> = 5, _m_<sup>(3)</sup> = 4, and _m_<sup>(4)</sup> = 1. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 11. NEURAL NETWORKS 

228 

## **11.2 Function Approximation** 

It is known that neural networks are universal function approximators. In fact, it is known that a two-layer neural network (11.1) is universal if _h_ ( _·_ ) is not a polynomial (Leshno et al., 1993). 

**Theorem 11.1** (Leshno et al., 1993) **.** _If h is a non-polynomial continuous function, then the function class in_ (11.1) _is dense in C_<sup>0</sup> ( _K_ ) _for all compact subsets K of_ R<sup>_d_</sup> _, where C_<sup>0</sup> ( _K_ ) _denotes the set of continuous functions on K._ 

A more refined result was obtained in Barron (1993), which considered functions with a certain smoothness property in Fourier representation. 

**Definition 11.2.** Consider a real valued function _f_ ( _x_ ) : R<sup>_d_</sup> _→_ R. Assume that _f ∈ L_ 1(R<sup>_d_</sup> ) has the following Fourier representation: 



where _f_<sup>˜</sup> ( _ω_ ) is the Fourier transform of _f_ ( _x_ ) that may be a complex function. 



**Theorem 11.3** (Barron, 1993) **.** _If h_ ( _z_ ) _is a bounded measurable function on the real line for which_ lim _z→−∞ h_ ( _z_ ) = 0 _and_ lim _z→∞ h_ ( _z_ ) = 1 _. Consider Br_ = _{x ∈_ R<sup>_d_</sup> : _∥x∥_ 2 _≤ r}, and let f be a real-valued function defined on Br such that C_ ( _f_ ) _< ∞. Then there exists a neural network_ (11.1) _such that_ 



_where µ is an arbitrary probability measure on Br._ 

_Proof_ A key property of the complexity measure _C_ ( _f_ ), shown in Barron (1993), is that _f_ ( _x_ ) _− f_ (0) belongs to the convex closure of functions 



where the closure is taken with respect to _µ_ . This result, together with Theorem 10.7, implies Theorem 11.3. 

Note that we can take any _b_ so that _h_ ( _b_ ) = 0, and 



It follows that if _f_ ( _x_ ) _− f_ (0) can be represented by a two-layer neural network (11.1) with _m_ neurons, then _f_ ( _x_ ) can be represented by a two-layer neural network (11.1) with _m_ +1 neurons. Therefore Theorem 11.3 implies that any _f_ with finite _C_ ( _f_ ) can be approximated by a two-layer neural network. It can be shown that the function class _{f_ : _C_ ( _f_ ) _< ∞}_ is dense on any compact set of R<sup>_d_</sup> . This implies the desired universal approximation result. 

Theorem 11.3 can also be applied to the ReLU activation function _h_ ( _z_ ) = 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

11.2. FUNCTION APPROXIMATION 

229 

max(0 _, z_ ) via an intermediate function _h_<sup>_′_</sup> ( _z_ ) = _h_ ( _z_ +1) _− h_ ( _z_ ), which satisfies the conditions of Theorem 11.3. 

The universal approximation theory of Barron (1993) shows that a function can be efficiently represented by a two-layer neural network if _C_ ( _f_ ) is small. However, for certain target functions with large _C_ ( _f_ ), two layer neural networks may require exponentially many nodes to represent. In some of such cases, using deep representation can reduce the number of nodes needed to represent such functions. This phenomenon has been extensively investigated in the literature. A representative result along this line of research is stated below. It shows that a small deep neural network can efficiently represent a function that requires exponentially many nodes to represent with a shallow neural network. The construction appeared in (Telgarsky, 2016), which also includes functions defined on R<sup>_d_</sup> . Here we state a simplified result for _d_ = 1. 

**Theorem 11.4.** _Consider any integer k ≥_ 3 _. There exists f_ ( _x_ ) : [0 _,_ 1] _→_ [0 _,_ 1] _computed by a_ 2 _k_<sup>2</sup> _-layer neural network with standard ReLU activation function, with no more than_ 2 _neurons per layer so that_ 



_where g is any function of a ReLU network with no more than k layers and ≤_ 2<sup>_k−_2</sup> _nodes per layer._ 

_Proof_ We will briefly explain the high-level intuition of Telgarsky (2016), which indicates what kind of functions are difficult to approximate with shallow neural networks. Consider the case of _d_ = 1, a specific construction of a hard function _f_ ( _x_ ) for shallow neural networks is via the function composition of the triangle function _f_ 0( _x_ ) = max(0 _,_ min(2 _x,_ 2(1 _− x_ ))) on [0 _,_ 1]. We may define _fk_ ( _x_ ) = _f_ 0( _fk−_ 1( _x_ )) with _k ≥_ 1, as illustrated in Figure 11.3. Since _f_ 0( _x_ ) can be represented by a two-layer neural ReLU network with no more than two nodes per layer as _f_ 0( _x_ ) = 2 max(0 _, x_ ) _−_ 4 max(0 _, x −_ 0 _._ 5) in [0 _,_ 1], _fk_ ( _x_ ) can be represented by a 2 _k_ -layer neural network with no more than two nodes per layer. 



<!-- Start of picture text -->
1 1 1<br>0 . 8 0 . 8 0 . 8<br>0 . 6 0 . 6 0 . 6<br>0 . 4 0 . 4 0 . 4<br>0 . 2 0 . 2 0 . 2<br>0 0 0<br>0 0 . 2 0 . 4 0 . 6 0 . 8 1 0 0 . 2 0 . 4 0 . 6 0 . 8 1 0 0 . 2 0 . 4 0 . 6 0 . 8 1<br>f 0( x ) f 1( x ) f 2( x )<br><!-- End of picture text -->

**Figure 11.3** Plot of _fk_ ( _x_ ) with _k_ = 0 _,_ 1 _,_ 2 

It can be seen that _fk_ ( _x_ ) contains 2<sup>_k_</sup> points that reach values of 1, and 2<sup>_k_</sup> + 1 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 11. NEURAL NETWORKS 

230 

points that reach values of 0. It follows that the number of solution segments of _fk_ ( _x_ ) = 0 _._ 5, referred to as its crossing number, is 2<sup>_k_+1</sup> . 

It is easy to show that _f_ ( _x_ ) _− fk_ ( _x_ ) cannot be approximated well by a function _g_ ( _x_ ) with crossing number _<_ 2<sup>_k_</sup> in that the approximation error is lower bounded by (11.2). 

Therefore in order to show that _fk_ ( _x_ ) cannot be approximated efficiently by shallow neural networks, we only need to show that the function of a shallow neural network cannot have many crossings unless it contains exponentially many nodes. Specifically, it can be shown (see Exercise 11.2) that an _ℓ_ -layer ReLu network with no more than _m_ ReLU nodes per layer has a crossing number of no larger than 2(2 _m_ )<sup>_ℓ_</sup> . It follows that if a neural network can approximate _fk_ 2( _x_ ) well, then (2 _m_ ) _≥_ 2<sup>(</sup><sup>_k_2</sup><sup>_−_1)</sup><sup>_/ℓ_</sup> . Therefore the node number _m >_ 2<sup>_k−_2</sup> if _ℓ ≤ k_ . 

At a high level, we note that function composition allows a deep neural network to reuse learned patterns (e.g., functions with high crossing numbers) to form more complex patterns. This corresponds to the intuition that shallow neural networks only learn basic lower-level features. To form high-level features, one needs to employ deeper neural networks that can combine basic features to form more complex features. Theorem 11.4 presents a mathematical model in which deep combinations of high level features cannot be easily represented using shallow networks. 

## **11.3 Random Feature Method** 

Assume that in two-layer neural networks, we do not train the parameters [ _θ, b_ ], but randomly draw these parameters from a fixed distribution, then the resulting method becomes the random feature method. For notation simplicity, in this section, we do not include a bias term _b_ . This does not affect generality because ˜ we may always change _x ∈_ R<sup>_d_</sup> into _x_ = [ _x,_ 1] _∈_ R<sup>_d_+1</sup> , and change _θ ∈_ R<sup>_d_</sup> and _b ∈_ R into _θ_<sup>˜</sup> = [ _θ, b_ ] _∈_ R<sup>_d_+1</sup> , so that we have _θ_<sup>_⊤_</sup> _x_ + _b_ = _θ_<sup>˜</sup><sup>_⊤_</sup> _x_ ˜. 

With the simplified notation, we assume that _{θj_ : _j_ = 1 _, . . . , m}_ are _m_ independent samples drawn from a distribution _µ_ on R<sup>_d_</sup> . A typical example is to take _µ_ as a Gaussian distribution. The two-layer neural network in (11.1) can be written as 



It follows from Theorem 11.1 that (11.3) is universal with appropriate _h_ . As _m →∞_ , the law of large numbers implies that the limit can be written as 



where _u_ ( _θ_ ) is a weight function. In this formulation, we may treat both _u_ ( _θ_ ) and _h_ ( _θ_<sup>_⊤_</sup> _x_ ) as infinite dimensional vectors indexed by _θ_ . In this setting, we may regard the limiting function class (11.4) as a linear system, in which we would like to learn the infinite dimensional linear weight _u_ ( _θ_ ). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

11.3. RANDOM FEATURE METHOD 

231 

In order to learn this function class, it is necessary to impose a regularization condition on _u_ ( _θ_ ). Of particular interests, we may consider the _L_ 2 regularization for random feature method, where the function class is given by 



This function class induces a kernel class, and Theorem 9.8 implies the following result. 

**Proposition 11.5.** _Consider any probability measure µ on_ R<sup>_d_</sup> _. The function class_ (11.4) _with L_ 2 _regularization_ 



_is equivalent to the RKHS function class defined in Definition 9.4 with kernel_ 



Note that the equivalence also holds for the empirical measure on _{θ_ 1 _, . . . , θm}_ , which are independently drawn from _µ_ . The kernel corresponding to (11.3) is 



As _m →∞_ , _km_ ( _x, x_<sup>_′_</sup> ) _→ k∞_ ( _x, x_<sup>_′_</sup> ) in probability. This means that (11.3) with the _L_ 2 regularizer 



converges to (11.4) with _L_ 2 regularization. A particular class of random features are random Fourier features (aka random cosine features) on R<sup>_d_</sup> , considered in (Rahimi and Recht, 2007). This class of features can be written as 



where _ω_ is sampled from a distribution _µ_ on R<sup>_d_</sup> , and _b_ is sampled from the uniform distribution _U_ (0 _,_ 2 _π_ ) on [0 _,_ 2 _π_ ]. The following result (see Rudin, 2017), together with the convergence of (11.3) to (11.4), were used to justify the choice of Fourier random features in (Rahimi and Recht, 2007), with _µ_ chosen as a probability measure. 

**Proposition 11.6** (Bochner’s theorem) **.** _Any translation invariant kernel of the form k_ ( _x, x_<sup>_′_</sup> ) = _k_ ( _x − x_<sup>_′_</sup> ) _can be written as_ 



_where µ is a non-negative measure on_ R<sup>_d_</sup> _that may not be a probability measure (i.e. may not integrate to_ 1 _)._ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 11. NEURAL NETWORKS 

232 

For the _L_ 2-regularized random feature method, we immediately obtain the following Rademacher complexity result from Theorem 9.20. 

**Corollary 11.7.** _Let_ 



_then_ 



Similarly, we have the following result for (11.3). 

**Corollary 11.8.** _Let_ 

_then_ 



We may compare the result of kernel method to that of _L_ 1 regularization, which requires an estimate of the Rademacher complexity of _h_ ( _θ_<sup>_⊤_</sup> _x_ ). 

**Proposition 11.9.** _Let F_ = _{h_ ( _θ_<sup>_⊤_</sup> _x_ ) : _θ ∈_ R<sup>_d_</sup> _} and F±_ = _F ∪−F. Let FA_<sup>1=</sup><sup>_{_E</sup><sup>_θ∼µu_(</sup><sup>_θ_)</sup><sup>_h_(</sup><sup>_θ⊤x_) : E</sup><sup>_θ∼µ|u_(</sup><sup>_θ_)</sup><sup>_| ≤A}._</sup> 

_Then for all monotone function h_ ( _·_ ) _with h_ ( _·_ ) _∈_ [ _−M, M_ ] _:_ 



_Proof_ Since _h_ ( _·_ ) is monotone, we know that _F_ is a VC-subgraph class with VC dimension _d_ + 1. Therefore from Theorem 5.11 and the calculation in Example 6.26, we obtain 



This leads to the bound. The second bound follows from Theorem 10.8. 

We note that E _θ∼µ|u_ ( _θ_ ) _| ≤_ �E _θ∼µ|u_ ( _θ_ ) _|_<sup>2</sup> . Therefore the _L_ 1 and _L_ 2 regularized continuous random feature methods satisfy _FA_<sup>2</sup><sup>_⊂F_</sup> _A_<sup>1. Moreover, given any</sup><sup>_A >_0,</sup> there exists _f ∈FA_<sup>1so thatE</sup><sup>_θ∼µ|u_(</sup><sup>_θ_)</sup><sup>_| ≤A_but E</sup><sup>_θ∼µu_(</sup><sup>_θ_)2is arbitrarily large. For</sup> the finite random feature method (11.3), we have the following result. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

11.4. NEURAL TANGENT KERNEL 

233 

**Corollary 11.10.** _Let_ 



_Assume that h_ ( _·_ ) _∈_ [ _−M, M_ ] _and h_ ( _·_ ) _is monotone. Then_ 



For the random kernel method with _L_ 2 regularization, we require _∥u∥_ 2 _≤_<sup>_√_</sup> _<u>mA</u>_ , which implies that _∥u∥_ 1 _≤ mA_ . However, the reverse is not true, as shown in the following example. 

**Example 11.11.** Consider a target function which is represented by a single neuron 



with _|u_ 1 _| ≤_ 1 and _h_ ( _·_ ) _∈_ [ _−_ 1 _,_ 1]. Then _f∗ ∈F_ 1<sup>1</sup> _,m_<sup>forall</sup><sup>_m≥_1.Corollary11.10</sup> implies that the Rademacher complexity using _L_ 1 regularization is _Rn_ ( _F_ 1<sup>1</sup> _,m_<sup>)=</sup> _O_ (� _d/n_ ), which is well-behaved when _m →∞_ . However, if we employ _L_ 2 regularization, then _f∗ ∈F_<sup>_~~√~~_2</sup> _<u>m,m</u>_<sup>.Thecorresponding</sup> Rademacher complexity bound becomes _Rn_ ( _F_<sup>_~~√~~_2</sup> _<u>m,m</u>_<sup>)</sup><sup>_≤_</sup> � _m/n_ , which becomes infinity when _m →∞_ . 

More generally, when _m_ is large, for sparse target that can be represented by _fm_ ( _u, x_ ) with a sparse _u_ of small _L_ 1 norm _∥u∥_ 1, the random kernel method with _L_ 2 regularization may be inferior to _L_ 1 regularization when complexity is measured by Rademacher complexity. 

## **11.4 Neural Tangent Kernel** 

In the random feature approach, the bottom layer model parameter _θ_ is fixed, and only the top layer model parameter _u_ is trained. However, in practical applications of neural networks, both model parameter _θ_ and parameter _u_ are trained jointly. It is possible to generalize the kernel view to handle this case, which leads to the concept of neural tangent kernel (NTK) by Jacot et al. (2018). 

To derive NTK, we start with a random initialization of the neural network (11.1) (again, for simplicity, we assume _bj_ = 0) at [ _u, θ_ ] = [˜ _u, θ_<sup>˜</sup> ], which we refer to as the NTK initialization. Here we independently draw _m d_ +1 dimensional model parameters [˜ _uj, θ_<sup>˜</sup> _j_ ] _∈_ R<sup>_d_+1</sup> from a probability distribution _µ_ on R<sup>_d_+1</sup> . The probability distribution is often chosen as an iid normal distribution. The resulting initial neural network is 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 11. NEURAL NETWORKS 

234 

which is similar to the random feature method (11.3), but _u_ ˜ _j_ is also drawn randomly. Note that in practice, we often choose _µ_ to be a normal distribution with a diagonal covariance matrix. We do not make this assumption unless specified explicitly. However, to simplify the computation, throughout the section, we assume that _µ_ is chosen so that 







This implies that the variance is finite when the right hand side is finite. Moreover, the variance is independent of _m_ as _m →∞_ . This explains why we divide by<sup>_√_</sup> _<u>m</u>_ instead of dividing by _m_ as in (11.3). Because of this normalization difference, we cannot obtain an explicit integration formulation similar to (11.4) for _f_<sup>˜</sup> _m_<sup>NTK</sup> ( _x_ ) as _m →∞_ . Nevertheless, we have the following limiting behavior of _f_<sup>˜</sup> _m_ using the central limit theorem. This means that the _m →∞_ limit of the NTK initialization converges to a well-behaved random function as _m →∞_ . 

**Proposition 11.12.** _Assume that the central limit theorem holds for_ (11.5) _(uniformly for all x) as m →∞. Then as m →∞, f_<sup>˜</sup> _m_<sup>NTK</sup> ( _x_ ) _converges to a Gaussian process f_<sup>˜</sup> _∞_<sup>NTK</sup> ( _x_ ) _with zero-mean and covariance matrix_ 



In general, neural networks are trained via SGD (see Algorithm 7.1), which employs gradient of the neural network. We have the following characterization of gradients at the NTK initialization. 

**Proposition 11.13.** _Consider f_<sup>˜</sup> _m_<sup>NTK</sup> ( _x_ ) _defined in_ (11.5) _. Let h_<sup>_′_</sup> ( _z_ ) _be the derivative of h_ ( _·_ ) _. We have for all x and j:_ 



_where the expectation is with respect to the random initialization. Moreover, for any x, as m →∞:_ 



_where the probability is with respect to the random initialization._ 

Proposition 11.13 shows that as _m →∞_ , the gradient _g_ of the NTK formulation has small _L∞_ -norm: _∥g∥∞ →_ 0, although the _L_ 2-norm is finite: _∥g∥_ 2 = _O_ (1). We note that the progress of the SGD procedure is measured by the gradient 2- norm (for example, see Theorem 14.9). Therefore in the NTK formulation, the 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

11.4. NEURAL TANGENT KERNEL 

235 

convergence of SGD is independent of _m_ as _m →∞_ , and the training process occurs in an infinitely small neighborhood of the initialization in terms of the _L∞_ -norm as _m →∞_ . Assume for simplicity that _h_ ( _z_ ) is a smooth function with derivative _h_<sup>_′_</sup> ( _z_ ), then we can perform a Taylor expansion in a small neighbor around [˜ _u, θ_<sup>˜</sup> ] to obtain a linear approximation around the initialization. 

˜ In the following discussion, we let _w_ = [ _u, θ_ ] and _w_ = [˜ _u, θ_<sup>˜</sup> ]. Let _B∞_ ( ˜ _w, r_ ) = _{w_ : _∥w − w_ ˜ _∥∞ ≤ r}_ . Let 



and we can define its NTK approximation as 



When _w ∈ B∞_ ( ˜ _w, r_ ) for a sufficiently small _r_ , we have _fm_<sup>NTK</sup> ( _w, x_ ) _≈ f_ nn( _w, x_ ) and _∇wfm_<sup>NTK</sup> ( _w, x_ ) _≈∇wf_ nn( _w, x_ ). More formally, we may impose the following assumption for _µ_ and _h_ . 

**Assumption 11.14.** For any _x_ , _δ ∈_ (0 _,_ 1) and _ϵ >_ 0, there exist _A_ 0 _>_ 0, _r_ 0 _>_ 0 and _m_ 0 _>_ 0 such that when _m > m_ 0, with probability at least 1 _− δ_ over random initialization, the following events hold uniformly for _w ∈ B∞_ ( ˜ _w, r_ 0): 

_• |f_<sup>˜</sup> _m_<sup>NTK</sup> ( _x_ ) _| ≤ A_ 0 _• ∥∇wfm_<sup>NTK</sup> ( _w, x_ ) _∥_ 2 + _∥∇wf_ nn( _w, x_ ) _∥_ 2 _≤ A_ 0 

_• |fm_<sup>NTK</sup> ( _w, x_ ) _− f_ nn( _w, x_ ) _| ≤ ϵ_ 

_• ∥∇wfm_<sup>NTK</sup> ( _w, x_ ) _−∇wf_ nn( _w, x_ ) _∥_ 2 _≤ ϵ • ∥∇wfm_<sup>NTK</sup> ( _w, x_ ) _∥∞_ + _∥∇wf_ nn( _w, x_ ) _∥∞ ≤ m_<sup>_−_1</sup><sup>_/_4</sup> 

The following result is not difficult to verify. We leave it as an exercise. 

**Proposition 11.15.** _Assumption 11.14 holds for both ReLU and for sigmoid_ ˜ _activation functions with Gaussian initialization w ∼ N_ (0 _, σ_<sup>2</sup> _I_ ) _._ 

Next we will examine the property of _fm_<sup>NTK</sup> ( _w, x_ ) when _m →∞_ . Observe that the NTK approximation of neural network is linear in the model parameter _w_ = [ _u, θ_ ], with random features _m_<sup>_−_1</sup><sup>_/_2</sup> _h_ ( _θ_<sup>˜</sup> _j_<sup>_⊤x_) and</sup><sup>_m−_1</sup><sup>_/_2</sup><sup>_u_˜</sup><sup>_jh′_(˜</sup><sup>_θ_</sup> _j_<sup>_⊤x_)</sup><sup>_x_. This means</sup> that if we implicitly impose the _L_ 2 regularization on the model parameter _w_ , then we can obtain a kernel function class, which is well-behaved as _m →∞_ . 

**Proposition 11.16.** _Consider the feature space NTK formulation_ (11.6) _. Then fm_<sup>NTK</sup> ( _w, x_ ) _−f_<sup>˜</sup> _m_<sup>NTK</sup> ( _x_ ) _belongs to the RKHS function class defined in Definition 9.4 with kernel_ 

_km_<sup>NTK</sup> ( _x, x_<sup>_′_</sup> ) = _km,_<sup>NTK</sup> 1<sup>(</sup><sup>_x, x′_) +</sup><sup>_k_</sup> _m,_<sup>NTK</sup> 2<sup>(</sup><sup>_x, x′_)</sup><sup>_,_</sup> 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 11. NEURAL NETWORKS 

236 

_where_ 



_Moreover, for any x, x_<sup>_′_</sup> _, as m →∞, we have_ 



_where the probability is with respect to the random initialization._ 

In the NTK representation, the kernel _k∞_<sup>NTK</sup> _,_ 1<sup>isthesamekernelastherandom</sup> feature kernel in Proposition 11.5. The extra kernel _k∞_<sup>NTK</sup> _,_ 2<sup>in NTK corresponds to</sup> the fact that we allow _θ_ to move away from the initialization _θ_<sup>˜</sup> , while _θ_ is fixed in the random feature kernel. It is not difficult to generalize NTK to deep neural networks by including kernels with respect to other layers. 

Since for appropriate _h_ , random feature kernel is universal, it follows that the NTK kernel _k∞_<sup>NTK</sup> ( _x, x_<sup>_′_</sup> ) = _k∞_<sup>NTK</sup> _,_ 1<sup>(</sup><sup>_x, x′_) +</sup><sup>_k_</sup> _∞_<sup>NTK</sup> _,_ 2<sup>(</sup><sup>_x, x′_)isalsouniversalforsuch</sup><sup>_h_.</sup> This implies that as _m →∞_ , we can find a two-layer neural network within an infinitesimally small perturbation of the NTK initialization to approximate an arbitrary function _f_ ( _x_ ). 

**Theorem 11.17.** _Assume that the limiting NTK kernel k∞_<sup>NTK</sup> ( _x, x_<sup>_′_</sup> ) _in Proposition 11.16 is universal. Consider an arbitrary function f_ ( _x_ ) _, and n distinct points {X_ 1 _, . . . , Xn}. Consider a two-layer neural network with initialization_ (11.5) _. Given any ϵ >_ 0 _and δ ∈_ (0 _,_ 1) _, there exist A >_ 0 _and m_ 0 _such that when m > m_ 0 _, with probability at least_ 1 _− δ, there exists w ∈ B∞_ ( ˜ _w, rm_ ) _that satisfy:_ 



_• |fm_<sup>NTK</sup> ( _w, Xi_ ) _− f_ ( _Xi_ ) _| ≤ ϵ for all i_ = 1 _, . . . , n._ 

_Proof_ Since _k∞_<sup>NTK</sup> ( _x, x_<sup>_′_</sup> ) is universal, its Gram matrix _K∞_<sup>NTK</sup> on _{X_ 1 _, . . . , Xn}_ is invertible (see Theorem 9.19). There exists _α ∈_ R<sup>_n_</sup> so that _K∞_<sup>NTK</sup> _α_ = ∆ _f_ , where ∆ _f ∈_ R<sup>_n_</sup> is the vector with ∆ _fi_ = _f_ ( _Xi_ ) _− f_<sup>˜</sup> _m_<sup>NTK</sup> ( _Xi_ ) as its components. By Assumption 11.14, with probability at least 1 _− δ/_ 3, for sufficiently large _m_ , ∆ _fi_ = _f_ ( _Xi_ ) _− f_<sup>˜</sup> _m_<sup>NTK</sup> ( _Xi_ ) is bounded ( _i_ = 1 _, . . . , n_ ), and hence, _α_ is bounded. It follows that there exists a constant _A >_ 1 such that _A ≥_ 1 + _∥α∥_ 1 + _∥α∥K∞_ NTK. Let _Hm_ be the RKHS of _km_<sup>NTK</sup> , and define 



in _Hm_ , then _∥fm_ ( _x_ ) _∥Hm ≤ A_ . Proposition 9.1 implies that there exists _w_ such that 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

11.4. NEURAL TANGENT KERNEL 

237 

_fm_<sup>NTK</sup> ( _w, x_ ) = _fm_ ( _x_ ) and _∥w − w_ ˜ _∥_ 2 _≤ A_ . Moreover, using (9.4), we can represent ˜ _w − w_ by 



Assumption 11.14 also implies that with probability at least 1 _− δ/_ 3, 



This implies that 



Proposition 11.16 implies that as _m →∞_ , _km_<sup>NTK</sup> ( _·_ ) _→ k∞_<sup>NTK</sup> ( _·_ ), and thus _fm_<sup>NTK</sup> ( _w, Xi_ ) _− f_<sup>˜</sup> _m_<sup>NTK</sup> ( _Xi_ ) _→p_ ∆ _fi_ for all _i_ = 1 _, . . . , n_ . Therefore with probability at least 1 _− δ/_ 3, for sufficiently large _m_ , _|fm_<sup>NTK</sup> ( _w, Xi_ ) _− f_ ( _Xi_ ) _| < ϵ_ for _i_ = 1 _, . . . , n_ . We obtain the desired result by taking the union bound of the three events with probability 1 _− δ/_ 3 each. 

Theorem 11.17 implies that when _m →∞_ , one can approximate an arbitrary function _f_ ( _x_ ) using _fm_<sup>NTK</sup> ( _w, x_ ) with _∥w − w_ ˜ _∥∞ →_ 0. In this regime, referred to as the _NTK-regime_ , Assumption 11.14 implies that the two-layer neural network can be approximated using the NTK approximation: 



That is, two-layer neural network is equivalent to a kernel method as _m →∞_ . Moreover, Assumption 11.14 , together with an SGD convergence result such as Theorem 14.9, implies that as _m →∞_ , SGD can find the minimizer of any loss function within the NTK-regime. 

**Corollary 11.18.** _Assume that the NTK kernel k∞_<sup>NTK</sup> ( _x, x_<sup>_′_</sup> ) _in Proposition 11.16 is universal. Let f_ ( _x_ ) _be an arbitrary function, and {_ ( _X_ 1 _, Y_ 1) _, . . . ,_ ( _Xn, Yn_ ) _} be n distinct points. Consider a convex loss function L_ ( _f_ ( _x_ ) _, y_ ) _which is Lipschitz in f_ ( _x_ ) _. There exists A >_ 0 _so that the following holds. For any T >_ 0 _, assume we run SGD_ _<u>from</u> the NTK initialization_ (11.5) _for T steps with constant learning rate_ 1 _/√T , and return f_ nn( _w, x_ ) _with w chosen uniformly at randomly from the_ ˜ _p SGD iterates. Then as m →∞, ∥w − w∥∞ →_ 0 _and_ 



_where_ E _w indicates the randomness from the SGD iterates, and the convergence in probability is with respect to the randomness in the initialization._ 

Corollary 11.18 implies that as _m →∞_ , the neural network training process using SGD is always inside the NTK-regime. The property can be generalized to deep neural networks with more than two-layers. 

In the NTK regime, the generalization of neural network can be easily obtained 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 11. NEURAL NETWORKS 

238 

using Rademacher complexity. Specifically, the following result can be obtained from Theorem 9.20. 

**Corollary 11.19.** _Let_ 



_then_ 



## **11.5 Mean-Field Formulation** 

As pointed out in Section 11.4, the NTK approximation of neural networks (11.1) does not have a continuous integral formulation similar to that of the continuous random feature method (11.4), due to the 1 _/_<sup>_√_</sup> _<u>m</u>_ normalization in the NTK formula. The reason for this normalization is to ensure that (11.5) has a nonzero finite variance. In this section, we consider a different normalization of (11.1) (still ignoring _bj_ ) as 



with a scaling constant _α >_ 0. We assume that _θj ∈_ R<sup>_d_</sup> and _uj ∈_ R. 

If we allow _α_ to vary in _m_ , and take _α_ =<sup>_√_</sup> _<u>m</u>_ , then it leads to the NTK formulation (11.5) and (11.6). On the other hand, if we let _m →∞_ with _α_ fixed, then we may treat [ _uj, θj_ ] as iid random samples from an underlying distribution _q_ on R<sup>_d_+1</sup> . Similar to the continuous formulation of the random feature method, this leads to a continuous formulation of two-layer neural network as _m →∞_ : 



This continuous formulation is referred to as the _mean field_ formulation in Mei et al. (2018). In this formulation, the distribution _q_ on R<sup>_d_+1</sup> characterizes the model, and can be trained using noisy gradient descent (see Mei et al., 2018). The finite two-layer neural network can be regarded as sampling from this distribution. In essence, this approach is a generalization of the random feature method but with the underlying random distribution trained to better fit the data, instead of using a fixed random distribution. The training of the underlying random distribution corresponds to feature learning in neural networks. 

In the mean-field formulation, as _α →∞_ , the behavior of the resulting model becomes more and more similar to that of the NTK formulation. Therefore one may argue that the mean field formulation is more general, while the NTK formulation is a limiting situation with _α →∞_ . One disadvantage of the mean field formulation is that with standard random initialization of [˜ _u, θ_<sup>˜</sup> ], the initial function is always 0 in the continuous limit of _m →∞_ . This is not desirable 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

11.5. MEAN-FIELD FORMULATION 

239 

when we train a neural network in practice. On the other hand, the advantage of the mean field formulation is that it allows [ _u, θ_ ] to move outside of a small neighbor of [˜ _u, θ_<sup>˜</sup> ], which is consistent with feature learning in practical neural network applications. 

## **_Convergence Analysis_** 

It can be shown that in the continuous limit, neural network training converges to the optimal solution of the mean field formulation (11.8), under suitable conditions (see Chizat and Bach, 2018; Mei et al., 2018). We will consider the entropy regularization model studied in (Mei et al., 2018) for the mean-field formulation. It was shown in (Mei et al., 2018) that for the mean-field formulation of two-layer neural networks, the Langevin algorithm converges to an entropy regularized ERM problem. In the following, we will prove this result for the continuous mean-filed formulation, in which we seek a density function _q_ on R<sup>_d_+1</sup> to to solve the following optimization problem 



where _f_ mf( _q, x_ ) is given by (11.8), and _r_ ([ _u, θ_ ]) is an appropriately chosen regularization term such as _L_ 2 regularization. 

In the convergence analysis, we employ a simplified notation with _w_ = [ _u, θ_ ] _∈_ R<sup>_d_+1</sup> , and take 



We thus obtain the following equivalent optimization problem: 



where 



The convergence theory of continuous two-layer neural networks to optimize (11.9) requires some knowledge on partial differential equations (PDEs). Since the required mathematical background is isolated from other parts of the book, we shall keep the discussion concise without concerning about issues such as the existence of PDE solutions. Readers who are not familiar with partial differential equations can skip the derivation. 

In the convergence analysis, we will consider the continuous time noisy gradient descent, which can be described by a partial differential equation. In this setting, the underlying mathematical model is to sample _m →∞_ neurons, each represented by an initial weight _w_ 0 _∼ q_ 0 at _t_ = 0. When time _t_ increases, we move each sampled neuron, represented by a weight _wt_ from the the neuron distribution _qt_ ( _w_ ) at time _t_ , using noisy gradient descent (Langevin algorithm). We 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 11. NEURAL NETWORKS 

240 

assume that the the moving neuron distribution of _wt_ at time _t_ has density _qt_ ( _w_ ). Mathematically, the gradient descent method can be implemented as a stochastic partial differential equation (SDE): 



where _Bt_ is the standard Brownian motion and _L_<sup>_′_</sup> 1<sup>(</sup><sup>_f, y_) is the derivative of</sup><sup>_L_(</sup><sup>_f, y_)</sup> with respect to _f_ . The discretized version can be implemented using the SGLD algorithm (see Algorithm 7.2). It is well-known that the dynamics of _qt_ satisfies the following Fokker-Plank equation (see Pavliotis, 2014, for example): 



where 



We have the following general convergence result for (11.10). 

**Theorem 11.20.** _Assume that L_ ( _f, y_ ) _is convex in f . Moreover, for any density function q_<sup>_′_</sup> _on_ R<sup>_d_+1</sup> _, the density_ 



_satisfies the logarithmic Soblev inequality (LSI) with parameter µ >_ 0 _: for all density functions p on_ R<sup>_d_+1</sup> _,_ 



_Then we have_ 



_Proof_ We define a density function 



then it is easy to verify that 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

11.5. MEAN-FIELD FORMULATION 

241 

We have 



The first equation used calculus of variation. The second equation used (11.10), and the fact _g_ ( _w, qt_ ) may be considered as a functional gradient of _Q_ with respect to _qt_ by treating _qt_ as an infinite dimensional vector indexed by _w_ . The third equation used integration by parts. The fourth equation used (11.12). The last inequality used (11.11), which is satisfied by _qt_<sup>_′_.Moreover,</sup> 



The first inequality used the fact that _Q_ ( _q_ ) _− λ_ KL( _q||p_ 0) is convex in _q_ , and _g_ 0( _w, qt_ ) is the functional gradient of _Q_ ( _qt_ ) _− λ_ KL( _q||p_ 0) with respect to _q_ as an infinite dimensional vector indexed by _w_ ; it also used the fact that KL( _q∗||p_ 0) _−_ KL( _qt||p_ 0) = � ln( _qt_ ( _w_ ) _/p_ 0( _w_ ))( _q∗_ ( _w_ ) _− qt_ ( _w_ )) _dw_ + KL( _q∗||qt_ ). The second inequality used Proposition 7.16 (with _p_ = _q∗_ and _p_ 0 = _qt_ ). 

Now by combining (11.13) and (11.14), we obtain 



By solving the differential equation, we obtain the result. 

Theorem 11.20 shows that the logarithmic Soblev inequality (11.11) implies that the two-layer neural network in the mean field regime converges linearly. To obtain concrete examples for which (11.11) holds, we can employ the following well-known result. 

**Lemma 11.21.** _Let V_ ( _w_ ) _be a smooth and λ-strongly convex function on_ R<sup>_d_+1</sup> _, and U_ ( _w_ ) _be a smooth function so that |U_ ( _w_ ) _− V_ ( _w_ ) _| ≤ M < ∞. Then the density_ 



_satisfies_ (11.11) _with parameter µ_ = _λ_ exp( _−_ 2 _M_ ) _._ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 11. NEURAL NETWORKS 

242 

_Proof_ LSI holds for a strongly concave density function is a directly consequence of the Bakry-Emery criterion (Bakry and Emery, 1985). It is also known that LSI<sup>´</sup> is stable under a bounded perturbation (see Holley and Stroock, 1987), which implies the result. 

**Example 11.22.** Lemma 11.21 implies the following result. Assume that _g_ 0( _w, q_ ) is smooth in _w_ : _∥∇_<sup>2</sup> _w_<sup>_g_0(</sup><sup>_w, q_)</sup><sup>_∥_2</sup><sup>_≤L_forall</sup><sup>_w_and</sup><sup>_q_.Ifwetake</sup><sup>_r_(</sup><sup>_w_)=</sup><sup>_λ′∥w∥α_</sup> 2<sup>,</sup> then for any _λ_<sup>_′_</sup> _>_ 0 and _α >_ 2, (11.11) is valid for some _µ >_ 0 (see Exercise 11.7). This implies that the convergence result in Theorem 11.20 holds. 

## **_Generalization Analysis_** 

Because the parameter _q_ of the mean-filed model is a distribution, the two-layer NN in this continuous formulation can be regarded as a convex hull of the individual models _uh_ ( _θ_<sup>_⊤_</sup> _x_ ). We can thus apply the _L_ 1-regularization result and the entropy-regularization result from Chapter 10 to compute the corresponding Rademacher complexity. The following result is identical to Proposition 11.9, except that we allow _q_ to be learned for both parameters [ _u, θ_ ]. 

**Proposition 11.23.** _Let_ 



_then_ 



Moreover, Theorem 11.20 shows that noisy gradient descent for the mean field formulation leads to entropy regularization. We can analyze its generalization performance by using the Rademacher complexity analysis in Theorem 10.17, or by using Theorem 10.18 without assuming the boundedness of _uh_ ( _·_ ). 

In addition to Theorem 11.20, it is also possible to prove convergence without entropy regularization under suitable conditions (see Chizat and Bach, 2018). One can study properties of the global solution of (11.8), as the limiting solution of the ERM method for two-layer neural networks. An interesting observation of the mean-field formulation (11.8) without entropy regularization is that any convex regularization in _u_ leads to _L_ 1 regularization, which implies that Proposition 11.23 can be directly applied for the solution of the mean-filed formulation. 

**Proposition 11.24.** _Consider an arbitrary distribution D_<sup>ˆ</sup> _on X × Y. Assume that_ sup _{|h_ ( _θ_<sup>_⊤_</sup> _x_ ) _|_ : _θ ∈_ Ω _} is bounded. Let_ ∆(R _×_ Ω) _be the set of probability measures on_ ( _u, θ_ ) _∈_ R _×_ Ω _. Consider the following optimization problem:_ 



ˆ _where r_ ( _·_ ) _is an increasing and strictly convex function on_ R+ _. Let q be an optimal_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

11.5. MEAN-FIELD FORMULATION 

243 

ˆ ˆ _solution. Then there exists A >_ 0 _such that |u|_ = _A a.e. u ∼ q_ ( _·_ ) _, and q is a solution to_ 



_Proof_ For notation simplicity, we consider discrete _q_ ˆ (the continuous case is analogous except for more complex notations). Consider discrete values of [ _u_ 1 _, θ_ 1] with probability _q_ ˆ1 _>_ 0 and [ _u_ 2 _, θ_ 2] with probability _q_ ˆ2 _>_ 0. Without loss of generality, we may assume that _|u_ 1 _| ≥|u_ 2 _| ≥_ 0. 

We prove the first statement by contradiction. If _|u_ 1 _| > |u_ 2 _|_ , then we can find _δ >_ 0, and let _q_ ˆ1<sup>_′_=</sup><sup>_q_ˆ1+</sup><sup>_δ_,</sup><sup>_q_ˆ</sup> 2<sup>_′_=</sup><sup>_q_ˆ2</sup><sup>_−δ_,sothat</sup><sup>_|u′_</sup> 1<sup>_|_=</sup><sup>_|u′_</sup> 2<sup>_|_with</sup><sup>_u′_</sup> 1<sup>=</sup><sup>_u_1</sup><sup>_q_ˆ1</sup><sup>_/q_ˆ</sup> 1<sup>_′_</sup> and _u_<sup>_′_</sup> 2<sup>=</sup><sup>_u_2</sup><sup>_q_ˆ2</sup><sup>_/q_ˆ</sup> 2<sup>_′_.Let</sup><sup>_q_ˆ</sup><sup>_′_bethedistributionon[</sup><sup>_u, θ_]whichequals</sup><sup>_q_ˆonallother</sup> points, except for a change of probability mass _q_ ˆ _j_ on [ _uj, θj_ ] to a probability mass _q_ ˆ _j_<sup>_′_on[</sup><sup>_u′_</sup> _j_<sup>_, θj_](</sup><sup>_j_=1</sup><sup>_,_2).TheconstructionimpliesthatE[</sup><sup>_u′,θ_]</sup><sup>_∼q_ˆ</sup><sup>_′u′h_(</sup><sup>_θ⊤x_)=</sup> E[ _u,θ_ ] _∼q_ ˆ _uh_ ( _θ_<sup>_⊤_</sup> _x_ ) and 



where we used _|u_<sup>_′_</sup> 1<sup>_|_=</sup><sup>_|u′_</sup> 2<sup>_|_=(ˆ</sup><sup>_q_1</sup><sup>_|u_1</sup><sup>_|_+</sup><sup>_q_ˆ2</sup><sup>_|u_2</sup><sup>_|_)</sup><sup>_/_(ˆ</sup><sup>_q_1+</sup><sup>_q_ˆ2).Thisisacontradiction</sup> ˆ to the optimality of _q_ . Therefore we must have _|u_ 1 _|_ = _|u_ 2 _|_ . This implies that ˆ _|u|_ = const when _u ∼ q_ ( _·_ ). 

We prove the second statement by contradiction. If _q_ ˆ is not a solution of the _L_ 1 regularization formulation, then we can find _q_ ˆ<sup>_′_</sup> with a smaller objective value ˆ so that E _u′∼q_ ˆ _′|u_<sup>_′_</sup> _| ≤ A_ . From the previous analysis, we can also find a solution _q_<sup>_′_</sup> such that _|u_<sup>_′_</sup> _|_ = _A_<sup>_′_</sup> for some _A_<sup>_′_</sup> _≤ A_ with a smaller objective value. However, this is not possible because _q_ ˆ<sup>_′_</sup> would lead to a smaller regularized loss than that of _q_ ˆ with respect to the _r_ ( _·_ ) regularization formulation. 

Proposition 11.24 can be interpreted as follows. Even if we use _L_ 2 regularization on _u_ in a two-layer neural network, which seemingly is related to the kernel method, it effectively solves an _L_ 1 regularizaton problem for the meanfield formulation, when we allow both _u_ and _θ_ to be optimized simultaneously. The optimization of _θ_ modifies the _L_ 2 regularization on _u_ into the _L_ 1 regularization with respect to the function class _{h_ ( _θ_<sup>_⊤_</sup> _x_ ) _}_ . This means Proposition 11.23 can be used to characterize the complexity of the mean-filed formulation. 

In the discrete mean-filed formulation (11.7), _{_ [ _uj, θj_ ] _}_ may be regarded as _m_ independent samples from _q_ . In such a formulation, [ _uj, θj_ ] are trained simultaneously. The following result shows that with _L_ 1 regularization, the Rademacher complexity is insensitive to _m_ . 

**Corollary 11.25.** _Let_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 11. NEURAL NETWORKS 

244 

_Assume that h_ ( _·_ ) _∈_ [ _−M, M_ ] _and h_ ( _·_ ) _is monotone. Then_ 



Note that unlike Corollary 11.10, where _{θj}_ are random, Corollary 11.25 allows _{θj}_ to be trained together with _{uj}_ . This means that it is more effective in learning the correct feature representation using a small _m_ . 

## **11.6 Analysis of Deep Neural Networks** 

It is possible to extend the NTK analysis to deep neural networks using an extension of the linear approximation (11.6) for two-layer neural networks without too much difficulty. We will not consider it here for simplicity. It has similar flaws as the kernel approaches for random features and for two-layer neural networks, in that the linearization requires model parameters to be restricted in a small region around the initialization. 

An additional disadvantage of the NTK approximation is that it can be regarded as a shallow network approximation of a deep network using a linear model. According to Theorem 11.4, highly oscillating functions with large crossing numbers cannot be approximated efficiently with NTK, although they can be well approximated using deep neural networks. This is related to the fact that NTK cannot learn features efficiently. However, the efficient learning of feature representation is the key advantage of deep neural networks. Therefore in this section we will investigate the deep neural network method directly without considering the NTK approximation. 

Here we consider a formulation of deep neural networks which may be considered as an extension of the mean field formulation of two-layer neural networks, and then investigate its generalization. The deep function class is defined recursively as follows: 



and for _k_ = 2 _, . . . , K_ , using the notation of Section 10.2, we define 



When _A_ 1 _, . . . , Ak_ are sufficiently large, then it is clear that any function _f_ ( _x_ ) that can be represented by a deep _K_ layer neural network that belongs to _F_<sup>(</sup><sup>_K_)</sup> . The representation allows an arbitrary large _m_ , and thus can handle continuous deep neural networks. This implies that it can be regarded as an extension of the two-layer mean field formulation, which as we have shown, also employs _L_ 1 regularization implicitly. 

For simplicity, we consider the case that _h ◦F_<sup>(1)</sup> is bounded, _h_ is monotone 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

11.7. DOUBLE DESCENT AND BENIGN OVERFITTING 

245 

and Lipschitz. The following result, first presented in Koltchinskii and Panchenko (2002), is a direct consequence of Theorem 10.8. 

**Theorem 11.26.** _Consider K-layer neural networks defined by_ (11.15) _. Assume that h_ ( _θ_<sup>_⊤_</sup> _x_ ) _∈_ [ _−M, M_ ] _for all θ ∈_ Θ _and x ∈X . Assume also that h is_ 1 _-Lipschitz and monotone. Then there exists a constant C, such that for all distribution D on X , we have_ 





_Proof_ We prove the statement by induction. The case _k_ = 2 follows from Corollary 11.10. Assume the statement holds at layer _k −_ 1, then at layer _k_ . We have 



The first inequality used Theorem 10.8. The second inequality used Theorem 6.28 with _γi_ = 1 and _h_ = 0. Now by using induction, we obtain the desired bound. 

The result implies that if we use _L_ 1 regularization for every layer of a deep neural network, then the Rademacher complexity can be easily bounded using the multiplications of the layer-wise _L_ 1 regularization parameters. For the ReLU function, the _L_ 1 regularization can be moved to the last layer. It is also worth noticing that the learning complexity for the function composition example considered in Theorem 11.4 still high if we measure it by _L_ 1 regularization. This is not surprising because functions with exponentially many crossing numbers are complex, and _L_ 1 regularization allows a large neural network with many neurons. 

One benefit of the generalization bound in Theorem 11.26 is that the generalization performance does not depend on the number of neurons. Therefore the more neurons we use, the better. This is consistent with empirical observations that wide neural networks are easier to optimize. If we allow the number of neurons to approach infinity, then we obtain a continuous formulation of deep neural networks with the same learning bound measured by Rademacher complexity. 

## **11.7 Double Descent and Benign Overfitting** 

Modern neural networks are usually overparameterized, in that the number of model parameters is significantly larger than the number of training data. This is consistent with both the NTK view and the mean-field view, where both consider the limit of _m →∞_ . Without proper regularization, such a system will lead to overfitting based on classical statistics. However, with proper regularization such as RKHS regularization in the NTK view, and _L_ 1 regularization in the mean-field view, such systems have bounded complexity when measured by quantities such as the Rademacher complexity. In general, such a complexity measure implies a small effective model dimension as discussed in Section 9.5. In the classical setting, 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 11. NEURAL NETWORKS 

246 

the effective dimension should be smaller than the number of training data, and one typically observes a _U_ shaped test loss as the model complexity increases. This is shown in Figure 1.1. However, some of modern overparameterized models go beyond this regime, where it is observed that such models (including neural networks) exhibit the so-called _double-descent_ phenomenon when the model size increases (see Belkin et al., 2019). 

The double descent phenomenon is illustrated in Figure 11.4. It can be seen that when the effective dimension is smaller than the number of training data, we are in the classical regime where the test loss has a _U_ shape. In the overparameterized regime, the test loss is large when the effective model dimension is approximately the same as the number of training data, but it will decrease further when the effective dimension increases beyond the number of training data. In this regime, overfitting happens and the model generally starts to interpolating the observed function value which may potentially contain noise. Such overfitting is referred to as _benign overfitting_ because even though the learned function overfits the noise, the test loss will decrease, and the minimum test loss that can be achieved is smaller than the minimum test loss that can be achieved in the classical regime. 



<!-- Start of picture text -->
training data size<br>classical regime overparameterized regime<br>(bias variance tradeoff) (benign overfitting)<br>loss<br>test loss<br>training loss<br>effective model dimension<br><!-- End of picture text -->

**Figure 11.4** Double descent curve 

A number of papers tried to explain the double-descent phenomenon, which occurs even for overparameterized linear regression models, noticeably with minimum _L_ 2-norm estimator, where we try to fit a linear model with the smallest _L_ 2-norm. This is equivalent to ridge regression with the regularization parameter approaching zero. Although double-descent may look mysterious, it does not contradict to the classical learning theory. In the classical learning theory, the more complex a model class is, the lower the training loss is required to obtain the optimal training loss, and the more overfitting one observes. In the extreme case that the model class is extremely complex, the optimal tradeoff potentially requires the overfitting of the training data. 

To explain what causes the double-descent phenomenon, we consider the fol- 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

11.7. DOUBLE DESCENT AND BENIGN OVERFITTING 

247 

lowing simple problem in the Bayesian setting with ( _X, Y_ ) _∈_ R<sup>_d_</sup> _×_ R: 



We consider least squares regression in the overparameterized setting, where we observe _n ≪ d_ training data _{_ ( _Xi, Yi_ ) : _i_ = 1 _, . . . , n}_ . In this situation, the model belongs to a very complex function class because the target is a dense overparameterized family, with data generated by a dense target vector _w∗ ∈_ Ω. It is impossible to learn _w∗_ accurately, but nevertheless, we will try to find _w_ ˆ from the training data to achieve the smallest test loss 



Note that we assume a generation process of _w∗_ so that the optimal Bayes estimator, which is the best estimator among all possible learning algorithms, can be explicitly computed. We can then compare the results of other methods to this estimator. A simple calculation shows that the optimal Bayes estimator that minimizes the quantity is given by ridge regression: 



with _λ_ = _σ_<sup>2</sup> _/τ_<sup>2</sup> . The following result compares the training loss and the test loss of ridge regression. 

**Theorem 11.27.** _Consider_ (11.16) _with fixed τ, σ, n. Let X_ = [ _X_ 1 _, . . . , Xn_ ] _be the d × n data matrix with response Y_ = [ _Y_ 1 _, . . . , Yn_ ]<sup>_⊤_</sup> _. Given any δ ∈_ (0 _,_ 1) _, let_ 



_Then with probability_ 1 _− δ over the random choice of X, the following statements hold for the ridge regression estimator_ (11.17) _. There exists c_<sup>_′_</sup> _, c_<sup>_′′_</sup> _∈_ [ _−_ min(1 _, c_ ) _, c_ ] _such that the expected training loss and expected test loss satisfy the following equations. When d ≤ n:_ 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 11. NEURAL NETWORKS 

248 

_and when d ≥ n:_ 



_The conditional expectation is with respect to both w∗ and {Yi}._ 

_Proof_ Let _Y_ = [ _Y_ 1 _, . . . , Yn_ ]<sup>_⊤_</sup> and _ϵ_ = _Y − X_<sup>_⊤_</sup> _w∗_ be the noise vector. We can express 





Since _X_ is a _d × n_ matrix with iid standard Gaussian entries, it is well known (see Rudelson and Vershynin, 2010, for example) that with probability at least 1 _− δ_ , any singular value of _X_ belongs to the interval 



If _d ≤ n_ , _d_ eigenvalues of _K_ belong to [( _n/d_ )(1 _−_ min(1 _, c_ ))<sup>2</sup> _,_ ( _n/d_ )(1 + _c_ )<sup>2</sup> ], and _n − d_ eigenvalues of _K_ are zeros. We can now obtain the desired result by plugging this estimate into (11.18) and (11.19). 

If _d ≥ n_ , then all _n_ eigenvalues of _K_ belong to [(1 _−_ min(1 _, c_ ))<sup>2</sup> _,_ (1 + _c_ )<sup>2</sup> ]. We can now obtain the desired result by plugging this estimate into (11.18) and (11.19). 

The result of Theorem 11.27 focuses on the case min( _n, d_ ) _≪_ max( _n, d_ ), which implies that _c_<sup>_′_</sup> _, c_<sup>_′′_</sup> _→_ 0. It is also possible to derive more precise asymptotic results than that of Theorem 11.27 when � _n/d → c ∈_ (0 _, ∞_ ) and _d, n →∞_ . In such case, by using the Marchenko-Pastur law from the theory of random matrix (see Bai and Silverstein, 2010, Theorem 3.7 and Lemma 3.11), we can obtain the limiting eigenvalue distribution of _K_ in the proof of Theorem 11.27, and use it to compute asymptotically precise characterizations of training and test losses. We leave the detailed calculations to Exercise 11.10. Specifically, when _λ_ = 0, the following asymptotic expression is valid as _n →∞_ and ~~�~~ _n/d → c <_ 1: 



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

11.7. DOUBLE DESCENT AND BENIGN OVERFITTING 

249 

To interpret Theorem 11.27, we may first consider the classical regime, where _d/n ≪_ 1 so that _c ≈_ 0. With _λ_ = 0, the training and test loss become 



In this regime, we only overfit the training loss slightly by ( _d/n_ ) _σ_<sup>2</sup> , with a small generalization penalty ( _d/n_ ) _σ_<sup>2</sup> for the test loss. The term ( _d/n_ ) _σ_<sup>2</sup> corresponds to the estimation variance. The result is similar to that of the optimal _λ_ = _σ_<sup>2</sup> _/τ_<sup>2</sup> . 

Next we consider the overparameterized regime, where _n/d ≪_ 1 so that _c ≈_ 0. The expected test loss is minimized with _λ_ = _σ_<sup>2</sup> _/τ_<sup>2</sup> , which corresponds to the choice of the optimal Bayes estimator. With _λ_ = _σ_<sup>2</sup> _/τ_<sup>2</sup> and _c ≈_ 0, we have 



If _σ ≪ τ_ , then the training loss is approximately _σ_<sup>2</sup> ( _σ/τ_ )<sup>2</sup> . It is significantly smaller than the test loss, which is approximately (1+ _n/d_ ) _σ_<sup>2</sup> +(1 _− n/d_ ) _τ_<sup>2</sup> . This shows that significant overfitting is necessary to achieve optimal performance in complex overparameterized models. We note the variance term becomes ( _n/d_ ) _σ_<sup>2</sup> in the overparameterized case, and there is an extra bias term (1 _− n/d_ ) _τ_<sup>2</sup> . 

We can also simply set _λ_ = 0, corresponding to the minimum norm estimator, which is the focus in the recent literature. In this case, we obtain that the training loss is zero, while while test loss decreases as _d_ increases. 





When _σ/τ_ is small, the test loss achieved at _λ_ = 0 is close to the optimal test loss achieved at _λ_ = _σ_<sup>2</sup> _/τ_<sup>2</sup> up to a difference of _O_ (( _n/d_ ) _σ_<sup>2</sup> ). 

More generally, when � _d/n → c ∈_ (0 _,_ 1), we can obtain (11.20) with _λ_ = 0. This means even if we completely overfit the data, the resulting classifier still achieves near optimal test performance since it nearly matches the result of the optimal Bayes estimator. The phenomenon that overfitting the noise is required to achieve near optimal test performance is often referred to as _benign overfitting_ . 

The term _O_ (( _n/d_ ) _σ_<sup>2</sup> ) in the overparameterized regime can be interpreted as estimation variance which decreases as _d_ increases. The reduction in variance as _d_ increases is what caused the double-descent phenomenon, which only happens in the overparameterized regime _d > n_ . In contrast, when _d ≪ n_ , the variance term is _O_ (( _d/n_ ) _σ_<sup>2</sup> ), which increases as _d_ increases. Moreover, in our example, if we choose _p_ out of _d_ variables and perform regression with _p_ parameters, then a similar calculation shows that in the overparameterized benign overfitting 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 11. NEURAL NETWORKS 

250 

regime, the larger the chosen variable dimension _p_ is, the smaller the variance term _O_ ( _σ_<sup>2</sup> _n/p_ ) is, and the better the generalization error becomes. However, in the classical regime where the dimensionality _p_ is smaller than _n_ , the variance term is _O_ ( _σ_<sup>2</sup> _p/n_ ), and we observe a classical _U_ shaped curve as in Figure 1.1 due to bias-variance tradeoff. See (Belkin et al., 2020) for a detailed analysis of this phenomenon for the minimum _L_ 2 norm estimator. 

One side-effect of benign overfitting is that it is difficult to employ empirical process or stability techniques developed in earlier chapters in the overparameterized regime, because both methods work when the difference between the training loss and the test loss is small. However, such analysis may not be precise enough in the overparameterized regime when the difference between training loss and test loss becomes large. In fact, in the classical regime, we expect the generalization to behave as _O_ ( _σ_<sup>2</sup> _d/n_ ), where _d_ may also be replaced with the effective dimension as shown in Chapter 9. In the overparameterized regime with minimum regularization, we expect an additive variance-like term of _O_ ( _σ_<sup>2</sup> _n/d_ ), in addition to a bias term of (1 _− n/d_ ) _τ_<sup>2</sup> . Even if _τ_ is small, the variance term becomes smaller when _d_ increases, and the bias term eventually dominates. However, the classical learning theory has not developed effective technical tools to analyze the resulting bias terms in the general case. 

The key insight that can be obtained from Theorem 11.27 is that if the true model belongs to a complex overparameterized model class, then to achieve near optimal test performance, it is beneficial to overfit the training data. While it is often difficult to differentiate complex models from noise, the example in this section shows that overfitting is needed in overparameterized model learning, although the conclusion doesn’t apply to observation noise in the classical regime where the dimension is smaller than _n_ . 

Intuitively, the reason that variance reduces when _d_ increases is because overfitting to noise causes random perturbations in the estimated model parameter, and the perturbation belongs to the subspace spanned by the training data. Its effect on the test data becomes minor when _d_ increases because the test data are nearly orthogonal to the training data. This means that test data are insensitive to a random perturbation of parameter in the subspace spanned by the training data. One can generalize this observation to the situation that test data are nearly orthogonal to the training data outside of a low dimensional space. This allows a more general covariance structure of the data matrix for which benign overfitting can happen. If the main function belongs to the low dimensional space, then by using the classical statistical analysis inside the low dimensional space, and orthogonality outside of the low dimensional space, one can prove Bayes consistency of the minimum norm estimator even when such an estimator completely overfits the noise (Bartlett et al., 2020). 

## **11.8 Historical and Bibliographical Remarks** 

Mathematical models of biological neurons have appeared in the 1940s (McCulloch and Pitts, 1943). The idea was further developed into a computational model 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

11.8. HISTORICAL AND BIBLIOGRAPHICAL REMARKS 

251 

called perceptron by Rosenblatt (1962). However its limitation in representation power was soon recognized by Minsky and Papert (1969). To overcome the limitation, modern neural networks employ multilayer perceptrons with hidden layers, which can be trained using gradient descent (also referred to as back propagation) (Rumelhart et al., 1986). In fact, even two-layer neural networks are known to be universal (Leshno et al., 1993). 

However, deep neural networks have additional benefits in representation power because high-level composite features can be more easily represented using deep networks with fewer neurons. There exist functions that can be represented by deep neural networks with a small number of nodes, but require exponentially number of nodes to represent using shallow neural networks (Liang and Srikant, 2017; Telgarsky, 2016). Related results show that deep neural networks can also represent any function with a fixed number of nodes per layer. (Lu et al., 2017; Hanin, 2019), This implies that in order to represent a complex function, one can either increase a network’s width, or its depth. From representation point of view, depth is more important than width in that a wide shallow network can be represented by a fixed width deep neural network with similar number of neurons (Vardi et al., 2022). Nevertheless, wide neural networks are generally easier to optimize, and it was observed in practice that with a fixed model size, the optimal trade-off between depth and width requires a balanced increase of both width and depth (Tan and Le, 2019). 

The idea of using random features in machine learning was proposed by Huang et al. (2006). The resulting method is closely related two two-layer neural networks without optimizing the input layer (Rahimi and Recht, 2008). Its connection to kernel methods using random Fourier features was investigated in (Rahimi and Recht, 2007). One advantage of random Fourier features is that the computation may rely on fast Fourier transform (Le et al., 2013). Due to its simplicity and efficient computation, the method has been applied to various problems. 

The formulation of infinitely-wide neural networks as kernel methods or Gaussian processes has already been considered in the 1990s (Neal, 1995; Williams, 1996). However, the more rigorous development of neural tangent kernel has appeared more recently (Jacot et al., 2018). From the optimization perspective, it is known that with the NTK initialization in Section 11.4, if we let _m →∞_ , then gradient descent finds a solution with zero training loss in an infinitely small neighborhood of the initialization (see Li and Liang, 2018; Zou et al., 2020; Du et al., 2019; Allen-Zhu et al., 2019a,b; Zou and Gu, 2019). These results are consistent with the existence of universal representation in a small neighborhood of the initialization in Theorem 11.17. This phenomenon is also referred to as the “lazy training” regime by Chizat et al. (2019). In the lazy training regime, the optimization problem is nearly linear, and the dynamics of gradient descent can be analyzed using a linear model approximation. 

The mean field view of neural networks was motivated by the mean field analysis in statistical physics (Engel and Van den Broeck, 2001), where the interaction of a large number of neurons can be represented using the average effect according to their joint probability distribution. It was shown that using such a mean 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 11. NEURAL NETWORKS 

252 

field analysis, and techniques related to optimal transport, the continuous limit of two-layer neural networks converge globally by using either noisy gradient descent (Mei et al., 2018) or suitable activation functions such as ReLU (Chizat and Bach, 2018). The global convergence is possible because the mean field formulation of two-layer neural networks is convex in the probability distribution of the model parameters, although the original discrete neural network is nonconvex in the model parameters. It was shown recently that the convexification of overparameterized neural networks can be extended to neural networks with more than two layers (Gu et al., 2020; Fang et al., 2022). However, the convergence analysis for deep neural networks is far more complexity than the analysis of two-layer neural networks, and only specialized results can be established under limited conditions Fang et al. (2021, 2022). 

As we have shown in Section 11.5, the mean field view employs a global _L_ 1 regularization while the NTK formulation implicitly uses a local _L_ 2 regularization. Therefore the two methods have different behaviors. In particular, _L_ 1 regularization allows the mean-field formulation to learn feature representations, which is not possible in the NTK view. The solution behavior under the mean field setting has also been investigated by Chizat and Bach (2020). Moreover, one can show that when the scaling parameter _α →∞_ , the convergence behavior of mean-field approaches that of the NTK regime (see Mei et al., 2019; Chen et al., 2020). 

It was observed by Zhang et al. (2017) that modern neural network training procedure can overfit a completely noisy target, and thus the model class of these neural networks is extremely complex. For such a complex model class, the classical learning theory does not fully explain its good generalization performance. The term benign overfitting is introduced to explain this mystery. The underlying assumption is that for certain computational procedures such as the minimum norm estimator or estimator obtained from SGD, there is an implicit constraint of the search space (also referred to as _implicit bias_ ) so that among all models that achieve small training loss, the procedure can choose a model that perform well on the test set. Some recent mathematical analysis proved such claim more rigorously under appropriate conditions (Bartlett et al., 2020; Tsigler and Bartlett, 2020; Zou et al., 2021) under which test data are nearly orthogonal to the training data except for a small dimensionality _k < n_ . Benign overfitting is closely related to the double-descent phenomenon observed in Belkin et al. (2019); Nakkiran et al. (2021) for neural network training. This phenomenon has since drawn considerable theoretical interests (Hastie et al., 2022; Belkin et al., 2020; Mei and Montanari, 2022). The intuition of benign overfitting in Theorem 11.27 is analogous to the example given by (Belkin et al., 2020) to illustrate double-descent. The Bayesian argument in our analysis also implies that in order to achieve good test performance, it is necessary to overfit (also see Cheng et al., 2022). Both benign overfitting and double descent are still active research areas because the mathematical tools to handle the general situation have not been fully developed. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

Exercises 

253 

## **Exercises** 

- 11.1 Consider ReLU neural networks for approximating one-dimensional functions on [0 _,_ 1]. Prove that any piecewise linear function can be represented by a two-layer ReLU network. 

- 11.2 For a _k_ -layer ReLU neural network, with _m_ nodes per layer, show that its output is a piecewise linear function. Estimate the maximum possible number of linear segments, hence the crossing number it may contain. How large should _m_ be to achieve the same crossing number as that of the _fk_ 2 ( _x_ ) function defined in the proof of Theorem 11.4? 

- 11.3 Prove Proposition 11.12 and Proposition 11.13. 

- 11.4 Prove Proposition 11.15. 

- 11.5 Show if Assumption 11.14 holds, then starting from the NTK initialization, a finite number of gradient descent steps with finite step size remains in the NTK regime when _m_ is sufficiently large. 

- 11.6 Prove Proposition 11.16. 

- 11.7 Consider Example 11.22. Let _r_<sup>_′_</sup> ( _w_ ) = 2( _L/λ_ ) _∥w∥_ 2<sup>2</sup><sup>_/_(1 +</sup><sup>_β∥w∥_2</sup> 2<sup>).</sup> 

   - Show that _∥∇_<sup>2</sup> _r_<sup>_′_</sup> ( _w_ ) _∥_ 2 _≤ c_ 0( _L/λ_ ) for some absolute constant _c_ 0 independent of _β_ . 

   - Show that if _β_ is sufficiently small, then _V_ ( _w_ ) = _λ_<sup>_−_1</sup> [ _g_ 0( _w, p_ )+ _r_ ( _w_ )]+ _r_<sup>_′_</sup> ( _w_ ) is strongly convex. 

   - Let _U_ ( _w_ ) = _λ_<sup>_−_1</sup> [ _g_ 0( _w, p_ ) + _r_ ( _w_ )], then _|U_ ( _w_ ) _− V_ ( _w_ ) _|_ = _|r_<sup>_′_</sup> ( _w_ ) _|_ is bounded. Use Lemma 11.21 to show that (11.11) holds with some _µ >_ 0. 

- 11.8 Consider (11.16), and assume that we randomly select _p_ out of _d_ variables and train a linear model using minimum _L_ 2 norm estimator with the selected variables. Find the expected test loss for both _p < n_ and _p > n_ . 

- 11.9 Prove (11.18) and (11.19). 

- 11.10 Consider Theorem 11.27 under the assumption that � _n/d → c ∈_ (0 _,_ 1) and _n →∞_ . Consider the _n × n_ matrix _K_ in its proof. Lemma 3.11 of (Bai and Silverstein, 2010) implies that as _n →∞_ : 





Use this formula to give closed form expressions for (11.18) and (11.19). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

**12** 

