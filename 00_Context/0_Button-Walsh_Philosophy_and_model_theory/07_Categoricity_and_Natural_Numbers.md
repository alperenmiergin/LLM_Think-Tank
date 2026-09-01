**Kaynak:** [[00_Context/0_Button-Walsh_Philosophy_and_model_theory/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

## 7 Categoricity and the natural numbers

In Chapter 6, we introduced both objects-modelism and concepts-modelism, and
introduced the ensuing Modelist’s Doxological Challenge. In this chapter, we show
that modelists who are also moderate naturalists (in the sense of §2.3) cannot an-
swer this Challenge. Throughout the chapter, we focus on arithmetic.
The Modelist’s Doxological Challenge, recall, is to explain how we can pick out
particular isomorphism types. In the setting of arithmetic, the specific challenge
is to explain how we can pick out the standard isomorphism type of the natural
numbers. We start by arguing that moderate modelists must hope to answer the
doxological challenge ‘by description’. However, we then use model theory to show
that the relevant isomorphism type _cannot_ be picked out by any _first-order_ theory.
The modelist will probably respond to this problem by invoking some logic
which is _stronger_ than first-order logic. There are plenty of candidate logics and,
in general, there may be nothing wrong with invoking them. However, the Mod-
elist’s Doxological Challenge can also be pitched at the level of selecting a logic, for
these stronger logics must be characterised using mathematical concepts. And the
_moderate_ modelist will be unable to answer this version of the challenge.
Before diving in, though, we should comment on a phrase that we will use fre-
quently. In Chapter 6, we formulated the Modelist’s Doxological Challenge in a
deliberately loose way, in terms of ‘picking out particular structures’. Using such
deliberately loose vocabulary allows us to discuss certain common problems that
arise for objects-modelists and concepts-modelists, in a suitably general way. How-
ever, it is always possible to turn our loose phrasing into something more specific, as
more specific versions of modelism are advanced. So, whilst we often speak loosely
for readability, we unpack matters more slowly when greater care is required.

### 7.1 Moderate modelism

In §2.3, we introduced a zeitgeisty brand of naturalism which, following Putnam,
we described as ‘moderate’. The moderate rejects all appeals to a special faculty of
_mathematical intuition_ , or anything similar, within her philosophy of mathematics.
We say that a _moderate modelist_ is a modelist—of any variety—who embraces this
moderation. So, in particular, moderate modelists refuse to invoke mathematical
intuition when they attempt to answer the Challenge: _How do we pick out particular_


152 categoricity and the natural numbers

_isomorphism types?_
Having spurned intuition, we suggest that moderate modelists must embark on
a programme of ‘doxology by description’. For—loosely but powerfully—how _else_
could a moderate modelist claim to ‘pick out’ a particular isomorphism type, but
by attempting to describe it? This, however, is one of those moments where it _is_
worth unpacking the loose question, and considering how it applies specifically to
objects-modelists and concepts-modelists.
The Challenge facing objects-modelists is to explain how we can _refer_ to particu-
lar isomorphism types. They regard such isomorphism types as abstract objects of
a special sort. Now, an _im_ moderate objects-modelist could invoke a special faculty
of quasi-perception, which enables her to quasi-perceive particular isomorphism
types and hence, perhaps, refer to them directly. But _moderate_ modelists can of-
fer no such reply to the Challenge. The problem is exactly as in §2.3. Following
Putnam, moderates must deny that any ‘neural process [...] could be described as
the perception of’ the isomorphism type common to all _ω_ -sequences.^1 It would
be more plausible for a moderate modelist to suggest that we come to refer to spe-
cific isomorphism types by learning some mathematical theory. But then, following
Dummett, she cannot allow that the theory merely gestures in roughly the right di-
rection, with the slack picked up by some latent faculty of intuition (as it were):^2
moderates cannot countenance any appeal to intuition, latent or otherwise. Rather,
the moderate must insists that the theories _themselves_ precisely pin down the iso-
morphism types. Exactly as in §2.3, then, _moderate_ objects-modelists cannot have
‘reference by acquaintance’ to isomorphism types; they must make do with ‘refer-
ence by description’.
The Challenge facing concepts-modelist, on the other hand, is to explain how
we can acquire, possess, or deploy concepts which she thinks are as fine-grained as
isomorphism-types. An _im_ moderate concepts-modelist could simply answer the
Challenge by invoking a special faculty of mathematical intuition which straight-
forwardly furnishes her with the concept _ω-sequence_ (for example). But moderate
concepts-modelists can make no such claim. Their moderation rules out the idea
that we possess these concepts innately (for example), or acquire them via flash
of rational insight, or anything similar. Once again, then, it is hard to see how we
could possibly _acquire_ such concepts, except by articulating them with some theory.
Again, then, concepts-modelists are committed to ‘doxology by description’.
To summarise: throughout this chapter and indeed Part B, we shall assume that
_moderate_ modelists—of any sort—must try to answer the Modelist’s Doxological
Challenge by laying down some formal theory.

(^1) Putnam (1980: 471).
(^2) Dummett (1963: 189–90).


```
7.2. aspirations to categoricity 153
```
### 7.2 Aspirations to Categoricity

And here is how that just _might_ be done. We say that a theory is _categorical_ iff all of
its models are isomorphic. Now, if we think of theories as picking out their mod-
els, then a categorical theory will pick out a single isomorphism type. So this gives
modelists—particularly moderate modelists—a reason to aim for categorical the-
ories. For, if _T_ is categorical, then objects-modelists can maintain that presenting _T_
allows us to refer to some particular ‘structure’, and concepts-modelists can main-
tain that presenting _T_ allows us to express some specific, fine-grained, mathematical
concept. In short, it seems like the Doxological Challenge if the modelist can find
a categorical theory.
A second reason to aim for categoricity is brought out by an elementary result:^3

Proposition 7.1: _If T is categorical, then T is complete._

We essentially proved this result in §2.5, in our remarks ‘concerning (i)’, and we leave
it to the reader to fill in the details. Now, suppose that we present a _supervaluational_
semantics for the sentences in _T_ ’s language, following the template of §2.5, and so
we offer these clauses:

```
(a) φ is true iff T ⊧ φ
(b) φ is false iff T ⊧¬ φ
(c) φ is indeterminate otherwise
```
By Proposition 7.1, if _T_ is categorical, then every sentence in _T_ ’s language has a de-
terminate truth value on the supervaluational semantics.

### 7.3 Categoricity within first-order model theory

There are, then, at least two reasons to _aim_ for categorical theories. Unfortunately,
elementary model theory imposes two immediate barriers to _finding_ any.
The Compactness Theorem 4.1 supplies the first barrier. As we saw in §4.1, there
are models of PA which contain non-standard elements; that is, elements which
look infinitely large (see Definition 4.2). Such non-standard models are never iso-
morphic to the standard model. However, they can be elementarily equivalent to
the standard model, i.e. they can make all the same first-order sentences true (see
Definition 2.4). So, no amount of first-order theorising can rule out these non-
standard models.

(^3) Indeed, the search for categorical theories has often been motivated by the desire to secure the deter-
minacy of truth-value; see e.g. Kreisel (1967: 147–52) and Weston (1976: 286). Corcoran (1980a, 1981) and
Awodey and Reck (2002: 18) note that it is not always clear whether the late-19th and early-20th century
practitioners of categoricity (like Dedekind and Veblen) were motivated by categoricity _per se_ , or by the
completeness of theories which it delivers.


154 categoricity and the natural numbers

The Löwenheim–Skolem Theorem supplies the second barrier to categoricity.^4
We shall first state the result, and then explain it below. (We reserve its proof for
§7.a. The notation⪯, for elementary extensions, was set out in Definition 4.3, and
see the end of §1.b for a brief discussion of cardinals.)

Theorem 7.2(Löwenheim–Skolem): _Let M be an infinite_ L _-structure:_

```
(1)For any A ⊆ M, there is an L -structure H such that H ⪯ M, and A ⊆ H,
and ∣ H ∣≤max(∣ A ∣,∣L∣,א 0 )
(2)For any cardinal κ ≥max(∣ M ∣,L) , there is an L -structure N such that
M ⪯ N and ∣ N ∣= κ
```
The theorem comes in two parts. Part (1) states that, if we start with a structure _M_
and a subset _A_ of _M_ ’s domain, then we can build a model _H_ which contains _A_ but
which is an elementary substructure of _M_. This is sometimes called the Skolem
_Hull_ Construction, since _H_ is a hull built around _A_. Equally, it is sometimes called
the _Downward_ Löwenheim–Skolem Theorem, since we are making a _smaller_ model
from _M_. The simplest case of this is whereLis countable and where _A_ =∅, so that
the hull _H_ is itself countable. Part (2) is sometimes called the _Upward_ Löwenheim–
Skolem Theorem since, starting with an infinite model _M_ , we can build arbitrarily
_large_ elementary extensions of _M_.^5
Together, the two parts of the Löwenheim–Skolem Theorem show that every
countable first-order theory with an infinite model has a model of every infinite
size. But, more generally, since isomorphic models must be of the same size, _no
first-order theory with an infinite model is categorical_. This is significant, since the first-
order theories which we might have wanted to be categorical—arithmetic, analysis,
and set theory—all have infinite models.
In brief: categoricity is out of reach for the first-order theories we most care
about. And this puts an enormous blockade on the _only_ route by which moderate
modelists might hope to answer their Doxological Challenge.

### 7.4 Dedekind’s Categoricity Theorem

For those seeking a categorical theory of arithmetic, the most obvious thought is to
move from first-order logic to full second-order logic (for the technical differences,
see §1.10). After all, Dedekind famously proved the categoricity of second-order

(^4) Having linked Compactness and the Löwenheim–Skolem Theorem, it is worth mentioning that
Lindström’s Theorem provides a precise sense in which Compactness and Löwenheim–Skolem-type-
results exhaustively _characterise_ first-order logic (Lindström 1969; Väänänen 2012a).
(^5) On the history of this theorem, see Mancosu et al. (2009: §4 pp.352ff) and Badesa (2004).


```
7.5. metatheory of full second-order logic 155
```
Peano Arithmetic, PA 2 , whose axioms are given in Definition 1.10. Here is a proof:^6

Theorem 7.3(Dedekind): _All full models of_ PA 2 _are isomorphic._

_Proof._ Let _M_ be a full model of PA 2. It suffices to show that _M_ is isomorphic to
the standard model _N_ of PA 2. Using our notation for numerals from ( _numerals_ ) of
§1.13, consider the set of all elements ‘finitely far’ from _M_ ’s ‘zero’ element, i.e.:

```
C ={ a ∈ M : for some natural number n , M ⊧ a = Sn ( 0 )}
```
Note that the phrase ‘for some natural number _n_ ’ here occurs in the _metalanguage_.
Now, _M_ satisfies the Induction Axiom; and since _M_ is a _full_ model of second-order
logic, _C_ falls within the ‘range’ of that Axiom’s universal quantifier, i.e.:

```
M ⊧[ C ( 0 )∧ ∀ y ( C ( y )→ C ( S ( y )))]→∀ yC ( y )
```
The antecedent of this conditional is satisfied: clearly 0 _M_ = _a_ is such that _M_ ⊧
_a_ = _S_^0 ( 0 ), and if _M_ ⊧ _a_ = _Sn_ ( 0 )then, applying successor to both sides, we have
_M_ ⊧ _S_ ( _a_ )= _Sn_ +^1 ( 0 ). And, since the antecedent of the conditional is satisfied, we
have that _M_ ⊆ _C_. Since also _C_ ⊆ _M_ by definition, we have that _C_ = _M_.
Using this fact, we define an isomorphism _h_ : _N_ Ð→ _M_ from the standard
model _N_ of PA 2 to _M_ as follows: _h_ ( _n_ )= _a_ iff _M_ ⊧ _a_ = _Sn_ ( 0 ). Since _C_ = _M_ , the
map _h_ is a surjection. To see that it is an injection, suppose that _h_ ( _n_ )= _h_ ( _m_ ); then
_M_ ⊧ _Sn_ ( 0 )= _Sm_ ( 0 )and, since PA 2 contains an axiom asserting that the successor
operation _S_ is injective, we have that _n_ = _m_. Now, by definition _h_ ( 0 )= 0 _M_ since
_M_ ⊧ _S_^0 ( 0 )=0. And _h_ preserves the successor operation, since if _h_ ( _n_ )= _a_ then
_M_ ⊧ _a_ = _Sn_ ( 0 ), so that _M_ ⊧ _S_ ( _a_ )= _Sn_ +^1 ( 0 )and so _h_ ( _n_ + 1 )= _SM_ ( _a_ )=
_SM_ ( _h_ ( _n_ )).

### 7.5 Metatheory of full second-order logic

Before we discuss the philosophical significance of Dedekind’s Theorem 7.3, it is
worth making three technical observations which follow from it, concerning the
differences between first-order logic and full second-order logic. First:

```
(i)The Compactness Theorem 4.1 fails for full second-order logic.
```
To see this, as in §4.1, consider the theory _T_ ∗=PA 2 ∪{ _Sn_ ( 0 )< _c_ : _n_ ≥ 0 }. Exactly
as in §4.1, every _finite_ subset of _T_ ∗has a full model. But _T_ ∗itself has no full model.
For if _M_ ⊧ _T_ ∗, then _cM_ ∉ _C_ —where _C_ is defined as in the proof of Theorem
7.3—contradicting the fact that _C_ = _M_. Next,

(^6) For Dedekind’s original proof, see Dedekind (1888: ¶132, 1930–32: v.3 p.376) and Ewald (1996: v.2
p.821). For contemporary proofs in a different style, see Shapiro (1991: 82–3) and Enderton (2001: 287).


156 categoricity and the natural numbers

```
(ii)The Upward Löwenheim–Skolem Theorem 7.2(2) fails for full second-order
logic.
```
After all, every full model of PA 2 is isomorphic to the standard _countable_ model.
Now, in fact, Dedekind’s Theorem 7.3 can be tweaked to yield the categoricity of
second-order real analysis.^7 Consequently, every full model of second-order real
analysis has cardinality continuum. And so also:

```
(iii)The Downward Löwenheim–Skolem Theorem 7.2(1) fails for full second-
order logic.
```
In short, the meta-theorems about first-order logic and full second-order logic are
very different. These differences once led Kalmár to quip:

One can say humorously, while first order reasonings are convenient for proving true
mathematical theorems, second order reasonings are convenient for proving false meta-
mathematical theorems. Of course, instead of calling them false we honour them by call-
ing them second order meta-theorems.^8

Mostowski was willing to spoil a good joke, and replied:

[they] are neither misleading nor false. They just require stronger assumptions than many
metamathematical theorems concerning systems based on first order logic.^9

Here is the point, shorn of all trace of humour. Considered just as pieces of pure
mathematics, results like Dedekind’s Theorem 7.3 are utterly unimpeachable. But,
considered as pieces of pure mathematics, their philosophical significance remains
up for grabs. Indeed, this illustrates a rather good rule of thumb: it is impossible
to extract philosophical juice from a piece of pure mathematics, without invoking
some philosophical thesis. Or, as George put it, ‘A mathematical result shines only
when illuminated by other views.’^10

### 7.6 Attitudes towards full second-order logic

Modelists, however, _do_ supply some ‘other views’ with which to illuminate
Dedekind’s Categoricity Theorem 7.3. In particular, modelists explicate ‘structure’,
informally construed, via isomorphism types. So, they will take Dedekind’s Theo-
rem to establish the following conditional:

_If we can appeal to full second-order logic, then we can pin down the specific isomorphism
type of the natural numbers, and so can pick out the natural number structure (infor-
mally construed)._

(^7) See e.g. Shapiro (1991: 84).
(^8) In Mostowski (1967: 104).
(^9) Mostowski (1967: 107).
(^10) George (1985: 87); he was specifically focussing on the Löwenheim–Skolem Theorem.


```
7.6. attitudes towards full second-order logic 157
```
However, at least _four_ distinct attitudes can be taken towards this conditional.
_The Algebraic Attitude._ Imagine a character who denies that there is any such
thing as _the_ natural number structure (informally construed). Instead, she thinks of
arithmetic as algebraic, in the sense used in §2.2, that the theory has no one intended
model. Note that this character can quite happily be a modelist _herself_. For she is
happy to employ model-theoretic notions, in explicating the idea of mathematical
structure (informally construed). Note also that she admits the perfect mathemati-
cal rigour of Dedekind’s Theorem. Her point is simply that the _indeterminacy_ in the
natural number structure is mirrored by an _indeterminacy_ in second-order quantifi-
cation, so that second-order logic, too, is inevitably algebraic in character. In short:
she performs a _modus tollens_ on the preceding conditional.^11
_The Logic-First Attitude._ The next attitude instead involves a _modus ponens_. More
specifically, it begins with the idea that our grasp on full second-order logic is un-
problematic. As such, by the preceding conditional, it insists that we can pin down
the natural numbers (up to isomorphism).^12
_The Infer-to-Stronger Logic Attitude._ One might think that mathematical practice
itself dictates that we are able to pin down the uniquely intended natural number
structure (informally construed). If we treat this structure (informally construed)
as an isomorphism type, then we can use the Compactness Theorem 4.1 or the
Löwenheim–Skolem Theorem 7.2 to argue that we must have access to resources
beyond first-order logic. Indeed, for those who are not too worried about the Alge-
braic Attitude, this pattern of argumentation may look like nothing more than an
inference to the best explanation: an _abduction_ on the preceding conditional.^13
_The Holistic Attitude._ The previous two attitudes seem to presuppose a clean sep-
aration between full second-order logic and mathematics. However, one might well
think that the boundary between the two is rather artificial.^14 So the final choice is
to embrace a more holistic attitude, according to which our grasp of (for example,
full second-order) logic and our grasp of determinate mathematical structures (in
the informal sense) come together, with each helping to illuminate the other.
On any of the last three attitudes, finding a categorical theory is likely to be
treated as a hallmark of _success_ in the project of axiomatising arithmetic.^15 Whether
that is correct or not, our point here is fairly simple. By themselves, categoricity
results are just pieces of pure mathematics. If they are to be deployed in philo-
sophical discussion, we first need some bridging principle which connects infor-
mal structure-talk with the technical notions supplied by model theory. But even

(^11) See Shapiro (2012: 308) and cf. Mostowski (1967: 107) and Read (1997: 92).
(^12) See Read (1997: 89).
(^13) This is part of Shapiro’s approach to second-order logic (1991: xii–xiv, 100, 207, 217–8, 2012: 306),
and Shapiro cites Church (1956: 326fn.535) as a precedent.
(^14) As suggested by Shapiro (2012: 311–22) and Väänänen (2012b).
(^15) Cf. Read (1997: 92) and Meadows (2013: 525–7, 536–40) but also Corcoran (1980a: 203–5).


158 categoricity and the natural numbers

the modelist’s bridging principle—to explicate structure via isomorphism types—
is compatible with many different attitudes concerning the philosophical signifi-
cance of the categoricity result.

### 7.7 Moderate modelism and full second-order logic

We have just outlined four different attitudes that modelists might take towards
Dedekind’s Theorem 7.3. In §7.1, however, we specifically focussed on _moderate_
modelism. So we now want to consider which of these attitudes are available to
_moderate_ modelists. In particular, we want to show that moderate modelists _cannot_
legitimately invoke the Logic-First Attitude, and why this matters.
Recall from §§7.1–7.2 that moderate modelists must try to answer their Doxo-
logical Challenge by laying down a _categorical_ theory. In particular, then, they are
likely to attempt to answer the Doxological Challenge by appealing to Dedekind’s
Categoricity Theorem for PA 2 , and then invoking the Logic-First Attitude towards
full second-order logic.
The ‘second-order’ component of ‘full second-order logic’ is wholly unobjec-
tionable. No one can prevent mathematicians from speaking a certain way, or from
formalising their theories using any symbolism they like. The qualifying expres-
sion ‘full’, however, is more delicate. As outlined in §1.10, this describes a particular
semantics for second-order logic: one in which the second-order quantifiers essen-
tially range over the entire powerset of the first-order domain of the structure. We
can instead supply a faithful _Henkin_ semantics for second-order logic, as in §1.11.
And we can obtain a Löwenheim–Skolem result for faithful Henkin semantics, just
by making some minor tweaks to our original proof of Theorem 7.2.^16 So, to be
quite explicit, _Dedekind’s Theorem 7.3 fails if we replace ‘full’ with ‘Henkin’_.
Such observations have been made before. Repeatedly.^17 But here is Putnam’s
brief statement of why this raises a problem for moderate modelists:

[...] the ‘intended’ interpretation of the second-order formalism is not fixed by the use
of the formalism (the formalism itself admits so-called ‘Henkin models’ [...]), and [so]
it becomes necessary to attribute to the mind special powers of ‘grasping second-order
notions’.^18

(^16) For more, see e.g. Shapiro (1991: 70–6, 92–5), Manzano (1996: ch.6), and Enderton (2001: §§4.3–
4.4). An alternative way to raise essentially the same point is as follows: if we formalize the semantics
for ‘full’ second-order logic and its constituent notions (like powerset) in a _first-order_ set theory, then the
Löwenheim–Skolem result applies once again at the level of the metatheory.
(^17) See e.g. Weston (1976: 288), Parsons (1990b: 14–17, 2008: 394–6), Field (1994: 308n.1, 2001: 319,
321–2, 338–9, 352–3), Shapiro (2012: 273–5), Väänänen (2012b: 120), Meadows (2013: 535–42), and Button
(2013: 28).
(^18) Putnam (1980: 481).


```
7.7. moderate modelism and full second-order logic 159
```
This is another instance of Putnam’s just-more-theory manoeuvre, which we first
discussed in the context of his permutation argument (see §2.3). Moreover, we
think it is successful, as wielded specifically against _moderate modelists_. But we must
spell this out carefully.
Using the Löwenheim–Skolem Theorem 7.2, we can present our modelist with
various alternatives for what the theory PA 2 picks out: ‘the standard model’ (i.e. one
particular isomorphism type), or some ‘non-standard model’ (i.e. some other iso-
morphism type). In trying to spell out why PA 2 picks out the former, our moderate
modelist appeals to Dedekind’s Theorem 7.3. In order for that Theorem to do the
job she wants it to, she must have ruled out the Henkin semantics for second-order
logic; indeed, in the vocabulary of §2.3, she must have shown that full models are
_preferable_ to Henkin models. But the distinction between full models and Henkin
models essentially invokes abstract _mathematical_ concepts. And, so the worry goes,
the distinction between full and Henkin models is _just more theory_ , and hence up
for reinterpretation.
This, however, is another moment when it pays to unpack the problem in two
slightly different ways, depending upon whether we are dealing with moderate _con-
cepts_ -modelists or moderate _objects_ -modelists.
For moderate concepts-modelists, the issue is straightforward. They need to ex-
plain how creatures like us are able to possess a particular mathematical concept
which (they claim) is as fine-grained as an isomorphism type. To answer this, they
tried to invoke full second-order logic. But this only pushes back the problem: we
must ask them how creatures like us are able to possess the particular mathematical
concepts invoked in the _semantics_ for full second-order logic. Indeed, when the aim
is to _secure_ a grasp of certain abstract mathematical concepts, invoking Dedekind’s
Theorem 7.3 is simply _question-begging_ , since the use of the full semantics simply
_assumes_ precisely what was at issue, namely, an unproblematic grasp of various ab-
stract mathematical concepts.
For moderate objects-modelists, the issue is only slightly more complicated; we
just need to rephrase all of the points about _grasping concepts_ in terms of _reference_.
The moderate objects-modelist is looking for a mechanism that allows her to refer
to the isomorphism type of the natural numbers. If she tries to invoke Dedekind’s
Categoricity Theorem 7.3, then she needs to explain that she is working with the _full_
semantics for second-order logic. As such, she needs to refer to the _full_ powerset of
the underlying domain which, if everything has gone successfully, is (isomorphic
to) the natural numbers. But the full powerset of this domain has the same cardi-
nality as the real numbers. Moreover, via familiar coding mechanisms, we can view
each real number as a certain subset of natural numbers. So, to explain how she
can pick out the natural numbers (up to isomorphism), it seems she must _first_ ex-
plain how she can pick out the real numbers (up to isomorphism). Her problems


160 categoricity and the natural numbers

have only worsened: whatever problems arise in referring to the naturals will pale
in comparison to the problems which arise in referring to the reals.
Either way, then, in appealing to full second-order logic, the moderate modelist
is simply out of the frying pan, and into another frying pan. And, if anything, the
second frying pan is slightly larger and hotter than the first.

### 7.8 Clarifications

The argument we just gave is central to Part B. So we will pause to consider several
(unsuccessful) ways in which a moderate modelist might seek to undermine it. We
imagine three responses from the moderate modelist:

_I grant that there is a certain ‘circularity’ in attempting to secure certain mathematical
resources by invoking them. And yes, this ‘circularity’ occurs when I explain the differ-
ences between faithful Henkin semantics and full semantics. But this ‘circularity’ is not
vicious; it is merely a benign instance of holism._

This response misunderstands the problem facing moderates. Crudely put, moder-
ates need to provide us with a way to break into the circle of mathematical concepts.
As we discussed in §7.1, moderates cannot simply insist that they ‘just can’ refer to
the isomorphism type of an _ω_ -sequence, or insist that ‘as a matter of brute fact’ their
words ‘just do’ express the concept _ω-sequence_ (rather than some non-standard con-
cept). Well then, by the arguments of the preceding section, moderates cannot in-
sist that they ‘just do’ employ second-order logic with its _full_ semantics (rather than
some Henkin semantics).
At this point, the moderate modelist may change tack:

_My grasp of full second-order quantifiers is simply logical, or purely combinatorial,
and so is not up for reinterpretation via Henkin semantics._^19

This merely labels the problem, without solving it. Whatever honorific they give
these notions—logical, combinatorial, or something else—the question remains
how moderate modelists can lay claim to them.
In desperation, the moderate modelist might retreat further:

_Well, all I know is that something has gone wrong in your argument, because we do in
fact manage to pin down the isomorphism type of an ω-sequence!_

(^19) Some people read Shapiro (1991) this way. However, as remarked in footnote 14, above, Shapiro does
not think that second-order logic can be used in the present context to secure the categoricity of arithmetic.
There is a well-known interpretation of second- and higher-order logic in terms of plural logic (see
Boolos 1984; Oliver and Smiley 2013). It is sometimes suggested that this perspective automatically rules
out any Henkin-like semantics and so requires a full semantics. For representative quotations, and excellent
criticisms of this approach, see Florio and Linnebo (2016).


```
7.9. moderation and compactness 161
```
We will say much more about this in Chapter 9. But even if this is right, it does
not let the moderate modelist off the hook. To be very clear: our argument does
not aim to establish that _we_ cannot pin down this isomorphism type, or that _we_ do
not have a grasp of full second-order logic. Our argument establishes only that the
_moderate modelist_ cannot think we do. So, we agree that ‘ _something_ has gone wrong
here’; but _what_ has ‘gone wrong’ is just moderate modelism _itself_.
The short point is that the moderate modelist has no answer (yet) to her Doxo-
logical Challenge. She seems to have no way to explain how either full second-order
logic, or arithmetic, could be anything other than _algebraic_ theories. Indeed, despite
her aim of pinning down _the_ natural number structure, she is being dragged towards
the Algebraic Attitude of §7.6.

### 7.9 Moderation and compactness

The problem outlined in §§7.7–7.8 is rooted in the fact, mentioned in §7.5, that full
second-order logic is not compact.^20 To show this, we will start with a simple ob-
servation:

```
(i)No theory of arithmetic is categorical in any compact logic.
```
The argument to this effect is exactly as in §4.1. Let _T_ be any theory of arithmetic.
Then define a theory _T_ ∗by adding infinitely many new sentences to _T_ which state,
in effect, that _c_ is an element such that 0< _c_ , that 1< _c_ , that 2< _c_ , etc. If the
logic in question is compact, then _T_ ∗has a model; but any model of _T_ ∗contains a
non-standard element; so _T_ is not categorical.
Consequently, anyone who wants to provide a categorical theory of arithmetic
must use a non-compact logic. But, speaking very crudely, non-compact logics are
hard to get to grips with. This follows from a second simple observation:

```
(ii)If a logic has a sound and complete proof system, whose proofs are always
finitely long, then that logic is compact.
```
The argument for this is exactly as in our proof of the Compactness Theorem 4.1 for
first-order logic, from the soundness and completeness of its proof system. Suppose
that every finite subset of _T_ has a model. Since our proof system is _sound_ , there is no
sentence _φ_ such that some finite subset of _T_ proves both _φ_ and¬ _φ_. Since our proofs
are _finite_ , _T_ itself does not prove both _φ_ and¬ _φ_. Since our proof system is _complete_ ,
we do not have both _T_ ⊧ _φ_ and _T_ ⊧¬ _φ_. So _T_ has a model, since otherwise we
vacuously have _T_ ⊧ _ψ_ , for any sentence _ψ_.
Combining our two observations, we arrive at the following:

(^20) Many thanks to Catrin Campbell-Moore for suggesting that we make this point in terms of _compact-
ness_ , rather than Gödelian incompleteness.


162 categoricity and the natural numbers

```
(iii)Any logic which allows for a categorical theory of arithmetic lacks a sound
and complete finitary proof system.
```
Our understanding of what consequence amounts to according to any such logic
must, then, come from a specification of the formal semantics for that logic. But
the specification of a formal semantics invariably looks like _just more mathematical
theory_. As such, it will always be at least as hard for moderate modelists to explain
how they grasp the intended semantics for the logic in question, as it is for them to
explain how to pin down the ‘standard model’ of arithmetic in the first place.

### 7.10 Weaker logics which deliver categoricity

The preceding argument is very abstract, because it considers arbitrary logics. In-
deed, it is essentially an informal argument in _abstract model theory_. To make the
point more concrete, we outline seven logics which are weaker than full second-
order logic, but within which categorical theories of arithmetic can be given.
We can easily obtain a categorical theory of arithmetic if we:
(a)Employ a fragment of second-order logic equipped with one-place second-
order relation-variables _X_ , _Y_ , _Z_ , ... but no second-order quantifiers, with the
semantics organised so that _φ_ ( _X_ )is true iff every subset of the first-order
domain satisfies _φ_.

It is sometimes suggested that this logic is significant, because it accommodates the
idea that arithmetical induction is _totally open-ended_. The contrast is as follows: the
induction schema used in PA only gives us induction for formulas in the signature
{0, 1,+,×}. The hope is that (a), by contrast, allows us to consider induction in any
_possible extension_ of our language, thereby reflecting induction’s open-endedness.^21
Now, it is easy to see that we can provide a categorical theory of arithmetic us-
ing the logic sketched in (a): just take the usual second-order theory, PA 2 , and
delete the ‘∀ _X_ ’ in front of its Induction Axiom.^22 Dedekind’s Theorem 7.3 then
goes through just as before. But that this theory is categorical is neither surpris-
ing nor very interesting.^23 For this logic is obviously just a notational variant for
the fragment of full second-order logic in which formulas begin with at most one
higher-order universal quantifier and contain no further higher-order quantifiers.
In this context, this notational variant is surely no more philosophically significant

(^21) McGee (1997: 56ff), Lavine (1994: 224–40, 1999), and Parsons (2008: 262–93) have all invoked (a)
in defence of philosophical arguments based upon categoricity results. However, they all did so in the
context of the _internal_ categoricity results of Chapters 10–11. The applicability of induction to formulas in
any signature whatsoever had been stressed previously by Feferman: see footnote 43 in Chapter 4.
(^22) The technical point here goes back to Corcoran (1980a: 192–3), and is also discussed by Shapiro
(1991: 247–8).
(^23) As noted by Field (2001: 354), Walmsley (2002: 253), Pedersen and Rossberg (2010: 333–4), and
Shapiro (2012: 309–10).


```
7.10. weaker logics which deliver categoricity 163
```
than the fact that, in propositional logic, we can omit the outermost pairs of brack-
ets in a sentence without risk of ambiguity. Simply put: our grasp on the idea of
_totally_ open-ended induction is exactly as precarious as our grasp on _full_ second-
order quantification.
Other intermediate logics have been considered. The following three augmen-
tations of first-order logic also suffice for categorical theories of arithmetic:^24

```
(b)Treat ‘0’ and ‘ S ’ as logical constants, i.e. as having fixed interpretations.
(c)Add a new quantifier which expresses that there are finitely many φ s.
(d)Introduce a single one-place predicate, whose fixed interpretation in an ar-
bitrary model of arithmetic is given by the numbers finitely far from (the
interpretation of) zero.
```
Given (b), PA itself is trivially categorical, for it has _exactly_ one model. Given (c),
we obtain categoricity by supplementing PA with the axiom ‘for any _x_ , there are
only finitely many entities less than _x_ ’, since this claim this would be false of all
non-standard numbers. And given (d), we obtain categoricity by supplementing
PA with the axiom ‘everything is finitely far from zero’ (compare our definition of _C_
in the proof of Dedekind’s Theorem 7.3). But, as Read notes, if we attempt to secure
categoricity by invoking any of these logics, then we simply shift ‘the problem from
the identification of postulates characterizing [the natural numbers] categorically
[...] into the semantics and model theory of the logic used to state the postulates’.^25
This is the just-more-theory manoeuvre all over again.
A marginally more interesting approach is to:
(e)Add Härtig’s two-place quantifier,H _xy_ ( _φ_ ( _x_ ), _ψ_ ( _y_ )), which expresses that
there are exactly as many _φ_ s as _ψ_ s.^26

Given (e), we obtain a categoricity by supplementing PA with an axiom stating ‘if
there are exactly as many entities less than _x_ as there are entities less than _y_ , then _x_ =
_y_ ’, for this would be false of certain non-standard numbers. But, again, to grasp
the (intended) semantics of Härtig’s quantifier, we need to grasp the behaviour of
cardinality _in general_ , which again presupposes within the semantics precisely the
notions that we were seeking to secure by providing a categorical theory. Similarly,
we might:

```
(f)Allow sentences containing (countably) infinitely long conjunctions and
disjunctions.^27
```
We then obtain categoricity by supplementing PA with the countable disjunction:
‘everything is either 0, or _S_ ( 0 ), or _S_ ( _S_ ( 0 )), or, ...’. But to grasp this proposal, we
need to grasp the meaning of the ellipsis; and that looks exactly like the original

(^24) Read (1997: 89–92) discusses (b), (c) and (e). Field (1980: ch.9, 2001: 320, 338–40) defends (c).
(^25) Read (1997: 91).
(^26) We discuss Härtig’s quantifier more in Chapter 16.
(^27) In terminology we will introduce in §15.4, this is the logic _Lω_ 1 _ω_.


164 categoricity and the natural numbers

challenge of grasping the natural number sequence. (Indeed, using our notation
( _numerals_ ) of §1.13, and the notation for infinitary connectives which we will de-
fine in §15.4, we would typically write this axiom as∀ _x_ ⋁ _n_ < _ωx_ = _Sn_ ( 0 ), thereby
explicitly invoking a grasp of the natural numbers in the metatheory.)
Mathematically, the most interesting alternative is to:
(g)Insist that the arithmetical function symbols+and×, even if not logical con-
stants, must always stand for _computable_ functions.

Given (g), PA itself becomes categorical, as a consequence of Tennenbaum’s Theo-
rem that all computable models of (first-order) PA are isomorphic.^28 However, this
option again faces an obvious challenge. To make sense of the notion of _computabil-
ity_ , we need to make sense of the idea of a process specified with an arbitrary but
_finite_ number of instructions, which can run for any arbitrary but _finite_ number of
steps. In short, the notion of _computability_ seems to presuppose precisely the arith-
metical notions it was supposed to vouchsafe. Again: this is the just-more-theory
manoeuvre.^29
Perhaps further logics could be advanced, within which we could provide a cat-
egorical theory of arithmetic. But the general problem facing moderate modelists
should now be clear. They need to explain how we grasp certain mathematical con-
cepts. They must answer by invoking some categoricity theorem. But to prove cat-
egoricity, they must spell out the semantics of their chosen logic (given that the
logic must be non-compact, and hence has no sound and complete finitary proof
system). In so doing, they will invoke precisely the kinds of mathematical concepts
that were at issue in the first place, and which they were hoping to secure by _appeal
to_ a categoricity theorem.
In short: the moderate modelist’s attempts to go beyond first-order logic invari-
ably amount to _just more mathematical theory_. With this, _moderate modelism is dead_.

### 7.11 Application to specific kinds of moderate modelism

Triumphant as this sounds, we should probably pause to remember that no one
has ever _called_ themselves a ‘moderate modelist’. So, to bring out the significance
of the death of moderate modelism, we will explain what becomes of the modelist
positions which we outlined in Chapter 6.
As we noted in §6.2, Shapiro is an objects-modelist par excellence. He believes
in ante-structures, which are something like abstractions from isomorphism types.
His version of the Modelist’s Doxological Challenge is to explain how we are able

(^28) Tennenbaum (1959); for proofs, see Kaye (2011) and Ash and J. Knight (2000: 59).
(^29) For more on this appeal to Tennenbaum’s Theorem, see McCarty (1987: 561–3), Dean (2002, 2014),
Halbach and Horsten (2005), Quinon (2010), Button and P. Smith (2012), and Horsten (2012).


```
7.11. application to specific kinds of moderate modelism 165
```
to refer to particular ante-structures. As one might expect, Shapiro explicitly con-
cedes that there would be a serious problem here, _if_ we were limited to first-order
logic. But Shapiro denies that our resources are limited in this way, and answers
the Challenge by explicitly invoking full second-order logic and Dedekind’s Cat-
egoricity Theorem 7.3.^30 Our observation is simple: Shapiro cannot do so whilst
remaining a _moderate_.
We also explained in §6.4 that certain modal structuralists, like Hellman, are
concepts-modelists. To recall, modal structuralists unpack each arithmetical sen-
tence, _φ_ , along the following lines:

```
Necessarily: if S is an ω -sequence, then φ holds in S
```
We must ask the modal structuralist how to understand the phrase ‘ _S_ is an _ω_ -
sequence’. And, just like Shapiro, at this point Hellman himself explicitly explains
the use of this phrase via full second-order logic and Dedekind’s Categoricity Theo-
rem 7.3.^31 Once again, our point is just this: Hellman cannot do so whilst remaining
a _moderate_.
These observations are, perhaps, to be expected. To end the chapter, though, we
shall show how certain versions of _formalism_ can run into an unanswerable Doxo-
logical Challenge. This will take longer to explain. But it is time well spent, since
formalism is sometimes (mistakenly) thought to provide an _escape_ from the kinds
of problems that we have discussed in this chapter.^32
Consider a kind of formalist who wants to emphasise the ‘formal’ part of ‘for-
malism’. More specifically, she conceives of mathematics in terms of _formal proofs
from formal theories_. Just as we asked a modal structuralist to unpack the phrase ‘ _S_
is an _ω_ -sequence’, we should ask the formalist to unpack the phrase ‘ _π_ is a formal
proof from a formal theory’. In some (perhaps naïve) sense of the word ‘concept’,
it involves _deploying_ a specific concept, and so we should ask: _How do we pin down
the concept of a formal proof from a formal theory?_
To make matters tangible, suppose that our formalist wants (at some point) to
talk about formal proofs from the theory PA. Since there are infinitely many formal
PA-proofs, they do not exist in any concrete form. So, in speaking of ‘the formal
PA-proofs’, our formalist character must be speaking of an abstract type. Well then:
_How do we pin down that type?_
An _im_ moderate formalist might answer that some (limited) faculty of mathe-
matical intuition allows her to grasp the notions which are invoked in specifying
this abstract type. (In particular, she will probably invoke concepts like _recursively
specifiable_ and _arbitrary but finite_ .)^33 But _moderate_ formalists will have to tell a differ-

(^30) See references in earlier footnotes, and Shapiro (1997: 133).
(^31) Hellman (1989: 18ff, 1996: 105ff, 2001: 188ff, 2005: 552ff).
(^32) See for example Klenk (1976: 485–7).
(^33) Hilbert’s own brand of formalism was rather _immoderate_ , since he maintained that intuition supplied
our concept _finite_. For discussion, see e.g. Detlefsen (1986: 16–22) and Potter (2000: 228–32).


166 categoricity and the natural numbers

ent story. Indeed, moderate formalists will surely have to say that we pin down the
type ‘by description’ (cf. §7.1). So, in particular, they might _axiomatise_ the theory of
PA-provability, by fully regimenting the contents of §1.a and §1.c within a theory of
_syntax_ , _S_ , whose ‘objects’ of _S_ are _strings_ (i.e. formal sentences and formal proofs.)^34
Now, no particular theory has the status of _the_ theory of syntax, in the way that
Peano Arithmetic has the status of _the_ theory of arithmetic. Nonetheless, ever since
Gödel taught us how to arithmetise syntax, we have known how to treat syntax
arithmetically, within PA. (We mentioned Gödel’s arithmetisation of syntax in
§§5.5 and 5.a.) As such, we can innocuously assume that some suitable extension
of PA will _interpret S_ (in the sense of ‘interprets’ defined in Definition 5.7).^35 Call
that extension _T_.
A problem now looms into view. We know that _T_ has non-standard models (or
non-standard Henkin models, if _T_ is second-order). Invoking interpretability, there
are therefore non-standard models of the formalist’s theory of syntax, _S_. And these
give rise to what we might call _non-standard formal_ PA _-proofs_.
To bring this out, consider Con(PA), the arithmetised sentence which intu-
itively states that PA is consistent. Unpacked slightly, this sentence has the form
∀ _x_ ¬PrfPA( _x_ ,⌜⌝), telling us that no natural number codes a formal PA-proof of
some canonical contradiction. But since PA+ ¬Con(PA)is consistent, the Com-
pleteness Theorem 4.24 entails that it has a non-standard model, _M_ , with a non-
standard element _c_ such that _M_ ⊧PrfPA( _c_ ,⌜⌝). Since _T_ interprets _S_ , there are
non-standard models of _S_. And these will contain a non-standard ‘sequence of sen-
tences’ which constitute a ‘non-standard proof’ of the _inconsistency_ of PA.
And so we have a problem. _If_ it is a doxologically open question, which notion
of ‘formal PA-proof’ our formalist picks out using her theory _S_ , _then_ it is a doxolog-
ically open question, whether PA is consistent. And that seems absurd.
(We should perhaps emphasise, though, that this issue is doxological rather than
epistemological. The worry is not that we might some day _discover_ a concrete PA-
proof of absurdity. The worry is even more mind-boggling: it is that we might have
somehow acquired a _non-standard_ concept of _formal proof,_ according to which PA
counts as ‘inconsistent’.)
To rule this out, of course, our formalist character will need to tell us why the
‘non-standard proofs’ in the non-standard model of _S_ are not _really_ proofs. In some
sense, the problem is clear enough: they are infinitary objects, corresponding to
non-standard numbers, rather than finitary ones. But, in order for her to say this,
she must pin down the concept _finite_ , or, equivalently, the concept _ω-sequence_.^36

(^34) See Quine (1946: 105) and Corcoran et al. (1974).
(^35) Note that we have discussed interpretation of _theories_ , rather than of _structures_ , since we are here
tackling a version of formalism.
(^36) Cf. Weir’s (2010: 240) remark that ‘many abbreviatory concrete realizations of IPA depend on prior
grasp of finitary arithmetic’.


```
7.12. two simple problems for modelists 167
```
She needs, it seems, to pin down the standard models of the arithmetical theory _T_
which interprets her theory _S_. But now she has run slap-bang into the problems
facing concepts-modelism.
Some versions of formalism, then, are untenable, for just the reasons that mod-
erate concepts-modelism is untenable. But all of the caveats of §7.8 apply to this
point. In particular: it does not follow that _no_ version of formalism is tenable. For a
start, formalists might reject moderation. Equally, formalists might deny that _formal_
proofs are especially important, and so duck the entire problem. Finally, formalists
might reject concepts-modelism, and deny that the concepts she is trying to articu-
late in _S_ are as fine-grained as a model-theorist’s isomorphism types. Maybe there
are other problems waiting down the line for these alternative versions of formal-
ism. But our point is simple: formalism _alone_ offers no guarantee of escaping the
doxological problems discussed in this chapter.

### 7.12 Two simple problems for modelists

At its heart, this chapter contains only two simple ideas.
First: moderate modelists must attempt to pin down an isomorphism type by
providing a _description_ of that isomorphism type. But the description cannot be
presented in first-order logic. For first-order logic is too weak to allow for a categor-
ical theory of arithmetic. More generally, no compact logic allows for a categorical
theory of arithmetic. And so no logic with a finitary deductive system allows for a
categorical theory of arithmetic.
Second: logics which are strong enough to provide categorical theories of arith-
metic must be articulated semantically. And the semantic concepts involved in
specifying such logics are just as mathematical as those required in grasping arith-
metic. Consequently, it is at least as difficult for moderates to explain how we can
pin down those concepts, as it is for them to explain how we can pick out the iso-
morphism type of an _ω_ -sequence.
In sum: moderate modelism is untenable. It is brought down by the Modelist’s
Doxological Challenge. And the significance of this point is straightforward: either
we must abandon moderation, and embrace the idea that we have something like
a faculty of mathematical intuition; or we must abandon any version of modelism.
That is quite some choice to make.

### 7.a Proof of the Löwenheim–Skolem Theorem

In this appendix, we prove the Löwenheim–Skolem Theorem 7.2. We start with a
helpful lemma. Recall that the notation⪯for elementary extensions was set out in


168 categoricity and the natural numbers

Definition 4.3, and that the notion of a substructure was set out in Definition 3.7.

Lemma7.4(Tarski–Vaught Test): _Let M and N be_ L _-structures, with M a substruc-
ture of N. Then the following are equivalent:_

```
(1)M ⪯ N
(2)for any L -formula φ ( v , x ) and anya from M, if N ⊧∃ xφ ( a , x ) then there
is b ∈ M such that N ⊧ φ ( a , b )
```
_Proof.(1)_ ⇒ _(2)._ Suppose _N_ ⊧∃ _xφ_ ( _a_ , _x_ ), with _a_ from _M_. Then by elementarity,
_M_ ⊧∃ _xφ_ ( _a_ , _x_ ). Choose a witness _b_ from _M_ with _M_ ⊧ _φ_ ( _a_ , _b_ ). By elementarity
again, _N_ ⊧ _φ_ ( _a_ , _b_ ).
_(2)_ ⇒ _(1)._ We aim to show that _M_ ⊧ _φ_ ( _a_ )iff _N_ ⊧ _φ_ ( _a_ )for all _a_ from _M_ and all
L-formulas _φ_. This is by induction on complexity. For atomic formulas, the proof
is just like Theorem 2.3 (1)⇒(2), replacing the isomorphism with the identity map.
In particular, we first prove that _tM_ ( _a_ )= _tN_ ( _a_ )for every term and every _a_ from _M_ ,
and the rest is easy. For conjunctions and negations, the proof is just like Theorem
2.3 (2)⇒(3). Finally, for existentials:

```
M ⊧∃ xφ ( a , x )iff M ⊧ φ ( a , b )for some b ∈ M
iff N ⊧ φ ( a , b )for some b ∈ M
iff N ⊧∃ xφ ( a , x )
```
The second biconditional holds by the induction hypothesis, while the non-trivial
direction of the third biconditional holds by (2).

Armed with this, we can prove the Löwenheim–Skolem Theorem.

Theorem(Löwenheim–Skolem Theorem 7.2): _Let M be an infinite_ L _-structure:_

```
(1)For any A ⊆ M, there is an L -structure H such that H ⪯ M, and A ⊆ H,
and ∣ H ∣≤max(∣ A ∣,∣L∣,א 0 ).
(2)For any cardinal κ ≥max(∣ M ∣,L) , there is an L -structure N such that
M ⪯ N and ∣ N ∣= κ
```
_Proof.(1)._ The strategy is to begin with _A_ , and then sequentially add witnesses for
existentially quantified claims in _M_. Having done this infinitely often, we can lean
upon the fact that any formula of first-order logic is only finitely long, and invoke
the Tarski-Vaught test (Lemma 7.4). Here is the detail. Where⊲is a well-ordering
on _M_ (given by the Axiom of Choice as laid down in §1.b), we define:


```
7.a. proof of the löwenheim–skolem theorem 169
```
#### H 0 = A

```
Hm + 1 = Hm ∪{ b ∈ M : M ⊧ φ ( a , b )for someL-formula φ and some a ∈ Hnm ,
where for all d ∈ M , if M ⊧ φ ( a , d )then b ⊴ d }
H =⋃
m < ω
```
```
Hm
```
It is clear that∣ _H_ ∣ ≤max(∣ _A_ ∣,∣L∣,א 0 ), since we only added max(∣ _A_ ∣,∣L∣,א 0 )-
many new elements at each stage of the construction and there are only _ω_ -many
stages. We now define anL-structure _H_ , with domain _H_ , with the following
clauses for eachL-constant symbol _c_ , each _n_ -placeL-relation symbol _R_ , and each
_n_ -placeL-function symbol _f_ :

```
cH = cM
RH = RM ∩ Hn
fH = fM ∣ Hn
```
We should note why _fH_ : _Hn_ Ð→ _H_. If _a_ ∈ _Hn_ , then both _a_ ∈ _Hnm_ for some
(least) _m_ and _M_ ⊧∃ _x f_ ( _a_ )= _x_. Since this _x_ is unique and indeed identical to
_fH_ ( _a_ )= _fM_ ( _a_ ), we have that _fH_ ( _a_ )∈ _Hm_ + 1 , by construction.
To show that _H_ ⪯ _M_ , we invoke the Tarski–Vaught Lemma 7.4. Let _φ_ ( _v_ , _x_ )be
anL-formula, let _a_ ∈ _Hn_ , and suppose _M_ ⊧∃ _xφ_ ( _a_ , _x_ ). As before, there is some
(least) _m_ such that _a_ ∈ _Hnm_ , and so some _b_ ∈ _Hm_ + 1 ⊆ _H_ such that _M_ ⊧ _φ_ ( _a_ , _b_ ).
Hence _H_ ⪯ _M_.
_(2)._ Let _c_ 1 , ..., _cα_ , ... be a sequence of _κ_ -many constant symbols, none of which
are inL( _M_ ), and consider the theory

```
T :={ φ is anL( M )-sentence : M ○⊧ φ }∪{ cα ≠ cβ : α < β < κ }
```
(BothL( _M_ )and _M_ ○are defined in Definition 1.5.) Let _T_ 0 be any finite sub-theory
of _T_. Since _M_ is infinite, _T_ 0 has a model which results from interpreting the finitely
many new constants _cα_ as standing for distinct elements in _M_ ○. So by the Com-
pactness Theorem 4.1, _T_ has a model _N_ of size at least _κ_. By (1), we can assume its
size is _exactly κ_ , and by a Push-Through Construction, we obtain that _M_ ⪯ _N_.



