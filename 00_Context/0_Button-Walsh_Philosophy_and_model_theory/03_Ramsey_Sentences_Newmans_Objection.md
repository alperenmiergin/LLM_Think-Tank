**Kaynak:** [[00_Context/0_Button-Walsh_Philosophy_and_model_theory/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

## 3 Ramsey sentences and Newman’s objection

Whilst the main focus of this book is the philosophy of mathematics, Chapter 2
puts us in an excellent position to consider a particular topic in the philosophy of
science. In particular, in this chapter, we will consider some recent discussions of
Ramsey sentences and Newman’s objection.
In 1928, Newman presented a now famous objection to Russell’s (1927) theory
of causation. The simplest form of his objection is just an application of the Push-
Through Construction of §2.1. In this simple form, Newman’s objection has a rather
specific target. However, as subsequent commentators have noted, Newman’s ob-
jection can be directed at a wider range of positions. The aim of this chapter is to
develop several versions of the Newman objection, and to relate them to different
notions of _conservation_. Our main observation is that the best version of Newman’s
objection is a slightly spruced-up application of the Push-Through Construction,
and that the dialectic surrounding this objection should precisely parallel the di-
alectic surrounding Putnam’s permutation argument.

### 3.1 The o/t dichotomy

The focus of this chapter is a certain kind of _structuralism_ within the philosophy of
science. So we must start by motivating that version of structuralism. It begins with
the idea is that our scientific theorising is split into two parts. The _okay_ part is in
good standing, and poses no particular philosophical puzzles. Unfortunately, there
is also a _troublesome_ part.
Such a dichotomy might arise by treating the _observational_ as okay but the _the-
oretical_ as troubling. Consider, in particular, the following view. Some statements
are observation statements. Their role is simply to make claims about observations,
and nothing beyond that. There is no mystery (on this view) concerning how ob-
servation statements work: to determine whether they are true, one simply makes
a relevant observation, and thereby checks whether the world is as the observation
statement claims. An example of an observation statement might be ‘a cat is on the
mat’, and to check whether this is true, you simply _look and see_. But, continuing
with this view, some statements are theoretical statements. An example might be


56 ramsey sentences and newman’s objection

‘carbon has fifteen isotopes, only two of which are stable’. And there may be some
initial mystery concerning how we could so much as _check_ whether the world is as
the theoretical statement claims.
For those who want to effect such a dichotomy between the observational and
the theoretical, the dichotomy shines through in the _vocabulary_. The predicate ‘...is
a cat’ is an observation-predicate, but the predicate ‘...is a carbon isotope’ is not. To
keep track of this, in what follows we letVbe the signature which we use to frame
our scientific theories. (Recall from Definition 1.1 that a signature is a formal, reg-
imented _vocabulary_ .) ThenVois a privileged sub-signature ofV, which is treated
asV’s _observational_ vocabulary, andVt, i.e.V∖Vo, is its _theoretical_ vocabulary.
Now, we have motivated an okay/troublesome dichotomy—more briefly, an o/t
dichotomy—by considering a dichotomy between the observational and theoret-
ical. We do not want to suggest that this is the only way to generate an o/t di-
chotomy.^1 Equally, we do not want to suggest that there _is_ an important o/t di-
chotomy (we revisit this in §3.4). We just want to use model theory to explore what
happens _if_ one effects some o/t dichotomy.

### 3.2 Ramsey sentences

Suppose, then, that we effect an o/t dichotomy. Our next question is how we should
handle this within our philosophising. This is the context in which Ramsey sen-
tences present themselves.
Ramsey sentences are sentences of second-order logic. We outlined second-
order logic in §§1.9–1.11; here are the main points. Syntactically, second-order logic
allows us to quantify into ‘predicate position’. Semantically, matters are more sub-
tle; but we can afford to relegate the subtleties to footnotes, since all of the results of
this chapter go through with either of the two most common semantics for second-
order logic, namely, _full_ semantics and _faithful Henkin_ semantics. (For more, see
§§1.9–1.11, and footnotes 17, 23, 24, and 30 of this chapter.)
Ramsey sentences are defined _from_ theories. So we start by making some as-
sumptions about the theory, _T_ , whose Ramsey sentence we want to define. (These
assumptions hold good throughout this chapter, but no further.)
First, we assume that our theory, _T_ , is given in the signatureV, which has an
appropriate o/t dichotomy. So,VoandVtare disjoint, but together exhaustV.
Second, we assume thatVis relational, i.e. that it contains only predicates. This
is no loss, as we can simulate constants and functions using relations and identity.
Third, we assume that _T_ is a _finite_ set of sentences. This is a bigger assumption.

(^1) Lewis (1970), for example, considered the _old_ / _theoretical_ distinction. And in the philosophy of math-
ematics, there is Hilbert’s (1925: 179) analogous real/ideal distinction. In §4.7, we consider the idea that
_infinitesimals_ are ideal.


```
3.3. the promise of ramsey sentences 57
```
However, once we have made it, we can harmlessly treat _T_ as a _single_ sentence, by
conjoining all of its finitely many members. Moreover, since _T_ is finite, only finitely
manyVo-symbols occur in _T_. And this allows us to construct _T_ ’s Ramsey sentence.
Intuitively, we do this by treating all of _T_ ’s theoretical predicates as variables—i.e.
we treat theVtrelation symbols as relation-variables—and then bind them with
existential quantifiers:

Definition 3.1: _Let T be a finite_ V _-theory, and let R_ 1 , ..., _Rnbe the only_ Vt _-predicates
appearing in T. Where_ ^ _T is the conjunction of the sentences in T, and whereT_ ^[ _X_ / _R_ ] _is
the result of replacing each instance of the predicate RiinT with the variable X_ ^ _i, we say
that T’s_ Ramsey sentence _is_

```
Ramsey( T ):=∃ X 1 ...∃ Xn ^ T [ X / R ]
```
Consequently, Ramsey( _T_ )is a second-orderVo-sentence; that is, the only symbols
occuring in Ramsey( _T_ )are logical expressions andVo-symbols. (And note that _T_ ’s
Ramsey sentence is only _definable_ when _T_ is finite.)

### 3.3 The promise of Ramsey sentences

Ramsey sentences were first formulated in Ramsey’s posthumously published ‘The-
ories’.^2 Carnap brought them to prominence in the late 1950s and 1960s, relating
them to his long-running concerns about the meaning of theoretical terms.^3 In this
section, we will outline a contemporary motivation for such concerns.
As noted in §2.3, it is plausible that our (causal) acquaintance with cats helps to
explain why our word ‘cat’ refers to cats rather than to cherries. In this case, however,
we are likely to treat ‘...is a cat’ as an observational predicate. It is much less clear
what could pin down the reference of _theoretical_ predicates. Crudely put, we cannot
point at electrons in the same way as we point at cats. And so it may seem that our
knowledge of theoretical predicates will have to come via description—in terms of
their impact on our more immediate observations—rather than by acquaintance.^4
If we buy this line of thought, then Ramsey( _T_ )may start to recommend itself
to us. After all, Ramsey( _T_ )is aVo-sentence, and so it contains no theoretical vo-
cabulary. As such, it is not obviously vulnerable to the concerns just mentioned.^5
Moreover, and crucially, not much is lost by considering Ramsey( _T_ )rather than _T_

(^2) Ramsey (1931).
(^3) Carnap (1958: 245, 1959: 160–5, 1966: 248, 252, 265ff). For an account of the history, see Psillos
(1999: 46–9).
(^4) See Maxwell (1971), Zahar and Worrall (2001: 239, 243), and Cruse (2005: 562–3), and the discussion
of moderate objects-platonism in Chapter 2.
(^5) See Carnap (1958: 242, 245, 1966: 251, 269).


58 ramsey sentences and newman’s objection

itself, for it is easy to show that the two are _observationally equivalent_ in the following
sense (for the proof, see Proposition 3.5, below):^6

Proposition 3.2: _Let T be a finite_ V _-theory. Then T_ ⊧ _φ iff_ Ramsey( _T_ )⊧ _φ, for all_
Vo _-sentences φ._

This result led Carnap to claim that Ramsey( _T_ )expresses _T_ ’s ‘factual content’.^7
Suppose we follow Carnap’s initial motivations: there are difficulties with the
Vo-vocabulary; but Ramsey( _T_ )does not share those difficulties; and indeed
Ramsey( _T_ )has the same observational content as _T_ , in the sense of Proposition
3.2. But suppose we _also_ maintain that Ramsey( _T_ )expresses some additional con-
tent, beyond its observational consequences. That additional content is existen-
tial: there _are_ some theoretical objects and relations, whose behaviour is specified
by Ramsey( _T_ ). It is worth noting that, for those who accept an o/t dichotomy,
Ramsey( _T_ )will seem to provide the fullest thesis that one could plausibly hope
to maintain concerning a _troublesome_ realm within which determinate reference is
bound to be problematic.^8 And this line of thought culminates in what we call _ram-
sified realism_.^9 This holds that, for a physical theory _T_ ,

```
(a)Ramsey( T )expresses T ’s genuine content, but
(b)the content expressed by Ramsey( T )goes significantly beyond T ’s mere ob-
servational consequences, since Ramsey( T )makes substantial—and hope-
fully true—claims about the theoretical.
```
### 3.4 A caveat on the o/t dichotomy

In what follows, we will use model-theoretic results to raise problems for ramsified
realism. First, though, we should emphasise that there are plenty of problems with
ramsified realism which have nothing to do with model theory.

(^6) Carnap (1958: 245, 1959: 162–4, 1963: 965, 1966: 252), Psillos (1999: 292 n.6), Worrall (242–3 2007:
150), and Zahar and Worrall (2001).
(^7) Carnap (1959: 164–5). Carnap’s own interest in Ramsey sentences was sharpened by a further obser-
vation: Ramsey( _T_ )∧(Ramsey( _T_ )→ _T_ ^)⊧ _T_ ^and _T_ ⊧Ramsey( _T_ )∧(Ramsey( _T_ )→^ _T_ ). Consequently,
Carnap maintained that physical theories can be exclusively and exhaustively factored into a purely _fac-
tual_ part, Ramsey( _T_ ), and a purely _analytic_ part, the conditional(Ramsey( _T_ )→ _T_ ^), which records the
theory’s ‘meaning postulates’ (1958: 246, 1959: 163–4, 1963: 965, 1966: 270–2). So Carnap’s own interest
in Ramsey sentences is tied to his long-standing interest in analyticity. Admittedly, most contemporary
philosophers are less interested in analyticity than Carnap was; so the conditional(Ramsey( _T_ )→^ _T_ ),
which is now called _T_ ’s _Carnap sentence_ , will not detain us.
(^8) See Worrall (2007: 148) and Demopoulos (2011: 200).
(^9) Psillos (1999: ch.3) seems to suggest that Carnap himself was a ramsified realist. For a contrasting
view, see Demopoulos (2003: 384–90, 2011: 195–7). We cannot pursue this in detail, but we note that
Carnap (esp. 1966: 256) may well have simply _embraced_ the conclusions of the various Newman-style ob-
jections against ramsified realism.


```
3.5. newman’s criticism of russell 59
```
Crucially, ramsified realism only makes sense given that one has accepted some
o/t dichotomy. And it is worth emphasising that this really is a _dichotomy_. The o/t
distinction is _exhaustive_ , in thatVo∪Vt=V. It is _exclusive_ , in thatVo∩Vt=∅.
Then all and only the troublesome vocabulary is ‘ramsified away’ (i.e. replaced with
an existentially bound relation-variable).
It is far from clear that natural language—whether mundane or scientific—really
displays such a dichotomy. To take an example from Cruse, consider the predicate
‘ _x_ is bigger than _y_ ’.^10 Some instances of this are _observational_ : Big Ben is clearly
bigger than the tourist next to it. However, some instances seem straightforwardly
_theoretical_ : protons are bigger than electrons. But some instances seem to be _mixed_ :
Big Ben is bigger than a proton. So the predicate ‘ _x_ is bigger than _y_ ’ resists categori-
sation as (dichotomously) either observational or theoretical.
If we insist on an o/t dichotomy, then the only way to handle this natural-
language predicate will be to split it in half. We will use aVo-predicate, _B_ 1 , to for-
malise the observational instances, and aVt-predicate, _B_ 2 , to formalise the theoret-
ical instances. When it comes to the mixed instances, we must make a choice as to
whether to formalise them with _B_ 1 or _B_ 2. However, it is likely that we will use _B_ 2 ,
since we cannot directly observe the size of the proton, so that these judgments of
comparative size must be (somewhat) troublesome. In this manner, we will retain
the o/t dichotomy and ‘ramsify away’ _B_ 2 but not _B_ 1. How (un)satisfying this is will,
of course, depend upon whether we think that there really are two dichotomously
different relations here.
This simple example illustrates a fundamental point. It is one thing to believe
that there is a _distinction_ between the observational and the theoretical; it is another
to believe that there is a _dichotomy_ , in the sense endorsed by ramsified realism. For
our part, we believe that any distinction we should draw between between the ob-
servational and the theoretical is likely to be, not a once-and-for-all dichotomy, but
rough and ready, porous, and context-sensitive.^11 So, _we_ are not ramsified realists.
However, to pursue this any further would take us deep into issues at the inter-
section of philosophy of science and philosophy of perception. We raise the point
simply to highlight that the very idea of an o/t dichotomy is quite contentious, and
for reasons which have nothing to do with model theory.

### 3.5 Newman’s criticism of Russell

With this caveat out of the way, we will consider various model-theoretic results
which raise problems for ramsified realists (who _do_ embrace an o/t dichotomy).

(^10) Cruse (2005: 561).
(^11) This is the line pushed in Button (2013: 50–1), and it draws in various ways on Maxwell (1962: 7–8,
14–15), Putnam (1987: 1, 20–1, 26–40, 1994: 502ff), and Okasha (2002: 316–9).


60 ramsey sentences and newman’s objection

These problems came to contemporary prominence when Demopoulos and Fried-
man related Ramsey sentences to Newman’s criticism of Russell.^12
As Newman understood Russell’s position in _The Analysis of Matter_ , Russell was
committed to the doctrine that we could only know the _structure_ of the external
world. Newman’s objection to this view was straightforward. For any structure _W_ ,

Any collection of things can be organised so as to have the structure _W_ , provided there
are the right number of them. Hence the doctrine that _only_ structure is known involves
the doctrine that _nothing_ can be known that is not logically deducible from the mere fact
of existence, except (‘theoretically’) the number of constituting objects.^13

Note that Newman’s initial claim is _just_ a restatement of the Push-Through Con-
struction from §2.1. Indeed Newman gestures at the Construction himself.^14
Newman’s objection raises serious problems for anyone who thinks that we can
know only the structure of the external world. But this seems to be an extremely
restricted target.^15 For example, our ramsified realist accepts an o/t dichotomy, and
glosses it in terms of the observational and the theoretical. Given the troublesome
nature of the theoretical, our ramsified realist might concede that our knowledge of
the external _theoretical_ realm is limited to its structure. But she will surely claim that
we can know more about the external _observational_ realm than its mere structure.
So the obvious question to ask is whether Newman’s objection against Russell can
be turned into an objection against ramsified realism.
Over the next few sections, we will try to formulate the strongest possible
Newman-style objection against ramsified realism. It arises by combining two sim-
ple thoughts: one relating to the Push-Through Construction; the other relating to
various model-theoretic notions of _conservation_.

### 3.6 The Newman-conservation-objection

We start by developing the notion of _conservation_ , and proving that _Ramsey sentences
are object-language statements of conservation_. This is essentially our Proposition
3.5, below. We then use this to present an interesting, but ultimately ineffectual,
Newman-style objection against ramsified realism.
Suppose that _S_ is a theory which has been formulated in a purely observational
language, and that _T_ is a wider theory of physics. Suppose, too, that we have a guar-
antee that no more observational consequences follow from _T_ than follow from _S_
alone. Obviously, the notions of ‘guarantee’ and ‘following from’ need to be made

(^12) See Demopoulos and M. Friedman (1985), Newman (1928), and Russell (1927).
(^13) Newman (1928: 144), with a slight change to typography.
(^14) Newman (1928: 145–6).
(^15) See Zahar and Worrall (2001: 238–9, 244–5), Worrall (2007: 150), and Ainsworth (2009: 143–4).


```
3.6. the newman-conservation-objection 61
```
more precise. But if they are suitably rich, this guarantee will allow us to become
instrumentalists (or fictionalists) about everything in _T_ which goes beyond _S_. That
is: we could in good conscience employ the full power of _T_ , without having to insist
that its distinctively theoretical claims are _true_ ; they would simply be an expedient
way to allow us to reason our way around observables. (Note, in passing, that this
line of thought seems to pull us away from ramsified realism, since ramsified real-
ists wanted to incur some _substantive_ theoretical commitments; this was the point
of clause (b) of §3.3.)
To tidy up the line of thought that points us towards instrumentalism, we can
employ the following definition:

Definition 3.3: _Let T be an_ L+ _-theory and S be an_ L _-theory, with_ L+⊇L_. T is_
consequence-conservative _over S iff: if T_ ⊧ _φ then S_ ⊧ _φ, for all_ L _-sentences φ._

The relation _T_ ⊧ _φ_ in this definition is the model-theoretic consequence relation
from §1.12, defined by: if _M_ ⊧ _T_ then _M_ ⊧ _φ_ , for all structures _M_. The immediate
interest in consequence-conservation is as follows. Suppose that _S_ is the set of all
_true_ observation sentences, expressed in some suitably rich vocabulary. To say that
_T_ is consequence-conservative over _S_ is, then, to say that _T_ is perfectly ‘observa-
tionally reliable’. After all, any observation sentence entailed by _T_ is entailed by _S_ ,
and hence true by assumption.
Here, though, is a second way to think about ‘observational reliability’. Imagine
that we can turn any model of _S_ into a model of _T_ , just by interpreting a few more
symbols in _T_ ’s vocabulary. Then any configuration of observational matters that
makes _S_ true is _compatible_ with the truth of _T_. Intuitively, then, _T_ cannot make
any false judgements about observational matters; so, again, _T_ is ‘observationally
reliable’.
Formalising these intuitive ideas yields a second notion of conservation. We al-
ready formalised the idea of interpreting new symbols, when introducing Robinso-
nian semantics (see Definition 1.4). So we can offer the following:

Definition 3.4: _Let T be an_ L+ _-theory and S be an_ L _-theory, with_ L+⊇L_. T is_
expansion-conservative _over S iff: for any_ L _-structure M such that M_ ⊧ _S, there is
an_ L+ _-structure N which is a signature expansion of M and such that N_ ⊧ _T._

It is natural to ask how these two notions of conservation relate to each other. In
fact, the Ramsey sentence allows us to demonstrate that they align perfectly:^16

(^16) We have not found Proposition 3.5 stated in the literature on Ramsey sentences, though we note three
near misses. First: as just noted, Carnap’s Proposition 3.2 is an immediate corollary of Proposition 3.5.
Second: Worrall (2007: 151–2) suggests that Demopoulos and M. Friedman (1985) might want to invoke
something like Proposition 3.5. Third: Ketland (2009: 42) obtains a restricted corollary of Proposition 3.5.


62 ramsey sentences and newman’s objection

Proposition3.5: _Let T be any finite_ V _-theory, and let S be any_ Vo _-theory. The following
are equivalent:_

```
(1)T is consequence-conservative over S
(2)T is expansion-conservative over S
(3) S ⊧Ramsey( T )
```
_Proof.(3)_ ⇒ _(2)._ Suppose _S_ ⊧Ramsey( _T_ ). Let _M_ ⊧ _S_. Since _M_ ⊧Ramsey( _T_ ),
we can choose suitable witnesses for Ramsey( _T_ )’s initial existential quantifiers, and
then take these witnesses as the interpretations of theVt-predicates, giving us aV-
structure _N_ ⊧ _T_ which is a signature expansion of _M_.
_(2)_ ⇒ _(1)._ Let _φ_ be anyVo-sentence such that _T_ ⊧ _φ_. Suppose _M_ ⊧ _S_. As _T_ is
expansion-conservative over _S_ , there is aV-structure _N_ ⊧ _T_ which is a signature
expansion of _M_. Since _N_ ⊧ _T_ , we have _N_ ⊧ _φ_ , and hence _M_ ⊧ _φ_ since _φ_ is a
Vo-sentence and _N_ and _M_ agree on the interpretation of theVo-vocabulary. Since
_M_ was arbitrary, _S_ ⊧ _φ_.
_(1)_ ⇒ _(3). T_ ⊧ Ramsey( _T_ ),^17 and Ramsey( _T_ )is aVo-sentence. So if _T_ is
consequence-conservative over _S_ , then _S_ ⊧Ramsey( _T_ ).

Informally glossed, this Proposition states that Ramsey sentences are object-
language statements of conservation (in both senses). Additionally, Proposition
3.2—which told us that _T_ and Ramsey( _T_ )are observationally equivalent—is an
easy corollary of Proposition 3.5.^18 However, it should be emphasised that this
Proposition crucially relies upon the use of _second-order_ logic: not only does con-
dition (3) involve Ramsey sentences, which are by definition second-order, but the
equivalence between (1) and (2) _fails_ for first-order theories (see §3.b).
This Proposition now allows us to formulate a neat (if ultimately ineffectual)
Newman-style objection against ramsified realism:

_Newman-conservation-objection. Instrumentalists and realists can agree that their
favourite theories should be_ Vo _-sound, i.e. that all of their_ Vo _-consequences should be
true._^19 _Where S is the set of all true_ Vo _-sentences, to say that T is_ Vo _-sound is to say that
T is consequence-conservative over S. By Proposition 3.5, this is equivalent to the claim
that S_ ⊧Ramsey( _T_ )_. So_ Ramsey( _T_ ) _expresses no truth-evaluable content beyond T’s
observational consequences. So clause (b) of §3.3—which states precisely that the content
expressed by_ Ramsey( _T_ ) _goes_ beyond _T’s mere observational consequences—is false,
and ramsified realism fails._

(^17) Assuming only that our structures satisfy a few instances of the Comprehension Schema (see §1.11).
(^18) For the left-to-right direction of Proposition 3.2, just take _S_ =Ramsey( _T_ ), so that condition (3) of
Proposition 3.5 is trivially satisfied, and then apply the equivalence between condition (3) and condition (1)
guaranteed by Proposition 3.5. The right-to-left direction of Proposition 3.2 follows since _T_ ⊧Ramsey( _T_ ),
as we had occasion to note in the proof of Proposition 3.5.
(^19) Ketland (2009: Definition D) callsVo-soundness ‘weak _O_ -adequacy’.


```
3.7. observation vocabulary versus observable objects 63
```
### 3.7 Observation vocabulary versus observable objects

The ramsified realist has only one possible response to the Newman-conservation-
objection: she must deny that instrumentalists are committed to theVo-soundness
of physical theories.
As Worrall explains, this is much less strange than it initially sounds.^20 Suppose
_T_ entails the existence of an object which falls under _no_ Vo-predicate. If we believe
that ourVo-vocabulary is adequate to deal with any observable object we encounter,
then we can characterise this by saying that _T_ entails aVo-sentence which says, in
effect, ‘there is an unobservable object’. So, in order for _T_ to beVo-sound, there
must be unobservable objects. But instrumentalists need not be committed to the
existence of any unobservables. So instrumentalists should not be regarded as being
committed to theVo-soundness of physical theories after all.
To deal with this point, in what follows we will assume that our observational vo-
cabularyVoincludes a primitive one-place predicate, _O_ , which is intuitively to be
read as ‘...is an observable object’.^21 In this new setting, we should not count just _any_
Vo-sentence as an _observation_ sentence. Rather, the observation sentences will be
just those sentences which, intuitively, are restricted to telling us _about_ the observ-
able objects. Specifically, the observation sentences are theVo-sentences whose
quantifiers are restricted to _O_. Call these theVo _O_ -sentences. We define these pre-
cisely as follows.

Definition 3.6: _Where φ is any_ Vo _-formula, we recursively define:_

```
φO := φ , if φ is atomic
( φ ∧ ψ ) O :=( φO ∧ ψO )
(¬ φ ) O :=¬( φO )
(∃ xφ ) O :=∃ x ( O ( x )∧ φO )
(∃ Xnφ ) O :=∃ Xn (∀ v [ Xn ( v )→( O ( v 1 )∧...∧ O ( vn ))]∧ φO )
```
_The set of_ Vo _O-formulas is then_ { _φO_ : _φ is a_ Vo _-formula_ }_._

We can now easily accommodate Worrall’s point. The sentence ‘there are unob-
servable objects’, i.e.∃ _x_ ¬ _O_ ( _x_ ), uses an unrestricted existential quantifier, and so is
aVo-sentence but not aVo _O_ -sentence. Moreover, in these terms, instrumentalists
and realists will agree only on the fact that _T_ should entail trueVo _O_ -sentences, i.e.
that theories should beVo _O-sound_.^22 But it is clear thatVo _O_ -soundness is strictly

(^20) Worrall (2007: 152).
(^21) This predicate allows us to simulate Ketland’s (2004: 289ff, 2009: 38ff) use of a two-sorted language.
(^22) This is essentially Ketland’s (2004: Definition D) notion of ‘weak empirical adequacy’.


64 ramsey sentences and newman’s objection

weaker thanVo-soundness, and it is only obvious that _realists_ have any motivation
for insisting on the latter. So the Newman-conservation-objection fails.

### 3.8 The Newman-cardinality-objection

Our aim, now, is to present a version of Newman’s objection which can handle the
fact that the quantifiers range over observables and unobservables alike. The es-
sential idea behind the objection is quite simple. In concessive spirit, we will grant
to the ramsified realist that there are no problems whatsoever with regard to the
Vo _O_ -claims. In particular, they have an _intended model_. But we will then ask the
ramsified-realist what more it takes for her ‘troublesome’ claims to be true. Model
theory threatens that she must answer, only, that there be _enough_ unobservables.
To implement this strategy, let _C_ be the _correct_ model of theVo _O_ -sentences. Now,
in allowing that there _is_ such a model, we are simply waiving any Putnam-esque
concerns about the reference ofVo-expressions, such as those from §2.3. To do this,
though, is just to allow the ramsified realist (for the sake of argument) that this is
all _okay_.
Since _C_ is the intended model of theVo _O-sentences_ , it is aVo-structure whose do-
main _C_ = _OC_. Since _C_ is _correct_ , _C_ comprises all and only the actual observable
entities in the physical universe, and any given entities stand in a certain observa-
tion relation to each other iff _C_ represents them as so doing.
We now turn to the question of what it takes for _T_ , or Ramsey( _T_ ), to be _true_.
Since we have granted the ramsified realist the existence of an _intended model_ of
theVo _O_ -sentences, at the very least _T_ or Ramsey( _T_ )must be _compatible_ with _C_.
Somewhat more precisely, there must be a model of _T_ whose ‘observable part’ is
just _C_ itself. But, to make this fully precise, we must explain the idea of a ‘part’ of a
structure. We do this by introducing the notion of a substructure:

Definition 3.7: _Let M and N be_ L _-structures, with M_ ⊆ _N. Then we say that M is a_
substructure _of N iff: for any_ L _-constant symbol c, any n-place_ L _-relation symbol R,
and any n-place_ L _-function symbol f :_^23

```
cM = cN
RM = RN ∩ Mn
fM = fN ∣ Mn
```
(^23) The notation _g_ ∣ _X_ indicates _g_ ’s restriction to _X_ , implemented set-theoretically as _g_ ∣ _X_ :={( _x_ , _g_ ( _x_ ))∈
_g_ : _x_ ∈ _X_ }. When we consider HenkinL-structures, as in §1.6, the definition of _substructure_ requires two
further clauses (see Shapiro 1991: 92) for each _n_ < _ω_ : (i) if _Q_ ∈ _M_ rel _n_ then there is some _R_ ∈ _N_ rel _n_ such that
_Q_ = _R_ ∩ _Mn_ ; and (ii) if _g_ ∈ _M_ fun _n_ then there is some _h_ ∈ _N_ fun _n_ such that _g_ = _h_ ∣ _Mn_.


```
3.8. the newman-cardinality-objection 65
```
Now, where _M_ is aVo-structure, we say that _M’s observable part,_ Ob( _M_ ), is theVo-
reduct of the substructure of _M_ whose domain is the observables in _M_ , i.e. _OM_.^24
Since we have assumed thatVonly contains relation symbols, this amounts to the
following condition: Ob( _M_ )’s domain is _OM_ , and _R_ Ob( _M_ )= _RM_ ∩( _OM_ ) _n_ for
each _n_ -placeVo-predicate, _R_.^25
We now say that _T_ is _C-alright_ iff there is aV-structure _M_ ⊧ _T_ such that
Ob( _M_ )= _C_.^26 So, intuitively, if _T_ or Ramsey( _T_ )is true then they must (at least)
be _C_ -alright.
To run a Newman-style argument in this setting, we simply need to combine
two ideas that we have encountered already. The first idea comes from the Push-
Through Construction of §2.1, which was also the basis for Newman’s original ob-
jection to Russell in §3.5. In the present setting, the important point is that _any_
object will do as an ‘unobservable’; so we can push-through the ‘unobservables’ as
much as we like, so long as we leave the ‘observables’ undisturbed.^27
The second idea relates to a trivial corollary of Proposition 3.5, that _T_ is
expansion-conservative over Ramsey( _T_ ). This lets us move freely between models
of _T_ and models of Ramsey( _T_ ), by signature-expansion and reduction.
Combining these two ideas, we obtain just the result we need:^28

Proposition 3.8: _Let T be any_ V _-theory, with O_ ∈Vo_. Let A be any_ V _-structure
satisfying_ ∀ _xO_ ( _x_ )_. Then the following are equivalent:_

```
(1)There is a V -structure M such that M ⊧ T and Ob( M )= A
(2)There is a cardinal κ with the following property: if U is a set of cardinality
κ with A ∩ U =∅ , then there is a Vo -structure P with domain A ∪ U, with
Ob( P )= A and with P ⊧Ramsey( T )
```
(^24) When we consider HenkinL-structures, we also need to stipulate that Ob( _M_ )rel _n_ :={ _X_ ∩( _OM_ ) _n_ :
_X_ ∈ _M_ rel _n_ }and Ob( _M_ )fun _n_ :={ _g_ ∣( _OM_ ) _n_ : _g_ ∈ _M_ fun _n_ and range( _g_ ∣( _OM_ ) _n_ )⊆ _OM_ }.
(^25) For similar notions, see Przełęckie (1973: 287), Hodges (1993: 202), and Lutz (2014: §4.3).
(^26) There is a delicacy here. So far, we have made no particular assumptions about how the observable
_entities_ interact with the observation _relations_. Two plausible assumptions are: (a) observable objects never
fall underVt-predicates, or (b) unobservable objects never fall underVo-predicates. The legitimacy and
consequences of such assumptions are touched upon in the literature, in particular in connection with
predicates like ‘ _x_ is bigger than _y_ ’ which, as discussed in §3.4, resist categorisation as (dichotomously)
either observational or theoretical. (See Cruse 2005: 561ff; Ainsworth 2009: 145–6, 155–60; Ketland 2004:
292, 2009: 38–9.) However, _provided_ that some o/t dichotomy has been embraced, we think that we can
sidestep this debate. A philosopher who rejects (b) might insist on expanding _C_ , so that it includes all
unobservable entities which fall under some observation relation. If we concede this point, then we will
want to expand the definition of Ob( _M_ )accordingly. (It is harder to see how rejecting (a) would force us
to change anything in our setup.) But making these changes this will not affect the fundamental idea behind
Proposition 3.8: we can always arbitrarily permute away the entities falling outside Ob( _M_ )’s domain.
(^27) This idea is in Winnie (1967: 226–7). Putnam (1981: 218, Second Comment) mentions it in his fullest
presentation of his permutation argument. See also Button (2013: 41–2).
(^28) Again, as is standard, we use _κ_ to denote a cardinal; see the end of §1.b for a brief review of cardinals.


66 ramsey sentences and newman’s objection

_Proof.(1)_ ⇒ _(2)._ Let _M_ be as in (1), so _OM_ = _OA_ = _A_. Let _κ_ be the cardinality of
the unobservables in _M_ , i.e. _κ_ =∣ _M_ ∖ _A_ ∣. Let _U_ be any set of cardinality _κ_ with _A_ ∩
_U_ =∅; so there is a bijection _g_ :( _M_ ∖ _A_ )Ð→ _U_. Define a bijection _h_ : _M_ Ð→
( _A_ ∪ _U_ )by setting _h_ ( _x_ )= _x_ if _x_ ∈ _A_ , and _h_ ( _x_ )= _g_ ( _x_ )otherwise. Now use a Push-
Through Construction, applying _h_ to _M_ to define aV-structure, _N_ , and simply
let _P_ be _N_ ’sVo-reduct.
_(2)_ ⇒ _(1)._ Let _P_ be as in (2). As _T_ is expansion-conservative over Ramsey( _T_ ),
there is aV-structure _M_ which is a signature expansion of _P_ and _M_ ⊧ _T_.

The significance of this result emerges, when we substitute the intended model _C_
of theVo _O_ -sentences for _A_ , to obtain a new objection to ramsified realism:

_Newman-cardinality-objection.Instrumentalists and realists can agree that, at a mini-
mum, T must be C-alright. But Proposition 3.8 entails that T is C-alright_ iff _there is some
cardinal κ such that we can obtain a model of_ Ramsey( _T_ ) _just by adding κ ‘unobserv-
ables’ to C. Otherwise put:_ Ramsey( _T_ ) _is_ true _provided both that T is C-alright and
there are ‘sufficiently many’ unobservables. And so, we are back at Newman’s criticism:
‘the doctrine that_ only _structure is known’, when it comes to the theoretical, ‘involves
the doctrine that_ nothing _can be known’ about the theoretical, except ‘the number of’
theoretical objects._^29

This is the most powerful version of the Newman objection, as generalised against
ramsified realism.^30 Maybe some ramsified realists can learn to embrace the idea
that the purpose of physics is to get everything right at the level of observables and
additionally tell us the mere _cardinality_ of the theoretical realm; but we doubt that
this view will find many takers.
We can summarise the problem as follows. Proposition 3.8 uses model theory to
generate a ‘trivialising’ structure, _P_ , from a given structure, _M_. The existence of
_P_ is guaranteed by the standard set-theoretic axioms which we assume whenever
we do model theory. So the ramsified-realist needs to explain why _P_ is somehow
_unintended_ (cf. §2.3). To close the chapter, we consider two attempts to do this.^31

### 3.9 Mixed-predicates again: the case of causation

When we discussed the permutation argument in §2.3, we noted that someone
might complain that models obtained by the Push-Through Construction can fail

(^29) Newman (1928: 144).
(^30) Our _Newman-cardinality-objection_ is close to Ketland’s preferred version of the Newman objection
(See also Ainsworth 2009: 144–7). Ketland’s objection falls out of his Theorem 6 (2004: 298–9), which
is close to our Proposition 3.8. However, Ketland invokes _full_ second-order logic, whereas our Proposition
3.8 holds with both full and faithful Henkin semantics (see §3.2, and also footnote 1 from Chapter 2).
(^31) For an excellent survey of responses, see Ainsworth (2009: 148ff).


```
3.10. natural properties and just more theory 67
```
to respect causal connections between words and the world. The ramsified realist
might offer a similar response, concerning our trivialising model, _P_.
By construction, _P_ will respect all the causally-constrained reference relations
between _okay_ vocabulary and _okay_ entities. The only possible concern, then, must
be about the relationship between _troublesome_ vocabulary and _troublesome_ entities.
We want to argue for a conditional claim: _if_ our realist took the o/t dichotomy
seriously in the first place, then she cannot make any hay here.
To see why, we must revisit §3.4. There, we considered the predicate ‘ _x_ is big-
ger than _y_ ’. and noted that, prima facie, there are _observable_ instances of this rela-
tion, _theoretical_ instances of this relation, and _mixed_ instances of this relation. The
same point applies to the predicate ‘ _x_ causes _y_ ’. Waiving Humean concerns, there
are observational instances of causation: the striking of the match causes the fire.
There are also theoretical instances of causation: consider the microscopic events
involved in a chemical reaction. And then there are _mixed_ instances: the decay of a
radium atom causes the Geiger counter to click.
As in §3.4, such considerations might lead us to doubt the very idea that there
is a sharp o/t _dichotomy_. And if we deny that there is any such dichotomy, then
nothing will prevent us from going on to insist that the observable instances (in
some rough and ready sense) of causation give us sufficient handle on the general
notion of causation for us to see why _P_ may be unintended.^32 However, to abandon
the o/t dichotomy is _precisely_ to abandon the position against which the Newman-
cardinality-objection was targeted.
If, instead, we continue to insist on an o/t dichotomy, then we have no option
but to ‘split’ the ‘mixed’ claims about causation into the okay ones and the trouble-
some ones. (Compare the fate of ‘ _x_ is bigger than _y_ ’ in §3.4.) But once we have done
_that_ —and taken seriously that this is a dichotomy and not a continuous transition
from more to less observable—then it is profoundly unclear what would allow us
to maintain that we have sufficient handle on the ‘troublesome side’ of causation,
even to _articulate_ the idea that _P_ has failed to respect the (troublesome) causal rela-
tionship between troublesome vocabulary and troublesome entities. For the ‘trou-
blesome side’ of causation is _just more_ Vt _-vocabulary_ , to be ramsified away.^33

### 3.10 Natural properties and just more theory

An alternative response is for the ramsified-realist to insist that some properties are
more _natural_ than others.
The existence of the trivialising structure, _P_ , is guaranteed by the standard set-
theoretic axioms which we assume whenever we do model theory. The ramsified

(^32) See the references in footnote 11.
(^33) This is essentially the point of Button (2013: 50–1).


68 ramsey sentences and newman’s objection

realist may, then, maintain that certain properties and relations are _natural_ , whilst
others are _mere artefacts_ of a model theory that might be suitable for pure math-
ematics, but which is unsuitable for the philosophy of science. If she can uphold
this point, then she can reject the significance of Proposition 3.8 and so answer the
Newman-cardinality-objection.^34
The obvious question is whether ramsified realism is consistent with a belief in
such natural kinds. To believe that some properties or relations are natural is to
postulate a higher-order property of properties, namely, _naturalness_. Syntactically,
this will be introduced via a second-order predicate, N, such that we can say of a
first-order predicate, _R_ , such as ‘...is an electron’, something of the form N( _R_ ), i.e.
roughly ‘ _electronhood_ is a natural property’. Since, though, our ramsified realist be-
lieves in an o/t dichotomy, we must ask her whether N falls on the o-side or the
t-side.^35 Certainly N cannot belong to the _observational_ vocabulary—even if _elec-
tronhood_ is natural, one cannot simply _observe_ that it is—so N must belong with
the _theoretical_ vocabulary, i.e. N∈Vt. As such, the ramsified realist is duty bound
to ramsify away the higher-order property of _naturalness_. That is, she must replace
N with an existentially bound (third-order) variable _Y_ , so that her new Ramsey sen-
tence for _T_ is:

```
∃Y∃ X 1 ...∃ XnT ^[Y/N, X / R ]
```
But now, given even remotely permissive comprehension principles for third-order
logic, the invocation of a _ramsified_ property of _naturalness_ will impose no constraint
whatsoever upon our structures.^36
The shape of this problem should look familiar: in the last few paragraphs, we
have essentially recapitulated the dialectic surrounding Putnam’s permutation ar-
gument from §2.3. Our ramsified realist wanted to maintain that a Ramsey sen-
tence is made true (if at all) only by the existence of a structure whose second-order
entities are _natural_. This is just a version of the idea that certain referential candi-
dates are _preferable_ , as considered in §2.3 in response to Putnam’s permutation ar-
gument.^37 And, as in §2.3, any defender of this notion of _preferability_ must face up to
Putnam’s just-more-theory manoeuvre. In the present context, the allegation will
be that to invoke ‘naturalness’ is just more _theory_.

(^34) See Psillos (1999: 64–5), Ketland (2009: 44), and Ainsworth (2009: 167–9).
(^35) Brian King suggested to us that the ramsified realist might decline to answer the question, on the
grounds that N is not itself an expression from the sciences, but an expression from some metasemantic
theory. Whilst the reply is possible in principle, it is hard to see how it could be developed. A ramsified
realist who offers this reply must explain why her initial motivations for embracing the o/t dichotomy stop
short of rendering _naturalness_ troublesome. This is particularly difficult if those initial motivations were
essentially epistemological, for our epistemological situation with regard to _naturalness_ is worse than our
epistemological situation with regard to _electronhood_ (for example).
(^36) For a similar argument, see Ainsworth (2009: 160–2, 169); also Demopoulos and M. Friedman (1985:
629), Psillos (1999: 64–6), and Ketland (2009: 44).
(^37) See Ainsworth (2009: 162–3).


```
3.a. newman and elementary extensions 69
```
Now, in §2.3, we noted that there are positions according to which the just-more-
theory manoeuvre simply looks hopelessly question-begging. (If causation fixes
reference, then permuting the reference of ‘causation’ is besides the point.) How-
ever, we also noted that the just-more-theory manoeuvre poses real difficulties for
certain other positions, such as moderate objects-platonism. (To the moderate
objects-platonist, anything compatible with moderation looks like more mere the-
ory.) The same point arises here. Belief in intrinsically natural kinds may be a
defensible philosophical thesis. However, the present allegation is that the ram-
sified realist is bound, _by her own lights_ , to treat ‘naturalness’ as just more the-
ory, in the precise sense that it belongs to theoretical-vocabulary rather than the
observational-vocabulary, and hence _must_ be ramsified away.
At this point, though, we see that there are no _shortcuts_ to the philosophical sig-
nificance of the Newman-cardinality-objection against ramsified realism. Its signif-
icance can only be settled by delving deeply into the very idea of an o/t dichotomy.
And _that_ would take us far away from model theory, and so far beyond the scope of
this book.
So, to close the chapter, we simply note the deep connections between the per-
mutation argument and the Newman objection. First: ramsified realism itself
can be motivated by permutation-style worries about the reference of theoretical
vocabulary (see §3.2). Second: the Push-Through Construction is used in Put-
nam’s permutation argument, in Newman’s original argument, and in the Newman-
cardinality-objection.^38 Third: similar responses are available to both arguments,
and such responses must confront the just-more-theory manoeuvre head-on.^39

### 3.a Newman and elementary extensions

We have presented and discussed our favourite version of the Newman objection.
However, in this appendix, we consider a Newman-esque objection in a first-order
context. Before starting, we should issue a caution. The appendix draws on techni-
cal results which we will first encounter in Chapter 4. As such, some readers may
want to read ahead before returning to this appendix. And the material in this ap-
pendix can, indeed, be safely omitted, since the _best_ version of the Newman objec-
tion is the Newman-cardinality-objection of §3.8.
In the next chapter, we prove the following:^40

(^38) See Demopoulos and M. Friedman (1985: 629–30), Lewis (1984: 224fn.9), Ketland (2004: 294–5,
298–9), and Hodesdon (forthcoming: §5).
(^39) See Hodesdon (forthcoming: §6).
(^40) Actually, in Chapter 4 we state the result in terms of deduction-conservativeness (see Definition 4.17)
rather that consequence-conservativeness. However, for first-order theories, these notions are identical, by
the Soundness and Completeness of first-order logic.


70 ramsey sentences and newman’s objection

Proposition(4.18): _Let T be a first-order_ L+ _-theory and S be a first-order_ L _-theory,
with_ L+⊇L_. The following are equivalent:_

```
(1)T is consequence-conservative over S.
(2)For any L -structure M ⊧ S, there is an L+ -structure N which satisfies T
and whose L -reduct is an elementary extension of M.
```
This result connects a notion of conservation (see Definition 3.3) with the existence
of an elementary extension (see Definition 4.3), i.e. typically to a structure with
an enlarged _ontology_. It is worth explicitly contrasting this first-order result with
our second-order Proposition 3.5, which connected a notion of conservation with
a structure with no new ontology, but merely a richer _ideology_.
Despite the differences, Demopoulos has recently used Proposition 4.18 to
present a Newman-esque objection.^41 His objection does not consider Ramsey
sentences, or target ramsified realism, _per se_. Rather, Demopoulos’s target is a re-
alist who believes that physical theories have a kind of content which goes beyond
the observational claims, but which is in some sense ‘merely structural’. Demopou-
los criticises this realist via something very much like the Newman-conservation-
objection of §3.6, but employing the first-order Proposition 4.18 rather than the
second-order Proposition 3.5. As we understand it, Demopoulos’ objection runs
as follows:

_Newman-extension-objection.As in the Newman-conservation-objection of §3.6, in-
strumentalists and realists of all stripes can surely agree that their theory, T, should be
consequence-conservative over the set of all true_ Vo _-sentences, S. Additionally, instru-
mentalists and realists of all stripes can surely agree that there is a model, say C, of S. So,
by (1)_ ⇒ _(2) of Proposition 4.18, there is a model of T (indeed, an elementary extension
of C). So the realist does not, in fact, manage to incur any substantial commitments by
affirming T._

Now, like the Newman-conservation-objection of §3.6, this Objection invokes the
idea that the instrumentalist must be committed toVo-soundness. However, as we
pointed out in §3.7, that is a mistake. If there is a one-placeVo-predicate, _O_ , to be
read as ‘...is an observable object’, then∃ _x_ ¬ _O_ ( _x_ )is aVo-sentence which is prob-
ably entailed by _T_ , but which the instrumentalist need not accept. Consequently,
instrumentalists need not be committed to theVo-soundness of physical theories
after all. Exactly the same point applies to the Newman-extension-objection.
However, it is worth pointing out a _further_ defect with the Newman-extension-
objection. The Objection involves the claim that there is an intended model, _C_ , of
the trueVo-sentences. When we apply Proposition 4.18 to _C_ , we obtain a structure,

(^41) Demopoulos (2011: 186–90).


```
3.a. newman and elementary extensions 71
```
_N_ , whoseVo-reduct is an elementary extension of _C_. Crucially, this elementary ex-
tension will (probably) _enlarge_ the ontology; that is, _N_ ∖ _C_ will be non-empty. And
if the objection is to hit its target, then we should think of _C_ as all that is _observ-
able_ , so that the entities in _N_ ∖ _C_ are all deemed _theoretical_.^42 But Proposition 4.18
provides no guarantee that we might not find some new element _a_ ∈ _N_ ∖ _C_ such
that _N_ ⊧ _O_ ( _a_ ). On the one hand, such an element would be _observable_ , at least
according to _N_ ; on the other hand, it should be(merely) _theoretical_ , since it is in
_N_ ∖ _C_. It is unclear why such a confused structure should command our attention.
We can illustrate this concern via a toy example, which employs a lovely result
from the model theory of PA. The result is that PA cannot define the notion of a
‘standard number’ (the notation _Sn_ ( 0 )was defined in ( _numerals_ ) of §1.13):

Lemma 3.9(Overspill): _Let φ_ ( _v_ ) _be any one-place formula in the signature of_ PA_.
Let M be a non-standard model of_ PA_. If M_ ⊧ _φ_ ( _Sn_ ( 0 )) _for all n_ < _ω, then there is
some non-standard element b such that M_ ⊧ _φ_ ( _b_ )_._

_Proof._ Suppose _M_ ⊧ _φ_ ( _Sn_ ( 0 ))for all _n_ in the metatheory. Let _a_ be a non-
standard element of _M_. If _M_ ⊧ _φ_ ( _a_ ), then we are done. Otherwise, _M_ ⊧¬ _φ_ ( _a_ ).
Since _M_ ⊧PA, it satisfies the least-number-principle,^43 so let _a_ 0 be the least ele-
ment of _M_ satisfying¬ _φ_ ( _x_ ). Since _a_ 0 is non-standard, _a_ 0 ≠0, so there is some _b_
such that _M_ ⊧ _S_ ( _b_ )= _a_ 0. Then _b_ is also non-standard and since _M_ ⊧ _b_ < _a_ 0 , we
have that _M_ ⊧ _φ_ ( _a_ ).

To see the significance of this result, suppose that the observable objects happen to
‘line up’ nicely, so that they can be enumerated. So we can treat the (standard) nat-
ural numbers as _proxies_ for the genuinely observable objects, and regard the (stan-
dard) natural number structure as a proxy for our intended model of the observ-
ables, _C_. Then when _N_ is a _proper_ elementary extension of _C_ , it must add some new
elements to the domain. In our toy, this will amount to adding some _nonstandard_
numbers. Suppose, furthermore, that we have defined a one-place predicate ‘ _O_ ’ in
the language of PA, which we can usefully treat as a proxy for the predicate ‘...is an
observable’ in _C_. Then, by the Overspill Lemma 3.9, some of these new nonstan-
dard elements in _N_ ∖ _C_ must satisfy the predicate ‘ _O_ ’ in _N_.
In sum, the Newman-extension-objection mishandles observable entities in at
least two ways. This is why we favour the Newman-cardinality-objection.

(^42) Hence Demopoulos writes: ‘Let _C_ be theVo-structure whose domain is the domain of observable
events.... We must show that the domain _C_ of _C_ has an extension _N_ which is the domain of a model of
_T_ , where _N_ is the set of observable and theoretical events’ (Demopoulos 2011: 186–7, notation changed to
match main text).
(^43) Roughly: if some elements are _φ_ s, then there is a<-least _φ_. See e.g. Kaye (1991: 44–5).


72 ramsey sentences and newman’s objection

### 3.b Conservation in first-order theories

Theorem 3.5 shows that consequence-conservation and expansion-conservation
align for second-order theories. In this appendix, we prove that this alignment
_fails_ for first-order theories. In particular, while expansion-conservation still im-
plies consequence-conservation for first-order theories, the converse fails. This is
precisely the content of Proposition 3.11, below.
As with §3.a: the topic of this appendix means that it belongs in this chapter, even
though the result requires some ideas from later chapters. In particular, our proof
of Proposition 3.11 uses both non-standard models of PA (see Chapter 4) and the
Löwenheim–Skolem Theorem 7.2 (see Chapter 7). Still, our proof requires only
basic model-theoretic tools.^44
We say that a theory _T_ is _complete_ iff either _T_ ⊧ _φ_ or _T_ ⊧¬ _φ_ for every sentence _φ_
in _T_ ’s signature. Then the theory of arithmetic in the signature{0, _S_ }is complete.
More precisely, let SA, for _successor arithmetic_ , be the theory whose axioms are just
(Q1) and (Q2) from Definition 1.9, i.e.,∀ _x S_ ( _x_ )≠0 and∀ _x_ ∀ _y_ ( _S_ ( _x_ )= _S_ ( _y_ )→
_x_ = _y_ ). Now:

Proposition 3.10:SA _is complete._

_Proof._ Where _M_ is a model of SA, say that a _chain_ in _M_ is a subset _Z_ ⊆ _M_ such that
for every _a_ , _b_ ∈ _Z_ there is some natural number _n_ in the metatheory such that either
( _Sn_ ( _a_ )) _M_ = _b_ or( _Sn_ ( _b_ )) _M_ = _a_ , using the ( _numerals_ ) notation from §1.13.
Let _M_ 0 and _M_ 1 be two models of SA of a fixed uncountable cardinality, _κ_. Since
they are of the same cardinality _κ_ , their domains can be written as the disjoint
unions _Mi_ = _Ni_ ∪⋃ _α_ < _κZi_ , _α_ where the _Ni_ component is isomorphic to the standard
natural numbers in the signature{0, _S_ }, and each _Zi_ , _α_ component is isomorphic to
the integers in the signature{ _S_ }. By mapping _N_ 0 to _N_ 1 and _Z_ 0, _α_ to _Z_ 1, _α_ , we have
that _M_ 0 ≅ _M_ 1. Since any incompleteness in SA would have to be registered on
models of size _κ_ by the Löwenheim–Skolem Theorem 7.2, SA is complete.

We can now use this result to offer an example of consequence-conservation with-
out expansion-conservation.

Proposition 3.11: PA _is consequence-conservative over_ SA _but not expansion-
conservative over_ SA_._

_Proof._ First observe that that PA’s signature strictly expands SA’s.

(^44) As such, our proof is much simpler than the one usually offered in the literature, which requires
familiarity with formal theories of truth. See Halbach (2011: Theorem 8.12 p.80, Theorem 8.31 p.98).


```
3.b. conservation in first-order theories 73
```
_Consequence-conservation._ Let _φ_ be a first-order sentence in the signature{0, _S_ }
such that PA⊧ _φ_. If SA⊧¬ _φ_ , then also PA⊧¬ _φ_ , since PA has all of SA’s axioms;
but then, absurdly, PA would be inconsistent; so SA⊭¬ _φ_. Since SA is complete,
SA⊧ _φ_ , as required.
_Failure of expansion-conservation._ Let _M_ be a model of SA given by a copy of
the natural numbers followed by a single disjoint copy of the integers, with zero
and successor interpreted in the ordinary way. So we may write _M_ ’s domain as
_M_ = _N_ ∪ _Z_ , where the _N_ component is isomorphic to the standard natural numbers
in the signature{0, _S_ }, and the _Z_ component is a chain.
For reductio, suppose there is a model _M_ ∗of PA whoseL-reduct is just _M_. Let
_a_ be an element of _Z_. Now, PA proves that every number is even or odd. Begin by
supposing that _M_ ∗⊧ _b_ + _b_ = _a_ for some _b_ in _M_. Then _b_ too is in _Z_ rather than _N_.
Since _a_ and _b_ are part of the same chain, _M_ ⊧ _Sk_ ( _b_ )= _a_ for some _k_ ∈ _ω_. So _M_ ∗⊧
_Sk_ ( 0 )+ _b_ = _Sk_ ( _b_ )= _a_ = _b_ + _b_. Subtracting _b_ from both sides, _M_ ⊧ _Sk_ ( 0 )= _b_ ,
contradicting the fact that _b_ is in _Z_ rather than _N_. And a similar contradiction arises
from supposing _M_ ∗⊧ _b_ + _b_ + 1 = _a_ for some _b_ in _M_ , completing the reductio.



