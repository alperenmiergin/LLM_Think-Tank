**Kaynak:** [[00_Context/0_Zang_Mathematical_Analysis/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

# **Introduction** 

The goal of mathematical analysis of machine learning algorithms is to study the statistical and computational behaviors of methods that are commonly used in machine learning, and to understand their theoretical properties such as the statistical rate of convergence (usually deriving upper bounds for specific algorithms), the optimality of a statistical method (whether the derived statistical upper bound matches the information theoretical lower bound), and the computational efficiency for various learning models under different assumptions. 

This book mainly focuses on the analysis of two common learning models: supervised learning and sequential decision making problems. 

In supervised learning, we train a machine learning model using training data, and then evaluate the model’s prediction performance on unseen test data. In this case, we want to investigate the performance of this model on test data. 

A mathematical theory for supervised learning answers the following basic questions, where we take the linear model as an example. 

- Suppose that we learn a _d_ -dimensional linear classifier with _n_ training data by minimizing the training error. Assume that the training error is 10%. What is the classifier’s test error on the (unseen) test data? The test error in this setting is also referred to as _generalization error_ because it is not observed. 

- Can we learn a linear classifier that has test error nearly as small as the optimal linear 

- Can we find a computationally efficient procedure to find a linear classifier with small test error? 

The online learning model is an example of sequential decision making problems. In online learning, we are interested in the sequential prediction problem, where we train a statistical model using historic data, and then test it on the data in the next time step. We then observe the true outcome after prediction. This process is repeated in a sequential manner. The problem itself is motivated from time series analysis and forecasting problems. We want to know the ability of a learning algorithm to predict future events based on historic observations. 

A mathematical theory for online learning needs to answer the following basic questions, where we again take the linear model as an example. 

- In the online sequential prediction setting. Given a time step _t_ , can we construct 

1 

CHAPTER 1. INTRODUCTION 

2 

an online learning algorithm that predicts nearly as well as the optimal linear classifier up to time step _t_ ? 

This course develops the mathematical tools that can be used to answer the above questions. 

## **1.1 Standard Model for Supervised Learning** 

In supervised learning, we observe an input random variable (feature vector) _X ∈_ R<sup>_d_</sup> that represents the known information, and output variable (label) _Y_ that represents the unknown information which we want to predict. The goal is to predict _Y_ based on _X_ . 

As an example, we may want to predict whether an image (represented as input vector _X_ ) contains a cat or a dog (label _Y_ ). 

In practice, the set of prediction rules are derived by parametrized functions _f_ ( _w, ·_ ) : R<sup>_d_</sup> _→_ R<sup>_k_</sup> , where _w ∈_ Ωis the model parameter that can be learned on the training data. As an example, for _k_ -class classification problem, where _Y ∈{_ 1 _, . . . , k}_ , we predict _Y_ using the following prediction rule given function _f_ ( _w, x_ ) = [ _f_ 1( _w, x_ ) _, . . . , fk_ ( _w, x_ )] _∈_ R<sup>_k_</sup> : 



The prediction quality is measured by a loss function _L_ ( _f_ ( _x_ ) _, y_ ): the smaller the loss, the better the prediction accuracy. 

The supervised learning approach is to estimate _w_ ˆ _∈_ Ωbased on observed (labeled) historical data _Sn_ = [( _X_ 1 _, Y_ 1) _, . . . ,_ ( _Xn, Yn_ )]. 

A supervised learning algorithm _A_ takes a set of training data _Sn_ as input, and ˆ outputs a function _f_ ( ˆ _w, ·_ ), where _w_ = _A_ ( _Sn_ ) _∈_ Ω. The most common algorithm, which we will focus on in this course, is _empirical risk minimization_ (ERM): 



In the standard theoretical model for analyzing supervised learning problems, we assume that the training data _{_ ( _Xi, Yi_ ) : _i_ = 1 _, . . . , n}_ are iid (independent and identically distributed) according to an unknown underlying distribution _D_ . The loss of a classifier _f_<sup>ˆ</sup> ( _x_ ) = _f_ ( ˆ _w, x_ ) on the training data is the training error 



Moreover, we assume that the test data ( _X, Y_ ) (future unseen data) are also taken from the same distribution _D_ , and we are interested in knowing the generalization error of _f_<sup>ˆ</sup> on the test data, defined as: 



Since we only observe the training error of _f_<sup>ˆ</sup> = _f_ ( ˆ _w, ·_ ), a major goal is to 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

1.2. ONLINE LEARNING AND SEQUENTIAL DECISION MAKING 

3 

estimate the test error (i.e., generalization error) of _f_<sup>ˆ</sup> based on its training error, referred to as _generalization bound_ , which is of the following form. Given _ϵ ≥_ 0, we we want to determine _δn_ ( _ϵ_ ) so that: 



where the probability is with respect to the randomness over the training data _Sn_ . In general, _δn_ ( _ϵ_ ) _→_ 0 as _n →∞_ . 

In the literature, the above result is often stated in the following alternative form, where we want to determine a function _ϵn_ ( _δ_ ) of _δ_ , so that with probability at least 1 _− δ_ (over the random sampling of the training data _Sn_ ): 



We want to show that _ϵn_ ( _δ_ ) _→_ 0 as _n →∞_ . 

Another type of inequalities, often referred to as _oracle inequalities_ , is to show that with probability at least 1 _− δ_ (over the random sampling of training data _Sn_ ): 



This shows that the test error achieved by the learning algorithm is nearly as small as that of the optimal test error achieved by _f_ ( _w, x_ ) with _w ∈_ Ω. We say the learning algorithm is consistent if _ϵn_ ( _δ_ ) _→_ 0 as _n →_ 0. Moreover, the rate of convergence refers to the rate of _ϵn_ ( _δ_ ) converging to zero when _n →∞_ . 

Chapter 2 and Chapter 3 establish the basis mathematical tools in empirical processes for analyzing supervised learning. Chapter 4, Chapter 5, and Chapter 6 further develop the techniques. Chapter 7 considers a different analysis which directly controls the complexity of a learning algorithm using stability. This analysis is gaining popularity due to its ability to work directly with algorithmic procedures such as SGD. Chapter 8 introduces some standard techniques for model selection in the supervised learning setting. Chapter 9 analyzes the kernel methods. Chapter 10 analyzes additive models with a focus on sparsity and boosting. Chapter 11 investigates the analysis of neural networks. Chapter 12 discusses some common techniques and results for establishing statistical lower bounds. 

## **1.2 Online Learning and Sequential Decision Making** 

In online learning, we consider observing ( _Xt, Yt_ ) one by one in a time sequence ˆ from _t_ = 1 _,_ 2 _, . . ._ . An online algorithm _A_ learns a model parameter _wt_ at time _t_ based on previously observed data ( _X_ 1 _, Y_ 1) _, . . . ,_ ( _Xt, Yt_ ): 



We then observe the next input vector _Xt_ +1, and make prediction _f_ ( ˆ _wt, Xt_ +1). After the prediction, we observe _Yt_ +1, and then compute the loss _L_ ( _f_ ( ˆ _wt, Xt_ +1) _, Yt_ +1). 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 1. INTRODUCTION 

4 

The goal of online learning is to minimize the aggregated loss 



In the mathematical analysis of online learning algorithms, we are interested in the following inequality, referred to as _regret bound_ , where the aggregated loss of an online algorithm is compared to the optimal aggregated loss: 



The regret _ϵT_ , is the extra loss suffered by the learning algorithm, compared to that of the optimal model at time _T_ in retrospect. 

As an example, we consider the stock price prediction problem, where the opening price of a certain stock at each trading day is _p_ 1 _, p_ 2 _, . . ._ . At the beginning of each day _t_ , we observe _p_ 1 _, . . . , pt_ , and want to predict _pt_ +1 on day _t_ +1, so that we use this prediction to trade the stock. 

The input _Xt_ +1 is a _d_ -dimensional real valued vector in _R_<sup>_d_</sup> that represents the observed historical information of the stock on day _t_ . The output _Yt_ +1 = ln( _pt_ +1 _/pt_ ) will be observed on day _t_ +1. We consider linear model with _f_ ( _w, x_ ) = _w_<sup>_⊤_</sup> _x_ , with Ω= R<sup>_d_</sup> . The quality is measured by the least squares error 



The learning algorithm can be empirical risk minimization, where 



In regret analysis, we compare the prediction error 



to the optimal prediction 



Martingale inequalities used in the analysis of sequential decision problems will be introduced in Chapter 13. The online learning model will be studied in Chapter 14 and Chapter 15. The related bandit problem will be investigated in Chapter 16 and Chapter 17. In the bandit problem, we investigate online problems with incomplete information, where _Yt_ is only partially revealed based on actions of the learning algorithm. The goal is to take an optimal sequence of actions to maximize rewards (or minimize loss). Finally in Chapter 18, we will introduce some basic techniques to analyze reinforcement learning. The reinforcement learning model can be considered as a generalization of the bandit model, 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

1.3. COMPUTATIONAL CONSIDERATION 

5 

where at each time step (epoch), multiple actions are taken to interact with the environment. This is still an actively developing field, with major theoretical advances appearing in recent years. We will only cover some basic results that are most closely related to the analysis of bandit problems. 

## **1.3 Computational Consideration** 

In the ERM method, the model parameter _w_ ˆ is the solution of an optimization problem. If the optimization problem is convex, then the solution can be efficiently computed. If the optimization problem is non-convex, then its solution may not be obtained easily. 

Theoretically, we separately consider two different types of complexity. One is statistical complexity, where we may ignore the complexity of computation, and try to derive bounds (1.3) and (1.4) even though the computational complexity of the underlying learning algorithm (such as ERM) may be high. 

However, in practice an important consideration is computational complexity, where we are interested in computationally efficient algorithms with good generalization performance or regret bounds. For non-convex models, this kind of analysis can be rather complexity, and usually require problem specific analysis that are not generally applicable. 

A generally studied approach to nonconvex problem is to use convex approximation (also referred to convex relaxation) to solve the non-convex problem approximately. The related theoretical question is that under what circumstances, the solution has statistical generalization performance comparable to that of the non-convex methods. An example is the sparse learning problem, where the convex formulation with _L_ 1 regularization is used as a proxy to the non-convex _L_ 0 regularization. In this case, we are interested in establishing the condition under which one can obtain a solution from _L_ 1 regularization that is close to the true sparse model. 

The combined analysis of computational and statistical complexity is a major research direction in theoretical machine learning. This book mainly covers the statistical analysis aspect. Nevertheless, the computational complexity will also be considered when practical algorithms are investigated. 

## **1.4 Basic Concepts in Generalization Analysis** 

The goal of machine learning is to find a function _f_ ( ˆ _w, x_ ) that predicts well on unseen data (test data). However, we only observe the prediction accuracy of _f_ ( ˆ _w, x_ ) on the training data. In order to achieve high prediction accuracy, we need to balance the following two aspects of learning: 

- The prediction function should fit the training data well; that is, to achieve small training error. This requires a more expressive model, with a larger parameter space Ω. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 1. INTRODUCTION 

6 



<!-- Start of picture text -->
high bias low bias<br>low variance high variance<br>test error<br>error<br>training error<br>model complexity<br><!-- End of picture text -->

**Figure 1.1** Training and test errors versus model complexity 

- Performance of prediction function on the test data should match that on the training data. The difference is smaller for a less expressive model with a smaller parameter space Ω. 

The gap between the training error and test error depends on the model complexity, which characterizes how large the model parameter space Ωis. When Ωis too large, the training error becomes smaller, but the difference between training error and test error increases. Therefore in practice there is a trade-off in machine learning, and the best prediction performance is achieved with the right balance, often via a tuning parameter in the learning algorithm that characterizes model complexity. The phenomenon is described in Figure 1.1. Such a tuning process is often referred to as hyperparameter optimization. 

When the class of prediction functions is too large (or complex), then the difference between training error and test error increases. This leads to so-called _overfitting_ phenomenon. A simple example for overfitting can be described as follows. Let _X_ be a one-dimensional feature uniformly distributed in [ _−_ 1 _,_ 1], with class label _Y_ = 1 when _X ≥_ 0 and _Y_ = _−_ 1 when _X <_ 0. The optimal classifier can achieve a test error of 0. 

Given training data ( _Xi, Yi_ ) ( _i_ = 1 _, . . . , n_ ), and assume _Xi_ are all different. If we consider a prediction function class that contains all possible functions, then the empirical risk minimization method with the following solution can fit data perfectly: 



The above model class has a high model complexity measured by its _covering number_ which we will study in the book. However, the resulting ERM prediction rule does not make any meaningful prediction when _X_ is not in the training data. This is because although the training error of 0 is small, it is significantly different from the test error of 0 _._ 5. 

In contrast, if we let the prediction model contain only one function _{f_ ( _x_ ) : 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

1.5. HISTORICAL AND BIBLIOGRAPHICAL REMARKS 

7 

_f_ ( _x_ ) _≡_ 0 _}_ , then using the tail inequality of independent random variables of Chapter 2, we know that the difference between the training error and the test error will be small when _n_ is large. However, since the training error of _≈_ 0 _._ 5 is large, the test error is also large. 

Let 1 ( _x ∈ A_ ) be the set indicator function that takes value 1 if _x ∈ A_ , and 0 if _x ∈/ A_ . Assume that we pick the model function class _{f_ ( _w, x_ ) : _f_ ( _w, x_ ) = 2 1 ( _x ≥ w_ ) _−_ 1 _}_ parametrized by a parameter _w ∈ R_ . Assume also that we find a classifier _f_ ( ˆ _w, x_ ) that minimizes the training error. Using techniques in Chapter 3, it can be shown that both training error and test error of this classifier converge to zero when _n →∞_ . This model class balances the training error and generalization performance. In summary, a key technique of the mathematical theory for machine learning is to estimate the generalization performance (prediction accuracy on unseen data) of learning algorithms, and quantify the degree of overfitting. 

Finally it is worth pointing out that the mathematical theory developed for limiting model size and preventing overfitting is the key classical technique to obtain good generalization results in machine learning. However, in recent years, this classical view point has evolved due to the empirical observation in modern neural network models that large models nearly always perform better. For such models, one observes the so-called _benign overfitting_ phenomenon, where learning algorithms with appropriate _implicit bias_ can still achieve good test performance even if the resulting model completely overfits the noise. This is an active research area that is still developing rapidly. Consequently the related theoretical results are less mature. We will thus only discuss some theoretical intuitions behind this phenomenon in Section 11.7, but dedicate the main parts of the book to the classical learning theory. 

## **1.5 Historical and Bibliographical Remarks** 

Machine learning is now considered as the key technology for artificial intelligence (AI), which has the goal of creating computing machines that can mimic the problem solving skills of a human (McCarthy et al., 2006). In recent years, machine learning has become an important scientific research field on its own, and has many applications that have made significant impact in our modern society. The term “machine learning” has often been attributed to Samuel (1959), who defined it as the “field of study that gives computers the ability to learn without being explicitly programmed”. 

There are two approaches to machine learning (AI), one is to use statistical methods to learn functions from data and past experience, in order to predict future events. This is the approach considered in this book. An alternative approach to AI is symbolic reasoning, which creates a knowledge base, and then use logic to create rules that can perform inference (Haugeland, 1989). The latter approach explicitly incorporates human knowledge into computer programs, without the need for direct learning from past experiences. Although the symbolic approach showed some promise in the early decades of AI research (Studer et al., 1998), it has major limitations in dealing with uncertainty in real world applications. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

CHAPTER 1. INTRODUCTION 

8 

For complex problems, the symbolic rules needed to handle difficult situations are often too complex to build and maintain. For this reason, the modern applications of machine learning heavily relied on the statistical approach, although the hybrid of statistical based machine learning and symbolic AI is still an active research direction. 

The mathematical foundation of machine learning has its origin in probability and theoretical statistics. In particular, the theory of empirical processes has been used to analyze the generalization performance of machine learning algorithms. The first part of the book will describe the basic tools of empirical processes that are commonly used in machine learning. Learning in the sequential decision setting is a different paradigm for theoretical analysis, and the key quantity of interests, regret bound, has its origin in theoretical computer science. The techniques used in the analysis is also closely related to stochastic optimization and stochastic processes. Both computational and statistical aspects are considered in some of the procedures while only the statistical aspects are considered for others. The second part of the book will describe the mathematical tools for analyzing learning problems in the sequential decision setting. 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

**2** 

