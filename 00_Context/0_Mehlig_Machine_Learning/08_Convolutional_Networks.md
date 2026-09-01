**Kaynak:** [[00_Context/0_Mehlig_Machine_Learning/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

8 Convolutional networks
Convolutional networks have been around since the 1980’s. They became widely
used after Krizhevsky et al. [109] won the ImageNet challenge (Section 8.5) with
a convolutional net. One reason for the recent success of convolutional networks
is that they have fewer connections than fully connected networks with the same
number of neurons. This has two advantages. Firstly, such networks are obviously
cheaper to train. Secondly, as pointed out above, reducing the number of connec-
tions regularises the network, it reduces the risk of overfitting.
Convolutional neural networks are designed for object recognition and image
classification. They take images as inputs (Figure 7.1), not just a list of attributes
(Figure 5.1). Convolutional networks have important properties in common with
networks of neurons in the visual cortex of the human brain [4]. First, there is a
spatial array of input terminals. For image analysis this is the two-dimensional
array of bits shown in Figure 8.1(a). Second, neurons are designed to detect local
features of the image (such as edges or corners for instance). The maps learned
by such neurons, from inputs to output, are referred to as feature maps. Since
these features occur in different parts of the image, one uses the same kernel (or
CONVOLUTION LAYERS 137
filter) for different parts of the image, always with the same weights and thresholds.
Since these kernels are local, and since they act in a translational-invariant way,
the number of neurons from the two-dimensional input array is greatly reduced,
compared with fully connected networks. Feature maps are obtained by convolution
of the kernel with the input image. Therefore, layers consisting of a number of feature
maps corresponding to different kernels are also referred to as convolution layers,
Figure 8.1(b).
Convolutional networks can have many convolution layers. The idea is that the
additional layers can learn more abstract features (Section 8.7). Apart from feature
maps, convolutional networks contain other types of layers. Pooling layers perform
local averages over the output of the convolution layers, to speed up learning by
reducing the number of variables. Convolutional networks may also contain fully
connected layers.
8.1 Convolution layers
Figure 8.1(a) illustrates how a feature map is obtained by convolution of the input
image with a kernel which reads a 3 × 3 part of the input image [5]. In analogy with
the terminology used in neuroscience, this 3×3 array is called the local receptive field
of the kernel. The outputs of the kernel from different parts of the input image make
up the feature map, here an 8×8 array of hidden neurons: neuron V11 connects to the
3 × 3 area in the upper left-hand corner of the input image. Neuron V12 connects to
a shifted area, as illustrated in Figure 8.1(a), and so forth. Since the input has 10 × 10
pixels, the dimension of the feature map is 8 × 8 in this example. The important
point is that the neurons V11 and V12, and all other neurons in this convolution layer,
share their weights and the threshold. In the example shown in Figure 8.1(a) there
are thus only nine independent weights, and one threshold. Since the different
hidden neurons share weights and thresholds, their computation rule is a discrete
convolution [4]:
Vi j = g
Ä 3∑
p =1
3∑
q =1
wp q xp +i −1,q + j −1 − θ
ä
. (8.1)
In Figure 8.1(a) the local receptive field is shifted by one pixel at a time. Sometimes it
is useful to use a larger stride [s1, s2], to shift the receptive field by s1 pixels horizontally
and by s2 pixels vertically. Also, the local receptive regions need not have size 3 × 3.
If we assume that their size is Q × P , and that s1 = s2 = s , the rule (8.1) takes the form
Vi j = g
Ä P∑
p =1
Q∑
q =1
wp q xp +s (i −1),q +s ( j −1) − θ
ä
. (8.2)
138 CONVOLUTIONAL NETWORKS
Figure 8.2: Illustration of summation in Equation (8.3). Each feature map has a
receptive field of dimension P ×Q ×R . There are K feature maps, each of dimension
I × J .
Figure 8.1(a) depicts a two-dimensional input array. For colour images there are
three colour channels, in this case the input array is three-dimensional, and the
input bits are labeled by three indices: two for position and the last one for colour,
xp q r . Usually one connects several feature maps with different kernels to the input
layer, as shown in Figure 8.1(b). The different kernels detect different features of the
input image, one detects edges for example, and another one detects corners, and so
forth. To account for these extra dimensions, one groups weights (and thresholds)
into higher-dimensional arrays (tensors). The convolution takes the form:
Vi j k = g
Ä P∑
p =1
Q∑
q =1
R∑
r =1
wp q r k xp +s (i −1),q +s ( j −1),r − θk
ä
(8.3)
(see Figure 8.2). All neurons in a given convolution layer have the same threshold.
The software package TensorFlow [110] is designed to efficiently perform tensor
operations as in Equation (8.3).
If one couples several convolution layers together, the number of neurons in
these layers decreases as one moves to the right. To avoid this, one can pad the
image (and the convolution layers) by adding rows and columns of bits set to zero [4].
In Figure 8.1(a), for example, one obtains a convolution layer of the same dimension
as the original image by adding one column each on the left-hand and right-hand
sides of the image, as well as two rows, one at the bottom and one at the top. In
general, the numbers of rows and columns need not be equal, so the amount of
padding is specified by four numbers, [p1, p2, p3, p4].
Convolution layers are trained with backpropagation. Consider the simplest case,
Equation (8.1). As usual, we use the chain rule to evaluate the gradients:
∂ Vi j
∂ wmn
= g ′(bi j )
∂ bi j
∂ wmn
(8.4)
POOLING LAYERS 139
Figure 8.3: Layout of a convolutional neural network for object recognition and
image classification (schematic). The inputs are stored in a 10 × 10 array. They feed
into a convolution layer with four different feature maps with 3 × 3 kernels, stride
[1 , 1], and zero padding. Each convolution layer connects to a 2 × 2 max-pooling
layer , with stride [2, 2] and zero padding. Between these and the output layer are
two fully connected hidden layers. After a figure in Ref. [5].
with local field bi j =
∑
p q wp q xp +i −1,q + j −1 − θ . The derivative of bi j is evaluated by
applying rule (5.25):
∂ bi j
∂ wmn
=
∑
p q
δmp δnq xp +i −1,q + j −1 (8.5)
In this way one can train networks with several stacked convolution layers too. It
is important to keep track of the summation boundaries. To that end it helps to
pad out the image and the convolution layers, so that the upper bounds remain the
same in different layers.
Details aside, the fundamental principle of feature maps is that the map is applied
in the same form to different parts of the image (translational invariance). In this
way, each weight in a given feature map is trained on different parts of the image.
This effectively increases the training set for the feature map and combats overfitting.
8.2 Pooling layers
Pooling layers process the output of convolution layers. A neuron in a pooling
layer takes the outputs of several neighbouring feature maps and compresses their
outputs into a single number [5]. There are no weights or thresholds associated with
the pooling layers. Max-pooling units, for example, take the maximum over several
nearby feature-map outputs. Instead, one may compute the root-mean square of
the map values (L2-pooling). Just as for convolution layers, we need to specify stride
and padding for pooling layers. Other ways of pooling are discussed in Ref. [4].
140 CONVOLUTIONAL NETWORKS
Figure 8.4: Examples of digits from the MNIST data set of handwritten digits [111].
The images were produced using MATLAB. Copyright for the data set: Y. LeCun and
C. Cortes.
Usually several feature maps are connected to the input. Pooling is performed
independently for each feature map [5]. The network layout looks like the one shown
schematically in Figure 8.3. In this Figure, the pooling layers connect to a number
of fully connected hidden layers that feed into the output neurons. There are as
many output neurons as there are classes to be recognised. This layout is similar to
the layout used by Krizhesvky et al. [109] in the ImageNet challenge (Section 8.5).
8.3 Learning to read handwritten digits
Figure 8.4 shows patterns from the MNIST data set of handwritten digits [111]. The
data set derives from a data set compiled by the National Institute of Standards and
Technology (NIST), of digits handwritten by high-school students and employees of
the United States Census Bureau. The data contains 60 000 images of digits, each
with 28 × 28 pixels, and a test set of 10 000 digits. The images are grayscale with 8-bit
resolution, so each pixel contains a value ranging from 0 to 255. The images in the
database were preprocessed. The procedure is described on the MNIST home page.
Each original binary image from the National Institute of Standards and Technology
was represented as a 20×20 gray-scale image, preserving the aspect ratio of the digit.
The resulting image was placed in a 28×28 image so that the centre-of-mass of the
image coincided with its geometrical centre. These preprocessing steps improve
the performance of the learning algorithm.
The goal of this Section is to show how the principles described up to now allow
neural networks to learn the MNIST data with low classification error, following
Ref. [5]. As described in Chapter 6, one divides the data set into a training set and
a validation set, here with 50 000 digits and 10 000 digits, respectively [5]. The
validation set is used for cross validation. The test data set allows to measure the
classification error after training. For this purpose one must use a data set that was
LEARNING TO READ HANDWRITTEN DIGITS 141
Figure 8.5: Energy functions for the MNIST training set (solid lines) and for the vali-
dation set (dashed lines) for a fully connected hidden layer with 30 neurons, and for a
similar algorithm, but with 100 neurons in the hidden layer. The data was smoothed
and the plot is schematic. The x -axis shows iterations. One iteration corresponds to
feeding one minibatch of patterns. One epoch consists of 50000/8192 ≈ 6 iterations.
Schematic, based on simulations performed by Oleksandr Balabanov.
not involved in the training. As described in Section 6.3, the inputs are preprocessed
further by subtracting the mean image averaged over the whole training set from
each input image [Equation (6.21)].
To find good parameter values and network layouts is one of the main difficulties
when training a neural network, and it usually requires a fair deal of experimenting.
There are recipes for finding certain parameters [112], but the general approach is
still trial and error [5]. Consider first a network with one hidden layer with ReLU
activation functions (Section 7.3), and a softmax output layer (Section 7.5) with ten
outputs Oi and energy function (7.38). Output Oi is interpreted as the probability
that the pattern fed to the network falls into category i . The networks are trained
with stochastic gradient descent with momentum, Equation (6.31). The learning
rate is set to η = 0 .001, and the momentum constant to α = 0 .9. The mini-batch size
[Equation (6.18)] equals 8192. Cross validation and early stopping is implemented
as follows: during training, the algorithm keeps track of the smallest validation error
observed so far. Training stops when the validation error becomes larger than the
minimum for a specified number of times, equal to 5 in this case.
Figure 8.5 shows how the training and the validation energies decrease during
training, for networks with 30 and 100 hidden neurons [5]. One epoch corresponds to
applying p patterns or p /mB = 50000/8192 iterations (Section 6.1). The energies are
a little lower for the network with 100 hidden neurons. But one observes overfitting
in both cases: after many training steps the validation energy is much higher than
the training energy. Early stopping caused the training of the larger network to abort
142 CONVOLUTIONAL NETWORKS
Figure 8.6: Convolutional network that classifies the handwritten digits in the
MNIST data set (schematic).
after 135 epochs, this corresponds to 824 iterations. The resulting classification
accuracy is about 97.2% for the network with 100 hidden neurons.
It is difficult to increase the classification accuracy by adding more hidden layers,
most likely because the network overfits the data (Section 6.4). This problem be-
comes more acute as one adds more hidden neurons. The tendency of the network
to overfit is reduced by regularisation (Section 7.6). For the network with one hidden
layer with 100 ReLU neurons, L2-regularisation improves the classification accuracy
to almost 98%.
Convolutional networks can be optimised to yield higher classification accuracies
than those quoted above. A convolutional network with one convolution layer
with 20 feature maps, a max-pooling layer, and a fully connected hidden layer
Figure 8.7: Some hand-written digits from the MNIST test set, misclassified by
a convolutional network that achieved an overall classification accuracy of 98%.
Target (top right), network output (bottom right). Data from Oleksandr Balabanov.
After a figure in Ref. [5], see also Fig. 2(c) in Ref. [111].
COPING WITH DEFORMATIONS OF THE INPUT DISTRIBUTION 143
with 100 ReLU neurons, similar to the network shown schematically in Figure 8.6,
gives classification accuracy only slightly above 98% after training for 60 epochs.
Adding a second convolution layer and batch normalisation (Section 7.6.5) gives a
classification accuracy is 98.99% after 30 epochs (this layout is similar to a layout
described in MathWorks [113]). The accuracy can be improved further by tuning
parameters and network layout, and by using ensembles of convolutional neural
networks [111]. The best classification accuracy found in this way is 99.77% [114].
Several of the MNIST digits are difficult to classify for humans too (Figure 8.7), so
we conclude that convolutional networks really work very well.
The above examples show also that it takes much experimenting to find the right
parameters and network layout, as well as long training times to reach the best
classification accuracies. It could be argued that one reaches a stage of diminishing
returns as the classification error falls below a fraction of a percent.
8.4 Coping with deformations of the input distribution
How well does a MNIST-trained convolutional network classify your own hand-
written digits? Figure 8.8(a) shows examples of digits drawn by colleagues at the
University of Gothenburg, preprocessed in the same way as the MNIST data. Using a
MNIST-trained convolutional network on these digits yields a classification accuracy
of about 90%, substantially lower than the classification errors quoted in the previous
Section.
A possible cause is that the digits in Figure 8.8(a) have a more slender stroke than
those in Figure 8.4. It was suggested in Ref. [115] that differences in line thickness
can confuse algorithms designed to read hand-written text [116]. There are different
methods for normalising the line thickness of hand-written text. Applying the
method proposed in Ref. [116] to our digits results in Figure 8.8(b). The algorithm
has a free parameter, T , that specifies the line thickness. In Figure 8.8(b) it was
taken to be T = 10, close to the average line thickness of the MNIST digits, which
is approximately T ≈ 9 .7. If we run a MNIST-trained convolutional network on a
data set of 60 digits with normalised line thickness, it fails on only two digits. This
corresponds to a classification accuracy of roughly 97%, not so bad – yet not as good
as the best results in Section 8.3. But note that this estimate of the classification
accuracy is not very precise, because the test set had only 60 digits. To obtain a
better estimate, more test digits are needed.
A question is of course whether there are other significant differences between
our non-MNIST hand-written digits and those in the MNIST data. At any rate,
the results of this Section raise a point of fundamental importance. We have seen
that convolutional networks can be trained to represent a distribution of input
144 CONVOLUTIONAL NETWORKS
Figure 8.8: (a) Non-MNIST hand-written digits, preprocessed like the MNIST digits.
b) Same digits, except that the thickness of the stroke was normalised (see text).
Data from Oleksandr Balabanov.
patterns with very high accuracy. But the network may not work as well on a data
set with a slightly different input distribution, perhaps because the patterns were
preprocessed differently, or because they were slightly deformed in other ways.
8.5 Deep learning for object recognition
Deep learning has become so popular in the last few years because deep convo-
lutional networks are good at recognising objects in images. Figure 8.9 shows a
frame from a movie taken by a data-collection vehicle. A convolutional network
was trained to recognise objects, and to localise them in the image by means of
bounding boxes around the objects.
Convolutional networks excel at this task, as demonstrated by the ImageNet
large-scale visual recognition challenge (ILSVRC) [117], a competition for object
recognition and localisation in images, based upon the ImageNet database [100].
The challenge is based on a subset of ImageNet. The training set contains more than
106 images manually classified into one of 1000 classes. There are approximately
1000 images for each class. The validation set contains 50 000 images.
The ILSVRC challenge consists of several tasks. One task is image classification,
DEEP LEARNING FOR OBJECT RECOGNITION 145
Figure 8.9: Object recognition using a deep convolutional network. Shown is a frame
from a movie recorded by a data-collection vehicle of the company Zenseact. The
neural net recognises pedestrians, cars, and lorries, and localises them in the image
by bounding boxes. Copyright © Zenseact AB 2020. Reproduced with permission.
to list the object classes found in the image. A common measure for accuracy is the
so-called top-5 error for this classification task. The algorithm lists the five object
classes it with the highest softmax outputs. The result is defined to be correct if
the annotated class is among these five. The error equals the fraction of incorrectly
classified images. Why does one not simply judge whether the most probable class
is the correct one? The reason is that the images in the ImageNet database are
annotated by a single-class identifier. Often this is not unique. The image in Figure
8.9, for example, shows not only a car but also trees, yet the image is annotated with
the class label car. The resulting classification ambiguity is reduced by considering
the top five softmax outputs, and checking whether the annotated class is among
them.
The tasks in the ILSVRC challenge are significantly more difficult than the digit
recognition described in Section 8.3. One reason is that the ImageNet classes are
organised into a deep hierarchy of subclasses. This results in highly specific sub
classes that can be difficult to tell apart. The algorithm must be very sensitive to
small differences between similar sub classes. We say that the algorithm must have
high inter-class variability [120]. Different images in the same sub class, on the other
hand, may look quite different. The algorithm should nevertheless recognise them
146 CONVOLUTIONAL NETWORKS
Figure 8.10: Smallest classification error for the ImageNet challenge [117]. The data
up to 2014 comes from Ref. [117]. The data for 2015 comes from Ref. [92], for 2016
from Ref. [118], and for 2017 from Ref. [119]. From 2012 onwards the smallest error
was achieved by convolutional neural networks. After Figure 1.12 in Goodfellow et
al. [4].
as similar, belonging to the same class. In other words, the algorithm should have
small intra-class variability [120].
Since 2012, algorithms based on deep convolutional networks won the ILSVRC
challenge. Figure 8.10 shows that the error has significantly decreased until 2017, the
last year of the challenge in the form described above. We saw in previous Sections
that deep networks are difficult to train. So how can these algorithms work so well?
It is generally argued that the recent success of deep convolutional networks is
mainly due to three factors.
First, there are now much larger and better annotated training sets available.
ImageNet is an example. Excellent training data is now recognised as one of the
most important factors. Companies developing software for self-driving cars and
systems that help to avoid accidents understand that good training sets are indis-
pensable. At the same time, it is a challenge to create high-quality training data,
because one must manually collect and annotate the data (Figure 8.11). This is
costly, also because it is important to have as large data sets as possible, in order to
reduce overfitting. In addition one must aim for a large variability in the collected
data. Second, the hardware is much better today. Deep networks are nowadays
implemented on single or multiple GPUs. There are even dedicated chips for this
purpose. Third, improved regularisation techniques (Section 7.6) help to fight over-
fitting, and skipping connections (Section 7.4) render the networks less susceptible
to the vanishing-gradient problem (Section 7.2).
The winning algorithm for 2012 was based on a network with five convolution
layers and three fully connected layers, using drop out, ReLU activation functions,
and data-set augmentation [109]. The algorithm was implemented on GPU proces-
SUMMARY 147
Figure 8.11: Reproduced from xkcd.com/1897 under the creative commons
attribution-noncommercial 2.5 license.
sors. The 2013 ILSVRC challenge was also won by a convolutional network [121],
with 22 layers. Nevertheless, the network has substantially fewer free parameters
(weights and thresholds) than the 2012 network: 4×106 instead of 60 × 106. In 2015,
the winning algorithm [92] had 152 layers. One significant new element in the layout
was the idea to allow connections that skip layers (Section 7.4). The best algorithms
in 2016 [122] and 2017 [119] used ensembles of convolutional networks, where the
classification is based on the ensemble average of the outputs.
8.6 Summary
Convolutional networks can be trained to recognise objects in images with high
accuracy. An advantage of convolutional networks is that they have fewer weights
than fully connected networks with the same number of neurons, and that the
weights of a given feature map are trained on different parts of the input images,
effectively increasing the size of the training set. This helps against overfitting.
Another view is that the hidden neurons are forced to agree on a particular choice
of weights, they must compromise. This yields a more robust training result.
It is sometimes stated that convolutional networks are now better than humans, in
that they recognise objects with lower classification errors than humans [123]. This
and similar statements refer to an experiment showing that the human classification
error in recognising objects in the ImageNet database is about 5.1% [124], worse
than the most recent convolutional neural-network algorithms (Figure 8.10).
148 CONVOLUTIONAL NETWORKS
This notion is not unproblematic, for several reasons. To begin with, the article
[123] refers to the 2015 ILSVRC competition, where the top scores were quite similar,
and it has been debated whether interpreting the rules of the competition in different
ways allowed competitors to gain an advantage. Second, and more importantly,
it is clear that these algorithms learn in quite a different way from humans. The
algorithms can detect local features, but since these convolutional networks rely
on translational invariance, they do not easily understand global features, and can
mistake a leopard-patterned sofa for a leopard [125]. It may help to include more
leopard-patterned sofas in the training set, but the essential difficulty remains:
translational invariance imposes constraints on what convolutional networks can
learn [125]. More fundamentally one may argue that humans learn differently, by
abstraction instead of going through very large training sets.
We have also seen that convolutional networks are sensitive to small changes in
the input data. Convolutional networks excel at learning the properties of a given
input distribution, but they may have difficulties in recognising patterns sampled
from a slightly different distribution, even if the two distributions appear to be very
similar to the human eye. Note also that this problem cannot be solved by cross
validation, because training and validation sets are drawn from the same input
distribution, but here we are concerned with what happens when the network is
applied to a input distribution different from the one it was trained on.
Here is another example illustrating this point: the authors of Ref. [126] trained a
convolutional network on perturbed grayscale images from the ImageNet data base,
adding a little bit of noise independently to each pixel (white noise) before training.
This network failed to recognise images that were weakly perturbed in a different
way, by setting a small number of pixels to white or black. But when we look at the
images we have no difficulties seeing through the noise.
Refs. [127, 128] illustrate intriguing failures of convolutional networks [5]. Sze-
gedy et al. [127] demonstrate that the way convolutional networks partition input
space can lead to unexpected results. The authors took an image that the network
classifies correctly with high confidence, and perturbed it slightly. The perturbation
was not random, but specifically designed to push the input pattern over a decision
boundary. The difference between the original and perturbed images (adversar-
ial images) is undetectable to the human eye, yet the network misclassifies the
perturbed image with high confidence [127]. This reflects the fact that decision
boundaries are always close in high-dimensional input space.
Figure 1 in Ref. [128] shows images that are completely unrecognisable to the
human eye. Yet a convolutional network classifies these images with high confidence.
This illustrates that there is no telling what a network may do if the input is far away
from the training distribution. Unfortunately the network can sometimes be highly
confident yet wrong. Nevertheless, despite these problems, deep convolutional
FURTHER READING 149
networks have enjoyed tremendous success in image classification during the past
years, and they have found widespread use in industry and science.
Finally, the fundamental mechanisms of deep learning are quite well understood,
but many open questions remain. It is fair to say that the theory of deep learning
has somewhat lagged behind the associated practical successes, although some
progress has been made in recent years.
8.7 Further reading
The online book of Nielsen [5] is an excellent introduction to convolutional neural
networks, and guides the reader through all the steps required to program a convo-
lutional network to recognise hand-written digits. Nielsen’s chapter Deep Learning
[5] is the main source for Section 8.3.
What do the hidden layers in a convolutional layer actually compute? Feature
maps that are directly coupled to the inputs detect local features, such as edges
or corners. Yet it is unclear precisely how hidden convolutional layers help the
network to learn. To which input features do the neurons of a certain hidden layer
react most strongly? Input patterns chosen to maximise the outputs of neurons in a
given layer [129, 130] reveal intricate geometric structures that defy straightforward
interpretation. An example is shown on the cover of this book, see also Exercise 8.7.
It has been suggested that more general models, normally used for natural-
language processing, may outperform convolutional nets in image-processing tasks
when there is enough data [131]. An advantage is that these models do not rely on
translational invariance, unlike convolutional networks.
150 SUPERVISED RECURRENT NETWORKS
