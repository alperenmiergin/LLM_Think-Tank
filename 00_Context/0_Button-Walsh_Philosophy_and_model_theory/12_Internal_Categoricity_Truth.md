**Kaynak:** [[00_Context/0_Button-Walsh_Philosophy_and_model_theory/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

## 12 Internal categoricity and truth

So far, we have considered internalism about both arithmetic and set theory. The
very idea of internalism is speculative. But in this third and final chapter on inter-
nalism, we will push into even more speculative terrain. The framing question is:
_Can internalists say anything about mathematical truth?_
As we will quickly see, the question is independently interesting. However, it is
also important to understanding the _literature_ on internal categoricity. In particu-
lar, McGee explicitly claims that his Theorem 11.6 shows that every sentence con-
cerning pure sets has a determinate truth value. If he is right, then presumably our
Theorem 11.4 does the same. Equally, presumably Theorem 10.2 shows that every
sentence concerning numbers has a determinate truth value. All of this would be
extremely exciting, for reasons we shall explore in 12.1.
Unfortunately, though, McGee never explains _how_ internal categoricity might
yield the determinacy of truth. Moreover, considerations from §10.3 raise serious
obstacles to the very idea that an internal categoricity result could ever tell us any-
thing about truth. So the aim of this chapter is to ask whether internalists can eke
out _something_ here. Along the way, we will introduce internalism about _model the-
ory_ , and thereby attain a new understanding of Putnam’s internal realism.

### 12.1 The promise of truth-internalism

We begin by both motivating an internalist’s attempt to retain truth-talk, and show-
ing why, if it succeeded, it would be an incredible thing. We will initially focus on
the case of arithmetic, though the same points will apply to pure set theory.
There is an intuitive route from intolerance towards truth-talk. Using the nota-
tion introduced in §10.6, suppose that one person advances PAint[a]∧ _φ_ int[a]and
another person advances PAint[b]∧ ¬ _φ_ int[b]. Even though they are using different
arithmetical vocabularies, the intolerance of PAintshows that, on pain of deductive
inconsistency, both parties must hold that one of them is _right_ and that the other
is _wrong_. Or—making the obvious connection—only one of them said something
_true_ and the other said something _false_. In short, intolerance leads quite naturally
to truth-talk.^1

(^1) This connects loosely with Price’s suggestions that ‘Truth is the grit that makes our individual opin-
ions engage with one another’, and that ‘The distinguishing mark of genuine assertion is [...] that by de-


272 internal categoricity and truth

Suppose— _just for now_ —that the internalist can develop this point further, and
convincingly defend the following thought:

_The truth-internalist manifesto.The intolerance of arithmetic shows that every sen-
tence in the language of arithmetic has a determinate truth value. Specifically, Theorem
10.3 shows that every arithmetical sentence has a determinate truth value._

Delivering truth-internalism would be a remarkable achievement, in every sense.
To spell out why: anyone who thinks that every arithmetical sentence has a de-
terminate truth value faces an obvious doxological question: _How are creatures like
us capable of speaking an arithmetical language with that property?_^2 Modelists will
offer an answer along these lines: _We use our language to pick out a particular iso-
morphism type; and the determinacy of truth follows from the elementary equivalence of
isomorphic models_. But this is just what the _moderate_ cannot say. She must, after all,
reject modelism, for all the reasons given in Chapters 7–9. She does not think that
our language picks out an isomorphism type. What gives the doxological question
its bite, then, is the moderate’s acceptance of the idea that truth values are not deter-
mined by some external thing, like an isomorphism type, but by something which
we ‘do, say, or think’.^3
Once upon a time, the following answer to the question seemed available: _Arith-
metical truth just is deductive provability from a nicely specifiable theory of arithmetic;
all we need to do is set down the right theory and master the deductive system._ Un-
fortunately, Gödel’s incompleteness theorems show that this response is fatally
flawed. Since any reasonable deductive system of arithmetic is incomplete, iden-
tifying arithmetical truth with anything computably enumerable means giving up
on the idea that every arithmetical sentence has a determinate truth value.
At this point, though, the doxological question which we have just raised might
start to become _desperate_ , for any moderate who wants to claim that every arith-
metical sentence has a determinate truth value. Indeed, it might well seem that it is
simply _impossible_ to answer the question without giving up on moderation.^4

fault, difference is taken as a sign of _fault_ ’ (2003: 169, 183). However, it is worth emphasising the differences.
Price suggests that the concept of truth is exhausted by combining some kind of friction-generating norm
with the disquotational concept of truth. But there is a general question one can put to Price: _When should
there be disagreement, and why?_ Price cannot simply dismiss this question, for it is clearly part of our con-
cept of disagreement that it has a normative dimension: we can all think of cases of furious friction where
the participants are merely talking past each other and so _should stop_ disagreeing; or, conversely, of cases
where people think they are smoothly agreeing when in fact they _should_ be disagreeing. And, until he tells
us how to answer that question, Price cannot claim to have exhausted the concept of truth. (Cf. Tiercelin
2013: 663–4.) Now, we do not want to say anything here about the concept of truth in _general_. However,
our internalist can invoke Theorem 10.3 to explain _why_ disagreement is required in the arithmetical case.

(^2) This is the explicit focus of McGee (1997), and implicit in Dummett (1963).
(^3) This locution, in this context, is due to McGee (1997: 60, 2000: 59–60).
(^4) Cf. Button (2013: 56–7).


```
12.2. truth operators 273
```
The promise of truth-internalism, then, is that it will answer the doxological
question, using only doxological resources, without falling afoul of Gödelian in-
completeness. For, the truth-internalist about arithmetic attempts to answer the
doxological question as follows: _Our use of a particular deductive system—namely de-
ductive second-order logic together with_ DI 2 _—settles (somehow) that every arithmetical
sentence has a determinate truth value._
Note that the truth-internalist’s answer to the doxological question immediately
raises a further question: _But what settles which truth value each sentence has?_ Given
the deductive incompleteness of PAint, the truth-internalist cannot think that the
matter is always settled by considering what is deducible within PAint. Equally,
since she eschews semantic ascent, she cannot say that the matter is settled by the
relationship between our words and the behaviour of things ‘out there’ (such as
an intended model). So it seems like truth-internalists must accept the possibility
that, _our use of a deductive system settles that every sentence is either true or false, but
sometimes nothing settles which it is._ This is rather disquieting.
The point is perhaps even more disquieting, if we consider truth-internalism
about pure set theory rather than arithmetic. Truth-internalists about pure set the-
ory will want to say: _our use of a deductive system—namely deductive second-order
logic together with_ CSPint _—settles (somehow) that every (pure) set-theoretical sentence
has a determinate truth value._ Quite remarkably, then, they think that using a system
which is too weak to _decide_ whether there is more than one pure set nonetheless
settles _that_ every pure-set-theoretical sentence is either true or false. (And in pass-
ing: if this really _is_ a problem for truth-internalists who appeal to CSPint, then it is
equally a problem for McGee, who appeals to the much stronger theory ZFCUint.
We imagine this sort of worry: _McGee’s approach must be faulty, since if it worked for_
ZFCUint _, it would also work for_ CSPint _, and that’s ridiculous!_ )
All this, however, just amounts to trading incredulity at the very idea of truth-
internalism against grandiose promisory notes from the truth-internalist). We can-
not make any real progress until we start to consider _how_ one might progress from
intolerance to the determinacy of truth.
In the next three sections, then, we unpack truth-internalism in three different
ways. To repeat: all of this is extremely speculative. So we should also emphasise:
even if _truth_ -internalism fails, the internalism outlined in Chapters 10 and 11 may yet
succeed.

### 12.2 Truth operators

We start with an attempt to defend truth-internalism via the introduction of truth
_operators_. We will focus on arithmetic and the theory PAint, but all of the points of
this section apply equally to CSPint.


274 internal categoricity and truth

```
Defining new operators
```
Let us say that an _arithmeticalNumsentence_ is a sentence in PAint’s signature whose
quantifiers are _Num_ -restricted. Where _φ_ is any arithmetical _Num_ sentence, let
_φ_ ∗( _NzS_ )be the formula which results by replacing each instance of ‘ _Num_ ’ with
‘ _N_ ’, each instance of ‘0’ with ‘ _z_ ’, and every instance of ‘ _Succ_ ’ with ‘ _S_ ’. Now, for each
arithmetical _Num_ sentence _φ_ , we define some new object language operators:

```
(a)t φ iff∀ NzS (PA( NzS )→ φ ∗( NzS ))
(b)f φ iff∀ NzS (PA( NzS )→¬ φ ∗( NzS ))
(c)i φ otherwise
```
These explicit definitions allow us to restate our Intolerance Theorem 10.3 as fol-
lows: _for any arithmeticalNumsentence φ,_ ⊢(t _φ_ ∨f _φ_ )_._^5
So far, this is just playing with definitions. The interesting philosophical question
is whether the truth-internalist can legitimately gloss (a)–(c) as follows:

```
(a∗) it is true that φ iff φ holds in all internal-structures
(b∗) it is false that φ iff¬ φ holds in all internal-structures
(c∗) it is indeterminate whether φ otherwise
```
The right-hand-side of each of these claims simply amounts to offering the standard
internalist gloss of ‘ _φ_ holds in all internal-structures’, as set out in §10.1. The left-
hand-side, however, requires that these newly-defined operators have something
to do with the intuitive notions of _truth_ and _falsity_. (It is worth adding that these
glosses (a∗)–(c∗) are obviously just an internalist’s version of _supervaluationism_. We
have encountered supervaluationism many times before—in §2.5, §7.2, and §8.4—
precisely because it is is an extremely natural approach to truth and falsity in math-
ematical settings where one wants to leave room for indeterminacy, at least at the
outset.)
We want, then, to consider two questions. First: are internalists allowed to gloss
these defined operators in terms of _truth_? Second: would this vindicate truth-
internalism? We consider these questions in that order.

```
Truth with language–object relations
```
There is an obvious in-principle barrier to the very _idea_ of thinking that the opera-
torst,fandihave anything to do with _truth_.
It is common to hold that the very _idea_ of truth requires a _bona fide_ language–
object relation. Certainly this seems right outside of mathematics: the sentence

(^5) Note: since the operators are explicitly defined, they add no expressive power to the language. Note,
also, that they cannot be iterated. The operators are defined only for arithmetical _Num_ sentences. When
_φ_ is an arithmetical _Num_ sentence, the quantifiers in the sentence∀ _NzS_ (PA( _NzS_ )→¬ _φ_ ∗( _NzS_ ))are _not
Num_ -restricted. Sot _φ_ is _not_ an arithmetical _Num_ sentence, and hencett _φ_ is ill-defined.


```
12.2. truth operators 275
```
‘Venus rotates’ is true iff the planet Venus rotates, so the _sentence_ ’s truth value de-
pends upon the behaviour of the _planet_ Venus. Objects-modelists think that mathe-
matical truth similarly requires a _bona fide_ language–object relation: they think that
an arithmetical sentence is true iff it is satisfied in certainL-structures. And, quite
generally, if truth and falsity _do_ require a _bona fide_ language–object relation, then
glossing the defined object-language operatorstandfin terms of _truth_ is hopelessly
wrong-headed.
This point is important, and we do not want to downplay its significance.
Equally, though, we do not want to suggest that it is a knockdown objection. An
analogy may help. Consider the thought: _if God is dead, then everything is meaning-
less_. That is too hasty: there may be a kind of meaning—maybe even fresh kinds of
meaning—in the absence of God. Similarly: there may be a kind of truth—maybe
even fresh kinds of truth—in the absence of language–object relations.
Unfortunately, then, the general point is as easy to state as it is unfathomable.
The viability of this approach turns on an answer to the question: _What is truth,
either in mathematics or elsewhere?_ This will be a recurrent theme of the chapter. We
know of no way around it, and we know of no way of answering it.

```
Expressive limitations
```
Still, at least for the sake of argument, let us allow the internalist to gloss her new
operatorst,fandiin terms of _truth_. This will allow her to rephrase Theorem 10.3
as follows:

```
(1)for any arithmetical Num sentence φ ,⊢(it is true that φ ∨it is false that φ )
```
However, what the internalist wanted was _truth-internalism_ , i.e. the conclusion:

```
(2) for any arithmetical Num sentence φ , either φ is true or φ is false.
```
But, unfortunately for her, there is no direct path from (1) to (2).^6 Obviously (1) is
different from (2), since (2) involves the sign ‘⊢’. Now, the internalist might think
that she can simply _delete_ that sign, since she presumably accepts everything that
she can prove. But simply deleting that sign would yield:

```
(1#) for any arithmetical Num sentence φ , either it is true that φ or it is false that φ
```
And this is not the same as (2); indeed, it is not even _grammatical_. The essential
problem is that ‘it is true that...’ is an _operator_ which applies to sentences, whereas
‘...is true’ is a _predicate_ which applies to objects. So one can say, for example, ‘it is
true that there are infinitely many twin prime pairs’, but it is ungrammatical to say
‘it is true that the Twin Primes Conjecture’. But an instance of (1#) would indeed
be the ungrammatical sentence:

(^6) Many thanks to Rob Trueman for convincing us of this, via this argument.


276 internal categoricity and truth

```
(1∗#) either it is true that the Twin Primes Conjecture or it is false that the Twin
Primes Conjecture.
```
The problem is simple. Even if internalists can legitimately gloss their operators in
terms of truth and falsity, this does not even give them the resources to _formulate_
truth-internalism, let alone endorse it.

### 12.3 Internalism about model theory and internal realism

The immediate upshot of the last section is that truth-internalism requires the use
of truth-predicates, and hence it requires semantic ascent. But this might seem to
threaten the very idea of truth- _internalism_. After all, as outlined in Chapters 10–11,
internalism eschews semantic ascent altogether. In fact, we think that internalists
_can_ embark on a project of semantic ascent, without compromising their internal-
ism. But this requires some real delicacy.

```
Putnam’s internal realism
```
We take our guide here from Putnam:

Nor does the [internalist] have to foreswear _forever_ the notion of a model. He has to
foreswear reference to models in his account of _understanding_ ; but, once he has succeeded
in understanding a rich enough language to serve as a metalanguage for some theory _T_
(which may itself be simply a sublanguage of the metalanguage, in the familiar way), he
can define ‘true in _T_ ’ à la Tarski, he can talk about “models” for _T_ , etc.^7

We suggest that internalist should extract, from this passage, the following thought.
Suppose we embrace internalism about _model theory itself_. Then nothing prevents
us from talking about ‘models of _T_ ’, or truth, provided that this all takes _within_ the
(deductively understood) model theory.
That is the guiding idea, and we will elaborate upon it in this section. More gen-
erally, we think that internalism about model theory will deliver something like Put-
nam’s _internal realism_ in the philosophy of mathematics.^8 So it will help to lay down
a few more of Putnam’s remarks.
Putnam sketched only an extremely brief outline of his internal realism, as it
might apply in the case of philosophy of mathematics.^9 This sketch occupies the

(^7) Putnam (1980: 479). Putnam has ‘intuitionist (or, more generally, the “nonrealist” semanticist)’
where we have ‘[internalist]’.
(^8) Cf. Parsons’ (1990b: 39, 2008: 288) claim that there is some link between internal categoricity and
Putnam’s internal realism.
(^9) Moreover in the general case, internal realism meant different things at different times to Putnam.
For a general discussion, see Button (2013: chs.8–11).


```
12.3. internalism about model theory and internal realism 277
```
last side or so of his ‘Models and Reality’, and it is worth quoting two chunks. First,
Putnam outlined the problem:

To adopt a theory of meaning according to which a language whose whole use is specified
still lacks something—viz. its ‘interpretation’—is to accept a problem which can only have
crazy solutions. To speak as if _this_ were my problem, ‘I know how to use my language, but,
now, how shall I single out an interpretation?’ is to speak nonsense. Either the use _already_
fixes the ‘interpretation’ or nothing can.^10

Then, Putnam sketched his solution:

[...] the metalanguage is completely understood, and so is the object language [...]. Even
though the model referred to satisfies the theory, etc., it is ‘unintended’; we recognize that
it is unintended _from the description through which it is given_ [...]. Models are not lost
noumenal waifs looking for someone to name them; they are constructions within our
theory itself, and they have names from birth.^11

We do not suggest that Putnam had our internalism in mind when he wrote these
passages: he cannot have done, for he never discussed internal categoricity. How-
ever, we think that an internalist can make very good sense of Putnam’s claims.

```
From set theory to model theory
```
In Chapter 11, we outlined how to develop internalism about pure set theory. This
straightforwardly allows us to develop internalism about model theory.
In common with almost every branch of mathematics, model theory is largely
carried out ‘informally’: the proofs are discursive; they omit tedious steps; etc.
However, we can easily make sense of the idea that, ‘officially’, model theory is
implemented within set theory. After all, model-theorists freely use set-theoretic
vocabulary and set-theoretic axioms to describe and construct models. Indeed, all
of the definitions of Chapter 1 could in principle be rewritten formally, using the
vocabulary of some (second-order) set theory.
So, in what follows, MTintwill be some suitably internalised set theory, to be used
for model theoretic purposes. We need not pin down its specifics, beyond insisting
on the following:

```
(1)MTintdeals with a pure set property, Pure , and a membership relation,∈.
(2) MTint⊢CSPint, so that MTintis internally categorical with respect to its
pure sets.
(3)MTintis a single sentence, so that we can continue to use it during internal
categoricity results, in the form of conditionals like∀ PE (MT( PE )→...)
```
(^10) Putnam (1980: 481–2).
(^11) Putnam (1980: 482).


278 internal categoricity and truth

```
(4) MTintproves that there are infinitely many sets, so that it has the resources
to carry out basic reasoning concerning arithmetic and syntax. (Note that
CSPintalone lacks this feature.)
```
As such, MTinthas the vocabulary and conceptual resources for developing model
theory as a branch of pure mathematics. And our internalist about model theory
states that model theory is ‘officially’ to be regarded as being implemented deduc-
tively within MTint.
An internalist about model theory can now follow Putnam in saying that models,
orL-structures, are ‘constructions within our theory itself’. To be clear, though,
this claim is not a bit of constructivist _metaphysics_.^12 Rather, this claim is almost tau-
tologous. The point is that the very definition of anL-structure is offered within
MTint, and any talk of ‘construction’ ofL-structures is an heuristic shorthand for
deductive work carried out within MTint.

```
Dealing with ‘interpretations’
```
At the risk of repetition, internalists understand MTintin a purely _deductive_ fashion.
The focus on deduction may lead some to mistake internalism for _if-thenism_. But
this would be a mistake, for all the reasons mentioned in §10.7. Internalism is not
if-thenism, or formalism, or anything in the ballpark, since internalists about model
theory affirm MTint, and all its consequences, _unconditionally_.
Still, our internalist’s insistence on deductively understanding MTintraises an
obvious question: _Every deductive theory has many interpretations if it has any; so
how do you pin down_ MTint _’s particular interpretation?_ Ultimately, our internalist
should reply with a question of her own: _Why should I want to pin down a particular
interpretation of_ MTint_?_ But that blunt rejoinder needs some unpacking.
Internalists have at least one good way to understand the claim that MTinthas
many interpretations if it has any. Working within MTint, they can prove a version
of the Löwenheim–Skolem Theorem. As such, they can show that any second-
order theory has many Henkin interpretations if it has any (as those notions are
understood within MTint). Moreover, this applies to the theory MTintitself, con-
sidered as an object theory (within a metatheory of MTintitself).^13 All of this is
perfectly good pure mathematics. But, understood just _as_ pure mathematics, inter-
nalists have no obvious reason to think that it has much philosophical import.
The obvious thought—made painfully familiar in Chapters 7 and 8—is that the
existence of these Henkin interpretations poses some threat. But the threat must
not be overstated. It is a threat to _modelism_ , and only to modelism. The existence of
multiple interpretations threatens modelists, since they think that our understand-

(^12) Contrast this with our discussion of Putnam’s internal realism in §2.4.
(^13) Note: for Gödelian reasons, MTintwill not prove the existence of anL-structure satisfying MTint.


```
12.3. internalism about model theory and internal realism 279
```
ing of a theory is somehow _inadequate_ until we have pinned down certain interpre-
tations, in the sense of (equivalence classes of)L-structures. None of this, though,
poses any threat to _internalism_. Having rejected modelism, internalists flat-out deny
that our understanding of a theory is _inadequate_ until we have pinned down certain
L-structures. They insist that _nothing is missing_ from a deductively-specified un-
derstanding of MTint.
Moreover, their insistence is not just idle posturing. Since MTint⊢CSPint, we
know that MTintis totally internally categorical and hence totally intolerant for its
‘pure’ part. So, as in §11.5, internalists can and will argue that a ‘merely’ _deductive_ un-
derstanding of MTintis sufficient for the articulation of univocal model-theoretical
concepts. With Putnam, then, internalists about model theory will say: _‘I know how
to use my language’, and there is no further relevant issue concerning how to ‘single out
an interpretation’_.
Internalists about model theory might continue to bolster their position by turn-
ing from Putnam to Dummett. As internalists see matters, anyone who thinks that
the existence of multiple Henkin structures as a _threat_ is operating

[...] with the notion of a model as if it were something that could be given to us inde-
pendently of any description: as a kind of intuitive conception which we can survey in
its entirety in our mind’s eye, even though we can find no description which determines
it uniquely. This has nothing to do with the concept of a model as that concept is legiti-
mately used in mathematics. There is no way in which we can be ‘given’ a model save by
being given a description of that model.^14

In particular, according to internalists about model theory, the description of an
L-structure should always be given within MTint. So to be ‘given’ a model is to
be given a description in a theory we _already_ understand. As such, she concludes,
Henkin models pose no threat to our understanding of MTint.

```
What to say about non-standard models
```
The preceding remarks concernedL-structures satisfying MTint. Let us now con-
sider what the internalist about model theory should say about models of arith-
metic, particularly non-standard models.
Of course, there are no non-standard arithmetical internal-structures. That fol-
lows immediately from Theorem 10.2, as applied to the second-order theory PAint.
However, working within MTint, internalists can prove versions of the Com-
pactness Theorem and Dedekind’s external categoricity theorem. As such, within
MTint, they can conclude: all full structures satisfying PA 2 are isomorphic, but
there are non-standard Henkin structures which satisfy PA 2. Indeed, from PAint,

(^14) Dummett (1963: 191).


280 internal categoricity and truth

they can immediately infer that _Num_ , 0 and _Succ_ determine anL-structure _M_
which satisfies PA 2 : its domain is the first-order _set m_ such that∀ _x_ ( _Num_ ( _x_ )↔
_x_ ∈ _m_ ); then 0 _M_ =0, and _SM_ is the first-order function given by restricting _Succ_ to
_m_. So, _within_ MTint, we deductively prove: all full models of PA 2 are isomorphic.
Suppose, now, that internalists are ‘given’ some non-standard Henkin model, _N_ ,
of PA 2. They will repeat the sentiment from Dummett: there is no way to have been
‘given’ _N_ , except by description within MTint. And now they will echo Putnam, and
say that ‘we recognize that it is unintended _from the description through which it is
given_ ’.^15 For example, _within_ MTint, we can see from _N_ ’s description that it contains
a non-standard number, or that _N_ rel 1 ≠℘( _N_ ), or some-such.
This is why internalists about model theory can join Putnam in saying that ‘Mod-
els are not lost noumenal waifs looking for someone to name them; they are con-
structions within our theory itself, and they have names from birth.’^16 This is not
a metaphysical expression of constructivism. Rather, models have ‘names from
birth’, in the simple sense that models are ‘given’ by _description_ in the model theory.
As such, internalism about model theory provides an elegant explication of some of
Putnam’s most beautiful but cryptic remarks about the philosophy of mathematics.

```
Arithmetical truth with language-object relations
```
With all of this in place, there is nothing to stop _internalists about model theory_ from
becoming _truth-internalists about arithmetic_.
They should begin by offering supervaluational clauses, within MTint, for each
_φ_ in the language of PA 2 :

```
(a) φ is true iff PA 2 ⊧ φ
(b) φ is false iff PA 2 ⊧¬ φ
(c) φ is indeterminate otherwise
```
Within MTint, they can then affirm that every sentence _φ_ in the language of PA 2
is either true or false, just by running through (within MTint) the supervaluational
reasoning that we ran through in the early parts of Chapter 7. Since internalists
about model theory affirm MTintunconditionally, they can can then conclude: _ev-
ery arithmetical sentence has a determinate truth value_.
Against this, modelists will point out that MTintis arithmetically incomplete (if it
is consistent; see §§5.a and 10.3). Consequently, there are Henkin models of MTint
which satisfy Con(MTint), within which it is right to say ‘Con(MTint)is true’, and
arithmetically unsound Henkin models which satisfy¬Con(MTint), and so within
which it is right to say ‘Con(MTint)is false’. On these grounds, modelists will com-
plain that a supervaluational definition of arithmetical truth _within_ MTintcannot

(^15) Putnam (1980: 482).
(^16) Putnam (1980: 482).


```
12.3. internalism about model theory and internal realism 281
```
really achieve what it is supposed to.^17
Internalists about model theory will reply—as above—that they can only under-
stand claims about the existence of Henkin models _within_ MTint, so that the exis-
tence of such models is irrelevant to the understanding of MTint _itself_ , and hence
irrelevant to the supervaluational definition of arithmetical truth. So it goes.
Modelists would do better to shift their line of attack. They should instead com-
plain that internalists have no right to regard the supervaluationally-defined ‘truth-
predicate’ as having anything to do with _truth_. Granted, _within_ MTint, it is correct
to describe this predicates as ‘connecting words with objects’. But, according to
modelists, this does not show that we are dealing with a _bona fide_ language–object
relation. The problem, according to them, is that the claim ‘this predicate connects
words with objects’ is _merely_ being presented as another deductively understood
part of MTint. As such, modelists will complain that internalists never _really_ allow
that mathematical language is beholden to non-linguistic entities.
We are not sure how to arbitrate this debate. Indeed, as in §12.2, the viability of
_truth_ -internalism about arithmetic—here, via plain vanilla internalism about model
theory—turns on an answer to the question: _What is truth, either in mathematics or
elsewhere?_ As before, we do not have an answer to that question.

```
Expressive limitations
```
So far we have established the following. Internalism about set theory can be turned
into internalism about model theory. This provides us with a new way to under-
stand Putnam’s internal realism in the philosophy of mathematics. Furthermore—
though this is even more controversial—it _may_ license truth-internalism about
arithmetic.
_Even then_ , though, plain vanilla internalism about model theory will not license
_truth_ -internalism about _model theory_ or _set theory_. Whilst plain vanilla internalism
about model theory might license truth-internalism about many theories which can
be embedded into the cumulative hierearchy, it offers no progress at all towards the
claim that every sentence of (pure) model theory has a determinate truth value. In-
deed, this point is essentially entailed by the internalist’s own responses to a mod-
elist who asks about the ‘intended’ interpretation of MTint. Nothing which counts
(within MTint) _as_ a model of MTintcould be ‘intended’, for we could prove (within
MTint) that there are objects outside of that model’s domain. (This is essentially to
repeat the point, that we should not hope for our set theory to be _externally_ categor-
ical; see §8.6.) But then, the internalist about model theory cannot gloss the truth
of MTint-sentences in terms of the notion of satisfaction she defines within MTint.

(^17) Cf. Meadows (2013: 539–40).


```
282 internal categoricity and truth
```
### 12.4 Truth in higher-order logic

In fact, truth-internalism about model theory _can_ be developed using higher-order
logic, and can _only_ be developed there.
To begin, we must explain why truth-internalism about model theory requires
higher-order logic. Suppose we stick within second-order logic, and aim to for-
mulate a theory, MT+int, which intuitively consists in adding a truth-predicate, _Tr_ ,
_for_ MTintto MTint. We did something like this in Lemma 9.2 of §9.a, where we
showed that any consistent (first-order) theory can be augmented with a truth-
predicate (for the old language). There, however, we governed the behaviour of
the truth-predicate by adding infinitely many new axioms. In the context of inter-
nal categoricity results, however, this is unacceptable. We will need to say things
like∀ _PE_ (MT+( _PE_ )→...), which requires that MT+int, like MTint, should be a
_single_ sentence.^18
Unfortunately, Tarski’s Indefinability Theorem 9.1 entails that MT+intcannot
merely be a _second-order_ theory. Suppose otherwise, for reductio. So let _φ_ ( _Tr_ , _R_ )
be some first- or second-order sentence, possibly containing some new vocabulary
_R_ , such that, for each first- or second-order sentence _σ_ in MTint’s signature:

```
MTint+ φ ( Tr , R )⊢ Tr (⌜ σ ⌝)↔ σ
i.e., MTint⊢ φ ( Tr , R )→[ Tr (⌜ σ ⌝)↔ σ ]
i.e., MTint⊢∀ X ∀ Y ( φ ( X , Y )→[ X (⌜ σ ⌝)↔ σ ])
```
```
It follows that, for each first- or second-order sentence σ in MTint’s signature:
```
```
MTint+ ∃ X ∃ Yφ ( X , Y )⊢∀ X ∀ Y ( φ ( X , Y )→ X (⌜ σ ⌝))↔ σ
```
```
So MTint+ ∃ X ∃ Yφ ( X , Y )has a truth predicate, and is therefore inconsistent by
Tarski’s Theorem; so MT+intitself is inconsistent. As such, truth-internalists who
want to discuss truth for MTintmust look beyond second-order logic.
Given their internalism, there are not very many places they can look. They must
continue to work deductively, in a system richer than MTint. But we have just seen
that the system cannot simply be enriched by adding some new second-order ax-
ioms. So the system must be richer because it adds new logical resources. Would-be
truth-internalists must, then, ascend to higher-order logic.
Having explained that this is the only path available to them, we should add that
it is not a path they should fear. Crucially, the (truth-)internalist always ultimately
insists on working deductively. Consequently, any concerns one might have about
the semantics for higher-order logics need not trouble her. And it would be an odd
view, which permitted second -order deductive systems, but objected to n th-order
deductive systems, for any greater n.
```
(^18) The same observation rules out Rayo and Uzquiano’s (1999) approach.


```
12.4. truth in higher-order logic 283
```
In fact, it turns out that we can prove the existence of a satisfaction relation, for
first-order and second-order sentences, using (just) _fifth_ -order logic and a theory
of arithmetic like PAint.^19 We explain the details of this in §12.a. Having set up
satisfaction, we can then prove the existence of ‘supervaluational’ truth and falsity
properties. The details are not pretty. However, we can lay down clauses which
roughly say that, for any sentence _φ_ in SPint’s signature whose quantifiers are _Pure_ -
restricted:

```
(a) True (⌜ φ ⌝)iff∀ PE (CSP( PE )→ φ is satisfied when ‘ Pure ’ is interpreted as
P and ‘∈’ is interpreted as E )
(b) False (⌜ φ ⌝)iff∀ PE (CSP( PE )→¬ φ is satisfied when ‘ Pure ’ is interpreted
as P and ‘∈’ is interpreted as E )
(c) Indeterminate (⌜ φ ⌝)otherwise
```
Then, where⊢^5 indicates that we are working deductively in fifth-order logic, for
any sentence _φ_ in SPint’s signature whose quantifiers are _Pure_ -restricted:

```
PAint⊢^5 True (⌜ φ ⌝)∨ False (⌜ φ ⌝)
```
All of this, though, is just mathematical logic. The question is whether it is of any _use_
to a would-be truth-internalist about model theory or set theory. The question is,
whether she can use this to claim (for example): _every first- or second-order sentence
in pure set theory has a determinate truth value_. As usual, she will face two kinds of
objection.
First: she will face the objection that she has no right to gloss her defined prop-
erties as having anything to do with _truth_. The dialectic here will be the same as
before, and we have nothing much to add to it..
Second: she will face an expressive limitation. _Even if_ we grant that she has gen-
uinely got a notion of _truth_ for first-order and second-order sentences, in so doing
she has started to use third-, fourth- and fifth-order sentences. And she has no way,
yet, to talk about truth _for those_.
At this point, the preceding considerations generalise.^20 As we show in §12.a,
( _n_ + 3 )th-order deductive logic proves the existence of (supervaluational) truth and
falsity properties, which enable us to state that any pure sentence of order≤ _n_ has a
determinate truth value. But, on the inevitable pain of Tarski’s Indefinability The-
orem 9.1, we cannot find a truth-property which handles sentences of _every_ order

(^19) Recall that PAintgives us numbers but, unlike PA 2 , it does not require that _everything_ is a number.
We mention this, as it is important for us that we can build ‘models’ from arbitrary objects. We should
also add that we are not claiming to have a proof that it is impossible to prove the existence of satisfaction
relations for second-order sentences in either _third_ -order logic or _fourth_ -order logic; but the only ways
that we know of which avoid ascending through so many types involve either expanding the theoretical
resources or slightly restricting the result (see footnote 25, below).
(^20) McGee (1997: 47–52) himself seems to reach for internal categoricity and _second-order_ theories,
_rather_ than look to a _third-order_ definition of satisfaction, on pain of the regress engendered by Tarski’s
Theorem. It is perhaps ironic that the regress should come back around.


284 internal categoricity and truth

simultaneously. As such, the truth-internalist cannot hope to say anything like: _ev-
ery sentence of any order has a determinate truth value_.
There are, then, inevitable expressive limitations on what a truth-internalist can
hope to achieve. But the way that they arise in the framework of higher-order
logic gives more depth to the anti-internalist complaint, that the internalist’s ‘truth-
properties’ have nothing to do with _truth_. After all, she has a second-order-truth
property, a third-order-truth property, an _n_ th-order-truth property, and so on. But
she does not have, and cannot have, a _single_ property.^21
This problem has been raised before, by Davidson, against the idea that Tarski
somehow ‘defined the concept of truth’:

Tarski did not define the concept of truth, even as applied to sentences. Tarski showed
how to define a truth predicate for each of a number of well-behaved languages, but his
definitions do not, of course, tell us what these predicates have in common.^22

Against the truth-internalist’s use of higher-order logic, this complaint can be
pushed even further. It is not just that the truth-internalist has not told us what the
various truth-properties have in common. On pain of Tarski’s Indefinability Theo-
rem, the truth-internalist _cannot even pick out_ all and only the truth properties using
a single formula. This is easily seen: if Φ held of all and only the truth properties,
then(∃ _X_ : Φ) _X_ ( _v_ )would be a universal truth-predicate, again violating Tarski’s
Theorem. As such, the truth-internalist cannot make any claim of the form: _all and
only the truth-properties have such-and-such a feature in common_. At least, she cannot
do so without leaving higher-order deductive logic behind and so, it seems, without
abandoning the distinctively _deductive_ approach characteristic of internalism.

### 12.5 Two general issues for truth-internalism

In this chapter, we considered three ways for an internalist to attempt to recover
certain amounts of truth-talk. We saw that she inevitably encounters two issues.
First: there is the question of whether, focussing on deduction, she has any right to
regard what she is doing as connecting with _truth_. Second: there are unavoidable
expressive limitations concerning her ability to recover truth-talk.
We doubt that these observations are sufficient to _sink_ truth-internalism. How-
ever, these two observations must be acknowledged and accommodated by anyone

(^21) Linnebo and Rayo (2012) explore the idea of continuing through _transfinite_ types. But even if we did
countenance _α_ th-order sentences for arbitrary ordinals _α_ , the same problem will persist: there will be no
_single_ truth property to deal with sentences of all (transfinite) orders. We also have some serious reserva-
tions about the very idea of transfinite type theory. Types are naturally regarded as essentially _grammatical_ ,
and they arise from considering the ways in which different kinds of expressions combine to create entire
sentences. But no sentence is infinitely long. So there is neither any way to ‘get’ an ‘infinite type’, nor any
need for such a thing.
(^22) Davidson (1990: 285).


```
12.a. satisfaction in higher-order logic 285
```
who wants to use internal categoricity results to demonstrate something of the form
‘every sentence of such-and-such a sort a determinate truth value’.

### 12.a Satisfaction in higher-order logic

In this appendix, we show how define satisfaction for an _n_ th-order language within
an _n_ + 3 th-order language. The result is essentially Tarski’s, who also came up with all
of the key ideas. Indeed, whilst we outlined a ‘Tarskian’ approach to _model-theoretic_
semantics in §1.3, Tarski’s own approach in 1933 was _higher-order_. We will follow his
approach closely.

```
Syntax and deduction for higher-order languages
```
First-order languages have first-order variables: _v_ , _x_ , and so forth. Second-order
languages retain first-order variables, but add second-order variables: _V_ , _X_ , and so
forth. Ascending to _n_ th-order languages requires the addition of _k_ th-order variables,
for all 1≤ _k_ ≤ _n_.
A second-order variable has a certain number of ‘gaps’, to be filled by first-order
variables (or other terms). A third-order variable has a certain number of ‘gaps’,
but these must be filled by first-order or second-order expressions. So, where V is a
particular third-order variable, we might have that V( _X_ 1 , _X_ 2 , _y_ )is well-formed. The
‘gaps’, however, are regarded as suitable only for certain expressions; so in this ex-
ample, V( _X_ 1 , _y_ , _y_ )will be ill-formed.^23 Generally, an _n_ + 1 th-order variable has ‘gaps’
which must be filled by lower-order expressions, at least one of which is _n_ th-order.
An _n_ th-order formula is one whose highest-order variable is _n_ th-order. An _n_ th-order
language is one which allows for _k_ th-order formulas for all 1≤ _k_ ≤ _n_.
Since our focus is on deduction, we will not provide a model-theoretic semantics
for _n_ th-order languages. This can be done straightforwardly, though, by generalis-
ing the semantics for second-order sentences (see §§1.10–1.11).
The deductive system for _n_ th-order languages expands on the system laid down
in §1.c. The rules for quantifiers are exactly as for lower-order languages: we simply
need to keep track of the orders of the expressions. We also expand the Compre-
hension Schema, for each order _n_ ≥2:

_Thenth-order Comprehension Schema._ ∃ _V_ ∀x( _φ_ (x)↔ _V_ (x)) _, where V is an nth-
order variable, for every formula φ_ (x) _which does not contain V and whose highest-order
free variable is n_ − 1 _th-order._

(^23) Indeed, here we need to take care: if _X_ 1 and _X_ 2 are second-order variables with _different_ number of
places, then V( _X_ 1 , _X_ 1 , _y_ )will also be ill-formed.


286 internal categoricity and truth

In these terms, our original Comprehension Schema from §1.c is the second-order
Comprehension Schema (as one would hope). The deductive system for _n_ th-order
logic then has _k_ th-order Comprehension and rules governing quantification for _k_ th-
order variables, for all 1≤ _k_ ≤ _n_. We write _T_ ⊢ _nφ_ to indicate that _φ_ is deducible
from _T_ in this _n_ th-order deductive system.

```
Initial approach, and Tarski’s trick
```
Our general aim is to show that an _n_ + 3 th-order deductive system allows us to define
satisfaction for _n_ th-order languages. However, we will only prove a single instance
of this: we will define satisfaction for second-order languages within a fifth-order
deductive system. This illustrates the general point, but—as we will see—it is quite
painful enough.
We assume that the non-logical signature,L, of our target second-order lan-
guage is _relational_. This is no real loss, since constants and function symbols can
be simulated using predicates and identity. Moreover, the case that we most care
about is the relational signature{ _Pure_ ,∈}. For simplicity, we will also assume that
theL-formulas only contain the logical connectives¬,∧, and∀.
To define satisfaction, we must both be able to code theL-formulas and per-
form induction on their syntax via their coding. To guarantee this, our definitions
will take place within PAint.^24 We write⌜ _φ_ ⌝for the Gödel-number of _φ_ , on some
fixed Gödel-numbering (for a refresher of what this means, see §5.a).
Our approach to defining satisfaction is ‘Tarskian’, in the sense of §1.3, that we will
handle quantifiers and variables using functions which assign ‘interpretations’ to
variables. However, in the setting of higher-order logic (rather than model theory),
we encounter a technical difficulty.
In defining satisfaction, we will need to deal with atomic formulas like
_V_ ( _x_ 1 , ..., _xm_ ). An obvious approach would be to assign⌜ _V_ ⌝to some second-
order _m_ -place entity _σ_ (⌜ _V_ ⌝), assign each of⌜ _x_ 1 ⌝, ...,⌜ _xm_ ⌝to first-order enti-
ties _σ_ (⌜ _x_ 1 ⌝), ..., _σ_ (⌜ _xm_ ⌝), and then say, roughly: _σ satisfies_ ⌜ _V_ ( _x_ 1 , ..., _xm_ )⌝ _iff
σ_ (⌜ _V_ ⌝)( _σ_ (⌜ _x_ 1 ⌝), ..., _σ_ (⌜ _xm_ ⌝)). However, since relation-variables can be of arbi-
trary numbers of places, we would have to offer distinct clauses for _any_ natural num-
ber _m_. But then our definition of satisfaction would require infinitely many clauses,
and we would have failed in our goal of defining satisfaction for second-order lan-
guages using a _single_ formula (see §12.4).
Tarski both identified this obstacle and showed how to avoid it. His trick was
to use second-order entities as proxies for sequences of first-order objects.^25 Intu-

(^24) In this regard, we follow certain aspects of Tarski’s work very closely. Tarski essentially uses a theory
of types with an axiom of infinity. As we explained in §10.1, anyone prepared to add an axiom of infinity,
i.e. DI 2 , to higher-order logic must be happy to employ PAint.
(^25) See Tarski (1933: §4), particularly his discussion of the differences between languages of the 2nd and


```
12.a. satisfaction in higher-order logic 287
```
itively, instead of thinking of an _m_ -place relation as a set of _m_ -tuples:

```
{( a 1,1, ..., a 1, m ),( a 2,1, ..., a 2, m ), ...}
```
Tarski suggested that we ascend an order, and consider the relation as a set of _func-
tions_ from the numbers 1 through _m_ to the first-order entities, i.e.:

```
{{(1, a 1,1), ...,( m , a 1, m )},{(1, a 2,1), ...,( m , a 2, m )}, ...}
```
But this idea will take a little spelling out.
Let _σ_ be a function which maps each code of a first-order variable to some first-
order object. (So, _σ_ itself is a second-order entity.) Let _a_ be the Gödel-number of
some finite sequence of first-order variables, i.e. _a_ =⌜ _xi_ 1 , ..., _xim_ ⌝. Then, working
in PAintand invoking Comprehension, we can show the existence of some unique
relation _Ra_ such that, for all _v_ and every natural number _j_ , we have _Ra_ ( _j_ , _v_ )iff _v_ =
_σ_ (⌜ _xij_ ⌝); so, intuitively, _Ra_ is:

```
{(1, σ (⌜ xi 1 ⌝)), ...,( m , σ (⌜ xim ⌝))}
```
More generally, if _σ_ maps each code of a first-order variable to some first-order ob-
ject, then there is (provably) a unique function, _σ_ ↑, with the following property:
for any _a_ which codes a finite sequence of first-order variables, _σ_ ↑( _a_ )= _Ra_. That
is: _σ_ ↑maps each code of a finite sequence of first-order variables to a second-order
object, which acts as a proxy for the sequence of assignments that _σ_ itself makes for
each of the variables in the sequence. (Note that _σ_ ↑itself is a third-order entity.)
Now let Σ be a function which takes as inputs Gödel-numbers of second-order _n_ -
place variables, and outputs a third-order entity which a single ‘gap’ for a two-place
relation on first-order objects. (So, Σ itself is a fourth-order entity.) We can now
spell out satisfaction of along these lines: Σ _and σ together satisfy_ ⌜ _V_ ( _x_ 1 , ..., _xm_ )⌝
_iff_ Σ(⌜ _V_ ⌝)( _σ_ ↑(⌜ _x_ 1 , ..., _xm_ ⌝))_._ Since Σ(⌜ _V_ ⌝)is of the same _logical_ type for any⌜ _V_ ⌝,
this does not require separate clauses for each value of _m_.

```
Defining the entities for satisfaction
```
We will now implement this idea in detail. In what follows, the following rough
heuristic will be helpful: treat _D_ as a _domain_ ; Λ as an _interpretation_ of theL-
predicates; _σ_ as an assignment to first-order variables; and Σ as an assignment to
second-order variables.

3rd kinds. This trick is what leads us to do semantics for _n_ th-order logic in _n_ + 3 th-order logic. There are
alternatives. For example, if we both ( _a_ ) refuse to admit variables with more than (e.g.) three places, and
also ( _b_ ) employ _set_ -theoretic resources on top of type-theoretic, then we need only climb to _n_ + 1 th-order
logic. This is Linnebo and Rayo’s approach (2012: 299–308), although they _also_ allow for transfinite types
(see footnote 21, above).


288 internal categoricity and truth

We say _Ass_ 1 ( _Dσ_ )iff _σ_ is a function which maps every _v_ which codes a first-order
variable to a particular entity among _D_.
We say _Ass_ 2 ( _D_ Σ)iff Σ is a function which maps every code of a relation-
variable to a third-order entity such that, if _v_ codes an _m_ -place relation-variable and
Σ( _v_ )( _X_ ), then _X_ is a map from the numbers 1 through _m_ to some subclass of _D_.
This implements Tarski’s trick, ensuring that (codes for) _m_ -place relation-variables
are ultimately handed _m_ arguments.
Similarly, we say _Mod_ ( _D_ Λ)iff Λ is a function which maps every code of an
L-predicate to a third-order entity such that, if _v_ codes an _m_ -place predicate and
Λ( _v_ )( _X_ ), then _X_ is a map from the numbers 1 through _m_ to some subclass of _D_
Clearly, all three of these formulas can be explicitly defined using PAintin our
fifth-order system. We now introduce a new abbreviation:

```
Tars ( D ΛΣ σ ):= Ass 1 ( Dσ )∧ Ass 2 ( D Σ)∧ Mod ( D Λ)
```
In effect, this tells us that _D_ , Λ, _σ_ , and Σ have the right shape to allow us to start
considering Tarskian satisfaction forL-formulas.

```
The satisfaction clauses
```
Our ultimate aim is to define a formula which says something roughly like this: _v
codes an_ L _-sentence which is true on domain D with interpretation_ Λ. To get there,
we will define a fifth-order formula which roughly says this: _v codes an_ L _-formula
which is satisfied with domain D, interpretation_ Λ _, and assignments_ Σ _and σ_. For read-
ability, we will write this as⟨ _D_ ΛΣ _σ_ ∣∼ _v_ ⟩rather than e.g. V( _D_ , Λ, Σ, _σ_ , _v_ ); so, in
what follows, we will treat ‘∣∼’ as a fifth-order variable.
Our definition of⟨ _D_ ΛΣ _σ_ ∣∼ _v_ ⟩simply involves running through each of Tarski’s
recursion clauses in a higher-order framework. Let _For_ ( _v_ )be a predicate indicating
that _v_ codes anL-formula, and let us use ‘(∀⌜ _x_ = _y_ ⌝: _For_ )...’, for example, to
abbreviate ‘for any _v_ among _For_ , if _v_ codes some atomic identity claim relating vari-
ables _x_ and _y_ , then...’. (Obviously all this can be spelled out precisely using PAint.)
Then we start by offering recursion clauses for atomic formulas:

```
(∀⌜ x = y ⌝: For )[ ⟨ D ΛΣ σ ∣∼⌜ x = y ⌝⟩↔ σ (⌜ x ⌝)= σ (⌜ y ⌝)] ( ho: =)
(∀⌜ V ( x )⌝: For )[ ⟨ D ΛΣ σ ∣∼⌜ V ( x )⌝⟩↔Σ(⌜ V ⌝) σ ↑(⌜ x ⌝)] ( ho:V )
(∀⌜ R ( x )⌝: For )[ ⟨ D ΛΣ σ ∣∼⌜ R ( x )⌝⟩↔Λ(⌜ V ⌝) σ ↑(⌜ x ⌝)] ( ho:R )
```
We next supply clauses for sentential connectives:

```
(∀⌜¬ φ ⌝: For )[ ⟨ D ΛΣ σ ∣∼⌜¬ φ ⌝⟩↔¬⟨ D ΛΣ σ ∣∼⌜ φ ⌝⟩] ( ho: ¬)
(∀⌜ φ ∧ ψ ⌝: For )[ ⟨ D ΛΣ σ ∣∼⌜ φ ∧ ψ ⌝⟩↔
(⟨ D ΛΣ σ ∣∼⌜ φ ⌝⟩∧⟨ D ΛΣ σ ∣∼⌜ ψ ⌝⟩)] ( ho: ∧)
```

```
12.a. satisfaction in higher-order logic 289
```
To handle the quantifiers, we follow Tarski, in considering assignments which differ
on exactly one element. We write _Diff_ 1 ( _σ_ , _τ_ , _x_ )when both _Ass_ 1 ( _Dσ_ )and _Ass_ 1 ( _Dτ_ )
and also _σ_ and _τ_ agree everywhere except perhaps on the assignment to the _single_
entity _x_. Similarly, we write _Diff_ 2 (Σ, Τ, _x_ )when both _Ass_ 2 ( _D_ Σ)and _Ass_ 2 ( _D_ Τ)
and also Σ and Τ agree everywhere except perhaps on the assignment to the _single_
entity _x_. Obviously, all of this can be explicitly defined using PAintin our fifth-order
logic. We now offer:

```
(∀⌜ φ ( x )⌝: For )[ ⟨ D ΛΣ σ ∣∼⌜∀ xφ ( x )⌝⟩↔
∀ τ ( Diff 1 ( σ , τ ,⌜ x ⌝)→⟨ D ΛΣ τ ∣∼⌜ φ ( x )⌝⟩)] ( ho: ∀ 1 )
(∀⌜ φ ( V )⌝: For )[ ⟨ D ΛΣ σ ∣∼⌜∀ Vφ ( V )⌝⟩↔
∀Τ( Diff 2 (Σ, Τ,⌜ V ⌝)→⟨ D ΛΤ σ ∣∼⌜ φ ( V )⌝⟩)] ( ho: ∀ 2 )
```
If we now conjoin ( _ho:_ =), ( _ho:V_ ), ( _ho:R_ ), ( _ho:_ ∧), ( _ho:_ ¬), ( _ho:_ ∀ 1 ), and ( _ho:_ ∀ 2 ),
we obtain a formula which intuitively tells us that something fifth-order,∣∼, acts as
a satisfaction relation.

```
Existence and uniqueness of this relation
```
The next stage is to prove the _existence_ and _uniqueness_ of such a fifth-order entity.
We will do this by induction on complexity, and our approach draws inspiration
from Takeuti’s construction of the semantics for PA within PA 2.^26
The first task is to define a formula, _Sat_ ( _D_ ΛΣ _σ_ , _m_ ,∣∼), which says that∣∼acts as a
satisfaction relation for formulas of complexity≤ _m_. So, let _co_ ( _v_ )be a PAint-formula
such that, when _v_ codes anL-formula, _co_ ( _v_ )is the number of instances of logical
constants (i.e.∀,¬, and∧) in that formula. Then let _Sat_ ( _D_ ΛΣ _σ_ , _m_ ,∣∼)be the for-
mula which says that each of ( _ho:_ =), ( _ho:V_ ), ( _ho:R_ ), ( _ho:_ ∧), ( _ho:_ ¬), ( _ho:_ ∀ 1 ), and
( _ho:_ ∀ 2 ) hold _for all formulas v with co_ ( _v_ )≤ _m_. We now prove that, for any com-
plexity, a suitable satisfaction relation,∣∼, exists:^27

Lemma 12.1:

```
PAint⊢^5 (∀ m : Num )∃∣∼∀ D ΛΣ σ [ Tars ( D ΛΣ σ )→ Sat ( D ΛΣ σ , m ,∣∼)]
```
_Proof._ The proof is by induction on _m_ within PAint. For the case _m_ =0, by fifth-
order Comprehension there is some∣∼with the following property: whenever
_Tars_ ( _D_ ΛΣ _σ_ )and for any _v_ , we have⟨ _D_ ΛΣ _σ_ ∣∼ _v_ ⟩iff

(^26) Takeuti (1987: 183–7).
(^27) As elsewhere in these chapters, we abbreviate e.g.∀ _D_ ∀Λ∀Σ∀ _σ_ with∀ _D_ ΛΣ _σ_.


290 internal categoricity and truth

```
For ( v )∧ Tars ( D ΛΣ σ )∧ co ( v )= 0 ∧
[(∃⌜ x = y ⌝: For )[ v =⌜ x = y ⌝∧ σ (⌜ x ⌝)= σ (⌜ y ⌝)]∨
(∃⌜ V ( x )⌝: For )[ v =⌜ V ( x )⌝∧Σ(⌜ V ⌝) σ ↑(⌜ x ⌝)]∨
(∃⌜ R ( x )⌝: For )[ v =⌜ R ( x )⌝∧Λ(⌜ R ⌝) σ ↑(⌜ x ⌝)]]
```
so that _Sat_ ( _D_ ΛΣ _σ_ , 0,∣∼). Now fix _m_ , and suppose for induction that we have some
∣∼such that for any _Tars_ ( _D_ ΛΣ _σ_ )we have _Sat_ ( _D_ ΛΣ _σ_ , _m_ ,∣∼). By fifth-order Com-
prehension, there is some∣∼∗with the following property: for all _D_ ΛΣ _σ_ and all _v_
we have⟨ _D_ ΛΣ _σ_ ∣∼∗ _v_ ⟩iff

```
For ( v )∧ Tars ( D ΛΣ σ )∧
[( co ( v )≤ m ∧⟨ D ΛΣ σ ∣∼ v ⟩)∨
( co ( v )= m + 1 ∧
[(∃⌜ φ ∧ ψ ⌝: For )[ v =⌜ φ ∧ ψ ⌝∧⟨ D ΛΣ σ ∣∼⌜ φ ⌝⟩∧⟨ D ΛΣ σ ∣∼⌜ ψ ⌝⟩]∨
(∃⌜¬ φ ⌝: For )[ v =⌜¬ φ ⌝∧ ¬⟨ D ΛΣ σ ∣∼⌜ φ ⌝⟩]∨
(∃⌜ φ ( x )⌝: For )[ v =⌜∀ xφ ( x )⌝∧
∀ τ ( Diff 1 ( σ , τ ,⌜ x ⌝)→⟨ D ΛΣ τ ∣∼⌜ φ ( x )⌝⟩)]∨
(∃⌜ φ ( V )⌝: For )[ v =⌜∀ Vφ ( V )⌝∧
∀Τ( Diff 2 (Σ, Τ,⌜ V ⌝)→⟨ D ΛΤ σ ∣∼⌜ φ ( V )⌝⟩)]])]
```
so that _Sat_ ( _D_ ΛΣ _σ_ , _m_ +1,∣∼∗). The result follows by induction in PAint.

We next show that these∣∼-relations are extensionally unique, where defined:

Lemma 12.2:

```
PAint⊢^5 (∀ v : For )∀∣∼∀∣∼∗
[∀ D ΛΣ σ ( Tars ( D ΛΣ σ )→
[ Sat ( D ΛΣ σ , co ( v ),∣∼)∧ Sat ( D ΛΣ σ , co ( v ),∣∼∗)])→
∀ D ΛΣ σ ( Tars ( D ΛΣ σ )→[⟨ D ΛΣ σ ∣∼ v ⟩↔⟨ D ΛΣ σ ∣∼∗ v ⟩])]
```
_Proof._ Fix∣∼and∣∼∗and suppose, for induction on _co_ ( _v_ ), that the claim holds
whenever _co_ ( _v_ )< _m_ ; now suppose _co_ ( _v_ )= _m_ +1 and reason by cases. We will
illustrate the case when _v_ codes∀ _xψ_ ( _x_ ), leaving the rest to the reader. Suppose that
whenever _Tars_ ( _D_ ΛΣ _σ_ )we have both _Sat_ ( _D_ ΛΣ _σ_ , _m_ +1,∣∼)and _Sat_ ( _D_ ΛΣ _σ_ , _m_ +
1,∣∼∗); then by ( _ho:_ ∀ 1 ) we have both of these:

```
⟨ D ΛΣ σ ∣∼⌜ φ ⌝⟩↔∀ τ [ Diff 1 ( σ , τ ,⌜ x ⌝)→⟨ D ΛΣ τ ∣∼⌜ ψ ( x )⌝⟩)
⟨ D ΛΣ σ ∣∼∗⌜ φ ⌝⟩↔∀ τ [ Diff 1 ( σ , τ ,⌜ x ⌝)→⟨ D ΛΣ τ ∣∼∗⌜ ψ ( x )⌝⟩)
```

```
12.a. satisfaction in higher-order logic 291
```
Moreover, we have both _Sat_ ( _D_ ΛΣ _τ_ , _m_ ,∣∼)and _Sat_ ( _D_ ΛΣ _τ_ , _m_ ,∣∼∗)whenever
_Tars_ ( _D_ ΛΣ _τ_ ). So, since _co_ (⌜ _ψ_ ( _x_ )⌝)= _m_ , by the induction hypothesis we have:

```
⟨ D ΛΣ τ ∣∼⌜ ψ ( x )⌝⟩↔⟨ D ΛΣ τ ∣∼∗⌜ ψ ( x )⌝⟩
```
And hence⟨ _D_ ΛΣ _σ_ ∣∼⌜∀ _xψ_ ( _x_ )⌝⟩↔⟨ _D_ ΛΣ _σ_ ∣∼∗⌜∀ _xψ_ ( _x_ )⌝⟩, as required.

Taking Lemmas 12.1 and 12.2 together, by fifth-order Comprehension, there is a
_unique_ satisfaction relation which coversL-formulas of any complexity. In what
follows, we use∣≈for this; so

```
(∀ m : Num )∀ D ΛΣ σ [ Tars ( D ΛΣ σ )→ Sat ( D ΛΣ σ , m ,∣≈)]
```
Now, recall that our _ultimate_ aim is to define an expression which roughly says: _v
codes an_ L _-sentence which is true on domain D with interpretation_ Λ. With that aim
in mind, where _Sen_ ( _v_ )indicates that _v_ codes anL-sentence, we define:

```
TrueIn ( D Λ : v ):= Sen ( v )∧ Mod ( D Λ)∧ ∀Σ σ [ Tars ( D ΛΣ σ )→⟨ D ΛΣ σ ∣≈ v ⟩]
```
It just remains to show that this definition does what we would want it to.

```
Checking this works
```
For eachL-formula _φ_ , let _φD_ Λbe the result of first restricting all of _φ_ ’s quantifiers
(of any order) to _D_ , and then, for eachL-predicate _R_ , replacing every instance of
any formula _R_ ( _xi_ 1 , ..., _xim_ )with a statement that Λ(⌜ _R_ ⌝)applies to the unique re-
lation given by{(1, _xi_ 1 ), ...,( _m_ , _xim_ )}. (This can be defined explicitly using Com-
prehension, and simply mirrors Tarski’s trick.) We aim to prove this:

Theorem 12.3: _For each_ L _-sentence φ:_

```
PAint⊢^5 ∀ D Λ( Mod ( D Λ)→[ TrueIn ( D Λ :⌜ φ ⌝)↔ φD Λ])
```
For, if we can prove this result, then we really do have a formula which ‘says’ that _φ_
is true given ‘domain’ _D_ and ‘interpretation’ Λ.
In order to prove Theorem 12.3, we will first prove a lemma which says (roughly)
that agreement on the assignments to all the variables in a formula _φ_ entails agree-
ment on satisfaction of _φ_ :


292 internal categoricity and truth

Lemma 12.4: _For any_ L _-formula φ_ ( _V_ , _x_ ) _with all free variables displayed:_

```
PAint⊢^5 ∀ D ΛΣ σ Τ τ ([ Tars ( D ΛΣ σ )∧ Tars ( D ΛΤ τ )∧
j
⋀
i = 1
```
```
Σ(⌜ Vi ⌝)=Τ(⌜ Vi ⌝)∧
```
```
k
⋀
i = 1
```
```
σ (⌜ xi ⌝)= τ (⌜ xi ⌝)]→
```
```
[⟨ D ΛΣ σ ∣≈⌜ φ ( V , x )⌝⟩↔⟨ D ΛΤ τ ∣≈⌜ φ ( V , x )⌝⟩])
```
_Proof._ This is by induction on complexity in our syntactic metatheory.
The case of atomic formulas is immediate from ( _ho:_ =), ( _ho:V_ ), and ( _ho:R_ ). The
cases of conjunction and negation are trivial. We will explain the case of first-order
quantifiers; second-order quantifiers are similar.
Let _φ_ ( _V_ , _x_ )be∀ _yψ_ ( _V_ , _x_ , _y_ ). Fix Σ and Τ which agree on each⌜ _Vi_ ⌝. Fix _σ_ and
_τ_ which agree on each⌜ _xi_ ⌝but need not agree on⌜ _y_ ⌝. Without loss of general-
ity, suppose⟨ _D_ ΛΣ _σ_ ∣≈⌜∀ _yψ_ ( _V_ , _x_ , _y_ )⌝⟩and let _τ_ ′be such that _Diff_ 1 ( _τ_ , _τ_ ′,⌜ _y_ ⌝).
Let _σ_ ′be such that _σ_ ′(⌜ _y_ ⌝) = _τ_ ′(⌜ _y_ ⌝)and _σ_ ′( _v_ ) = _σ_ ( _v_ )for all _v_ ≠ ⌜ _y_ ⌝;
then by ( _ho:_ ∀ 1 ) we have that⟨ _D_ ΛΣ _σ_ ′∣≈⌜ _ψ_ ( _V_ , _x_ , _y_ )⌝⟩. Since _σ_ ′and _τ_ ′agree on
each⌜ _xi_ ⌝and on⌜ _y_ ⌝, by our induction hypothesis⟨ _D_ ΛΣ _τ_ ′∣≈⌜ _ψ_ ( _V_ , _x_ , _y_ )⌝⟩. So
⟨ _D_ ΛΣ _τ_ ∣≈⌜∀ _yψ_ ( _V_ , _x_ , _y_ )⌝⟩by ( _ho:_ ∀ 1 ) again.

Using this, we will prove a result which is strictly more general than Theorem 12.3
(indeed, it is essentially just a version of Theorem 12.3 which accepts parameters).
To state the result, though, we need some notation. Let⫯be a functor which, ap-
plied to a second-order entity, _V_ , yields the third-order entity _V_ ⫯corresponding to
Tarski’s trick. That is, _V_ ⫯( _R_ )iff: there are _a_ 1 , ..., _an_ such that _V_ ( _a_ 1 , ..., _an_ )and _R_
is the relation{(1, _a_ 1 ), ...,( _n_ , _an_ )}. Armed with this, here is our desired result:

Lemma 12.5: _For each_ L _-formula φ_ ( _V_ , _x_ ) _with all free variables displayed:_

```
PAint⊢^5 ∀ D Λ( Mod ( D Λ)→(∀ V : D )(∀ x : D )[ φ ( V , x ) D Λ↔
```
```
∀Σ σ ([ Tars ( D ΛΣ σ )∧
```
```
j
⋀
i = 1
```
```
Σ(⌜ Vi ⌝)= V ⫯ i ∧
```
```
k
⋀
i = 1
```
```
σ (⌜ xi ⌝)= xi ]→
```
```
⟨ D ΛΣ σ ∣≈⌜ φ ( V , x )⌝⟩ )])
```
_Proof._ This is by induction on complexity in our syntactic metatheory.
We start with atomic formulas of the form _R_ ( _x_ ), leaving other atomic cases to the
reader. Suppose that _Mod_ ( _D_ Λ), and fix suitable _b_ from _D_. First suppose _R_ ( _b_ ) _D_ Λ,
i.e. that Λ(⌜ _R_ ⌝)applies to the relation given by{(1, _b_ 1 ), ...,( _n_ , _bn_ )}. Where _σ_ is
any assignment mapping each⌜ _xi_ ⌝to _bi_ , we have⟨ _D_ ΛΣ _σ_ ∣≈⌜ _R_ ( _x_ )⌝⟩by ( _ho:R_ ).
And the converse is similar.


```
12.a. satisfaction in higher-order logic 293
```
We now consider the induction cases. Conjunction is trivial. To handle nega-
tion, suppose _φ_ ( _V_ , _x_ )is¬ _ψ_ ( _V_ , _x_ ). Suppose _Mod_ ( _D_ Λ)and fix _A_ and _b_ from _D_. By
elementary manipulations on our induction hypothesis and ( _ho:_ ¬), we have:

```
¬ ψ ( A , b ) D Λ↔∃Σ∃ σ ( Tars ( D ΛΣ σ )∧
```
```
j
⋀
i = 1
```
```
Σ(⌜ Vi ⌝)= A ⫯ i ∧
```
```
k
⋀
i = 1
```
```
σ (⌜ xi ⌝)= bi ∧
```
```
⟨ D ΛΣ σ ∣≈⌜¬ ψ ( V , y )⌝⟩ )
```
The desired result now follows since, by Lemma 12.4, the right-hand-side of this
biconditional is equivalent to:

```
∀Σ∀ σ ([ Tars ( D ΛΣ σ )∧
```
```
j
⋀
i = 1
```
```
Σ(⌜ Vi ⌝= A ⫯ i ∧
```
```
k
⋀
i = 1
```
```
σ (⌜ xi ⌝)= bi ]→
```
```
⟨ D ΛΣ σ ∣≈⌜¬ ψ ( V , y )⌝⟩ )
```
We now consider first-order quantifiers, leaving second-order quantifiers to the
reader. As before, fix suitable _D_ Λ, _A_ , and _b_. Our induction hypothesis gives:

```
(∀ y : D )[ ψ ( A , b , y ) D Λ↔∀Σ∀ σ ([ Tars ( D ΛΣ σ )∧
```
```
j
⋀
i = 1
```
```
Σ(⌜ Vi ⌝)= A ⫯ i ∧
k
⋀
i = 1
```
```
σ (⌜ xi ⌝)= bi ∧ σ (⌜ y ⌝)= y ]→
```
```
⟨ D ΛΣ σ ∣≈⌜ ψ ( V , x , y )⌝⟩ )]
```
First suppose that(∀ _yψ_ ( _A_ , _b_ , _y_ )) _D_ Λ, i.e.(∀ _y_ : _D_ ) _ψ_ ( _A_ , _b_ , _y_ ) _D_ Λ. Where Σ maps
each⌜ _Vi_ ⌝to _A_ ⫯ _i_ , and _σ_ maps each⌜ _xi_ ⌝to _bi_ , and _τ_ is any assignment such that
_Diff_ 1 ( _σ_ , _τ_ ,⌜ _y_ ⌝), the induction hypothesis yields⟨ _D_ ΛΣ _τ_ ∣≈⌜ _ψ_ ( _V_ , _x_ , _y_ )⌝⟩. Hence
⟨ _D_ ΛΣ _σ_ ∣≈⌜∀ _yψ_ ( _V_ , _x_ , _y_ )⌝⟩by ( _ho:_ ∀ 1 ). Conversely, suppose¬(∀ _yψ_ ( _A_ , _b_ , _y_ )) _D_ Λ,

i.e.(∃ _y_ : _D_ )¬ _ψ_ ( _A_ , _b_ , _y_ ) _D_ Λ. Fix _c_ from _D_ such that¬ _ψ_ ( _A_ , _b_ , _c_ ) _D_ Λ. By the
induction hypothesis there is some Σ mapping each⌜ _Vi_ ⌝to _A_ ⫯ _i_ , and some _σ_
mapping each⌜ _xi_ ⌝to _bi_ and⌜ _y_ ⌝to _c_ , with¬⟨ _D_ ΛΣ _σ_ ∣≈⌜ _ψ_ ( _V_ , _x_ , _y_ )⌝⟩. Now
¬⟨ _D_ ΛΣ _σ_ ∣≈⌜∀ _yψ_ ( _V_ , _x_ , _y_ )⌝⟩as _Diff_ 1 ( _σ_ , _σ_ ,⌜ _y_ ⌝).

```
Generalising tonth-order logics
```
We have worked in fifth-order logic and considered second-order formulas. But it
is easy to see that these restrictions is inessential. For each _n_ , we could have worked
in _n_ + 3 th-order logic, to formulate similar results for _n_ th-order languages.
That said, spelling this out in any _detail_ would be genuinely nightmarish. In the
second-order case, Tarski’s trick made us treat sequences of first-order variables


294 internal categoricity and truth

as relations between first-order objects (numbers) and first-order objects (assign-
ments to individual first-order variables). Lifting the same trick to arbitrary _n_ th-
order languages will involve treating sequences of variables of order< _n_ as rela-
tions between first-order objects (numbers) and _n_ − 1 th-order entities. Such raising-
of-orders is always _possible_ : intuitively, instead of considering _a_ , we can consider
{{{...{ _a_ }...}}}, thereby raising the order without losing any information. But we
shudder to consider, for example, the explicit details of satisfaction for a 14th-order
language.
Done correctly, though, for arbitrary _n_ we can define a predicate _TrueIn_ - _n_ which
has the same properties as above, i.e.:

Theorem 12.6: _For any natural number n and each_ L _-sentence φ of order_ ≤ _n:_

```
PAint⊢ n +^3 ∀ D Λ( Mod ( D Λ)→[ TrueIn ( D Λ :⌜ φ ⌝)↔ φD Λ])
```
```
Combining this with internal categoricity
```
Recall that the technicalities in this appendix were motivated by considering the
total internal categoricity of CSPint. So let us now return to that motivation.
In the past three chapters, we have explained that internal categoricity entails
intolerance. In fact, as we formulated it, ‘intolerance’ was restricted to _second_ -order
sentences. But, we can easily tweak the proof of Theorem 10.3 to obtain:

Theorem12.7: _For any natural number n and each pure nth-order formula φ_ ( _PE_ ) _with
all free variables displayed and whose quantifiers (of all orders) are P-restricted:_

```
⊢ n ∀ PE (CSP( PE )→ φ ( PE ))∨ ∀ PE (CSP( PE )→¬ φ ( PE ))
```
Now, using the techniques in this appendix, we can define a truth-predicate for
{ _Pure_ ,∈}-sentences _φ_ of order≤ _n_. First, given second-order _P_ and _E_ , let Λ _PE_ be
the interpretation which sends⌜ _Pure_ ⌝to _P_ ⫯and⌜∈⌝to _E_ ⫯. Then say:

(a) _True_ - _n_ (⌜ _φ_ ⌝)iff∀ _PE_ (CSP( _PE_ )→ _TrueIn_ ( _P_ Λ _PE_ :⌜ _φ_ ⌝))
(b) _False_ - _n_ (⌜ _φ_ ⌝)iff∀ _PE_ (CSP( _PE_ )→ _TrueIn_ ( _P_ Λ _PE_ :⌜¬ _φ_ ⌝))
(c) _Indeterminate_ - _n_ (⌜ _φ_ ⌝)iff otherwise
Then, from Theorems 12.6 and 12.7, we straightforwardly obtain a result which vin-
dicates the technical claims we made in §12.4:

Theorem 12.8: _For any n and any_ { _Pure_ ,∈} _-sentence φ of order_ ≤ _n whose quantifiers
(of all orders) are Pure-restricted:_

```
PAint⊢ n +^3 True-n (⌜ φ ⌝)∨ False-n (⌜ φ ⌝)
```

