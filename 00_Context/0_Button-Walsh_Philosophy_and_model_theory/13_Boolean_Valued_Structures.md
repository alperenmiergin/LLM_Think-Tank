**Kaynak:** [[00_Context/0_Button-Walsh_Philosophy_and_model_theory/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

## 13 Boolean-valued structures

Part B of this book has explored the interplay between moderation, modelism, scep-
ticism, various external and internal categoricity results, and our ability to pin down
mathematical entities and concepts. In this chapter, we want to explore similar is-
sues which arise at a ‘deeper’ level. These issues concern our ability to pin down
_semantics_ itself. We scratched the surface of this issue, when we discussed whether
a moderate can invoke full (rather than Henkin) semantics for second-order logic
(see Chapters 7–8). But in this chapter, we ratchet things up a gear.
From the outset of this book, we have spoken in bivalent terms, describing a
model as making a sentence true or false. We have made room for indeterminacy
only insofar as we have considered supervaluation. The immediate message of this
chapter is that we could have pursued model theory in _radically_ non-bivalent terms,
using Boolean-valued models.
After a brief discussion of _two-valued_ semantics, we provide an introduction to
the theory of Boolean algebras, and show how Boolean algebras supply us with
_many-valued_ semantics. With a multiplicity of different semantics on offer, this im-
mediately raises a doxological question: _How can we pin down the semantics for our
language?_ The question has a familiar ring to it, and it sustains deep comparison
with the Modelist’s Doxological Challenge, as discussed in Chapters 6–8. We ex-
plore the parallels in detail in this chapter. We close the chapter with a discussion
of Suszko’s Thesis, which can be used to raise sceptical concerns about the intended
interpretation of the semantic values, from the ‘opposite’ direction.

### 13.1 Semantic-underdetermination via Push-Through

Suppose we want to pin down a _consequence relation_ between theories and individ-
ual sentences. Informally, we might think of these as premises and a conclusion;
formally, we are looking to pin down a relation on℘(Sent)×Sent, for some set
Sent of sentences.
For example, we might want to pin down the consequence relation for classical
_sentential_ logic. Let us temporarily symbolise this with⊧. As in §1.c, we can lay
down rules of inference rules for the sentential connectives. Since these rules are
(provably) sound and complete for classical sentential logic, _T_ ⊧ _φ_ iff _T_ ⊢ _φ_. So
our inference rules pin down the relation⊧in extension.


296 boolean-valued structures

However, _the inference rules cannot pin down the usual semantics_ which are ordi-
narily used to define⊧. This follows immediately from a simple Push-Through
Construction (see §2.1). The usual semantics for classical sentential logic is given
by treating the sentential connectives as truth-functions with two possible values,
True and False. A simple Push-Through Construction on the truth-functions will
show us that the two values could instead have been: False and True (i.e. the same
values, but taken the other way around); or Julius Caesar and Love; or, indeed, _any_
two distinct objects. Indeed, the very first permutation argument, due to Frege, was
put in precisely these terms.^1
This elementary observation yields an argument that the inference rules of the
logical vocabulary fail to determine the the semantic structure for our language:

_The semantic-underdetermination argument.Inference rules can only manage to de-
fine the relation_ ⊢_. But the relation_ ⊢ _is sound and complete for many different semantic
structures. So: inference rules do not determine the meanings of logical expressions._

Still, in this form, the semantic-underdetermination argument is not very scary. We
might well grant that the inference rules cannot, on their own, determine whether
truth is the True, or Goodness, or Love, but hope that they _can_ determine that there
are _exactly_ two truth values which interact with each other in _exactly_ the ways de-
scribed by the usual truth-tables. If they could do that, then the inference rules of
classical sentential logic would determine the semantic structure _categorically_ (i.e.
up to isomorphism). And one might well think that this is all the determinacy of
meaning that the logical vocabulary _ought_ to yield. (Compare this with the now fa-
miliar point, first raised in §2.2, that for many mathematical purposes we only care
about identity up to isomorphism.)
Alas, this is not to be. We will show this developing a _Boolean-valued_ framework,
and presenting some interestingly non-standard semantic structures.

### 13.2 The theory of Boolean algebras

We start by setting out the theory of Boolean algebras. The signature of Boolean
algebras has a one-place function,−, two two-place functions,⋅and+, and two con-
stants, 1 and 0.^2 We now say:

(^1) Frege (1893: §10).
(^2) This makes it the language of rings. Many authors use¬for−,∨for+, and∧for⋅(see e.g. Hodges
1993: 38). We have avoided this, since we want to avoid the potential confusion between object-language
connectives and a signature’s function-symbols. Some authors also do not stipulate that 0 ≠1, and so admit
one-element Boolean algebras.


```
13.2. the theory of boolean algebras 297
```
Definition 13.1: _The theory of Boolean algebras is given by the universal closures of the
following axioms:_

#### 0 ≠ 1

```
x ⋅ x = x x + x = x
x ⋅ y = y ⋅ x x + y = y + x
( x ⋅ y )⋅ z = x ⋅( y ⋅ z ) ( x + y )+ z = x +( y + z )
( x ⋅ y )+ y = y ( x + y )⋅ y = y
x ⋅( y + z )=( x ⋅ y )+( x ⋅ z ) x +( y ⋅ z )=( x + y )⋅( x + z )
x ⋅ − x = 0 x + − x = 1
```
_A_ Boolean algebra _is any structure which satisfies the theory of Boolean algebras._

As an example,℘( _A_ )supplies a Boolean algebra whenever _A_ ≠∅, by interpreting⋅
as intersection,+as union,−as complementation, 0 as∅, and 1 as _A_.
Indeed, the theory of Boolean algebras should look very familiar. Try the fol-
lowing. Systematically replace the variables _x_ , _y_ , _z_ with sentential variables, _φ_ , _ψ_ , _θ_.
Then systematically replace each instance of−with¬, each⋅with∧, each+with
∨, 1 with your favourite tautology of sentential logic, 0 with your favourite contra-
diction, and=with↔. The resulting statements are now familiar tautologies of
sentential logic.
Here is a slightly different perspective on the same point. Let _Two_ be a structure
whose domain is the usual set of truth values,{True, False}, where 1 _Two_ =True
and 0 _Two_ =False and where−,+and⋅are respectively interpreted as the usual
truth-functions implemented by¬,∨and¬. It is easy to see that _Two_ is a Boolean
algebra. And this is our first glimpse of the central idea of this chapter, that Boolean
algebras can be used to set up semantic frameworks.
Boolean algebras can also be thought of as partial-orders of a certain sort, with
the order _x_ ≤ _y_ given by _x_ ⋅ _y_ = _x_. This corresponds to the elementary fact of classical
sentential logic, that _φ_ → _ψ_ iff( _φ_ ∧ _ψ_ )↔ _φ_. Using this partial order, we can define
a particularly important species of Boolean algebras:

Definition13.2: _A_ complete Boolean algebra _, B, is one such that any nonempty set of
elements X_ ⊆ _B has a_ supremum _, written_ ∑ _X, satisfying the following two properties:_

_Upper bound.x_ ≤∑ _X for all x_ ∈ _X.
Least upper bound.If x_ ≤ _y for all x_ ∈ _X, then_ ∑ _X_ ≤ _y._

As these names suggest,∑ _X_ is an upper bound of the set _X_ and it is the least


298 boolean-valued structures

such one.^3 We can equivalently characterise completeness by insisting that every
nonempty set _X_ has an _infimum_ , written∏ _X_ , which satisfies these two properties:

_Lower bound._ ∏ _X_ ≤ _x for all x_ ∈ _X.
Greatest lower bound.If y_ ≤ _x for all x_ ∈ _X, then y_ ≤∏ _X._

A simple and important example of complete Boolean algebra is℘( _A_ ), for any _A_ ,
where the partial order corresponds to the subset relation, so that the supremum is
the union and the infimum is the intersection.
Using the partial order, we also define the notion of a filter, which will be hugely
important in this chapter and the next:

Definition 13.3: _Let B be a Boolean algebra. A_ filter _on B is any set F_ ⊆ _B such that:_

```
(1) 0 ∉ F
(2)if a ∈ F and b ∈ F, then a ⋅ b ∈ F
(3) if a ∈ F and a ≤ b, then b ∈ F
```
_An_ ultrafilter _is any filter which also obeys:_

```
(4)for any a ∈ B: either a ∈ F or − a ∈ F
```
A simple example of a filter is the upward closure{ _b_ ∈ _B_ : _a_ ≤ _b_ }of any non-
zero element _a_ of the Boolean algebra _B_. Another example of a filter, this time on
℘( _X_ ), is the set of cofinite subsets of _X_ , which is sometimes called the _Fréchet filter_
(we defined cofiniteness in §5.b). But these two examples are not ultrafilters. For a
simple example of an ultrafilter on℘( _X_ ), consider{ _A_ ⊆ _X_ : _b_ ∈ _A_ }for any _b_ ∈ _X_.
In general, there are fewer natural examples of ultrafilters than filters.^4

### 13.3 Boolean-valued models

In this chapter, our interest in Boolean algebras comes via their use in defining
Boolean-valued models. The first step in this direction involves sprucing up the
notion of a structure, as laid down in Definition 1.2, so that it projects its values
onto a complete Boolean algebra:^5

(^3) This name invites comparison with real numbers, and a small amount of experience suffices to make
one aware of the handful of basic inference patterns involving suprema which are common to the real num-
bers and complete Boolean algebras.
(^4) However, by the Ultrafilter Theorem 14.4, any filter can be extended to an ultrafilter. Indeed, ultra-
filters can be equivalently characterised as filters which are maximal in that they are not properly contained
in any other filter (see Givant and Halmos 2009: 171, 175; Jech 2003: 74).
(^5) In the context of classical logic, the primary use of Boolean algebras is in set theory (see e.g. Bell
2005), where the definition is often restricted to the signature whose only primitive is∈(an exception
is Grishin 2011). However, it is easy to generalise the definition; cf. the use of _Heyting_ (pre-)algebras in
Troelstra and Dalen (1988: Definitions 6.2–6.3 pp.710–11) and Rin and Walsh (2016: Definition 6.1).


```
13.3. boolean-valued models 299
```
Definition 13.4: _Let B be a complete Boolean algebra and let_ L _be a signature. Then
a B_ -valuedL-structure _, M, consists of_

_- a non-empty set, M, which is the underlying domain of M,
- an object cM_ ∈ _M for each constant symbol c_ ∈L _,
- a map_ ⟦ _R_ (⋅, ...,⋅)⟧ _M_ : _Mn_ Ð→ _B for each n-place relation symbol R_ ∈L _,
- a map fM_ : _Mn_ Ð→ _M for each n-place function symbol f_ ∈L _, and
- a map_ ⟦⋅=⋅⟧ _M_ : _M_^2 Ð→ _B_

_Where no confusion can arise, we omit the superscript on these maps. These maps must
satisfy the following, for all n-place relation symbols R_ ∈L _, all n-place function symbols
f_ ∈L _, and all a_ , _b_ , _c_ , _a_ 1 , ..., _an_ , _b_ 1 , ..., _bn_ ∈ _M:_

```
⟦ a = a ⟧= 1
⟦ a = b ⟧=⟦ b = a ⟧
⟦ a = b ⟧⋅⟦ b = c ⟧≤⟦ a = c ⟧
⟦ a 1 = b 1 ⟧⋅...⋅⟦ an = bn ⟧⋅⟦ R ( a 1 , ..., an )⟧≤⟦ R ( b 1 , ..., bn )⟧
⟦ a 1 = b 1 ⟧⋅...⋅⟦ an = bn ⟧≤⟦ f ( a 1 , ..., an )= f ( b 1 , ..., bn )⟧
```
Now, where _Two_ is the two-element algebra from before, a _Two_ -valuedL-
structure is essentially just anL-structure, in the standard sense. There is just a
slightly baroque twist that, instead of considering whether( _a_ 1 , ..., _an_ )∈ _RM_ , as
in the standard case, we consider whether⟦ _R_ ( _a_ 1 , ..., _an_ )⟧ _M_ =True, in the _Two_ -
valued case.
Having defined Boolean-valued structures, though, we can now set up a Boolean-
valued semantics. Our aim is to define the semantic value,⟦ _φ_ ⟧ _M_ , of a formula _φ_ in
a Boolean-valued structure _M_.
Much as in Definition 1.5 of §1.5, where _M_ is a _B_ -valued structure, we let _M_ ○be
the _B_ -valued structure obtained by adding new constant symbols _ca_ with _cM_

○
_a_ = _a_
for every _a_ ∈ _M_. We interpret eachL( _M_ )-term, _t_ , as a function _tM_

○
: _Mn_ Ð→
_M_ , exactly as in §1.5. We then say that _M_ ○assigns values from _B_ to theL( _M_ )-
sentences according to the following rules:

```
⟦ t 1 = t 2 ⟧ M
```
```
○
=⟦ tM
```
```
○
1 = t
M ○
2 ⟧
```
```
M ○
⟦ R ( t 1 , ..., tn )⟧ M
```
```
○
=⟦ R ( tM
```
```
○
1 , ..., t
M ○
n )⟧
```
```
M ○
```
```
⟦¬ φ ⟧ M
```
```
○
=−⟦ φ ⟧ M
```
```
○
```
```
⟦ φ ∧ ψ ⟧ M
```
```
○
=⟦ φ ⟧ M
```
```
○
⋅⟦ ψ ⟧ M
```
```
○
⟦ φ ∨ ψ ⟧ M
```
```
○
=⟦ φ ⟧ M
```
```
○
+⟦ ψ ⟧ M
```
```
○
```
```
⟦∃ xφ ( x )⟧ M
```
```
○
=∑
a ∈ M
```
```
⟦ φ ( ca )⟧ M
```
```
○
⟦∀ xφ ( x )⟧ M
```
```
○
=∏
a ∈ M
```
```
⟦ φ ( ca )⟧ M
```
```
○
```
The clauses for the quantifiers explain why Definition 13.4 requires that _B_ is a _com-
plete_ Boolean algebra: we need to be sure that∑ _X_ and∏ _X_ exist for any nonempty


300 boolean-valued structures

set of elements _X_. We then stipulate that⟦ _φ_ ⟧ _M_ =⟦ _φ_ ⟧ _M_

○
for every (mere)L-
sentence _φ_. And this allows us to define a relation which holds between theories
and sentences. Where _D_ ⊆ _B_ , and⟦ _T_ ⟧ _M_ ={⟦ _ψ_ ⟧ _M_ : _ψ_ ∈ _T_ }, and _T_ ∪{ _φ_ }is any
first-order theory:

```
T ⊧
B
Dφ iff: for every B -valuedL-structure M , if⟦ T ⟧
```
```
M ⊆ D then⟦ φ ⟧ M ∈ D
```
This naturally generalises a very common way to think about logical consequence.
If we had a two-valued semantics given by the Boolean algebra _Two_ , and took
_D_ ={True}, then logical consequence would amount to _preservation of truth_ , in this
sense: if every sentence in _T_ is assigned True, then _φ_ is also assigned True. In this
more general setting, we allow that many different semantic values (i.e. the mem-
bers of _D_ ) can be regarded as worthy of preservation. We call _D_ the set of _designated_
values, and this allows us to say that logical consequence amounts to _preservation of
designation_.
It is easy to extend the Boolean approach into second-order logic, by presenting
a Boolean-valued generalisation of second-order Henkin semantics:

Definition 13.5: _A_ Henkin _B_ -valuedL-structure _is a B-valued_ L _-structure which
is additionally equipped with, for each natural number n:_

_- A set M_ rel _n, all of whose members are n-place functions g_ : _Mn_ Ð→ _B, obeying_
    ⟦ _a_ 1 = _b_ 1 ⟧⋅...⋅⟦ _an_ = _bn_ ⟧⋅ _g_ ( _a_ 1 , ..., _an_ )≤ _g_ ( _b_ 1 , ..., _bn_ )
_- A set M_ fun _n , all of whose members are n-place functions g_ : _Mn_ Ð→ _M, obeying_
    ⟦ _a_ 1 = _b_ 1 ⟧⋅...⋅⟦ _an_ = _bn_ ⟧≤⟦ _g_ ( _a_ 1 , ..., _an_ )= _g_ ( _b_ 1 , ..., _bn_ )⟧

To extend satisfaction into second-order logic, we simply add some more recursion
clauses. (As with the Robinsonian approach to Henkin semantics in the ordinary
case, _RM_

```
◽
g = g for each g ∈ M
rel
n , and f
M ◽
g = g for each g ∈ M
fun
n .)
```
```
⟦∃ Xφ ( X )⟧ M
```
```
◽
= ∑
g ∈ M rel n
```
```
⟦ φ ( Rg )⟧
M ◽
⟦∀ Xφ ( X )⟧ M
```
```
◽
= ∏
g ∈ M rel n
```
```
⟦ φ ( Rg )⟧
M ◽
```
```
⟦∃ pφ ( p )⟧ M
```
```
◽
= ∑
g ∈ M fun n
```
```
⟦ φ ( fg )⟧
M ◽
⟦∀ pφ ( p )⟧ M
```
```
◽
= ∏
g ∈ M fun n
```
```
⟦ φ ( fg )⟧
M ◽
```
Finally, we call a Henkin _B_ -valuedL-structure _faithful_ iff⟦ _φ_ ⟧ ∈ _D_ where _φ_ is
any instance of the Comprehension Schema or Choice Schema, as defined in §1.11.
Then, where _T_ ∪{ _φ_ }is any second-order theory, we write:

```
T ⊧
```
```
B
Dφ iff: for every faithful B -valuedL-structure M , if⟦ T ⟧
```
```
M ⊆ D then
```
```
⟦ φ ⟧ M ∈ D
```
In what follows, we often speak indifferently about first-order and second-order log-
ics. However, when considering second-order logic in this chapter, we always have
_faithful_ Henkin _B_ -valued structures in mind (though we discuss ‘full’ second-order


```
13.4. semantic-underdetermination via filters 301
```
_B_ -valued structures in §13.b). So a phrase like ‘let _M_ be a (faithful Henkin) _B_ -
valued structure’ can be read, either as talking about a (first-order) _B_ -valued struc-
ture, or a (second-order) faithful Henkin _B_ -valued structure.

### 13.4 Semantic-underdetermination via filters

We saw in §13.1 that the natural deduction rules for first-order logic (or faithful
Henkin second-order logic) fail to determine ( _a_ ) _what_ the semantic values are. Us-
ing the Boolean framework of §13.3, we will now prove results which show that the
natural deduction rules also fail to determine ( _b_ ) _how many_ semantic values there
are and ( _c_ ) exactly how those semantic values _interact_ with the logical vocabulary
of connectives and quantifiers.
These limitative results concerning Boolean algebras illustrate the ‘weakness’ of
both first-order logic and faithful Henkin second-order logic. In this regard, the
results are comparable to the Compactness and Löwenheim–Skolem Theorems.
These latter two results are very well known; and we think that the results con-
cerning Boolean algebras deserve to be much better known.^6 They are of compa-
rable technical interest: where the Compactness and Löwenheim–Skolem theo-
rems form part of the backbone of model theory, the results concerning Boolean
algebras connect with set-theoretic forcing.^7 Additionally, they are of comparable
philosophical interest: where the Compactness and Löwenheim–Skolem theorems
supplied the impetus for Chapters 7–8, the results concerning Boolean algebras give
teeth and claws to the semantic-underdetermination argument.

```
Any filter will do
```
Our first result concerning Boolean algebras says roughly this: everything works
out fine if your designated values form a filter on a complete Boolean algebra. Here
is the precise statement:^8

Theorem13.6: _If B is a complete Boolean algebra with D_ ⊆ _B, then these are equivalent:_

```
(1)D is a filter on B
(2)T ⊢ φ iff T ⊧
```
```
B
Dφ, for any theory T ∪{ φ }
```
The proof of this result involves grinding through the soundness of each of the in-
ference rules with respect to⊧
_B
D_ ; we leave this grind to §13.a. But Theorem 13.6 shows

(^6) Cf. Smiley (1996: 8).
(^7) See e.g. Bell (2005).
(^8) This generalises e.g. Church (1944: 494, 1953: 41–2), Bell (2005: Theorem 1.17 pp.24–6), Kaye (2007:
Theorem 7.10 pp.84–5), and Button (2016b: Theorem 1), and many other discussions.


302 boolean-valued structures

that⊢is sound and complete for many different, non-isomorphic, semantic struc-
tures. In a slogan: _any filter on any complete Boolean algebra will do_.
This is a bit abstract, so here is a very simple illustration of the point. Consider
the four-element Boolean algebra, _Four_ , whose Hasse diagram is as follows:^9

```
1
```
#### 2 3

#### 4

Trivially,{ 1 }is a filter on _Four_. So⊧

_Four_
{ 1 }is coextensive with⊢, by Theorem 13.6.
So our inference rules fail to determine that our semantics has only two values,
rather than four. Indeed, since there are arbitrarily large complete Boolean al-
gebras, our inference rules fail to pin down much at all about the number of se-
mantic values. And this yields a rather more interesting version of the semantic-
underdetermination argument, than that first raised by the Push-Through Con-
struction in 13.1.^10

```
Designation Principles and Truth Principles
```
Even if the inference rules cannot pin down the semantic structure up to isomor-
phism, we might hope that they can pin down the relationship between designated
and undesignated values. In particular, we might hope to secure the following _Des-
ignation Principles_ :^11

_Not-Designation._ ¬ _φ is designated iff φ is undesignated
i.e._ ⟦¬ _φ_ ⟧∈ _D iff_ ⟦ _φ_ ⟧∉ _D
And-Designation.φ_ ∧ _ψ is designated iff both φ and ψ are designated
i.e._ ⟦ _φ_ ∧ _ψ_ ⟧∈ _D iff both_ ⟦ _φ_ ⟧∈ _D and_ ⟦ _ψ_ ⟧∈ _D
Or-Designation.φ_ ∨ _ψ is designated iff either φ or ψ is designated
i.e._ ⟦ _φ_ ∨ _ψ_ ⟧∈ _D iff either_ ⟦ _φ_ ⟧∈ _D or_ ⟦ _ψ_ ⟧∈ _D
All-Designation._ ∀ _xφ_ ( _x_ ) _is designated iff φ_ ( _ca_ ) _is designated for all a_ ∈ _M
i.e._ ⟦∀ _xφ_ ( _x_ )⟧∈ _D iff_ ⟦ _φ_ ( _ca_ )⟧∈ _D for all a_ ∈ _M
Exists-Designation._ ∃ _xφ_ ( _x_ ) _is designated iff φ_ ( _ca_ ) _is designated for some a_ ∈ _M
i.e._ ⟦∃ _xφ_ ( _x_ )⟧∈ _D iff_ ⟦ _φ_ ( _ca_ )⟧∈ _D for some a_ ∈ _M_

(^9) This example occurs in Church (1944: 494). The diagram depicts the order relation: _x_ ≤ _y_ iff there
is a continuous _upward_ path from _x_ to _y_. So:− 2 =3, 2⋅ 3 =0, and 2 + 3 =1.
(^10) Carnap (1943: 73ff) and Church (1944: 494, 1953: 50) were the first philosophers to discuss Boolean
algebras in this connection, and to consider this version of the semantic-underdetermination argument.
(^11) We can formulate similar principles for the second-order quantifiers. The proof of Theorem 13.8
straightforwardly shows that they are satisfied when _D_ is a principal ultrafilter.


```
13.4. semantic-underdetermination via filters 303
```
Indeed, if we could secure these principles, then we could recover a version of biva-
lence. For, if we simply read ‘designated’ as ‘true’, then the Designation Principles
become the _Truth Principles_ :

_Not-Truth._ ¬ _φ is true iff φ is false
And-Truth.φ_ ∧ _ψ is true iff both φ and ψ are true
Or-Truth.φ_ ∨ _ψ is true iff either φ or ψ is true
All-Truth._ ∀ _xφ_ ( _x_ ) _is true iff φ_ ( _ca_ ) _is true for all a_ ∈ _M
Exists-Truth._ ∃ _xφ_ ( _x_ ) _is true iff φ_ ( _ca_ ) _is true for some a_ ∈ _M_

These are precisely the principles that fans of bivalence will want to secure. In-
deed, if we _can_ secure these Designation/Truth Principles, then whatever point
there might be in distinguishing among the ‘different ways of being true’ (i.e. the
different members of _D_ ) and among the ‘different ways of being false’ (i.e. the dif-
ferent members of _B_ ∖ _D_ ), it would not come through in our logic.^12 At that point,
one might be able to argue that this is all the determinacy of meaning which infer-
ence rules _should_ secure.
Unfortunately, the case of _Four_ shows that the usual inference rules do _not_ secure
the Designation Principles. If⟦ _φ_ ⟧ _Four_ =2, then⟦¬ _φ_ ⟧ _Four_ =−⟦ _φ_ ⟧ _Four_ =− 2 =3,
and neither 2 nor 3 is a member of our set of designated values,{ 1 }. So our _Four_ -
valued semantic structure violates Not-Designation. It is easy to see that it similarly
violates Or-Designation and Exists-Designation. So: the classical inference rules
cannot secure the Designation Principles.
In fact, within the Boolean framework, there is a simple necessary and sufficient
condition on the Designation Principles. To explain it, we need a definition:

Definition 13.7: _A filter D on a Boolean algebra B is_ principal _iff there is some a_ ∈ _B
such that D_ ={ _b_ ∈ _B_ : _a_ ≤ _b_ }_._

Then we have the following (again, the proof is in §13.a):

Theorem 13.8: _If B is a complete Boolean algebra and D_ ⊆ _B is a filter on B, then:_

```
(1)D is an ultrafilter on B iff Not-Designation, And-Designation and Or-
Designation hold in every (faithful Henkin) B-valued structure
(2)D is a principal ultrafilter on B iff all the Designation Principles hold in every
(faithful Henkin) B-valued structure
```
Combining Theorem 13.8 with 13.6, we immediately obtain:

(^12) See Dummett (1959: 154–5).


304 boolean-valued structures

Corollary 13.9: _If B is a complete Boolean algebra and D_ ⊆ _B is a filter but not a
principal ultrafilter on B, then T_ ⊢ _φ iff T_ ⊧

_B
Dφ, for any theory T_ ∪{ _φ_ } _, but some
Designation Principle fails in some (faithful Henkin) B-valued structure._

In summary: our inference rules fail to pin down the semantic values True and False,
by the Push-Through Construction. They fail to pin down a semantic structure up
to isomorphism, by Theorem 13.6. Indeed, they fail even to secure the Designation
Principles, by Corollary 13.9. These results give real bite to our initial semantic-
underdetermination argument.
In the rest of this chapter, we consider several responses to the semantic-
underdetermination argument, and show how it gives rise to similar issues as those
in Chapters 6–11.

### 13.5 Semanticism

First and foremost, the semantic-underdetermination argument raises a problem
for _inferentialism_ : the view that the meaning of the logical expressions _is_ fully de-
termined by their inference rules. But we will start by raising some problems for
inferentialism’s main rival, _semanticism_. According to semanticists, logical expres-
sions are given their meanings by their semantic conditions. Our aim is to show
that semanticism faces the same sorts of issues as did modelism.

```
Concerning the Push-Through Construction
```
Our semanticist might start by resisting even the level of underdetermination
threatened by the Push-Through Construction in §13.1. So: she might insist that
she can unproblematically refer to the usual two semantic values, True and False.
She might then claim that the meanings of the logical expressions can be given just
by _stipulating_ their semantic conditions.
This response to the semantic-underdetermination argument is extremely sim-
ilar to certain responses to the permutation argument (see Chapter 2). When the
Push-Through Construction is used to show that the truth values of the sentences
in a language fail to determine that language’s interpretation, a natural reply is that
something _else_ fixes the interpretation: that there are _preferable_ interpretations.
Now that the Push-Through Construction is being used to show that the inference
rules fail to determine the semantics, our semanticist has replied that something _else_
fixes the semantics.
This analogy with the permutation argument is worth pursuing. The objects-
platonist owed us an account of how we refer to _abstract_ mathematical entities.
Similarly, whatever semantic values are, exactly, they are presumably _abstract_ :


```
13.5. semanticism 305
```
metaphors aside, one does not trip over True, or bump up against False. So we
must ask our semanticist a doxological question: _How can we determinately refer to
True and False?_ And the Push-Through Construction gives the question bite.
Of course, this is not a knockdown argument against semanticists who insist that
they _can_ unproblematically refer to True and False. By comparison: the permuta-
tion argument does not show that _all_ objects-platonists must accept that mathemat-
ical language is radically referentially indeterminacy. Rather, it shows that _mod-
erate_ objects-platonists must accept that indeterminacy. The same point applies
here. Faced with the Push-Through Construction, _moderate_ semanticists must ac-
cept that we cannot refer to the _particular_ entities, True and False.

```
Concerning Theorem 13.6
```
Moderate semanticists may yet insist that they can provide the logical expressions
with exactly as precise a meaning as they _should_ have. In particular, they may insist
that they can lay down the meaning of the logical vocabulary _up to isomorphism_.
By comparison: a moderate objects-platonist faced with the Push-Through Con-
struction may well decide to become a moderate objects-modelist, who aims only
to pin down the natural numbers _up to isomorphism_. We first mentioned this op-
tion in §2.5, we outlined a problem facing this moderate objects-modelist in Chap-
ter 7: no theory with a finitary proof system can pin down the natural numbers up
to isomorphism (see §7.9). The moderate semanticist faces a similar problem: by
Theorem 13.6, our inference rules cannot pin down the semantic structure up to
isomorphism.
But a response _seems_ to be available to moderate _semanticists_ which was not avail-
able to moderate _objects-platonists_. For there _is_ a categorical first-order theory of
two-element Boolean algebras: just let CBA be the theory of Boolean algebras
(from Definition 13.1) together with the axiom∀ _x_ ( _x_ = 0 ∨ _x_ = 1 ). Moderate
semanticists may, then, deploy CBA in order to try to pin down the semantic struc-
ture up to isomorphism.
Sadly, though, this appeal to CBA amounts to _just more theory_ , in exactly the way
in which we used that phrase in Chapters 2 and 7–9. Certainly CBA is categorical on
the _usual_ semantics for first-order logic: within that semantics, all of CBA’s models
are isomorphic to the structure _Two_. But CBA is _not_ categorical for _Boolean-valued_
semantics. Where _B_ is _any_ complete Boolean algebra, we can easily treat _B_ itself
as a _B_ -valued model of CBA. More precisely (saving the proof for §13.d):

Proposition 13.10: _For any complete Boolean algebra B, there is a B-valued model of_
CBA _whose domain is B._


306 boolean-valued structures

So, let _B_ be any complete Boolean algebra with more than two elements, and let _D_
be any filter on _B_. By Theorem 13.6,⊢is coextensive with⊧

_B
D_. But there is a two-
element _B_ -valued model of CBA, provided by _Two_ , and a∣ _B_ ∣-element _B_ -valued
model of CBA, provided by Proposition 13.10. So CBA is _not_ categorical on the
semantics provided by _B_ and _D_.
Consequently, the semanticist can insist on the categoricity of CBA, only if she
can somehow insist that the two-valued semantics is _preferable_ to any other seman-
tics. She now faces a familiar challenge. Whatever she says in attempting to explain
the preferability of the two-valued semantics—indeed, even as she tries to say that
it has _two_ values—Proposition 13.10 shows that we can interpret her as describing an
algebra with _four_ values (for example). Indeed, her attempt to insist on the prefer-
ability of two-valued semantics is _just more theory_ , in precisely Putnam’s pejorative
sense. In this regard, the moderate semanticist shares the same fate as a moderate
modelist who wants to insist that full second-order semantics is _preferable_ to Henkin
semantics (see §§7.7–7.10).
As such, moderate semanticists must cede the point concerning Theorem 13.6,
and accept that they cannot pin down the semantic structure up to isomorphism.

```
Concerning Corollary 13.9
```
A similar argument shows that moderate semanticists cannot succeed in delivering
the Designation Principles of §13.4. By Theorem 13.8, to insist upon the Designation
Principles within the Boolean framework is to insist that the designated values form
a principal ultrafilter. It is hard to see how semanticists could claim to have a handle
on the semantics to _this_ extent, but no further.
To reinforce this point, we can invoke the just-more-theory manoeuvre again.
If the moderate semanticist says that the semantic values form a principal ultrafil-
ter, we should understand her as trying to say that certain semantic structures are
_preferable_. But in saying this, she must produce a theory describing principal ultra-
filters on Boolean algebras. The most obvious way to do this would be to augment
the theory of Boolean algebras with some new axioms concerning a new one-place
predicate, _D_ , which are intended to tell us that (the interpretation of) _D_ is a prin-
cipal ultrafilter. Unfortunately for her, if unsurprisingly, we can supply a _B_ -valued
model of _this_ theory, which does not interpret _D_ as anything like a principal ultra-
filter (see §13.d).
As such, moderate semanticism fails. Although _im_ moderate semanticism may,
for all this, succeed, in what follows, we set aside semanticism altogether, and con-
sider three _inferentialist_ responses to the semantic-underdetermination argument.
These responses all try to retain the idea that the meaning of the logical connectives
_is_ —somehow—determined by their inference rules after all.


```
13.6. bilateralism 307
```
### 13.6 Bilateralism

Our first inferentialist response is _bilateralism_ , as advanced by Smiley.^13 Bilateral-
ists attempt to resist the semantic-underdetermination argument by broadening the
idea of what counts as an inference rule. They do this by adding two _force indicators_
to their metalanguage: an indicator for _assertion_ , symbolised with↑, and an indica-
tor for _rejection_ , symbolised with↓. Bilateralists then lay down inference rules which
employ these force indicators. The hope is that these _richer_ inference rules, deco-
rated with force indicators, can deal with semantic-underdetermination.
Bilateralism fails in this regard. To succeed, bilateralism requires a very particular
relationship between the force indicators and the semantics for the language. And,
as we will explain, the attempt to pin down that relationship is just more theory.

```
Decorated proofs
```
We start by outlining the bilateralist inference rules. First, we present the inference
rules for the connectives of first-order logic. These rules may usefully be compared
with those of §1.c. (The same kind of caveat applies as in §1.c, that in∀I↕and∃I↕
the symbol _c_ must occur in no undischarged assumption.)^14

```
↓ φ
↑¬ φ ¬I↕
```
```
↑¬ φ
↓ φ ¬E↕
↑ φ ↑ ψ
↑ ∧I↕
( φ ∧ ψ )
```
```
↑( φ ∧ ψ )
↑ φ ∧E↕
```
```
↑( φ ∧ ψ )
↑ ψ ∧E↕
↓ φ ↓ ψ
∨I↕
↓( φ ∨ ψ )
```
```
↓( φ ∨ ψ )
↓ φ ∨E↕
```
```
↓( φ ∨ ψ )
↓ ψ ∨E↕
↑ φ ( c )
↑ ∀I↕
∀ xφ ( x )
```
```
↑∀ xφ ( x )
↑ ∀E↕
φ ( c )
↓ φ ( c )
↓ ∃I↕
∃ xφ ( x )
```
```
↓∃ xφ ( x )
↓ ∃E↕
φ ( c )
```
```
↑ =I↕
c = c
```
```
↑ s = t ↑ φ ( s )
↑ =E↕
φ ( t )
```
```
↑ t = s ↑ φ ( s )
↑ =E↕
φ ( t )
```
As an heuristic, the rule¬I↕might be read roughly as follows: if it is correct to reject
_φ_ , then it is correct to assert¬ _φ_.^15 Next, we have four versions of reductio:

(^13) See Smiley (1996: 6–9). Note that our discussion of bilateralism is entirely restricted to its sup-
posed role in answering the semantic-underdetermination argument; there may be other motivations for
bilateralism which are not threatened by our discussion.
(^14) Incurvati and P. Smith (2010: 5) and Hjortland (2014: 452) lay down the sentential rules; we have
added the obvious rules for quantifiers and identity.
(^15) But this is _just_ a rough gloss; we are not suggesting that bilateralists must take any particular stance on


308 boolean-valued structures

```
↑ φn
⋮
↑ ψ ↓ ψ
↓ φ Raa↕, n
```
```
↑ φn
⋮
↓ ψ ↑ ψ
↓ φ Raa↕, n
```
```
↓ φn
⋮
↑ ψ ↓ ψ
↑ φ Raa↕, n
```
```
↓ φn
⋮
↓ ψ ↑ ψ
↑ φ Raa↕, n
```
These are all the decorated rules of our decorated proof system for first-order logic.
We can easily expand the system to second-order logic, by presenting analogous
inference rules for the second-order quantifiers, and treating any asserted Compre-
hension Schema or Choice instance as an axiom (as with=I↕).
We write↕ _φ_ to indicate that the sentence _φ_ has been decorated with a single force
indicator, but we are indifferent as to which. Using this terminology, we say:

```
T ↕⊢↕ φ iff there is a decorated proof whose only undischarged assumptions
are among T and which ends with↕ φ
```
In a very straightforward sense, decorated proofs provide an elegant alternative to
undecorated proofs. To show this, we define a metalinguistic operation,♭, which
flattens decorations as follows:

```
♭(↑ φ ):= φ ♭(↓ φ ):=¬ φ
```
As usual,̷♭( _T_ )={♭(↕ _φ_ ):↕ _φ_ ∈ _T_ }. We now have:

Theorem 13.11: _T_ ⊢↕ ↕ _φ iff_ ̷♭( _T_ )⊢♭(↕ _φ_ ) _, for any decorated theory T_ ∪{↕ _φ_ }

The proof simply consists in mechanically turning decorated proofs into undeco-
rated ones, and vice versa; we relegate it to §13.e.

```
Semantic underdetermination again
```
However, Theorems 13.6 and 13.11 jointly entail that decorated proofs are sound and
complete for any semantics given by any filter on any complete Boolean algebra:

Corollary 13.12: _If B is a complete Boolean algebra and D_ ⊆ _B is a filter on B, then
T_ ⊢↕ ↕ _φ iff_ ̷♭( _T_ )⊧

```
B
D ♭(↕ φ ) , for any decorated theory T ∪{↕ φ }
```
And now we must ask how bilateralism could possibly _hope_ to offer any resistance
against the semantic-underdetermination argument. After all, Corollary 13.12 seems

the normativity of logic. However, the gloss also helps to show that bilateral proof systems are equivalent
to _multiple-conclusion logics_. Multiple-conclusion logics allow that the conclusion of an argument need not
be a single sentence, but a set of sentences. So we can write e.g. ‘ _T_ ⊢ _S_ ’, where both _T_ and _S_ are sets of
sentences. To obtain the equivalence between multiple-conclusion logics and bilateralism, we need simply
gloss ‘ _T_ ⊢ _S_ ’ as ‘it is incorrect to assert everything in _T_ whilst rejecting everything in _S_ ’ (see Smiley 1996;
Hjortland 2014). This equivalence means that all of the criticisms we applied to bilateralism apply (almost
unchanged) against an inferentialist who wants to invoke multiple-conclusion logic.


```
13.6. bilateralism 309
```
to threaten bilateralism in exactly the same way that Theorem 13.6 threatens ‘undec-
orated’ inferentialism.
Bilateralists will reply that Corollary 13.12 employs an operator,♭, which steam-
rollers overs the distinction between rejecting a sentence and asserting its negation,
in the sense that♭(↓ _φ_ )=♭(↑¬ _φ_ ). They will then insist that the _preferable_ semantics
should acknowledge the important distinction between rejecting a sentence and as-
serting its negation. And so, they will continue, their decorated proof-system pro-
vides novel resources for resisting the semantic-underdetermination argument.
In saying this, though, bilateralists must tread very carefully. Suppose a bilateral-
ist simply insists that asserting _φ_ amounts to assigning True to _φ_ , and that rejecting
_φ_ amounts to assigning False to _φ_. Then she has indeed aimed to pin down the stan-
dard, two-valued semantics. Equally, though, she has simply become a peculiarly
decorated _semanticist_ , and we direct her back to §13.5.
Instead, bilateralists should insist that there is a particular relationship between
force indicators and designation. In particular, they should suggest that it is correct
to assert _φ_ iff _φ_ is designated, and correct to reject _φ_ iff _φ_ is undesignated. To explore
this suggestion, we will formalise it following Murzi and Hjortland.^16 So, where
_M_ is a _B_ -valued structure and _D_ ⊆ _B_ , bilateralists will advance two Correctness
Principles:

_Asserted-correctness._ ↑ _φ is D-correct in M iff_ ⟦ _φ_ ⟧ _M_ ∈ _D
Rejection-correctness._ ↓ _φ is D-correct in M iff_ ⟦ _φ_ ⟧ _M_ ∉ _D_

And they will then define logical consequence as _preservation of D-correctness_ :

```
T ↕⊧
```
```
B
D ↕ φ iff: for every B -valued model M , if every↕ ψ ∈ T is D -correct in M ,
then↕ φ is D -correct in M
```
Moreover, this notion of logical consequence connects immediately with the Des-
ignation Principles (see §13.e):

Corollary 13.13: _If B is a complete Boolean algebra and D_ ⊆ _B is a filter on B, then
these are equivalent:_

```
(1)T ⊧
B
D ↕ φ iff T ↕⊢↕ φ
(2)Not-Designation, And-Designation and Or-Designation hold for any (faithful
Henkin) B-valued structure
```
So: _if_ bilateralists can insist that the semantic structure must respect the Correct-
ness Principles, then they can secure _some_ of the Designation Principles, by Corol-
lary 13.13.

(^16) Murzi and Hjortland (2009: 485–6) and Hjortland (2014: 253).


310 boolean-valued structures

Note, at once, that this ambition falls well short of pinning down the semantic
structure up to isomorphism.^17 Indeed, it fails even to secure _all_ the Designation
Principles. Let _B_ be a complete Boolean algebra and let _D_ be a _non_ -principal ul-
trafilter on _B_. By Theorem 13.8(1), the semantic structure guarantees all of Not-,
And- and Or-Designation. So, by Corollary 13.13, using _B_ and _D_ will respect the
bilateralist’s Correctness Principles. But because _D_ is not principal, by Theorem
13.8(2), there is a (faithful Henkin) _B_ -valued structure _M_ where All-Designation
and Exists-Designation fail. If we now gloss ‘designated’ as ‘true’, as in §13.4, this
is to say that we can find a (faithful Henkin) _B_ -valued structure, _M_ , where _φ_ ( _ca_ )
is true for every _a_ ∈ _M_ , but where∀ _xφ_ ( _x_ )is _false_. This is surely an unacceptable
form of semantic-underdetermination if any is. But bilateralism is utterly powerless
to rule it out.
We must also ask whether bilateralists _can_ legitimately insist on their Correct-
ness Principles. To see the problem, we should ask why the bilateralist’s rejection-
correctness principle is preferable to the following alternative:

_Rejection-correctness (alternative)._ ↓ _φ is D-correct in M iff_ ⟦¬ _φ_ ⟧ _M_ ∈ _D_

This alternative principle would again collapse the difference between rejecting _φ_
and asserting¬ _φ_. Consequently, defining↕⊧

_B
D_ using this alternative principle would
return us to the setting where _any_ filter on any complete Boolean algebra would
yield an adequate semantic structure. Bilateralists need, then, to explain why we
should favour their _original_ rejection-correctness principle over this alternative.
To achieve this, it is not enough for bilateralists to show that there _is_ some natural-
language difference between rejecting a sentence and asserting its negation.^18 They
must also show that this natural-language difference should have very _specific_ con-
sequences for our formal semantics. And showing that is a much taller order.
Indeed, the problem now facing bilateralism is entirely predictable. Bilateral-
ists want to insist that a somewhat constrained formal semantics is _preferable_ to
a marginally more general alternative. (Compare the situation facing a moderate
modelist who wanted to insist that full second-order logic is _preferable_ to Henkin
semantics, as discussed in Chapter 7.) But anything they say to emphasise the dif-
ference between rejecting a sentence and asserting its negation, can be underpinned
by a semantic structure which flattens that difference. In short: as it stands, any
attempt to insist on the Correctness Principles is _just more theory_ , in precisely Put-
nam’s sense.

(^17) Slightly confusingly, several authors in this literature say that bilateralism promises to deliver ‘cate-
goricity’, in effect to mean merely that bilateralism promises to deliver the (sentential) Designation Princi-
ples (see e.g. Smiley 1996: 8–9; Hjortland 2014: 450–1), rather than that it pins down a semantic structure
up to isomorphism.
(^18) Much of the debate around bilateralism has focussed simply upon this question, e.g. Smiley (1996:
1–4), Incurvati and P. Smith (2010: 10), and Hjortland (2014).


```
13.7. open-ended-inferentialism 311
```
### 13.7 Open-ended-inferentialism

We set aside bilateralism, then, and turn to a second kind of inferentialism, which
we call _open-ended inferentialism_. Open-ended inferentialists insist that inference
rules are importantly open-ended, and that this open-endedness is inadequately re-
flected in the semantic-underdetermination argument.^19 We will explain how in-
voking open-endedness promises to narrow down the semantic structures; how-
ever, without further supplement, invoking open-endedness is just more theory.

```
New connectives and inference rules
```
Famously, the ordinary sentential connectives are expressively adequate for the or-
dinary two-valued semantics: that is, every truth-functional connective is definable
using the usual connectives.^20 By contrast, when we move to _B_ -valued semantics,
we have the option to introduce some genuinely new connectives. And adding such
connectives can cause some of our existing inference rules to become unsound.
Intuitively, in calling a rule _unsound_ , we mean that applying the rule can take you
from designation to undesignation. Specifically, in this section we will focus on the
rules→I,∨E,¬I,∃E and∀I, as laid down in §1.c, and we define their soundness
with respect to a consequence relation⊩as follows:^21

→I is sound iff: _if T_ ∪{ _φ_ }⊩ _ψ_ , _then T_ ⊩ _φ_ → _ψ_
∨E is sound iff: _if_ both _T_ ∪{ _φ_ }⊩ _ρ_ and _T_ ∪{ _ψ_ }⊩ _ρ_ , _then T_ ∪{ _φ_ ∨ _ψ_ }⊩ _ρ_
¬I is sound iff: _if T_ ∪{ _φ_ }⊩, _then T_ ⊩¬ _φ_
∃E is sound iff: _if T_ ∪{ _φ_ ( _c_ )}⊩ _ψ_ and _c_ does not occur anywhere in _T_ , _φ_ ( _x_ )or
_ψ_ , _then T_ ∪{∃ _xφ_ ( _x_ )}⊩ _ψ_.
∀I is sound iff: _if T_ ⊩ _φ_ ( _c_ )and _c_ does not occur in _T_ , _then T_ ⊩∀ _xφ_ ( _x_ )

Clearly all of these rules are sound for the ordinary, two-valued semantics. Indeed,
one usually proves the soundness of the entire deductive system with respect to that
semantics by proving the soundness of each individual rule and then performing an
induction on the length of a deduction. But, when we move to arbitrary Boolean
semantics, we can add connectives which would make these five rules unsound.
Here is a simple example. Let _B_ be a complete Boolean algebra, let _D_ be a filter
on _B_ which is not principal, and let _h_ : _B_ Ð→ _B_ be given by:

```
h ( a )=
```
#### ⎧⎪

#### ⎪⎪⎪

#### ⎪⎨

#### ⎪⎪⎪

#### ⎪⎪⎩

```
a if a ∈ D
− a if− a ∈ D
1 otherwise
```
(^19) The contents of this subsection expand upon Button (2016b).
(^20) See e.g. Gamut (1991: 56) and Humberstone (2011: 403ff).
(^21) We treatas an abbreviation for anything of the form _φ_ ∧¬ _φ_ ; so⟦⟧=⟦ _φ_ ∧ ¬ _φ_ ⟧=⟦ _φ_ ⟧⋅−⟦ _φ_ ⟧=0.


312 boolean-valued structures

We now introduce a new one-place sentential connective,♡, which implements _h_ ,
i.e. we stipulate that⟦♡ _φ_ ⟧= _h_ ⟦ _φ_ ⟧. We let⊧♡be the consequence relation defined
using the algebra _B_ augmented with the function _h_ , where _D_ is the set of desig-
nated values, for the sentences of a logic which expands ordinary first-order logic
by adding♡to the logical vocabulary. Now the presence of♡renders∀I unsound:

Proposition 13.14: _The inference rule_ ∀ _I is unsound for_ ⊧♡_._

_Proof._ It suffices to show that⊧♡ ♡ _F_ ( _a_ )but⊧/♡ ∀ _x_ ♡ _F_ ( _x_ ). By construction,
⟦♡ _F_ ( _ca_ )⟧ = _h_ ⟦ _F_ ( _a_ )⟧ ∈ _D_ for any _a_ in any _B_ -valued structure. But now let
_M_ be a _B_ -structure obtained by augmenting _B_ itself with a predicate _F_ such that
⟦ _F_ ( _a_ )⟧= _a_ for all _a_ ∈ _B_. Then⟦∀ _x_ ♡ _F_ ( _x_ )⟧=∏ _a_ ∈ _Mh_ ⟦ _F_ ( _ca_ )⟧=∏ _D_ ∉ _D_ , since _D_
is not principal.

To obtain the unsoundness of the other four rules we mentioned, we will switch
example. Let _D_ be a filter on _B_ which is not an _ultra_ filter, and define _k_ : _B_ Ð→ _B_
as follows:

```
k ( a )=
```
#### ⎧⎪

#### ⎪

#### ⎨

#### ⎪⎪

#### ⎩

```
a if either a ∈ D or− a ∈ D
− a otherwise
```
We now introduce a new one-place sentential connective,, which implements _k_ ,
i.e. we stipulate that⟦ _φ_ ⟧= _k_ ⟦ _φ_ ⟧. We define⊧similarly to⊧♡, and obtain the un-
soundness of several rules:

Proposition 13.15: _The inference rules_ → _I,_ ∨ _E,_ ¬ _I and_ ∃ _E are unsound for_ ⊧_._

_Proof._ →I,∨E and¬E are covered elsewhere.^22 For∃E, it suffices to show that
_F_ ( _c_ )∧ ¬ _F_ ( _c_ )⊧but∃ _x_ ( _F_ ( _x_ )∧ ¬ _F_ ( _x_ ))/⊧.
For the first part, just note that for any _a_ in any _B_ -valued structure we have:
⟦ _F_ ( _ca_ )∧ ¬ _F_ ( _ca_ )⟧= ⟦ _F_ ( _a_ )⟧⋅ − _k_ ⟦ _F_ ( _a_ )⟧∉ _D_. To see this, let⟦ _F_ ( _a_ )⟧ = _d_.
Then if either _d_ ∈ _D_ or− _d_ ∈ _D_ , we have _d_ ⋅ − _k_ ( _d_ )= _d_ ⋅ − _d_ =0; and otherwise,
_d_ ⋅ − _k_ ( _d_ )= _d_ ⋅ −− _d_ = _d_ ∉ _D_.
For the second part, we define a structure where⟦∃ _x_ ( _F_ ( _x_ )∧ ¬ _F_ ( _x_ ))⟧=1.
Invoking the fact that _D_ is not an ultrafilter, choose _d_ ∈ _B_ such that _d_ ∉ _D_ and
− _d_ ∉ _D_. Let _M_ be a _B_ -valued structure containing elements _a_ and _b_ such that
⟦ _F_ ( _a_ )⟧= _d_ and⟦ _F_ ( _b_ )⟧=− _d_. Now⟦ _F_ ( _ca_ )∧ ¬ _F_ ( _ca_ )⟧= _d_ ⋅ − _k_ ( _d_ )= _d_ and
⟦ _F_ ( _cb_ )∧ ¬ _F_ ( _cb_ )⟧=− _d_ ⋅ − _k_ (− _d_ )=− _d_ , so that⟦∃ _x_ ( _F_ ( _x_ )∧ ¬ _F_ ( _x_ ))⟧=1.

The general point is simple. By allowing arbitrary filters on arbitrary complete
Boolean algebras, we can render certain inference rules unsound.

(^22) See Button (2016b: Theorem 2).


```
13.7. open-ended-inferentialism 313
```
```
Inference rules as open-ended
```
Open-ended-inferentialist will seize upon these rule-violations, in an attempt to ex-
plain what is wrong with the original semantic-underdetermination argument.
As good inferentialists, open-ended-inferentialists maintain that inference rules
determine the meaning of logical vocabulary. But, they continue, an important part
of the inference rules→I,∨E,¬I,∃E, and∀I is that they are to hold _always and
without exception_. That is: _it is impossible to add connectives to our language which
would ever make it illegitimate to use the rules_ → _I,_ ∨ _E,_ ¬ _I,_ ∃ _E or_ ∀ _I._ Now suppose,
they continue, that the designated values constitute a filter, but—for reductio—
not a principal ultrafilter. Then either _h_ or _k_ , as defined above, would be _bona fide_
functions on the semantic values. So, presumably either♡orwould be a _bona
fide_ sentential connective, and nothing would prevent them from being added to
our language. But, open-ended inferentialist will say, we _are_ prevented from adding
these connectives to our language. For, adding these connectives would make cer-
tain inference rules unsound, even though they have been laid down so as to hold
_always_ and without exception. As such, they conclude, the designated values must
form a _principal ultrafilter_. And so, by Theorem 13.8, within the Boolean setting this
secures all of the Designation Principles.^23
This is quite some achievement; but open-ended-inferentialists need not stop
there. It turns out that⊧does not _merely_ flout certain rules of inference. It also vi-
olates the principle _Substitutivity of Equivalents_ ; i.e. the principle that substituting a
subsentence for a logically equivalent subsentence never affects entailment. For it
is clear that _φ_ and _φ_ are logically equivalent, in the sense that _φ_ ⊧ _φ_ and _φ_ ⊧ _φ_ ;
however⊧ _φ_ → _φ_ but⊧/ _φ_ → _φ_ , so that Substitutivity of Equivalents is unsound
in⊧. So, suppose the open-ended inferentialist also insists: _It is impossible to add
connectives to our language which would make it illegitimate to use the Substitutivity of
Equivalents._ This stipulation again seems in the spirit of inferentialism: it mentions
only inferential concerns, and inferentialists can insist upon Substitutivity of Equiv-
alents as a constraint on inference (perhaps as a structural rule). However, assessed
at the semantic level, this rule uniquely determines that, if our semantic structure is
a complete Boolean algebra, then it must be a _two-valued_ Boolean algebra.^24 That
is, within the Boolean setting, we obtain the _categoricity_ of the semantic structure:
we pin it down _up to isomorphism_.^25

(^23) Cf. Button (2016b: Theorems 3–4).
(^24) See Button (2016b: Theorem 6).
(^25) But there is an easy way to introduce a non-standard semantic structure by _abandoning_ the Boolean
setting. Let _Hyp_ be an object which gets its own very special (non-Boolean) semantics: it assigns _every_
sentence True. Say that _M_ is a _hyperstructure_ iff either _M_ is a _Two_ -valued structure or _M_ = _Hyp_. We now
lay down our deviant semantics:
_T_ ⊧ _tφ_ iff: for every hyperstructure _M_ , if⟦ _T_ ⟧ _M_ ={True}, then⟦ _φ_ ⟧ _M_ =True


314 boolean-valued structures

```
Open-endedness and impossibility
```
We can see, then, why open-ended-inferentialism is promising. Unfortunately, we
think it falls short of delivering on that promise.
The open-ended-inferentialist attempted to rule out certain interpretations via a
modal stipulation: _It is impossible to add connectives to our language..._. In order to
have the desired effect, this must be a very specific sort of _impossibility_. For exam-
ple: suppose this _impossibility_ does not indicate that there _is_ no connective which
implements the function _k_ , but that we are somehow blocked from _formulating_ a
connective which implements that function. Then a semantics where the desig-
nated values fail to form an ultrafilter may yet be appropriate after all.
For comparison, consider how we might react to non-standard models of PA or
PA 2. Within the metalanguage, we can say that these unintended models violate an
instance of induction which is not ‘comprehended’ in the unintended model. (That
is just one way to explain the relationship between the existence of non-standard
Henkin models and Dedekind’s Categoricity Theorem 7.3.) Having said this, we
might go on to say that the non-standard models are _unintended_ , because induction
is supposed to be _totally open-ended_. The logical option (a) of §7.10 was an attempt
to implement this idea of open-endedness, and the motivating idea behind it was
that induction should hold in ‘all possible extensions of our language’. But, as we
explained at the time, this idea runs headlong into the just-more-theory manoeuvre:
to explain what ‘all possible extensions of our language’ amounts to, we must already
have grasped the semantic notions which are employed in full second-order logic.
This is not to say that it is _wrong_ to appeal to logical option (a), any more than it is
_wrong_ to use full second-order logic. It is just to say that the response cannot save
the _moderate_ modelist, since from her point of view it will count as _just more theory_.
The issue for the open-ended inferentialist is essentially the same. It is not that
open-ended inferentialism is _wrong_. It is just that, unless more can be said, there is
a question as to why the open-ended inferentialist’s mention of ‘possibility’, when
considering the definability of new connectives, should be sufficiently encompass-
ing that it _genuinely_ rules out non-standard semantic structures.

### 13.8 Internal-inferentialism

With two unsuccessful attempts to save the moderate inferentialist behind us, we
turn to a position which we call _internal-inferentialism_. The position is interesting in

A moment’s reflection will convince you that the presence of _Hyp_ makes no difference to logical conse-
quence, i.e. that _T_ ⊧ _tφ_ iff _T_ ⊢ _φ_. However, this semantics specifically violates the principles of Not-
Truth / Not-Designation. And nothing that the open-ended-inferentialist has said about her inference rules
rules out this (mildly deviant) approach to semantics. For more , see Smiley (1996: 7–8), Murzi and Hjort-
land (2009), and Incurvati and P. Smith (2010: 6–7).


```
13.8. internal-inferentialism 315
```
its own right, but it also connects with the internalism about model theory outlined
in §12.3.
We want to begin by agreeing with Raatikainen’s remark, that there is not much
mileage in any version of inferentialism which simply _gives up_ on the use of semantic
predicates _altogether_.^26 Perhaps we could give up on truth-talk in certain _specific_ re-
gions. But, as a matter of fact, we _do_ employ semantic terminology in wide swathes
of our daily lives and in our philosophy. And when we do so, we typically make use
of the Truth Principles which we set down in §13.4.^27 Now, inferentialists cannot
think that their inference rules secure the Truth Principles; this follows from our
discussion of Corollary 13.9 in §13.4. So, if the inferentialist says nothing more, then
she will have to _abandon_ the Truth Principles altogether. But then it seems like she
will have to give up altogether on truth-talk as we know it. And that would be a dis-
aster. In short: internalists must hope to win the right to use semantic predicates.
_Internal_ -inferentialists approach this issue, by saying that they understand se-
mantic predicates themselves in an _inferentialist_ fashion. In particular, they insist
that the meaning of the truth-predicate is determined by its inferential rules, and
that these rules directly license the Truth Principles. The simplest way in which
this would happen is if the Truth Principles _themselves_ were among the rules gov-
erning the truth-predicate. Alternatively, the Principles might be entailed by certain
_other_ inferential rules. We will say more on this below. However, the general idea is
to treat truth-predicates inferentially. Not only is this _prima facie_ reasonable, but it
also sits well with the spirit of inferentialism about logico-cum-semantic notions.
This response immediately gives rise, though, to a serious question. _Every con-
sistent theory not only has many models, in the usual sense, but also has ‘models’ under-
pinned by arbitrary filters on B-valued_ L _-structures. And this includes your truth-talk.
So how can producing it pin down any particular semantic structure?_
To explain how internal-inferentialists reply to this question, we revisit internal-
ism about model theory, from §12.3. We saw that internalists about model theory
will be asked how they pin down a particular ‘interpretation’—in the sense of an iso-
morphism type—of their model theory, MTint. In response, they simply deny the
_need_ to pin down any such thing, and insist that nothing is missing from a deductive
understanding of MTint.
Internal-inferentialists should take a leaf from the same book. They have been
asked how to pin down a particular semantic structure, and they will answer by
denying the _need_ to do so. They claim to understand semantic vocabulary in _purely_
inferentialist terms,^28 and—as inferentialists–boggle at the (semanticist) sugges-

(^26) See Raatikainen (2008: 285–7).
(^27) Or, rather: we do so for a very broad class of sentences, though we might allow exceptions to handle
vagueness, or the semantic paradoxes, or whatever. We will not repeat this caveat in what follows.
(^28) We should emphasise that the internal-inferentialist need not hold that the meaning of _every_ word
can be exhausted via its inference rules. On the contrary: the meaning of ‘pink cupcake’ must ultimately


316 boolean-valued structures

tion that something is missing from this understanding.
This ‘resolutely internal’ version of inferentialism surely represents the best line
of defence for moderate inferentialists against the semantic-underdetermination ar-
gument. But we should stress that it is only the _start_ of a defence. Everything will
turn on how, exactly, internal-inferentialists specify the rules which are to license
the Truth Principles. We already mentioned that the Principles could be introduced
directly. Equally, they could be introduced for large fragments of the inferential-
ist’s home language via either of the approaches discussed in §12.3–12.4. Indeed, in
principle there are at least as many ways to be an internalist-inferentialist as there
are formal theories of truth, and we cannot hope to survey that space of possibili-
ties.^29 So—for now—our investigation of the interplay between inferentialism and
Boolean-valued semantics must come to an end.

### 13.9 Suszko’s Thesis

In this final section, we will consider something like the _inverse_ of the problem that
occupied us in this chapter. In brief: almost any relation of logical consequence
can be given a _two-valued_ semantics, and this gives rise to what is known as _Suszko’s
Thesis_. Our earlier work puts us in an excellent position both to explain this Thesis,
and to explain why we reject it.

```
Two-valued, designatedly-valued, and tarskian relations
```
Let Sent be some set of objects, thought of as _sentences_. Let⊩be some subset of
℘(Sent)×Sent; so it is the kind of relation where one can say _T_ ⊩ _φ_ , for some
‘theory’ _T_ and some ‘consequence’ _φ_. For most of this chapter, we have considered
consequence relations defined via designated values on complete Boolean algebras.
Relaxing this idea of designated values as far as possible, we obtain this:

Definition 13.16: _We say that_ ⊩ _is_ designatedly-valued _iff:_

```
(1)there are sets B and D with D ⊆ B; and
(2)there is a class, V, of functions SentÐ→ B; and
(3) T ⊩ φ iff: if v ( T )⊆ D then v ( φ )∈ D, for all v ∈ V.
```
_If_ ⊩ _is designatedly-valued with B_ ={1, 0} _and D_ ={ 1 } _, we say that_ ⊩ _is_ two-valued_._

For example, classical first-order consequence is two-valued, as _V_ is supplied to us
by considering all theL-structures.

connect with various _non_ -inferential facts, such as that we cook, seek out, and eat such things. The _inferen-
tialism_ can plausibly be restricted to certain areas of vocabulary, e.g. logic / mathematics / semantics.

(^29) See e.g. Halbach (2011).


```
13.9. suszko’s thesis 317
```
The preceding Definition approached logical consequence in terms of seman-
tic values. A different approach would simply be to stipulate some extremely basic
properties that our consequence relation ought to have. With that in mind:^30

Definition 13.17: _We say that_ ⊩ _is_ tarskian _iff it obeys all of:_

```
reflexivity: { φ }⊩ φ
weakening: if T ⊩ φ, then T ∪ S ⊩ φ
idempotency:if { ψ : T ⊩ ψ }⊩ φ, then T ⊩ φ
```
This definition simply specifies some extremely innocuous rules for a relation of
logical consequence. The only rule meriting comment in _idempotency_ , which for-
malises the idea that closing a theory under consequence yields no _new_ conse-
quences.
Unsurprisingly, many things called ‘logics’ are tarskian. Strikingly, though, our
three notions are all equivalent:^31

Theorem 13.18: _The following are equivalent:_

```
(1) ⊩ is two-valued
(2) ⊩ is designatedly-valued
(3) ⊩ is tarskian
```
_Proof.(1)_ ⇒ _(2)._ Trivial.
_(2)_ ⇒ _(3)._ Suppose⊩is designatedly-valued. Evidently _reflexivity_ holds. To
establish _weakening_ : suppose _T_ ⊩ _φ_ ; so any _v_ ∈ _V_ with _v_ ( _T_ )⊆ _D_ has _v_ ( _φ_ )∈ _D_ ;
hence any _v_ ∈ _V_ with _v_ ( _T_ ∪ _S_ )⊆ _D_ has _v_ ( _φ_ )∈ _D_ , so that _T_ ∪ _S_ ⊩ _φ_. To establish
_idempotency_ , suppose that{ _ψ_ : _T_ ⊩ _ψ_ }⊩ _φ_ ; now fix _v_ ∈ _V_ such that _v_ ( _T_ )⊆ _D_ ;
then _v_ ( _ψ_ )∈ _D_ for any _ψ_ such that _T_ ⊩ _ψ_ ; so _v_ ({ _ψ_ : _T_ ⊩ _ψ_ })⊆ _D_ , and hence
_v_ ( _φ_ )∈ _D_ by supposition.
_(3)_ ⇒ _(1)._ Suppose⊩is tarskian. For each _S_ ⊆Sent, define a function _vS_ :
SentÐ→{1, 0}by _vS_ ( _φ_ )=1 if _S_ ⊩ _φ_ , and _vS_ ( _φ_ )=0 if _S_ ⊮ _φ_. Now let _V_ ={ _vS_ :
_S_ ⊆Sent}, and stipulate:

```
T ⊫ φ iff: for all v ∈ V , if v ( T )⊆{ 1 }then v ( φ )= 1
```
Evidently⊫is two-valued. So it suffices to show that _T_ ⊩ _φ_ iff _T_ ⊫ _φ_.
_Left-to-right._ Suppose _T_ ⊩ _φ_ and _vS_ ( _T_ )⊆{ 1 }. By definition, _S_ ⊩ _ψ_ for each
_ψ_ ∈ _T_. So _T_ ⊆{ _ψ_ : _S_ ⊩ _ψ_ }and hence{ _ψ_ : _S_ ⊩ _ψ_ }⊩ _φ_ by _weakening_. So _S_ ⊩ _φ_
by _idempotency_ , and hence _vS_ ( _φ_ )=1.

(^30) See Malinowski (1993: 32, (T0)–(T2)) Caleiro, Carnielli, et al. (2005: 177, (CR1)–(CR3)). We
follow Caleiro, Carnielli, et al. (2005: 177) in using the term ‘tarskian’ for their conjunction.
(^31) See Suszko (1975b), Malinowski (1993: 72–3), and Caleiro, Carnielli, et al. (2005: 178).


318 boolean-valued structures

_Right-to-left._ Suppose _T_ ⊫ _φ_. So if _v_ ( _T_ )⊆{ 1 }then _vT_ ( _φ_ )=1. But _T_ ⊩ _φ_
for each _φ_ ∈ _T_ , by _reflexivity_ and _weakening_ ; so _vT_ ( _T_ )⊆{ 1 }. So _vT_ ( _φ_ )=1, i.e.
_T_ ⊩ _φ_.

```
Suszko’s Thesis and compositionality
```
Theorem 13.18 simplifies a result due to Suszko, who once claimed that it showed
that ‘every logic is (logically) two-valued’, so that ‘there are but two logical values,
true and false’.^32 Since this is how Suszko’s line of thought is typically reported in
the secondary literature, we call this claim _Suszko’s Thesis_. (However, Suszko’s _own_
views are more complicated than this name suggests, as we will explain in the next
subsection.)
There are good reasons to resist the move from Theorem 13.18 to Susko’s Thesis.
In particular, Suszko’s Thesis is sometimes incompatible with compositionality. To
explain why, we will revisit our nasty connective,, as defined in §13.7. By construc-
tion,⊧is designatedly-valued: the class of valuations is just given by the class of _B_ -
valuedL-structures. So⊧is two-valued by Theorem 13.18. Spelling this out: there
is a class of functions, _V_ , from the set of sentences in the language of first-order logic
augmented with, to the set{1, 0}, such that:

```
T ⊧ φ iff: for every v ∈ V , if v ( T )⊆{ 1 }then v ( φ )= 1
```
Now, since/⊧( _φ_ → _φ_ ), there must be some _v_ ∈ _V_ with _v_ ( _φ_ → _φ_ )=0. Sup-
pose, for reductio, that there is also two-place function⊸on{1, 0}such that, for
all sentences _φ_ and _ψ_ :

```
v ( φ → ψ )= v ( φ )⊸ v ( ψ )
```
Because _φ_ ⊧ _φ_ and _φ_ ⊧ _φ_ , we have _v_ ( _φ_ )= _v_ ( _φ_ ). Equally, because⊧( _φ_ → _φ_ ),
we must have _v_ ( _φ_ → _φ_ )=1. But now we quickly reach contradiction:

```
1 = v ( φ → φ )= v ( φ )⊸ v ( φ )= v ( φ )⊸ v ( φ )= v ( φ → φ )= 0
```
So: no class of valuations which witnesses the two-valuedness of⊧treats the senten-
tial connective→as _truth-functional_. As such, ‘reducing’ an apparently many-valued
logic to a two-valued logic can leave us unable to provide a truth-functional account
of the meanings of the sentential connectives of that logic. But then we seem left
without a _compositional_ account of the meaning of the logical connectives. Fans of
many-valued logics will, then, have as good reason to reject Suszko’s Thesis as they
had to insist on compositionality.

(^32) Suszko (1977: 378), Caleiro, Carnielli, et al. (2005: 175).


```
13.9. suszko’s thesis 319
```
In response to these kinds of worries, Caleiro, Carnielli, et al. have suggested that
Susko’s Thesis is compatible with a ‘generalized’ notion of compositionality.^33 Fo-
cussing on the case of truth-functional logic, they define a kind of sentential con-
nective called a _separator_. They then show that, for any logic which contains suf-
ficiently many separators, ‘the value of a formula is...(uniquely) determined from
the values of separators applied to its immediate subformulas’. But there are two
good reasons to doubt that such ‘generalized’ compositionality is of much value.
First: this ‘generalized’ notion of compositionality falls a long way short of what
we wanted from (genuine) compositionality. In particular, in the truth-functional
case, we would want the following: given a finite vocabulary, the values of all of
the infinitely many sentences in that vocabulary are determined by the values of
finitely many (quite simple) sentences (compare the discussion of compositionality
in §1.8). This is precisely what the case of⊧shows us we _cannot_ have.
Second: a given logic may not contain enough separators to allow for ‘general-
ized’ compositionality. To combat this, Caleiro, Marcos, and Volpe note that one
can always add new connectives to a logic,^34 and that doing so will never disrupt
any existing entailments between the sentences which do not contain the new con-
nectives. However, as we saw in our discussion of♡andin §13.7, adding new con-
nectives to a logic can render certain general rules of inference unsound (in their
full generality). Consequently, there can be philosophically motivated resistance
to adding new connectives to a logic.

```
Suszko’s own view
```
For all these reasons, Suszko’s Thesis seems unpromising. In fact, Suszko’s own
viewpoint was slightly more complicated than the name ‘Suszko’s Thesis’ suggests.
In earlier work, Suszko was developing an intensional logic which he took to be a
competitor to standard modal logics. His logic expanded ordinary sentential logic
with an operator for propositional identity and was able to interpret certain modal
logics. But, expressing sympathy with Quine’s concerns about modal logic, Suszko
wanted to emphasise the classical features of his logic. Since the most obvious se-
mantics for his intensional logic were many-valued, he deployed Theorem 13.18 to
show that his logic also had a two-valued semantics.^35
However, Theorem 13.18 is entirely general in character, and not specific to the
particular intensional logics that Suszko was then considering. And so, drawing

(^33) Caleiro, Carnielli, et al. (2005: 184), Caleiro and Marcos (2009: 270), and Caleiro, Marcos, and Volpe
(2014: 2, 14–15, 17, 42).
(^34) Caleiro, Marcos, and Volpe (2014: Proposition 2.12).
(^35) Suszko (1971: 38), Bloom and Suszko (1971: 80, 1972: 306), and Suszko (1975a: 203–6) describe how
the intensional logic recovers certain modal inferences, while Suszko (1975a: 169, 204) records various
Quinean sympathies. See Suszko (1975a: 187–92) for the application of considerations like Theorem 13.18
to his intensional logics.


320 boolean-valued structures

an analogy with the Church–Turing Thesis, Suszko suggested a more general con-
clusion.^36 In the early days of the theory of computation, many different models
of computation were discovered—Turing machines, the general recursive func-
tions, various lambda-calculi—which were subsequently shown to be extensionally
equivalent, in that they generated the same class of functions on the natural num-
bers. Suszko suggested that the equivalence provided by Theorem 13.18 had a simi-
lar role to play: it showed that there is a core, absolute notion of entailment which
underlies certain extensionally equivalent formalisms. Suszko then suggested that,
just as it would be useless to insist upon the primacy of Turing machines over gen-
eral recursive functions, so it would be useless to insist upon two-valued logics over
many-valued logics (or vice-versa). Or, as Suszko put it, ‘discussions of intended
interpretations’ are ‘fruitless.’^37
Suszko, then, advanced a kind of scepticism about the ‘intended’ semantical un-
derpinning of certain logics. By this point in the book, such scepticism should be
almost painfully familiar. However, another theme which has run more quietly
through Part B of this book: as a good rule of thumb, it is impossible to extract
philosophical juice from a piece of pure mathematics without invoking some philo-
sophical thesis (see in particular §7.5). In particular, a technical result can only mo-
tivate a kind of scepticism in the light of some philosophical thesis. For example,
moderate modelism combined with the Löwenheim–Skolem results pushes us to-
wards a kind of scepticism about our ability to pin down certain ‘structures’, and
moderate semanticism combined with the results of this chapter pushes us towards
a kind of scepticism about our ability to pin down our semantics.
The only philosophical impetus which Suszko mentions for his scepticism,
though, is an analogy with computability. And that analogy misses its mark. The
formal equivalence between different notions of computability shows that we can
happily employ any of several different formalisms. But this does not indicate that
every formalism is _philosophically_ on a par. Indeed, when presenting arguments in
favour of the Church–Turing Thesis, many people have found _Turing’s_ formal no-
tion of computability more helpful than _Church’s_ (on the grounds, for example, that
it offers some kind of perspicuous decomposition of what computors could do in
principle). Similarly, in Chapter 1, we outlined three different approaches to the
semantics for classical languages. Since they are extensionally equivalent, we noted
that we can happily use any of the three approaches. But we also suggested that
the in-principle availability of the Hybrid approach has certain philosophical ben-
efits: it makes room for compositionality without generating the antinomy of the
variable and without straining the notion of a language to breaking point. Similarly
here. Since Theorem 13.18 states that any tarskian logic is also designatedly-valued

(^36) See Suszko (1975a: 189).
(^37) Suszko (1975a: 191).


```
13.a. boolean-valued structures with filters 321
```
and indeed two-valued, we may have a certain level of flexibility concerning how
to characterise our favoured logic(s). Still, one of these characterisations may be
particularly philosophically perspicuous. Indeed, _pace_ Suszko, a many-valued char-
acterisation which allows for compositionality may be _particularly_ salient.

### 13.a Boolean-valued structures with filters

In this appendix, we prove the main results associated Boolean-valued structures
and the semantic-underdetermination argument of §§13.1–13.4.

Theorem(13.6): _If B is a complete Boolean algebra with D_ ⊆ _B, then these are equiv-
alent:_

```
(1)D is a filter on B
(2)T ⊢ φ iff T ⊧
B
Dφ, for any theory T ∪{ φ }
```
_Proof.(2)_ ⇒ _(1)._ By Definition 13.3, there are three ways _D_ could fail to be a filter,
and each leads to a violation of equivalence. For example, if 0 _B_ ∈ _D_ then⊧

_B
Dφ_ ∧¬ _φ_
for any sentence _φ_ , since⟦ _φ_ ∧ ¬ _φ_ ⟧=⟦ _φ_ ⟧⋅ −⟦ _φ_ ⟧= 0 _B_ ∈ _D_. The other two cases
are similar.^38
_(1)_ ⇒ _(2)._ Assuming _D_ is a filter, we must show that _T_ ⊢ _φ_ iff _T_ ⊧
_B
Dφ_.
_Right-to-left._ Suppose _T_ ⊧
_B
D φ_. So in particular, there is no _B_ -valued structure
_M_ such that⟦ _ψ_ ⟧ _M_ ∈{1, 0}for everyL-sentence _ψ_ , and that⟦ _T_ ⟧ _M_ ={ 1 }, but
⟦ _φ_ ⟧ _M_ =0. So there is noL-structure _N_ (in the sense of Definition 1.2) such that
_N_ ⊧ _T_ but _N_ ⊭ _φ_. So _T_ ⊢ _φ_ by the Completeness Theorem 4.24.
_Left-to-right._ If _T_ ⊢ _φ_ , then _T_ 0 ⊢ _φ_ for some finite _T_ 0 ⊆ _T_. We aim to show that
this proof-system is sound for our _B_ -valued semantics, in the following sense:

```
If φ 1 , ..., φn ⊢ ψ , then⟦ φ 1 ⟧
```
```
M
⋅...⋅⟦ φn ⟧
```
```
M
≤⟦ ψ ⟧ M for any B -valued struc-
ture M
```
We will establish this by induction on the length of the derivation. Since _T_ 0 ⊢ _φ_ , it
will follow that∏⟦ _T_ 0 ⟧ _M_ ≤⟦ _φ_ ⟧ _M_ for any _M_. Since _D_ is a filter and _T_ 0 is finite, if
⟦ _T_ 0 ⟧ _M_ ⊆ _D_ then∏⟦ _T_ 0 ⟧ _M_ ∈ _D_ by Definition 13.3(2). Since _D_ is a filter⟦ _φ_ ⟧ _M_ ∈ _D_
by Definition 13.3(3). So _T_ 0 ⊧

```
B
Dφ , and hence T ⊧
```
_B
Dφ_.
It remains to prove our claim, i.e. to prove that applying any rule in our proof-
system weakly increases the assigned value. The case of the sentential connectives
is easy and is covered elsewhere.^39

(^38) See Button (2016b: Theorem 1).
(^39) Bell (2005: Theorem 1.17 pp.24–6), Kaye (2007: Theorem 7.10 pp.84–5), and Button (2016b: Theo-
rem 1).


322 boolean-valued structures

```
To deal with existential quantifiers, we treat∃ x as abbreviating¬∀ x ¬and note
```
that⟦∃ _xφ_ ( _x_ )⟧ _M_ =∑ _a_ ∈ _M_ ⟦ _φ_ ( _ca_ )⟧ _M_

```
○
=−∏ a ∈ M −⟦ φ ( ca )⟧ M
```
○
=⟦¬∀ _x_ ¬ _φ_ ( _x_ )⟧ _M_.
We next show that applying∀I weakly increases the assigned value. So, suppose
we have a derivation showing _U_ ⊢ _φ_ ( _c_ )with _c_ not occurring in _U_ , and for induc-
tion suppose that∏⟦ _U_ ⟧ _M_ ≤⟦ _φ_ ( _c_ )⟧ _M_ for any _M_ interpreting _c_ anyhow. Then,

invoking the greatest-lower bound property,∏⟦ _U_ ⟧ _M_ ≤ ∏ _a_ ∈ _M_ ⟦ _φ_ ( _ca_ )⟧ _M_

○
=
⟦∀ _xφ_ ( _x_ )⟧ _M_ for any complete Boolean algebra, as required.
To show that∀E weakly increases the assigned value, simply note that
⟦∀ _xφ_ ( _x_ )⟧ _M_ =∏ _a_ ∈ _M_ ⟦ _φ_ ( _a_ )⟧ _M_ ≤⟦ _φ_ ( _ca_ )⟧ _M_ for each _a_ ∈ _M_.
We now turn to the rules for identity. To show that=I is innocuous, observe that
⟦ _a_ = _a_ ⟧ _M_ =1 for any _a_ ∈ _M_ , so that⟦ _t_ = _t_ ⟧ _M_ =1 for any term _t_.
To show⟦ _t_ 1 = _t_ 2 ⟧ _M_ ⋅⟦ _φ_ ( _t_ 1 )⟧ _M_ ≤⟦ _φ_ ( _t_ 2 )⟧ _M_ , we do a subinduction on the
complexity of formulas. A simple induction, using the stipulations concerning the
interpretation of function-symbols, shows that⟦ _t_ 1 = _t_ 2 ⟧ _M_ ≤⟦ _s_ ( _t_ 1 )= _s_ ( _t_ 2 )⟧ _M_ for
any term _s_ ( _x_ ). So now let _φ_ ( _x_ )be a formula _R_ ( _v_ 1 , ..., _s_ ( _x_ ), ..., _vn_ ); then for any
_a_ 1 , ..., _an_ from _M_ :

```
⟦ t 1 = t 2 ⟧⋅⟦ R ( a 1 , ..., s ( t 1 ), ..., an )⟧
≤⟦ s ( t 1 )= s ( t 2 )⟧⋅⟦ R ( a 1 , ..., s ( t 1 ), ..., an )⟧
=⟦ a 1 = a 1 ⟧⋅...⋅⟦ s ( t 1 )= s ( t 2 )⟧⋅...⋅⟦ an = an ⟧⋅⟦ R ( a 1 , ..., s ( t 1 ), ..., an )⟧
≤⟦ R ( a 1 , ..., s ( t 2 ), ..., an )⟧
```
Next, let _φ_ ( _x_ )be a formula _s_ ( _x_ )= _r_ for terms _r_ and _s_ ( _x_ ); then:

```
⟦ t 1 = t 2 ⟧⋅⟦ s ( t 1 )= r ⟧≤⟦ s ( t 1 )= s ( t 2 )⟧⋅⟦ s ( t 1 )= r ⟧
=⟦ s ( t 2 )= s ( t 1 )⟧⋅⟦ s ( t 1 )= r ⟧
≤⟦ s ( t 2 )= r ⟧
```
This handles the base cases of the induction. Now suppose for induction that
⟦ _t_ 1 = _t_ 2 ⟧ _M_ ⋅⟦ _ψ_ ( _t_ 1 , _c_ )⟧ _M_ ≤⟦ _ψ_ ( _t_ 2 , _c_ )⟧ _M_ for any _M_ interpreting _c_ in any way. Then,
for any complete Boolean algebra _M_ :

```
⟦ t 1 = t 2 ⟧ M ⋅⟦∀ xψ ( t 1 , x )⟧ M =⟦ t 1 = t 2 ⟧ M ⋅∏
a ∈ M
```
```
⟦ ψ ( t 1 , ca )⟧ M
```
```
○
```
#### ≤∏

```
a ∈ M
```
```
⟦ ψ ( t 2 , ca )⟧ M
```
```
○
```
```
=⟦∀ xψ ( t 2 , x )⟧ M
```
The remaining cases for the sentential connectives are similar. This completes the
induction, establishing that applying=E weakly increases the assigned valued.
Finally, we turn to the second-order rules. The case of second-order quantifi-
cation is exactly similar to first-order quantification, and the Comprehension and
Choice Schemas hold by stipulation in any faithful _B_ -valued structure.


```
13.b. full second-order boolean-valued structures 323
```
Theorem(13.8): _If B is a complete Boolean algebra and D_ ⊆ _B is a filter on B, then:_

```
(1)D is an ultrafilter on B iff Not-Designation, And-Designation and Or-
Designation hold in every (faithful Henkin) B-valued structure
(2)D is a principal ultrafilter on B iff all the Designation Principles hold in every
(faithful Henkin) B-valued structure
```
_Proof._ (1) is dealt with elsewhere,^40 so we focus on (2). Left-to-right of All-
Designation and right-to-left of Exists-Designation hold under no special condi-
tion; the interesting cases are right-to-left of All-Designation and left-to-right of
Exists-Designation. We prove Exists-Designation; All-Designation is similar.
_Necessity._ Let _D_ be a nonprincipal ultrafilter, so∏ _D_ ∉ _D_ and hence−∏ _D_ ∈ _D_.
Let _M_ be a _B_ -valued{ _F_ }-structure as follows:

- _M_ ’s underlying domain is _M_ = _D_
- ⟦ _F_ ( _a_ )⟧ _M_ =− _a_ for all _a_ ∈ _M_ = _D_
- ⟦ _a_ = _b_ ⟧ _M_ =1 if _a_ = _b_ , and⟦ _a_ = _b_ ⟧ _M_ =0 otherwise

By construction,⟦ _F_ ( _ca_ )⟧∉ _D_ for any _a_ ∈ _M_. However

```
⟦∃ xF ( x )⟧=∑
a ∈ M
```
```
⟦ F ( a )⟧=∑
a ∈ D
```
```
− a =−∏ D ∈ D
```
_Sufficiency._ Let _D_ be a principal ultrafilter; so∏ _D_ ∈ _D_. Suppose there is a _B_ -
valued structure _M_ such that⟦ _φ_ ( _ca_ )⟧∉ _D_ for all _a_ ∈ _M_ ; then−⟦ _φ_ ( _ca_ )⟧∈ _D_ since
_D_ is an ultrafilter; so

```
∏ D ≤∏
a ∈ M
```
```
−⟦ φ ( ca )⟧=−∑
a ∈ M
```
```
⟦ φ ( ca )⟧=−⟦∃ xφ ( x )⟧
```
Since∏ _D_ ∈ _D_ by hypothesis and since _D_ is closed upwards,−⟦∃ _xφ_ ( _x_ )⟧∈ _D_ and
so⟦∃ _xφ_ ( _x_ )⟧∉ _D_.

### 13.b Full second-order Boolean-valued structures

In Definition 13.5, we outlined a _Henkin_ -style second-order _B_ -valued semantics.
However, there is an obvious Boolean generalisation of _full_ semantics (as ordinarily
defined; see §§1.10–1.11). We start by defining _full B_ -valued structures:

Definition 13.19: _A B-valued structure M is_ full _iff it obeys the following:_

```
(1) M rel n is the set of all functions g : Mn Ð→ B, for all n
(2) M fun n is the set of all functions g : Mn Ð→ M, for all n
(3) if a ≠ b then ⟦ a = b ⟧= 0 , for all a , b ∈ M
```
(^40) See Button (2016b: Corollary 5).


324 boolean-valued structures

The motivations for clauses (1) and (2) are clear. Clause (3) then ensures both that
⟦ _a_ 1 = _b_ 1 ⟧⋅...⋅⟦ _an_ = _bn_ ⟧⋅ _g_ ( _a_ )≤ _g_ ( _b_ )for any _g_ ∈ _M_ rel _n_ , and that⟦ _a_ 1 = _b_ 1 ⟧⋅...⋅
⟦ _an_ = _bn_ ⟧≤⟦ _g_ ( _a_ )= _g_ ( _b_ )⟧for any _g_ ∈ _M_ fun _n_.^41
Given Theorem 13.6, one might be tempted to make this conjecture: _Where B
is any complete Boolean algebra with a filter D, Boolean entailment_ ⊧

_B
Drestricted to full
B-valued structures is equivalent to full second-order logic_. But that conjecture would
be unwise. The proof of Theorem 13.6 relied upon the existence of a sound and
complete deduction-system for faithful Henkin second-order logic, but _full_ second-
order logic has no such deduction-system. And in fact Ikegami and Väänänen have
proved that this conjecture is outright _false_.^42
To obtain a Boolean-valued logic which _is_ exactly as powerful as (ordinary) full
second-order logic, we must restrict our attention again to _principal ultrafilters_ on
_B_ -valued structures:

Proposition 13.20: _Let B be a complete Boolean algebra with D a principal ultrafilter
on B. Where T_ ∪{ _φ_ } _is any second-order theory, these are equivalent:_

```
(1)T ⊧ φ, where throughout the proof ⊧ is understood in terms of (ordinary) full
second-order logic, as defined in §1.10.
(2)T ⊧
```
```
B
D φ, where throughout the proof ⊧
```
```
B
Dis understood as restricted to full B-
valued structures. That is, we are writing T ⊧
```
```
B
Dφ to indicate: for every full B-
valued L -structure M, if ⟦ T ⟧ M ⊆ D then ⟦ φ ⟧ M ∈ D.
```
_Proof.(1)_ ⇒ _(2)._ Suppose _T_ ⊧/
_B
D φ_ , and let _M_ be a full _B_ -valued structure where
⟦ _T_ ⟧ _M_ ⊆ _D_ but⟦ _φ_ ⟧ _M_ ∉ _D_. Using Robinsonian notions for full second-order logic,
we expand this to a full _B_ -valued structure _M_ ◾. This has a constant _ca_ for each
_a_ ∈ _M_ with _cM_

◾
_a_ = _a_ , a predicate _Rg_ for each _g_ : _M
n_ Ð→ _B_ , and a function symbol
_fg_ for each _g_ : _Mn_ Ð→ _M_. We will define (in the ordinary sense) a full second-
orderL◾-structure _N_ , with the following property:

```
⟦ φ ⟧ M
```
```
◾
∈ D iff N ⊧ φ , for anyL◾-sentence φ (13.1)
```
It will follow immediately that _N_ ⊧ _T_ but _N_ ⊭ _φ_ , so that _T_ ⊭ _φ_ , as required.
To define _N_ , we simply quotient _M_ by identity-according-to- _M_. In detail, let
[ _a_ ]={ _b_ ∈ _M_ :⟦ _a_ = _b_ ⟧ _M_ ∈ _D_ }, and define _N_ as follows, for allL◾-constant

(^41) To see how these could fail without clause (3), let _B_ be a complete Boolean algebra with more than
two elements, and define a _B_ -valued structure _A_ with domain _B_ which interprets identity as⟦ _x_ = _y_ ⟧ _A_ =
(( _x_ ⋅ _y_ )+(− _x_ ⋅ − _y_ )). (The proof that that _A_ is a _B_ -valued∅-structure can be extracted from §13.d). Let
_D_ be a principal ultrafilter on _B_ , and let _g_ ( _x_ )=1 if _x_ ∈ _D_ , and _g_ ( _x_ )=0 otherwise. Pick some element
_a_ ∈ _D_ ∖{ 1 }. Then⟦ _a_ = 0 ⟧=− _a_ > 0 =⟦ 1 = 0 ⟧=⟦ _g_ ( _a_ )= _g_ ( 0 )⟧, and also⟦ _a_ = 0 ⟧⋅ _g_ ( _a_ )=− _a_ ⋅ 1 =− _a_ >
0 = _g_ ( 0 ).
(^42) Ikegami and Väänänen (2015: 173).


```
13.b. full second-order boolean-valued structures 325
```
symbols _c_ , all _n_ -placeL◾-predicates _R_ , all _n_ -placeL◾-function symbols _f_ and all
_a_ from _M_ :

```
N ’s underlying domain is N ={[ a ]: a ∈ M }
cN =[ cM ]
RN ={([ a 1 ], ...,[ an ]):⟦ R ( a 1 , ..., an )⟧ M ∈ D }
fN ([ a ])=[ fM ( a )]
```
Since _M_ is a _B_ -valued structure and _D_ is a filter, _N_ is well-defined.
A simple induction on complexity confirms that _tN_ ([ _a_ ])=[ _tM_ ( _a_ )]for any
_a_ ∈ _Mn_ and anyL◾-term _t_. We now prove claim (13.1) by induction.
_Atomic case: identity._ The claim holds for identity statements inL◾since
⟦ _tM_ 1 ( _a_ )= _tM_ 2 ( _b_ )⟧
_M_ ◾
∈ _D_ iff[ _tM_ 1 ( _a_ )]=[ _tM_ 2 ( _b_ )]iff _tN_ 1 ([ _a_ ])= _tN_ 2 ([ _b_ ]).
_Atomic case: relations._ It suffices to show that⟦ _R_ ( _a_ 1 , ..., _an_ )⟧ _M_

```
◾
∈ D iff
([ a 1 ], ...,[ an ])∈ RN. Left-to-right is immediate from the definition of RN. For
the converse, suppose([ a 1 ], ...,[ an ])∈ RN ; then⟦ R ( b 1 , ..., bn )⟧ M
```
```
◾
∈ D for some
bi s with⟦ bi = ai ⟧ M ∈ D. Since M is a B -valued structure:
```
```
⟦ b 1 = a 1 ⟧ M ⋅...⋅⟦ bn = an ⟧ M ⋅⟦ R ( b 1 , ..., bn )⟧ M
```
```
◾
≤⟦ R ( a 1 , ..., an )⟧ M
```
```
◾
```
```
But all the identity-expressions on the left are designated; and since D is a filter,
⟦ R ( a 1 , ..., an )⟧ M
```
```
◾
∈ D , as required.
Negation. Invoking the induction hypothesis and that D is an ultrafilter:
```
```
⟦¬ φ ⟧ M
```
```
◾
∈ D iff⟦ φ ⟧ M
```
```
◾
∉ D iff N ⊭ φ iff N ⊧¬ φ
```
```
First-order quantification. We have:
```
```
⟦∀ xφ ( x )⟧ M
```
```
◾
∈ D iff∏
a ∈ M
```
```
⟦ φ ( ca )⟧ M
```
```
◾
∈ D
```
```
iff⟦ φ ( ca )⟧ M
```
```
◾
∈ D for all a ∈ M
iff N ⊧ φ ( ca )for all a ∈ M
iff N ⊧∀ xφ ( x )
```
```
The first biconditional follows from semantics for the quantifier. The second bi-
conditional holds because D is principal. The third holds by the induction hypoth-
esis. The last holds because N ={ cNa : a ∈ M }.
Second-order quantification. These are exactly similar.
(2) ⇒ (1). Suppose T ⊭ φ , and let N be anL-structure where N ⊧ T and
N ⊭ φ. LetL◾be the signature of N ◾. We begin by defining a Henkin B -valued
```

326 boolean-valued structures

L◾-structure _H_. Its domain _H_ = _N_ , and identity is given by the insistence that
if _a_ = _b_ then⟦ _a_ = _b_ ⟧ _H_ =1 and if _a_ ≠ _b_ then⟦ _a_ = _b_ ⟧ _H_ =0. We then stipulate:
_cH_ = _cN_ for allL◾-constants _c_ ; _fH_ = _fN_ for allL◾-function-symbols _f_ ; and
⟦ _R_ ( _a_ 1 , ..., _an_ )⟧=1 if( _a_ 1 , ..., _an_ )∈ _RN_

◾
and⟦ _R_ ( _a_ 1 , ..., _an_ )⟧=0 otherwise, for all
L◾-predicates _R_. Finally, _H_ rel _n_ is the set of functions picked out by any _n_ -placeL◾-
predicate, and _H_ fun _n_ is the set of functions picked out by any _n_ -placeL◾-function-
symbol. It is trivial from the definition of _H_ that:

```
⟦ φ ⟧ H ∈ D iff M ⊧ φ , for anyL◾-sentence φ (13.2)
```
We now define a _full B_ -valuedL◾-structure, _E_. This is the same as _H_ in every
regard, except that _E_ rel _n_ and _E_ fun _n_ are now as in Definition 13.19. For each _g_ ∈ _E_ rel _n_
we let _gχ_ ∈ _H_ rel _n_ be the function given by _gχ_ ( _a_ )=1 iff _g_ ( _a_ )∈ _D_ and _gχ_ ( _a_ )= 0
iff _g_ ( _a_ )∉ _D_. Observe that _H_ fun _n_ = _E_ fun _n_ and that _H_ rel _n_ ={ _gχ_ : _g_ ∈ _E_ rel _n_ }. We now
claim that, for anyL◾-formula _φ_ ( _V_ )with all free (relational-)variables displayed,
and all _g_ ∈ _M_ rel _n_ :

```
⟦ φ ( Rg )⟧
E
∈ D iff⟦ φ ( Rgχ )⟧
H
∈ D (13.3)
```
This is proved by a simple induction on complexity. The crucial clause concerns
quantification over relations, and this holds because our filter is principal (cf. the
proof for first-order quantification in the previous part of this proof). Now we just
combine (13.2) and (13.3) to obtain that⟦ _T_ ⟧ _E_ ⊆ _D_ and⟦ _φ_ ⟧ _E_ ∉ _D_.

### 13.c Ultrafilters, ultraproducts, Łoś, and compactness

The proof of Proposition 13.20 put us in a position to explain one of the most cel-
ebrated uses of ultrafilters within model theory, namely, in _ultraproducts_. Our ap-
proach to setting up ultraproducts is unusual, since it uses Boolean-valued struc-
tures; given this framework, though, our approach is surprisingly swift.
Let _I_ be an index set and let _Mi_ be a set for each _i_ ∈ _I_. Then Prod _i_ ∈ _IMi_ is the set
of all choice functions on{ _Mi_ : _i_ ∈ _I_ }.^43 Where each _Mi_ is the underlying domain
of someL-structure _Mi_ , we can use this to define a℘( _I_ )-valuedL-structure, _P_ ,
by stipulating, for allL-constant symbols _c_ , allL-predicates _R_ , allL-function
symbols _f_ , all _g_ 1 , ..., _gn_ ∈Prod _i_ ∈ _IMi_ , and all _i_ ∈ _I_ :

(^43) I.e. the set of all functions _f_ : _I_ Ð→ _Mi_ such that _f_ ( _i_ )∈ _Mi_ for all _i_ ∈ _I_. Other authors use∏ _i_ ∈ _IMi_
for Prod _i_ ∈ _IMi_ , but this would interfere with our infimum-notation.


```
13.c. ultrafilters, ultraproducts, łoś, and compactness 327
```
```
P ’s underlying domain is P =Prod i ∈ IMi
cP ( i )= cMi
( fP ( g 1 , ..., gn ))( i )= fMi ( g 1 ( i ), ..., gn ( i ))
⟦ R ( g 1 , ..., gn )⟧ P ={ i ∈ I :( g 1 ( i ), ..., gn ( i ))∈ RMi }
⟦ g 1 = g 2 ⟧ P ={ i ∈ I : g 1 ( i )= g 2 ( i )}
```
It is easy to check that _P_ is a℘( _I_ )-valuedL-structure. We now have:

Lemma13.21: _Let I, each Mi, and P be as above. For any first-order_ L _-formula φ_ ( _v_ )
_and anyg from_ Prod _i_ ∈ _IMi:_

```
⟦ φ ( g )⟧ P
```
```
○
={ i ∈ I : Mi ⊧ φ ( g ( i ))}
```
_Proof._ This is a simple induction on complexity. Every case is trivial, except quan-
tification, where we have:

```
⟦∃ vφ ( g , v )⟧ P
```
```
○
= ∑
h ∈Prod i ∈ IMi
```
```
⟦ φ ( g , h )⟧ P
```
```
○
```
```
=⋃{⟦ φ ( g , h )⟧ P
```
```
○
: h ∈Prod i ∈ IMi }
```
```
=⋃{{ i ∈ I : Mi ⊧ φ ( g ( i ), h ( i ))}: h ∈Prod i ∈ IMi }
```
```
={ i ∈ I : Mi ⊧∃ vφ ( g ( i ), v )}
```
The third identity invokes the induction hypothesis. The fourth identity holds be-
cause Prod _i_ ∈ _IMi_ has all choice functions on{ _Mi_ : _i_ ∈ _I_ }.

We now turn _P_ into an ultraproduct, by quotienting through identity-according-
to- _P_. The idea is as in Proposition 13.20. So let _I_ , each _Mi_ , and _P_ be as above. Let
_D_ be an ultrafilter on℘( _I_ ), and let[ _g_ ]={ _h_ ∈Prod _i_ ∈ _IMi_ :⟦ _g_ = _h_ ⟧ _P_ ∈ _D_ }. As in
Proposition 13.20,^44 we define anL-structure, _U_ , as follows:

```
U ’s underlying domain is U ={[ g ]: g ∈Prod i ∈ IMi }
cU =[ cP ]
RU ={([ g 1 ], ...,[ gn ]):⟦ R ( g 1 , ..., gn )⟧ P ∈ D }
fU ([ g ])=[ fP ( g )]
```
We say that _U_ is an _ultraproduct_ , and we can obtain a famous result:

(^44) There is an important difference: in Proposition 13.20, we considered full second-order Boolean-
valued structures; but _P_ is essentially first-order, and clause (3) of Definition 13.19 typically fails of _P_.


328 boolean-valued structures

Theorem13.22(Łoś’s Ultraproduct Theorem): _Let I, each Mi, D, and U be as above.
For any first-order_ L _-formula φ_ ( _v_ ) _and anyg from_ Prod _i_ ∈ _IMi:_

```
U ⊧ φ ([ g ]) iff { i ∈ I : Mi ⊧ φ ( g ( i ))}∈ D
```
_Proof._ Again, this is an induction on complexity. For all cases except the quantifiers,
we simply follow the proof of Proposition 13.20, invoking Lemma 13.21. In the case
of quantifiers, we must depart from the proof of Proposition 13.20, since we have
not assumed that _D_ is principal. But here:

```
U ⊧∃ vφ ([ g ], v )iff U ⊧ φ ([ g ],[ h ]), for some h ∈Prod i ∈ IMi
```
```
iff{ i ∈ I : Mi ⊧ φ ( g ( i ), h )}∈ D , for some h ∈Prod i ∈ IMi
```
```
iff{ i ∈ I : Mi ⊧∃ vφ ( g ( i ), v )}∈ D
```
The second biconditional invokes the induction hypothesis; the third appeals, as
in Lemma 13.21, to the fact that Prod _i_ ∈ _IMi_ has all the choice functions and so, in
particular, a function _h_ which selects witnesses wherever possible.

We can now reprove the Compactness Theorem 4.1 with ultraproducts (and ap-
pealing to Theorem 14.4 of §14.2):^45

Corollary 13.23: _Let T be a set of first-order_ L _-sentences, let I be the set of all finite
subsets of T, and for each i_ ∈ _I let Mi_ ⊧ _i. Then there is an ultrafilter D over_ ℘( _I_ ) _such
that U_ ⊧ _T, where U is defined from I and D as above._

_Proof._ We begin with two definitions:

```
u ( φ )={ i ∈ I : φ ∈ i }, for each φ ∈ T
F ={ u ( φ ): φ ∈ T }
```
Let _i_ ={ _φ_ 1 , ..., _φn_ }⊆ _T_ ; then _i_ ∈ _u_ ( _φ_ 1 )∩...∩ _u_ ( _φn_ ), i.e. _F_ is finitely-meetable, in
the terminology of Theorem 14.4. So there is an ultrafilter _D_ ⊇ _F_. For each _φ_ ∈ _T_ we
now have _u_ ( _φ_ )⊆{ _i_ ∈ _I_ : _Mi_ ⊧ _φ_ }∈ _D_ , since _D_ is closed upwards; so that _U_ ⊧ _φ_ ,
by Łoś’s Theorem 13.22, where _U_ is the ultraproduct constructed from _D_.

### 13.d The Boolean-non-categoricity of CBA

We now prove the results connected with semanticism and §13.5. Recall that CBA
augments the theory of Boolean algebras with the claim∀ _x_ ( _x_ = 0 ∨ _x_ = 1 ).

(^45) See Chang and Keisler (1990: Corollary 4.1.11).


```
13.d. the boolean-non-categoricity of cba 329
```
Proposition(13.10): _For any complete Boolean algebra B, there is a B-valued model
of_ CBA _whose domain is B._

_Proof._ The idea is to regard _B itself_ as a _B_ -valued model of CBA. So: let _A_ have
the domain _B_ , and let _A_ interpret all of the symbols 1, 0,−,⋅and+exactly as in _B_.
Finally, let _A_ interpret identity as follows:

```
⟦ x = y ⟧ A =(( x ⋅ y )+(− x ⋅ − y ))
```
where the expression on the right is interpreted on _B_.
To confirm that _A_ really _is_ a _B_ -valued model, we need to check that:

```
⟦ x = x ⟧= 1
⟦ x = y ⟧=⟦ y = x ⟧
⟦ x = y ⟧⋅⟦ y = z ⟧≤⟦ x = z ⟧
⟦ x = y ⟧≤⟦− x =− y ⟧
⟦ x 1 = y 1 ⟧⋅⟦ x 2 = y 2 ⟧≤⟦ x 1 ⋅ x 2 = y 1 ⋅ y 2 ⟧
⟦ x 1 = y 1 ⟧⋅⟦ x 2 = y 2 ⟧≤⟦ x 1 + x 2 = y 1 + y 2 ⟧
```
This is easily done: given our interpretation of=in _A_ , we can replace each instance
of _ξ_ = _χ_ in the above with(( _ξ_ ⋅ _χ_ )+(− _ξ_ ⋅ − _χ_ )). Under this reinterpretation, all
six (in)equalities are theorems of the theory of Boolean algebras. For example, the
fourth inequality becomes:

```
(( x ⋅ y )+(− x ⋅ − y ))≤((− x ⋅ − y )+(−− x ⋅ −− y ))
```
which is obviously true of any Boolean algebra. So, all six reinterpreted statements
hold in _B_. Since _A_ interprets−,⋅and+exactly as _B_ does, all six of the _original_
(in)equalities are therefore true.
To check that⟦∀ _x_ ( _x_ = 0 ∨ _x_ = 1 )⟧ _A_ =1, it suffices to observe the following, for
each _x_ ∈ _B_ :

```
⟦ cx = 0 ∨ cx = 1 ⟧ A
```
```
○
=⟦ cx = 0 ⟧ A
```
```
○
+⟦ cx = 1 ⟧ A
```
```
○
```
```
=(( x ⋅ 0 )+(− x ⋅ − 0 ))+(( x ⋅ 1 )+(− x ⋅ − 1 ))
=( 0 + − x )+( x + 0 )= 1
```
Similar checks will show that⟦CBA⟧ = { 1 }. For example, since _B_ is a
Boolean algebra, _x_ ⋅( _y_ + _z_ ) = ( _x_ ⋅ _y_ )+( _x_ ⋅ _z_ )for any _x_ , _y_ , _z_ ∈ _B_. Fur-
thermore, _A_ interprets⋅and+exactly as _B_ does, and interprets identity so that
⟦ _w_ = _w_ ⟧=1 for any _w_. Hence⟦ _cx_ ⋅( _cy_ + _cz_ )=( _cx_ ⋅ _cy_ )+( _cx_ ⋅ _cz_ )⟧=1, and so
⟦∀ _x_ ∀ _y_ ∀ _z_ [ _x_ ⋅( _y_ + _z_ )=( _x_ ⋅ _y_ )+( _x_ ⋅ _z_ )]⟧=1.


330 boolean-valued structures

It is easy to check that _Two_ provides a _B_ -valued model of CBA, whatever _B_ hap-
pens to be. It follows that, whilst CBA is categorical with the standard semantics
for first-order logic, it is not categorical on any other (non-isomorphic) Boolean-
valued semantics.
In §13.5, we also considered augmenting the theory of Boolean algebras with new
axioms concerning a new one-place predicate, _D_ , which are intended to say that (the
interpretation of) _D_ is a principal ultrafilter. Here are the axioms:

```
¬ D ( 0 )
∀ x ∀ y ([ D ( x )∧ D ( y )]→ D ( x ⋅ y )) ∀ x ( D ( x )∨ D (− x ))
∀ x ∀ y ([ D ( x )∧ x ⋅ y = x ]→ D ( y )) ∃ x ∀ y ( D ( y )↔ x ⋅ y = x )
```
The left column details a filter, the right column details a principal ultrafilter. Let
DBA be the result of adding these axioms to the theory of Boolean algebras (or,
indeed, to CBA). It is easy to check that, if _M_ is a model (in the ordinary sense) of
DBA, then _DM_ is a principal ultrafilter on _B_.
However, we can obtain a _B_ -valued model of DBA, just by augmenting our
model _A_ , from the proof of Proposition 13.10, with the function⟦ _D_ ( _x_ )⟧ _A_ = _x_ for
all _x_.^46 It is easy to confirm that⟦ _x_ = _y_ ⟧⋅⟦ _D_ ( _x_ )⟧≤⟦ _D_ ( _y_ )⟧, since this reduces to
the claim that _x_ ⋅ _y_ ≤ _y_. To confirm that⟦DBA⟧ _A_ ={ 1 }, the only interesting case
is⟦∃ _x_ ∀ _y_ ( _D_ ( _y_ )↔ _x_ ⋅ _y_ = _x_ )⟧, which holds because⟦∀ _y_ ( _D_ ( _y_ )↔ 1 ⋅ _y_ = 1 )⟧=1.
And, as we claimed in §13.5, there is no sense in claiming that _A_ ’s interpretation of
‘ _D_ ’, i.e. the function⟦ _D_ (⋅)⟧ _A_ , is (anything like) a principal ultrafilter on _A_. For
⟦ _D_ (⋅)⟧ _A_ is just the _identity map_ on _A_.

### 13.e Proofs concerning bilateralism

We conclude with the results connected with bilateralism and §13.6.

Theorem(13.11): _T_ ⊢↕ ↕ _φ iff_ ̷♭( _T_ )⊢♭(↕ _φ_ ) _, for any decorated theory T_ ∪{↕ _φ_ }

_Proof.Left-to-right._ We show that each decorated rule corresponds to a (derived)
undecorated rule. For example:

```
↓ φn
⋮
↑ ψ ↓ ψ
↑ φ Raa↕, n
```
```
¬ φn
⋮
ψ ¬ ψ
¬¬ φ ¬I, n
φ DNE
```
(^46) Compare the definition of the ‘canonical name’ for the generic ultrafilter in forcing, e.g. Kunen (1980:
190), Bell (2005: 93), and Jech (2003: 214).


```
13.e. proofs concerning bilateralism 331
```
Using such derived rules, the decorated proof witnessing _T_ ↕⊢↕ _φ_ can be mechani-
cally translated into an undecorated proof witnessing̷♭( _T_ )⊢♭(↕ _φ_ ).
_Right-to-left._ We first define an operation on decorated sentences, by _a_ (↑ _φ_ )=↑ _φ_
and _a_ (↓ _φ_ )=↑¬ _φ_. We then show that if̷♭( _T_ )⊢♭(↕ _φ_ )then _a_ ( _T_ )↕⊢ _a_ (↕ _φ_ ), just by
showing that each undecorated rule corresponds to a derived decorated rule, e.g.:

```
∃ xφ ( x )
```
```
1
φ ( c )
⋮
ψ
ψ ∃E, 1
↑∃ xφ ( x )
```
```
↓ ψ^2
```
```
1
↑ φ ( c )
⋮
↑ ψ
Raa↕, 1
↓ φ ( c )
↓ ∃I↕
∃ xφ ( x )
↑ ψ Raa↕, 2
```
Using such derived rules, the undecorated proof witnessing̷♭( _T_ )⊢♭(↕ _φ_ )can be
mechanically translated into a decorated proof witnessing _a_ ( _T_ )↕⊢ _a_ (↕ _φ_ ).
It now suffices to show that if _a_ ( _T_ )↕⊢ _a_ (↕ _φ_ )then _T_ ⊢↕ ↕ _φ_. To see that this holds,
first note that if↑ _ψ_ ∈ _T_ then _a_ (↑ _ψ_ )=↑ _ψ_ , and if↓ _ψ_ ∈ _T_ then↓ _ψ_ ⊢↕ ↑¬ _ψ_ = _a_ (↓ _ψ_ )
by¬E↕; so if↕ _ψ_ ∈ _T_ then _T_ ↕⊢ _a_ (↕ _ψ_ ). Hence _T_ proves all the decorated sentences
among _a_ ( _T_ ), and hence if _a_ ( _T_ )↕⊢ _a_ (↕ _φ_ )then _T_ ↕⊢ _a_ (↕ _φ_ ). So _T_ ↕⊢↕ _φ_ , invoking¬E↕
again if necessary.

Corollary(13.13): _If B is a complete Boolean algebra and D_ ⊆ _B is a filter on B, then
these are equivalent:_

```
(1)T ⊧
B
D ↕ φ iff T ↕⊢↕ φ, for any decorated theory T ∪{↕ φ }
(2)Not-Designation, And-Designation and Or-Designation hold for any (faithful
Henkin) B-valued structure
```
_Proof._ It is easy to see that And-Designation holds under no special conditions,
and that Not-Designation entails Or-Designation. So it suffices to check Not-
Designation.
_(1)_ ⇒ _(2)._ Left-to-right of Not-Designation holds because _D_ is a filter. For the
right-to-left direction, let _M_ be a _B_ -valued structure such that⟦¬ _φ_ ⟧∉ _D_. So↓¬ _φ_
is _D_ -correct in _M_. Now:

```
↓¬ φ
```
```
↓ φ^1
↑¬ φ ¬I↕
↑ φ Raa↕, 1
```
Since⊢↕ is sound,↑ _φ_ is _D_ -correct in _M_ , i.e.⟦ _φ_ ⟧∈ _D_.
_(2)_ ⇒ _(1)._ Let _M_ be any (faithful Henkin) _B_ -valued structure. By Not-
Designation,↕ _ψ_ is _D_ -correct in _M_ iff⟦♭(↕ _ψ_ )⟧∈ _D_. So _T_ ⊧↕
_B
D_ ↕ _φ_ iff̷♭( _T_ )⊧

_B
D_ ♭(↕ _φ_ ), i.e.
iff̷♭( _T_ )⊢♭(↕ _φ_ )by Theorem 13.6, i.e. iff _T_ ↕⊢↕ _φ_ by Theorem 13.11.



## C Indiscernibility and classification



Introduction to Part C

The main topics of this third part of the book are _indiscernibility_ and _classification_.
The chief aim of Chapter 15 is to explore Leibniz’s principle of the Identity of In-
discernibles. Model theory supplies us with the resources to distinguish between
many _different_ notions of indiscernibility, and Chapter 15 examines how these dis-
tinctions can be used to explicate different versions of Leibniz’s famous principle.
After outlining the technicalities, we pour some cooling water on the topic. Model
theory allows us to make questions about the identity of indiscernibles precise; but
its sheer flexibility also makes it quite hard to get too excited about the identity of
indiscernibles, at least within the philosophy of mathematics.
Chapter 15 approaches indiscernibility using the model-theoretic notion of a
_type_. Briefly, a type is the collection of formulas satisfied by an element of some
elementary extension. The contemporary study of types treats them as the points
of a certain kind of topological space, called a _Stone space_. We explore this in Chap-
ter 14, and hint at the richness of moving back-and-forth between algebraic and
topological perspectives. This is the first intimation that there is a fertile interac-
tion between broadly geometrical notions and model-theoretic ones (a theme of
Chapter 17). Moreover, we can map these two perspectives—and the possibility
of moving between them—over to a more _metaphysical_ setting, using them to illu-
minate the question of whether propositions should be regarded as sets of possible
worlds or vice-versa. We prove that these two rival metaphysical approaches are
biinterpretable (in the sense of §5.4), and discuss the philosophical significance of
this result.
In Chapter 16, we use the notions of indiscernibility which we introduced in
Chapters 14 and 15 to investigate how to _classify quantifiers_ as logical / non-logical.
We start by introducing _generalised_ quantifiers. We then introduce the Tarski–Sher
thesis, which states that quantifiers are logical provided they exhibit a certain kind
of invariance. We argue that intuitions about ‘non-discrimination’ are insufficient
to establish Tarski–Sher. Then, by introducing various infinitary logics, we raise
difficulties for further attempts to establish Tarski–Sher.
In Chapter 17, we consider contemporary model-theoretic programs in classifi-
cation. We begin by proposing a wholly general philosophical framework for un-
derstanding classification programs within mathematics. We then turn to Shelah’s
famous results on the number of non-isomorphic of models of theories, and dis-
cuss how this work can be seen as an instance of classification in our proposed
sense. It is worth noting that every theory which is classifiable in Shelah’s sense
is _stable_ , where stability is a notion which we introduced in Chapter 14 in terms of


336 introduction to part c

a restriction on the size of the type space. We close the chapter by discussing Zil-
ber’s ambitious proposal for the classification of uncountably categorical theories
(i.e. theories which have only one model up to isomorphism in a given uncountable
cardinality). Whereas categoricity was seen as a potential philosophical desidera-
tum in Part B, Zilber’s programme regards uncountable categoricity as a kind of
‘extreme classification’.
Readers who only want to dip into particular topics of Part C can consult the
following Hasse diagram of dependencies between the sections:

```
4.1
13.2
```
```
14.1
14.2
14.3
14.4
14.5
14.6
14.7
```
```
5.4
```
```
15.1
15.2
15.3 15.4 15.5
```
```
2.5
```
```
16.1
16.2
16.3
16.4 16.5
16.6
16.8 16.7
16.9
```
```
8.4
```
```
17.1
17.2
17.3 7.3
```
```
9.1
```
We should note that the mathematical content in Part C is generally much more
advanced than in Parts A and B. In earlier chapters, we could usually afford to place
proofs in the appendices, on the understanding that the reader who understood the
statement of the results could potentially take the proof itself ‘on trust’. However, in
Part C, we will need to comment on several of the proofs themselves.


