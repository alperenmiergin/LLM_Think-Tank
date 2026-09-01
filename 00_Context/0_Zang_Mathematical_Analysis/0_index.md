# Mathematical Analysis of Machine Learning Algorithms

**Yazar:** Tong Zhang
**Kaynak:** Yazarın kişisel sitesi (tongzhang-ml.org), Cambridge University Press tarafından basılacak yayımlanmamış ön-sürüm (prepublication draft)
**Tür:** Akademik
**Kapsam:** İstatistiksel öğrenme teorisi — genelleme sınırları (uniform convergence, Rademacher complexity, algoritmik kararlılık), kernel/additive/neural network modellerinin analizi, online öğrenme, bandit ve pekiştirmeli öğrenme teorisi, alt sınır (minimax) analizi. Kanıt/formül ağırlıklı, ileri düzey matematik bilgisi gerektirir.
**URL:** https://www.tongzhang-ml.org/lt-book/lt-book.pdf
**Yayın Tarihi:** Kesin yayın tarihi belirtilmemiş; telif notu ©2021-2023 Tong Zhang
**Kaynakça kaydı:** [[00_Context/kaynaklar.md]]

---

## Anahtar Özet (TR)

Zhang, makine öğrenmesi kuramının merkezi sorusunu ele alıyor: bir model eğitim verisinde iyi performans gösteriyorsa, bunun görmediği veriye genelleyeceğine dair matematiksel güvence nasıl kurulur? Kitabın ilk yarısı (Bölüm 1-12) veri bağımsız-özdeş-dağılımlı (iid) kabul edildiğinde bu soruyu yanıtlıyor: önce tekil olasılık eşitsizlikleri, sonra bunları tüm bir model ailesi için aynı anda geçerli kılan "tekdüze yakınsama" (uniform convergence) teorisi, bu ailenin karmaşıklığını ölçen araçlar (covering number, VC boyutu, Rademacher karmaşıklığı) ve algoritma-merkezli bir alternatif olan kararlılık (stability) analizi geliştiriliyor. Bu genel çerçeve kernel yöntemleri, seyrek/toplamsal modeller ve sinir ağlarına uygulanıyor.

Kitabın ikinci yarısı (Bölüm 13-18) aynı soruyu verinin sıraya bağlı/uyarlanabilir olduğu online öğrenme, çok kollu kumarbaz (bandit) ve pekiştirmeli öğrenme ortamlarına taşıyor. Kitap ayrıca alt sınır (minimax) analiziyle hiçbir yöntemin aşamayacağı teorik sınırları da gösteriyor — yani sadece "ne kadar iyi olunabilir" değil, "ne kadarı imkansız" sorusunu da yanıtlıyor. Önsözde belirtildiği gibi, kitap makine öğrenmesi algoritmalarını öğretmiyor, bu algoritmaların neden işe yaradığını kanıtlamak için kullanılan ortak matematiksel dili öğretiyor.

## Key Summary (EN)

Zhang addresses the central question of learning theory: if a model performs well on training data, what mathematical guarantee do we have that it will generalize to unseen data? The first half of the book (Chapters 1-12) answers this under the iid assumption, building progressively from single-instance probability inequalities to uniform convergence theory (which extends guarantees to an entire function class simultaneously), tools for measuring that class's complexity (covering numbers, VC dimension, Rademacher complexity), and an algorithm-centric alternative in stability analysis. This general framework is then applied to kernel methods, sparse/additive models, and neural networks.

The second half (Chapters 13-18) carries the same question into sequential and adaptive settings — online learning, multi-armed bandits, and reinforcement learning. The book also develops minimax lower-bound analysis, establishing theoretical limits that no method can surpass — answering not just how good a method can be, but how good it fundamentally cannot be. As the preface makes clear, the book does not teach machine-learning algorithms themselves; it teaches the shared mathematical language used to prove why those algorithms work.

Mathematical Analysis of Machine Learning Algorithms 

Tong Zhang 

# Contents 

|_List o_|_f illustrations_|viii|
|---|---|---|
|_Prefa_|_ce_|ix|
|**1**|**Introduction**|1|
|1.1|Standard Model for Supervised Learning|2|
|1.2|Online Learning and Sequential Decision Making|3|
|1.3|Computational Consideration|5|
|1.4|Basic Concepts in Generalization Analysis|5|
|1.5|Historical and Bibliographical Remarks|7|
|**2**|**Basic Probability Inequalities**|9|
|2.1|Normal Random Variable|9|
|2.2|Markov’s Inequality|11|
|2.3|Exponential Tail Inequality|12|
|2.4|Sub-Gaussian Random Variable|16|
|2.5|Hoefding’s Inequality|17|
|2.6|Bennett’s Inequality|21|
|2.7|Bernstein’s Inequality|23|
|2.8|Non-identically Distributed Random Variables|24|
|2.9|Tail Inequality for _χ_<sup>2</sup>|25|
|2.10|Historical and Bibliographical Remarks|26|
||Exercises|28|
|**3**|**Uniform Convergence**|29|
|3.1|Probably Approximately Correct Learning|29|
|3.2|Analysis of PAC Learning|31|
|3.3|Empirical Process|35|
|3.4|Covering Number|38|
|3.5|A Simple Example|41|
|3.6|Uniform Bernstein’s Inequality|43|
|3.7|General Bracketing Number|48|
|3.8|Historical and Bibliographical Remarks|50|
||Exercises|51|
|**4**|**Empirical Covering Number Analysis**|52|
|4.1|Metric and Empirical Covering Numbers|52|
|4.2|Symmetrization|54|



iii 

|CH|APTER 0. CONTENTS|iv|
|---|---|---|
|4.3|Uniform _L_1 Covering Number Analysis|58|
|4.4|Vapnik-Chervonenkis Dimension|61|
|4.5|Uniform _L_2 Covering Number Analysis|63|
|4.6|Uniform _L∞_Covering Number Analysis|65|
|4.7|Historical and Bibliographical Remarks|68|
||Exercises|70|
|**5**|**Covering Number Estimates**|72|
|5.1|Packing Number|72|
|5.2|Lipschitz Function in Finite Dimension|73|
|5.3|Empirical _Lp_ Covering Numbers of VC-class|74|
|5.4|VC-subgraph Class|76|
|5.5|Convex Hull Class|77|
|5.6|Regularized Linear Function Classes|81|
|5.7|Historical and Bibliographical Remarks|82|
||Exercises|84|
|**6**|**Rademacher Complexity**|85|
|6.1|Rademacher Complexity|85|
|6.2|Ofset Rademacher Complexity|87|
|6.3|Concentration Inequality|92|
|6.4|Estimating Rademacher Complexity|97|
|6.5|Local Rademacher Complexity Analysis|103|
|6.6|Historical and Bibliographical Remarks|113|
||Exercises|115|
|**7**|**Stability Analysis**|117|
|7.1|Algorithmic Stability|117|
|7.2|Regularized Empirical Risk Minimization|121|
|7.3|Stochastic Gradient Descent|126|
|7.4|Gibbs Algorithm for Non-convex Problems|129|
|7.5|Stochastic Gradient Langevin Dynamics|133|
|7.6|Concentration of Uniformly Stable Algorithm|135|
|7.7|Historical and Bibliographical Remarks|140|
||Exercises|141|
|**8**|**Model Selection**|142|
|8.1|Model Selection Problem|142|
|8.2|Model Selection on Validation Data|144|
|8.3|Model Selection on Training Data|147|
|8.4|Bayesian Model Selection and Averaging|153|
|8.5|Historical and Bibliographical Remarks|154|
||Exercises|157|
|**9**|**Kernel Methods**|158|
|9.1|Introduction to Kernel Learning|158|
|9.2|Universal Approximation|164|
|9.3|Generalization Analysis|168|



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

v 

|9.4|Vector Valued Functions|173|
|---|---|---|
|9.5|Refned Analysis: Ridge Regression|177|
|9.6|_G_-Optimal Design in RKHS|182|
|9.7|Historical and Bibliographical Remarks|186|
||Exercises|188|
|**10**|**Additive Models**|189|
|10.1|Sparse Model Combination<br>|189|
|10.2<br>|_L_1 Regularization<br>|193<br>|
|10.3|Information Theoretic Analysis|201|
|10.4|Boosting and Greedy Algorithm|208|
|10.5|Sparse Recovery Analysis|215|
|10.6|Historical and Bibliographical Remarks|222|
||Exercises|224|
|**11**|**Neural Networks**|226|
|11.1|Introduction to Neural Networks|226|
|11.2|Function Approximation|228|
|11.3|Random Feature Method|230|
|11.4|Neural Tangent Kernel|233|
|11.5|Mean-Field Formulation|238|
|11.6|Analysis of Deep Neural Networks|244|
|11.7|Double Descent and Benign Overftting|245|
|11.8|Historical and Bibliographical Remarks|250|
||Exercises|253|
|**12**|**Lower Bounds and Minimax Analysis**|254|
|12.1|Lower Bounds for Empirical Processes|254|
|12.2|Minimax Analysis for Statistical Estimation|257|
|12.3|Lower Bounds Using Fano’s Inequality|259|
|12.4|Minimax Analysis for Least Squares Regression|262|
|12.5|Minimax Analysis for Density Estimation|268|
|12.6|Lower Bounds using Assouad’s Lemma|269|
|12.7|Historical and Bibliographical Remarks|272|
||Exercises|274|
|**13**|**Sequential Random Variables**|275|
|13.1|Martingale Exponential Inequalities|276|
|13.2|Self-Normalizing Vector Martingale Inequalities|280|
|13.3|Uniform Convergence|283|
|13.4|Minimax Analysis for Sequential Estimation|287|
|13.5|Historical and Bibliographical Remarks|293|
||Exercises|295|
|**14**|**Online Learning**|298|
|14.1|Online Learning Model|298|
|14.2|Perceptron Algorithms|299|
|14.3|Online to Batch Conversion|302|



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

|CHA|PTER 0. CONTENTS|vi|
|---|---|---|
|14.4|Online Convex Optimization|304|
|14.5|Online Nonconvex Optimization|310|
|14.6|Historical and Bibliographical Remarks|313|
||Exercises|315|
|**15**|**Online Aggregation**|316|
|15.1|Bayesian Posterior Averaging|316|
|15.2|Ridge Regression as Bayesian Posterior Averaging|319|
|15.3|Exponential Model Aggregation|325|
|15.4|Second Order Online Convex Optimization|328|
|15.5|Adaptive Gradient Method|330|
|15.6|Historical and Bibliographical Remarks|332|
||Exercises|334|
|**16**|**Multi-armed Bandits**|335|
|16.1|Multi-armed Bandit Problem|335|
|16.2|Upper Confdence Bound for Stochastic MAB|336|
|16.3|Lower Bounds for Stochastic MAB|345|
|16.4|Arm Elimination for Stochastic Linear Bandits|346|
|16.5|Thompson Sampling for Stochastic MAB|349|
|16.6|EXP3 for Adversarial MAB|350|
|16.7|Historical and Bibliographical Remarks|353|
||Exercises|354|
|**17**|**Contextual Bandits**|355|
|17.1|EXP4 for Adversarial Contextual Bandits|356|
|17.2|Linear UCB for Stochastic Contextual Bandits|361|
|17.3|Nonlinear UCB with Eluder Coefcient|367|
|17.4|Nonlinear Bandits with Decoupling Coefcient|372|
|17.5|Nonlinear Bandits with Coverage Coefcient|379|
|17.6|Historical and Bibliographical Remarks|381|
||Exercises|383|
|**18**|**Reinforcement Learning**|384|
|18.1|Value Functions of Episodic MDP|386|
|18.2|_Q_-type Model-Free Linear MDP|392|
|18.3|Least Squares Value Iteration|396|
|18.4|Model-Free _V_-type Bellman Eluder Coefcient|402|
|18.5|Model-based Reinforcement Learning|408|
|18.6|Linear Mixture MDP|417|
|18.7|_Q_-type Model-Based Linear MDP|419|
|18.8|Model-Based _V_-type Bellman Eluder Coefcient|421|
|18.9|<br>Historical and Bibliographical Remarks|424|
||Exercises|426|
|**_Appe_**|**_ndix A_**<br>**Basics of Convex Analysis**|427|
|A.1|Defnitions|427|
|A.2|Basic Properties|428|



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

vii 

|A.3<br>Common Convex Functions|430|
|---|---|
|A.4<br>Matrix Trace Functions|431|
|**_Appendix B_**<br>_f_**-divergence of Probability Measures**|433|
|_References_|441|
|_Author index_|457|
|_Subject index_|461|



This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

# Illustrations 

|1.1|Training and test errors versus model complexity|6|
|---|---|---|
|3.1|Conditional probability Pr(_y_ = 1_|x_) as a function of _x_|42|
|6.1|Smoothed Classifcation Loss|102|
|6.2|Rate function|105|
|11.1|Neural network activation functions|227|
|11.2|Four-layer fully-connected neural network|227|
|11.3|Plot of _fk_(_x_) with _k_ = 0_,_1_,_2|229|
|11.4|Double descent curve|246|
|18.1|Episodic Markov decision process|385|



viii 

# Preface 

Machine learning is a relatively young scientific discipline with the goal of achieving the capability of human decision making by learning from past experience. It is an interdisciplinary field that requires knowledge from statistics, optimization, engineering, and many innovations in computing. In the past few decades, we have seen a rapid development of empirically successful machine learning algorithms, to the degree that machine learning has become an indispensable technology to solve many challenging problems in the modern society. In the mean time, the mathematical theory of machine learning has been developed by researchers in computer science, statistics, optimization, and engineering, who are interested in establishing a rigorous mathematical foundation that not only can explain the current algorithms, but also can motivate principled approaches for the future. However, many of the existing theoretical results are scattered in the literature. While there are a number of introductory books and survey articles that have tried to cover some of these theoretical results, there isn’t any in-depth text book that is able to provide a comprehensive introduction to standard mathematical tools that have been developed in the literature. 

The goal of this book is to present a systematic treatment of the main mathematical techniques that are commonly used to analyze machine learning algorithms in the current literature. Due to the space limitation, the book itself does not explain various machine learning algorithms and their application backgrounds in details. Therefore it is assumed that readers of the book are already familiar with standard machine learning algorithms such as support vector machines, decision trees, boosting, neural networks etc. The readers of the book should also have the basic mathematical knowledge of calculus, linear algebra, and probability, as well as sufficient mathematical maturity to follow rigorous theoretical proofs. For such readers, the main purpose of this book is to introduce the modern mathematical techniques that are commonly used to analyze these machine learning algorithms. The selected material is at a level that can provide the readers sufficient technical background and knowledge to read research papers in theoretical machine learning without much difficulty. 

The topics selected in the book are intended to cover the most useful and commonly encountered mathematical tools and results at the current research level. Some more specialized topics (such as active learning, semisupervised learning, loss function consistency, differential privacy, to name a few) are omitted, but readers who have learned the technical tools presented in the book should have 

ix 

CHAPTER 0. PREFACE 

x 

no difficulty following current research on these topics. The book can be used for a graduate level course on theoretical machine learning, and it can also serve as a reference for researchers working on theoretical machine learning. While the most fundamental concepts are illustrated in sufficient depth, some other topics of current interests are covered with less details. Due to the large number of topics, some presentations are relatively concise, and some other topics are presented with a level of abstraction which targets for the unification of different special cases that have appeared in the literature. Such abstraction and the concise presentation might lead to some difficulty at a first reading. To alleviate the difficulty, many examples are included to provide concrete interpretations and appropriate context of the theoretical results. Historical remarks are included to give the original sources of the topics covered in the book, as well as extra reading material for readers who are interested in deeper understanding. The exercises provided at the end of each chapter can help the readers to check their mastery of the main concepts. Most exercises require good knowledge of the material, but not difficult. Moreover, some of the exercises are designed to provide additional information for topics related but not directly covered in the main text. 

The book contains two main parts. The first part, from Chapter 1 to Chapter 12, covers the analysis of supervised learning algorithms in the iid setting. It starts with the standard exponential tail inequalities for sums of independent variables, and then spends several chapters to develop the technical tools for uniform convergence, which is the main mathematical machinery to analyze machine learning algorithms. Key results are established using the classical concepts such as covering numbers, VC dimension, and Rademacher complexity. The first part of the book also covers the more recently emerged technique of stability analysis, which can handle specific learning procedures such as stochastic gradient descent. As applications of these basic mathematical tools, analysis of several commonly used machine learning models including kernel methods, additive models, and neural networks have also been presented in varying degrees of details. Finally, the first part concludes with standard lower bound analysis in Chapter 12, which covers the commonly used techniques such as Fano’s inequality and Assouad’s lemma. Examples on least squares regression and density estimation are also provided. 

The second part of the book, starting from Chapter 13, covers the analysis of sequential statistical estimation problems, including online learning, bandit problems, and reinforcement learning. It starts with a generalization of the exponential tail inequalities and uniform convergence analysis from iid random variables to martingales in the sequential setting. It then describes specific algorithms and their analysis in the subsequent chapters in online learning, bandits, and reinforcement learning. Both upper bounds and lower bounds are provided. 

The book contains sufficient material for a two-semester graduate level course, one for each part of the book. It can also be used for a one-semester course that covers part of the book. The author has taught graduate courses at the Hong Kong University of Science and Technology based on the content of the book. Students taking the courses have already learned basic machine learning 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

xi 

algorithms, and want to further study the mathematical tools to analyze these algorithms. 

For a one-semester class on the mathematical foundation of machine learning, the following selected materials can be considered: Section 2.1-2.6 on exponential inequalities, Chapter 3 on uniform convergence, Section 4.1-4.4 on VC theory, Section 5.1-5.2 on covering numbers, Section 6.1-6.4 on Rademacher complexity (covering only the standard Rademacher complexity, while leaving the offset Rademacher complexity as reading material), Section 8.1-8.3 on model selection, Section 9.1-9.3 on kernel methods, Section 10.1-10.3 on additive models, Section 11.3, 11.4, 11.6, 11.7 on neural networks, Section 12.3 and 12.4 on lower bounds, Section 13.1 and 13.3 on martingales, Section 14.1-14.4 on online learning, Section 16.1, 16.2, 16.6 on bandits, Section 17.1, 17.3, 17.4 on contextual bandits, and Section 18.1-18.3 on reinforcement learning. Lecture slides on these topics are available on the author’s website. 

The author would like to thank students who read early drafts of the book, and provided useful suggestions. In particular, Chutian Huang, Yujia Jin, Yong Lin, Zhefeng Qiao, Yifei Shen, Wei Xiong, Mengyue Zha provided feedbacks on parts of the book. I’d also like to thank the editorial staffs at Cambridge university press, Johnathan Fuentes and Katie Leach for their helps and suggestions on the writing of the book. Finally I want to thank my wife Yue for her tremendous support on this undertaking, which has made the writing of the book possible. 

Hong Kong 

_Tong Zhang_ 

This material will be published by Cambridge University Press as “Mathematical Analysis of Machine Learning Algorithms” by Tong Zhang. This unedited prepublication version is free to view and download for personal use only. Not for redistribution or commercial use. ©2021-2023 Tong Zhang 

**1** 

