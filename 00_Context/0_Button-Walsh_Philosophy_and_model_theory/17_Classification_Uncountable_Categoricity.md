**Kaynak:** [[00_Context/0_Button-Walsh_Philosophy_and_model_theory/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

## 17 Classification and uncountable categoricity

A cursory glance at contemporary model theory indicates an intense focus on _classi-
fication_. ‘Classification’ is literally the term which Shelah used to describe his work,
concerning the number of models of a given complete theory in a given cardinality.
And Zilber’s ambitious Trichotomy Conjecture predicted that the phenomenon of
_uncountable categoricity_ —the situation where there is only one model of a given un-
countable cardinality—can be classified into exactly three basic kinds. This chapter
considers both Shelah’s programme (§17.2) and uncountable categoricity (§17.3).
Classification is, though, a near-ubiquitous phenomena, not only in model the-
ory, but in other areas of mathematics. Despite this, it has been largely neglected
by philosophers of mathematics. So, we begin the chapter by presenting a general
framework for conceiving of classification within mathematics. This will allow us
to discuss the extent to which contemporary developments in model theory can be
seen as instances of classificatory activity, so conceived.

### 17.1 The nature of classification

If one asks a mathematician what she is working on, often the answer will be that
she is trying to prove or refute a given conjecture. But, equally as often, the answer
will be that she is seeking to classify a certain kind of mathematical object.
Obviously these two activities—proving and classifying—are complementary
in several ways. Most immediately, a successful classification programme will even-
tually result in the articulation and proof of a theorem. Equally, the resolution of a
long-standing conjecture might be rendered feasible by means of the classification
of some related phenomena. And proofs _themselves_ are often classified in proof the-
ory and complexity theory.
These connections between proving and classifying raise two basic questions.
The first basic question is this: _What are the means and aims of classification?_ This
question can be made vivid by thinking about how we answer the corresponding
question about proof. We are likely to say that _one_ characteristic aim of proof is
the extension of knowledge, and this aim is effected via formal deductions from


414 classification and uncountable categoricity

known axioms.^1 Even this brief answer suggests that understanding the activity
of classification will involve two things: ( _a_ ) identifying the aims of classification,
and ( _b_ ) identifying the various mechanisms by which this aim is typically achieved.
Given what we have said about proof, we might anticipate that answers to ( _b_ ) are ac-
cessible by inspection of mathematical texts, in a way in which answers to ( _a_ ) need
not be.
The second basic question is this: _Can classification be reduced to proof?_ For ex-
ample, one might wonder whether, for every classification programme, there is a
specific theorem such that the classificatory programme is successful iff the theo-
rem is successfully proven from accepted axioms.
The aim of this section is to suggest an answer to the first basic question, which
then naturally recommends an answer to the second.

```
Paradigmatic examples and the general mechanism
```
We begin by setting down three paradigmatic examples of classification, from three
different branches of mathematics: algebra, probability, and topology.
_Algebra._ In 1910, Steinitz classified the uncountable algebraically closed fields,
such as the complex numbers. Steinitz’s result says that two uncountable alge-
braically closed fields are isomorphic iff they have the same characteristic and the
same cardinality.^2
_Topology._ A second well-known example is the classification of compact con-
nected surfaces.^3 This states: any compact connected surface is homeomorphic
to the sphere, a connected sum of _n_ -tori, or a connected sum of _n_ -projective
planes, and no two distinct surfaces on this list are homeomorphic to one an-
other. This result can also be stated as follows: two compact connected surfaces
are homeomorphic iff they have the same Euler characteristic and either both are
orientable or both are non-orientable. Both of the invariants—Euler characteristic
and orientability—can be represented as an integer.^4
_Probability._ A final celebrated example of classification is Ornstein’s classifica-
tion of isomorphism of Bernoulli shifts. Suppose you have an _n_ -sided die, with
faces 1, ..., _n_ , and suppose you roll it once per minute, with no first roll, so that the
sequences _x_ =(..., _x_ − 2 , _x_ − 1 , _x_ 0 , _x_ 1 , _x_ 2 , _x_ 3 , ...)correspond to individual histories of

(^1) Obviously there are other aims too, like ‘being explanatory’.
(^2) Some fields are such that one can have 1 +...+ 1 =0. For these fields, the smallest number of times 1
may be summed with itself to produce0 is called the _characteristic_ of the field. Fields that do not exhibit
this property are said to be of _characteristic zero_. Steinitz’s result follows from considerations regarding so-
called transcendence bases which feature in almost every introductory algebra textbook, e.g. Lang (2002:
§viii .1) and Hungerford (1980: §vi .1, esp. Theorem 1.12, p.317).
(^3) For a discussion of the history, from Möbius onwards, see e.g. Gallier and Xu (2013: 151–7).
(^4) This result is mentioned in many introductory topology texts, e.g. Kinsey (1993: 79, 107) and Lawson
(2003: 120). For an accessible proof, see Munkres (2000: ch.12).


```
17.1. the nature of classification 415
```
die-rolling. Let Ω denote the set of all such sequences. Since we assumed that there
is no first roll, there is a natural operation of ‘fast-forwarding’ on this space Ω given
by moving the _i_ thentry in a sequence to the _i_ + 1 thslot.^5 Where _p_ 1 , ..., _pn_ are posi-
tive real numbers which sum to one, define a corresponding probability _μ_ by saying
that there is probability _pj_ 1 ⋅ _pj_ 2 ⋅...⋅ _pjk_ of landing _j_ 1 on roll _t_ 1 , and landing _j_ 2 on
roll _t_ 2 , ..., _jk_ on roll _tk_ , for distinct rolls. The pair(Ω, _μ_ )is called a _Bernoulli shift_ ,
where the word ‘shift’ refers to the fast-forwarding operation.^6 Where(Ω, _μ_ )is a
Bernoulli shift, its _entropy_ is given by−∑ _ni_ = 1 _pi_ log _pi_. In 1970, Ornstein showed that
any two Bernoulli shifts(Ω 1 , _μ_ 1 )and(Ω 2 , _μ_ 2 )—which may concern dice with
different numbers of sides—are metrically isomorphic iff they have the same en-
tropy.^7 To say that they are ‘metrically isomorphic’ is to say that there is a bijection
Ω 1 Ð→Ω 2 which preserves probabilities and respects fast-forwarding almost ev-
erywhere and whose domain and range need only be measure one sets.^8
These three examples suggests the following general mechanism of classification.
The initial data are given by a class _C_ of mathematical objects and an equivalence
relation _E_ on _C_ induced by a certain type of bijection between the objects. The
classification is then effected by identifying two further pieces of data: a class _Inv_ of
invariants, and an assignment of invariants in _Inv_ to objects in _C_ that respects equiv-
alence. Writing the assignment as _ι_ : _C_ Ð→ _Inv_ , the requirement is that _E_ ( _X_ , _Y_ )iff
_ι_ ( _X_ )= _ι_ ( _Y_ ), as _X_ , _Y_ ranges over the classified objects in _C_.^9 So, in our examples:

```
C E Inv
```
_Algebra_ uncountable
algebraically closed
fields

```
isomorphism characteristic and
cardinality
```
_Topology_ compact connected
surfaces

```
homeomorphism Euler characteristic
and orientability
```
_Probability_ Bernoulli shift metric
isomorphism

```
entropy
```
Several modifications of this general framework are possible. First, one might con-
sider notions of partial classification in which just the forward direction of the

(^5) For instance, if _n_ =3, then we map(..., 3, 2, 1, 3, 2, 1, ...)to(..., 1, 3, 2, 1, 3, 2, ...).
(^6) In contexts where one is considering a wider class of operations, one might rather use ‘Bernoulli
shift’ to refer to the triple formed by adding the fast-fowarding operation to the pair(Ω, _μ_ ).
(^7) Ornstein (1970), Petersen (1983: 281), and Rudolph (1990: §7).
(^8) Petersen (1983: 4) and Rudolph (1990: 7).
(^9) We have seen this kind of general framework set out in Rosendal (2011: 1252) and Gowers (2008: 51).
We learnt of the Bernoulli shift example from Rosendal and the surfaces example from Gowers.


416 classification and uncountable categoricity

biconditional ‘ _E_ ( _X_ , _Y_ )iff _ι_ ( _X_ ) = _ι_ ( _Y_ )’ is available. Second, one might liber-
alise _E_ ( _X_ , _Y_ )so that the equivalence relation need not be given by a bijection be-
tween _X_ and _Y_.^10 More radically, one might allow that _E_ ( _X_ , _Y_ )is not an equivalence
relation at all, but rather a metric-like similarity relation which expresses that _X_ , _Y_
are close to one another in some sense.^11 So far as we can tell, everything we say in
what follows is compatible with any of these modifications.

```
Calculable mechanisms
```
The general mechanism described above is a good start for understanding classifi-
cation programmes. However, it is excessively permissive. To illustrate the point,
let _C_ be any class of objects _C_ , with any equivalence relation _E_ on them; put a well-
order⊲on _C_ by appealing to the Axiom of Choice and let _Inv_ ⊆ _C_ consist of those
elements of _C_ which are the⊲-least elements of their _E_ -equivalence class; finally,
let _ι_ : _C_ Ð→ _Inv_ send each element to the unique element of _C_ with which it is _E_ -
equivalent. This will satisfy the minimum conditions stated above, but it does no
useful classificatory work. Indeed, if such uninteresting appeals to Choice sufficed,
then all classification problems would be immediately and trivially resolved.
This problem arises because we have not yet imposed any constraints on the na-
ture of the invariants and their relations to the original class of objects. Indeed, the
issue here is similar to what happens by (mistakenly) regarding an _arbitrary_ deduc-
tion from entirely _arbitrary_ axioms as sufficient for engaging in serious mathemati-
cal proof. Not only would this prevent you from accurately describing the activity
of proof in mathematics; it would also blind you to the _aims_ of proof.
To deal with this, we must ask: _What distinguishes the invariants and assignments
used in classification in mathematics from arbitrary invariants and assignments?_ To
begin answering this, consider Ornstein’s classification of isomorphism of Bernoulli
shifts. The invariant here is entropy, which is given by−∑ _ni_ = 1 _pi_ log _pi_. Evidently,
this is an easily calculated function of the tuple( _p_ 1 , ..., _pn_ ), and this tuple is itself
prominent in the canonical presentation of the system(Ω, _μ_ ).
This observation leads directly to the following thesis concerning how we should
view mathematical classification. The invariants _Inv_ and the function _ι_ used in clas-
sifications in mathematics are such that:

```
(a)ascertaining the particular invariant assigned to an object is easily calculable
from a canonical presentation of that object, i.e. ι ( X )is calculable from a
canonical presentation of X ; and,
```
(^10) One does just this in the theory of Borel equivalence relations; see e.g. Gao (2009). A representative
example is when _X_ , _Y_ are sequences of natural numbers and we define: _E_ 0 ( _X_ , _Y_ )iff there is some point
after which _X_ and _Y_ agree.
(^11) This is what happens in Gowers’ (2000) notion of ‘rough classification’.


```
17.1. the nature of classification 417
```
```
(b)the comparison of invariants can likewise be easily effected, i.e. it is easy to
determine whether ι ( X )= ι ( Y ).
```
This thesis resonates well with our other paradigmatic examples. In the example
of compact connected surfaces, we think about the surface as ‘triangulated’, i.e. as
broken up into a finite number of triangles, lines, and points, from which the Eu-
ler characteristic (for example) may be calculated. In the example of algebraically
closed fields, we conceive of the algebraically closed field as a set-sized structure
which possesses a cardinality which may be easily ascertained.^12
But the strongest evidence for our thesis comes from the fact that mathemati-
cians routinely talk about classification in patently computational terms, even in
areas far removed from mathematical logic and the theory of computation. For in-
stance, here is the start of a recent research monograph in differential topology:

A classification of manifolds up to diffeomorphism requires the construction of a com-
plete set of algebraic invariants such that: [¶] (i) the invariants of a manifold are com-
putable, [¶] (ii) two manifolds are diffeomorphic if and only if they have the same invari-
ants, [...].^13

Similarly, in speaking of classifications, Gowers writes that ‘as often as possible one
should actually be able to establish when _ι_ ( _X_ )is different from _ι_ ( _Y_ ). There is not
much use in having a fine invariant if it is impossible to calculate’.^14
It is worth noting that our thesis presupposes that canonical presentations are
readily available to us (somehow). This is no surprise: the thesis would be fairly
ineffectual otherwise, since proceeding by way of the canonical presentations might
be just as difficult as enumerating all of the equivalence classes.
Now, someone might worry that a ‘canonical presentation’ can end up misidenti-
fying the ‘topic’ of the relevant mathematical enquiry. For instance, in the topolog-
ical case, one might have thought one was studying the _surfaces themselves_ , and not
their triangulations. Relatedly, one might worry that what counts as a ‘canonical
presentation’ is historically contingent: a contemporary ‘canonical presentation’
of a surface might not have counted as ‘canonical’ in previous eras.
These are not, though, serious objections _against_ the thesis. After all, exactly the
same issues pervade our ordinary ways of talking about proofs. In developing inno-
vative proof techniques, one often appeals to new resources, and this can generate
a concern that the topic has been changed. For instance, Bolzano used the com-
pleteness of the real line to establish the intermediate value theorem, where previ-
ous mathematicians had sought to use considerations more closely related to the

(^12) This is in contrast to working with an all-encompassing ‘universal domain’, as is the default in some
treatments of algebraically closed fields; see Weil (1946: 242ff).
(^13) Ranicki (2002: 1). But for some examples in topology where the invariants are not computable, see
Poonen (2014: §7 pp.223ff).
(^14) Gowers (2008: 54), with variables changed to match preceding text.


418 classification and uncountable categoricity

geometry of curves themselves.^15 Likewise, students nowadays reason about prod-
ucts as sets of ordered pairs, or as objects of a certain category, whereas previous
eras might have rather talked about shapes of different dimensions. Phenomena like
these generate deeply interesting philosophical questions, such as _are proofs which
do not introduce new concepts better?_ , and _how should we think about theory change in
mathematics?_^16 But, presumably everyone accepts that this phenomena is present
in the activity of proving. It should not be surprising that the same is true of the
activity of classifying.
Now, the thesis is a proposal for how to think about the _activity_ of classification
within mathematics. But it also naturally suggests a conception of the _aim_ of clas-
sification: classification is valuable because it leaves us better placed to calculate
whether objects _X_ and _Y_ are (dis)similar, in that we are better positioned to calcu-
late whether _E_ ( _X_ , _Y_ ). So, on this picture, the aim of the classification of compact
surfaces was to leave us better placed to tell whether two surfaces are (dis)similar,
by calculating and comparing their Euler characteristic and orientability.
Of course, this tells us nothing about _why_ we might value the ability to deter-
mine whether various objects objects are (dis)similar. But this is just as it should
be: the answer to that general question will vary from case to case. Our reasons
for valuing the capacity to discern similar from dissimilar surfaces may be very dif-
ferent from our reasons for valuing the capacity to discern similar from dissimilar
Bernoulli shifts. However, all of our examples presuppose that one task for mathe-
matics is to provide a taxonomy of the most frequently encountered mathematical
structures.
This view of classification also helps to explain some initially puzzling remarks
about the kind of _completeness_ which classifications sometimes give us. For in-
stance, Steinitz motivates his classification of algebraically closed fields as follows:

Our program in this work is to obtain an overview of all possible fields and to ascertain
their relations to one another with regard to their main features.^17

We need to understand Steinitz’s idea of _obtaining an overview_ of all possible fields.
At its most basic, we need to say why the truism ‘all fields are isomorphic to the
reals, or to some other field’ fails to provide an overview in the relevant sense. Our
thesis suggests the following reading. The hope is that calculating invariants will
provide an easy way to test for isomorphism of fields, where for each invariant there
is also a simple example of a field with that invariant. More generally, classifications
yield the relevant type of _completeness_ , when it is possible both to describe all the
invariants and provide examples for each invariant.

(^15) See Lützen (2003: 174–5).
(^16) Arana and Detlefsen (2011) and S. R. Smith (2015) provide really interesting work on these questions.
(^17) Steinitz (1910: 167).


```
17.2. shelah on classification 419
```
Conversely, this suggests a way in which classification can be _unsuccessful_ :
namely, when it turns out that identifying and individuating the proposed invari-
ants is just as hard as discerning the similarity of the classified objects in the first
place. In short: successful classification must employ invariants that are somehow
‘simpler’ than the objects to be classified. And it is notable that in our paradigmatic
examples of classification, all the invariants were finite sequences of natural num-
bers, integers, or real numbers. It would, of course, be lovely to have some greater
understanding of what makes something fit to be an invariant; that is, to have a
deeper grasp of the relevant notion of ‘simplicity’. But, returning once again to the
parallel with proof, this question may well be just as hard as the question of what
makes something fit to be an axiom.

```
The relationship to theorem-proving
```
We began this section by raising a basic question, namely: _What are the means and
aims of the activity of classification?_ Briefly stated, our answer is: _To provide ‘easily cal-
culable’ E and Inv, for certain objects C, and explicit examples of each member of E._ We
now show how our answer to this first question suggests an answer to the second
basic question which we raised at the start of this section, namely: _Can classification
be reduced to proof?_ Having specified all the components of the mechanism—the
equivalence relation, _E_ , the invariants _Inv_ , and the mapping _ι_ —there is a clear theo-
rem whose proof is necessary for completing the classification. However, providing
that theorem is not _sufficient_ for success, since the mapping must be ‘easily calcula-
ble’, and one ought to be able to find explicit members of each equivalence class.
Moreover, the invariants are rarely given at the outset of the enquiry. Instead, a
classification problem begins with the objects-to-be-classified, _C_ , and the similar-
ity relation, _E_ , and the task is to find the appropriate invariants. This is one good
reason to resist offering a one-one ‘reduction’ of classification problems to specific
theorems-to-be-proved. But there is also a second good reason. Whereas the proof
of a theorem from accepted axioms is ultimately an all-or-nothing affair, the suc-
cess of a classification programme is a matter of degree. After all, one can debate
the degree to which something is ‘easily calculable’, and one can debate the degree
to which an element of each equivalence class has been explicitly described.

### 17.2 Shelah on classification

In the previous section, we considered the nature of classification in mathematics
in general. We now focus on classification in model theory. In this section, we de-
scribe Shelah’s work on classification, and suggest a way to conceptualise it using
the rubric from the previous section.


420 classification and uncountable categoricity

```
Shelah and Morley’s conjecture
```
Shelah’s classification programme culminated in the resolution of the Morley con-
jecture. Morley had conjectured that the number of non-isomorphic models of a
complete theory, of a given uncountable cardinality, does not decrease as the cardi-
nality increases.^18 Let us write _I_ ( _T_ , _κ_ )for the number of non-isomorphic models of
_T_ whose underlying domain has cardinality _κ_. So, _I_ ( _T_ , _κ_ )is the number of isomor-
phism types of models of _T_ , where we restrict our attention to models of size _κ_. In
this terminology, Morley had conjectured that if _κ_ ≤ _λ_ are both uncountable, then
_I_ ( _T_ , _κ_ )≤ _I_ ( _T_ , _λ_ ). In the early 1980s, Shelah proved Morley’s conjecture when _T_ is
countable; and the proof is contained in his _Classification Theory and the Number of
Nonisomorphic Models_.^19
The machinery which Shelah used to derived the Morley conjecture also led to
a result which he called the _Main Gap Theorem_ , and stated this way in 1985:^20

Theorem 17.1(Main Gap Theorem): _Let T be a complete theory in a countable lan-
guage. Then one and only one of the following happens:_

```
(1) I ( T , κ )= 2 κ, for all uncountable κ.
(2) I ( T ,א γ )≤ב ω 1 (max(∣ γ ∣, ω )) , and T has a structure theory with countable
depth.
```
In the next subsection, we will discuss the philosophical significance which Shelah
ascribed to the Main Gap Theorem. First, we must explain the terminology intro-
duced in condition (2).
The expressionא _γ_ denotes the _γ_ thinfinite cardinal (cf. §1.b). The cardinal
ב _α_ ( _κ_ )is a relativisation of the usual beth function, enumerating the cardinality of
successive iterations of the power-set operator starting at _κ_. To be more exact, we
offer the following recursive definition:

```
ב 0 ( κ )= κ , ב α + 1 ( κ )= 2 ב α ( κ ), ב α ( κ )=sup β < α ב β ( κ ), if α limit ( beth )
```
However, the notion of ‘having a structure theory’—which we should read as syn-
onymous with ‘being classifiable’—will take require rather more explanation.
The key idea behind Shelah’s notion of ‘having a structure theory’, or ‘being clas-
sifiable’, is that the relevant invariants are ‘cardinal-like invariants’. To motivate this

(^18) The conjecture is problem 19 in H. Friedman (1975: 116), where it is attributed to Morley. As far as
we know, Morley never himself published this conjecture.
(^19) Shelah (1990); the first edition was Shelah 1978.
(^20) Shelah (1985: 228); see also Shelah (1990: 620), Harrington and Makkai (1985: 140), and Baldwin
(1988: 3).


```
17.2. shelah on classification 421
```
idea, we start with Steinitz’s example of an algebraically closed field of a fixed charac-
teristic, discussed in §17.1. To classify these, we merely need a single cardinal num-
ber, providing the size of the field’s underlying domain. But suppose we want a the-
ory which states that there are multiple disjoint algebraically closed fields of fixed
characteristic. To describe the models of this ‘disjoint theory’, we need to say how
many fields of each cardinality we have. This is naturally represented by a function
from cardinals less than or equal to the size of the domain, to these same cardinals.
We can indefinitely iterate this idea of partitions, and with each step of the itera-
tion the invariants become slightly more complex. To make this precise, we define
the set of _cardinal-like invariants Invα_ ( _κ_ ) _of depth α_ , by recursion on _α_. Intuitively,
_α_ records the length of the iterative process, while _κ_ records that these invariants
are reserved for models whose underlying domain has cardinality _κ_. The recursive
definition proceeds in three steps:

- _Inv_ 0 ( _κ_ )is the set of all cardinals _λ_ ≤ _κ_ , which for ease we write just as the set
    { _λ_ : _λ_ ≤ _κ_ }
- _Invα_ + 1 ( _κ_ )is the set of sequences of length less than or equal to the cardinality
    of the continuum, with each element of the sequence being a function _f_ :
    _Invα_ ( _κ_ )Ð→{ _λ_ : _λ_ ≤ _κ_ }
- _Invα_ ( _κ_ )is⋃ _β_ < _αInvβ_ ( _λ_ ), when _α_ is a limit.

Finally, we define _Invα_ as the union of _Invα_ ( _λ_ )as _λ_ ranges over all infinite cardinals.
This notion of cardinal-like invariance is the key component to Shelah’s expli-
cation of ‘having a structure theory’ or ‘being classifiable’.^21 In particular, Shelah
stipulates that _T_ has a structure theory of depth _α_ if there is a function _ι_ from the
set of models of _T_ to _Invα_ such that:

```
(a)if M has size κ then ι ( M )is in Invα ( κ ), and
(b)if M , N are two models of T , then M is isomorphic to N iff ι ( M )= ι ( N ).
```
Finally, we say that _T has a structure theory_ if there is an _α_ such that _T_ has a structure
theory of depth _α_. This is the definition of ‘having a structure theory’ which occurs
in condition (2) of the Main Gap Theorem 17.1. In terms of the intuitive picture
of the ‘iterated partitions’, the constraint in condition (2) is that the iteration need
only proceed a countable number of times.
Given this, Shehah’s restriction to ‘the cardinality of the continuum’, in the defi-
nition of _Invα_ + 1 , might seem _ad hoc_. Elsewhere, though, Shelah relaxes this clause,
allowing the continuum to be replaced with any fixed infinite cardinality.^22 The re-
laxed version captures the motivating idea, while the more specific version is the
one which operates in the Main Gap Theorem 17.1.

(^21) Shelah (1985: 228); cf. Shelah (1987b: §1.4 p.155, 2009b: §2.9 p.25) and Baldwin (1987b: 5).
(^22) Shelah (1987b: §1.4 p.155); Shelah uses _χ_ for the parameter which replaces the cardinality of the
continuum. So, the successor step reads: _Invα_ + 1 ( _κ_ )is the set of sequences of length≤ _χ_ , with each element
of the sequence being a function _f_ : _Invα_ ( _κ_ )Ð→{ _λ_ : _λ_ ≤ _κ_ }.


422 classification and uncountable categoricity

```
Shelah’s classification programme
```
Shelah had a deep interest in the boundary between _classifiable_ and _non-classifiable_
theories. He believed that this could be explicated by his Main Gap Theorem 17.1.
In particular, he suggested the following:

```
(a)theories are classifiable iff they do not have ‘too many models’;
(b)when theories are classifiable, we can characterise each of their models up to
isomorphism by invariants which are ‘cardinal-like’.
```
Straightforwardly, claim (a) corresponds with condition (1) of the Main Gap The-
orem 17.1, and claim (b) corresponds with condition (2) of the Theorem.
Moreover, we can explain Shelah’s classification programme in terms of the gen-
eral framework from §17.1. The objects to be classified, _C_ , are models of a certain
complete theory in a countable signature. The equivalence relation, _E_ , is isomor-
phism. And Shelah’s invariants, _Inv_ , are the ‘cardinal-like’ invariants, _Invα_ , described
above. Then clause (a) purports to establish a limit on when the theories are too
‘wild’ for us to hope for a successful classification programme, and clause (b) aims
to deliver a classification in ‘tame’ cases.
However, there is a wrinkle in the carpet. In §17.1, we argued for a connection
between classification and calculability. Shelah’s cardinal-like invariants do not,
though, seem to have anything to do with calculability. So, as it stands, Shelah’s
programme does not exactly fit our rubric.
There is, though, much more to say here. In the next subsection, we shall argue
that clause (a) of Shelah’s programme is rather unmotivated. And we shall then
argue that a _better_ -motivated condition actually fits the rubric of §17.1 rather well.

```
Unclassifiability as having too many models
```
Shelah does not say much by way of support for his explication of the idea that
‘having a structure theory’ amounts to classifiability, in any intuitive sense. The
single consideration which he repeats in three places is this proposition:^23

Proposition17.2: _Given_ GCH _, if there is infinite κ such that I_ ( _T_ , _λ_ )= 2 _λfor all λ_ ≥ _κ,
then T does not have a structure theory._

The proof of this proposition is elementary, but for ease of readability we defer its
proof until §17.a. The statement of the proposition is related to the following idea
about the nature of classification: _if a theory has too many models, then it is not classi-
fiable._ Proposition 17.2 is then supposed to lend further credence to the extensional
correctness of Shelah’s analysis of ‘having a structure theory’ or ‘being classifiable’.

(^23) Shelah (1985: 228); cf. Shelah (1987b: §1.6 p.155, 2009b: 25–6 immediately below Corollary 2.12).
GCH is the generalised continuum hypothesis (defined in footnote 36 of chapter 8).


```
17.2. shelah on classification 423
```
The intuitive idea here is essentially point (a), above: _unclassifiability is having
too many models_. We think, though, that this idea is rather unmotivated.
We begin by noting Hodges’ challenge to (a). In particular, Hodges notes that
group theorists have provided an apparently successful classification of ‘totally pro-
jective abelian _p_ -groups’, _despite_ the fact that there are 2 _λ_ of them in any uncount-
able cardinality _λ_.^24 However, there is some indirect evidence that group-theorists’
views on this matter are less than univocal. For instance, Problem 51 in the 1973 ver-
sion of Fuchs’ _Infinite Abelian Groups_ was to ‘Characterize the separable _p_ -groups
by invariants’.^25 In 1974, Shelah showed that for regular uncountable _λ_ there are 2 _λ_
non-isomorphic separable _p_ -groups of cardinality _λ_.^26 Shelah wrote of this that ‘the
proof indicates to me that separable _p_ -groups cannot be characterized by any rea-
sonable set of invariants. (This answers Problem 51 of Fuchs [...])’.^27 In the later
editions of Fuchs’ book, Problem 51 no longer appears; in its place, special cases of
Shelah’s result are given.^28
So the situation is this: we apparently classified the totally projective abelian _p_ -
groups, despite there being many of them; but then Shelah proved that there were
also maximally many separable _p_ -groups, and it appears as though group-theorists
have inferred from this that these groups are not classifiable. In short: our two anec-
dotal examples from group theory seem to point us in different directions, and we
cannot hope to infer too much from them concerning (a). Indeed, if we were se-
rious in the project of trying to determine whether mathematical practice (be it in
group theory, or elsewhere) counted for or against (a), we would need to carry out
a proper survey.
Lacking such a survey, we will instead consider a _general_ argument for (a). The
argument is due to Hrushovski, and is mentioned by Hodges.^29 Hrushovski’s ar-
gument begins from the reasonable supposition that there is no sense in which
_all models_ can be classified. Now, if we are inclined to restrict attention to countable
signatures anyway, then we may as well view all structures under consideration as
structures in a maximally generous signature with countably many constant sym-
bols and countably many relation and function symbols of all numbers of places.
And for a given infinite cardinality _κ_ , there are exactly 2 _κ_ -many non-isomorphic
models in that signature. By appeal to the premise that there is no reasonable sense
in which one can usefully classify all models of a given infinite cardinality, one then
concludes that the same fate befalls any theory which has just as many models.
This argument is not very robust though. For instance, if the continuum hypoth-

(^24) Hodges (1987: 231, 221).
(^25) Fuchs (1973: 55).
(^26) Shelah (1974b: Theorem 1.2 pp.245–6).
(^27) Shelah (1974b: 244).
(^28) Fuchs (2015: 332–3)
(^29) Hodges (1987: 232).


424 classification and uncountable categoricity

esis holds, then there are exactly 2א^0 countable well-orders (up to isomorphism).
But it does not seem that anyone has _ever_ thought that the classification of the
countable well-orders was ever an open question. Indeed, one when learns very
elementary set theory, one learns various methods for determining whether two
well-orders are isomorphic, or if rather one is isomorphic to a proper initial seg-
ment of the other. In short: the countable well-orders are extremely well-behaved,
despite the fact that they can have ‘too many’ models. And this sinks the idea that
unclassifiability, in general, amounts to having too many models.
Consequently, we must abandon principle (a). Shelah’s programme will need to
be thought of in slightly different terms.

```
Unclassifiability and definability
```
We just considered Hrushovski’s attempt to connect unclassifiability with having
too many models, in general. But perhaps a restricted version of this argument can
be rescued, by describing a principled difference between countable well-orders,
on the one hand, and countable structures in a countable signature, on the other,
which explains why the former are ‘tame’ and the latter are too ‘wild’ to classify.
With this in mind, we turn to recent work on generalised descriptive set theory.
The idea is to view models of uncountable cardinality _κ_ as points in a topological
space.^30 Each model in a countable signature whose underlying domain has cardi-
nality _κ_ can be naturally coded as a function from _κ_ to _κ_ , and the underlying do-
main of the topological space is the set of all such functions.^31 There is a measure of
complexity on subsets of this space whereby: open sets are least complex; the Borel
sets (those obtained from the opens through complementation and _κ_ -sized unions)
are more complex; and the analytic sets (those formed from projection over closed
sets) are yet more complex. This measure of complexity can be extended naturally
to the product spaces, so that it makes sense to ask after the complexity of relations
between structures.
Väänänen is one of the first to have studied model theory from this perspective,
and he writes: ‘It turns out that stability theory and the topological approach pro-
posed here give similar suggestions as to what is complicated and what is not’.^32
This has recently been confirmed in a startling way by results of Friedman, Hytti-
nen, and Kulikov. They show that for certain infinite cardinals _κ_ ,^33 the relation of

(^30) See again §14.a for a review of topological spaces, including definitions and motivating examples.
(^31) The open sets in this space are sets of the form{ _f_ :(∀ _β_ < _α_ ) _f_ ( _β_ )= _s_ ( _β_ )}where _s_ : _α_ Ð→ _κ_ is
a function for some _α_ < _κ_. Further, it turns out that one must restrict attention to cardinals _κ_ such that
_κ_ < _κ_ = _κ_ , where ‘ _κ_ < _κ_ ’ refers to the cardinality of all the functions _f_ : _α_ Ð→ _κ_ for some _α_ < _κ_. Recall that if
GCH holds then _κ_ < _κ_ = _κ_ for all and only regular _κ_ (cf. Jech 2003: 55).
(^32) Väänänen (2008: 117).
(^33) In particular, for regular limit cardinals> 2 א (^0). Regular cardinals are defined in Definition 8.3. _κ_ is a
_limit cardinal_ iff _κ_ > _ω_ and _κ_ is not the least cardinal larger than some other cardinal.


```
17.2. shelah on classification 425
```
isomorphism between _κ_ -sized models of _T_ is Borel _iff T_ falls on the ‘has a structure
theory’ side of Shelah’s Main Gap Theorem 17.1.^34 Moreover, the proof of this the-
orem involves carefully noting how elements of Shelah’s own proofs correspond to
ideas stemming from this topological measure of complexity.
All of this provides a natural response to our ‘countable well-order’ counterex-
ample to Hrushovki’s general argument. Given two countable well-orders, the rela-
tion of isomorphism between them is virtually a Borel condition on this topological
measure of complexity.^35 However, by the result described in the previous para-
graph, if a theory _T_ does _not_ fall on the ‘having a structure side’ of Shelah’s Main
Gap Theorem 17.1, then there are many uncountable cardinals _κ_ in which the re-
lation of isomorphism between _κ_ -sized models of _T_ is _more_ complex than being
Borel. So there is, after all, a good sense in which the countable well-orders look
more ‘tame’ than such ‘wild’ theories.
Ultimately, though, approaching classifiability in this way suggests that we
should _abandon_ (a). After all, the explication of classifiability is no longer in terms
of ‘having few models’, but instead in terms of ‘definability’ or ‘higher-order com-
putational’ resources.
Moreover, approaching classifiability in terms of Borel conditions resolves the
wrinkle which emerged earlier. As we explained above, Shelah’s objects-to-be-
classified, _C_ , are models of a certain complete theory in a countable signature; the
equivalence relation, _E_ , is isomorphism; and the invariants, _Inv_ , were cardinality-
like notions which had little to do with calculability. But once we approach classifi-
ability in terms of Borel conditions, we find that _having a structure_ in Shelah’s sense
coincides with isomorphism being a Borel condition (in the generalised sense).
Hence in the case where _C_ consists of the models of a classifiable theory in She-
lah’s sense, the equivalence relation _E_ is itself calculable.
We are now left only with a minor dissimilarity between classifiability, in She-
lah’s sense, and the paradigmatic cases from §17.1. In our paradigmatic cases, to
determine whether _ι_ ( _X_ )= _ι_ ( _Y_ ), one first computed _ι_ ( _X_ )from _X_ and _ι_ ( _Y_ )from
_Y_ , and then compared the results of these two computations. Here, when the the-
ory is classifiable in Shelah’s sense, it turns out that the relation _E_ ( _X_ , _Y_ )is itself
computable in this generalised sense. But this of course is completely compatible
with subsequent identifications of invariants which may be easily calculated from

(^34) S.-D. Friedman et al. (2014: Theorem 63 p.55). As in footnote 31, above, the restriction that _κ_ < _κ_ = _κ_
is still in force.
(^35) This is because two well-orders are not isomorphic iff one is isomorphic to a proper initial segment of
the other. Hence, in the case of well-orders, both being isomorphic and being non-isomorphic are analytic
conditions. And Souslin’s Theorem says that conditions which are both analytic and co-analytic are Borel.
Of course being a countable well-order is a co-analytic condition in the first place. Hence the qualifier ‘vir-
tually’: if you _already_ know that you are dealing with two well-orders, then the relation of isomorphism is
analytic and co-analytic. We do not think that this difference between ‘Borel’ and ‘analytic and co-analytic
on a co-analytic set’ matters much for the philosophical point we are making here.


426 classification and uncountable categoricity

the presentations of the objects, in the case where the theory is classifiable or ‘has
a structure theory’.^36

### 17.3 Uncountable categoricity

Outside of Shelah’s work, another primary classificatory programme in recent
model theory has been Zilber’s attempt to classify uncountably categorical theo-
ries. By the Löwenheim–Skolem Theorem 7.2, no first-order theory with infinite
models is categorical. But, as Zilber retrospectively put the point, this obvious un-
availability simply ‘entailed a rethinking of the concept of categoricity’.^37

```
Rethinking categoricity
```
Before we explain the rethought version of categoricity, we should say more to mo-
tivate this change of perspective. In §7.2, we suggested two reasons for treating cate-
goricity a desirable property of theories: first, categorical theories pin down mathe-
matical structure (in the intuitive sense); second, via a supervaluational semantics,
one can believe that every sentence in the theory’s language has a determinate truth
value. These are _not_ the ambitions which drive contemporary work on categoricity
in mathematical logic. The aim, rather, is to use the ‘rethought’ notion of categoric-
ity as part of a _classificatory_ project, which we will explain in terms of the general
framework from §17.1.
The ‘rethought’ notion of categoricity gets its impetus from restricting attention
to structures of a _given_ infinite cardinality. For a fixed infinite cardinality, there are
many natural examples of theories that have exactly one model up to isomorphism
of this cardinality. For example, Cantor proved that the complete first-order the-
ory of the rationals as a linear order has exactly one countable model up to isomor-
phism.^38 However, this theory has many non-isomorphic models of higher cardi-
nalities: the real numbers as a linear order satisfy it, as do the real numbers minus a
single given real number, but these two models cannot be isomorphic. As another
example, take the complete theory of the integers with just the successor. Models
of this theory consist of one or more copies of the integers, with no relations ‘be-
tween’ any of these copies. So this theory has, up to isomorphism, countably many
models of countable cardinality, corresponding simply to the number of copies of

(^36) That said, it is not obvious that the invariants will necessarily be things like natural or real numbers.
For instance, even in the ordinary setting of Borel equivalence relations, only the most well-understood
and well-behaved classifications have such invariants. See the notion of ‘smoothness’ in Gao (2009: 128ff).
And if the invariants are more complicated objects, this might make them less easily calucable, and this
might make producing examples of each invariant more difficult.
(^37) Zilber (1993: 1).
(^38) See Marker (2002: 48) and Hodges (1993: 100).


```
17.3. uncountable categoricity 427
```
the integers in the model. However, it has exactly one model in any uncountable
cardinality, because the only way that a union of copies of the integers will get to an
uncountable cardinality is if there are uncountably many such copies.
Given such examples, Łoś asked whether there were theories with exactly one
model up to isomorphism in one uncountable cardinality, but not in others.^39 Mor-
ley showed that this could not happen:^40

Theorem17.3(Morley): _Let T be a complete consistent theory in a countable signature.
T has exactly one model up to isomorphism of_ some _uncountable cardinality iff T has
exactly one model up to isomorphism of_ every _uncountable cardinality; i.e., I_ ( _T_ , _κ_ )= 1
_for some uncountable κ iff I_ ( _T_ , _κ_ )= 1 _for all uncountable κ._

Such theories which satisfy either side of the biconditional in Morley’s Theorem are
called _uncountably categorical_. Uncountable categoricity is the ‘rethought’ notion of
categoricity mentioned above, and Zilber’s programme was to classify such theo-
ries. In this section, we describe the rudiments of this classification programme.
For simplicity, in the remainder of this chapter, we assume that all theories in
question are complete and in a countable signature. The restriction to complete-
ness is justified, because any theory in a countable language which satisfies ei-
ther side of the biconditional in Morley’s Theorem 17.3 will be complete, by the
Löwenheim–Skolem Theorem 7.2. The restriction to theories in countable signa-
ture is simply because less is known about the uncountable case. While Shelah
proved the analogue of Morley’s Theorem 17.3 for complete theories in uncount-
able languages in 1974,^41 a great many complications arise in treating the uncount-
able case, and the work in the tradition of Zilber, which is our focus, is always done
in the context of countable languages.

```
Pregeometries and dimension
```
The proof of Morley’s Theorem 17.3 has been refined since Morley’s own work.
These refinements have revealed a connection between uncountably categoricity
and a geometrical notion of independence and dimension.
The notion of a _pregeometry_ is sufficient to provide us with an abstract, algebraic,
axiomatic treatment of certain basic ideas related to dimension:^42

Definition 17.4: _Let_ G _be a set and_ cl :℘(G)Ð→℘(G) _be a function. Then_ (G, cl)
_is a_ pre-geometry _iff it satisfies the following four axioms:_

(^39) Łoś (1954: 62).
(^40) Morley (1965a).
(^41) Shelah (1974a).
(^42) See Marker (2002: 289), Hodges (1993: 170–1), Buechler (1996: 52), and Baldwin (2014: §4.2).


428 classification and uncountable categoricity

```
(1)A ⊆cl( A ) and cl(cl( A ))=cl( A )
(2)If A ⊆ B then cl( A )⊆cl( B )
(3) If a ∈cl( A ∪{ b })∖cl( A ) then b ∈cl( A ∪{ a })
(4)If a ∈cl( A ) then there is a finite A 0 ⊆ A such that a ∈cl( A 0 )
```
_Where_ (G, cl) _is any pregeometry:_

```
(1)A set B ⊆G is independent iff c ∉cl( B ∖{ c }) for all c ∈ B
(2)A set A ⊆G is closed iff A =cl( A )
(3) A subset B of a closed set A is a basis of A iff B is independent and cl( B )= A
(4)The dimension of a closed set A is the cardinality of any basis for A
```
These definitions straightforwardly generalise the notion of dimension that we en-
counter when we deal with Euclidean space. In more detail: the elements of _n_ -
dimensional Euclidean space,R _n_ , are vectors _v_ , each of whose entries are real num-
bers. Along with the operation of pointwise addition _v_ + _u_ =( _v_ 1 + _u_ 1 , ..., _vn_ + _un_ ),
we have the operation of scalar multiplication _c_ ⋅ _u_ =( _c_ ⋅ _u_ 1 , ..., _c_ ⋅ _un_ ), for any _c_ ∈R.
Given a subset _A_ ⊆ R _n_ , its _linear span_ is span( _A_ )= { _c_ 1 ⋅ _a_ 1 +...+ _ck_ ⋅ _ak_ :
_ci_ ∈ R, _ai_ ∈ _A_ }. If we now define cl( _A_ ) =span( _A_ ), then it is easy to check
that have a pregeometry. Indeed, the ensuing definitions of a _closed_ set, a _ba-
sis_ , and a _dimension_ are exactly the standard ones, such as one encounters in ele-
mentary linear algebra. To illustrate, suppose we are working inR^3 , and let _A_ =
{(0, 0, 1)}, _B_ ={(0, 0, 1),(0, 1, 0)}and _C_ ={(0, 0, 1),(0, 1, 0),(1, 0, 0)}; then
we have dim(span( _A_ ))=1, dim(span( _B_ ))=2, and dim(span( _C_ ))=3.
For model-theoretic purposes, an important example of pregeometry comes
from the idea of a strongly minimal set. This uses the notion of an _elementary exten-
sion_ , from Definition 4.3:

Definition17.5: _Let_ G={ _a_ ∈ _Mn_ : _M_ ⊧ _φ_ ( _a_ )} _be any infinite definable subset in the
structure M. Then_ G _is_ strongly minimal _iff, for every elementary extension N of M,
the set_ G( _N_ )={ _a_ ∈ _Nn_ : _N_ ⊧ _φ_ ( _a_ )} _has only finite or cofinite definable subsets._^43

Given a strongly minimal setG, defined by a formula with parameters from some fi-
nite _A_ 0 , we define a closure operation by cl( _A_ )=acl( _A_ ∪ _A_ 0 )∩G. Here, acl( _B_ )is the
model-theoretic ‘algebraic closure’ of _B_ : the set of elements _c_ ∈ _M_ such that there
is a formula _ψ_ ( _x_ )with parameters from _B_ such that _M_ ⊧ _ψ_ ( _c_ )and only finitely
many elements of _M_ satisfy _ψ_ ( _x_ )in _M_. So defined,(G, cl)is a pregeometry.^44
This can seem rather technical at first. However, it describes some very classical
situations and examples. Here are three which are particularly important:^45

(^43) I.e. if _Y_ is an _N_ -definable subset ofG( _N_ ), then either _Y_ is finite orG( _N_ )∖ _Y_ is finite.
(^44) For more, see Marker (2002: 208, 290), Hodges (1993: 134, 164, 171), and Buechler (1996: 15, 51–3).
(^45) See Marker (2002: 291), Hodges (1993: 164, 167), and Buechler (1996: 51–2).


```
17.3. uncountable categoricity 429
```
```
(a) The integers under successor , i.e. the structure(Z, S ). Here,G=Zis strongly
minimal, and acl( A )is the set of points which are ‘finitely far away’ from
some element of A.
(b) The rationals as a vector space , i.e. the structure(Q n , 0,+), augmented with
linear maps fp for each p ∈Qsuch that fp ( a )= p ⋅ a. Here,G=Q n is
strongly minimal and acl( A )=span( A ), in the Euclidean sense of ‘linear
span’ described above.
(c) The complex field , i.e. the structure(C,+,×). Here,G=Cis strongly minimal
and acl( A )is the smallest subfield ofCcontaining A such that every non-zero
polynomial with coefficients in the field has a root in the field.
```
With all of these definitions in place, Morley’s Theorem is a direct consequence
of the following result (which is typically regarded as implicit in the proof of the
Baldwin–Lachlan Theorem):^46

Theorem17.6: _Suppose that T has only one model up to isomorphism for some uncount-
able cardinality. Then T has a countable model M with a strongly minimal set_ G _such
that all of the following hold:_

```
(1)For any model N of T there is an elementary embedding from M to N
(2)Any model N of T of cardinality λ > ω satisfies dim(G( N ))= λ
(3) Any models N , O of T with dim(G( N ))=dim(G( O )) are isomorphic
```
The notion of dimension in the statement of Theorem 17.6 is given via the prege-
ometry(G, cl)where cl( _A_ )=acl( _A_ ∪ _A_ 0 )∩Gand _A_ 0 is the finite set of parameters
used to defineG. The statement of Theorem 17.6 retains the convention, flagged
above, that all theories are complete first-order theories in countable signatures.
The idea arising from these refinements of the proof of Morley’s Theorem 17.3
can be summarised as follows: uncountable categoricity requires the presence of
geometrical resources like _dimension_. Zilber expresses this idea as follows:

[...] the main logical problem after answering the question of J. Łoś was _what properties
of M make it κ-categorical for uncountable κ_? [¶] The answer is now reasonably clear: _the
key factor is that we can measure definable sets by a rank-function (dimension) and the whole
construction is highly homogeneous_.^47

We have just explained the notion of a ‘dimension’ to which Zilber is referring,
and we see it occurring explicitly in conditions (2) and (3) of Theorem 17.6. The

(^46) Baldwin and Lachlan (1971), Marker (2002: 213–4), and Buechler (1996: 68). The Baldwin–Lachlan
Theorem states that _T_ is uncountably categorical iff both (i) _T_ has no Vaughtian pairs (see Marker 2002:
151; Buechler 1996: 58) and (ii) _T_ is _ω_ -stable (see Definition 14.11). This should not be confused with a
related theorem of Baldwin–Lachlan which states: if _T_ is a (complete) uncountably categorical theory (in
a countable language), then _I_ ( _T_ ,א 0 )is either1 orא 0 (see Marker 2002: 215; Buechler 1996: 92).
(^47) Zilber (2010: 200).


```
430 classification and uncountable categoricity
```
notion of ‘homogeneity’ which Zilber mentions is related to indiscernibility, as
discussed in Chapter 15. In particular, if a structure _M_ is strongly minimal and
tp _M_ ( _a_ )=tp _M_ ( _b_ ), then there is an automorphism of the structure which sends
_a_ to _b_.^48 In terms of the various grades of discernibility defined in §15.1, this en-
tails that, in such structures, the _n_ -indiscernibles+are precisely the _n_ -symmetricals.
Now, models of an uncountably categorical theory need not themselves be strongly
minimal, but the import of Theorem 17.6 is that the models of this theory are ‘con-
trolled’ by a strongly minimal set in the countable model, and this strongly minimal
set can be viewed as a model in its own right, with whatever structure is definable
from the countable model.^49 Hence, an important idea behind Theorem 17.6 is that
the strongly minimal structure itself has high levels of indiscernibility; and this to-
gether with the dimension function is what accounts for uncountable categoricity.

```
The Trichotomy Conjecture and extreme classification
Zilber is well-known for advancing an ambitious research programme for classify-
ing uncountably categorical theories. By the previous discussion, this can be re-
duced to classifying strongly minimal structures, that is, structures that are them-
selves strongly minimal. However, distinct strongly minimal structures can have
different signatures, and so one needs some signature-insensitive notion of equiva-
lence. The requisite notion of equivalence is mutual interpretability , as introduced
in §5.3.
Zilber’s classification was formulated in the following conjecture:^50
```
```
TheTrichotomyConjecture.Every strongly minimal structure is either trivial, or is mu-
tually interpretable with a vector space over a division ring, or is mutually interpretable
with an algebraically closed field.
```
```
Here, ‘trivial’ is supposed to capture the sense in which an infinite structure in a sig-
nature containing just constant symbols is strongly minimal. In such a structure, it
is easy to see that the algebraic closure of the union of two sets is equal to the union
of respective closures, and this is one of the equivalent formulations of the relevant
notion of ‘triviality.’ Hence the conjecture expresses the idea that all strongly min-
imal structures are similar to one of the three examples from the previous section,
namely: (a) the integers under successor; (b) the rationals as a vector space; and
(c) the complex field. The motivation for the Trichotomy Conjecture is, therefore,
```
(^48) See Marker (2002: 133) and Zilber (2010: 189). A structure _M_ is said to be _strongly minimal_ if its
underlying domain _M_ is itself strongly minimal within _M_ , in the sense of Definition 17.5 (cf. Hodges 1993:
164; Marker 2002: 78).
(^49) In particular, the structure on the strongly minimal set is given by taking it to have an _n_ -ary relation
symbol corresponding to every subset of it which is definable in the original structure.
(^50) See Zilber (1984b: 362, 2010: 201). Division rings differ from fields only in that their multiplication
operation does not need to be commutative. See Hungerford (1980: 116).


```
17.3. uncountable categoricity 431
```
that it would indicate that all of the examples of strongly minimal sets are both (es-
sentially) already known and well-understood. The conjecture therefore expresses
‘a belief in a strong logical predetermination of basic mathematical structures.’^51
In 1993, Hrushovski found a family of counterexamples to the Trichotomy Con-
jecture as just formulated.^52 To date, though, these are the only known counterex-
amples to the Conjecture. Hence the classification of strongly minimal sets is still
very much open. Indeed, in terms of the framework of §17.1, at this point even the _in-
variants_ have not yet been isolated. The classificatory problem is only cast in terms
of the to-be-classified objects _C_ , which here are the strongly minimal structures,
and the relevant equivalence relation _E_ , which here is mutual interpretability.
Some special cases of the Trichotomy Conjecture have been established by
Hrushovski and Zilber. These cases strengthen the hypothesis of a strongly min-
imal set to that of a so-called Zariski geometry, and show that certain of these are
mutually interpretable with an algebraically closed field.^53 These Zariski geome-
tries then correspond to the most interesting of the three cases mentioned the Tri-
chotomy Conjecture, since the model theory of the complex field can be viewed
as a part of algebraic geometry. This led Hrushovski to say of these special proven
cases that ‘this was originally conceived as a foundational result, showing that alge-
braic geometry is sui generis.’^54 Hodges cites the work of Hrushovski as part of the
motivation for viewing model theory as ‘algebraic geometry minus fields’.^55
As a final illustration of the successes of this classificatory programme, consider
this remark by Macintyre:

A useful contribution of post-Morley model theory is to explain these extreme classifica-
tions in terms of a geometrical independence theory [...] From these explanations one
does understand why there are so few extreme classifications in algebra, and one under-
stands some absolutely new things, for example that there are no such extreme classifica-
tions in ordered algebra.^56

To unpack Macintyre’s claim, note that Theorem 17.6 tells us that uncountable cat-
egoricity involves a geometric-like notion of dimension. However, the availabil-
ity of such a notion is the exception rather than the rule, in contemporary algebra
writ large. Hence, we see why there are ‘so few extreme classifications in algebra’.
(Moreover, if any suitable modification of the Trichotomy Conjecture is true, then
the scope of uncountable categoricity will be even more tightly circumscribed.)

(^51) Zilber (2010: 201).
(^52) See Hrushovski (1993) and Ziegler (2013).
(^53) See Hrushovski and Zilber (1996: 2) and Zilber (2010: ch.4).
(^54) Hrushovski (1998: 288).
(^55) Hodges (1997a: vii).
(^56) Macintyre (2003: 199).


432 classification and uncountable categoricity

Macintyre’s point that ‘there are no such extreme classifications in ordered alge-
bra’ then relates to another result which follows from considerations about The-
orem 17.6: uncountably categorical theories are _stable_ , in the sense of Defini-
tion 14.11.^57 From the equivalent characterisation of stability in terms of not having
an order, Theorem 15.19, it follows that no structure which defines a linear order
is uncountably categorical. Hence, while there are uncountably categorical theo-
ries amongst theories familiar from linear algebra and algebraic geometry, as soon
as one goes to a setting in mathematics where there is a linear order, uncountable
categoricity is simply unavailable.

### 17.4 Conclusions

In this final chapter we have engaged with two important episodes in post-Morley
model theory: Shelah’s classification programme and Zilber’s Trichotomy Conjec-
ture. The latter is borne of an attempt to gain a better understanding of the pos-
sibilities for uncountably categorical theories. But the motivation for the study of
uncountable categoricity is rather different than what prompted the discussion of
categoricity in Chapters 7–8 and 10–11. Instead of being concerned with pinning
down an isomorphism type or establishing determinacy of truth-value, we have sug-
gested that work on uncountable categoricity should be understood in terms of the
initial stages of a classification programme.
However, saying this requires some prior understanding of what classification
programmes are. Hence, at the outset of this chapter we laid down a general frame-
work for understanding the nature of classification in mathematics. Briefly stated:
in order to discern structures from one another, mathematicians seek out invari-
ants that both respect the relevant similarity relation and are easily calculable from
canonical presentations of the structures.

### 17.a Proof of Proposition 17.2

Here is the proof of Proposition 17.2 from §17.2. In fact, as mentioned in footnote 22
(immediately prior to Proposition), this holds for the more general notion of a pa-
rameterised cardinal-like invariant, _χ_ , so long as _χ_ is infinite.

Proposition(17.2): _Given_ GCH _, if there is infinite κ such that I_ ( _T_ , _λ_ )= 2 _λfor all
λ_ ≥ _κ, then T does not have a structure theory._

_Proof._ First, we show by induction on _α_ that we have the following

(^57) Indeed, as remarked in footnote 46, they are _ω_ -stable.


```
17.a. proof of proposition 17.2 433
```
```
If γ ≥ χ , then∣ Invα (א γ )∣≤ב α (∣ γ ∣) (17.1)
```
In this,א _γ_ denotes the _γ_ -th infinite cardinal (cf. §1.b), andב _α_ (∣ _γ_ ∣)is defined
in ( _beth_ ) from §17.2. For _α_ =0, one has that _Inv_ 0 (א _γ_ )={ _λ_ : _λ_ ≤א _γ_ }, which
has cardinality∣ _γ_ ∣. And similarlyב 0 (∣ _γ_ ∣)=∣ _γ_ ∣. For _α_ +1, note that if _X_ is an in-
finite set, then the set of sequences of length≤ _χ_ with values in _X_ is of the same
cardinality as the set of sequences of length _χ_ with values in _X_ ; for, we could iden-
tify a function _f_ : _δ_ Ð→ _X_ where _δ_ < _χ_ with a function _f_ : _χ_ Ð→( _X_ ∪{ _x_ 0 })
by setting _f_ ( _β_ )= _f_ ( _β_ )when _β_ < _δ_ and _f_ ( _β_ )= _x_ 0 for all _β_ ≥ _δ_ with _β_ < _χ_ ,
where _x_ 0 is a set not in _X_. Hence,∣ _Invα_ + 1 (א _γ_ )∣is≤the cardinality of the set of func-
tions from _χ_ to{ _f_ : _Invα_ (א _γ_ )Ð→{ _λ_ : _λ_ ≤א _γ_ }}. By the induction hypothesis,
∣ _Invα_ (א _γ_ )∣≤ב _α_ (∣ _γ_ ∣). Thus,∣ _Invα_ + 1 (א _γ_ )∣is≤the cardinality of the set of func-
tions from _χ_ to{ _f_ :ב _α_ (∣ _γ_ ∣)Ð→∣ _γ_ ∣}. Since _γ_ ≥ _χ_ , one has _χ_ ≤ב _α_ (∣ _γ_ ∣). Then

one has that∣ _Invα_ + 1 (א _γ_ )∣≤∣ _γ_ ∣ _χ_ ב⋅ _α_ (∣ _γ_ ∣)≤∣ _γ_ ∣ב _α_ (∣ _γ_ ∣)= 2 ב _α_ (∣ _γ_ ∣)=ב _α_ + 1 (∣ _γ_ ∣). For _α_
a limit, one has that∣ _Invα_ (א _γ_ )∣≤sup _β_ < _α_ ∣ _Invβ_ (א _γ_ )∣≤sup _β_ < _α_ ב _β_ (∣ _γ_ ∣)=ב _α_ (∣ _γ_ ∣).
This finishes the inductive argument for (17.1).
We now show that for all infinite _α_ there are unboundedly many _γ_ ≥ _α_ such that

```
ב α (∣ γ ∣)<א γ + 1 (17.2)
```
Now GCH implies that if∣ _γ_ ∣ = א _β_ thenב _α_ (∣ _γ_ ∣) =ב _α_ (א _β_ ) =א _β_ + _α_. Hence,
for (17.2), it suffices to find unboundedly many _γ_ with∣ _γ_ ∣=א _β_ and _β_ + _α_ ≤ _γ_. To ob-
tain this, let∣ _α_ ∣=א _θ_ and let _θ_ ′> _θ_ and set _β_ =א _θ_ ′+ 1. Then _θ_ ′+ 2 ≤א _θ_ ′+ 2 <א _θ_ ′+ 1.
Thus we have∣ _β_ ∣= _β_ =א _θ_ ′+ 1 <א _θ_ ′+ 2 <אא _θ_ ′+ 1 =א _β_. Hence there are unbound-
edly many _β_ with∣ _α_ ∣<∣ _β_ ∣<א _β_. Then _β_ + _α_ has cardinality∣ _β_ ∣and thus _β_ + _α_ <א _β_.
Setting _γ_ =א _β_ we obtain unboundedly many _γ_ with∣ _γ_ ∣=א _β_ and _β_ + _α_ ≤ _γ_.
To finish the argument, suppose there is infinite _κ_ with _I_ ( _T_ , _λ_ )= 2 _λ_ for all _λ_ ≥ _κ_.
We must show that _T_ does not have a structure theory. For reductio, suppose _T_ has
a structure theory of depth _α_. By (17.2), choose _γ_ withא _γ_ > _κ_ and _γ_ ≥ _χ_ and
ב _α_ (∣ _γ_ ∣)<א _γ_ + 1. Then by the definition of having a structure theory of depth _α_ ,
_I_ ( _T_ ,א _γ_ )≤∣ _Invα_ (א _γ_ )∣. Then by (17.1) one has _I_ ( _T_ ,א _γ_ )≤ב _α_ (∣ _γ_ ∣)<א _γ_ + 1. But
this contradicts that _I_ ( _T_ ,א _γ_ )= 2 א _γ_ =א _γ_ + 1.



## D Historical appendix



Introduction to Hodges’ essay

This book ends with Hodges’ essay, ‘A short history of model theory’. While the
previous parts of the book were organised around various philosophical topics and
issues, Hodges’ essay is organised chronologically. In tracing the development of
model theory, from its origins to the present, it covers the history of many of the
results stated and proved earlier in the book (and much more besides). For exam-
ple, we stated and proved the Löwenheim–Skolem Theorem 7.2 in Chapter 7, and
discussed its philosophical implications throughout Part B; Hodges discusses its
history in §18.4.
But Hodges does more than simply describe model theory’s history: he contex-
tualises its practitioners’ motivations. This, too, is philosophically informative, and
we shall mention two examples of this. First: in Chapter 1 we surveyed different
approaches to the semantics for first-order logic. Elements of §18.3 of Hodges’ es-
say complement this, by looking more closely at the principal architects of these
approaches—Tarski and Robinson—and setting their motivations in their original
historical context. Second: in Chapters 7–8, 10–11, and 17 we considered the notion
of categoricity, as it connected to considerations of determinacy of reference and
truth-value and the nature of classification. Similarly, the history of categoricity in
§18.2 and §18.7 constitute two book-ends of Hodges history, starting with Veblen in
the early twentieth century and ending with Shelah in the late twentieth century.
Hodges’ essay is intended to be readable in isolation from the rest of this book.
However, for the benefit of those who have read other parts of this book, we (Sean
and Tim) have inserted some cross-references to relevant portions of Parts A–C.
These occur as additions of the form ‘[ _See such-and-such._ ] ’.



18

Wilfrid Hodges

A short history of model theory

### 18.1 ‘A new branch of metamathematics’

In 1954, Alfred Tarski wrote:

Within the last years a new branch of metamathematics has been developing. It is called
the _theory of models_ and can be regarded as a part of the semantics of formalized theories.
The problems studied in the theory of models concern mutual relations between sen-
tences of formalized theories and mathematical systems in which these sentences hold.^1

In these words Tarski defined and named a new branch of mathematics, which to-
day we know as _mathematical model theory_ , or simply as _model theory_. The present
essay will trace some of the main themes in the history of mathematical model the-
ory, roughly up to the beginning of the twenty-first century. (What would non-
mathematical model theory be? One example—there are others—is the ‘model-
theoretic syntax’ developed by the linguists Pullum and Scholz;^2 it has historic links
with mathematical model theory.)
Although Tarski named the new subject, he certainly didn’t own it. Already be-
fore 1954 Anatoliĭ Mal’tsev and Abraham Robinson had published results that be-
came as characteristic of the subject as any of Tarski’s own contributions to it; we
will come to their work below. Tarski’s main role—apart from collecting a stellar
group of young researchers around him in Berkeley and giving them problems to
work on—had been to take up some earlier questions from the heuristic fringes of
mathematics, and show how to give them mathematical precision.

Tarski refers to ‘mathematical systems’. He means what we now usually call _struc-
tures_ —they have a domain of elements, and a collection of relations, functions,
and distinguished elements defined in this domain and named by specified rela-
tion symbols, function symbols and individual constants. Structures in this sense
are an invention of the second half of the nineteenth century—for example David
Hilbert handled them freely in his _Grundlagen der Geometrie_.^3 A system is a collec-
tion of things brought together in an orderly way. For Hilbert and his German pre-
decessors, it seems that the things brought together were the elements of the struc-
ture. Thus, Richard Dedekind used the name ‘System’ both for structures and for

(^1) Tarski (1954: 572). (^2) Pullum and Scholz (2001). (^3) Hilbert (1899).


440 hodges: a short history of model theory

sets—apparently he thought of a structure as a set that comes with added features.^4
Heinrich Weber and Hilbert spoke of ‘Systeme von Dingen’ [systems of things], to
distinguish from axiom systems. On the other hand George Boole,^5 adapting the
language of George Peacock,^6 had spoken of a ‘system of interpretation’; for Boole,
the things brought together were the operations as interpretations of symbols, for
example+and×as function symbols and 0 as individual constant. Logicians re-
garded the interpretation of symbols by relations etc. of the structure as central,
so one finds structures being referred to as ‘interpretations’ well into the twentieth
century.
In model theory the name ‘system’ persisted until it was replaced by ‘structure’ in
the late 1950s, it seems under the influence of Robinson and Bourbaki.^7

Tarski speaks of ‘sentences’. Mostly these were taken as concatenated strings of for-
mal symbols. But already in the 1930s, Kurt Gödel was handling languages of un-
countable cardinality, with arbitrary objects as symbols, using any suitable func-
tions to replace concatenation of symbols.^8 Mal’tsev did likewise.^9 By the 1950s it
was taken for granted that a ‘sentence’ could be a purely set-theoretic object.
Tarski also refers to the notion of a sentence ‘holding in’ a structure. The notion
of a statement ‘holding in’ some contexts and not others is not a particularly math-
ematical one; for example a legal journal of 1900 speaks of ‘contravening the rule
held in the above cases’. It was one of a number of idioms that mathematicians had
used to express what we now mean by saying that a structure is a _model of_ , or _satisfies_ ,
a formal sentence. Alessandro Padoa spoke of a structure ‘verifying’ axioms.^10 The
word ‘satisfy’ in this context may be due to Edward V. Huntington;^11 Huntington
was a member of the group of American mathematicians around Eliakim H. Moore
and Oswald Veblen who, in the early twentieth century, made a systematic study of
axiomatically defined classes of structures.^12 We can trace back the use of the word
‘model’ itself to the seventeenth century geometers who spoke of gypsum or paper
‘models’ of geometrical axioms. The term ‘model’ for abstract structures appeared
during the 1920s in writings of the Hilbert school.^13

### 18.2 Replacing the old metamathematics

One feature of the early work on models of axioms was the looseness of some of
the formulations. Three examples follow. In each of them an informal method was
in use around 1900, then Tarski attempted a non-model-theoretic formalisation in

(^4) Dirichlet and Dedekind (1871) and Dedekind (1872). (^5) Boole (1847: 3). (^6) Peacock
(1833).^7 A. Robinson (1952) and Bourbaki (1951).^8 Gödel (1932).^9 Mal’tsev (1936).
(^10) Padoa (1900). (^11) For example in Huntington (1902). (^12) Scanlan (2003). (^13) von
Neumann (1925) and Fraenkel (1928: 342). R. Müller (2009) gives historical information on the use of the
word ‘model’ in model theory and elsewhere.


```
18.2. replacing the old metamathematics 441
```
the 1930s, and finally in the 1950s a model-theoretic formalisation was given which
is now widely regarded as canonical.

```
Categoricity
```
Veblen introduced the notion of categoricity:

[...] a system of axioms is categorical if it is sufficient for the complete _determination_ of a
class of objects or elements.^14

to which he added a brief informal explanation of isomorphisms. [ _See §7.2 footnote_

_3._ ] Veblen’s word ‘sufficient’ harks back to Huntington’s paper,^15 where a set of pos-
tulates (i.e. axioms) is said to be ‘sufficient’ if ‘there is essentially _only one_ ’ structure
that satisfies the postulates. In 1935, Tarski attempted to tidy up the notion of cate-
goricity as follows.^16 First he assumed that the system of axioms is finite, so that its
conjunction can be written as a single formula of an appropriate higher-order logic

```
α ( x , y , z , ...)
```
where the variables ‘ _x_ ’ etc. represent the non-logical notions in the axioms (for ex-
ample ‘point’, ‘line’). Then he wrote

#### R

```
( x ′, y ′, z ′, ...)
( x ′′, y ′′, z ′′, ...)
```
for the formal statement that _R_ is a permutation of the universe of individuals, which
takes _x_ ′to _x_ ′′, _y_ ′to _y_ ′′etc. Finally he defined the axiom system _α_ ( _x_ , _y_ , _z_ , ...)to be
categorical if the higher-order statement

```
∀ x ′∀ y ′∀ z ′...∀ x ′′∀ y ′′∀ z ′′...
```
```
( α ( x ′, y ′, z ′, ...)∧ α ( x ′′, y ′′, z ′′, ...)→∃ R R
( x ′, y ′, z ′, ...)
( x ′′, y ′′, z ′′, ...)
```
#### )

is ‘logically provable’. Note that at this date, Tarski’s notion of ‘categorical’ made no
use of the notion of an axiom ‘holding in’ a structure. In short, it was not model-
theoretic. Nor was it objective, since the notion of ‘logically provable’ in higher-
order logic depends on what axioms you accept for this logic.
By the early 1950s, all the definitions were in place to allow the definition that a
theory _T_ is categorical if and only if _T_ has exactly one model up to isomorphism.
[ _See §7.2._ ] But by the 1950s the preferred logical language had become first-order
logic, and the Upward Löwenheim–Skolem Theorem implied that no first-order
theory with infinite models is categorical. Accordingly Vaught defined a theory _T_

(^14) Veblen (1904: 347). (^15) Huntington (1902). (^16) Tarski (1935a).


442 hodges: a short history of model theory

to be _λ_ - _categorical_ (for a cardinal _λ_ ) if _T_ has, up to isomorphism, exactly one model
of cardinality _λ_.^17 [ _See §17.3._ ] (The cardinality of a structure is that of its domain of
elements.) We will see below how this became one of the most fertile definitions
in model theory.

```
Padoa’s method
```
Padoa proposed a criterion for showing that in the context of an axiomatic theory
_T_ , no formal definition of a notion _A_ in terms of notions _B_ 1 , ..., _Bn_ can be deduced
from the axioms _T_.^18 The criterion was that there exist two interpretations of _T_
which agree in how they interpret _B_ 1 , ..., _Bn_ but disagree in the interpretation of _A_.
Padoa sketched proofs of the necessity and sufficiency of this criterion. But today
it is obvious that he couldn’t hope to prove necessity without saying more about
how he understood ‘deducible from _T_ ’; and in fact his proof of necessity is just a
blurred repetition of his proof of sufficiency. Today ‘Padoa’s method’ is generally
taken to consist of a model-theoretic criterion for a syntactic notion. But Tarski’s
reformulation of Padoa’s proposal removed all model-theoretic notions and trans-
lated Padoa’s proposal into pure syntax.^19
Padoa’s method had a bumpy ride into the new context of model theory. In 1953,
Evert Beth proved that Padoa’s claim was true at least for first-order logic.^20 Beth
took Padoa’s criterion model-theoretically. But since at this date there was no clear
model-theoretic route from the absence of a definition to the truth of the criterion,
Beth translated the criterion into proof theory along Tarski’s lines but within first-
order logic, and then used his own adaptation of Gentzen’s cut-free proofs to build
the required models. Tarski, through his student Solomon Feferman,^21 responded
that, since Beth’s Theorem was proof-theoretic, it would be best to play down the
model-theoretic form of the criterion, which was only incidental to the main result.
Soon afterwards another member of the Berkeley group, William Craig, reworked
Beth’s use of cut-free proofs, and thereby discovered the Craig Interpolation The-
orem.^22 Almost at once it came to notice that Abraham Robinson in Toronto had
already proved a model-theoretic result equivalent to the Interpolation Theorem,
using purely model-theoretic methods.^23 From this point onwards it was accepted
that model theory and proof theory could each feed useful information to the other.
In particular, Feferman proved a number of model-theoretic results by giving proof-
theoretic demonstrations of a range of interpolation theorems.^24

(^17) Vaught (1954). (^18) Padoa (1900). (^19) Tarski (1935a). (^20) Beth (1953). (^21) van Ulsen
(2000: 138).^22 Craig (1957a,b).^23 A. Robinson (1956a).^24 For example in Feferman
(1974).


```
18.2. replacing the old metamathematics 443
```
```
Proofs of logical independence
```
Padoa (1900) related his proposal to another heuristic that was already in use.
Namely, we can show that a formal axiom _ψ_ doesn’t follow from formal axioms
_φ_ 1 , ..., _φn_ by exhibiting an interpretation of the symbols in these axioms, which
makes _φ_ 1 , ..., _φn_ hold but _ψ_ fail to hold. This method had been used by Felix Klein
and Eugenio Beltrami to show that Euclid’s parallel postulate doesn’t follow from
his other axioms. In the years around 1900, Giuseppe Peano, Hilbert, and Hunting-
ton all applied the method.^25
Gottlob Frege took umbrage at Hilbert’s use of this method. One assumption
that Hilbert made was that the non-logical symbols in the axioms are ambiguous in
the sense that they can be interpreted in different ways in different structures, even
within the same mathematical discourse. Frege commented:

In der Tat, wenn es sich darum handelte, sich und andere zu täuschen, so gäbe es kein
besseres Mittle dazu, als vieldeutige Zeichen. [Indeed, if it were a matter of deceiving
oneself and others, there would be no better means than ambiguous signs.]^26

Frege’s comments were not all negative. He went on to sketch a way in which
Hilbert’s arguments could be brought into a formal deductive system, by replacing
the ‘ambiguous signs’ by higher-order variables and then proving formal statements
that quantified universally over these variables, very much as in Tarski’s later work
of the 1930s.^27
In this case it will be best to jump straight to the 1950s to see how Frege’s concerns
were answered within model theory. A paper of Tarski and Vaught indicates how to
write within pure set theory a recursive definition of the relation:^28

```
Sentence φ is true in structure M. (1)
```
Standard methods allow this recursive definition to be reduced to a set-theoretic
formula _θ_ ( _M_ , _φ_ ). The independence notion mentioned by Padoa above can then
be formalised in pure set theory as

```
∃ M ( θ ( M , φ 1 )∧...∧ θ ( M , φn )∧ ¬ θ ( M , ψ )).
```
Hilbert’s independence proofs in his _Grundlagen der Geometrie_ can be read as prov-
ing set-theoretic sentences of this form,^29 and it then becomes a standard but te-
dious exercise to translate Hilbert’s proofs into purely set-theoretic arguments. In
these resulting arguments there is no mention of the meanings of symbols, since
‘meaning’ is not a set-theoretic notion. Thus Frege’s complaint about ambiguous
signs is met. (Tarski and Vaught use first-order logic, and some of Hilbert’s formu-
lations were not first-order; but set-theoretic formulas corresponding to _θ_ can be

(^25) Peano (1891), Hilbert (1899), and Huntington (1902). (^26) Frege (1906: 307). (^27) Frege
(1906) and Tarski (1935a).^28 Tarski and Vaught (1958).^29 Hilbert (1899).


444 hodges: a short history of model theory

found for any other reasonable logic.) Frege had other objections, for example to
Hilbert’s use of the word ‘axiom’. But ‘axiom’ is not a set-theoretic notion either, so
this and all similar objections lose their purchase.
Now we can go back to the 1930s to see where the formula _θ_ ( _M_ , _φ_ )came from.
In 1933 Tarski published a paper in which he considered any formalised theory _T_
satisfying certain conditions;^30 one of the conditions was that the symbols of _T_ have
fixed and known meanings, in such a way that every sentence of _T_ is either true or
false. This included the case where _M_ is a fixed structure and _φ_ is a formal sentence
whose non-logical symbols are interpreted as in _M_. He showed how to construct
a metamathematical formula _θ_ ′, using only higher order logic, syntax and symbols
expressing the notions expressible by symbols of _T_ , such that _θ_ ′( _φ_ )is true if and
only if _φ_ is a true sentence of _T_. [ _See §§1.3, 12.4, 12.a._ ]
Tarski’s famous ‘Concept of Truth’ paper is a translation of the expanded German
version of his 1933 paper.^31 None of these versions of the paper should be counted
as model-theoretic; in fact neither the word ‘model’ nor any equivalent expression
occurs in any of them. But Tarski wanted to show that his truth definition could
be used to give a precise and rigorously defined meaning to the relation (1) with
_M_ variable. Here he ran up against the problem that had vexed Frege. Namely,
how do we deal with the notion of giving a meaning in _M_ to a symbol in _φ_ which
might already have another meaning? Tarski came to suppy an answer remarkably
close to Frege’s.^32 Namely, he replaces the non-logical symbols in _φ_ by variables _x_ ,
and then uses his truth definition to express that _M_ satisfies the resulting formula
_φ_ 0 ( _x_ ). From the later point of view of model theory, this procedure carries irrele-
vant clutter. But it can be converted into a formula _θ_ ( _M_ , _φ_ )expressing (1), in set
theory or some suitable higher order logic.
Tarski in the 1950s had a clean mathematical definition of (1), but he still tended
to avoid the use of any notation such as Mod( _T_ ) for the class of models of the theory
_T_.^33 If one also writes _K_ for the set of sentences true in all the structures of the
class _K_ , then there are certain fundamental facts that we expect to see set down, for
example

```
T ⊆Th( K )iff Mod( T )⊇ K
```
But this group of facts are found in Abraham Robinson’s doctoral thesis of 1949,^34
not in Tarski’s model-theoretic papers.

(^30) Tarski (1933). (^31) Tarski (1983: Paper VIII). (^32) Tarski (1936, 1994); followed by Tarski’s
student Andrzej Mostowski in his (1948).^33 For _T_ a single sentence this notion does appear briefly
in Definition 14(ii) on p.710 of his 1952.^34 A. Robinson (1951: 36–7).


```
18.3. definable relations in one structure 445
```
### 18.3 Definable relations in one structure

```
The method of quantifier elimination
```
In his ‘Concept of truth’ paper, Tarski presents several examples of truth definitions
for different kinds of language. He describes one of them as ‘purely accidental’.^35 In
this example he considers what today we would call the structure _M_ of all subsets
of a given set _a_ , with relation⊆; he discusses what can be said about _M_ using the
corresponding first-order language _L_. (This may be an anachronism; one could
also describe his example as the structure consisting of the set _a_ with no relations,
and a corresponding monadic second-order language.) Tarski works out an explicit
definition of the relation ‘ _φ_ is true in _M_ ’, where _φ_ ranges over the sentences of _L_.
This truth definition might be accidental, but Tarski’s decision to mention it was
not. Leopold Löwenheim had already studied the same example within the context
of the Peirce–Schröder calculus of relatives, and he had proved a very suggestive re-
sult.^36 In modern terms, Löwenheim had shown that there is a set of ‘basic’ formulas
of the language _L_ with the property that every formula _φ_ of _L_ can be reduced to a
Boolean combination _ψ_ of basic formulas which is equivalent to _φ_ in the sense that
exactly the same assignments to variables satisfy it in _M_. Thoralf Skolem and Hein-
rich Behmann had reworked Löwenheim’s argument so as to replace the calculus of
relatives by more modern logical languages.^37 In 1927, Cooper H. Langford applied
the same ideas to dense or discrete linear orderings.^38
Tarski realised that not only the arguments of Löwenheim and Skolem, but also
the heuristics behind them, provided a general method for analysing structures.
This method became known as the _method of quantifier elimination_. In his War-
saw seminar, starting in 1927, Tarski and his students applied it to a wide range
of interesting structures. An important example was the ordered abelian group of
integers—not the natural numbers—with symbols for 0, 1,+and<.^39 Another was
the ordered field of real numbers.^40 In both these cases the method yielded ( _a_ ) a
small and easily described set of basic formulas, ( _b_ ) a description of all the rela-
tions definable in the structure by first-order formulas, ( _c_ ) an axiomatisation of the
set of all first-order sentences true in the structure, and ( _d_ ) an algorithm for testing
the truth of any sentence in the structure. (Here ( _b_ ) comes at once from ( _a_ ). For
( _c_ ), one would write down any axioms needed to reduce all formulas to Boolean
combinations of basic formulas, and all axioms needed to determine the truth or
falsehood of basic sentences. Then ( _d_ ) follows since the procedure for reducing to
basic formulas is effective.)
In principle the method of quantifier elimination tells us, for any structure _M_ ,
what are the sets and relations on the domain of _M_ that are definable by formulas

(^35) Tarski (1933: §3). (^36) Löwenheim (1915: §4). (^37) Skolem (1919: §4) and Behmann (1922).
(^38) Langford (1926/27a,b). (^39) Presburger (1930) and supplement. (^40) Tarski (1931).


446 hodges: a short history of model theory

of the first-order language appropriate for _M_. In practice we may lack the skill or
the information needed to carry the method to a conclusion. But thanks to earlier
work using this method, model theorists in the 1950s had at their disposal a large
amount of information about the first-order definable relations in various impor-
tant mathematical structures. This certainly helped to make the definable relations
of a structure one of the fundamental tools of model theory. (In 1910, Hermann
Weyl had introduced the class of first-order definable relations of a relational struc-
ture, but without using a formal language.)^41
In some cases, but not all, the method showed that every definable relation in
the structure is defined by a quantifier-free formula. Joseph Shoenfield, in his text-
book,^42 said that a theory _T admits elimination of quantifiers_ if every formula of the
language of _T_ is equivalent, provably in _T_ , to a quantifier-free formula. He gave a
model-theoretic sufficient condition for a first-order theory to admit elimination of
quantifiers, and showed that some of the results of the method of quantifier elim-
ination could be recovered easily by using this condition. Soon afterwards, neces-
sary and sufficient model-theoretic conditions for admitting quantifier elimination
were found.^43
For most model theorists, these new methods won hands down against the
sometimes heavy syntactic calculations that were needed for the method of quan-
tifier elimination. Tarski dissented. As late as 1978 he was defending the method of
quantifier elimination against modern methods

[...] which often prove more efficient. [...] It seems to us that the elimination of quan-
tifiers, whenever it is applicable to a theory, provides us with direct and clear insight into
both the syntactical structure and the semantical contents of that theory—indeed, a more
direct and clearer insight than the modern more powerful methods to which we referred
above.^44

The method of quantifier elimination works on just one structure at a time. It in-
volves no comparison of structures. For example Tarski applied it to the ordered
field of reals, and discovered among other things that the sets of reals definable in
this field by first-order formulas are precisely the unions of finitely many sets, each
of which is either a singleton or an open interval with endpoints either in the field
or±∞. Ordered structures with this property are said to be _o-minimal_ , following
Anand Pillay and Charles Steinhorn.^45 [ _See §4.10, Definition 4.19._ ] Tarski also found
a set _T_ of sentences which axiomatises the field, in the sense that a first-order sen-
tence is true in the field if and only if it is provable from _T_. It was realised some time
later that _T_ is precisely the set of axioms defining real-closed fields. From the calcu-
lations in the quantifier elimination, it then followed at once that every real-closed
field is o-minimal. So Tarski proved a theorem about a class of structures, but the

(^41) Weyl (1910). (^42) Shoenfield (1967: 83). (^43) For example Feferman (1968: 81–2).
(^44) Doner et al. (1978: 1–2). (^45) Pillay and Steinhorn (1984).


```
18.3. definable relations in one structure 447
```
theorem was proved by a procedure that applied separately to each structure in the
class. There was never any direct comparison of structures.
In fact Tarski’s quantifier elimination for the reals had much wider ramifications
even than this. Lou van den Dries had pointed out in 1984 that the o-minimality
of the field of real numbers already gives strong information about definable rela-
tions of higher arity—in particular, it allows one to recover the cell decomposition
of semialgebraic sets in real geometry.^46 Julia Knight, Pillay, and Steinhorn gen-
eralised this cell decomposition to all o-minimal structures, and showed that any
structure elementarily equivalent to an o-minimal structure is also o-minimal.^47
O-minimal structures became one of the most productive tools for applications
of model theory, thanks largely to the insightful enthusiasm of van den Dries and
some deep applications by Alex Wilkie.^48

In 1959, Feferman and Vaught published a paper in which they study a structure _M_
of the following form.^49 An indexed family( _Ni_ : _i_ ∈ _I_ )of structures is given, and
_M_ is the Cartesian product. [ _See §13.c for notation._ ] They apply the method of
quantifier elimination to _M_ , but with a twist: instead of showing that each formula
_φ_ ( _x_ )is equivalent to a Boolean combination of basic formulas, they find for each
formula _φ_ ( _x_ )a formula Φ in the language of the powerset Boolean algebra℘( _I_ ),
and formulas _θ_ 1 ( _x_ ), ..., _θn_ ( _x_ )such that, writing _Xk_ ( _a_ )for the set of indices _i_ ∈ _I_
such that the projection of _a_ to _Ni_ satisfies _θi_ ( _x_ )in _Ni_ , the statement

```
a satisfies φ ( x )in M
```
holds if and only if

```
( X 1 ( a ), ..., Xn ( a ))satisfies Φ in℘( I ).
```
Having got this far, they were able to prove analogous theorems for various other
constructions besides Cartesian product. (The list has been expanded since.)^50
The mind boggles at how these results could ever have been discovered. In fact we
know the history, and an important ancestor of the results is work of Mostowski,^51
applying a form of quantifier elimination to show, for example, that the set of sen-
tences true in an initial ordinal with the operation of natural addition of ordinals is
a decidable set.

Before we leave the topic of quantifier elimination, we should note a quantifier elim-
ination given by Angus Macintyre for _p_ -adic number fields in a suitable first-order
language.^52 Macintyre’s reduction of the definable sets to Boolean combinations

(^46) van den Dries (1984). (^47) J. F. Knight et al. (1986). (^48) van den Dries (1998) and, for exam-
ple, Wilkie (1996).^49 Feferman and Vaught (1959).^50 Makowsky (2004).^51 Mostowski
(1952).^52 Macintyre (1976).


448 hodges: a short history of model theory

of basic sets was exactly what Jan Denef needed in order to evaluate certain _p_ -adic
integrals.^53 (This marriage of quantifier elimination and integration was soon ex-
tended to other cases.) One of Macintyre’s concerns throughout his career has been
to use first-order logic in order to bring mathematical notions into tractable forms.
A more recent example is his reduction of a significant part of William Fulton’s
scheme-theoretic _Intersection theory_ to first-order form, by careful rearrangement of
the material.^54 Macintyre’s paper illustrates how much useful work in areas related
to model theory can be done by concentration and intelligence, with only minimal
recourse to model-theoretic devices. (He uses some ultraproducts, but little else.)

```
The definition of satisfaction
```
Tarski’s truth definition of the 1930s gave, for each structure _M_ and logicL, a for-
mula _θ_ ( _x_ )of some appropriate form of higher-order logic such that

```
θ ( φ )iff φ is a sentence ofLthat is true in M.
```
[ _See §12.a._ ] The revised form in his later paper with Vaught gave a formula _θ_ ( _x_ , _y_ )
of set theory such that for every structure _M_ and first-order sentence with symbols
appropriate for _M_ ,^55

```
θ ( M , φ )↔ M is a model of φ. (2)
```
[ _See §1.3._ ] Both truth definitions used induction on the complexity of formulas,
and as a result of this the revised form actually gave a set-theoretic definition of the
relation

```
The sequence a of elements of M satisfies the formula φ.
```
The earlier definition was given for a single fixed structure; the later allowed the
structure to vary, but also involved no comparison of structures.
It is rather rare for model theorists to give arguments that refer to the existence
of set-theoretic formulas defining truth or satisfaction in structures.^56 On the other
hand the recursive clauses of Tarski’s truth definition are used constantly, often
without explicit mention. For example∃ _xφ_ ( _x_ )is true in _M_ if and only if some
element of _M_ satisfies _φ_ ( _x_ ).
Already in 1949 Abraham Robinson gave a recursive definition of a formula _θ_ as
in (2), but without invoking the notion of elements satisfying a formula.^57 He was
able to do this by adding an assumption that every element of a structure is associ-
ated with an individual constant. [ _See §1.5, Definition 1.5._ ] This association could

(^53) Denef 1984. (^54) Fulton (1984) and Macintyre (2000b). (^55) Tarski and Vaught (1958).
(^56) Such arguments do occur in what Barwise (1972) called ‘soft model theory’, which deduces mod-
el-theoretic theorems from the fact that the formula defining satisfaction is set-theoretically absolute. [ _See
§9.a._ ]^57 A. Robinson (1951: 19–21).


```
18.4. building a structure 449
```
be ‘possibly only in passing’: if a structure _M_ has elements with no correspond-
ing individual constant, then new individual constants can be added for purposes
of the truth definition. The assumption proved to be a valuable device for mathe-
matical purposes, because it led directly to Robinson’s notion of the _diagram_ of a
structure. The diagram _D_ of _M_ is the set of all atomic or negated atomic sentences
true in _M_ , in a language where every element has a corresponding individual con-
stant. [ _See §15.4, footnote 35._ ] Then _M_ is embeddable in _N_ if and only if _N_ is a
model of _D_.^58 Likewise, we can take the _complete diagram_ of _M_ to be the set of all
first-order sentences true in _M_ with constants for all elements; then _M_ is elemen-
tarily embeddable in _N_ if and only if _N_ is a model of the complete diagram of _M_.
These devices became valuable tools of the paradigm shift which Robinson initi-
ated, to make mappings between structures a central notion of model theory; see
§18.5 below.
Robinson’s truth definition was serendipity. His original reason for assuming the
individual constants was that he learned his logic not from Tarski but from Rudolf
Carnap, and Carnap had assumed that each element of a ‘state-description’—his
nearest counterpart of a structure—was named by a constant.^59 Carnap’s involve-
ment in this area was almost as old as Tarski’s. In 1932, Gödel wrote to Carnap that
he was intending to publish “eine Definition für ‘wahr’”;^60 this was in the context
of arithmetic, where every element is named by a constant term. Gödel never pub-
lished it, and we can only guess how it would have gone.^61
Following Mal’tsev,^62 many authors have found it convenient to use the notion
of the _signature_ of a structure or a language, which is the set of relation, function
and individual constant symbols of the language. [ _See §1.1, Definition 1.1._ ] An ear-
lier notion playing a similar role was the _similarity type_ , following McKinsey and
Tarski: ‘Two algebras [...] are called _similar_ if the number of operations is the same
in both algebras and if the corresponding operations [...] are operations with the
same number of terms’.^63

### 18.4 Building a structure

The method of quantifier elimination serves to analyse structures that we already
have. But model theory relies also on methods for building new structures with
specified properties.

In his paper of 1915 on the calculus of relatives, Löwenheim showed that every sen-
tence of first-order logic, if it has a model, has a model with at most countably many

(^58) Cf. A. Robinson (1956b: 24). (^59) See for example Carnap’s definition of ‘holds in a state-de-
scription’, Carnap (1947: 9).^60 Gödel (2003: 346–7).^61 See Feferman (1998).^62 Mal’tsev
(1962).^63 McKinsey and Tarski (1944: 190).


450 hodges: a short history of model theory

elements. His proof has several interesting features, including his introduction of
function symbols to reduce the satisfiability of a sentence:^64

```
∀ x ∃ yφ ( x , y )
```
to the satisfiability of the sentence

```
∀ xφ ( x , F ( x )).
```
Thus it seems that Löwenheim invented Skolem functions, if we forgive him his
bizarre explanation of the passage from the first sentence to the second. Löwen-
heim’s starting assumption is that a given sentence _φ_ is ‘satisfied’ in some domain;
this means the same as saying that some structure is a model of _φ_ , but Löwenheim
never mentions the structure, which is another reason why his proof is hard to fol-
low.^65
Skolem tidied up Löwenheim’s argument and strengthened the result.^66 He
showed, using a coherent account of Skolem functions, that if _T_ is a countable first-
order theory with a model _M_ , then _T_ has a model _N_ with at most countably el-
ements. (In fact he allowed countable conjunctions and disjunctions in the sen-
tences of _T_ too, and infinite quantifier strings.) The proof shows that _N_ can be
taken as an elementary substructure of _M_ , but at this date Skolem lacked even the
notion of substructure. [ _See §4.1 Definition 4.3, §3.8 Definition 3.7._ ] Because val-
ues have to be chosen for the Skolem functions, and the starting structure need not
allow these values to be defined explicitly (for example it may have too many auto-
morphisms), Skolem had to assume the axiom of choice.
Skolem’s argument was adapted and generalised in many ways. For example if _κ_
is an infinite cardinal,Lis a signature of cardinality at most _κ_ , and _M_ is a structure
of signatureLcontaining a set of elements _X_ of cardinality at most _κ_ , then _M_ has
an elementary substructure of cardinality at most _κ_ containing all the elements of
_X_. This is for first-order logic, but most logics allow analogous results. Theorems
of this type came to be called _Downward Löwenheim–Skolem Theorems_. [ _See §7.3,
Theorem 7.2(1)._ ] Takeuti is said to have joked that Downward must be a very clever
person to have so many theorems.

Later, Skolem made an adjustment of his argument which was fateful for model
theory.^67 Starting from a structure _M_ , he built a new structure _N_ ; but the elements
of _N_ were not elements of _M_ , they were all the ordinals below an ordinal _α_. (He
chose _α_ = _ω_ , so that the elements of _N_ were natural numbers.) The construction
of _N_ was inductive, with infinitely many steps. At each step a choice was made
that ensured that certain elements would satisfy a certain formula. (For example

(^64) Löwenheim (1915: ¶4 in the proof of Theorem 2). (^65) See the analysis in Badesa (2004).
(^66) Skolem (1920). (^67) Skolem (1922).


```
18.4. building a structure 451
```
if the formula was∃ _xR_ ( _x_ , _y_ )and _n_ was a given natural number, then it might be
specified that _R_ ( _m_ , _n_ )holds, where _m_ is the first natural number not so far used;
the well-ordering of _α_ made this choice well-defined.) Some combinatorics was
invoked to ensure that by the end of the construction _N_ would have all the required
properties.^68
Using this scheme, Skolem showed, without using the axiom of choice, that if _T_
is a countable first-order theory and _T_ has a model, then _T_ has a model with at most
countably many elements.^69 It was on this basis that he stated _Skolem’s Paradox_ : if
Zermelo–Fraenkel set theory is consistent then it has a countable model, so that
‘There are uncountable cardinals’ is satisfied in a countable domain. [ _See §8.2._ ]
The scheme allows many variations: a larger ordinal can be used, different start-
ing assumptions can be fed in, different combinatorics can be invoked. The ear-
liest variation came in the 1930 doctoral thesis of Gödel.^70 Gödel started not with
Skolem’s assumption that the theory _T_ has a model, but with the assumption that no
contradiction can be deduced from _T_ within a standard proof calculus. In this way
Gödel proved _completeness_ for first-order logic: if no contradiction can be deduced
from the countable first-order theory _T_ , then _T_ has a model. [ _See §4.a, Theorem
4.24._ ] Using the fact that proofs are finite, he pointed out the consequence that a
countable first-order theory has a model if and only if every finite subset of it has
a model; this is the _Compactness Theorem_ for countable first-order logic. [ _See §4.1,
Theorem 4.1._ ] In fact we can prove the Compactness Theorem without mention-
ing formal deductions, by moving back halfway to Skolem’s construction; instead
of assuming, as Skolem did, that _T_ has a model, we assume that every finite subset
of _T_ has a model. (This device is not in Gödel’s paper, but later it became common
knowledge.)
To prove Completeness for uncountable theories in first-order logic, the same
scheme works but with an uncountable cardinal in place of _ω_ , and more careful
combinatorics to justify the induction. This was done first by Mal’tsev (1936), and
later but independently by Leon Henkin and by Abraham Robinson.^71 Probably
the version most commonly used today is Henkin’s neat second attempt, as filtered
through Gisbert Hasenjaeger.^72 Henkin’s method prepares the theory before the
inductive construction begins. The preparation includes expanding _T_ to a maximal
syntactically consistent set—which in general requires the axiom of choice. Again
we can convert the proof to a proof of the Compactness Theorem for first-order
theories of any cardinality, by the same device as in the previous paragraph. [ _See
§§4.a–4.b._ ]

(^68) In Skolem (1922) a finite set of alternative choices were made at each step, creating a tree of choices;
then a form of König’s tree lemma was invoked to ensure that at least one branch of the tree is infinite and
hence meets the requirements.^69 Skolem (1922).^70 Gödel (1931). There is some doubt how
far Gödel was aware of Skolem (1922); see van Atten and Kennedy 2009.^71 Henkin (1949) from his
PhD thesis of 1947; A. Robinson (1951) from his PhD thesis of 1949.^72 Hasenjaeger (1953).


452 hodges: a short history of model theory

Another variation of Skolem’s scheme is omitting types. The _type_ of a tuple _a_ of ele-
ments in a structure _N_ is the set Φ( _x_ )of all formulas _φ_ ( _x_ )such that _a_ satisfies _φ_ ( _x_ )
in _N_ ; _N_ is said to _realise_ the types of its tuples of elements. If _X_ is a set of elements
of _N_ and the formulas _φ_ ( _x_ )are allowed to contain constants for the elements of _X_ ,
we say that Φ( _x_ )is a _type over X_. [ _See §14.1._ ]
The type of a tuple _a_ of elements of _N_ is an infinite set of formulas. This al-
lows the possibility that the type of _a_ is not yet determined at any finite step in the
construction of _N_ ; so if Φ( _x_ )is a particular set of formulas, we have enough op-
portunities in the construction to ensure that the type of _a_ in _N_ is not Φ( _x_ ). If _N_ is
countable then there are countably many tuples of elements, and we can interweave
the requirements so as to ensure that each of countably many sets Φ( _x_ )is _omitted_
in _N_ , in the sense that no tuple in _N_ has Φ( _x_ )as its type. (This presupposes that
the sets Φ( _x_ )are _non-principal_ , i.e. not determined by a finite part of themselves.)
Each set omitted can be ‘over’ a finite number of elements of _N_.
In 1959 Vaught gave the classic omitting types theorem for countable models of
complete first-order theories.^73 This theorem allows one to omit countably many
types at once; Vaught attributes this feature to Andrzej Ehrenfeucht. The paper also
contains _Vaught’s Conjecture_ as a question: ‘Can it be proved, without the use of the
continuum hypothesis, that there exists a complete theory having exactlyא 1 non-
isomorphic denumerable models?’ (The Conjecture is that there is no such theory.
Some special cases of the Conjecture have been proved; at the time of writing it is
still unresolved whether a counterexample has been given.)
There were several close variants of omitting types. The Henkin–Orey theorem
was one that appeared before Vaught’s paper, while Robinson’s finite forcing and
Grilliot’s theorem on constructing families of models with few types in common
were two that came later.^74 Martin Ziegler made finite forcing more palatable by
recasting it in terms of Banach–Mazur games;^75 the same recasting works for all
versions of omitting types.
Finite forcing builds existentially closed models; these were introduced into
model theory by Michael Rabin and Per Lindström.^76 During the 1970s Oleg Bele-
gradek, Ziegler, Saharon Shelah and others put a good deal of energy into construct-
ing existentially closed groups, after Macintyre had shown that they have remark-
able definability properties.^77

Skolem’s scheme also allows the use of set-theoretic prediction principles. These
are set-theoretic statements, some provable in Zermelo–Fraenkel set theory and
some true in the constructible universe or merely consistent, which tell us that cer-
tain things are guaranteed to happen a large number of times (for example on a

(^73) Vaught (1961). (^74) Orey (1956), Barwise and A. Robinson (1970), and Grilliot (1972).
(^75) Ziegler (1980). (^76) Rabin (1964) and Lindström (1964). (^77) Macintyre (1972).


```
18.4. building a structure 453
```
stationary subset of an uncountable cardinal). Such principles were first pointed
out by Ronald Jensen;^78 Shelah added Jensen’s principles and some of his own to
the arsenal of model-theoretic techniques.^79 In this work, the boundaries between
set theory, model theory, and abelian group theory become very thin.

The Compactness Theorem can often allow us to build structures without having
to go through the combinatorics needed to prove the Compactness Theorem it-
self. For example, given the Compactness Theorem, it is easy to prove that if _λ_ is
an infinite cardinal,Lis a signature of cardinality at most _λ_ , _L_ is a first-order lan-
guage of signature _σ_ , and _M_ is an infinite structure of signatureLwith fewer than
_λ_ elements, then _M_ has an elementary extension of cardinality _λ_. One takes the
complete diagram of _M_ , adds _λ_ new individual constants together with inequations
to express that the new constants stand for distinct elements, and then notes that
every finite subset of the resulting theory has a model by interpreting the finitely
many new constants in _M_. This result became known as the _Upward Löwenheim–
Skolem–Tarski Theorem_ —though Tarski’s name was generally dropped. [ _See §7.3,
Theorem 7.2(2)._ ] The irony was that it was Skolem,^80 not Tarski, who for anti-
platonist reasons refused to accept that the theorem was true (though he allowed
that it might be deducible within some formal set theories).
The Upward Löwenheim–Skolem Theorem above was first stated by Tarski and
Vaught, though the proof above by Compactness was essentially as in Mal’tsev’s
proof of a weaker result.^81 Tarski had claimed in 1934 that in 1927/8 he had proved
that every consistent first-order theory with no finite model has a model with un-
countably many elements.^82
Combinatorics could be added to Compactness to get further results. Ehren-
feucht and Mostowski showed, using Compactness and Ramsey’s Theorem, that if
_T_ is a complete first-order theory with infinite models and( _X_ ,<)is a linearly or-
dered set, then _T_ has a model _M_ whose domain includes _X_ , and for each finite _n_ ,
any two strictly increasing _n_ -tuples from _X_ satisfy the same formulas in _M_.^83 Thus
( _X_ ,<)is what later came to be called an _indiscernible sequence_ in _M_. [ _See §15.5, Def-
inition 15.20._ ] If _M_ is the closure of _X_ under Skolem functions (as we can always
arrange), _M_ is said to be an _Ehrenfeucht–Mostowski model_ of _T_.
Ehrenfeucht–Mostowski models have tightly controlled properties. For exam-
ple they realise few types (see their use in §18.7 below). By choosing( _X_ ,<)and
( _X_ ′,<′)sufficiently different, we can often ensure that the Ehrenfeucht–Mostowski
models constructed over these two ordered sets are not isomorphic; this is the basic
idea underlying many of Shelah’s constructions of large families of nonisomorphic

(^78) Jensen (1972). (^79) See for example the use of Shelah’s ‘black box’ to construct abelian groups with
interesting properties, in Corner and Göbel (1985).^80 Skolem (1955).^81 Tarski and Vaught (1958)
and Mal’tsev (1936).^82 The claim is in a note added by the editors to the end of Skolem (1934). Vaught
(1954: 160) reports the few facts that are known about this early proof by Tarski.^83 Ehrenfeucht and
Mostowski (1956).


454 hodges: a short history of model theory

models (again see §18.7). One can also construct Ehrenfeucht–Mostowski models
of infinitary theories, using various theorems of the Erdős–Rado partition calculus
in place of Ramsey’s Theorem. As a byproduct we get a versatile way of building
_two-cardinal models_ , i.e. models of first-order theories in which some definable parts
have one infinite cardinality and others have another infinite cardinality, as Michael
Morley showed.^84 (Vaught had obtained two-cardinal results earlier by other meth-
ods.)
In his doctoral dissertation of 1966 Jack Silver, building on work of Haim Gaif-
man and Frederick Rowbottom, showed that if the set-theoretic universe contains
a measurable cardinal (or even an Erdős cardinal), then the constructible universe
forms an Ehrenfeucht–Mostowski model whose indiscernibles are a class of ordi-
nals which includes all uncountable cardinals. Silver’s dissertation was published
as ‘Some applications of model theory in set theory’;^85 but the Silver indiscernibles
rapidly took on a life of their own as one of the fundamental notions of large cardinal
theory.

Other proofs of the Compactness Theorem were found later. Among the most el-
egant, one was found by Edward Frayne, Anne Morel, and Dana Scott using ultra-
products (on which see §18.6 below),^86 after Tarski had noticed that reduced prod-
ucts can be used to prove Compactness for sets of Horn sentences. [ _See §13.c, Corol-
lary 13.23._ ] A quirky but extremely neat proof of the Compactness Theorem was
found later by Itai Ben-Yaacov, using a fragment of first-order logic called positive
logic.^87

There is another general procedure for building structures; it goes by the name of
_interpretation_. [ _See Chapter 5._ ] We illustrate with the familiar construction of the
fieldQof rational numbers from the ringZof integers. SupposeZis given. We se-
lect a definable relation onZ, namely the set of all ordered pairs( _m_ , _n_ )with _n_ ≠0;
a formula _φ_ dom( _x_ , _y_ )defines this relation inZ. We define an equivalence relation
on these pairs:( _m_ , _n_ )∼( _m_ ′, _n_ ′)if and only if _mn_ ′= _m_ ′ _n_ ; a formula _φ_ ∼( _x_ , _y_ , _x_ ′, _y_ ′)
defines this relation. The elements of the structureQwill be the equivalence classes
of∼. We define the operation×on the equivalence classes, by defining it on repre-
sentatives:

```
( m , n )×( m ′, n ′)=( m ′′, n ′′)iff mm ′ n ′′= m ′′ nn ′.
```
Again this is definable inZby a formula _φ_ ×( _x_ , _y_ , _x_ ′, _y_ ′, _x_ ′′, _y_ ′′). Likewise with+and
−, and−^1 too if we find a suitable conventional value for 0−^1. The outcome is that
the instructions for buildingQfromZare coded up as a bundle Γ of formulas in the
language ofZ, indexed by the operations ofQtogether with formulas defining the

(^84) Morley (1965b). (^85) Silver (1971). (^86) Frayne et al. (1962/1963). (^87) Ben-Yaacov (2003).


```
18.5. maps between structures 455
```
equivalence classes that form the elements ofQ. We can summarise the situation
by writingQ=Γ(Z). The bundle Γ is the _interpretation_.
Note that if _R_ is any other integral domain then we can form Γ( _R_ )with the same
Γ; it will be the field of fractions of _R_. Note also that if _ψ_ is any sentence in the
first-order language ofQ, then via Γ there is a sentence _ψ_ Γsuch that _ψ_ Γholds in _R_
if and only if _ψ_ holds in Γ( _R_ ). If _ψ_ Γcan be effectively calculated from _ψ_ , and the
set of sentences true in _R_ is recursive, then it is decidable whether or not _ψ_ holds in
Γ( _R_ ).
Mostowski, Tarski, Mostowski, et al., Mal’tsev, and Ershov gave definitions of
the notion of interpretation.^88 To construct the domain of the new structure,
Mostowski and Tarski used single elements; Mal’tsev used ordered triples of ele-
ments, and Ershov introduced a definable equivalence relation on _n_ -tuples. In the
1970s model theorists became interested in the question what structures are inter-
pretable in a given structure, and Ershov’s notion of interpretation was generally the
one they used. Shelah described how one might think of the elements of structures
interpretable in a structure _M_ as _imaginary elements_ of _M_.^89
Hilbert and Bernays noticed that if the theory _T_ , suitably encoded as a set of
natural numbers, is definable in the structureNof natural numbers, then Gödel’s
completeness proof can be carried out within first-order arithmetic, and the effect
is that the built model _N_ of _T_ has the form Γ(N)for an interpretation Γ defined in
terms of _T_.^90 They also put a bound on the arithmetical complexity of the relations
of _N_. This suggestive result points in a number of directions; we mention two.
One direction is to consider structures that are encoded in the natural numbers
in such a way that all their relations and functions are recursive. Model theory with
the structures taken to be of this form is called _recursive model theory_. Mal’tsev took
some early steps in this direction.^91 The textbook of Sergei Goncharov and Ershov
could cite nearly 400 references.^92
Another direction is to exploit the idea of doing model theory within arithmetic,
for example constructing models of arithmetic within arithmetic. Ideas akin to this
allowed Jeff Paris and Leo Harrington to find, for the first time, a naturally occurring
theorem of arithmetic that is provable in set theory but independent of the first-
order Peano axioms.^93

### 18.5 Maps between structures

During the period 1930–50, mathematicians generally had begun to take a closer
interest in the maps between structures. This was the period that saw the invention

(^88) Mostowski (1948: 270), Tarski, Mostowski, et al. (1953: 20ff), Mal’tsev (1960a), and Ershov
(1974). 92 89 Shelah (1978: chIII, §6).^90 Hilbert and Bernays (1939).^91 Mal’tsev (1960b).
Goncharov and Ershov (1999); see also Ershov et al. (1998).^93 Paris and Harrington (1977).


456 hodges: a short history of model theory

of category theory. The trend naturally made its way into model theory.
Garrett Birkhoff published his famous characterisation of the classes of models of
sets of identities in 1935.^94 Birkhoff’s paper uses a number of straightforward model-
theoretic facts about mappings, for example that universally quantified equations
are preserved under taking homomorphic images; Edward Marczewski extended
this fact to all positive first-order sentences and asked for a converse.^95 Tarski re-
ported that his own work on formulas preserved in substructures (the Łoś–Tarski
Theorem) was done in 1949–50.^96
In §18.6 we will examine how these new ideas played out in model theory. In the
present section we will see how maps between structures came to play a deeper role
in model theory, not just as possible topics but as essential tools of the subject. One
can trace this development to two model theorists, Abraham Robinson and Roland
Fraïssé. I begin with Robinson.

```
Abraham Robinson
```
In his PhD thesis, Robinson considered two algebraically closed fields _M_ and _N_
of the same characteristic.^97 By juggling upwards and downwards Löwenheim–
Skolem arguments, he found algebraically closed fields _M_ ∗and _N_ ∗which both
have transcendence degree _ω_ , such that the same first-order sentences hold in _M_ ∗
and _M_ (so that _M_ and _M_ ∗have the same characteristic), and the same holds for _N_
and _N_ ∗. Then he quoted Steinitz’s Theorem, that two algebraically closed fields of
the same characteristic and the same transcendence degree are isomorphic. From
this he deduced that the same first-order sentences hold in _M_ ∗and _N_ ∗, and hence
also in _M_ and _N_. So the first-order theory of algebraically closed fields of a given
characteristic is a complete theory—it settles all questions in the language.
There were two major novelties here. First, Robinson used a known algebraic
fact about maps between structures (Steinitz’s Theorem) in order to deduce a
model-theoretic conclusion. Second, he used complete diagrams so as to construct
elementary embeddings. At this date the use of elementary embeddings was only
implicit. [ _See §4.1, Definitions 4.3–4.4._ ] Tarski defined elementary extensions in
1952/3 (though at that date he called them arithmetical extensions) and published
them some years later.^98 Conspicuously, Tarski failed even then to define elemen-
tary embeddings; ‘elementary imbeddings’ [sic] appeared in a paper first published
in 1961.^99
Between Robinson’s doing this work and publishing it, Tarski published the
completeness of the theory of algebraically closed fields of a given characteristic,
which he had discovered by the method of quantifier elimination. So the method of
quantifier elimination gave Robinson’s result, together with other results that didn’t

(^94) Birkhoff (1935). (^95) Marczewski (1951). (^96) Tarski (1954). (^97) A. Robinson (1951:
59–60).^98 Tarski and Vaught (1958).^99 Kochen (1961).


```
18.5. maps between structures 457
```
obviously yield to Robinson’s new methods. The next few years saw Robinson
working hard to extend his methods to capture Tarski’s results and more besides.
To this work we owe the notions of model completeness, model companion, differ-
entially closed field, an amalgamation criterion for quantifier elimination, model-
theoretic forcing, and Robinson’s joint consistency theorem that gave the Craig In-
terpolation Theorem.
Vaught was one of the first model theorists to exploit the new methods. For ex-
ample he pointed out, using essentially Robinson’s argument, that any countable
theory that is _λ_ -categorical for some infinite _λ_ and has no finite models must be
complete; this is _Vaught’s Test_.^100 [ _See §3.b, Proposition 3.10._ ] Robinson wrote ap-
preciatively of Vaught’s Test, noting that his own argument could be simplified by
taking _λ_ uncountable.^101

```
Roland Fraïssé
```
In 1953/4 Fraïssé published two papers in which he pointed out that certain count-
able structures are in a sense determined by the families of finite structures embed-
dable in them.^102 Taking the ordered set of rational numbers as a paradigm, he made
two important observations.

```
(a)We can characterise those classes of finite structures which are of the form
```
```
all finite structures embeddable in M
```
```
for some countable structure M. (Following Fraïssé I shall call these γ -
classes —it is not a standard name.)
(b)A γ -class has the amalgamation property if and only if M can be chosen to
be homogeneous, and in this case M is determined up to isomorphism by
the γ -class. (A classKhas the amalgamation property if for all embeddings
e 1 : A Ð→ B 1 and e 2 : A Ð→ B 2 withinKthere are embeddings f 1 :
B 1 Ð→ C and f 2 : B 2 Ð→ C , also withinK, such that f 1 ○ e 1 = f 2 ○ e 2.
A is homogeneous if every isomorphism between finite substructures of A
extends to an automorphism of A .)
```
By observation (a), Fraïssé introduced into model theory a kind of Galois theory
of structures: it invited one to think of a structure as built up by a pattern of amal-
gamated extensions of smaller structures. This idea became important in stability
theory.
By observation (b), Fraïssé introduced the amalgamation property into model
theory (though the name came later). Also he provided a way of building countable
structures by assembling a suitable _γ_ -class of finite structures; intuitively, one keeps
extending in all possible ways, amalgamating the resulting extensions as one goes.

(^100) Vaught (1954). (^101) A. Robinson (1956b: 11). (^102) Fraïssé (1953, 1954a).


458 hodges: a short history of model theory

His version of the idea was modest, but it continues to be widely used as a source
of _ω_ -categorical structures. Ehud Hrushovski used a version of it to construct his
‘new strongly minimal set’.^103 [ _See §17.3._ ]
In 1956 and 1960 Bjarni Jónsson, who had reviewed Fraïssé’s 1953-paper, pub-
lished two papers removing the limitation to finite and countable structures in
Fraïssé’s construction of homogeneous structures.^104 The price he had to pay was
that the generalised continuum hypothesis was needed at some cardinals. Morley
realised almost at once that, thanks to the Compactness Theorem, Jónsson’s as-
sumptions on the _γ_ -class are verified if one considers the class of all ‘small’ subsets
of models of a complete theory _T_ and replaces embeddings by partial elementary
maps—i.e. elementary maps defined on a subset of a model.^105 One feature of the
resulting structures _M_ , at least under suitable conditions on the cardinals involved,
was that if _X_ was a set of elements of _M_ , of smaller cardinality than _M_ itself, then
every type of _T_ over _X_ would be realised in _M_. This property of _M_ was called _sat-
uration_ (generalising Vaught’s notion of a saturated countable structure).^106
The Morley–Vaught theory tells us that under suitable set-theoretic assump-
tions, every structure has a saturated elementary extension. These set-theoretic as-
sumptions were always a stumbling block, and so weak forms of saturation were
devised that served the same purposes without special assumptions. For exam-
ple every structure has an elementary extension that is special.^107 Every countable
structure has a recursively saturated elementary extension.^108 For every structure
_M_ and cardinal _κ_ , _M_ has an elementary extension that is _κ_ -saturated, meaning that
every type over fewer than _κ_ elements is realised.
Saunders Mac Lane reports that when his student Morley first brought him the
material that led to Morley and Vaught 1962, ‘[...] I said, in effect: “Mike, applica-
tions of the compactness theorem are a dime a dozen. Go do something better’.”^109
Mac Lane adds that Morley’s Theorem (see §18.7 below) was the fruit of this advice.
[ _See §17.3, Theorem 17.3._ ]

In the 1970s there was some debate about how best to handle the Morley–Vaught
_γ_ -class. Gerald Sacks proposed one should think of it as a category with partial
elementary maps as morphisms.^110 Shelah went straight to a very large saturated
model _C_ (but we never ask exactly how large); in his picture the _γ_ -class is simply the
class of all small subsets of the domain of _C_ , and the partial elementary maps are the
restrictions of automorphisms of _C_.^111 Shelah’s view prevailed. The structure _C_ was
known as the _big model_ or (following John Baldwin) the _monster model_. Studying

(^103) Hrushovski (1992, 1993). (^104) Jónsson (1956, 1960). (^105) Vaught had come to similar conclu-
sions independently. They published this in Morley and Vaught 1962. Morley and Vaught used a trick from
Skolem 1920, adding relation symbols so that partial elementary maps become embeddings.^106 Vaught
(1961).^107 Chang and Keisler (1990: 217).^108 Barwise and Schlipf (1976).^109 Mac Lane
(1989).^110 Sacks (1972).^111 Shelah (1978: chI §1).


```
18.5. maps between structures 459
```
models of a complete first-order _T_ , one could go to a monster model and restrict
oneself to subsets of the domain of this model, and elementary maps between them.
In practice the monster model came to be used in a way that reflected Robinson’s
approach with complete diagrams. Morley and Vaught speak of Jerome Keisler’s
‘“one element at a time” property’.^112 Keisler himself compared his procedure with
the element-at-a-time methods used by Cantor and Hausdorff to build up isomor-
phisms between densely ordered sets.^113 Briefly, the idea was to define a partial
elementary map by starting with a well-ordered listing of elements, say( _ai_ : _i_ < _κ_ ),
and constructing a corresponding listing( _ci_ : _i_ < _κ_ )by induction on _i_ , so that each
_ci_ realises the same type over( _cj_ : _j_ < _i_ )as _ai_ realises over( _aj_ : _j_ < _i_ ). Then the
mapping _ai_ ↦ _ci_ is elementary. An initial segment of( _ci_ : _i_ < _κ_ )might be given
by the problem in hand, and then _κ_ -saturation was invoked to find the remaining
elements. Amalgamations would be built up one element at a time: for example
given _Y_ ⊃ _X_ and an element _b_ , one would amalgamate _Y_ and _X_ ∪{ _b_ }over _X_ , and
speak of extending the type of _b_ over _X_ to a type over _Y_.

Around 1970 category theory was developing fast. People noted that by going
with Shelah rather than with Sacks, the model-theoretic community had opted
for the analogue of André Weil’s ‘universal domain’,^114 rather than the more re-
cent category-theoretic language of Grothendieck. But other model theorists kept
the category connection alive. Michael Makkai and colleagues did some ground-
work,^115 but the categorical approach never came to centre stage. Perhaps model
theorists enjoy handling elements and dislike morphisms between theories. Nev-
ertheless we can point to one useful outcome: Daniel Lascar visited Makkai and
discussed with him the category of elementary embeddings between models of a
complete theory. Lascar’s enquiries threw up the idea of _Lascar strong type_ ,^116 which
plays a significant role in the study of simple theories and elsewhere.

In the 1970s Saharon Shelah was looking for suitable abstract settings for work in
stability theory for infinitary languages. He called one such setting _abstract ele-
mentary classes_.^117 An abstract elementary class is a class of structures of some
given signature, together with a relation≺between structures, satisfying certain
axioms. The axioms include a variant of Jońsson’s axiom of unions of chains;
they don’t include joint embedding or amalgamation, though these two axioms are
added for many applications. Shelah restored the amalgamation viewpoint with a
vengeance:^118 to construct structures of cardinality _ωn_ from countable pieces, he
formed _n_ -dimensional amalgams. Shelah carries a remarkable amount of model

(^112) Morley and Vaught (1962). (^113) Keisler (1961: footnote on Theorem 2.2), his doctoral disserta-
tion. See Cantor (1895) and Hausdorff (1908).^114 Weil (1946: ch.IX §1).^115 Makkai and Paré
(1989).^116 Lascar (1982).^117 Shelah (1987a) and Grossberg (2002).^118 Shelah (1983).


460 hodges: a short history of model theory

theory over into the setting of abstract elementary classes, considering that the ax-
ioms make no reference to any language—in fact the blurb of his 2009a includes
the remark that ‘Abstract elementary classes provide one way out of the cul de sac
of the model theory of infinitary languages which arose from over-concentration
on syntactic criteria’. This is partly explained by Shelah’s Presentation Theorem,
which states that every abstract elementary class can be got by taking the class of all
models of some given first-order theory which omit certain types, and then forming
reducts to a smaller signature.
Abstract elementary classes turned out to be a suitable setting for various ana-
logues of first-order model theory. For example Zilber, discussing his ‘analytic
Zariski geometries’, used a notion of stability got by considering these geometries
within a suitable abstract elementary class.^119 Also work of Hrushovski, Pillay, and
Ben-Yaacov led to the notion of a _compact abstract theory_ , or _cat_ for short, which
forms a setting for the model theory of Banach spaces or of Hilbert spaces.^120 The
motivations behind cats and abstract elementary classes are different, but there are
links.^121

In 1964 Jan Mycielski noticed that Kaplansky’s notion of an algebraically compact
abelian group (today more often called a pure-injective abelian group) has a purely
model-theoretic characterisation that is a close analogue of saturation.^122 With col-
leagues in Wrocław, Mycielski developed this observation into a theory of _atomic
compact structures_ , which was useful on the borderline between model theory and
universal algebra.
Since atomic compact structures have a large amount of symmetry, they tend to
have neat algebraic structural descriptions too; in fact this was the reason for Ka-
plansky’s interest in them. To some extent the same holds for saturated structures,
and even for _κ_ -saturated structures when _κ_ is large enough. For example in 1970
Paul Eklof and Edward Fischer (and independently Gabriel Sabbagh) noted that ev-
ery _ω_ 1 -saturated abelian group is algebraically compact, and so one can read off the
results of Wanda Szmielew’s quantifier elimination for abelian groups rather easily
from Kaplansky’s structure theory.^123 Likewise, Ershov used _ω_ 1 -saturated Boolean
algebras to recover Tarski’s quantifier elimination results for Boolean algebras.^124
Clean methods of this kind quickly became standard practice.

### 18.6 Equivalence and preservation

Tarski tells us that by 1930 he had defined the relation of _elementary equivalence_ , in
modern symbols: _M_ ≡ _N_ if the same first-order sentences are true in _M_ as in

(^119) Zilber (2010: 137). (^120) Ben-Yaacov (2003). (^121) See Baldwin (2009: 36), and his references
there.^122 Mycielski (1964).^123 Eklof and Fischer (1972) and Szmielew (1955).^124 Ershov
(1964).


```
18.6. equivalence and preservation 461
```
_N_.^125 [ _See §2.4, Definition 2.4._ ] But it was only in 1950 that he claimed to have a
mathematical (as opposed to metamathematical) definition of this notion.^126 His
definition went by cylindrifications and made no reference to sentences or formu-
las being satisfied in structures. In 1946 he had asked for ‘a theory of [elementary]
equivalence of algebras as deep as the notions of isomorphism, etc. now in use’.^127
Model theorists evidently found Tarski’s cylindrical definition of≡unappealing,
and soon two other ‘mathematical’ characterisations of the notion appeared.

```
Ultraproducts
```
In 1955 Jerzy Łoś described a construction based on Cartesian products _M_ =
Prod _i_ ∈ _INi_ of structures of some fixed signatureL.^128 An ultrafilter _D_ on _I_ (i.e.
a maximal filter on the powerset℘( _I_ )) is given. [ _See §13.2, Definition 13.3._ ] Each
relation symbol _R_ ofLis defined to hold of a tuple _a_ of elements of _M_ if and only
if the set

```
{ i ∈ I : Rx is satisfied in Ni by the projection of a at Ni }
```
is in the ultrafilter _D_ ; and corresponding clauses hold for function and constant
symbols. Equality is read this way too, so that any two elements of the product are
identified if and only if the set of indices where they agree is in _D_. [ _See §13.c._ ] The
resulting structure is called an _ultraproduct_ of the _Ni_ , or an _ultrapower_ if the _Ni_ are
all equal. Łoś showed that if _φ_ ( _x_ )is a first-order formula of signatureL, and _a_
a tuple of elements of the product, then _a_ satisfies _φ_ ( _x_ )in the ultraproduct if and
only if the set of indices _i_ at which the projection of _a_ satisfies _φ_ ( _x_ )in _Ni_ is a set
in the ultrafilter; this is _Łoś’s Theorem_. [ _See §13.c, Theorem 13.22._ ] Łoś’s Theorem
was new, but it came to light that ultraproducts or their close relatives had been used
earlier by Skolem, Hewitt, and Arrow.^129 Skolem’s application was model-theoretic,
to build a structure elementarily equivalent to the natural numbers with+and×but
not isomorphic to them.
We remarked in §18.4 above that ultraproducts give a fast and efficient proof of
the Compactness Theorem. It can be done in several ways. For example let _T_ be
a nonempty first-order theory such that every finite subset of _T_ has a model. Let
_I_ be the set of finite subsets of _T_ , and for each _i_ ∈ _I_ let _Ni_ be a model of _i_. For
each sentence _φ_ ∈ _T_ let _Xφ_ be the set of finite subsets of _T_ that contain _φ_. Then all
intersections of finitely many sets _Xφ_ are nonempty, so there is an ultrafilter _D_ on
_I_ containing each _Xφ_. It follows at once by Łoś’ Theorem that the resulting ultra-
product is a model of _T_. [ _See §13.c, Corollary 13.23._ ]
By suitable choice of index set and ultrafilter one can ensure that ultraproducts
are _κ_ -saturated, for any required _κ_. Keisler exploited this fact to show, with the

(^125) Tarski (1935b: Appendix). (^126) Tarski (1952: 712). (^127) Tarski (2000: 27). (^128) Łoś (1955b).
(^129) Skolem (1931), Hewitt (1948), and Arrow (1950).


462 hodges: a short history of model theory

help of the generalised continuum hypothesis, that two structures are elementarily
equivalent if and only if they have isomorphic ultrapowers.^130 Ten years later Shelah
proved the same theorem without assuming the generalised continuum hypothe-
sis, and hence gave a ‘purely mathematical’ characterisation of elementary equiv-
alence.^131 Kochen gave another characterisation of elementary equivalence, using
direct limits of ultrapowers.^132
Thus it turned out that ultraproducts were useful largely because of their high sat-
uration. Since there are other ways of getting highly saturated models of a theory,
this made ultraproducts one of the less essential tools of model theory—though
some model theorists keep them on hand as a concrete and transparent construc-
tion. There are also a few important theorems for which ultraproducts give the
only known reasonable proofs; one is Keisler’s theorem that uncountably categor-
ical theories fail to have the finite cover property.^133 But they never achieved in
model theory the central role that they came to play in set theory, thanks to Scott.^134

```
Back-and-forth equivalence
```
Fraïssé found another way of characterising elementary equivalence without men-
tioning formulas. He described a hierarchy of interrelated families of partial iso-
morphisms between structures.^135 In terms of this hierarchy he gave necessary and
sufficient conditions for two relational structures to agree in all prenex first-order
sentences with at most _n_ alternations of quantifier, where _n_ is any natural number.
So _M_ ≡ _N_ if _M_ and _N_ agree in this sense for all finite _n_. Fraïssé’s paper was unfor-
tunately hard to read, and his ideas became known through a paper of Ehrenfeucht
who recast them in terms of games.^136 Soon afterwards they were rediscovered by
the Kazakh mathematician Asan Taimanov.^137
In Ehrenfeucht’s version, two players play a game to compare two structures _M_
and _N_. The players alternate; in each step, the first player chooses an element of
one structure and the second player then chooses an element of the other structure.
The second player loses as soon as the elements chosen from one structure satisfy a
quantifier-free formula not satisfied by the corresponding elements from the other
structure. (Mention of formulas here is easily eliminated.) This is the _Ehrenfeucht-
Fraïssé back-and-forth game_ on the two structures. For a first-order language with
finitely many relation and individual constant symbols and no function symbols,
one could show that _M_ and _N_ agree in all sentences of quantifier rank at most _k_ if
and only if the second player has a strategy that keeps her alive for at least _k_ steps.
[ _See §16.6._ ] Hence _M_ is elementarily equivalent to _N_ if and only if for each finite
_k_ , the second player can guarantee not to lose in the first _k_ steps.

(^130) Keisler (1961). (^131) Shelah (1971a). (^132) Kochen (1961). (^133) Keisler (1967). (^134) Scott
(1961).^135 Fraïssé (1956).^136 Ehrenfeucht (1960/1961).^137 Taimanov (1962).


```
18.6. equivalence and preservation 463
```
With this equipment it is very easy to show, for example, that if _G_ , _G_ ′are ele-
mentarily equivalent groups and _H_ , _H_ ′are elementarily equivalent groups, then
the product group _G_ × _H_ is elementarily equivalent to _G_ ′× _H_ ′.
The beauty of this idea of Fraïssé and Ehrenfeucht was that nothing tied it to
first-order logic. Ehrenfeucht himself used it to prove the equivalence of various
ordinal numbers as ordered sets with predicates for+and×, in a language with a
second-order quantifier ranging over finite sets.^138 Carol Karp adapted it to infini-
tary logics,^139 and it reappeared in Chen Chung Chang’s construction of Scott sen-
tences.^140 [ _See §16.6 Theorem 16.4._ ] Today, theoretical computer scientists know it
in a thousand different forms.

We turn to applications of all this machinery. One striking application of ele-
mentary equivalence was Abraham Robinson’s creation of nonstandard analysis in

1961.^141 [ _See Chapter 4._ ] He used the Compactness Theorem to form an elemen-
tary extension∗Rof the fieldRof real numbers (with any further relations attached)
containing infinitesimal elements. He noted that if a theorem of real analysis can be
written as a first-order sentence _φ_ , then to prove _φ_ it suffices to use the infinitesimals
to show that _φ_ is true in∗R(a typical example of what Robinson called a _transfer
argument_ ).

James Ax and Kochen in 1965/6 used the new model-theoretic methods to find a
complete set of axioms for the field of _p_ -adic numbers (uniformly for any prime
_p_ ).^142 Their approach was completely different from the method of quantifier
elimination, and it seems likely that any proof by that method would have been
hopelessly unwieldy. Instead they considered saturated valued fields of cardinality
_ω_ 1. Using algebraic and number-theoretic arguments, Ax and Kochen were able
to show that under certain conditions, any two such fields are isomorphic. They
then wrote down these conditions as a first-order theory _T_. Assuming the gener-
alised continuum hypothesis, any two countable models _M_ , _N_ of _T_ have saturated
elementary extensions of cardinality _ω_ 1 , which are isomorphic, so that _M_ and _N_
must be elementarily equivalent. This proves the completeness of _T_ (and hence its
decidability since the axioms are effectively enumerable); a similar argument us-
ing saturated structures shows that _T_ is model-complete, and one more push shows
that the theory admits elimination of quantifiers. There are various tricks that one
can use to eliminate the generalised continuum hypothesis.
This work of Ax and Kochen, together with very similar but independent work of
Yuri Ershov,^143 marked the beginning of a long line of research in the model theory
of fields with extra structure (for example with valuations or automorphisms). But
it hit the headlines because it gave a proof of an ‘almost everywhere’ version of a

(^138) Ehrenfeucht (1960/1961). (^139) Karp (1965). (^140) Chang (1968). (^141) A. Robinson (1961).
(^142) Ax and Kochen (1965a,b, 1966). (^143) Ershov (1965).


464 hodges: a short history of model theory

conjecture of Emil Artin on _c_ 2 fields. Since counterexamples to the full conjecture
appeared shortly afterwards, ‘almost everywhere’ was about as much as one could
hope for, short of an explicit list of the exceptions.

A notion different from elementary equivalence, but somewhere in the same ball-
park, is as follows. Suppose _F_ is a class of mappings between structures, and _φ_ ( _x_ )a
formula. We say that _F preserves φ_ ( _x_ )if the following holds: _whenever f_ : _M_ Ð→ _N
is a mapping in F anda is a tuple of elements satisfying φ_ ( _x_ ) _in M, then f_ ( _a_ ) _satisfies
φ_ ( _x_ ) _in N._ A _preservation theorem_ is a theorem characterising, for some class _F_ of
mappings, the class of formulas that are preserved by _F_. For example the Łoś–Tarski
Theorem can be paraphrased as characterising the class of formulas preserved by
embeddings between models of a given theory.^144
Stretching the definition above a little, we say that a formula _φ_ ( _x_ )is _preserved in
unions of chains_ when for every chain( _Mi_ : _i_ < _β_ )of structures with union _Mβ_ and
every tuple _a_ of elements of _M_ 0 , if _a_ satisfies _φ_ ( _x_ )in _Mi_ for each _i_ < _β_ then it also
satisfies _φ_ ( _x_ )in _Mβ_. Chang and Łoś and Suszko showed that a first-order formula
_φ_ ( _x_ )is preserved in unions of chains if and only if it is logically equivalent to a for-
mula of the form∀ _y_ 1 ...∀ _ym_ ∃ _z_ 1 ...∃ _znψ_ where _ψ_ has no quantifiers (such formulas
are called∀ 2 formulas, or Π 2 formulas).^145 In the case where _φ_ is a sentence (no
free variables), the main thing to be proved is that if Θ is the set of all∀ 2 sentences
_θ_ that are consequences of _φ_ , then every model of Θ is elementarily equivalent to
the union of a chain of models of _φ_ (and hence is a model of _φ_ ). This can be proved
by building up a chain whose even-numbered members form an elementary chain
of models of Θ, and whose odd-numbered members are models of _φ_.
The model-building techniques of the previous section were honed on this and
many similar problems. The text of Chang and Keisler, first published in 1973, is a
compendium of the main achievements of model theory up to that date.^146

It was natural to ask how far the results of this section could be generalised to other
languages; in the 1950s and 1960s this usually meant languages with infinitary fea-
tures or generalised quantifiers. When someone had introduced a technique for
first-order languages, he or she could move on to testing the same technique on
stronger and stronger languages. Often a variant of the technique would still work,
but set theoretic assumptions and arguments would begin to appear. An observa-
tion of William Hanf helped to organise this area: he noted that for any reasonable
language _L_ there is a least cardinal _κ_ (which became known as the _Hanf number_ of
_L_ ) such that if a sentence of _L_ has a model of cardinality at least _κ_ then it has ar-
bitrarily large models.^147 A great deal of work and ingenuity went into finding the
Hanf numbers of a range of languages.

(^144) Tarski (1954) and Łoś (1955a). (^145) Chang (1959) and Łoś and Suszko (1957). (^146) Chang and
Keisler (1990).^147 Hanf (1960).


```
18.7. categoricity and classification theory 465
```
One effect of this trend was that during the period from 1950–70 the centre of
gravity of research moved away from first-order languages and towards infinitary
languages, bringing a heady dose of set theory into the subject. Allow me two anec-
dotes. In about 1970 a Polish logician reported that a senior colleague of his had
advised him not to publish a textbook on first-order model theory, because the sub-
ject was dead. And in 1966 David Park, who had just completed a PhD in first-order
model theory with Hartley Rogers at MIT, visited the research group in Oxford and
urged us to get out of first-order model theory because it no longer had any interest-
ing questions. (Shortly afterwards he set up in computer science, where he applied
back-and-forth methods.)

### 18.7 Categoricity and classification theory

In 1959, Lars Svenonius showed that among countable structures, the models of
_ω_ -categorical theories are precisely those structures whose automorphism group
has finitely many orbits of _n_ -element sets, for each finite _n_.^148 Permutation groups
with this property are said to be _oligomorphic_.^149 Other model theorists gave other
characterisations of _ω_ -categoricity.^150
Łoś asked: If _T_ is a complete theory in a countable first-order language, and _T_
is _λ_ -categorical for some uncountable _λ_ , then is _T_ also _λ_ -categorical for every un-
countable _λ_?^151 [ _See §17.3._ ] With hindsight we can see that this was an extraor-
dinarily fortunate question to have asked in 1955, for two main reasons. The first
was that at just this date the tools for starting to answer the question were becom-
ing available. If _T_ is _λ_ -categorical and _M_ , _N_ are models of _T_ of cardinality _λ_ which
are respectively highly saturated and Ehrenfeucht–Mostowski, then _M_ and _N_ are
isomorphic and we deduce that models of _T_ of cardinality _λ_ have very few types to
realise. This is strong information. Thus Łoś’s question ‘stimulated quite a bit of
the work concerning models of arbitrary complete theories’.^152
Second, Łoś’s question was unusual in that it called for a description of _all_ the
uncountable models of a theory. The answer would involve finding a _structure the-
orem_ to explain how any model of the theory is put together. This pointed in a very
different direction from Tarski’s ‘mutual relations between sentences of formalised
theories and mathematical systems in which these sentences hold’.^153 One mark
of the change of focus was that expressions like ‘uncountably categorical’ (i.e. _λ_ -
categorical for all uncountable _λ_ ) and ‘totally categorical’ (i.e. _λ_ -categorical for all
infinite _λ_ ), which originally applied to theories, came to be used chiefly for _models_
of those theories. For example Walter Baur wrote of ‘א 0 -categorical modules’.^154

(^148) Svenonius (1959). (^149) Cf. Cameron (1990). (^150) Notably Ryll-Nardzewski (1959). (^151) Łoś
(1954).^152 Vaught (1963).^153 Tarski (1954).^154 Baur (1975).


466 hodges: a short history of model theory

In 1965, Michael Morley answered Łoś’s question in the affirmative; this is _Mor-
ley’s Theorem_.^155 [ _See §17.3, Theorem 17.3._ ] Amid all the literature of model theory,
Morley’s paper stands out for its clarity, its elegance and its richness in original ideas.
Morley’s central innovation was _Morley rank_ , which assigns an ordinal rank to each
definable relation in any model of a theory _T_ which is _λ_ -categorical for some un-
countable _λ_. (In Morley’s presentation the rank was assigned to complete types, but
later workers generally used the induced rank on formulas or definable relations.)
Morley gave the name _totally transcendental_ to theories that assign a Morley rank to
all definable relations in their models; the terminology came from transcendental
extensions in field theory. Morley conjectured that the Morley rank of any uncount-
ably categorical structure (i.e. the Morley rank of the formula _x_ = _x_ ) is always finite;
this was proved soon afterwards by Baldwin and Zilber independently.^156 (As a
special case, the Morley rank of an algebraic set over an algebraically closed field is
equal to its Krull dimension and hence is finite.)
Baldwin and Lachlan reworked and strengthened Morley’s results.^157 [ _See §17.3,
Theorem 17.6._ ] Building on the unpublished dissertation of William Marsh,^158 they
showed that each model of an uncountably categorical theory carries a definable
_strongly minimal set_ with an abstract dependence relation that defines a dimension
for the model. Once the strongly minimal set is given, the rest of the model is as-
sembled around it in a way that is unique up to isomorphism. They also showed
that the number of countable models of such a theory, up to isomorphism, is either
1 or _ω_. [ _See §17.2._ ]
A few young researchers set to work to extend Morley’s result to uncountable
first-order languages. One of them was Frederick Rowbottom, who introduced the
name ‘ _λ_ -stable’ for theories with at most _λ_ types over sets of _λ_ elements;^159 hence
the name _stability theory_ for this general area.
In 1969, Saharon Shelah began to publish in stability theory.^160 With his
formidable theorem-proving skill, he reshaped the subject almost from the start
(and some other model theorists fled from the field rather than compete with him).
By 1971 he had proved the uncountable analogue of Morley’s Theorem.^161 But more
important, he had formulated a plan of action for classifying complete theories.
Ehrenfeucht had already noticed that a theory which defines an infinite linear or-
dering on _n_ -tuples of elements must have a large number of non-isomorphic mod-
els of the same cardinality.^162 Shelah saw this result as marking a division between
‘good’ theories that have few models of the same cardinality, and ‘bad’ theories that
have many. Shelah’s strategy was to hunt for possible bad features that a theory
might have (like defining an infinite linear ordering), until the list was so compre-
hensive that a theory without any of these features is pinned down to the point

(^155) Morley (1965a). (^156) Baldwin (1973) and Zilber (1974). (^157) Baldwin and Lachlan (1971).
(^158) Marsh (1966). (^159) Rowbottom (1964). (^160) Shelah (1969). (^161) Shelah (1974a).
(^162) Ehrenfeucht (1960/1961).


```
18.7. categoricity and classification theory 467
```
where we can list all of its models in a structure theorem. [ _See §17.2._ ] As Shelah
once explained it in conversation, the outcome should be to show that wheneverK
is the class of all models of a complete first-order theory, ‘ifKis good, it is very very
good, but ifKis bad it is horrid’. Shelah coined the word _nonstructure_ for the horrid
case, and he suggested several definitions of nonstructure.^163 In one definition, a
nonstructure theorem finds a family of 2 _λ_ models of cardinality _λ_ , none of which is
elementarily embeddable in any other. In another definition, a nonstructure theo-
rem finds two nonisomorphic models of cardinality _λ_ that are indistinguishable by
strong infinitary languages.
Pursuing this planned dichotomy, Shelah wrote some dozens of papers and one
large and famously difficult book.^164 Shelah also wrote a number of papers on analo-
gous dichotomies for infinitary theories or abstract classes of structures.^165 His own
name for this area of research was _classification theory_. The name applies at two lev-
els: first-order theories classify structures, and Shelah’s theory classifies first-order
theories.
Shelah himself sometimes suggested that his main interests lay on the nonstruc-
ture side:

I was attracted to mathematics by its generality, its ability to give information where ap-
parently total chaos prevails, rather than by its ability to give much concrete and exact
information where we a priori know a great deal.^166

We should be careful not to deduce too much from this. Shelah’s own work on the
‘good’ side vastly expanded the range of the new tools introduced by Morley. Also
it gradually came to light, again mainly through Shelah’s own work, that there is not
just one dichotomy between good and bad theories; there are many good/bad di-
chotomies, and they partition the world of complete first-order theories in a com-
plicated pattern. Generally speaking, each dichotomy is defined by the fact that
models of theories on the bad side of it have some combinatorial property.^167
It seemed at first that a minimal requirement for any good structure theory was
that the theory should be _stable_ , i.e. _λ_ -stable for some cardinal _λ_. For stable theories,
Shelah introduced a notion of relative dependence called _forking_ , which reduced to
linear or algebraic dependence in classical structures. In terms of forking he defined
a class of types which he called _regular_ , which carry a dependence relation that gives
a cardinal dimension to the set of elements realising them. By the late 1980s it was
becoming clear that much of the resulting machinery still worked in theories that
were not stable. For example forking still behaved well in a larger class of theories
that Shelah had introduced under the name _simple_.^168

(^163) Shelah (1985). (^164) Shelah (1978); the second edition in 1990 reports the successful completion of
the programme for countable first-order theories in 1982.^165 E.g. Shelah (1978).^166 Shelah (1987b:
154).^167 At the time of writing, Gabriel Conant has a web page with a map of the main dichotomies:
[http://www.forkinganddividing.com.](http://www.forkinganddividing.com.)^168 Shelah (1980) and Kim (1998).


468 hodges: a short history of model theory

In stable theories any complete type is in a certain sense ‘definable’ by first-order
formulas.^169 Shelah showed that the definition can always be taken over a _canonical
base_ which is a family of ‘imaginary’ elements of the model. A special case of his
construction is André Weil’s field of definition of a variety,^170 except that here the
field of definition consists of ordinary elements, not imaginary ones. Bruno Poizat
explained this in 1985 by showing that algebraically closed fields have _elimination of
imaginaries_ , in the sense that their genuine elements can stand in for their imaginary
ones.^171
Stable groups turned out to have an unexpectedly large amount of structure,
much of which carried over to modules (which are always stable). Poizat created
a rich theory of stable groups by generalising ideas from Baldwin and Jan Saxl, Zil-
ber, and Cherlin and Shelah.^172 Poizat’s framework allows one to rely on intuitions
from algebraic geometry in handling stable groups; for example their behaviour is
strongly influenced by their generic elements.

One response to the work of Morley and Shelah was to ask what their classifications
meant in concrete mathematical situations. The result was a series of papers deter-
mining what structures in various natural classes were categorical, totally transcen-
dental and so forth. The first nontrivial paper of this kind was by Joseph Rosenstein
on _ω_ -categorical linear orderings.^173 But certainly the most influential was a paper
of Macintyre, where he showed that an infinite field is totally transcendental if and
only if it is algebraically closed.^174
Cherlin and Shelah showed that every superstable skew field is an algebraically
closed field.^175 In the course of this and related work, both Zilber and Cherlin in-
dependently noticed that a group definable in an uncountably categorical structure
has many of the typical features of an algebraic group; in Russia the group theo-
rists Vladimir Remeslennikov and Alexandre Borovik were having similar thoughts.
Cherlin conjectured that every totally transcendental simple group is up to isomor-
phism an algebraic group over an algebraically closed field.^176 This became known
as _Cherlin’s Conjecture_. It was an invitation to model theorists to blend their tech-
niques with those of the classification of finite simple groups. In 2008 Tuna Altınel,
Borovik, and Cherlin published a report on the substantial results achieved.^177
In the preface to that work, the authors wisely comment:

[...] much of the history of pure model theory, which underwent a revolution beginning
in the late sixties, and even (or perhaps, particularly) for those who lived through much
of the latter, is not easy to reconstruct in a balanced way.^178

(^169) Shelah (1971b), and independently Lachlan (1972). (^170) Weil (1946: 68). (^171) Poizat (1985:
§16e).^172 Poizat (1985); cf. Baldwin and Saxl (1976), Zilber (1977), and Cherlin and Shelah (1980).
(^173) Rosenstein (1969). (^174) Macintyre (1971). (^175) Cherlin and Shelah (1980). (^176) Cherlin
(1979).^177 Altınel et al. (2008).^178 Altınel et al. (2008: xvii).


```
18.8. geometric model theory 469
```
This is a warning to readers of the three sections below. These parts of model theory
are still on the move. I have recorded events and discoveries as I learned of them at
the time, but future historians will be much better placed to distinguish the chassis
from the bumper stickers.

### 18.8 Geometric model theory

Geometric model theory classifies structures in terms of their combinatorial ge-
ometries and the groups and fields that are interpretable in the structures. The roots
of this theory go back to work of Lachlan, Cherlin, and above all Zilber in stability
theory in the 1970s, and for this reason the theory is also known as _geometric stability
theory_.^179 But by the early 1990s it emerged that the same ideas sometimes worked
well in structures that were by no means stable.
An abstract dependence relation gives rise to a combinatorial geometry—in
what follows I say just ‘geometry’. In this geometry certain sets of points are closed,
i.e. they contain all points dependent on them. Zilber classified geometries into
three classes:^180 ( _a_ ) _trivial_ or _degenerate_ , where all sets of points are closed; ( _b_ ) non-
trivial locally modular, which are not trivial but if a finite number of points are fixed
(i.e. made dependent on the empty set), then the resulting lattice is modular—for
brevity this case is often called _modular_ ; ( _c_ ) the remainder, known briefly as _non-
modular_. Classical examples are: for ( _a_ ), the dependence relation where an element
is dependent only on sets containing it; for ( _b_ ), linear dependence in a vector space;
for ( _c_ ), algebraic dependence in an algebraically closed field.
This classification made its way into model theory rather indirectly. Zilber was
working on a proof that no complete totally categorical theory is finitely axioma-
tisable. (His first announcement of his proof of this result in 1980 was flawed by a
writing-up error which was later repaired.)^181 In work on _ω_ -categorical stable the-
ories, Lachlan had introduced a combinatorial structure which he called a _pseudo-
plane_.^182 A key step in Zilber’s argument was to show that no totally categorical
structure contains a definable pseudoplane. From this he deduced that the geome-
try of the strongly minimal set must be either trivial or modular, and his main result
followed in turn from this. Cherlin, on reading Zilber’s 1980-paper and seeing the
error, went to the classification of finite simple groups and proved directly that the
strongly minimal set must be either trivial or modular.^183 This result has a purely
group-theoretic formulation. In fact several people discovered it independently,
and it became known as the _Cherlin–Mills–Zilber Theorem_ in honour of three of
them. Zilber’s proof, which avoids the error mentioned above, reaches the result
without the classification of finite simple groups.

(^179) As in the title of Pillay (1996). (^180) Zilber (1981). (^181) Zilber (1980), and
then Zilber (1993).^182 Lachlan (1973/74).^183 Cherlin, Harrington, et al. (1985).


470 hodges: a short history of model theory

```
Zilber also called attention to the following combinatorial configuration:^184
```
which occurs in modular strongly minimal sets. (The blobs are points of the ge-
ometry. All points are pairwise independent. A line between three points means
they form a dependent set.) He showed how to construct a group from the con-
figuration; but since this was in the middle of an argument by reductio ad absur-
dum and quite strong assumptions were in force, it was less than the definitive re-
sult. Hrushovski looked closer and showed, using Zilber’s configuration, that ev-
ery modular regular type has an infinite group interpretable in it (in a generalised
sense).^185

When Baldwin and Lachlan had shown that every uncountably categorical struc-
ture consists of a strongly minimal set _D_ and other elements attached around it,
they found they needed to say something about the way these other elements are
attached.^186 Because of categoricity, something in the theory has to prevent the set
of attached elements being larger than _D_. The simplest guess would be that each at-
tached element has to satisfy an algebraic formula (i.e. one satisfied by only finitely
many elements) with parameters in _D_. Baldwin and Lachlan finished their paper
with a complicated example to show that this need not hold. Later Baldwin realised
that an easy example was already to hand: a direct sum _G_ of countably many cyclic
groups of order _p_^2 for a prime _p_. The socle (the set of elements of order at most _p_ )
is strongly minimal, in fact a vector space over the _p_ -element field. An element _a_ of
order _p_^2 is described by saying what _pa_ is; but if _b_ is any element of the socle then
some automorphism of _G_ fixes the socle pointwise and takes _a_ to _a_ + _b_. In fact the
orbit of _a_ over the socle is parametrised by elements of the socle. This parametrisa-
tion keeps the orbit from having cardinality greater than that of the socle.
Zilber realised that this was a common pattern in uncountably categorical struc-
tures.^187 Each such structure is a finite tower; at the bottom is a strongly minimal
set, and as we go up the tower, the orbit of an element over the preceding level
in the tower is always parametrised by some group interpretable in that preced-
ing level. He called these groups _binding groups_. There are some cohomological

(^184) Zilber (1984a: Lemma 3.3). (^185) Hrushovski (1987). (^186) Baldwin and Lachlan (1971).
(^187) Zilber (1993).


```
18.8. geometric model theory 471
```
constraints, which allowed Ahlbrandt and Ziegler to begin cataloguing the possi-
bilities.^188 Cherlin and Hrushovski, drawing on these ideas of Zilber and work of
Lachlan, proved deep classification results on families of finite structures.^189

In the light of Zilber’s work on uncountable categoricity and its extension by Cher-
lin, Harrington, and Lachlan,^190 model theorists looked to see what other structures
might have modular geometries. One particularly influential result was proved in-
dependently by Hrushovski and Pillay, and published jointly:^191 a group _G_ is mod-
ular (i.e. has only modular or trivial geometries) if and only if for each finite _n_ , all
definable subsets of _Gn_ are Boolean combinations of cosets of definable subgroups.
We saw that Zilber first applied his trichotomy of geometries by showing that in
the particular structures he was considering, the non-modular case never occurred.
Zilber now proposed to apply the same trichotomy to another question, namely
whether every simple group interpretable in an uncountably categorical structure
must be an algebraic group over an algebraically closed field. (Cf. Cherlin’s Conjec-
ture above.) Algebraically closed fields themselves have non-modular geometry; at
the 1984 International Congress Zilber conjectured the converse, viz. that any un-
countably categorical structure with non-modular geometry must be—up to inter-
pretability both ways—an algebraically closed field.^192 This was known as _Zilber’s
Conjecture_. [ _See §17.3._ ]
A word about Zilber’s motivation may be in order. Macintyre said in 1988 that
‘Purely logical classification[s] give only the most superficial general information’
(and attributed the point to Georg Kreisel).^193 Zilber was convinced that the op-
posite must be true: if classical mathematics rightly recognises certain structures as
‘good’, then it should be possible to say in purely model-theoretic terms what makes
these structures good. In fact Zilber in conversation quoted Macintyre (1971) as
an example of how a purely model-theoretic condition (total transcendence) can
be a criterion for an algebraic property (algebraic closure). Zilber was also con-
vinced that being a model of an uncountably categorical countable first-order the-
ory is an extremely strong property with rich mathematical consequences, among
them strong homogeneity and the existence of a definable dimension.
In 1988 Hrushovski refuted Zilber’s Conjecture using an ingenious variant of
Fraïssé’s construction from §18.4 above.^194 But for both Zilber and Hrushovski this
meant only that the right condition hadn’t yet been found. Since it seemed to be
particularly hard to recover the Zariski topology from purely model-theoretic data,
a possible next step was to axiomatise the Zariski topology. This is not straight-
forward: it has to be done in all finite dimensions simultaneously, since the closed
sets in dimension _n_ don’t determine those in dimension _n_ +1. But Hrushovski de-

(^188) Ahlbrandt and Ziegler (1991). (^189) Cherlin and Hrushovski (2003). (^190) Cherlin, Harrington,
et al. (1985). 194 191 Hrushovski and Pillay (1987).^192 Zilber (1984b).^193 Macintyre (1989).
Hrushovski (1993).


472 hodges: a short history of model theory

scribed a set of axioms, and Zilber and Hrushovski found that, by putting together
what they knew, they could prove that Zilber’s Conjecture holds for models of the
axioms.^195
Hrushovski proved, for the first time, the geometric Mordell–Lang Conjecture
in all characteristics.^196 Key ingredients of his argument were the results on the
Zariski topology and on weakly normal groups, and earlier results on the stability
of separably closed fields and differentiably closed fields. Hrushovski went on to
apply a similar treatment to the Manin–Mumford Conjecture.^197 This case was a
little different: the structures in question were unstable. But Hrushovski showed
that they inherited enough stability from a surrounding algebraically closed field;
and in any case they were ‘simple’ in Shelah’s classification.

### 18.9 Other languages

In 1885 Charles Peirce, fresh from inventing quantifiers, mentioned that the uni-
versal and the existential quantifier are not the only examples.^198 He gave the ex-
ample of the quantifier ‘For two-thirds of all _x_ ’. Unfortunately, nobody picked up
Peirce’s idea, until Mostowksi called attention to the quantifiers ‘For at leastא _αx_ ’.^199
Mostowski’s paper was timely, because it was useful to have in the 1960s a variety of
extensions of first-order logic for testing out new constructions. [ _See Chapter 16._ ]
Lindström 1969 was another timely paper, in which he gave model-theoretic nec-
essary and sufficient conditions for a logic to have the same expressive power as
first-order logic. His result suggested that it might be possible to fit the various
logics studied during the previous decade into some higher organisation of logics,
within a _generalised_ (or _abstract_ ) _model theory_. Alas, the facts weren’t there to sup-
port such a theory. The 1970s saw some valiant efforts in this direction, and by the
mid-1980s a large amount was known about many different logics extending first-
order logic.^200 But the most quotable outcome was that very few logics apart from
first-order logic satisfy a Craig Interpolation Theorem.

The mathematical logicians within computer science shrugged their shoulders and
asked what is the interest of a logic in which it is impossible to express everyday no-
tions like connectedness, even on finite structures. Thus, for example, Yuri Gure-
vich:

The question arises how good is first-order logic in handling finite structures. It was not
designed to deal exclusively with finite structures. [...] One would like to enrich first-
order logic so that the enriched logic fits better the case of finite structures.^201

(^195) Hrushovski and Zilber (1996). For details see Zilber (2010: Appendix B.2). (^196) Hrushovski
(1996).^197 Hrushovski (2001).^198 Peirce (1885).^199 Mostowski (1957).^200 See Barwise
and Feferman (1985).^201 Gurevich (1984).


```
18.9. other languages 473
```
One solution was first-order logic with a fixed-point operator added, as proposed by
Ashok Chandra and David Harel.^202 The model theory of this logic and its relatives
were studied mostly by computer scientists, but this seems to be purely an accident
of history; these languages would have been good to have available in the 1960s.
Also of interest to computer scientists were languages with only a finite num-
ber of variables. Michael Mortimer launched the topic by showing that in a signa-
ture with no function symbols, any consistent first-order sentence using at most
two variables has a finite model.^203 Barwise and, independently, Neil Immerman
showed how to modify Ehrenfeucht-Fraïssé games to languages with at most _n_ vari-
ables;^204 Immerman called the result _pebble games_.

Tarski, in his truth definitions, had taken universal and existential quantification
to be dual to each other. This was at variance with a tradition running from Aris-
totelian logic up to modern formal linguistics, according to which existential quan-
tifiers should be read as disguised Skolem functions.^205 Henkin and Jaakko Hin-
tikka (with the collaboration of Gabriel Sandu) brought this tradition into model
theory.^206 These authors noted that by suppressing some of the arguments of the
Skolem functions we can increase the expressive power of the language, so as to ex-
press independence of one variable from another (as in Henkin’s _branching quanti-
fiers_ ).^207 They also noted that the Skolem functions can be read as strategies for the
player∃in a semantic game between players∀and∃that can be used to give a truth
definition for sentences; the suppressed arguments correspond to places where the
information available to∃in the game is imperfect.
For model theory a difficulty was that the Skolem function approach to exis-
tential quantifiers made it impossible to give a sensible interpretation of subfor-
mulas within the scope of an existential quantifier. This problem was resolved by
Hodges,^208 who replaced the notion ‘tuple _a_ satisfies _φ_ ( _x_ )in _M_ ’ by the notion
‘the set _a_ , _b_ , ... of tuples satisfies _φ_ ( _x_ )in _M_ ’, thus introducing what Väänänen later
called _team semantics_. Peter van Emde Boas noticed that some of the conditions
in Hodges’ truth definition were identical to conditions appearing in the study of
database dependencies. This point was taken up by Väänänen and his colleagues in
Helsinki, to develop a model theory of teams, with hopes of using it to bring logic
to bear on questions in database theory, statistics, and quantum theory.^209

(^202) Chandra and Harel (1980). (^203) Mortimer (1975). (^204) Barwise (1977) and Immerman (1982).
(^205) See the references in Hodges (2015). (^206) Henkin (1961) and Hintikka (1996). (^207) See also
Blass and Gurevich (1986).^208 Hodges (1997b).^209 Abramsky et al. (2016).


474 hodges: a short history of model theory

### 18.10 Model theory within mathematics

In their addresses to the 1950 International Congress of Mathematicians at Har-
vard and MIT, both Abraham Robinson and Tarski expressed the hope that the
new subject of model theory—for which neither of them had a name yet—would
contribute to algebra and beyond:

[...] contemporary symbolic logic can produce useful tools—though by no means om-
nipotent ones—for the development of actual mathematics, more particularly for the de-
velopment of algebra and, it would appear, algebraic geometry.^210

[Model theory has applications] which may be of general interest to mathematicians and
especially to algebraists; in some of these applications the notions of [model theory] itself
are not involved at all.^211

Compare these remarks with the comment of Ludwig Faddeev, an observer on the
sidelines, in the closing ceremony of the 2002 International Congress of Mathemati-
cians at Beijing:

Take for instance the sections of logic, number theory and algebra. The general underlin-
ing mathematical structures as well as language, used by speakers, were essentially iden-
tical.^212

Job done, one might well say!

Model theory had grown fast. Already the Omega Group bibliography of model
theory in 1987 ran to 617 pages.^213 By the mid-1980s there were too many dialects
of mathematical model theory for anybody to be expert in more than a fraction.
For example, very few model theorists could claim to understand both the work of
Zilber and Hrushovski at the edge of algebraic geometry, and the studies by Immer-
man, Dawar, and other theoretical computer scientists on definable classes of finite
structures.
Right from the beginning, model theorists found themselves engaging with other
areas of mathematics. In the period from 1950 –70 most of these interactions were
with set theory, not with algebra or number theory. From around 1970 there was
less interaction with axiomatic set theory. But recent years have seen an increasing
amount of discussion between model theory and descriptive set theory. For exam-
ple when it was realised that Fraïssé’s construction in §18.5 above had already been
applied by Pavel Urysohn to finite metric spaces with rational distances, the way
was open to apply ideas of topological dynamics to Fraïssé-type constructions, as
in Alexander Kechris, Vladimir Pestov, and Stevo Todorcevic.^214

(^210) A. Robinson (1952: 694). (^211) Tarski (1952: 717). (^212) Li (2002: 35). (^213) G. H. Müller
et al. (1987).^214 Urysohn (1927) and Kechris et al. (2005).


```
18.11. notes 475
```
The title of Kechris et al.’s paper mentions Ramsey’s Theorem, a reminder
that this combinatorial theorem was used in the 1950s to construct Ehrenfeucht–
Mostowski models. Links between model theory and combinatorics never ceased,
as witness the paper of Maryanthe Malliaris and Shelah relating Szemerédi’s Reg-
ularity Lemma to the structure theory of graphs stable in the model-theoretic
sense.^215 Shelah’s book had a twenty-page Appendix of ‘the combinatorial theo-
rems needed in the book’.^216

We have described above some of the interactions between model theory, algebraic
geometry and number theory, mostly before the year 2000. More recent years have
seen dramatic advances in this area, resting on the earlier work. One example is the
_Pila–Wilkie Theorem_ , which applies o-minimality in order to bound the numbers of
rational points in various sets definable in the real numbers,^217 building on earlier
work of Wilkie with o-minimal structures.
Another advance, also closely tied to earlier notions, is the work of Zlil Sela which
gives a positive answer to Tarski’s question whether all nonabelian finitely generated
free groups are elementarily equivalent.^218 The proof ran through several papers
and involved building an analogue of diophantine geometry for such groups.^219

These examples can serve as an indication that future historians of model theory
will have plenty of high quality material to write about.

### 18.11 Notes

Several model theory texts give more detailed historical information about partic-
ular theorems; for example Chang and Keisler 1990, Hodges 1993, and Pillay 1996.
Dawson 1993 and Lascar 1998 both overlap the present essay. There are surveys on
the model-theoretic work of Skolem by Hao Wang (Skolem 1970, 17–52) and on
that of Tarski in Vaught 1986.

### 18.12 Acknowledgments

This essay was originally written in the 1990s at the invitation of Dirk van Dalen for a
projected volume on the history of mathematical logic, which sadly never appeared.
It was good that Tim Button and Sean Walsh offered a congenial home for it. For
their volume I made some corrections and brought the perspective more up to date,
but otherwise the content is unaltered.

(^215) Malliaris and Shelah (2014). (^216) Shelah (1978). (^217) Pila and Wilkie (2006). (^218) Sela
(2006).^219 See also Kharlampovich and Myasnikov (2006) for an alternative approach.


476 hodges: a short history of model theory

Everybody I ever encountered in model theory should be thanked for their
implicit contributions. But I tried to keep a note of those people who helped
with specific points in it, and the list is as follows: Zofia Adamowicz, Bektur
Baizhanov, John Baldwin, Oleg Belegradek, Tim Button, Greg Cherlin, John W.
Dawson, John Doner, Yuri Ershov, Solomon Feferman, Ivor Grattan-Guinness,
Marcel Guillaume, Angus Macintyre, Dugald Macpherson, Maria Panteki, Anand
Pillay, Gabriel Sabbagh, Hourya Sinaceur, Jouko Väänänen, Robert Vaught, Jan
Woleński, Carol Wood, Boris Zilber, Jan Zygmunt. Very probably other people
have slipped through the net—my apologies to them.


