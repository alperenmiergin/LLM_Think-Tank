# Machine Learning with Neural Networks

**Yazar:** Bernhard Mehlig
**Kaynak:** arXiv:1901.05639v4 [cs.LG], 27 Ekim 2021 (arXiv kimliğinden türetilen URL); tam sürüm (alıştırmalarla) Cambridge University Press tarafından basılmıştır, bu sürüm alıştırmasızdır
**Tür:** Akademik
**Kapsam:** Sinir ağlarına ders notu ağırlıklı giriş — Hopfield ağları, Boltzmann makineleri, çok katmanlı algılayıcılar (perceptron), geri yayılım/SGD, derin öğrenme (evrişimli ve tekrarlayan ağlar), gözetimsiz öğrenme, pekiştirmeli öğrenmeye giriş. Zang'a göre daha uygulamalı/algoritma odaklı, daha az kanıt ağırlıklı.
**URL:** https://arxiv.org/abs/1901.05639
**Yayın Tarihi:** 2021 (arXiv v4, 27 Ekim 2021)
**Kaynakça kaydı:** [[00_Context/kaynaklar.md]]

---

## Anahtar Özet (TR)

Mehlig, Gothenburg Üniversitesi'nde verdiği ders notlarından geliştirdiği bu kitapta sinir ağlarını tarihsel ve kavramsal bir sırayla anlatıyor. İlk bölüm (I. Kısım) çağrışımlı bellek modelleriyle başlıyor: Hebb kuralına dayanan Hopfield ağları, bunların stokastik/istatistiksel mekanik versiyonu ve Boltzmann makineleri (kısıtlı Boltzmann makineleri dahil). İkinci kısım gözetimli öğrenmeye geçiyor — algılayıcılar (perceptron), zincir kuralı ve geri yayılımla stokastik gradyan inişi, ardından derin öğrenmenin pratik zorlukları (kaybolan/patlayan gradyanlar, ReLU, artık ağlar) ele alınıyor.

Üçüncü kısım mimarileri genişletiyor: evrişimli ağlar (görüntü tanıma), gözetimli tekrarlayan ağlar (zamana göre geri yayılım, rezervuar hesaplama). Son kısım etiketsiz öğrenmeye dönüyor: Oja kuralı, rekabetçi öğrenme, öz-düzenleyen haritalar, k-ortalama kümeleme, otokodlayıcılar ve pekiştirmeli öğrenmeye giriş (zamansal fark öğrenmesi, Q-öğrenme). Zang'ın aksine kitap kanıt değil algoritma ve sezgi ağırlıklı; matematiksel titizlikten çok "nasıl çalışır ve neden mantıklı" sorusuna odaklanıyor.

## Key Summary (EN)

Developed from lecture notes taught at the University of Gothenburg, Mehlig presents neural networks in a roughly historical and conceptual sequence. Part I begins with associative-memory models: Hebbian-rule Hopfield networks, their stochastic/statistical-mechanics counterpart, and Boltzmann machines (including restricted Boltzmann machines). Part II moves to supervised learning — perceptrons, stochastic gradient descent via the chain rule and backpropagation, and then the practical challenges of deep learning (vanishing/exploding gradients, ReLU units, residual networks).

Part III extends the architectures covered: convolutional networks (for image recognition) and supervised recurrent networks (backpropagation through time, reservoir computing). The final part turns to learning without labels: Oja's rule, competitive learning, self-organising maps, k-means clustering, autoencoders, and an introduction to reinforcement learning (temporal-difference learning, Q-learning). Unlike Zhang's book, this text is algorithm- and intuition-driven rather than proof-driven, prioritizing "how it works and why it makes sense" over mathematical rigor.

Machine learning with neural networks
BERNHARD MEHLIG
Department of Physics
UNIVERSITY OF GOTHENBURG
Göteborg, Sweden 2021
arXiv:1901.05639v4 [cs.LG] 27 Oct 2021
Machine learning with neural networks
BERNHARD MEHLIG
Department of Physics
University of Gothenburg
Göteborg, Sweden 2021
ACKNOWLEDGEMENTS
This textbook is based on lecture notes for the course Artificial Neural Networks
that I have given at Gothenburg University and at Chalmers Technical University
in Gothenburg, Sweden. When I prepared my lectures, my main source was Intro-
duction to the theory of neural computation by Hertz, Krogh, and Palmer [1]. Other
sources were Neural Networks: a comprehensive foundation by Haykin [2], Horner’s
lecture notes [3] from Heidelberg, Deep learning by Goodfellow, Bengio & Courville
[4], and the online book Neural Networks and Deep Learning by Nielsen [5].
I thank Martin ˇCejka for typesetting the first version of my hand-written lecture
notes, Erik Werner and Hampus Linander for their help in preparing Chapter 8, Kris-
tian Gustafsson for his detailed feedback on Chapter 11, Nihat Ay for his comments
on Section 4.5, and Mats Granath for discussions about autoencoders. I would also
like to thank Juan Diego Arango, Oleksandr Balabanov, Anshuman Dubey, Johan
Fries, Phillip Gräfensteiner, Navid Mousavi, Marina Rafajlovic, Jan Schiffeler, Ludvig
Storm, and Arvid Wenzel Wartenberg for implementing algorithms described in
this book. Many Figures are based on their results. Oleksandr Balabanov, Anshu-
man Dubey, Jan Meibohm, and in particular Johan Fries and Marina Rafajlovic
contributed exam questions that became exercises in this book. Finally, I would
like to express my gratitude to Stellan Östlund, for his encouragement and criticism.
Last but not least, a large number of colleagues and students – past and present –
pointed out misprints and errors, and suggested improvements. I thank them all.
The present version does not contain exercises (copyright owned by Cambridge
University Press). The complete book is available from Cambridge University Press.
The cover image shows an input pattern designed to maximise the output of neurons
corresponding to one feature map in a given convolution layer of a deep convolu-
tional neural network [129,130]. See also page 149. Image by Hampus Linander.
Reproduced with permission.
CONTENTS
Acknowledgements v
Contents vii
1 Introduction 1
1.1 Neural networks . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 6
1.2 McCulloch-Pitts neurons . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 7
1.3 Activation functions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 9
1.4 Asynchronous updates . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 11
1.5 Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 11
1.6 Further reading . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 12
I Hopfield networks 13
2 Deterministic Hopfield networks 15
2.1 Pattern recognition . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 15
2.2 Hopfield networks and Hebb’s rule . . . . . . . . . . . . . . . . . . . . . . . . . . . . 16
2.3 The cross-talk term . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 22
2.4 One-step error probability . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 24
2.5 Energy function . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 27
2.6 Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 30
3 Stochastic Hopfield networks 32
3.1 Stochastic dynamics . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 32
3.2 Order parameters . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 33
3.3 Mean-field theory . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 35
3.4 Critical storage capacity . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 39
3.5 Beyond mean-field theory . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 46
3.6 Correlated and non-random patterns . . . . . . . . . . . . . . . . . . . . . . . . . . 47
3.7 Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 48
3.8 Further reading . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 48
4 The Boltzmann distribution 50
4.1 Convergence of the stochastic dynamics . . . . . . . . . . . . . . . . . . . . . . . . 51
4.2 Monte-Carlo simulation . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 53
4.3 Simulated annealing . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 55
4.4 Boltzmann machines . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 58
4.5 Restricted Boltzmann machines . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 62
4.6 Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 68
4.7 Further reading . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 68
II Supervised learning 71
5 Perceptrons 73
5.1 A classification problem . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 75
5.2 Iterative learning algorithm . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 78
5.3 Gradient descent for linear units . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 79
5.4 Classification capacity . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 82
5.5 Multi-layer perceptrons . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 85
5.6 Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 89
5.7 Further reading . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 90
6 Stochastic gradient descent 91
6.1 Chain rule and error backpropagation . . . . . . . . . . . . . . . . . . . . . . . . . 91
6.2 Stochastic gradient-descent algorithm . . . . . . . . . . . . . . . . . . . . . . . . . 94
6.3 Preprocessing the input data . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 97
6.4 Overfitting and cross validation . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 101
6.5 Adaptation of the learning rate . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 104
6.6 Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 106
6.7 Further reading . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 106
7 Deep learning 108
7.1 How many hidden layers? . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 108
7.2 Vanishing and exploding gradients . . . . . . . . . . . . . . . . . . . . . . . . . . . . 113
7.3 Rectified linear units . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 120
7.4 Residual networks . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 122
7.5 Outputs and energy functions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 124
7.6 Regularisation . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 127
7.7 Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 134
7.8 Further reading . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 134
8 Convolutional networks 136
8.1 Convolution layers . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 137
8.2 Pooling layers . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 139
8.3 Learning to read handwritten digits . . . . . . . . . . . . . . . . . . . . . . . . . . . 140
8.4 Coping with deformations of the input distribution . . . . . . . . . . . . . . . . 143
8.5 Deep learning for object recognition . . . . . . . . . . . . . . . . . . . . . . . . . . . 144
8.6 Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 147
8.7 Further reading . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 149
9 Supervised recurrent networks 150
9.1 Recurrent backpropagation . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 152
9.2 Backpropagation through time . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 155
9.3 Vanishing gradients . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 160
9.4 Recurrent networks for machine translation . . . . . . . . . . . . . . . . . . . . . 162
9.5 Reservoir computing . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 165
9.6 Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 168
9.7 Further reading . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 168
III Learning without labels 169
10 Unsupervised learning 171
10.1 Oja’s rule . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 171
10.2 Competitive learning . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 175
10.3 Self-organising maps . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 177
10.4 K -means clustering . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 184
10.5 Radial basis functions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 186
10.6 Autoencoders . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 190
10.7 Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 193
10.8 Further reading . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 194
11 Reinforcement learning 196
11.1 Associative reward-penalty algorithm . . . . . . . . . . . . . . . . . . . . . . . . . . 199
11.2 Temporal difference learning . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 202
11.3 Q -learning . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 206
11.4 Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 213
11.5 Further reading . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 213
