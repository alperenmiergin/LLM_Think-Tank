**Kaynak:** [[00_Context/0_Button-Walsh_Philosophy_and_model_theory/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

## 8 Categoricity and the sets

In Chapter 7, we focussed on arithmetic. We now turn our attention to set theory.
From the outset of this book, we have approached model theory set-theoretically.
So, in considering the model theory of _set theory itself_ , we can consider the extent to
which a model of set theory aligns with our set-theoretic metatheory. This leads to
some subtle differences—both technical and philosophical—between discussions
of the ‘intended interpretation’ of arithmetic and of set theory. Nonetheless, many
of the philosophical upshots are similar to those of Chapter 7.
As in Chapter 7, we will start by discussing the barrier to any kind of categoricity
imposed by Compactness and the Löwenheim–Skolem Theorem. We then present
Zermelo’s _Quasi_ -Categoricity Theorem for ZFC 2 and survey philosophical reac-
tions to it, noting the parallels between arithmetic and set theory as we go.
The chapter ends with some lengthy technical appendices. In §8.a we prove Zer-
melo’s Theorem. We provide the result because, although it is often invoked by
philosophers of mathematics, we know of no reasonably self-contained treatment
of it. In §8.b we show how to build up a more minimal set theory, due to Scott and
Potter, and in §8.c we prove a quasi-categoricity theorem for this minimal theory.

### 8.1 Transitive models and inaccessibles

Throughout this chapter, we assume that all models are in the signature of set the-
ory, i.e. the signature whose only primitive is∈. We start with a brief technical
preamble concerning models of set theory. (Readers who are familiar with the tech-
nicalities should feel free to skim this section.) The notion of a _transitive_ model is
key to our discussion. Intuitively, a transitive model interprets set membership _cor-
rectly_ , so far as it interprets it at all. More precisely:

Definition 8.1: _A set is_ transitive _iff every element of it is also a subset of it. A model
M is_ transitive _iff both (i) its underlying domain, M, is a transitive set and (ii) if a_ , _b are
elements of M, then: a_ ∈ _b iff M_ ⊧ _a_ ∈ _b._^1

(^1) Other texts describe what we are calling transitive models simply as a pair( _M_ ,∈), or a pair( _M_ ,∈↾ _M_ ),
where _M_ is a transitive set. See Kunen (1980: 112, 141) and Jech (2003: 163).


172 categoricity and the sets

Perhaps the most important transitive sets are those which constitute the cumula-
tive hierarchy:^2

Definition 8.2: _The_ cumulative hierarchy _comprises the following sets, defined by
transfinite recursion:_

```
V 0 =∅ Vα + 1 =℘( Vα ) Vα =⋃
β < α
```
```
Vβif α is a limit ordinal
```
It is easy to prove by simultaneous induction on _α_ that: (i) each of these sets is
transitive; that (ii) if _α_ ≤ _β_ then _Vα_ ⊆ _Vβ_ ; and that (iii) the members of _Vα_ which
are ordinals are precisely the ordinals less than _α_.
The Axiom of Foundation implies that every set is a member of some element
of the cumulative hierarchy.^3 This allows us to define a _rank function_ from sets to
ordinals as follows: rank( _x_ )= _β_ iff _β_ is the least ordinal such that _x_ ∈ _Vβ_ + 1. So this
is a map from sets to ordinals which tracks when a set ‘first enters’ the hierarchy.^4
For reasons we explain below, some particularly important stages in the hierarchy
are associated with inaccessible cardinals.^5 These are defined as follows:

Definition 8.3: _A cardinal κ is_ regular _iff there is no α_ < _κ and function f_ : _α_ Ð→ _κ
whose image is unbounded in κ. A cardinal κ is_ inaccessible _iff: κ_ > _ω, and κ is regular,
and if λ_ < _κ then_ ∣℘( _λ_ )∣< _κ._

The basic idea behind regular cardinals is that they cannot be ‘approached from be-
low’. An equivalent characterisation is: _κ_ is regular iff the union of< _κ_ many sets,
each of cardinality< _κ_ , is itself of cardinality< _κ_.^6 Since cardinal exponentiation
may be defined by 2 _λ_ =∣℘( _λ_ )∣, the additional thought behind inaccessible cardi-
nals is just that they are closed under cardinal exponentiation.
The foundational interest of inaccessible cardinals is indicated by this result,
which we prove in §8.a:

Theorem 8.4: _A_ ⊧ZFC 2 _iff A_ ≅ _Vκfor some inaccessible κ._

(^2) See end of §1.b for a brief review of notation for, and elementary results about, ordinals.
(^3) In fact, against the other axioms of ZFC, Foundation is _equivalent_ to the claim that every set is a
member of some element of the cumulative hierarchy. See Kunen (1980: 101).
(^4) For more on the rank function, see Kunen (1980: 104) and Jech (2003: 68).
(^5) Sometimes what we are calling ‘inaccessible cardinals’ are called ‘strongly inaccessible cardinals’. The
relevant contrast is to ‘weakly inaccessible cardinals’ which are defined to be infinite regular cardinals _κ_
which satisfy the weaker condition that if _λ_ < _κ_ then _λ_ +< _κ_ , where _λ_ +denotes the least cardinal greater
than _λ_. We will not need the notion of ‘weakly inaccessible cardinal’, and so simply shorten ‘strongly inac-
cessible cardinal’ to ‘inaccessible cardinal’.
(^6) See Jech (2003: 32).


```
8.2. models of first-order set theory 173
```
The second-order theory ZFC 2 is set out in Definition 1.12, and the semantics here
are the _full_ semantics for second-order logic, rather than Henkin semantics (for the
differences, see §§1.10–1.11). So Theorem 8.4 states that, up to isomorphism, the
full models of ZFC 2 are exactly the inaccessible stages of the cumulative hierarchy.
Moreover, since ZFC 2 trivially entails the ordinary first-order theory ZFC, these
are also very natural models of ZFC.
With these technical points behind us, we turn to some of the philosophical is-
sues concerning models of set theory.

### 8.2 Models of first-order set theory

As in Chapter 7, we begin by considering barriers to the very idea of producing
anything like a categorical set theory. The classic contemporary reference for this
is Putnam’s famous ‘Models and Reality’.^7 In this, Putnam criticises a kind of mod-
erate objects-platonism about set theory. Very briefly put: using model theory,
he shows that there are unintended models of ZFC, and then challenges moderate
objects-platonists to explain how to can rule them out.

```
Refining the challenge
```
Putnam’s criticism of moderate objects-platonism is, though, an instance of some-
thing slightly more general, namely: it is a set-theoretical version of the Modelist’s
Doxological Challenge. The Challenge for objects-modelists is exactly as stated
above: they must explain how we can refer to particular models of set theory. But a
similar Challenge arises for concepts-modelists: they must explain why, for exam-
ple, some models of ZFC are very poor explications of our concept _uncountable set_ ,
or _ordinal_.
Having reframed Putnam’s argument as a Doxological Challenge, we can use
model theory to give the Challenge bite. As noted in §7.3, the Löwenheim–Skolem
Theorem 7.2 shows that every countable first-order theory with an infinite model
has models of every infinite size. In particular, then, ZFC, has models of every infi-
nite cardinality. And this is sufficient to run an argument just like that of Chapter 7
against the modelist, but focussing on set theory rather than arithmetic.
Equally, we can use the Compactness Theorem 4.1 to generate non-standard
models of any first-order set theory. In particular: in §1.b we defined the set-
theoretic operation _s_ and the sets∅and _ω_. Let _T_ be our favourite first-order set
theory, presumably some consistent extension of ZFC. Let _c_ be a new constant,
and define a new theory:

(^7) Putnam (1980).


174 categoricity and the sets

```
T ∗= T ∪{ c ∈ ω }∪{ sn (∅)∈ c : n < ω }
```
As in §4.1, every finite subset of _T_ ∗has a model; so _T_ ∗itself has a model. But the
interpretation of _c_ makes this model a poor explication of our concept _ordinal_ : in
effect, there are infinitely many things that the model thinks are members of _c_ , but
the model also thinks that _c_ is a finite von Neumann ordinal.
Putnam himself, though, attempted to use slightly different model-theoretic re-
sults than those we just mentioned. He attempted to apply the Skolem Hull Con-
struction, Theorem 7.2(1), to the set-theoretic universe _itself_.^8 This generates cer-
tain complications, which we explore for the rest of this section.

```
Gödelian considerations
```
The first complication is clear:^9 we _cannot_ apply the Skolem Hull Construction to
the set-theoretic universe itself. That result only applies to the notion of a _structure_
as formally defined in Definition 1.2, where the underlying domain of the structure
is a _set_. And the set-theoretic paradoxes dictate that there is no set of all sets. So the
set-theoretic universe should not be thought of as a _model_ of set theory, in the sense
of Definition 1.2, and Theorem 7.2(1) cannot be directly applied to it.
An obvious response to this difficulty would be to augment the theory ZFC, so
that it entails the existence of a (set-sized) model of ZFC.^10 We might do this by
adding ‘there is an inaccessible cardinal’ to ZFC. By the comments in §8.1, this
would be like adding to ZFC the claim ‘ZFC has a very natural model’. We could
then simply relativise Putnam’s argument to the initial segment of the cumulative
hierarchy, up to the first inaccessible, which is a model of ZFC by Theorem 8.4.
Since set-theorists often invoke inaccessible cardinals themselves, the move just
suggested on Putnam’s behalf does not seem _ad hoc_. Nevertheless, as Bays has
noted, it raises a dilemma for Putnam.^11 Where we use _φ_ to abbreviate the claim
‘there is an inaccessible cardinal’, Bays’ dilemma can be put as follows:

_Rejection.A modelist who accepts_ ZFC _has not yet incurred any commitment to_ ZFC+
_φ. So she can simply reject φ, and deny that there are any unintended models of_ ZFC_._

(^8) Putnam (1980). Putnam offered a further, more complicated, argument against a moderate objects-
platonist who is considering whether to accept the axiom of constructibility. For more on that argument,
see Putnam (1980: 466–70), Velleman (1998), Bays (2001, 2007), Bellotti (2005), and Button (2011).
Scowcroft (2012) rectifies some technical errors in Button (2011).
(^9) Here we follow Bays (2001: 335–6, 2007: 119–23) and Velleman (1998). Bays explains the problem
with the Skolem Hull Construction as follows: If it were legitimate to apply that Construction to the set-
theoretic universe itself, then one could prove in ZFC that there was a model of ZFC. Then, by the Com-
pleteness Theorem, one could prove Con(ZFC)in ZFC. So, by Gödel’s Second Incompleteness Theorem,
ZFC would be inconsistent.
(^10) See Bays (2001: 338, 2007: 123–124) and Bellotti (2005: 396).
(^11) Bays (2001: 340, 2007: 122). For a more general version of the dilemma, see Button (2011: 322–3).


```
8.2. models of first-order set theory 175
```
_Nonchalance.A modelist who accepts_ ZFC+ _φ can react with nonchalance to the (mere)
existence of unintended models of_ ZFC_. She would only care about the existence of un-
intended models of_ ZFC+ _φ, and Putnam has not (yet) shown that there are any such
models._

Both strategies seem to offer good ways for side-stepping the doxological problem
of dealing with unintended models of one’s favourite set theory.
To cut off the _Rejection_ horn, Putnam must weaken the auxiliary hypothesis, _φ_ ,
so that someone who accepts ZFC has no real option but to _accept_ ZFC+ _φ_. One
natural way to do this is to take _φ_ to be ‘ZFC is consistent’, abbreviated Con(ZFC);
after all, as mentioned in §5.6, there is a long tradition of thinking that acceptance of
a theory _T_ entails acceptance of Con( _T_ ).^12 Moreover, the hypothesis Con(ZFC)
will serve the purpose of providing an unintended model of set theory. After all, the
Completeness Theorem 4.24 shows that there is a countable model of ZFC.
In this case, though, _Nonchalance_ looks very plausible. By Gödel’s Second In-
completeness Theorem, we know that a model of _T_ need not be a model of Con( _T_ ).
So a moderate modelist who accepts _T_ +Con( _T_ )can briskly dismiss models of _T_
which are not also models of Con( _T_ );.
But matters now get complicated, since the preceding notion of _acceptance_ iter-
ates. The modelist who accepts _T_ +Con( _T_ )because she accepts _T_ is probably
also committed to Con( _T_ +Con( _T_ )). And with acceptance of this further theory,
Putnam can again produce an unintended model of _T_ +Con( _T_ ).
We are now set to embark on an infinite sequence of iterations. At any given
stage _β_ of this process, the modelist will attempt to opt for _Nonchalance_ , saying that
she would only care about the existence of unintended models of _Tβ_ +Con( _Tβ_ ).
Putnam will then point out that her acceptance of _this_ theory, call it _Tβ_ + 1 , commits
her to Con( _Tβ_ + 1 ), and he will then appeal to the Completeness Theorem to obtain
an unintended model of _Tβ_ + 1.
When an infinite regress arises, it is often hard to assess who wins. But the mod-
erate modelist is definitely the loser in this case.^13 Either the moderate modelist has
a _final_ set theory which she accepts and thinks is consistent, or she admits that she
_cannot_ provide such a set theory. In the first case, she must accept that her theory
has unintended, countable models. In the second case, she must also admit that
she cannot ‘pin down the sets’; for, as a moderate, she must accept that the only
possible route for pinning down the sets is through providing theories (see §7.1),
and she has just accepted that no particular theory is up to the job. So the moderate
modelist is damned either way.
However, two points have emerged during this discussion. First: we have aban-
doned Putnam’s attempt to use the Skolem Hull Construction 7.2(1) to turn a given

(^12) For references, see footnote 36 of Chapter 5.
(^13) For more on this regress, see Bays (2001: 126–7) and Button (2011: 329–33).


176 categoricity and the sets

_model_ of set theory into a countable model. Instead, we have presented a countable
model by applying the Completeness Theorem 4.24 to a first-order _theory_. Second:
once we focus on theories rather than models, nothing much depends upon the fact
that we are considering _set_ theory rather than any other theory. In sum: the case of
unintended models of set theory no longer seems very _distinctive_.

```
Transitive models and Skolem’s Paradox
```
We now consider a second issue, which is more specific to models of set theory.
When we discussed unintended models of arithmetic in §7.10, we considered
the idea that the intended model of arithmetic should have _computable_ addition
and multiplication functions (see option (g) of §7.10 and our comments on Ten-
nenbaum’s Theorem). We might want to consider a similar idea in the case of set
theory. In particular, it is reasonably common to insist that the intended model of
set theory should be _transitive_ , in the sense of Definition 8.1.^14 And, if it is legiti-
mate to insist upon transitivity, this will undercut any attempt to generate a count-
able model using simply the Skolem Hull Construction 7.2(1) or the Completeness
Theorem, since neither Theorem is guaranteed to produce transitive models.
Towards the end of this subsection, we shall consider whether it _is_ legitimate to
insist on transitivity. First, we note a basic result in the model theory of set theory
which can restore transitivity. To state the result, we need some definitions.

Definition8.5: _Let A be a structure. Then A is_ extensional _iff it satisfies the Extension-
ality axiom. And A is_ well-founded _iff there are no infinite descending_ ∈ _A-chains in A,
i.e., there is no sequence anfrom A indexed by natural numbers n_ ≥ 0 _(in the metatheory)
such that A_ ⊧ _an_ + 1 ∈ _anfor all n_ ≥ 0_._

Using this, terminology we can state Mostowski’s Collapse Lemma (we leave its
proof to §8.a):^15

Lemma8.6(Mostowksi Collapse): _Any well-founded, extensional structure is isomor-
phic to a transitive structure._

The following simple Corollary illustrates the scope and limits of Mostowski’s
Lemma. (The notations⪯and≡are set out in Definitions 4.3 and 2.4):^16

(^14) This suggestion was made by Tarski (quoted in Skolem 1970: 638); see also Benacerraf (1985: 101–4)
and Wright (1985: 118).
(^15) See Mostowski (1969: 20–1), Kunen (1980: 106), and Jech (2003: 69). There is also a more general
version of the Mostowski’s Collapse Lemma which applies to classes, and in these renditions of the Lemma,
there will be a further condition that the interpretation of the membership relation is ‘set-like’.
(^16) See Mostowski (1969: Theoremiii .3.8 p.43), McIntosh (1979: 321–2), and Button (2011: 344–6).


```
8.2. models of first-order set theory 177
```
Corollary 8.7: _Let A be a transitive model of_ ZF_. Then there is a countable, transitive
model B such that A_ ≡ _B._

_Proof._ Let _A_ be a transitive model _A_ of ZF. Applying the Skolem Hull Construc-
tion 7.2(1), obtain a countable substructure _H_ ⪯ _A_. Since _A_ is transitive, by Defi-
nition 8.1 the membership relation on _A_ is just the usual membership relation, and
so it is has no infinite descending membership chains. And since _H_ ⪯ _A_ , we also
have that _H_ is well-founded. Further, _H_ is extensional since _H_ ⊧ZF and hence _H_
models the Extensionality Axiom. So Lemma 8.6 applies, and _H_ is isomorphic to a
transitive structure _B_. Since _B_ ≅ _H_ ⪯ _A_ , we have that _A_ ≡ _B_.

The model generated by this Corollary has some nice features. In particular: if _B_
is a countable, transitive model of ZF, then every element of _B_ is a countable set.
Now, because ZF proves ‘there is an uncountable set’, we have:

```
B ⊧∃ x ¬∃ y ( y is an enumeration of x )
```
Here, ‘ _y_ is an enumeration of _x_ ’ is an informal abbreviation for the usual set-
theoretic rendering of the idea that _y_ is a surjective function from _ω_ to _x_. Hence,
for some _a_ in _B_ ’s domain:

```
B ⊧¬∃ y ( y is an enumeration of a ) ( sko:big )
```
But because _B_ is both countable and transitive, every member of _B_ ’s domain is
countable. So in particular:

```
∃ y ( y is an enumeration of a ) ( sko:small )
```
This is perhaps the sharpest version of what is called _Skolem’s Paradox_. It is called
a ‘paradox’ because of the apparent tension between ( _sko:big_ ) and ( _sko:small_ ). But
the tension can be readily explained and dissolved. There is an enumeration of _a_.
However, this enumeration lies outside _B_ ’s domain, and so beyond the range of the
quantifier ‘∃ _y_ ’ as interpreted _within B_.^17 In a slogan: to be uncountable-according-
to- _B_ is not to be uncountable _simpliciter_. Paradox dissolved.
We shall, then, set aside Skolem’s Paradox, and simply return to the use of Corol-
lary 8.7 in attacking moderate modelism about set theory.
First, note that Corollary 8.7 has exactly the same drawbacks as the use of the
Skolem Hull Construction 7.2(1): it operates on a given _model_ to generate a new
model. As we noted when discussing Bays’ dilemma, the set-theoretic universe is

(^17) Because _A_ ⊧ZF is countable and transitive, ‘being an enumeration of’ is absolute in the sense of
Definition 8.11. So, it is the relativity of the quantifier, and not the relativity of the notion of an enumeration,
that does the work in this version of Skolem’s Paradox. For more on the mathematics of Skolem’s Paradox,
see Bays (2014: §2).


178 categoricity and the sets

not a _model_ , since there is no set of all sets. So whatever problems arose when con-
sidering the Skolem Hull Construction 7.2(1) also arise when using Corollary 8.7.
Second, the countable transitive model _B_ obtained by Corollary 8.7 is _not_ a set
of the form _Vα_ , in the sense of Definition 8.2.^18 But, if it makes sense to insist that
models of set theory must be _transitive_ —which is to say that they must interpret
membership in the same way as the metatheory—it is only a small further step to
insist that a model of set theory must be a stage of the iterative hierarchy.
All of this suggests the following: _if_ it is legitimate to insist that the intended
interpretation must make membership transitive, _then_ it is very hard to attack mod-
erate modelism about set theory via results from model theory. However, we must
emphasise the conditional nature of this point. In §7.10, we argued that moderate
modelists will succumb to the just-more-theory manoeuvre if they try to insist that
the intended model of arithmetic should be _computable_ (for example). A similar
fate will befall moderate modelists who insist that models of set theory should be
_transitive_.
Ultimately, to insist on transitivity amounts to insisting that we are _really_ picking
out set-membership, and not something which merely looks and quacks like set-
membership from a first-order perspective. Given the sheer abstractness of sets,
we can—as usual—ask the moderate modelist how her set-theoretic language suc-
ceeds in picking out the _actual_ set-membership relation. And, just as before, model
theory can be used to apply pressure. At the start of this section, we showed how
to generate non-standard models of any consistent first-order set theory using the
Compactness Theorem 4.1. Such models are not well-founded, and so they are not
transitive; but nothing expressible in first-order logic rules them out.
The upshot of all of this is as follows. The best attacks on moderate modelism
about set theory involve first using the just-more-theory manoeuvre to block (e.g.)
appeals to transitivity, and then appealing to the same kinds of elementary model-
theoretic results as we invoked in Chapter 7. So, at this point, there is very little
about the attack that is specific to _set theory_. Much as in the case of arithmetic, the
point is _merely_ this: first-order theories with infinite models cannot be categorical,
and attempts to go beyond first-order logic inevitably look like just more mathe-
matical theorising.

### 8.3 Zermelo’s Quasi-Categoricity Theorem

In the setting of arithmetic in the last chapter, we considered Dedekind’s Categoric-
ity Theorem 7.3 for the second-order theory PA 2. Similarly, in the case of set theory,

(^18) To see this, note that _B_ ≠ _Vα_ for any _α_ > _ω_ , since these are all _uncountable_ ; and _B_ ≠ _Vα_ for any
_α_ ≤ _ω_ , since none of these model the Axiom of Infinity. For more, see the proof of Lemma 8.16.


```
8.4. attitudes towards full second-order logic: redux 179
```
we shall consider Zermelo’s Quasi-Categoricity Theorem for the second-order the-
ory ZFC 2. Roughly put, Zermelo’s Theorem states that any two models of ZFC 2
are either isomorphic, or one is isomorphic to an initial segment of the other. But
we must state this result precisely.
As in Definition 8.2, the cumulative hierarchy is defined by transfinite recursion.
Transfinite recursion can be carried out in any model of ZFC. So, where _A_ is a
model of ZFC, we can define the entity which _A_ thinks is the cumulative hierarchy.
Slightly more precisely, we define a sequence of elements _VAa_ , where _a_ ranges over
the elements of _A_ which _A_ thinks are ordinals. (Note: this somewhat cute talk,
about what a model ‘thinks’, abbreviates something perfectly well defined. When
we say, for example, that _A_ ‘thinks that _a_ is an ordinal’, we mean that _a_ is an element
of _A_ which satisfies the formalisation of the predicate ‘ _v_ is an ordinal’ in _A_ .)
For each model _A_ of ZFC, we can now naturally treat _VAa_ as a set-theoretic struc-
ture itself. Intuitively, the structure is given just by looking inside _A_ for what is
in _A_ ’s cumulative hierarchy up to level _a_ , and then restricting _A_ ’s membership re-
lation to these entities. More precisely, _VAa_ ’s domain is _Aa_ ={ _b_ ∈ _A_ : _A_ ⊧ _b_ ∈ _Va_ }
and the membership symbol is interpreted by{( _d_ , _e_ )∈ _Aa_ × _Aa_ : _A_ ⊧ _d_ ∈ _e_ }. To
ease readability, we simply denote this structure by _VAa_ as well.
We can now state Zermelo’s Theorem, leaving its proof to §8.a:^19

Theorem8.8(Zermelo’s Quasi-Categoricity Theorem): _Let A and B be full models
of_ ZFC 2_. Then exactly one of the following obtains:_

```
(1) A ≅ B
(2) A ≅ VBa, for some a which B thinks is an inaccessible cardinal
(3) B ≅ VAa, for some a which A thinks is an inaccessible cardinal
```
### 8.4 Attitudes towards full second-order logic: redux

In §7.6, we noted that Dedekind’s Categoricity Theorem 7.3 for PA 2 is unimpeach-
able, as a bit of pure mathematics, but that several different basic philosophical atti-
tudes can be adopted in response to it: the Algebraic, Logic-First, Infer-to-Stronger

(^19) This essentially rolls together Zermelo’s First and Second Isomorphism Theorems (1930: §4), with
two differences. First: Zermelo’s results were formulated so as to allow for _urelements_ , whereas we have
considered only _pure_ sets. (We explain the use of urelements slightly more in Chapter 11.) Second: we
have added to clauses (2) and (3) the claim that the larger model ‘thinks _a_ is an inaccessible cardinal’; this
extension is useful in §8.5.
Zermelo was interested in this Theorem since it allows us to conceive of the models of ZFC 2 as a lin-
ear hierarchy. (This is also a consequence of Theorem 8.4, from which we deduce Theorem 8.8 in §8.a.)
Zermelo thought that this gave a compelling answer to the set-theoretic paradoxes, since what is a second-
order object at one level becomes a first-level object at a higher level. This is at least one natural way to
read the complex passage in Zermelo about the ‘ultrafinite antinomies’ (see Zermelo 1930: 47, 2010: 429;
Ewald 1996: v.2 p.1233).


180 categoricity and the sets

Logic, and Holistic Attitudes. Exactly the same point applies to Zermelo’s Theorem
8.8, and there are representatives of each of these four attitudes.
_The Logic-First Attitude_. In 1963, Cohen announced his proof of the indepen-
dence of the continuum hypothesis, CH, from first-order ZFC.^20 An explosion of
set-theoretic independence results soon followed. Against this background, Kreisel
drew attention to Zermelo’s Theorem 8.8, arguing that CH has a determinate truth
value, despite its independence from ZFC. His reasoning was as follows: since CH
only concerns sets of low rank, it is either true in all full models of ZFC 2 or false
in all full models of ZFC 2 , and hence either true or false _simpliciter_ (and not inde-
terminate) on the supervaluational semantics explained in §2.5 and §7.3.^21 Kreisel,
then, assumed that he _had_ unproblematic access to full second-order logic. His was
the Logic-First Attitude.
_The Algebraic Attitude._ Like Kreisel, and indeed contemporaneously, Mostowski
was interested in the philosophical implications of set-theoretic independence re-
sults. Mostowski, however, drew a rather different conclusion than Kreisel:

[...] the incompleteness of set-theory [...] is comparable [...] to the incompleteness of
group theory or of similar algebraic theories. These theories are incomplete because we
formulated their axioms with the intention that they admit many non-isomorphic models.
In [the] case of set-theory we did not have this intention but the results are just the same.^22

In short, Mostowski argued that the independence results concerning ZFC had
shown that set theory itself is _algebraic_ , in the sense of §2.2, that it has no intended
model. So, in contrast with Kreisel, Mostowski adopted a similarly algebraic atti-
tude towards second-order logic; an attitude that was inevitable, given his claim that
second-order logic ‘is a part of set theory’.^23 Hamkins has more recently espoused
the same attitude: on the basis that ‘[s]et theory appears to have discovered an en-
tire cosmos of set-theoretic universes’, he holds that Zermelo’s Theorem 8.8 simply
reveals that the idea of ‘full’ second-order quantification is exactly as indeterminate
as the sets themselves.^24 This is precisely the Algebraic Attitude.
_The Infer-to-Stronger Logic Attitude._ In fact, immediately after expressing his view
that set theory is algebraic, Mostowski voiced a potential concern:

[...] if there are a multitude of set-theories then none of them can claim the central place
in mathematics. Only their common part could claim such a position; but it is debatable

(^20) Cohen (1963, 1964). That is, ZFC⊬CH and ZFC⊬¬CH, where CH is the statement that there
are no cardinals strictly betweenא 0 and 2 א^0.
(^21) See Kreisel (1967: 150). Kreisel later revealed slightly more of his attitude towards this result: ‘CH
_is_ decided by the full (second order) axioms of Zermelo; by the above this is already something although
we don’t know which way [CH is decided ...]. Our _present_ analysis of Zermelo’s axioms, that is the first
order schemata in the usual language of set theory, is not sufficient to decide CH. Put succinctly: not the
notion of set, but our analysis (present knowledge) of this notion is at fault’ (1971: 196).
(^22) Mostowski (1967: 94).
(^23) Mostowski (1967: 107).
(^24) Hamkins (2012: 418, 427–8).


```
8.4. attitudes towards full second-order logic: redux 181
```
whether this common part will contain all the axioms needed for a reduction of mathe-
matics to set-theory.^25

This suggests why independence in set theory might be more philosophically trou-
bling than independence in more obviously algebraic theories (such as group the-
ory): it might threaten the frequently stated idea that all of mathematics can be rep-
resented within the sets.^26 And so one might contrapose Mostowski’s reasoning: If
the image of set theory as foundational is thought to be sufficiently central to our
conception of mathematics, and if additionally that image is genuinely threatened
by regarding set theory as algebraic, then we might be able to mount an ‘inference
to the best explanation’, that we can grasp full second-order logic. That is the Infer-
To-Stronger Logic Attitude.
_The Holistic Attitude._ The final attitude is simply that there is a false dichotomy
between set theory and higher-order logic. This is precisely the attitude recently
expressed by Shapiro:

[...] second-order logical consequence _is_ intimately bound up with set theory [...]. But
that does not disqualify second-order logic from logical and foundational studies. Math-
ematics and logic are a seamless whole, and it is impossible to draw a sharp boundary
between them.^27

All told, then, all four philosophical reactions to a (quasi-)categoricity result are on
display. Which are genuinely _available_ to you, though, will depend on your starting
philosophical assumptions.
In particular, and exactly as in Chapter 7, the moderate modelist about set theory
will want to embrace something other than the Algebraic Attitude. She will want to
do so, since she can only hope to answer the Modelist’s Doxological Challenge, in
the specific case of set theory, by supplying a (quasi-)categorical theory (see §§7.1–
7.2). So she will want to appeal to Zermelo’s Theorem 8.8 to answer the Challenge.
And to do that, she must insist that she has an unproblematic grasp of full second-
order logic. But, exactly as in §7.7, her _moderation_ will prevent her from being able
to say why _full_ models of ZFC 2 are preferable to _Henkin_ models of ZFC 2. As such,
she will be unable to make anything positive out of Zermelo’s Theorem 8.8.
At this point, the moderate modelist might well protest. In response, we would
re-run all of the arguments of Chapter 7, occasionally replacing the phrase ‘arith-
metic’ with ‘set theory’. Flogging this dead horse would, though, be exhausting and

(^25) Mostowski (1967: 94–5) and G. H. Moore (1982: 4).
(^26) There is obviously much more one could say about Mostowski’s concern that the common part may
be too meagre for reductive purposes. For example: the notion of ‘reduction’ which Mostowski has in mind
would be most naturally explicated via the notion of _interpretability_ from Chapter 5. However, Koellner
(2009: 99) points out that _both_ ZFC+CH and ZFC+¬CH are reducible to ZFC in this sense. Hence, the
‘core’ might well be less meagre than Mostowski had feared.
(^27) Shapiro (2012: 312).


182 categoricity and the sets

unilluminating. So we shall pass over the corpse of moderate modelism without
further ado.

### 8.5 Axiomatising the iterative process

Once we have set aside moderate modelism, though, two philosophical reactions
that _are_ distinctive to the case of set theory can emerge. These reactions are due to
Martin and Isaacson, and they raise the interesting question: _What does set theory
axiomatise?_ We discuss Martin here, and Isaacson in the next section.
According to the _iterative conception of set_ , sets are ‘constructed’ iteratively in a
transfinite process of set formation, much as is suggested by the cumulative hier-
archy of Definition 8.2. Martin explicitly holds that ZFC ‘should be thought of as
an attempt to axiomatise the iterative concept’.^28 In this light, Martin views Zer-
melo’s Quasi-Categoricity Theorem 8.8 as showing that any two implementations
of the iterative conception of set will end up generating isomorphic structures (as
far as they go). As a result, and as in the discussion of the Logic-First Attitude in
§8.4, any two such implementations will agree on the truth-value of ‘low level’ state-
ments such as CH.^29
Martin is a modelist about the iterative conception of sets. So, for familiar rea-
sons, Martin cannot appeal to Zermelo’s Theorem 8.8 whilst remaining a moder-
ate. However, for those who are prepared to abandon moderate modelism, nothing
obviously prohibits the appeal to full second-order logic in general and Zermelo’s
Theorem 8.8 in particular.
The more interesting (because more specific) issue for Martin is that, in con-
sidering the iterative conception of set, one might object to the use of second-order
logic _even in_ the object language. As Reinhardt once put it, anyone who uses second-
order logic just seems to have ‘forgotten’ to add a level of sets:

[...] our idea of set comes from the cumulative hierarchy, so if you are going to add a layer
at the top it looks like you just forgot to finish the hierarchy.^30

Given Martin’s invocation of the iterative conception of set, we can reformulate
Reinhardt’s complaint as follows. On the one hand, the idea of the iterative concep-
tion is that properties at one stage are transformed into sets at a subsequent stage.
On the other hand, the use of a second-order theory seems to involve postulating
a fixed class of properties that are never transformed into sets. This gives rise to a
clear tension.

(^28) Martin (1970: 112).
(^29) Martin (2001, 2015). See §11.b for further discussion of Martin’s views.
(^30) Reinhardt (1974: 196), cf. Burgess (1985: 546). Note that Reinhardt raised this concern, not in the
context of Zermelo’s Theorem, but in the context of his own use of higher-order logic to extend the standard
set-theoretic axioms via reflection principles.


```
8.5. axiomatising the iterative process 183
```
In response, Martin might maintain that ZFC 2 simply aims to axiomatise an _ar-
bitrary stage_ in the iterative process. This would involve replying to Reinhardt as
follows: _we did not forget to finish the hierarchy; it is just that the second-order entities
in one model of_ ZFC 2 _will become first-order entities in a model of_ ZFC 2 _which occurs
later in the process_. The basic idea is reasonable, but ZFC 2 itself is poorly suited to
the task of axiomatising an _arbitrary_ stage in the process of set formation. After all,
plenty of typical stages, like _Vω_ + 2 , _Vω_ + 3 , _Vω_ + 3 , ..., are not models of ZFC 2 , for they
do not even satisfy the Power Set axiom.
For this reason, we suggest that Martin should move away from ZFC 2 and con-
sider an alternative axiomatic set theory, namely second-order _Scott–Potter_ level
theory, SP 2. This theory is neither as well known as ZFC 2 nor as well known as
it should be, so we must start by setting it down. Our axiomatisation is essentially
due to Potter, who built on work by Scott.^31 However, their theories are first-order,
and so we have tweaked the axiomatisation slightly (we explain the tweaks at the
end of §8.b; we defined the notation(∃ _x_ : _X_ )and(∀ _x_ : _X_ )in §1.9).

Definition 8.9: _We define three formulas:_^32

```
A ( x , y ):=∀ v ( v ∈ x ↔(∃ u ∈ y )( v ∈ u ∨ v ⊆ u ))
H ( x ):=(∀ z ∈ x ) A ( z , x ∩ z )
L ( x ):=(∃ y : H ) A ( x , y )
```
_The theory_ SP 2 _then consists of just two axioms:
Extensionality._ ∀ _x_ ∀ _y_ (∀ _z_ [ _z_ ∈ _x_ ↔ _z_ ∈ _y_ ]→ _x_ = _y_ )
_Levelling._ ∀ _X_ [∃ _x_ ∀ _z_ ( _z_ ∈ _x_ ↔ _X_ ( _z_ ))↔(∃ _y_ : _L_ )(∀ _z_ : _X_ ) _z_ ∈ _y_ ]

We read _A_ ( _x_ , _y_ )as _x is the accumulation of y_ , _H_ ( _x_ )as _x is a history_ , and _L_ ( _x_ )as _x is
a level_. The distinctive axiom, Levelling, can then be glossed as follows: _A property
determines a set iff all of its instances are members of some level_. Stated like this, SP 2
offers an extremely minimal axiomatisation of the _very idea_ of the iterative concep-
tion of sets. In particular, and unlike ZFC 2 , it makes no comment on ‘how far’ the
iterative process goes: there is no axiom of infinity, axiom of powersets, or anything
similar, in SP 2.
That said, simply staring at the definition of _L_ ( _x_ )gives little clue as to why SP 2
has much to do with the iterative conception of sets. In §8.b, we run through some

(^31) Scott (1974) and Potter (2004). This approach improves on the Boolos–Schoenfield stage axioms,
since that uses two primitive notions, for set-membership and rank (Shoenfield 1967; Boolos 1971). Those
stage axioms were partly anticipated by Scott (1960) himself. Potter (1993: 183) credits John Derrick with
the trick which enables the deletion of a rank-primitive.
(^32) _Note:_ the use of ‘∩’ in defining _H_ is for readability and to highlight a conceptual connection; but
‘ _u_ ∈ _x_ ∩ _z_ ’ can simply be read as ‘ _u_ ∈ _x_ ∧ _u_ ∈ _z_ ’ and can easily be eliminated from the definition.


184 categoricity and the sets

deductive theorems of SP 2 which provide a better sense of how _L_ ( _x_ )behaves; but
here we will simply state a key result (which we prove in §8.c):^33

Theorem8.10(SP 2 Quasi-Categoricity): _A_ ⊧SP 2 _iff A_ ≅ _Vαfor some ordinal α_ > 0

Indeed, the stages of the cumulative hierarchy of Definition 8.2 are precisely what
SP 2 calls ‘levels’ (up to isomorphism; see Proposition 8.32(2)). So, unlike ZFC 2 ,
_the theory_ SP 2 _axiomatises the very idea of an arbitrary stage in the iterative process of
set-formation._
As such, SP 2 seems better suited than ZFC 2 to Martin’s philosophical purposes.
Moreover, assuming the legitimacy of full second-order logic, SP 2 can still be used
in the manner suggested by Martin (and Kreisel). For, whilst there are models of
SP 2 which are too small to comment on CH, all of the models of SP 2 that allow the
iterative process to go on for sufficiently long will agree about CH. For instance: all
models isomorphic to _Vα_ for some _α_ ≥ _ω_ +1 decide CH;^34 and if we specifically
want to restrict our attention to these models, we can simply augment SP 2 with a
sentence stating that there is an _ω_ + 1 th-level. So Martin could happily invoke SP 2 ,
rather than ZFC 2 , to argue that CH has a determinate truth value.

### 8.6 Isaacson and incomplete structure

We now consider Isaacson’s rather different attitude to Zermelo’s Theorem 8.8.
One of Isaacson’s basic ideas is that any consistent theory describes a ‘structure’.
However, he also thinks that the _categoricity_ of a theory determines ‘whether that
structure is general or particular’.^35 Now, Isaacson’s ‘particular structures’ are essen-
tially what we have been calling mathematical structures, informally construed. So,
in our terminology, Isaacson is suggesting that the existence of a consistent, categor-
ical theory is necessary and sufficient for the existence of a mathematical structure,
informally construed.
Zermelo’s Theorem 8.8, though, is a mere _quasi_ -categoricity result. It states that
any two (full) set hierarchies agree ‘as far as they go’, but it allows that one of them
may outstrip the other. So, if we had hoped to use Zermelo’s Theorem to explain

(^33) Potter (2004) does not explicitly state or prove this result, but the availability of the result is implicit
in the entire approach to axiomatising set theory in this way. The result is explicitly mentioned (though not
proved) by Incurvati (2010: 130). Tait (1998: 474–5) describes a different theory with the same property,
and suggests that it is ‘the natural system with which to begin’. Finally, it ought be mentioned that Uzquiano
(1999: §5) proves a categoricity result for _Vα_ where _α_ > _ω_ is a limit. Thanks to Luca Incurvati, Michael
Potter, and Dana Scott for discussions about this.
(^34) In this setting, we can formulate the continuum hypothesis as follows: if _X_ ⊆ 2 א (^0) and there is a
second-order injection _f_ :NÐ→ _X_ , then either there is a second-order injection _g_ : _X_ Ð→Nor there is
a second-order injection _g_ : 2א^0 Ð→ _X_. (Thanks to Hugh Woodin for suggesting this formulation over
something more cumbersome.)
(^35) Isaacson (2011: 32).


```
8.6. isaacson and incomplete structure 185
```
how we grasp _the_ set hierarchy—in the sense of a mathematical structure which is
unique-up-to-isomorphism—then we have a problem. Isaacson himself is aware of
this, and suggests the following response:

[...] what is undecided in virtue of this degree of non-categoricity is genuinely undecided,
in the same way that the fifth postulate of Euclid’s geometry is genuinely undecided by the
axioms. This includes GCH (or some version that survives the refutation of CH), and the
existence of large cardinals [...].^36

Hence, on Isaacson’s view, ZFC 2 does not aim to describe an arbitrary stage in an
absolutely infinite sequence (as it did in our discussion of Martin). Rather, it aims
to describe a ‘particular structure’ which is somehow ‘incomplete’.
To see why Isaacson might say this, note that some expansions of ZFC 2 are fully
categorical. For instance, for any natural number _n_ ≥0, the theory ZFC 2 plus ‘there
are exactly _n_ inaccessibles’ is categorical, given full second-order logic.^37 But for
anyone who thinks of ZFC 2 in terms of the iterative conception of set, these cat-
egorical theories seems to fall short of the mark. After all, a theory stating ‘there
are exactly _n_ inaccessibles’ seems only to characterise some _initial segment_ of the
iterative hierarchy.
More generally, no _fully_ categorical extension of ZFC 2 seems adequate to han-
dle the purportedly _all-encompassing_ nature of set theory. For, where _M_ is a model
of _T_ , its domain, _M_ , must omit some entities. For example, _M_ ’s Russell set—the
set of all non-self-membered sets in _M_ , as characterised in the model theory—is
not a member of _M_. So we know that we could have formed a more encompassing
structure with a more encompassing domain than _M_. For this reason, it seems that
a _quasi_ -categoricity result is the most we _ought_ to hope for from our set theory; that
mere quasi-categoricity is somehow _inevitable_.^38
Nevertheless, none of this forces us to follow Isaacson in holding that our quasi-
categorical set theory describes a _single_ but _incomplete_ structure. We can equally
hold that ZFC 2 is an inevitably _incomplete_ axiomatisation, which applies to many
_different_ (complete) structures; namely, as suggested by Martin, to the different se-
quential stages of set-formation. And to our ears, at least, this is somewhat easier to
understand than the idea of an incomplete entity.

(^36) Isaacson (2011: 53; see also 4, 50). GCH is the generalised continuum hypothesis. This asserts that
the cardinality of the powerset _P_ ( _κ_ )of an infinite cardinal _κ_ is as small as possible, namely it is the next
infinite cardinal beyond _κ_.
(^37) To see this, suppose that _A_ and _B_ model ZFC 2 , plus this additional axiom for some fixed _n_ ≥0. By
Zermelo’s Quasi-Categoricity Theorem 8.8, there are three options to consider.
Option (2) says that _A_ ≅ _VBa_ , for some _a_ which _B_ thinks is an inaccessible cardinal. But _A_ and hence
its isomorphic copy _VBa_ think that there are exactly _n_ inaccessibles _a_ 0 , ..., _an_ − 1 , which all lie below the
inaccessible _a_ in _B_. But then _B_ will think that there are at least _n_ +1 inaccessibles, a contradiction. This
rules out option (2). Similar considerations, with the roles of _A_ and _B_ reversed, rule out option (3). So
option (1) must obtain, i.e. _A_ ≅ _B_ , as required.
(^38) In Chapter 11 we discuss full categoricity results for second-order set theories (including McGee
1997). But crucially, those are _internal_ categoricity results, in a sense we explain in Chapters 10–11.


186 categoricity and the sets

### 8.a Zermelo Quasi-Categoricity

In this appendix, we prove Zermelo’s Quasi-Categoricity Theorem 8.8. Our proof
outline follows Kanamori, but his proof occurs in an advanced set theory text, and
so is only a few paragraphs long.^39 Given the importance attached to Zermelo’s
Theorem, we want to offer a detailed and reasonably self-contained proof.
We begin with a proof of the Mostowski Collapse Lemma 8.6. We used this to
present Skolem’s Paradox in §8.2, and we will need it to prove Zermelo’s Theorem.

Lemma(Mostowski Collapse Lemma 8.6): _Any well-founded, extensional structure
is isomorphic to a transitive structure._

_Proof._ Let _A_ be well-founded and extensional (see Definition 8.5). We first define
a notion of rank relative to _A_ :

```
rank A ( a )=
```
#### ⎧⎪

#### ⎪

#### ⎨⎪

#### ⎪⎩

```
0 if A ⊧∀ x x ∉ a
sup{rank A ( b )+1 : A ⊧ b ∈ a } otherwise
```
This is well-defined, since _A_ is well-founded and extensional. By transfinite recur-
sion on rank _A_ , we define a _collapse function_ , _h_ , such that rank _A_ ( _x_ )=rank( _h_ ( _x_ )):

```
h ( a )=
```
#### ⎧⎪

#### ⎪

#### ⎨

#### ⎪⎪⎩

```
∅ if rank A ( a )= 0
{ h ( b ): A ⊧ b ∈ a } otherwise
```
We now use _h_ to define a model _B_ , the _Mostowski collapse_ of _A_ :

```
B ={ h ( x ): x ∈ A }
∈ B ={( x , y )∈ B × B : x ∈ y }
```
To see that _B_ is transitive, suppose _b_ ∈ _a_ ∈ _B_. So for some _a_ ′∈ _A_ , we have _a_ =
_h_ ( _a_ ′)={ _h_ ( _b_ ′): _A_ ⊧ _b_ ′∈ _a_ ′}. So _b_ = _h_ ( _b_ ′), for some _b_ ′such that _A_ ⊧ _b_ ′∈ _a_ ′, so
that _b_ ∈ _B_.
It remains to prove that _h_ : _A_ Ð→ _B_ is an isomorphism. We prove
by induction that _h_ is an injection. Suppose for induction that whenever
max(rank _A_ ( _x_ ), rank _A_ ( _y_ ))< _γ_ and _h_ ( _x_ )= _h_ ( _y_ ), we have _x_ = _y_. Now suppose
max(rank _A_ ( _a_ ), rank _A_ ( _b_ ))= _γ_ and _h_ ( _a_ )= _h_ ( _b_ ); we show that _a_ = _b_ by showing
inclusions in both directions inside _A_. If _A_ ⊧ _d_ ∈ _a_ , then _h_ ( _d_ )∈ _h_ ( _a_ )= _h_ ( _b_ )=
{ _h_ ( _e_ ): _A_ ⊧ _e_ ∈ _b_ }. So there is some _e_ such that _A_ ⊧ _e_ ∈ _b_ and _h_ ( _d_ )= _h_ ( _e_ ), and
since max(rank _A_ ( _d_ ), rank _A_ ( _e_ ))< _γ_ , the induction hypothesis yields that _d_ = _e_ ;
hence _A_ ⊧ _d_ ∈ _b_. Similarly, if _A_ ⊧ _e_ ∈ _b_ , then _A_ ⊧ _e_ ∈ _a_. So _a_ = _b_ , since _A_

(^39) Kanamori (2003: 18–19).


```
8.a. zermelo quasi-categoricity 187
```
is extensional. So _h_ is an injection; and since _h_ is obviously a surjection, it is a bi-
jection. Finally, _h_ preserves the structure of∈ _A_ by construction. For, on the one
hand, if _A_ ⊧ _b_ ∈ _a_ then by definition of the function _h_ , we have _h_ ( _b_ )∈ _h_ ( _a_ ). On
the other hand, if _h_ ( _b_ )∈ _h_ ( _a_ ), then by definition of _h_ ( _a_ ), we have _h_ ( _b_ )= _h_ ( _b_ ′)
for some _b_ ′∈ _A_ satisfying _A_ ⊧ _b_ ′∈ _a_. Then _b_ = _b_ ′by the injectivity of _h_ , so that
_A_ ⊧ _b_ ∈ _a_.

Now we move to results more directly concerned with the proof of Zermelo’s Quasi-
Categoricity Theorem 8.8.
We start with an important definition, which concerns the alignment between a
model of the set-theoretic axioms, and our set-theoretic metatheory.

Definition8.11: _Suppose that A is a model and φ_ ( _x_ ) _is a formula. Then φ_ ( _x_ ) _is_ abso-
lute _for A iff for alla from A we have: φ_ ( _a_ ) _iff A_ ⊧ _φ_ ( _a_ )_._

The left-side of the biconditional, ‘ _φ_ ( _a_ )’, is a claim made in the metatheory itself. So
the absoluteness of a formula in a structure indicates agreement between the struc-
ture and the metatheory. Unsurprisingly, absoluteness is a demanding condition.
In these terms, Skolem’s Paradox, discussed in §8.2, shows that ‘ _x_ is uncountable’ is
not absolute for all transitive models.
The most widely applicable sufficient condition for a formula to be absolute is a
syntactic condition, given by the following definition:

Definition 8.12: _The_ Δ 0 -formulas _are the smallest set of formulas in the signature of
set theory which contain the quantifier-free formulas, are closed under the propositional
connectives, and are such that if φ_ ( _x_ ) _is_ Δ 0 _, then so are both_ (∃ _x_ ∈ _y_ ) _φ_ ( _x_ ) _and_ (∀ _x_ ∈
_y_ ) _φ_ ( _x_ )_._

The quantifiers in the last part of this definition are called _bounded quantifiers_. So:
the Δ 0 -formulas are the formulas whose quantifiers (if any) are all bounded.
The Δ 0 -formulas are not absolute for all structures. However, an easy induction
on complexity shows that they are absolute for transitive models:^40

Proposition 8.13: _If A is a transitive model, then every_ Δ 0 _-formula is absolute for A._

This Proposition is surprisingly applicable. For instance, there are Δ 0 -formulas
which define notions like ordered-pair, subset, cross-product, ordinal, being a func-
tion, being the domain of a function, and being the range of a function.^41

(^40) See Kunen (1980: 118–19) and Jech (2003: 163–4).
(^41) See Kunen (1980: 119ff) and Jech (2003: 164–5). The only one of these which perhaps deserves
comment is being an ordinal. The official definition of an ordinal is ‘a transitive set _well-ordered_ by mem-


188 categoricity and the sets

We now start the march to Zermelo’s Theorem, beginning with some elementary
results concerning inaccessibles (as defined in Definition 8.3):

Lemma 8.14: _Let κ be an inaccessible cardinal:_

```
(1)If γ < κ, then ∣ Vγ ∣< κ.
(2)If a ∈ Vκ, then ∣ a ∣< κ.
(3) If a ⊆ Vκand ∣ a ∣< κ, then a ∈ Vκ.
```
_Proof.(1)._ This is a simple transfinite induction. For _γ_ =0 this follows immediately
from the fact that _V_ 0 =∅. For _γ_ = _β_ +1, this follows from _κ_ ’s inaccessibility, which
implies that if∣ _Vβ_ ∣< _κ_ then∣ _Vγ_ ∣=∣ _Vβ_ + 1 ∣=∣℘( _Vβ_ )∣< _κ_. For _γ_ a limit, this follows
from _κ_ ’s regularity, since the union of< _κ_ many sets of cardinality has cardinality< _κ_
for regular _κ_.
_(2)._ Suppose _a_ ∈ _Vκ_. Since _κ_ is a limit, there is _γ_ < _κ_ such that _a_ ∈ _Vγ_ , and so by
transitivity _a_ ⊆ _Vγ_. So∣ _a_ ∣≤∣ _Vγ_ ∣< _κ_ , by (1).
_(3)._ Suppose _a_ ⊆ _Vκ_ and∣ _a_ ∣< _κ_. Since _a_ ⊆ _Vκ_ and _κ_ is limit, rank( _b_ )< _κ_
for any _b_ ∈ _a_. Choose a bijection _F_ :∣ _a_ ∣ Ð→ _a_ and compose it with the rank
function. Since _κ_ is regular and∣ _a_ ∣ < _κ_ , the composition rank○ _F_ :∣ _a_ ∣ Ð→ _κ_
has bounded range. So rank : _a_ Ð→ _κ_ also has bounded range, say by _γ_ < _κ_.
Then rank( _a_ )≤ _γ_ + 1 < _κ_ , and so _a_ ∈ _Vκ_.

The proof of Zermelo’s Theorem 8.8 takes several stages. Throughout, we use the
expression ‘ _A_ thinks that...’, as introduced in §8.3. We also use the full semantics
for second-order logic throughout. We start with a result which effectively entails
the right-to-left direction of Theorem 8.4, along with some additional information
about the interpretation of power set and cardinality:

Theorem 8.15: _Let κ be an inaccessible cardinal:_

```
(1)Vκ ⊧ZFC 2.
(2)If a ∈ Vκ, then ℘ Vκ ( a )=℘( a ) , where ℘ Vκ ( a ) is Vκ’s interpretation of the
powerset of a.
(3) If a , b ∈ Vκ, then ∣ a ∣=∣ b ∣ iff Vκ ⊧∣ a ∣=∣ b ∣. Hence, α in Vκis a cardinal iff Vκ
thinks that α is a cardinal.
```
_Proof._ For (1), we must verify each of the axioms of ZFC 2 in turn (see §1.b for the
axioms). When we come to the Power Set Axiom, we will additionally verify (2).
After this, we will verify (3).
_Extensionality._ This follows from the transitivity of _Vκ_. Suppose that _Vκ_ thinks
that _a_ and _b_ have exactly the same members, i.e. that _c_ ∈ _a_ iff _c_ ∈ _b_ , for all _c_ ∈ _Vκ_ ; we

bership’. But, on transitive models, this is equivalent by the Axiom of Foundation to being a transitive set
_linearly_ ordered by membership, which is obviously aΔ 0 -condition.


```
8.a. zermelo quasi-categoricity 189
```
must show that this holds for _all c_. Since _a_ , _b_ ∈ _Vκ_ and _Vκ_ is transitive, both _a_ and _b_
are subsets of _Vκ_. So suppose _c_ ∈ _a_ ; then since _a_ ⊆ _Vκ_ , we have _c_ ∈ _Vκ_ , and so by
hypothesis _c_ ∈ _b_. Similarly, if _c_ ∈ _b_ then _c_ ∈ _a_. So _a_ = _b_.
_Separation._ Suppose _F_ ⊆ _Vκ_ and _a_ ∈ _Vκ_. Then∣ _a_ ∣ < _κ_ by Lemma 8.14(2).
Since _a_ ∩ _F_ ⊆ _a_ ⊆ _Vκ_ by transitivity, and∣ _a_ ∩ _F_ ∣≤∣ _a_ ∣< _κ_ , we have _a_ ∩ _F_ ∈ _Vκ_ by
Lemma 8.14(3).
Since we have Separation, by the remarks in §1.b, we only need to verify one di-
rection of the biconditionals from the official versions of Pairing and Union.
_Pairing._ Suppose that _a_ , _b_ ∈ _Vκ_. Since _κ_ is a limit, there is _γ_ < _κ_ such that _a_ , _b_ ∈
_Vγ_. Then{ _a_ , _b_ }∈℘( _Vγ_ )= _Vγ_ + 1. Since _γ_ + 1 < _κ_ , it follows that{ _a_ , _b_ }∈ _Vκ_.
Finally, _Vκ_ thinks that _c_ ={ _a_ , _b_ }contains both _a_ and _b_ , since the relation _a_ ∈ _c_ ∧ _b_ ∈
_c_ is Δ 0 and thus absolute.
_Union._ Suppose that _a_ ∈ _Vκ_. Since _κ_ is a limit, there is _γ_ < _κ_ such that _a_ ∈ _Vγ_.
Now suppose that _c_ ∈⋃ _a_. Then _c_ ∈ _b_ ∈ _a_ for some set _b_. Since _a_ ∈ _Vγ_ and _Vγ_
is transitive, _b_ ∈ _a_ ⊆ _Vγ_ , and so _b_ ∈ _Vγ_. Similarly, _c_ ∈ _b_ ⊆ _Vγ_ so that _c_ ∈ _Vγ_.
Hence⋃ _a_ ⊆ _Vγ_ , and so⋃ _a_ ∈ _Vγ_ + 1 and thus⋃ _a_ ∈ _Vκ_. Finally, note that _Vκ_
thinks that _d_ =⋃ _a_ contains all the members of the members of _a_ , since the condi-
tion(∀ _b_ ∈ _a_ )(∀ _c_ ∈ _b_ ) _c_ ∈ _d_ is Δ 0 and thus absolute.
_Power Set._ Suppose that _a_ ∈ _Vκ_. There is _γ_ < _κ_ such that _a_ ∈ _Vγ_. Suppose
that _b_ ∈℘( _a_ ). Then _b_ ⊆ _a_ ⊆ _Vγ_ , by the transitivity of _Vγ_ , so that _b_ ∈ _Vγ_ + 1.
So℘( _a_ )⊆ _Vγ_ + 1 and so℘( _a_ )∈ _Vγ_ + 2 and thus℘( _a_ )∈ _Vκ_. Further, _Vκ_ thinks
that _d_ =℘( _a_ )contains all and only the subsets of _a_. For, first suppose that _b_ ∈ _Vκ_
and _Vκ_ thinks that _b_ ⊆ _a_ ; then by the absoluteness of subsethood, in fact _b_ ⊆ _a_ , so
that _b_ ∈℘( _a_ )= _d_ , which is again absolute, so that _Vκ_ thinks that _b_ ∈ _d_. Conversely,
suppose that _b_ ∈ _Vκ_ and _Vκ_ thinks that _b_ ∈ _d_. Then by absoluteness, _b_ ∈ _d_ and
since _d_ =℘( _a_ )one has that _b_ ⊆ _a_ ; then by absoluteness of subsethood, one has
that _Vκ_ thinks that _b_ ⊆ _a_. This both shows that Power Set holds in _Vκ_ and that
_d_ =℘ _Vκ_ ( _a_ )=℘( _a_ ), thereby establishing (2).
_Infinity._ The empty set has a Δ 0 -definition, via _d_ =∅iff(∀ _z_ ∈ _d_ ) _z_ ≠ _z_. The
successor operation _s_ ( _x_ )= _y_ also has a Δ 0 -definition, via

```
x ∈ y ∧(∀ z ∈ x ) z ∈ y ∧(∀ z ∈ y ) ( z ∈ x ∨ z = x )
```
Note that∅is in _Vκ_ and that _Vκ_ is closed under successor. So, as _ω_ is in _Vκ_ and _ω_
contains∅and is closed under successor, by absoluteness _Vκ_ thinks this too.
_Foundation._ Suppose that _a_ ∈ _Vκ_ and _Vκ_ thinks that _a_ is not empty. By absolute-
ness of being empty (see above), indeed _a_ ≠∅. So by Foundation in the metathe-
ory, there is _b_ ∈ _a_ such that _b_ ∩ _a_ =∅. By the transitivity of _Vκ_ , we have _b_ ∈ _Vκ_ , and
since the relation _b_ ∩ _a_ =∅is Δ 0 -definable, _Vκ_ indeed thinks that _b_ ∩ _a_ =∅.
_Replacement._ Suppose that _G_ ⊆ _Vκ_ × _Vκ_ , that _a_ ∈ _Vκ_ , and that _G_ restricted to
members of _a_ is functional. By Lemma 8.14(2),∣ _a_ ∣< _κ_. Equally, where _b_ ⊆ _Vκ_ is


190 categoricity and the sets

the image of _a_ under _G_ , the assumption of _G_ ’s functionality yields∣ _b_ ∣≤∣ _a_ ∣< _κ_ ; so
Lemma 8.14(3) again yields _b_ ∈ _Vκ_.
_Choice._ Suppose that _a_ ∈ _Vκ_. By what we have established so far, the set _a_ × _a_ is
in _Vκ_ and is identical to what _Vκ_ thinks the product of _a_ with itself is. Then℘( _a_ × _a_ )
is in _Vκ_ by part (2) of this result (established above). Appealing to Choice in the
metatheory, choose some _R_ in℘( _a_ × _a_ )that well-orders _a_. It is easy to check that _Vκ_
thinks that _R_ also well-orders _a_.
This completes parts (1) and (2). For part (3), suppose that _a_ , _b_ ∈ _Vκ_ are such
that∣ _a_ ∣=∣ _b_ ∣, so that there is a bijection _f_ : _a_ Ð→ _b_. Since functions are identified
with their graphs, _f_ ⊆ _a_ × _b_ and so _f_ is also a member of _Vκ_ by Lemma 8.14(3).
Since being a bijection is absolute, _Vκ_ ⊧∣ _a_ ∣=∣ _b_ ∣. The proof of the converse is
similar.

Next, we show a converse to the previous theorem.

Lemma 8.16: _If Vκ_ ⊧ZFC 2 _, then κ is an inaccessible cardinal._

_Proof._ First, note that _κ_ is a cardinal. Otherwise there would be a bijection _F_ :
_β_ Ð→ _κ_ with _β_ < _κ_ , and since _β_ ∈ _Vκ_ , an application of Replacement inside _Vκ_
would imply that _κ_ ∈ _Vκ_.
Second, note that _κ_ > _ω_. To see this, choose an element _α_ of _Vκ_ which _Vκ_ thinks
is an infinite ordinal. (This is possible, since _Vκ_ ⊧ZFC 2 .) By the absoluteness of
being an ordinal, _α_ is indeed an ordinal. Further by the absoluteness of the empty
set and the successor operation, _α_ is indeed infinite. So _κ_ is infinite too, since _α_ ∈ _Vκ_.
Third, note that _κ_ is regular. For consider any map _F_ : _β_ Ð→ _κ_ for some _β_ < _κ_ ,
and let _a_ be _F_ ’s image. Then _a_ ∈ _Vκ_ , by applying Replacement inside _Vκ_. Since _κ_ is
a limit, there is _γ_ < _κ_ such that _a_ ∈ _Vγ_ , so that _a_ ⊆ _γ_. So _F_ ’s range is bounded.
Finally, we must show that _λ_ < _κ_ implies∣℘( _λ_ )∣< _κ_. To begin, note that for
any set _a_ ∈ _Vκ_ we have℘ _Vκ_ ( _a_ )=℘( _a_ ). That℘ _Vκ_ ( _a_ )⊆℘( _a_ )holds by transitivity
and the absoluteness of subset, exactly as in Theorem 8.15(2). To show that℘( _a_ )⊆
℘ _Vκ_ ( _a_ ), suppose _X_ ⊆ _a_ ; so, by transitivity, _X_ ⊆ _a_ ⊆ _Vκ_. Then by Separation and the
absoluteness of set-theoretic intersection, we have that _X_ =( _a_ ∩ _X_ )∈ _Vκ_. Hence
indeed℘ _Vκ_ ( _a_ )=℘( _a_ )for elements _a_ ∈ _Vκ_.
Now, since _Vκ_ satisfies Choice, _Vκ_ thinks℘ _Vκ_ ( _λ_ )=℘( _λ_ )is in a bijection with
some ordinal. But then, by the absoluteness of being a bijection and being an ordi-
nal,℘( _λ_ )is indeed in a bijection with some ordinal in _Vκ_ , i.e. some ordinal< _κ_ , as
required.

So far in this section, we have considered models of the form _Vκ_. To complete the
proof of Zermelo’s Theorem, we must work with _arbitrary_ models of ZFC 2. We
start on this in Lemma 8.18. First, we need a preliminary result. The following


```
8.a. zermelo quasi-categoricity 191
```
Lemma is a _deductive consequence_ of ZFC 2 , and our argument for it is entirely proof-
theoretic. (The advantage of such an argument is that we know it will hold in _any_
model of ZFC 2 .)

Lemma 8.17:ZFC 2 _proves: if F is non-empty, then_ ∃ _v_ ( _F_ ( _v_ )∧(∀ _x_ ∈ _v_ )¬ _F_ ( _x_ ))_._

_Proof._ Suppose _a_ is such that _F_ ( _a_ ). Choose a transitive set _t_ such that _a_ ⊆ _t_. By
Separation, the set _t_ ∩ _F_ exists.
If _t_ ∩ _F_ is empty, then _a_ is the desired witness. After all, any _x_ ∈ _a_ with _F_ ( _x_ )would
also satisfy _x_ ∈ _a_ ⊆ _t_ and hence be in the empty _t_ ∩ _F_.
If _t_ ∩ _F_ is not empty, then by Foundation, there is _b_ in _t_ ∩ _F_ such that _b_ ∩( _t_ ∩ _F_ )=∅.
Since _t_ is transitive and _b_ ∈ _t_ , we have _b_ ⊆ _t_. Now _b_ ∈( _t_ ∩ _F_ )implies _F_ ( _b_ ). So _b_ is
the desired witness, since if there were _x_ ∈ _b_ with _F_ ( _x_ )then we would have _x_ ∈ _b_ ⊆ _t_
and so _x_ would be in the empty set _b_ ∩( _t_ ∩ _F_ ).

We are now on the verge of completing Theorem 8.4:

Lemma 8.18: _If A_ ⊧ZFC 2 _, then A_ ≅ _Vαfor some ordinal α._

_Proof._ Evidently _A_ is extensional. To see that _A_ is well-founded, suppose for re-
ductio that there is an infinite descending∈ _A_ -chain _an_ in _A_ , so that _A_ ⊧ _an_ + 1 ∈ _an_
for all _n_ ≥0; since we are working with the full semantics, _F_ ={ _an_ : _n_ ≥ 0 }is a
second-order entity in _A_ and so Lemma 8.17 applies, from which we immediately
obtain a contradiction. Hence, by the Mostowski Collapse Lemma 8.6, _A_ is iso-
morphic to a transitive structure _B_. It now suffices to show that _B_ = _Vα_ for some
ordinal _α_.
We first show that℘ _B_ ( _a_ )=℘( _a_ )for any _a_ ∈ _B_. That℘ _B_ ( _a_ )⊆℘( _a_ )holds
by transitivity and the absoluteness of subset, exactly as in the proof of Theorem
8.15(2). To see that℘( _a_ )⊆℘ _B_ ( _a_ ), suppose that _X_ ⊆ _a_. Then _X_ determines a
second-order entity in _B_ and by Separation, _X_ ∩ _a_ = _X_ exists as a first-order entity
in _B_. So indeed℘ _B_ ( _a_ )=℘( _a_ ). Using this identity, an easy induction on _γ_ in _B_
shows that _VBγ_ = _Vγ_.
Where _α_ is the least ordinal not in the underlying domain _B_ of _B_ , we now claim
that _B_ = _Vα_. For the left-to-right direction, suppose that _a_ ∈ _B_. Then since _B_ ⊧
ZFC 2 , we have that _a_ ∈ _VBγ_ = _Vγ_ for some _γ_ < _α_ , so that _a_ ∈ _Vα_. Conversely,
suppose that _a_ ∈ _Vα_. Since _B_ ⊧ZFC 2 , it follows that _α_ is a limit, so that _a_ ∈ _Vγ_ for
some _γ_ < _α_ , and hence _a_ ∈ _Vγ_ = _VBγ_ ⊆ _B_.

Putting these results together, we obtain what we wanted:

Theorem(8.4): _A_ ⊧ZFC 2 _iff A_ ≅ _Vκfor some inaccessible κ._


192 categoricity and the sets

_Proof.Left-to-right._ Combine Lemmas 8.18 and 8.16. _Right-to-left._ Combine Theo-
rem 8.15 with Theorem 2.3.

Theorem(Zermelo’s Quasi-Categoricity Theorem 8.8): _Let A and B be full models
of_ ZFC 2_. Then exactly one of the following obtains:_

#### (1)A ≅ B

```
(2)A ≅ VBa, for some a which B thinks is an inaccessible cardinal.
(3) B ≅ VAa, for some a which A thinks is an inaccessible cardinal.
```
_Proof._ By Theorem 8.4, there are inaccessibles _κ_ and _λ_ such that _A_ ≅ _Vκ_ and _B_ ≅
_Vλ_. Then there are there three cases to consider.
_Case 1: κ_ = _λ._ Then _A_ ≅ _B_ , by the transitivity of isomorphism, and (1) obtains.
_Case 2: κ_ < _λ._ In this case, _κ_ ∈ _Vλ_. By the absoluteness of being an ordinal, _Vλ_
thinks that _κ_ is an ordinal. Moreover, since _κ_ is regular, there is no _γ_ < _κ_ and
function _f_ : _γ_ Ð→ _κ_ with unbounded range. Since the property of being such a
function is absolute, there is also no such function satisfying that property in _Vλ_ ;
so indeed _Vλ_ thinks that _κ_ is regular. Finally, since _κ_ is inaccessible,∣℘( _γ_ )∣< _κ_ for
any _γ_ < _κ_ ; so by Theorem 8.15(2),∣℘ _Vλ_ ( _γ_ )∣=∣℘( _γ_ )∣< _κ_ and thus by Theorem
8.15(3), _Vλ_ thinks that the powerset of _γ_ has cardinality< _κ_. So indeed _Vλ_ thinks
that _κ_ is inaccessible. Then, by pushing through the two isomorphisms _A_ ≅ _Vκ_
and _Vλ_ ≅ _B_ , we are done.
_Case 3: λ_ < _κ._ Exactly as above, establishing that (3) obtains.

### 8.b Elementary Scott–Potter foundations

In our discussion of Martin in §8.5, we introduced second-order Scott–Potter the-
ory, SP 2. In §8.c, we shall prove that SP 2 is quasi-categorical. In this appendix,
though, we will present some elementary deductive consequences of SP 2. _From
now until the end of this appendix, we work deductively in_ SP 2.
Our presentation largely follows Potter’s 2004-book, and we provide more exact
references to it as we proceed. But we provide these deductions ourselves for three
reasons. First, including these deductions allows us to provide a _self-contained_ proof
the SP 2 Quasi-Categoricity Theorem 8.10, just as we presented a self-contained
proof of Zermelo’s Quasi-Categoricity Theorem 8.8. Second, as we explain at the
end of this appendix, our formulation of SP 2 differs slightly from Potter’s. Third
and most important, though, this sequence of results gives some ‘intuitive’ content
to the definitions of _A_ , _H_ and _L_ , which can otherwise look rather magical.
We begin with a little notation. Given a set _y_ , if there is a set _x_ such that _A_ ( _x_ , _y_ ),
then _x_ is unique by Extensionality. So when _A_ ( _x_ , _y_ ), we abbreviate:


```
8.b. elementary scott–potter foundations 193
```
```
x = acc ( y )={ v :(∃ u ∈ y )( v ∈ u ∨ v ⊆ u )}
```
We call this operation _accumulation_ , and the intuitive idea is that it ‘fleshes out’ a
set. We will later see that histories are initial sequences of levels. Levels themselves
are just the accumulations of all _lower_ levels. Finally, and crucially, levels are well-
ordered by membership. These comments, we hope, give an intuitive sense of how
SP 2 works. But now we must get our hands dirty.
We begin by proving some elementary facts about _accumulation_ :

Proposition 8.19: _For all a_ , _b such that acc_ ( _a_ ) _and acc_ ( _b_ ) _exist:
(1)a_ ⊆ _acc_ ( _a_ )
_(2)if a_ ⊆ _b, then acc_ ( _a_ )⊆ _acc_ ( _b_ )
_(3) if b_ ∈ _a, then b_ ⊆ _acc_ ( _a_ )_._

_Proof.(1)._ Suppose that _x_ ∈ _a_. Then trivially there is _x_ ∈ _a_ such that _x_ ∈ _x_ ∨ _x_ ⊆ _x_ ,
so _x_ ∈ _acc_ ( _a_ ).
_(2)._ Suppose that _a_ ⊆ _b_ , and suppose that _x_ ∈ _acc_ ( _a_ ). Then there is _c_ ∈ _a_ such
that _x_ ∈ _c_ ∨ _x_ ⊆ _c_. Since _a_ ⊆ _b_ , we have _c_ ∈ _b_ and so _x_ ∈ _acc_ ( _b_ ).
_(3)._ Suppose that _b_ ∈ _a_ and _c_ ∈ _b_. Then clearly there is some _b_ ∈ _a_ such that
_c_ ∈ _b_ ∨ _c_ ⊆ _b_ , so that _c_ ∈ _acc_ ( _a_ ).

Another simple fact is that, intuitively, all of a set’s subsets exist:

Proposition 8.20(Aussonderung): _for all X and all a, there is a set_ { _v_ ∈ _a_ : _X_ ( _v_ )}

_Proof._ Fix _X_ and _a_. Since _a_ is a set, there is a levelℓsuch that _a_ ⊆ℓ, by Levelling. By
Comprehension, there is a property _G_ such that∀ _v_ ( _G_ ( _v_ )↔( _v_ ∈ _a_ ∧ _X_ ( _v_ )). Since
all of _G_ ’s instances are members ofℓ, _G_ determines the set{ _v_ ∈ _a_ : _X_ ( _v_ )}.

We say that a set _a_ is _supertransitive_ iff for all _c_ ⊆ _b_ ∈ _a_ we have _c_ ∈ _a_. We now prove
some elementary facts about levels and supertransitivity:^42

Proposition 8.21: _For any level_ ℓ _and history h such that_ ℓ= _acc_ ( _h_ ) _:_

```
(1)if ℓ 0 ∈ h, then ℓ 0 = acc (ℓ 0 ∩ h ) and ℓ 0 ∩ h is a history and ℓ 0 is a level
(2)if a ⊆ h is non-empty, then (∃ℓ 0 ∈ a )(∀ℓ 1 ∈ a )ℓ 1 ∉ℓ 0
(3) if x ∈ℓ , then there is a level ℓ 0 ∈ h ∩ℓ such that x ⊆ℓ 0
(4) ℓ is both transitive and supertransitive
```
_Proof.(1)._ Let _h_ 0 =ℓ 0 ∩ _h_ , which exists by Aussonderung. Sinceℓ 0 ∈ _h_ , we have
thatℓ 0 = _acc_ (ℓ 0 ∩ _h_ )= _acc_ ( _h_ 0 ). Suppose _x_ ∈ _h_ 0. Since _h_ 0 ⊆ _h_ , we have _x_ ∩ _h_ 0 ⊆

(^42) For (1) see Potter (2004: Proposition 3.4.1 p.41); for (2) see Potter (2004: Lemmas 3.6.2–4 pp.43–
44). For transitivity in (4) see Potter (2004: Proposition 3.6.5 p.44).


194 categoricity and the sets

_x_ ∩ _h_. By Aussonderung, _acc_ ( _h_ 0 )= _acc_ (ℓ 0 ∩ _h_ )⊆ _acc_ ( _h_ )exists. Since _x_ ∈ _h_ 0 ,
by Proposition 8.19(3) we have _x_ ⊆ _acc_ ( _h_ 0 )=ℓ 0. Then _x_ ∩ _h_ ⊆ℓ 0 ∩ _h_ = _h_ 0
and so _x_ ∩ _h_ ⊆ _x_ ∩ _h_ 0. Hence _x_ ∩ _h_ 0 = _x_ ∩ _h_. Then since _x_ ∈ _h_ , we have that
_x_ = _acc_ ( _x_ ∩ _h_ )= _acc_ ( _x_ ∩ _h_ 0 ), so that _h_ 0 is a history.
_(2)._ For reductio, suppose there is a nonempty _a_ ⊆ _h_ with(∀ℓ 0 ∈ _a_ )(∃ℓ 1 ∈
_a_ )ℓ 1 ∈ℓ 0. Since _a_ is nonempty, there is someℓ 1 ∈ _a_ ⊆ _h_ and, by (1),ℓ 1 is a level. So
_b_ ={ _x_ ∈ℓ 1 :(∀ℓ 0 ∈ _a_ ) _x_ ∈ℓ 0 }={ _x_ :(∀ℓ 0 ∈ _a_ ) _x_ ∈ℓ 0 }is a set by Aussonderung.
Suppose _c_ ⊆ _b_ and fix any levelℓ 0 ∈ _a_. By our reductio assumption, there is
ℓ 1 ∈ _a_ ⊆ _h_ such thatℓ 1 ∈ℓ 0. Then _c_ ⊆ _b_ ⊆ℓ 1 and so there isℓ 1 ∈ℓ 0 ∩ _h_ such that
_c_ ∈ℓ 1 ∨ _c_ ⊆ℓ 1. Then by (1), _c_ ∈ _acc_ (ℓ 0 ∩ _h_ )=ℓ 0. Sinceℓ 0 ∈ _a_ was arbitrary, _c_ ∈ _b_.
Now, by Aussonderung, in particular _c_ ={ _x_ ∈ _b_ : _x_ ∉ _x_ }exists and _c_ ∈ _b_. So by
definition of _c_ we have _c_ ∉ _c_ iff _c_ ∈ _c_ , a contradiction.
_(3)._ Fix _x_ ∈ℓ= _acc_ ( _h_ ); by Aussonderung the set _a_ ={ℓ 0 ∈ _h_ : _x_ ∈ℓ 0 ∨
_x_ ⊆ℓ 0 }exists and is clearly nonempty. By (2), there is someℓ 0 ∈ _a_ such that
(∀ℓ 1 ∈ _a_ )ℓ 1 ∉ℓ 0. First, note thatℓ 0 ∈ _h_ , so thatℓ 0 is a level by (1). Moreover, since
ℓ 0 ∈ _h_ ⊆ _acc_ ( _h_ )=ℓ,ℓ 0 ∈ _h_ ∩ℓ. It remains to show that _x_ ⊆ℓ 0. Sinceℓ 0 ∈ _a_ , we
have _x_ ∈ℓ 0 ∨ _x_ ⊆ℓ 0 ; so it suffices to show that _x_ ∉ℓ 0. For reductio, suppose _x_ ∈ℓ 0.
Since _x_ ∈ℓ 0 = _acc_ (ℓ 0 ∩ _h_ )by (1), there isℓ 1 ∈ℓ 0 ∩ _h_ with _x_ ∈ℓ 1 ∨ _x_ ⊆ℓ 1. So
ℓ 1 ∈ _a_ by definition of _a_ , and soℓ 1 ∉ℓ 0 by the earlier fact that(∀ℓ 1 ∈ _a_ )ℓ 1 ∉ℓ 0 ,
contradicting the fact thatℓ 1 ∈ℓ 0.
_(4)._ Assume _x_ ∈ℓ. By (3), fixℓ 0 ∈ _h_ ∩ℓwith _x_ ⊆ℓ 0. For transitivity, suppose
_y_ ∈ _x_ , so that _y_ ∈ℓ 0. Then there is _b_ ∈ _h_ with _y_ ∈ _b_ ∨ _y_ ⊆ _b_ , namely _b_ =ℓ 0. Hence
_y_ ∈ _acc_ ( _h_ )=ℓ. For supertransitivity, suppose _y_ ⊆ _x_. Then _y_ ⊆ _x_ ⊆ℓ 0 and so there is
_b_ ∈ _h_ with _y_ ∈ _b_ ∨ _y_ ⊆ _b_ , namely (again) _b_ =ℓ 0. Hence we have _y_ ∈ _acc_ ( _h_ )=ℓ.

In what follows, we often appeal to the (super)transitivity of levels, i.e. Proposition
8.21(4). Indeed, we can now show that accumulations _always_ exist:^43

Proposition 8.22: _acc_ ( _a_ ) _is a set for any a_

_Proof._ Fix any set _a_. By Levelling, choose a levelℓsuch that _a_ ⊆ℓ. So _acc_ ( _a_ )⊆
_acc_ (ℓ)by Proposition 8.19(2), provided these accumulations exist. By Ausson-
derung, it suffices to show that _acc_ (ℓ)⊆ℓ. Suppose that _x_ ∈ _acc_ (ℓ). Then there is
_b_ ∈ℓsuch that _x_ ∈ _b_ ∨ _x_ ⊆ _b_. Then if _x_ ∈ _b_ then _x_ ∈ℓby transitivity ofℓ; and if _x_ ⊆ _b_
then _x_ ∈ℓby supertransitivity ofℓ; and _x_ ∈ℓeither way.

Combining Proposition 8.22 with Proposition 8.21(1), we see that every member of
a history is a level. Moreover, we can now show that every level is the accumulation
of the levels which are its members:^44

(^43) Potter (2004: Propositions 3.6.6–7 p.44).
(^44) See Potter (2004: Proposition 3.6.8 p.45).


```
8.b. elementary scott–potter foundations 195
```
Proposition 8.23: _Let_ ℓ _be any level. Then where h_ ={ℓ 0 ∈ℓ: _L_ (ℓ 0 )} _,_

```
(1)h is a history
(2) ℓ= acc ( h )
```
_Proof.(1)._ Letℓ 0 ∈ _h_ ; we must show that _acc_ (ℓ 0 ∩ _h_ )=ℓ 0. Suppose _x_ ∈ _acc_ (ℓ 0 ∩ _h_ ),
i.e. there isℓ 1 ∈ℓ 0 ∩ _h_ with _x_ ∈ℓ 1 ∨ _x_ ⊆ℓ 1. Then _x_ ⊆ℓ 1 by transitivity ofℓ 1 , and
so _x_ ∈ℓ 0 by supertransitivity ofℓ 0. Conversely, suppose that _x_ ∈ℓ 0. Sinceℓ 0 is a
level, by Proposition 8.21(3) there is a levelℓ 1 ∈ℓ 0 such that _x_ ⊆ℓ 1 ; sinceℓ 0 ∈ _h_ we
haveℓ 0 ∈ℓand so by transitivityℓ 1 ∈ℓso thatℓ 1 ∈ _h_. Hence _x_ ⊆ℓ 1 ∈ℓ 0 ∩ _h_ and so
_x_ ∈ _acc_ (ℓ 0 ∩ _h_ ).
_(2)._ Sinceℓis a level, there is a history _h_ 0 such thatℓ= _acc_ ( _h_ 0 ); we must show
_acc_ ( _h_ 0 )= _acc_ ( _h_ ). Suppose that _x_ ∈ _acc_ ( _h_ 0 ); then there is a levelℓ 0 ∈ _h_ 0 such that
_x_ ∈ℓ 0 ∨ _x_ ⊆ℓ 0. And since _h_ 0 ⊆ _acc_ ( _h_ 0 )=ℓ, we haveℓ 0 ∈ℓ, so that _x_ ∈ _acc_ ( _h_ ).
Conversely, suppose _x_ ∈ _acc_ ( _h_ ). Then there is a levelℓ 0 ∈ℓsuch that _x_ ∈ℓ 0 ∨ _x_ ⊆ℓ 0.
Sinceℓ 0 is transitive, we must have _x_ ⊆ℓ 0 ; and sinceℓis supertransitive we have
_x_ ∈ℓ.

We can now prove that the levels are well-ordered by membership:^45

Proposition 8.24:
_(1)_ ∀ _X_ ((∃ℓ: _L_ ) _X_ (ℓ)→
(∃ℓ 0 : _L_ )[ _X_ (ℓ 0 )∧(∀ℓ 1 : _L_ )(ℓ 1 ∈ℓ 0 →¬ _X_ (ℓ 1 ))])
_(2)_ (∀ℓ: _L_ )(∀ℓ 0 : _L_ )(ℓ∈ℓ 0 ∨ℓ=ℓ 0 ∨ℓ 0 ∈ℓ)

_Proof.(1)._ Suppose thatℓis a level with _X_ (ℓ). Let _a_ ={ℓ 1 ∈ℓ: _X_ (ℓ 1 )∧ _L_ (ℓ 1 )}
which exists by Levelling. If _a_ =∅thenℓitself is our witness. Otherwise, let _h_ =
{ℓ 1 ∈ℓ: _L_ (ℓ 1 )}, and note that _h_ is a history andℓ= _acc_ ( _h_ )by Proposition 8.23.
Since _a_ ⊆ _h_ is nonempty, by Proposition 8.21(2) we have a levelℓ 0 ∈ _a_ such that
(∀ℓ 1 ∈ _a_ )ℓ 1 ∉ℓ 0 , so that(∀ℓ 1 : _L_ )(ℓ 1 ∈ℓ 0 →¬ _X_ (ℓ 1 )by definition of _a_.
_(2)._ Suppose not, for reductio. We define the following abbreviations:

```
Ψ(ℓ 0 ,ℓ 1 ):=ℓ 0 ∈ℓ 1 ∨ℓ 0 =ℓ 1 ∨ℓ 1 ∈ℓ 0
Φ(ℓ):=∃ℓ 1 ¬Ψ(ℓ,ℓ 1 )
```
By our reductio assumption, there is a levelℓsuch that Φ(ℓ). So by (1), there is a
levelℓ 0 such that Φ(ℓ 0 )but for all levelsℓ 1 ∈ℓ 0 we have¬Φ(ℓ 0 ). Since Φ(ℓ 0 ),
there is someℓ 1 such that¬(ℓ 0 ,ℓ 1 ); and by (1) again we can assume that for all
levelsℓ 2 ∈ℓ 1 we have Ψ(ℓ 0 ,ℓ 2 ). We shall argue thatℓ 0 =ℓ 1 , which contradicts the
claim¬Ψ(ℓ 0 ,ℓ 1 ).

(^45) See Potter (2004: Proposition 3.6.10–11 p.45)


196 categoricity and the sets

Suppose _x_ ∈ℓ 0 ; we show that _x_ ∈ℓ 1. By Proposition 8.21(3), there isℓ 2 ∈ℓ 0 with
_x_ ⊆ℓ 2. Sinceℓ 2 ∈ℓ 0 , we have¬Φ(ℓ 2 )and soℓ 2 ∈ℓ 1 ∨ℓ 2 =ℓ 1 ∨ℓ 1 ∈ℓ 2. In the
first case we have _x_ ∈ℓ 1 by supertransitivity ofℓ 1. The other two cases lead us to
contradict¬Ψ(ℓ 0 ,ℓ 1 ). For, in the second case we would haveℓ 1 ∈ℓ 0 , while in the
second case we would haveℓ 1 ∈ℓ 2 ∈ℓ 0 and thusℓ 1 ∈ℓ 0 by transitivity ofℓ 0.
Conversely suppose that _x_ ∈ℓ 1 ; we show that _x_ ∈ℓ 0. By Proposition 8.21(3),
there isℓ 2 ∈ℓ 1 with _x_ ⊆ℓ 2. Sinceℓ 2 ∈ℓ 1 , we have Ψ(ℓ 0 ,ℓ 2 ), i.e.ℓ 0 ∈ℓ 2 ∨ℓ 0 =
ℓ 2 ∨ℓ 2 ∈ℓ 0. In the third case we have _x_ ∈ℓ 0 by the supertransitivity ofℓ 0. The
other two cases again lead us to contradict¬Ψ(ℓ 0 ,ℓ 1 ). Indeed, in the second case
we haveℓ 0 ∈ℓ 1 , while in the third case we haveℓ 0 ∈ℓ 2 ∈ℓ 1 and soℓ 0 ∈ℓ 1 by
transitivity ofℓ 1.

From this result, and the consequence of Levelling that every set is a subset of some
level, within SP 2 we can now introduce a term, ord( _x_ ), to be read _the order of x_ , for
the∈-least levelℓsuch that _x_ ⊆ℓ.^46 These results explain ord’s behaviour:^47

Proposition 8.25:ord( _a_ ) _exists for any a. Moreover:_

```
(1)if ∃ xX ( x ) , then there is some ord -minimal set a such that X ( a ) , i.e.
(∀ v : X )(ord( a )=ord( v )∨ord( a )∈ord( v )).
(2)a ∉ord( a )
(3) if a ∈ b, then ord( a )∈ord( b )
(4)for any level ℓ : ord( a )=ℓ↔[ a ⊆ℓ∧(∀ x ∈ℓ)(∃ v ∈ a ) x ⊆ord( v )∈ℓ]
```
_Proof._ The initial claim, and (1), are immediate from Proposition 8.24.
_(2)._ For reductio, suppose that _a_ ∈ord( _a_ ). By Proposition 8.23(2), ord( _a_ )=
_acc_ ({ℓ 0 ∈ord( _a_ ): _L_ (ℓ 0 )}). So there is a levelℓ 0 ∈ord( _a_ )such that _a_ ∈ℓ 0 ∨ _a_ ⊆ℓ 0 ,
and byℓ 0 ’s transitivity we have _a_ ⊆ℓ 0 , contradicting thatℓ 0 ∈ord( _a_ ).
_(3)._ For reductio, suppose that _a_ ∈ _b_ but ord( _a_ )∉ord( _b_ ). By Proposition
8.24(2), either ord( _b_ )∈ord( _a_ )or ord( _b_ )=ord( _a_ ). So ord( _b_ )⊆ord( _a_ )by the
transitivity of ord( _a_ ), which together with _a_ ∈ _b_ gives that _a_ ∈ord( _a_ ). But this
contradicts (2).
_(4)._ For left-to-right, suppose ord( _a_ )=ℓ. Then by definition _a_ ⊆ℓ. Now
fix _x_ ∈ℓ. By Proposition 8.21(3) there is a levelℓ 0 ∈ℓwith _x_ ⊆ℓ 0 , so that either
ord( _x_ )∈ℓ 0 or ord( _x_ )=ℓ 0 by Proposition 8.24(2). Suppose for reductio that(∀ _v_ ∈
_a_ )ord( _v_ )∈ℓ 0 ; then(∀ _v_ ∈ _a_ ) _v_ ∈ℓ 0 by supertransitivity ofℓ 0 , and so _a_ ⊆ℓ 0 ∈ℓ,
contradicting the fact that ord( _a_ )=ℓ. So there is some _v_ ∈ _a_ with ord( _v_ )∉ℓ 0 ; and
now by Proposition 8.24(2) and transitivity of levels,ℓ 0 ⊆ord( _v_ ).
For right-to-left, suppose ord( _a_ )≠ℓ. By Proposition 8.24(2), either ord( _a_ )∈ℓ
orℓ∈ord( _a_ ). Ifℓ∈ord( _a_ )then _a_ ⊈ℓ. If ord( _a_ )∈ℓthen(∀ _v_ ∈ _a_ )ord( _v_ )∈ord( _a_ )

(^46) Potter (2004: 48). Potter writes V( _a_ ), but we want to avoid overloading the letter ‘ _V_ ’.
(^47) See Potter (2004: Exercise 1 p.49).


```
8.c. scott–potter quasi-categoricity 197
```
by (3), and so¬(∃ _v_ ∈ _a_ )ord( _a_ )⊆ord( _v_ )by supertransitivity of levels. So we have
ord( _a_ )∈ℓand¬(∃ _v_ ∈ _a_ )(ord( _a_ )⊆ord( _v_ )∈ℓ).

We will use these deductive results in proving the quasi-categoricity of SP 2 in the
next appendix, and also revisit them in Chapter 11. But, to complete this appendix,
we explain how our axiomatisation of SP 2 differs from Potter’s.
First: Potter allows for urelements. We have set these aside, not because we ob-
ject to them, but because the statement of the quasi-categoricity result would re-
quire setting them aside anyway.
Second: Potter’s system is first-order, whereas SP 2 is a second-order system.
Third: Potter’s axioms directly employ the term-forming operator, _acc_ ( _y_ ). At
the outset, he cannot _assume_ that _acc_ ( _y_ )exists for any _y_ , so he must allow that (in
principle) ‘ _acc_ ( _y_ )’ may be an empty term.^48 To avoid this complexity, we define the
formula _A_ ( _x_ , _y_ )explicitly, and then introduce _acc_ ( _y_ )= _x_ as an abbreviation, to be
used when a set _x_ exists such that _A_ ( _x_ , _y_ ).^49
Fourth: Potter does not use the axiom which we called Levelling. Instead, he
offers an axiom scheme of separation, whose second-order version is:^50

_SP-Separation._ ∀ _X_ (∀ _v_ : _Lev_ )∃ _x_ ∀ _z_ ( _z_ ∈ _x_ ↔[ _x_ ∈ _v_ ∧ _X_ ( _z_ )])

And he also has the axiom:^51

_SP-Foundation._ Every set is a subset of some level.

We use Levelling, since it allows for the pithy gloss: _A property determines a set iff all
of its instances are members of some level_. But it is easy to see that Levelling is deduc-
tively equivalent to SP-Separation + SP-Foundation, thanks to the Comprehension
Schema of second-order logic.

### 8.c Scott–Potter Quasi-Categoricity

Armed with our deductive consequences of SP 2 , in this appendix we prove that SP 2
categorically axiomatises the idea of an arbitrary level of the cumulative hierarchy.
_From here on, we work in our set-theoretic metatheory._ Our target result is:

Theorem(SP 2 Quasi-Categoricity 8.10): _A_ ⊧SP 2 _iff A_ ≅ _Vαfor some ordinal
α_ > 0_._

To get started, recall that our definitions of _A_ , _H_ and _L_ are offered in a set-theoretic
object-language (see Definition 8.9), as is our defined operator _acc_ from §8.b. Since

(^48) Potter (2004: 24, 41).
(^49) Potter (2004: 42) himself suggests this idea.
(^50) Potter (2004: 42).
(^51) Potter (2004: 41).


198 categoricity and the sets

our metatheory is _also_ set-theoretic, we can use exactly the same definitions _in the
metatheory_. So, where _a_ is a set according to the metatheory—i.e. it is an element of
some _Vα_ as defined in Definition 8.2—we can ask in the metatheory whether some
set _b_ is such that _A_ ( _b_ , _a_ )and, if so, which set. More generally, we can ask under what
circumstances the _metatheoretic_ notions of _accumulation_ , _history_ and _level_ coincide
with the notions defined _within_ a model of SP 2. Here are some answers to these
questions:

Proposition 8.26: _For any ordinal α_ ≥ 0 _:_

```
(1)if β < α, then Vβ ∈ Vα
(2)Vα = acc { Vγ : γ < α }
(3) { Vγ : γ < α } is a history
(4)Vαis a level
```
_Proof.(1)._ The proof is by induction on _α_. For _α_ =0 it is trivial. For _α_ = _α_ 0 +1,
suppose that _β_ < _α_. Then _β_ ≤ _α_ 0. If _β_ < _α_ 0 then by induction hypothesis _Vβ_ ∈ _Vα_ 0
and so _Vβ_ ∈ _Vα_ 0 ⊆ _Vα_. If _β_ = _α_ 0 then trivially _Vβ_ = _Vα_ 0 ∈ _Vα_. For _α_ limit, if _β_ < _α_
then _β_ < _α_ 0 < _α_ for some _α_ 0 , and so by induction hypothesis _Vβ_ ∈ _Vα_ 0 ⊆ _Vα_.
_(2). Vα_ ={ _x_ :(∃ _γ_ < _α_ )( _x_ ∈ _Vγ_ ∨ _x_ ⊆ _Vγ_ )}= _acc_ { _Vγ_ : _γ_ < _α_ }.
_(3)._ If _δ_ < _α_ , then _acc_ ( _Vδ_ ∩{ _Vγ_ : _γ_ < _α_ })= _acc_ { _Vγ_ : _γ_ < _δ_ }= _Vδ_. The first
equality follows by (1) and the second equality follows by (2).
_(4)._ Immediate from (3) and (2).

To prove the right-to-left direction of the SP 2 Quasi-Categoricity Theorem 8.10,
it will now suffice to show that _Vα_ is not _just_ a level, but that _Vβ_ also _thinks_ that
_Vα_ is a level, whenever _β_ > _α_. To obtain this result, we begin by introducing an
extension of the idea of a transitive structure (cf. Definition 8.1). So a structure _M_
is _supertransitive_ iff: both _M_ is transitive and also _M_ is supertransitive in the sense
of §8.b, i.e. if _c_ ⊆ _b_ ∈ _M_ , then _c_ ∈ _M_. It is quite easy to show:

Proposition 8.27: _For any ordinal α_ ≥ 0 _:_

```
(1)Vαis supertransitive.
(2)if β < α, then the history { Vγ : γ < β } is in Vα.
```
_Proof._ Both proofs are by induction on _α_.
_(1)._ For _α_ =0 this is trivial. For _α_ = _α_ 0 +1, suppose that _b_ ∈ _Vα_ and _c_ ⊆ _b_. Then
_c_ ⊆ _b_ ⊆ _Vα_ 0 and so _c_ ∈ _Vα_. For _α_ limit, suppose that _b_ ∈ _Vα_ and _c_ ⊆ _b_. Then since _α_
is limit, _b_ ∈ _Vγ_ for some _γ_ < _α_. Then by induction hypothesis _Vγ_ is supertransitive
and so _c_ is in _Vγ_ and thus also in _Vα_.
_(2)._ For _α_ =0 this is trivial. For _α_ = _α_ 0 +1, suppose that _β_ < _α_. Then _β_ ≤ _α_ 0. If
_β_ < _α_ 0 then by induction hypothesis{ _Vγ_ : _γ_ < _β_ }is in _Vα_ 0 ⊆ _Vα_. If _β_ = _α_ 0 then it


```
8.c. scott–potter quasi-categoricity 199
```
suffices to note that{ _Vγ_ : _γ_ < _α_ 0 }⊆ _Vα_ 0 ; but this follows from Proposition 8.26(1).
For _α_ a limit, if _β_ < _α_ then _β_ < _α_ 0 < _α_ for some _α_ 0 , and so by induction hypothesis
the history{ _Vγ_ : _γ_ < _β_ }is in _Vα_ 0 ⊆ _Vα_.

Just as Δ 0 -formulas are absolute for transitive structures (see Proposition 8.13),
there is a simple class of formulas which are absolute for super-transitive struc-
tures. Let the _super-_ Δ 0 _-formulas_ be the smallest class of formulas extending the
Δ 0 -formulas such that if _φ_ ( _x_ )is super-Δ 0 , then so are(∃ _x_ ⊆ _y_ ) _φ_ ( _x_ )and(∀ _x_ ⊆
_y_ ) _φ_ ( _x_ ). Then, in parallel to Proposition 8.13, we have:

Proposition 8.28: _If A is a supertransitive structure, then every super-_ Δ 0 _-formula is
absolute for A._

_Proof._ Suppose the result holds for _φ_ ( _x_ ); it suffices to show it holds for(∃ _x_ ⊆
_y_ ) _φ_ ( _x_ ). Suppose that _b_ is in _A_ and that(∃ _x_ ⊆ _b_ ) _φ_ ( _x_ ). Since _A_ is supertransi-
tive, there is _a_ in _A_ such that _φ_ ( _a_ ). Then since the result holds for _φ_ ( _x_ ), we have
_A_ ⊧ _φ_ ( _a_ ). Since subset is a Δ 0 -notion, we have _A_ ⊧ _a_ ⊆ _b_ ∧ _φ_ ( _a_ ), so trivially
_A_ ⊧(∃ _x_ ⊆ _b_ ) _φ_ ( _x_ ). The other direction is similar.

We can use this to show that _acc_ , _H_ and _L_ are all _absolute_ within the stages of the
iterative hierarchy:

Proposition 8.29: _For any ordinal α:_

```
(1)if a ∈ Vα, then acc ( a )∈ Vαand acc ( a )= accVα ( a )
(2)if h ∈ Vα, then h is a history iff Vαthinks that h is a history
(3) if ℓ∈ Vα, then ℓ is a level iff Vαthinks that ℓ is a level.
```
_Proof.(1)._ Let _a_ ∈ _Vα_. Then _a_ ∈ _Vβ_ + 1 for some _β_ < _α_. Then _a_ ⊆ _Vβ_. Suppose _c_ is
in _acc_ ( _a_ ). Then _c_ ∈ _b_ ∨ _c_ ⊆ _b_ for some _b_ ∈ _a_. Then _b_ ∈ _Vβ_ and _b_ ⊆ _Vβ_ by transitivity
of _Vβ_. If _c_ ∈ _b_ then since _b_ ⊆ _Vβ_ we have _c_ ∈ _Vβ_. If _c_ ⊆ _b_ then since _b_ ∈ _Vβ_ we
have also _c_ ∈ _Vβ_ by supertransitivity of _Vβ_. Hence _acc_ ( _a_ )is a subset of _Vβ_ and so
_acc_ ( _a_ )∈ _Vβ_ + 1 ⊆ _Vα_ , which is the first part of (1).
To see that _acc_ ( _a_ )= _accVα_ ( _a_ ), simply note that the definition of _acc_ ( _a_ )is super-
Δ 0 and so absolute. In particular, the condition that _acc_ ( _x_ )= _w_ is equivalent to
_acc_ ( _x_ )⊆ _w_ and _w_ ⊆ _acc_ ( _x_ ); but the condition _acc_ ( _x_ )⊆ _w_ is super-Δ 0 , since it can
be written as(∀ _y_ ∈ _x_ )(∀ _z_ ∈ _y_ ) _z_ ∈ _w_ ∧(∀ _y_ ∈ _x_ )(∀ _z_ ⊆ _y_ ) _z_ ∈ _w_ , and the condition
_w_ ⊆ _acc_ ( _x_ )is Δ 0 , since it can be written as(∀ _z_ ∈ _w_ )(∃ _y_ ∈ _x_ )( _z_ ∈ _y_ ∨ _z_ ⊆ _y_ ).
_(2)._ The definition of a history is clearly super-Δ 0.
_(3)._ Since _h_ ⊆ _acc_ ( _h_ ), one has thatℓis a level iff there is a history _h_ ⊆ℓsuch that
ℓ= _acc_ ( _h_ ), which is then super-Δ 0.


200 categoricity and the sets

We are now in a position to prove both halves of the SP 2 Quasi-Categoricity Theo-
rem 8.10. We begin with the right-to-left half:

Proposition 8.30: _Vα_ ⊧SP 2 _, for all ordinals α_ > 0_._

_Proof._ Extensionality is trivial. To prove Levelling, fix _X_ ⊆ _Vα_. First suppose that
_Vα_ thinks that there is some levelℓsuch that(∀ _z_ : _X_ ) _z_ ∈ℓ. Then _X_ ∈ _Vα_ by the
supertransitivity of _Vα_. Next, suppose _X_ ∈ _Vα_ ; then there is some _β_ < _α_ such that
_X_ ⊆ _Vβ_ ∈ _Vα_ , and _Vα_ thinks that _Vβ_ is a level by Proposition 8.29 and Proposition
8.26.

We next prove the left-to-right half of the SP 2 Quasi-Categoricity:

Proposition 8.31: _If M_ ⊧SP 2 _, then M_ ≅ _Vαfor some ordinal α_ > 0_._

_Proof._ The model _M_ is extensional by definition. Also, _M_ is well-founded: by
Proposition 8.24(1), there is no infinite-descending∈ _M_ -chain of _M_ -levels, and so
by Proposition 8.25(1) there is no infinite descending∈ _M_ -chain. So, by Mostowski’s
Collapse Lemma 8.6, _M_ is isomorphic to a transitive structure _N_ , which itself is a
model of SP 2.
We claim _N_ is supertransitive. For, suppose that _c_ ⊆ _b_ ∈ _N_. By Levelling, there is
anℓ∈ _N_ such that _N_ thinks both thatℓis a level and that _b_ ⊆ℓ. By the transitivity
of _N_ , indeed _b_ ⊆ℓand hence _c_ ⊆ℓ. So _c_ ∈ _N_ by Levelling again.
The entities which _N_ thinks are its levels are well-ordered, by Proposition 8.24.
So let these be enumerated byℓ _β_ for ordinals _β_ < _α_. We show, by induction on
_β_ < _α_ , thatℓ _β_ = _Vβ_.
Suppose, for induction, thatℓ _γ_ = _Vγ_ for all _γ_ < _β_. By Lemma 8.26, _h_ ={ _Vγ_ :
_γ_ < _β_ }is a history. Since _Vγ_ =ℓ _γ_ , we have that _h_ ⊆ℓ _β_ , so that _h_ ∈ _N_ by super-
transitivity of _N_. Moreover, _N_ thinks that _h_ is a history, by the same argument as
Proposition 8.29(2). We now claim that _acc_ ( _h_ )=ℓ _β_. For, suppose that _x_ ∈ _acc_ ( _h_ );
then _x_ ∈ _Vγ_ ∨ _x_ ⊆ _Vγ_ for some _γ_ < _β_ , and so _x_ ∈ℓ _γ_ ∨ _x_ ⊆ℓ _γ_ ; and since this is
Δ 0 , the structure _N_ thinks this too; so in fact _x_ ∈ℓ _β_ , by Proposition 8.23(2), and
so _acc_ ( _h_ )⊆ℓ _β_. The converse inclusion is similar. So by Lemma 8.26(2), we have
_Vβ_ = _acc_ ( _h_ )=ℓ _β_. This completes the induction. So,ℓ _β_ = _Vβ_ for all _β_ < _α_.
Finally, we claim that _N_ = _Vα_. For the inclusion _N_ ⊆ _Vα_ , note that if _x_ ∈ _N_ then
by Levelling there is _β_ < _α_ such that _x_ ⊆ℓ _β_ = _Vβ_ , and then _x_ ∈ _Vβ_ + 1 ⊆ _Vα_. For the
inclusion _Vα_ ⊆ _N_ , observe that if _x_ ∈ _Vα_ then _x_ ⊆ _Vβ_ =ℓ _β_ for some _β_ < _α_ , and so
_x_ ∈ _N_ since _N_ is supertransitive.

This completes our proof of Theorem 8.10. To finish this appendix, we establish
some quick _deductive_ consequences of ZFC 2 :


```
8.c. scott–potter quasi-categoricity 201
```
Proposition 8.32:ZFC 2 _deductively proves:_

```
(1) SP 2
(2)the levels are precisely the Vα
(3) ord( a )= V rank( a ) for all a.
```
_Proof.(1)._ Our proof that each _Vα_ is a level from Proposition 8.26(4) carries over
word-for-word into a proof in a deductive system for ZFC 2. From this, we can easily
prove Levelling, working deductively in ZFC 2. First suppose a second-order _X_ is
such that∃ _x_ ∀ _z_ ( _z_ ∈ _x_ ↔ _X_ ( _z_ )). Since we are working in ZFC 2 , choose _α_ such that
_x_ ⊆ _Vα_. Then since _y_ = _Vα_ is a level, we have(∃ _y_ : _L_ )(∀ _z_ : _X_ ) _z_ ∈ _y_. Conversely,
suppose that(∃ _y_ : _L_ )(∀ _z_ : _X_ ) _z_ ∈ _y_. Since the level _y_ is by definition a set, this
means that all instances of _X_ are in _y_ , so∃ _x_ ∀ _z_ ( _z_ ∈ _x_ ↔ _X_ ( _z_ ))by Separation in
ZFC 2.
Having established (1), for the remainder of the proof we may appeal to all the
results established in §8.b.
_(2)._ We argue by induction, using the fact that membership well-orders the lev-
els. By Proposition 8.26(4), it suffices to show that every level is of the form _Vα_ for
some _α_. Suppose it is true for all levelsℓ′∈ℓthat there is _α_ ℓ′such thatℓ′= _Vα_ ℓ′.
Let _α_ = supℓ′∈ℓ( _α_ ℓ′+ 1 ). We show that _Vα_ = ℓ. Proposition 8.23(2) tells us
thatℓ= _acc_ ({ℓ′∈ℓ: _L_ (ℓ′)}. Suppose that _x_ ∈ℓ. Then there isℓ′∈ℓsuch
that _x_ ∈ℓ′∨ _x_ ⊆ℓ′. By the transitivity ofℓ′(see Proposition 8.21(4)) we have
_x_ ⊆ℓ′= _Vα_ ℓ′, and so since _α_ ℓ′ < _α_ we have _x_ ∈ _Vα_. Conversely, suppose that
_x_ ∈ _Vα_. Then there is _β_ < _α_ such that _x_ ∈ _Vβ_ + 1. Then _β_ < _α_ ℓ′+1 for someℓ′∈ℓ.
Then _β_ + 1 ≤ _α_ ℓ′+1 and so _β_ ≤ _α_ ℓ′and hence _x_ ∈ _Vα_ ℓ′=ℓ′. So there isℓ′∈ℓsuch
that _x_ ∈ℓ′∨ _x_ ⊆ℓ′, and so _x_ ∈ℓ.
_(3)._ This follows from (2) and the definitions of ord( _a_ )and rank( _a_ ).



