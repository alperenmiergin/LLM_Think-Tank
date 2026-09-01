**Kaynak:** [[00_Context/0_Button-Walsh_Philosophy_and_model_theory/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

## 16 Quantifiers

We typically regard the quantifiers∃and∀as _logical_ expressions. But there are
straightforward semantic means for defining all sorts of new quantifiers. This might
make us ask: Which of these are relevantly similar to our initial paradigms,∃and
∀, to count as _logical_? More generally: Can we explicate the notion of _logic_ , in a way
which yields a precise, intuitively satisfying, and fruitful criterion for distinguishing
between ‘logical’ and ‘non-logical’ quantifiers?
These questions have generated a substantial literature. Our answers to them are
somewhat pluralistic. There are many ‘intuitive’ ideas associated with ‘logic’. The
relations between these ‘intuitive’ ideas are rather unclear. By insisting on a very
particular explication of each intuitive idea, and in a particular combination, one
may be able to draw sharp bounds for logic. But we doubt that any particular com-
bination of explications is forced upon us. To show this, we start by introducing the
semantic framework for generalised quantifiers (§16.1). Having elaborated on what
we mean by raising the question of logicality (§16.2), we introduce a popular the-
sis about logicality. It was provided Sher, building on work by Tarski, Mostwoski,
and Lindström; and we call it _Tarski–Sher_ (§16.3). We spend the remainder of the
chapter considering and rebutting attempts to vindicate Tarski–Sher.

### 16.1 Generalised quantifiers

So far in this book, we have almost entirely restricted our attention to two quan-
tifiers: the universal quantifier,∀, and the existential quantifier,∃. In fact, there
have only been two exceptions to this: in §7.10, we considered the finitary quan-
tifier ‘there are finitely many...’, symbolised∃<א 0 , and Härtig’s two-place quanti-
fier, ‘there are exactly as many _φ_ s as _ψ_ s’. But natural language teams with quantifier
phrases, such as:^1

```
there are exactly five φ s
two-thirds of things are φ
there are more φ s than ψ s
the majority of φ s are ψ s
fewer φ s than ψ s are ξ s
```
(^1) For many, many more examples, see Sher (1991: ch.1) and Peters and Westerståhl (2006: ch.4).


388 quantifiers

In this chapter, we explore formal languages which have formalisations of such
quantifiers, and more besides.^2
Where _s_ is an expression, recall that we generally write _sM_ for the interpretation
of the expression in the structure _M_. We will do the same with quantifiers, writing
Q _M_ for the interpretation of the quantifier Q in the structure _M_.
In particular, suppose that we stipulate that the interpretation of∀in a structure
_M_ is always given by∀ _M_ ={ _M_ }. That is to say: the interpretation of the universal
quantifier on a structure is always the singleton of the underlying domain. Where
we also define _φ_ ( _x_ ) _M_ by{ _a_ ∈ _Mn_ : _M_ ⊧ _φ_ ( _a_ )},^3 we can stipulate:

```
M ⊧∀ xφ ( x )iff φ ( x ) M ∈∀ M
```
Given our definition of∀ _M_ , the right-hand-side holds iff _φ_ ( _x_ , _a_ ) _M_ = _M_ , i.e. iff every
entity in the domain satisfies _φ_ ( _x_ , _a_ ). This provides precisely the usual semantics
for universal quantification, in a slightly different way. We can do the same for ex-
istential quantification. We stipulate that the interpretation of∃is always given by
∃ _M_ =℘( _M_ )∖ ∅. Then this clause yields the usual semantics for existentials:

```
M ⊧∃ xφ ( x )iff φ ( x ) M ∈∃ M
```
But we need not stop at one-place quantifiers. Consider Härtig’s two-place quan-
tifier,H, which we use to formalise the claim ‘there are exactly as many _φ_ s as _ψ_ s’.
We can stipulate thatH _M_ ={( _X_ , _Y_ )∈℘( _M_ )× ℘( _M_ ):∣ _X_ ∣=∣ _Y_ ∣}, and obtain an
appropriate semantics with this clause:

```
M ⊧H xy ( φ ( x ), ψ ( y ))iff( φ ( x ) M , ψ ( y ) M )∈H M
```
This is the start of a rich framework. For example, we can consider a quantifier
expression, Q, which operates on an arbitrary but finite number of one-place pred-
icates. Its extension will be some subset of℘( _M_ ) _n_ , and its semantic clause will be:

```
M ⊧Q x 1 ... xn ( φ 1 ( x 1 ), ..., φn ( xn ))iff( φ 1 ( x 1 ) M , ..., φn ( xn ) M )∈Q M
```
We can go further still, considering quantifiers which operate on arbitrarily many
predicates of arbitrary position. The extension of such a quantifier will be some
subset of℘( _Mi_^1 )×...× ℘( _Min_ ), and its semantic clause will be:

```
M ⊧Q x 1 ... xn ( φ 1 ( x 1 ), ..., φn ( xn ))iff( φ 1 ( x 1 ) M , ..., φn ( xn ) M )∈Q M
```
We now have an extremely general framework for considering quantifiers.

(^2) The original generalisation is due to Mostowski (1957) and Lindström (1966). For more detail see
Peters and Westerståhl (2006: §§2.2–2.4).
(^3) Formulas mentioned in this section are allowed to include parameters _b_ from _M_. (Compare §1.13,
and note that this contrasts with Chapter 15, where by default we _banned_ parameters).


```
16.2. clarifying the question of logicality 389
```
### 16.2 Clarifying the question of logicality

We could happily deploy (some fragment of) this framework to handle the
quantifier-expressions that arise in natural language. For instance: first-order logic
gives no good way to formalise ‘there are as many _φ_ s as _ψ_ s’, even though that is a per-
fectly reasonable thing to say. To handle this, we could simply augment our logical
vocabulary, to includeH.
This augmentation would dramatically increase the logic’s expressive power. We
saw in §7.10 that we can offer a categorical theory of arithmetic if we addHto first-
order logic. As an immediate corollary, the resulting logic is not compact. In short:
using generalised quantifiers with these semantics has substantial _metalogical_ im-
plications (cf. §7.6).
Consequently, the model-theoretical sceptic of Chapter 9 will insist that we are
_wrong_ to say that usingHallows us to provide a categorical theory of arithmetic.
She will point out that the categoricity of the axiomatisation requires thatHhas
its ‘standard’ semantics. And she will then challenge us to explain how we do this,
when we could instead consider a _deviant_ interpretation ofHby considering a ‘de-
viant’ notion of cardinality. That is, she will treat the semantic theory governingH
as _just more theory_.
We do not want to re-open the wounds of Part B here. So, in what follows, we
will set these sceptical challenges entirely to one side; not because they are irrele-
vant, but because we have nothing to add to our discussion in Part B. So, when we
consider the ‘logicality’ of a quantifier likeHin this chapter, we will not consider
any ‘sceptical’ challenges concerning our ability to articulateH’s semantics.
The question of ‘logicality’ that we have in mind can also be refined, by revisit-
ing a point raised in Chapter 13. There, we emphasised two different ways to think
about the meaning of (logical) expressions: _semanticist_ approaches, which claim
that the meaning of an expression is given by its semantic conditions, and _infer-
entialist_ approaches, which claim that the meaning of an expression is given by its
inference rules. The framework of generalised quantifiers is _purely_ semantic. So the
question we are exploring is _purely_ directed at semanticists.
In sum: this chapter addresses semanticists who (rightly or wrongly) are not
much worried by sceptical concerns, but who want to draw the bounds of logic.
Our aim is to critique the best-developed attempt at drawing sharp bounds.

### 16.3 Tarski and Sher

In a lecture given in 1966 (published as Tarski 1986), Tarski proposed a criterion
of logicality. Roughly, his idea was as follows. Let _M_ be a class of basic objects.^4

(^4) Following Tarski, we use the word ‘class’ to stand, neutrally, for sets or types.


390 quantifiers

Consider the hierarchy of classes one might construct over _M_. Now Tarski asked:
_Which of these classes are logical?_ And he answered:

_Tarski’s Thesis.C is logical relative to M iff C is permutation-invariant on M, where C
is permutation-invariant on M iffh_ ̷( _C_ )= _C for any bijection h_ : _M_ Ð→ _M_

Since the interpretation of a quantifier on a structure _M_ is always some class con-
structed from _M_ , Tarski’s Thesis also suggests a simple answer to our question, of
which quantifiers are logical: a quantifier is logical iff every interpretation of the
quantifier is permutation-invariant. Tweaking this idea slightly, we obtain:^5

_Tarski–Sher._ Q _is logical iff_ Q _is bijection-invariant, where_ Q _is bijection-invariant iff_
̷ _h_ (Q _M_ )=Q _Nfor any bijection h_ : _M_ Ð→ _N._

For any structures _M_ and _N_ with a bijection _h_ , it is easy to see that̷ _h_ (∀ _M_ )=∀ _N_ ,
that̷ _h_ (∃ _M_ )= ∃ _N_ and that̷ _h_ (H _M_ ) =H _N_. So these quantifiers are all logical,
according to Tarski–Sher. Indeed, any quantifier which can be defined solely in
terms of cardinality will qualify as logical on Tarski–Sher, just because cardinals
themselves are defined in terms of bijections.
Tarski–Sher supplies us with a simple, perfectly general answer to the question
of which quantifiers are logical. Indeed, Bonnay, who is critical of Tarski–Sher,
nevertheless suggests that it ‘might be considered as the received view regarding
the semantic characterisation of logical constants.’^6 In what follows, we focus on
Tarski–Sher, and show just how hard it is to establish it.

### 16.4 Tarski and Klein’s Erlangen Programme

Tarski situated his Thesis against the background of Klein’s _Erlangen Programme_.^7
Tarski emphasised two features of this Programme. First: different branches of ge-
ometry can be characterised by the fact that they restrict their attention to trans-
formations which are _invariant_ in certain ways. Second: as the branch of geometry
becomes more abstract, so the transformations they entertain hold fewer features
invariant.
To illustrate, the transformations of Euclidean geometry all preserve _ratios be-
tween distances_. Such maps will always send a triangle to a _congruent_ triangle. The

(^5) McGee (1996: 575, example slightly adapted) offers a nice motivation for the tweak. Let the _wombat-
quantifier_ ,W, behave exactly like existential quantification in domains containing wombats, but like uni-
versal quantification in wombat-free domains. SoW _M_ =℘( _M_ )∖{∅}if some wombat is in _M_ , and
W _M_ ={ _M_ }otherwise. This is permutation-invariant, but not bijection-invariant; but we probably should
not count wombat-quantification as _logical_ , since it invokes extra-logical considerations, viz., wombats.
(^6) Bonnay (2014: 56).
(^7) Tarski (1986); see also Mautner (1946), Sher (1991: 61–5, 2008: 301–2, 305–7), and Bonnay (2008:
33–4, 2014: 56, 59).


```
16.4. tarski and klein’s erlangen programme 391
```
transformations of affine geometry all preserve _colinearity_. Such maps will always
send a triangle to a triangle, but may sacrifice congruence. Last, the transformations
of topology preserve continuity. Such maps will always send a triangle to a closed
figure, but it need not even be a polygon. Observing this, Tarski asks us to consider
what he called the ‘extreme case’. According to Tarski, this would be a discipline
which entertains _any_ transformation (i.e. permutation) on an underlying domain.
And this thought led him to Tarski’s Thesis.
Unfortunately, Tarski’s own lecture provides us with no real clue as to why ob-
servations about a _geometric_ programme should tell us anything about _logic_. Fortu-
nately, MacFarlane offers a charitable suggestion to plug this gap on Tarski’s behalf.
Seen through the lens of the Erlangen Programme, bijection-invariance is ‘the end
point of a chain of progressively more abstract notions defined by their invariance
under progressively wider groups of transformations of the domain.’^8 The idea is
that we begin with an intuitive notion of logic as _topic-neutral_ , and that the analogy
with the increasingly abstract branches of geometry shows us that the best way to
explicate topic-neutrality is via the ‘extreme case’, i.e. permutation-invariance.
This line of reasoning is not, though, wholly compelling. To see why, consider
three pointed questions.
First, _why go so far?_ That is, why should we think that _any_ permutation should be
relevant to judgements of logicality?
Second, _why stop there?_ That is, why not entertain functions other than bijec-
tions, or perhaps even relations which are not functional? Given the mention of
the Erlangen Programme, it is worth noting that topologists do not _just_ consider
permutations on a space, or bijections between spaces; they consider all kinds of
maps between spaces.
Third, and most fundamentally, _why think that a limiting case of geometry should
coincide with logic?_ Even if we regard the Erlangen Programme as a triumph for
geometry, it is doubtful that a similar programme—characterising the various in-
creasingly abstract sub-disciplines of a discipline in terms of increasingly relaxed
transformations—could be carried out in many _other_ areas of inquiry. After all, on
the face of it, many areas of inquiry having nothing to do with transformations at
all. But then it is unclear why anyone who thinks of logic as ‘topic neutral’, or ‘max-
imally general’, should expect logic itself to have much to do with transformations.
We must, then, look for a defence of Tarski–Sher which does not depend upon
analogies with the Erlangen Programme. Moreover, we should learn a lesson from
the third question which we just posed. A successful defence of Tarski–Sher must
connect bijection-invariance with an intuitive idea of what logic _is_. In the remain-
der of this chapter, we will consider three attempts to do this. We will consider the
idea that logic is _non-discriminatory_ (§16.5), that logic must meet certain _closure_ con-

(^8) MacFarlane (2000: 175, 2015: §5); cf. also Bonnay (2014: 33).


392 quantifiers

ditions (§16.6) and that logic must be kept separate from _mathematics_ (§16.8). We
will argue that none of these attempts is successful.

### 16.5 The Principle of Non-Discrimination

In defending Tarski–Sher, Sher outlines a conception of logic as both _formal_ and
_necessary_.^9 This characterisation certainly fits well with a certain ‘intuitive’ concept
of logic. Moreover, it provides a characterisation of logic which does not leave it
completely mysterious why logic should be of interest to us. It is, then, an excellent
starting point.

```
Formality and non-discrimination
```
That said, the idea of _formality_ certainly needs development. To see why, consider
the following three schematic inference-patterns:

```
φ and ψ ∴ φ
x knows that φ ∴ φ
x is a kitten∴ x is a cat
```
All three inference-patterns seem to be necessarily truth-preserving. And all three
inference-patterns could be codified as _formal rules_ for some particular system of
reasoning. Since Sher wants to draw the bounds of logic in such a way that only the
first of these counts as logical, she must say more about the notion of formality.
Her idea is to characterise _formality_ as _non-discrimination_.^10 This idea has deep
roots. Mostowski writes that logic ‘should not allow us to distinguish between
different elements of [the domain]’.^11 Picking up on this, Sher states that logic
‘should not distinguish the identity of particular individuals in the universe of a
given model’.^12 McGee, in a later defence of Tarski–Sher, claims that ‘any consider-
ation which discriminates among individuals lies beyond the reach of logic, whose
concerns are entirely general’.^13 Peters and Westerståhl express a similar thought,
writing that ‘in logic only structure counts, not individual objects, sets, or rela-
tions.’^14 And all of this connects with other highly general (but pre-formal) ways
to describe what is ‘characteristic’ about logic, such as the claim that logic is ex-
tremely general, or abstract, or topic-neutral, or contentless. In short, we arrive at
an intuitive idea:

(^9) Sher (1991: 40ff). Interestingly, she takes these ideas from Tarski’s _earlier_ work; cf. Sher (1991: 63).
(^10) Cf. MacFarlane’s (2000: ch.3) discussion of three different notions of ‘formality’.
(^11) Mostowski (1957: 13).
(^12) Sher (1991: 34, 43, 53); see also Sher (2001: 247–8, 2008: 305–8).
(^13) McGee (1996: 567).
(^14) Peters and Westerståhl (2006: 95); though they ultimately defend a stricter thesis than Tarski–Sher.


```
16.5. the principle of non-discrimination 393
```
_Principle of Non-Discrimination.Logical expressions are non-discriminatory._

We agree that the idea is appealing. To unpack it, though, we must explain what it
means to call an _expression_ discriminatory, for that is not abundantly clear.
Fortunately, we (sometimes) have some relatively clear intuitions on what it
means to say that a _class_ is discriminatory. Let _M_ be a class of basic objects. Intu-
itively,∅is non-discriminatory relative to _M_ , since it treats every object equally (by
omission). Equally, _M_ itself is non-discriminatory relative to _M_ , since it treats every
object equally (by inclusion). But these are intuitively the _only_ non-discriminatory
subclasses, relative to _M_. For if _N_ is a subclass of _M_ which is neither empty nor
identical to _M_ , then _N_ rules _out_ some entities and rules _in_ others. And of course,∅
and _M_ are the only subclasses deemed logical by Tarski’s Thesis.
Expressions can take classes as their interpretations. We therefore recommend
understanding the discriminatoriness of expressions in terms of the discriminatori-
ness of their interpretations. Specifically, we suggest: _an expression is discrimina-
tory iff there is some interpretation of the expression which (intuitively) discriminates
between the entities in the domain over which the expression has been interpreted_. So
understood, the Principle of Non-Discrimination becomes:

_Principle of Non-Discrimination (updated).No interpretation of a logical expression
(intuitively) discriminates between any entities._

This is how we understand the Principle in what follows. And, so understood,
the Principle of Non-Discrimination delivers the intuitively correct verdict in a
paradigm case, of one-place predicates.
Consider the natural language one-place predicate ‘...is a cat’. We might reason-
ably say that this predicate should always take as its extension (on a given domain)
the set of cats. But, if the domain contains both a cat and a wombat, then this in-
terpretation is discriminatory: it includes some things and omits others. As such,
the natural language predicate ‘...is cat’ counts as discriminatory, and hence non-
logical, according to the Principle of Non-Discrimination. And this is exactly what
we should hope for: intuitively, the expression ‘...is a cat’ is not purely logical.
Similar reasoning will convince us that any primitive one-place predicate, in any
formal language, will count as discriminatory. After all, it can be interpreted as a
non-empty, non-universal subset of a structure’s domain, and so is non-logical by
the Principle of Non-Discrimination.
Indeed, the only predicates which might qualify as non-discriminatory are pred-
icates like ‘ _x_ = _x_ ’, whose interpretation on a domain is always the domain itself, and
‘ _x_ ≠ _x_ ’, whose interpretation on a domain is always∅. And it is reasonably plausible
to think that these two expressions are, indeed, _logical_ expressions.


394 quantifiers

All of this lends some support to Tarski–Sher. After all, primitive one-place pred-
icates are not bijection-invariant; but both ‘ _x_ = _x_ ’ and ‘ _x_ ≠ _x_ ’ _are_ bijection-invariant.
So Tarski–Sher seems to get the right verdicts here.

```
Simple rivals to Tarski–Sher
```
We cannot, though, conclude that Tarski–Sher is _correct_. After all, we formulated
the Principle of Non-Discrimination in terms of some intuitive notion of non-
discrimination, and it is an open question whether the appropriate notion of non-
discrimination should be bijection-invariance (as Tarski–Sher insists), or some-
thing else. And, crucially, _many_ different notions of non-discrimination will exactly
deliver the same verdict concerning one-place predicates.
To see this, we need only revisit our grades of discernibility from Chapter 15. Let
( _M_ , _U_ )denote a structure with domain _M_ , whose signature is just a single one-place
predicate which is assigned the extension _U_.^15 Then consider this principle:

```
U is non-discriminatory on M iff there are no discernibles in( M , U ).
```
The principle is schematic, in that we can replace ‘discernibles’ with ‘Leibniz-
discernibles−’, or ‘one-discernibles−’, or anything in between (see §15.1 and The-
orem 15.7). But in fact, plugging in any grade of discernibility will yield (extension-
ally) the same criterion. For if either _U_ = _M_ or _U_ =∅, then no elements in _M_ are
pairwise discerned by any of our grades of discernibility from Chapter 15 (except
for identity itself). However, if _U_ is non-empty but non-universal, then there will
be elements _a_ and _b_ such that _a_ and _b_ are one-discernibles−in _M_ ; and equally _a_ and
_b_ will be Leibniz-discernibles−in _M_.
In short: _every_ grade of discernibility that we considered in Chapter 15 yields a
notion of non-discrimination which coincides with Tarski’s Thesis when it comes
to the logicality of a subclass of a domain.
Now, at the risk of repetition: unlike Tarski, and like Sher, our ultimate interest is
with the logicality of _expressions_ , rather than classes. However, as explained above,
the clearest way to determine whether an _expression_ is discriminatory is to consider
whether any of its possible _interpretations_ is discriminatory. So, the (schematic)
suggestion, that the discriminatoriness of classes should be thought of in terms of
indiscernibles, generates a scheme of rivals to Tarski–Sher:

```
s is logical iff for all M there are no indiscernibles in( M , sM ).
```
And, for any grade of indiscernibility, these rivals agree with Tarski–Sher, provided
_sM_ ⊆ _M_ for all _M_.
At the risk of further repetition, we do not want to to _endorse_ any of these rivals to
Tarski–Sher. Our point is just that considering one-place _predicates_ does not lend

(^15) Compare the notation from Lemma 9.2 of §9.a.


```
16.5. the principle of non-discrimination 395
```
much support to Tarski–Sher. If we want to consider a _test case_ for Tarski–Sher, then
we must consider more complicated expressions.

```
One-place quantifiers and pentagons
```
The next simplest expressions for us to consider are interpretations of one-place
_quantifiers_. In the framework of generalised quantifiers outlined in §16.1, these are
subsets of℘( _M_ ). But at this level of complexity, we think that no one should have
very firm thoughts about what, intuitively, should count as (non-)discriminatory.
We show this by considering some toy examples. All of the toy examples concern
quantifiers on the domainF ={1, 2, 3, 4, 5}. To specify the examples, we use a
simple, graphical notation, depicting a subset _X_ ⊆℘(F)with a graph such that _a_
has an edge to _b_ in our graph iff{ _a_ , _b_ }∈ _X_. So, for example, the graph:

#### A

#### 1

#### 2

#### 3 4

#### 5

depicts the class _A_ ={{2, 3},{4, 5}}⊆℘(F).
Intuitively, _A_ is a rather _discriminatory_ class. Indeed, _A_ singles out 1, in that,
_uniquely_ , if 1∈ _X_ ⊆F, then _X_ ∉ _A_. Moreover, _A_ is obviously not permutation-
invariant. To see this, consider the graph(F, _A_ )—i.e. the graph with domainFand
edges given by _A_ , just as depicted—and observe that when _h_ :FÐ→Fis a permuta-
tion, if _h_ ( 1 )=2 then _h_ is not a symmetry on(F, _A_ ). So, _A_ is a discriminatory class,
in Tarski’s sense. And, since _A_ is not permutation-invariant, no quantifier which
takes _A_ as its interpretation (in some model with domainF) will count as logical
according to Tarski–Sher. This all seems fairly plausible.
Again, though, this tells us very little. After all, if 1≠ _x_ , then 1 and _x_ are one-
discernibles−in the graph(F, _A_ ). So, 1 is uniquely discriminated within that graph,
using even the very weakest of our grades of discernibility from Chapter 15. Oth-
erwise put, and as in the case of subsets of the domain: every plausible notion of
discrimination will deliver the same verdict about the class _A_ , and so about expres-
sions which can take _A_ as their interpretation.
So here is a trickier case:

#### B

#### 1

#### 2

#### 3 4

#### 5


396 quantifiers

This class, _B_ , is not permutation-invariant. And one way to see this is to consider
a permutation _h_ :FÐ→Fsuch that _h_ ( 1 )=2 but _h_ ( 3 )=3. This is not a sym-
metry on the graph(F, _B_ ). More generally, invoking our grades of discernibility
from Chapter 15, we have the following: in this graph, if _a_ ≠ _b_ , then _a_ and _b_ are
not Leibniz-relatives (see Definition 15.6). So there is a good sense in which _B_ is
discriminatory: distinct entities need not even by Leibniz-relatives.
Equally, though, there are several senses in which _B_ is _non_ -discriminatory. Put
naïvely: _B_ arranges the points ofFas a _pentagon_ , and hence treats every point
equally. (Compare: King Arthur designed his Round Table to treat all the knights
equally.) Indeed, there are _nine_ non-trivial symmetries on the graph(F, _B_ ); and _a_
and _b_ are two-symmetricals in(F, _B_ )for any _a_ , _b_ ∈F(see Definition 15.4). So there
are good senses in which _B_ is _non_ -discriminatory.
The real question is: is _B_ discriminatory in a way that matters to _logicality_? De-
fenders of Tarski–Sher will have to insist that it is. But they cannot do this, just by
appealing to ‘ _the_ intuitive notion of non-discrimination’. There are simply too _many_
intuitive notions of non-discrimination floating around.
To this end, we will now consider three replies that Sher might offer, and explain
why they are all inadequate.

```
‘Any discrimination is bad’
```
Recall that the elements of the graph(F, _B_ )are not Leibniz-relatives. Conse-
quently, one might say that _B_ is _too_ discriminatory to count as logical, precisely
because there is _some_ grade of discernibility according to which _B_ allows us to dis-
criminate pairwise between the elements ofF.
The idea might be correct; but a fan of Tarski–Sher cannot believe it. To see why,
consider a third example:

#### C

#### 1

#### 2

#### 3 4

#### 5

Unsurprisingly, _C_ is permutation-invariant. So according to Tarski’s Thesis, _C_ is a
logical class. Moreover, Tarski–Sher allows quantifiers to count as logical which
have _C_ as their interpretation. For example, the numerically-definite quantifier
‘there are exactly two...’, i.e.∃= 2 with∃ _M_ = 2 ={ _X_ ⊆ _M_ :∣ _X_ ∣= 2 }, counts as logi-
cal according to Tarski–Sher, and if _M_ ’s domain isFthen∃ _M_ = 2 = _C_. Moreover, _C_
certainly treats the points ofFat least as ‘equally’ as does _B_ , for(F, _C_ )is the _complete_
graph onF.


```
16.5. the principle of non-discrimination 397
```
But even _C_ is _somewhat_ discriminatory. In the (multi)graph(F, _C_ ), the node 1
has an edge to 2, but not to _itself_. Otherwise put,{1, 2}∈ _C_ but{1, 1}∉ _C_. So:
if _a_ ≠ _b_ , then _a_ and _b_ are Leibniz-discernibles−in our (multi)graph. Otherwise
put: there is _a_ sense in which _C_ is discriminatory, _in spite_ of its acceptability to both
Tarski and Sher.

```
‘Which pentagon are we considering?’
```
A second line of thought, from a fan of Tarski–Sher, would be that _B_ somehow _pre-
supposes_ access to the ‘identities of particular individuals’ in the domain ofFin a
way which renders it discriminatory.^16 To bring out the idea, consider this subset
ofF:

#### B ′

#### 1

#### 2

#### 3 4

#### 5

Squint for a moment, and you will see that _B_ ′is also a pentagon, just like _B_.^17 So,
considered as a graph,(F, _B_ )is isomorphic to but distinct from(F, _B_ ′). And this
raises an interesting question, familiar from §15.2: How can we tell which graph
we are considering? Equally: How can we tell whether we are considering _B_ or
_B_ ′? Of course, if the elements of the domain,F, are given to us _as_ the numbers
1, 2, 3, 4, 5, as it were, then there will be no difficulty. Since we know which number
is which, we will know which class is which. But if we lack access to ‘the identities of
the numbers’, as it were, then the isomorphism between _B_ and _B_ ′suggests that we
will be unable to single out either one of them (see §15.2). And this might suggest
that the very _distinctness_ of _B_ from _B_ ′somehow presupposes, or provides access
to, ‘the identities of the numbers’. Finally, we might observe that nothing similar
holds for _C_ , since in that case there are no distinct, isomorphic structures with the
same domain. So: perhaps _this_ is why _B_ but not _C_ presupposes ‘the identities of the
numbers’.
Unfortunately, this line of thought merely rephrases our earlier considerations in
more opaque language. The imagery of ‘the identities of the numbers’ is hard to get

(^16) This is close to the phraseology which Sher uses to explicate the relevant notion of non-
discrimination; see the quotes in §16.5. Sher (1991: 43) also explains that, by ‘the identity of particular
individuals’, she ‘mean[s] the features that make an object what it is, the properties that single it out’. We
do not mean to put this argument in Sher’s mouth; we simply want to show that these ideas lend no real
support to Tarski–Sher.
(^17) If precision is needed concerning the relevant notion of a pentagon, here it is. Suppose∣ _M_ ∣= _n_ >2;
then we can say that any _X_ ⊆℘( _M_ )is an _n_ -gon provided: (i)∣ _X_ ∣= _n_ ; (ii) every member of _X_ has exactly
two members; (iii) every member of _M_ occurs in exactly two members of _X_.


398 quantifiers

to grips with—hence our need for the repeated phrase ‘as it were’—but we can try
to engage with it via of the discussion of ‘singling out’ from §15.2. So: suppose that
Dappy is (somehow) systematically confused about the ‘identities of the numbers’.
Dappy consistently mistakes 1 for (what he calls) ‘2’, mistakes 2 for ‘3’, 3 for ‘4’, 4
for ‘5’ and 5 for ‘1’. Despite Dappy’s ignorance of the ‘identities of the numbers’,
his attempt to describe _B_ would be no less successful than someone who was not
confused about the ‘identities of numbers’. But of course, considering Dappy’s par-
ticular confusion is just another way to spell out a particular symmetry on(F, _B_ ).
Indeed: since there are nine non-trivial symmetries on(F, _B_ ), there are exactly
nine non-trivial ways in which Dappy might be confused about the ‘identities of the
numbers’, and yet still succeed in spelling out _B_ rather than _B_ ′. In sum, talking about
the ‘identities’ of the numbers provides no further grip on why bijection-invariance
should be the _important_ notion of discrimination.

```
‘Special features’
```
So far, we have no clear reason for thinking that _B_ is an _unacceptably_ discriminatory
class; that is, why it is not a (possible) extension of a logical quantifier. At this stage,
a defender of Tarski–Sher might agree that, regarded just as a _class_ , there is nothing
too objectionable about it. However, she might insist that the test we are using to
determine whether an expression is discriminatory—just check whether any of its
possible interpretations is discriminatory—is simply too crude.
Here is the how the thought would run. Suppose that some expression Q takes
the interpretation _B_ on a structure _F_ whose domain isF, i.e. that Q _F_ = _B_. Pre-
sumably, Q could also be interpreted as a different pentagon, Q _G_ , on some other
structure _G_ , whose domain was some five-element setG≠F. Then, trivially, there
is a bijection _h_ :FÐ→Gwith̷ _h_ (Q _F_ )≠Q _G_. So Q is not bijection-invariant, and
hence it is not logical according to Tarski–Sher. But, according to the present line
of thought, this is exactly the _right_ verdict. For, according to this line of thought, the
fact that Q is disrupted by a bijection indicates that it invokes ‘some special feature
shared by the members of the first domain’, i.e.F, ‘and lacked by the members of
the second domain’, i.e.G.^18

(^18) These phrases are quotes from McGee, and they have inspired this argument. However, the quotes
are almost entirely out of context, and we owe it to McGee to set them _in_ context.
McGee (1996: 567) thinks it is ‘clear enough’ that permutation-invariance is a necessary condition on
the logicality of classes. He then aims to lift this necessary constraint, on logical classes, over to the con-
straint that logical expressions must be bijection-invariant. To do this, he writes (1996: 576): ‘A property
which, while invariant under all permutation[s] of a given domain, is disrupted when we move, via a bijec-
tion, to a different domain must depend on some special feature shared by the members of the first domain
and lacked by the members of the second domain. It is not the sort of purely structural properties that pure
logic studies.’
We have been challenging the first step in McGee’s reasoning: the case of _B_ highlights that it is _not_
‘clear’ that permutation-invariance is a necessary condition on the logicality of classes. So we can agree


```
16.6. the principle of closure 399
```
The problem with this line of thought is entirely at the last stage. If ‘special
feature’ is simply stipulated to mean ‘not-bijection-invariant’, then the argument
is obviously circular. But if it is not stipulated to have this meaning, then we just
do not understand how the argument is supposed to work. Suppose we think—
consistently with the above—that any pentagon on a five-element domain is suf-
ficiently non-discriminatory to count as a logical class. Then, for any bijection
_h_ :FÐ→G, the elements ofGwill be arranged as a pentagon by̷ _h_ (Q _F_ )=̷ _h_ ( _B_ ).
In which case, a bijection will always take us from a logical class to a logical class,
and never to anything which looks very ‘special’.

### 16.6 The Principle of Closure

We have shown that the Principle of Non-Discrimination does not suffice to estab-
lish Tarski–Sher. So, if Tarski–Sher is to be defended, we must look for some new
ideas concerning what logic is, beyond the idea that it is non-discriminatory. In this
section, we introduce a second idea: that logical expressions should be closed under
certain minimal operations.

```
The idea of closure
```
Consider the quantifier expressions ‘there at least three...’ and ‘there are no more
than fifteen...’. What we might call the _conjunction_ of these quantifier expressions is
also a quantifier expression, i.e. ‘there are at least three and no more than fifteen...’.
Moreover, all of these are bijection invariant; and indeed we have that∃ _M_ ≥ 3 ∩∃ _M_ ≤ 15 =
∃ _M_ 3 ≤ _n_ ≤ 15. This suggests a simple thought: the conjunction of two logical expressions
should itself be a logical expression. And the natural generalisation of this thought
is as follows:

_Principle of Closure.The logical expressions should be closed under combination._

We will subject this Principle to scrutiny in what follows. But first, we should show
how it suffices to rule out some of the cases which we have been finding tricky.
Suppose we decided to treat _B_ and _B_ ′from the previous section as logical classes.
Then, by the Principle of Closure, _B_ ∩ _B_ ′= _A_ should _also_ be a logical class. But _A_
was precisely our initial example of a class which is _too_ discriminatory to count as
logical. So, by appeal to the Principles of Closure and Non-Discrimination _together_ ,
we cannot treat both _B_ and _B_ ′as logical. But if we said that _B_ is logical and _B_ ′is not
(or vice versa), then we will again violate the Principle of Non-Discrimination, since

with McGee’s (1996: 576) essentially conditional claim, that _if_ a property is permutation-invariant but
disrupted by a bijection, _then_ it depends ‘on some special feature shared by the members of the first domain’.
However, the antecedent fails in the case of _B_.


400 quantifiers

_B_ and _B_ ′differ _only_ with respect to their treatment of particular individuals. So, we
finally get to say what fans of Tarski–Sher must say: neither _B_ nor _B_ ′is logical.
The Principle of Closure deals well with some of the problem cases from the last
section. Moreover, the Principle of Closure seems compatible with both Tarski’s
Thesis and Tarski–Sher. For taking the negation, conjunction, or disjunction of
bijection-invariant expressions always results in a bijection-invariant expression.
The Principle of Closure therefore seems like a useful weapon for Tarski and Sher.
That said, any defence of Tarski–Sher via the Principle of Closure will take us
away from Sher’s own thinking. In particular, the Principle of Closure seems not to
follow from Sher’s idea that logic is non-discriminatory. At best, perhaps, the Prin-
ciple of Non-Discrimination and the Principle of Closure have a common source,
perhaps in the idea of logic as _formal_.
Whatever the source of either principle, though, the obvious question now is
whether the Principles of Non-Discrimination and Closure _together_ yield Tarski–
Sher. And here, again, our answer will be _No_. For there are accounts of logicality
which obey both Principles but which are ‘weaker’ than Tarski–Sher.

```
Bonnay’s framework for generalised invariance
```
To explain this, we must first expand our framework. Here we follow Bonnay, who
shows how to generate potential candidates for logicality of quantifiers from various
invariance relations.^19
Let∼be any relation which may hold between structures. To begin with an easy
case, let Q be a quantifier whose interpretation on a structure _M_ is Q _M_ ⊆℘( _M_ ).
Using the same notation for( _M_ , _U_ )as in §16.5, we say:

Q _is_ ∼ _-invariant iff: if_ ( _M_ , _U_ )∼( _N_ , _V_ ) _, then U_ ∈Q _Miff V_ ∈Q _N_

The more general case is for a quantifier whose interpretation is Q _M_ ⊆℘( _Mi_^1 )×
...℘( _Min_ ). In that case, writing( _M_ , _U_ )for( _M_ , _U_ 1 , ..., _Un_ ), we say:

Q _is_ ∼-invariant _iff: if_ ( _M_ , _U_ )∼( _N_ , _V_ ) _, thenU_ ∈Q _MiffV_ ∈Q _N_

The following Lemma both illustrates the framework, and also shows that we
can use this framework to (re)formulate Tarski–Sher in terms of _isomorphism_ -
invariance:

Lemma16.1:Q _is isomorphism-invariant (in the sense just described) iff_ Q _is bijection-
invariant (in the sense of §16.3)._

(^19) Bonnay (2008).


```
16.6. the principle of closure 401
```
```
Proof.Left-to-right. Let Q be isomorphism-invariant. For any bijection h : M Ð→
N , we have( M , U )≅( N , h ̷( U ))by the Push-Through Construction, so that U ∈
Q M iff h ̷( U )∈Q N. Hence̷ h (Q M )=Q N.
Right-to-left. Let Q be bijection-invariant, in the sense of §16.3. Let h be an iso-
morphism witnessing( M , U )≅( N , V ). So̷ h ( Ui )= Vi for each 1≤ i ≤ n and so
̷ h ( U )= V. Now U ∈Q M iff V =̷ h ( U )∈̷ h (Q M )=Q N , since Q is bijection-
invariant.
```
```
In what follows, we will plug different relations between structures into the scheme.
This will yield a variety of notions of invariance, and hence a variety of (potential)
criteria for logicality. But we will see that several of these meet reasonable versions
of the Principle of Closure.
```
```
Families of invariance relations and definability
To show this, though, we must make the Principle of Closure more precise. Our
first attempt at doing so will be to consider the idea that the logical expressions
should be closed under definability. The guiding thought was expressed by McGee:
‘intuitively, anything definable from logical connectives is again a logical connec-
tive.’^20 This was repeated by Bonnay: ‘Operators which are definable in a purely
logical manner are logical.’^21 However, we need to know what definability amounts
to in this context.
To explain the idea, we start with a simple example. The interpretation of the
quantifier∃= 2 is given by∃ M = 2 ={ X ⊆ M :∣ X ∣= 2 }. And it makes good sense to say
that∃= 2 is definable in first-order logic, thanks to the obvious logical equivalence
between∃= 2 xF ( x )and
```
```
∃ x 1 ∃ x 2 ( x 1 ≠ x 2 ∧ F ( x 1 )∧ F ( x 2 )∧ ∀ y ( F ( y )↔( y = x 1 ∨ y = x 2 )))
```
Now,∃= 2 was an easy example, because it operates on a single, one-place predicate.
But we can easily generalise the idea. Let Q be a quantifier which can operate on
an _α_ -length sequence of predicates _R_ 1 , ..., _Rβ_ , .... Where _L_ is a logic, we say that
the _L_ ( _R_ )-formulas are exactly those formulas whose syntax and semantics is given
by the logic _L_ , in the signature whose predicates are just among _R_. Finally, we say
that Q is _L-definable_ iff (for suitable _R_ )there is some _L_ ( _R_ )-formula _χ_ ( _R_ )such that
_U_ ∈Q _M_ iff( _M_ , _U_ )⊧ _χ_ ( _U_ )for any structure _M_.
We will now survey some logics which satisfy the Principle of Closure. Recall
from §15.4 that _L_ + _κλ_ is the logic which, intuitively, allows for _κ_ -sized conjunctions

(^20) McGee (1996: 571).
(^21) Bonnay (2008: 50).


402 quantifiers

and _λ_ -sized quantification, and which has ‘=’ as a primitive, and _L_ − _κλ_ is the identity-
free version of that logic. In particular, _L_ + _ωω_ is effectively standard first-order logic,
and _L_ − _ωω_ is effectively first-order logic without identity.
For both of these finitary logics, there is a standard, crude, measure of complex-
ity, known as quantifier rank:^22

```
qr( φ )=0 if φ is atomic
qr(¬ φ )=qr( φ )
qr(⋀Φ)=sup{qr( φ ): φ ∈Φ}
qr(∃ xφ )=qr( φ )+ 1
```
We write _M_ ≡+ _nN_ to indicate that _M_ ⊧ _φ_ iff _N_ ⊧ _φ_ for every _L_ + _ωω_ -sentence _φ_ with
qr( _φ_ )≤ _n_ ; and similarly we write _M_ ≡− _nN_ to indicate that _M_ ⊧ _φ_ iff _N_ ⊧ _φ_ for
every _L_ − _ωω_ -sentence _φ_ with qr( _φ_ )≤ _n_. And now, following Feferman, we can now
characterise first-order logic—with or without identity—in terms of invariance:^23

Theorem 16.2: _Let_ Q _operate on a finite sequence of predicates:_

```
(1) Q is L + ωω-definable iff Q is ≡+ n-invariant for some natural number n.
(2) Q is L − ωω-definable iff Q is ≡− n-invariant for some natural number n.
```
_Proof._ Throughout, let _R_ be the finite sequence of predicates on which Q operates.
We will prove (1), but (2) is exactly similar.
_Left-to-right._ Let _χ_ ( _R_ )define Q, i.e. _U_ ∈Q _M_ iff( _M_ , _U_ )⊧ _χ_ ( _U_ )for any structure
_M_. Let _n_ =qr( _χ_ ( _R_ )). Now if( _M_ , _U_ )≡+ _n_ ( _N_ , _V_ ), then( _M_ , _U_ )⊧ _χ_ ( _U_ )iff( _N_ , _V_ )⊧
_χ_ ( _V_ ), and hence _U_ ∈Q _M_ iff _V_ ∈Q _N_ ; so Q is≡+ _n_ -invariant.
_Right-to-left._ Fix _n_ , and assume that Q is≡+ _n_ -invariant. Up to logical equivalence,
there are only finitely many _L_ + _ωω_ ( _R_ )-formulas with quantifier-rank≤ _n_. So take an
enumeration of them _φ_ 1 , ..., _φm_ and define, for each _M_ and _U_ :

```
χMU =⋀{ φi :( M , U )⊧ φi ( U ), and 1≤ i ≤ m }
```
Now consider the set of _L_ + _ωω_ ( _R_ )-formulas:

```
Φ={ χMU : U ∈Q M , for some M and some U }
```
It is easy to see that∣Φ∣≤ 2 _m_ , so that⋁Φ is an _L_ + _ωω_ ( _R_ )-formula. We claim that
⋁Φ defines Q. If _U_ ∈Q _M_ , then _χMU_ ∈Φ and so( _M_ , _U_ )⊧⋁Φ( _U_ ). Conversely, if
( _M_ , _U_ )⊧⋁Φ( _U_ ), then( _M_ , _U_ )⊧ _χNV_ for some _χNV_ ∈Φ, i.e. for some _N_ and _V_ with

(^22) In the third clause, the expression on the right-hand side denotes the supremum of a set of ordinals,
that is, the least upper bound of the set of ordinals.
(^23) Feferman (2010: Theorem 4.4). As Feferman notes, the proof employs a technique due to Fraïssé
(1954b).


```
16.6. the principle of closure 403
```
_V_ ∈Q _N_. Since _χNU_ pins down the truth or falsity of every formula with quantifier-
rank≤ _n_ , we have( _M_ , _U_ )≡+ _n_ ( _N_ , _V_ ). So since Q is≡+ _n_ -invariant, we have that
_U_ ∈Q _M_.

```
The key to the proof is that every L + ωω ( R )-formula has some finite quantifier-rank,
and that the number of L + ωω ( R )-formulas with a bounded quantifier-rank is well be-
haved. This basic thought can now be carried over from finitary to infinitary logics.
For any L +∞∞-formula φ , there is some least κ such that φ is an L + κκ -formula; and,
for each κ and fixed R , there is some cardinal μ such that there are exactly μ -many
L + κκ ( R )-sentences up to logical equivalence.^24 Similarly, for any L +∞ ω ( R )-sentence
φ , there is some (smallest) κ such that φ is an L + κω ( R )-sentence; and, for each κ ,
there is some cardinal μ such that there are exactly μ -many L + κω ( R )-sentences up to
logical equivalence. Where M and N are R -structures we now write M ≡+ κλN to
indicate: M ⊧ φ iff N ⊧ φ for all L + κλ ( R )-sentences φ , and similarly for M ≡− κλN.
Then a tiny tweak to Theorem 16.2 yields:
```
```
Theorem 16.3: Let Q be any quantifier:
(1) Q is L +∞∞ -definable iff Q is ≡+ κκ-invariant for some cardinal κ
(2) Q is L −∞∞ -definable iff Q is ≡− κκ-invariant for some cardinal κ
Moreover, for any cardinal λ ≥ ω:
(3) Q is L +∞ λ-definable iff Q is ≡+ κλ-invariant for some cardinal κ ≥ λ.
(4) Q is L −∞ λ-definable iff Q is ≡− κλ-invariant for some cardinal κ ≥ λ
Proof sketch. We will sketch case (3), leaving the rest to the reader.
Left-to-right. If Q is L +∞ λ -definable, then it is defined by some L + κλ ( R )-formula
χ ( R )with κ ≥ λ , i.e. U ∈Q M iff( M , U )⊧ χ ( U )for any structure M. Now if
( M , U )≡+ κλ ( N , U )then U ∈Q M iff V ∈Q N , as in Theorem 16.2.
Right-to-left. Assume Q is≡+ κλ -invariant. Let φ 1 , ..., φα , ... exhaustively list the
L + κλ ( R )-formulas, and define:
```
```
χMU =⋀{ φα :( M , U )⊧ φα ( U )}
```
```
Now consider the set of L + κλ ( R )formulas:
```
```
Φ={ χMU : U ∈Q M , for some M and some U }
```
```
Since this is a set,⋁Φ is an L +∞ λ ( R )-formula. And it defines Q, exactly as in The-
orem 16.2.
```
```
There are, then, proper-class-many logics L which come equipped with a family of
relations, such that a quantifier is L -definable iff it is invariant under some relation
```
(^24) This holds since the _L_ + _κκ_ ( _R_ )-sentences form a set (Dickmann 1975: 64–5).


404 quantifiers

in this family. Abusing notation slightly, these are the proper-class-many logics _Lκλ_ ,
with or without identity, for _κ_ =∞or _κ_ = _ω_ , and _κ_ ≥ _λ_ ≥ _ω_.
The philosophical upshot is that we have proper-class many logics which can
plausibly claim to satisfy both the Principle of Closure and the Principle of Non-
Discrimination. After all, Theorems 16.2–16.3 _precisely_ guarantee that our logics sat-
isfy Closure. And as for Non-Discrimination:≡+ _n_ -invariance is increasingly non-
discriminatory as _n_ increases; and≡− _κλ_ is increasingly non-discriminatory as _κ_ in-
creases; so it seems quite reasonable to think that the _limit_ of such an increasing
process is ‘appropriately’ non-discriminatory.
It is not that we want to endorse any one of these proper-class-many logics as _the_
correct logic. Our point is simply this: if we want to draw precise bounds to logic,
then we must invoke further intuitions.

```
Single invariance relations and weak-definability
```
It is worth emphasising that our Theorems 16.2–16.3 invoke _families_ of similarity
relations. Crucially, we characterised _L_ + _ωω_ using countably many relations,≡+ _n_ for
each natural number _n_. Worse, we characterised _L_ +∞∞using proper-class many re-
lations,≡+ _κκ_ for each infinite cardinal _κ_. Significantly, we have not found a _single_
relation,∼, with the following property: Q is∼-invariant iff Q is definable using a
formula whose only quantifiers are themselves∼-invariant.
We call a relation which satisfies this property a _fixed-point-invariant_ relation.
Finding such a relation would certainly be mathematically elegant. However, it is
unclear that finding a fixed-point-invariant relation should make us believe that we
have found the (once and for all) bounds of logic. Even if we accept both the Princi-
ple of Non-Discrimination and the Principle of Closure, there is no _obvious_ reason
to think that either Principle should force us to search for just _one_ relation, rather
than for a family of them (as in Theorems 16.2–16.3).^25
More immediately, though, we know of no interesting fixed-point-invariant re-
lations, and it is not obvious (to us) that any exist. But we should pause here.
Earlier, we said that Q is _L_ -definable iff there is some _L_ ( _R_ )-formula _χ_ ( _R_ )such
that _U_ ∈Q _M_ iff _M_ ⊧ _χ_ ( _U_ )for any structure _M_. That notion is quite demanding,
so here is a weaker notion. Say that Q is _weakly-L-definable_ iff: for any cardinal _κ_ ,
there is some _L_ ( _R_ )-formula _χκ_ ( _R_ )such that _U_ ∈Q _M_ iff _M_ ⊧ _χκ_ ( _U_ )for any
structure _M_ of cardinality _κ_.
The following Theorem shows that weak-definability _does_ align with certain sin-
gle invariance-relations. (The first three results are due, respectively, to McGee,
Bonnay and Engström, and Barwise;^26 the definitions of potential-isomorphism

(^25) This is essentially Feferman’s (2010: 13) point.
(^26) McGee (1996), Bonnay and Engström (2013: Theorem 11.1), and Barwise (1973). Barwise’s result is
cited in this connection by Bonnay (2008: 62).


```
16.6. the principle of closure 405
```
and partial-relativity are relegated to a footnote):^27

Theorem 16.4: _Let_ Q _be any quantifier:_

```
(1) Q is weakly-L +∞∞ -definable iff Q is isomorphism-invariant
(2) Q is weakly-L −∞∞ -definable iff Q is relativeness-correspondence-invariant
(3) Q is weakly-L +∞ ω-definable iff Q is potential-isomorphism-invariant
(4) Q is weakly-L −∞ ω-definable iff Q is partial-relativity-invariant
```
_Proof sketches._ In all four cases, the difficult direction is left-to-right, and the proof
strategy is the same. First, given our interest in _weak_ -definability, we can fix some
cardinal, _κ_ , and let( _M_ , _U_ )have∣ _M_ ∣ = _κ_. We then find a sentence _σMU_ such
that any structure satisfying _σMU_ is isomorphic (respectively: relative, potentially-
isomorphic, or partially-relative) to( _M_ , _U_ ). We then follow the strategy of Theo-
rems 16.2–16.3, replacing _χMU_ with _σMU_. So it just remains to show how to obtain an
appropriate _σMU_.
_(1)._ By Lemma 15.9, there is an _L_ +∞∞-sentence satisfied by precisely the struc-
tures which are isomorphic to( _M_ , _U_ ).
_(2)._ Exactly as in case (1), but invoking Lemma 15.14.
_(3)_. The Scott sentence of( _M_ , _U_ )is an _L_ +∞ _ω_ -sentence which is satisfied precisely
by those structures which satisfy exactly the same _L_ +∞ _ω_ -sentences as( _M_ , _U_ ).^28
By Karp’s Theorem, these are precisely the structures which are potentially-
isomorphic to( _M_ , _U_ ).^29
_(4)_. Let _ρMU_ be the Scott sentence of the quotiented structure( _M_ , _U_ )/∼, defined in
Definition 15.11. Turn this it into an _L_ −∞ _ω_ -sentence _σMU_ , by replacing each instance
of ‘=’ with an _L_ −∞ _ω_ -formula abbreviating Leibniz-indiscernibility−(see the proof
of Lemma 15.14). By Lemmas 15.12 and 15.14, _σMU_ is satisfied precisely by those
structures which satisfy exactly the same _L_ −∞ _ω_ -sentences as( _M_ , _U_ ). By a result
of Casanovas et al., these are precisely the structures which are partial-relatives of
( _M_ , _U_ ).^30

Now, by Lemma 15.9, structures are isomorphic iff they satisfy exactly the same
_L_ +∞∞-sentences. So, were it not for the restriction to _weak_ -definability, case (1) of

(^27) Let _M_ and _N_ be two structures. A function _g_ is a _partial isomorphism_ from _M_ to _N_ iff there are
substructures _A_ ⊆ _M_ and _B_ ⊆ _N_ such that _g_ is an isomorphism _A_ Ð→ _B_. A _potential isomorphismI_
between two structures _M_ and _N_ is a non-empty set of partial isomorphisms from _M_ to _N_ such that, for
any _g_ ∈ _I_ :

- for any _a_ ∈ _M_ , there is an _h_ ∈ _I_ with _g_ ⊆ _h_ and _a_ ∈domain( _h_ ); and
- for any _b_ ∈ _N_ , there is an _h_ ∈ _I_ with _g_ ⊆ _h_ and _b_ ∈range( _h_ )
Partial relativity is then the obvious ‘relativeness correspondence’ version of potential isomorphism; see
Casanovas et al. (1996: Definitions 4.1, 4.7).

(^28) For details, see e.g. Marker (2002: Exercise 2.5.33(b)).
(^29) Karp (1965) and Marker (2002: Exercise 2.5.34(c)).
(^30) Casanovas et al. (1996: 521).


406 quantifiers

Theorem 16.4 would provide us with a fixed-point-invariant relation. Exactly simi-
lar points hold for cases (2)–(4).
Sadly, though, all four cases essentially depend upon the restriction to _weak_ -
definability. As Feferman observes, to overcome the restriction to weak-
definability, we would have to ‘disjoin’ all of the formulas _χκ_ which (weakly-)define
Q for _κ_ -sized structures. Since there are proper-class-many cardinals, the ensuing
‘disjunction’ would therefore have to be proper-class-sized. As such, it would have
to go ‘well beyond _L_ ∞∞as ordinarily conceived’.^31
We agree with Feferman’s concern, and would push the point further. _If_ we can
even make sense of a proper-class-sized _sentence_ —i.e. a single entity consisting of
proper-class-many symbols—then we should equally well be able to make sense
of proper-class-sized _domains_. But now the notion of weak-definability should
be strengthened to accommodate proper-class-sized structures. In particular, to
weakly- _L_ -define a quantifier, we should _also_ require that there be an _L_ ( _R_ )-formula
_χ_ Ω( _R_ )such that _U_ ∈Q _M_ iff _M_ ⊧ _χ_ Ω( _U_ )for any proper-class-sized structure
_M_. And now the proof-strategy of Theorem 16.4 breaks down at an earlier stage.
To illustrate the problem, we focus on case (1). Given a proper-class-sized struc-
ture, _M_ , we may be able to find a proper-class-sized sentence _σMU_ which pins down
proper-class-sized structures up to isomorphism. But to find the appropriate for-
mula _χ_ Ω( _R_ ), we would now need to disjoin all the combinatorially possible _σ_ s for
all proper-class-sized structures (see the strategy of Theorems 16.2–16.3). And there
may be two-to-the-power-proper-class-many such sentences. If that is even intelli-
gible, it is strictly more than proper-class-many. Cantor’s Theorem keeps chasing
us; we will get nowhere near a fixed-point-invariant relation by this route.
Similar considerations show that Tarski–Sher counts _more_ as logical than does
_L_ ∞∞. Intuitively, there are two-to-the-power-proper-class-many functions from
the class of cardinals to the set{0, 1}. So, there are two-to-the-power-proper-class-
many bijection-invariant quantifiers which behave like existential quantification on
domains of _certain_ cardinalities (those mapped to 0), and like universal quantifica-
tion on domains of certain _other_ cardinalities (those mapped to 1). But since there
are only (!) proper-class-many _L_ +∞∞-sentences, _most_ bijection-invariant quanti-
fiers are not _L_ +∞∞-definable.
The situation, then, is as follows. There are _many_ logics which satisfy certain ver-
sions of Non-Discrimination and Closure. These are the proper-class-many logics
_Lκλ_ with or without identity (for _κ_ =∞or _κ_ = _ω_ , and _κ_ ≥ _λ_ ≥ _ω_ ); and the four log-
ics we obtain by treating isomorphism-, relativeness-correspondence-, potential-
isomorphism-, and partial-relativity-invariance as necessary and sufficient for log-
icality. The proper-class-many logics of the form _Lκλ_ certainly _look_ like logics, but
they cannot obviously be characterised by a single relation. The last four can be

(^31) Feferman (2010: 8).


```
16.7. mcgee’s squeezing argument 407
```
characterised by a single relation, but do not obviously _look_ like logics, in that they
countenance notions more _logical quantifiers_ than _sets_. Without invoking further in-
tuitions about the nature of logic, it just is not clear how to choose any _one_ of these
as ‘the bounds of logic’.

### 16.7 McGee’s squeezing argument

At this point, we turn to McGee’s argument for Tarski–Sher. This invokes both
the Principles of Non-Discrimination and Closure, and might _hope_ to trade on no
further principles. We formulate McGee’s Squeezing Argument as follows:^32

```
(a)If Q is logical, then Q is bijection-invariant
(b)If Q is weakly- L +∞∞-definable, then Q is logical.
(c)Q is bijection-invariant iff Q is weakly- L +∞∞-definable
So:Q is logical iff Q is bijection-invariant.
```
This argument is distinctive, in that McGee only begins with the idea that Non-
Discrimination is _necessary_ for logicality, rather than both necessary and sufficient.
Moreover, the argument is valid, and (c) is just part of Theorem 16.4. So we must
focus on (a) and (c).
McGee’s own attempt to establish (a) involves very little more than a few remarks
to the effect that logic should be _non-discriminatory_. Now we saw in §16.5 that this
will not work: (a) cannot be established just by appealing to the Principle of Non-
Discrimination. However, we might be able to establish (a) by combining Non-
Discrimination with the Principle of Closure. After all, we saw in §16.6 that these
two Principles together entail that our pentagons _B_ and _B_ ′should not be treated as
logical. Moreover, although we saw in §16.6 that various different notions of invari-
ance respect both Principles, all of these notions _entail_ bijection-invariance. (For
example, anything which is≡+ _n_ -invariant is bijection-invariant, just by Lemma 16.1
and the fact that if _M_ ≅ _N_ then _M_ ≡+ _nN_ .) So, if McGee is happy to invoke the
Principle of Closure, then he may be able to secure (a).
In fact, the Principle of Closure is a key component of McGee’s defence of
premise (b). His defence comes in two parts:

```
(b1)‘the primitive connectives of L +∞∞are all intuitively clearly logical connec-
tives’
(b2)‘intuitively, anything definable from logical connectives is a logical connec-
tive’.^33
```
Clearly (b2) is just a version of the Principle of Closure. However, (b1) is a separate
idea, eminently contestable. We, indeed, do not find it ‘intuitively clear’ that the

(^32) We call it this, since it has the same shape as Kreisel’s (1967: 152–7) squeezing argument.
(^33) Both quotes from McGee (1996: 571); we have inserted the numbering and the superscript ‘+’.


408 quantifiers

primitive connectives of _L_ +∞∞are ‘logical’. After all, these are strongly infinitary
operations.
But even if we waive this point, there is a further problem with McGee’s argu-
ment. For reasons we saw §16.6, (b1) and (b2) are jointly _insufficient_ to establish
(b). Instead, we must replace (b2) with the stronger claim that anything _weakly_ -
definable from logical connectives is a logical connective. But the status of this last
claim is even less obvious. Bonnay attempts to justify the Principle of Closure by
stating that, if we have _defined_ an operation using only logical vocabulary, then he
simply could ‘not see how a non-logical element could creep in [among] the logical
elements of the definition and make the defined operator non logical.’^34 However,
if we have only _weakly_ -defined an operation, then perhaps a non-logical element
creeps at exactly the moment when we effectively try to entertain a _class-length_ sen-
tence and thereby embrace the idea that there are more logical quantifiers than there
are sets. Bluntly: it is not at all obvious that _L_ +∞∞- _indefinable_ quantifiers must count
as logical.
As such, we must set aside McGee’s argument for Tarski–Sher. And so we still
have proper-class-many candidate logics to contend with.

### 16.8 Mathematical content

At this point, the most usual way to attempt to rule out some of these candidate log-
ics is to maintain that some of them provide us with too much _mathematical_ content
to count as logic. For example, Feferman alleges that Tarski–Sher ‘assimilates logic
to mathematics, more specifically to set theory’.^35 For three reasons, we are not sure
that this is a fair objection.

```
Policing boundaries
```
The key new idea here is that it is important to police some boundary between logic
and mathematics. This idea does not seem to have anything to do with the idea that
logic should be formal or necessary, or that logic should obey Non-Discrimination
or Closure. It seems, to us, to be an entirely _additional_ idea. As such, it is hardly sur-
prising that Sher is totally comfortable in saying that ‘[t]he bounds of logic, on my
view, are the bounds of mathematical reasoning’, given that her aim was to explicate
the idea of logic as formal and necessary.^36 It is equally unsurprising, though, that
other authors—such as Feferman and Bonnay—feel strongly the other way.^37

(^34) Bonnay (2008: 50).
(^35) Feferman (1999: 37, 2010: 8).
(^36) Sher (1991: xii); cf. also Tarski (1986: §4).
(^37) Feferman (1999: 37–9) and Bonnay (2008: 35–8).


```
16.8. mathematical content 409
```
Outsiders to this debate, though, might well wonder why it _matters_ how we
carve up the territory between logic and mathematics. Granted, there is a (slightly
porous) _institutional_ boundary, arising from the way in which mathematicians and
logicians tend to label themselves and each other. But it is not obvious that we need
to assign any deep _philosophical_ significance to that boundary.

```
Non-logical assumptions
```
We should also take care in articulating the accusation that Tarski–Sher ‘assimilates
logic to mathematics’. To make the point, consider the simple claim that 2+ 2 =4.
This has what we might call a ‘logical analogue’, namely this truth of logic:

```
[∃= 2 xF ( x )∧ ∃= 2 xG ( x )∧ ¬∃ x ( F ( x )∧ G ( x ))]→∃= 4 x ( F ( x )∨ G ( x ))
```
But now suppose that—somehow—there were no structures with cardinality more
than 4. Then the ‘logical analogue’ of the _false_ arithmetical claim that 2+ 2 =5, i.e.:

```
[∃= 2 xF ( x )∧ ∃= 2 xG ( x )∧ ¬∃ x ( F ( x )∧ G ( x ))]→∃= 5 x ( F ( x )∨ G ( x ))
```
would be true in all structures, and hence would be a truth of logic. Contraposing:
to make it false, we need there to be sufficiently large finite structures. Moreover,
since Tarski–Sher treats arbitrarily large cardinality quantifiers as logical, the ‘logi-
cal analogues’ of elementary facts from transfinite cardinal arithmetic require that
there are _arbitrarily large_ structures.
We do not want to _contest_ the claim that there are arbitrarily large structures. Our
aim is only to draw attention to its _status_. If the claim that there are arbitrarily large
structures is not itself a truth of _logic_ , then Tarski–Sher does _not_ assimilate mathe-
matics to logic. Rather, it assimilate mathematics to logic _plus the extra-logical claim_
that there are arbitrarily large cardinals.^38

```
The indeterminacy of logic?
```
The greatest resistance to assimilating mathematics to logic comes from combining
the idea that some mathematical claims are genuinely indeterminate, with the idea
that anything expressed using only logical language is (determinately) either a the-
orem or not. As Feferman notes, these two ideas can come into conflict. Indeed,
Feferman thinks that the continuum hypothesis, CH, should be left indeterminate,
but worries that ‘we can express [CH...] as logically determinate’ given Tarski–
Sher.^39 We reconstruct Feferman’s complaint as follows. Consider these sentences:

(^38) Cf. the status of the Axiom of Infinity for Russell’s logicism, as discussed by Potter (2000: 150–2).
(^39) Feferman (1999: 38).


410 quantifiers

```
CHS:=∃=א 1 xF ( x )↔∃= 2 א 0 xF ( x )
NCHS:=¬(∃=א 1 xF ( x )∧ ∃= 2 א 0 xF ( x ))
```
According to Tarski–Sher, CHSis a _logical_ truth iff CH is true, and NCHSis a _logical_
truth iff CH is false. So: it seems that logical facts will now determine the truth or
falsity of the Continuum Hypothesis.^40
There is, though, a lacuna in this argument. For suppose we think that CH is
indeterminate. Then nothing, prima facie, would prevent us from thinking that it is
_similarly indeterminate_ whether CHSor NCHSis a logical truth.^41
This is consonant with Hamkins’s reaction to second-order logic, as discussed in
§8.4. Hamkins seems to have no problem with employing second-order logic _per
se_ ; his complaint is against those who think that there is such a thing as _full_ second-
order logic, since he believes that there are many equally admissible interpretations
of the powerset operator. Similarly here: someone who thinks that there are many
equally good interpretations of set theory—some of which obey CH, and some of
which do not—does not need to _reject_ Tarski–Sher. Instead, she might simply insist
that there is no _single_ standard semantics for the (cardinality-)quantifiers, such as
∃=א 1 and∃= 2 א 0 , even though (she insists) they count as _logical_.
In saying all of this, we are not intending to endorse it. We do not claim to
have a completely firm grasp on what the ‘indeterminacy’ of logic would amount
to. Equally, we do not claim to have a completely firm grasp on what it means to
say, in the present context, that CH is indeterminate. We just want to suggest that
these two ideas may well go hand in hand.

### 16.9 Explications and pluralism

In this chapter, we have focussed on the intuitive ideas that logic should satisfy some
Principle of Non-Discrimination and some Principle of Closure. We have also con-
sidered whether there should be some intuitive separation between logic and math-
ematics. Such intuitive guides, we think, fail to establish _sharp_ bounds for logic.
This is not, though, to say that Tarski–Sher is wrong. It is simply to say that, if
Tarski–Sher is to be established, it must be established by other means. One way to
do that would be to suggest that it is simply the best _explication_ of logic. That is, it
is the best purely formal notion which is both useful and a reasonable descendant
of some pre-formal, intuitive notion of logic.
There is no doubt that Tarski–Sher has many merits. It is simple to state. It draws
the bounds of logic precisely, and in a way which clearly satisfies the Principles
of Non-Discrimination and of Closure. Granted, it leaves the boundary between

(^40) Cf. Shapiro (1991: 105) on second-order logic.
(^41) This possibility was also suggested by Sher in conversation.


```
16.9. explications and pluralism 411
```
mathematics and logic blurrier than expected; but, as discussed in §16.8, it is un-
clear how much this matters. If logic is to be explicated in semanticist terms at all
(see §16.2), then Tarski–Sher is a great explication.
Nevertheless, it is unclear that any _unique_ explication will be the best explication
for all possible circumstances. In this chapter, we have argued that proper-class
many logics satisfy Non-Discrimination and Closure. Any of these formal logics
could serve as an explication of the intuitive notion of _logic_ , depending on what one
_wanted_ from logic; and what one wants might vary from circumstance to circum-
stance. In certain circumstances, we might insist that the logic under discussion
should be associated with a finitary deductive system, whereupon _Lωω_ suggests it-
self; in other circumstances, we might insist that every logical operation should be
definable by some (infinitary) formula, in which case we will stop short of bijection-
invariance and reach only for _L_ ∞∞; and so on.
This naturally leads to a _pluralism_ about the bounds of logic. But the pluralism
in question is quite mundane. Consider the following inference pattern:

```
there are exactlyא 14 φ s
there are exactlyא 14 ψ s
So:there are exactlyא 14 things which are either φ or ψ
```
We can all agree that there is an _entailment_ here. The scope for pluralism is really
only over whether the entailment holds ‘as a matter of _logic_ ’ or ‘for other reasons’. In-
deed, the scope of pluralism is really very narrow; for certainly the entailment holds
‘thanks to considerations which can be formulated in bijection-invariant terms’.
And at this point, we may well wonder whether it is worth bothering to ask whether
that entailment also merits the honorific, that it is _logical_.



