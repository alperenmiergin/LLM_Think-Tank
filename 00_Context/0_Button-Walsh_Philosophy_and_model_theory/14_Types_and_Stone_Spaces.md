**Kaynak:** [[00_Context/0_Button-Walsh_Philosophy_and_model_theory/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

## 14 Types and Stone spaces

We first introduced compactness in Chapter 4. The name ‘compactness’ came
out of the blue, but its roots are in topology. In this chapter, we pursue these
topological ideas, invoking Boolean algebras and introducing Stone spaces. We
already introduced the notion of Boolean algebras in Chapter 13, and we outline
the required topological notions in §14.a. We consider several different ways to
think about compactness—topological, algebraic, and model-theoretic—and out-
line their mathematical and philosophical relationships to one another.
Introducing these topological notions allows us to discuss certain philosophical
positions concerning propositions and possible words. On the one hand, Stalnaker
has suggested that we should treat propositions as sets of possible worlds; on the
other, Adams has suggested that we should treat possible worlds as maximally con-
sistent sets of propositions. Stone’s Duality Theorem naturally suggests that these
two approaches are _notational_ variants, in some sense. Developing this, we show
that the apparently rival perspectives are _biinterpretable_ , in the sense of Chapter 5.

### 14.1 Types for theories

To introduce the model-theoretic notion of a _type_ , we begin with types for _theories_.

Definition 14.1: _Let T be an_ L _-theory, let v_ 1 , ..., _vnbe variables, and let p be any set
of_ L _-formulas whose free variables are among v_ 1 , ..., _vn.
We say that p is an n_ -type _over T iff: p_ ∪ _T is satisfiable.
We say that p is a_ complete _n_ -type _over T iff: p is an n-type and either φ_ ∈ _p or_
¬ _φ_ ∈ _p for all_ L _-formulas φ whose free variables are among v_ 1 , ..., _vn.
The set of complete n-types over T is_ Types _n_ ( _T_ )_._

Here, to say that _p_ ∪ _T_ is _satisfiable_ is just to say that we can find a model of _T_ which
interprets _n_ new constant symbols _c_ to make _φ_ ( _c_ )true for all formulas _φ_ ( _v_ )from
_p_.^1 As a limiting case, if _p_ is a complete 0-type over _T_ , then _p_ is just a complete, con-
sistentL-theory extending _T_. So, if we wanted, we could rephrase Lindenbaum’s
Lemma 4.22 as follows: if _T_ is consistent, then Types 0 ( _T_ )≠∅.

(^1) In detail: if _p_ is a set ofL-formulas whose free variables are among _v_ 1 , ..., _vn_ , then to say that _p_ is
satisfiable is to say that, when we expandLtoL∗by adding exactly _n_ new constant symbols _c_ 1 , ..., _cn_ ,
and when we let _p_ ∗be the result of respectively replacing _vi_ with _ci_ , then _p_ ∗is satisfiable in the usual sense.


338 types and stone spaces

The case that gives types their name, though, is when we consider _n_ -types for
_n_ >0. In particular, we can use the notion of a type to characterise elements within
a structure. For example, suppose we started with the theory PA, and considered
the set of formulas:

```
q ={ v 1 > Sn ( 0 ): n ≥ 0 } ( type:nonstandard )
```
By the work done in §4.1, we know that PA∪ _q_ is satisfiable, so that _q_ is a 1-type over
PA. We also know that there is a structure _N_ ⊧PA with an element _a_ ∈ _N_ such that
_N_ ⊧ _φ_ ( _a_ )for all _φ_ ∈ _q_. In such cases, we say that _a realises the type q_ in _N_.

### 14.2 An algebraic view on compactness

We now connect types with Boolean algebras, as introduced in §13.2. The connec-
tion begins with a method for ‘reading off’ Boolean algebras from theories. LetL
be any signature, and let _T_ be a satisfiableL-theory. We quotient theL-formulas
with free variables among _v_ 1 , ..., _vn_ by logical equivalence relative to _T_ , i.e.:

```
[ φ ] l ={ ψ : T ⊧ φ ↔ ψ }
```
We now form _T_ ’s _n_ thLindenbaum algebra, Lind _n_ ( _T_ ).^2 Its domain is the set of these
equivalence classes, i.e.:

```
{[ φ ] l : φ is anL-formula with free variables among v 1 , ..., vn }
```
and it has algebraic functions defined as follows:

```
−[ φ ] l =[¬ φ ] l
[ φ ] l ⋅[ ψ ] l =[ φ ∧ ψ ] l [ φ ] l +[ ψ ] l =[ φ ∨ ψ ] l
0 =[ φ ∧ ¬ φ ] l 1 =[ φ ∨ ¬ φ ] l
```
We leave it to the reader to check this simple fact:

Proposition 14.2: _If T is satisfiable, then_ Lind _n_ ( _T_ ) _is a Boolean algebra._

When we defined Boolean algebras in §13.2, we also defined filters and ultrafilters
(see Definition 13.3). These have familiar realisations in Lindenbaum algebras: in
effect, Lind _n_ ( _T_ )’s filters are the extensions of _T_ that are closed under logical con-
sequence,^3 and its ultrafilters are the complete, satisfiable extensions of _T_. The fol-
lowing result puts this precisely:

(^2) See e.g. Hodges (1993: 280).
(^3) We say _S_ is closed under consequence iff: _φ_ ∈ _S_ iff _S_ ⊧ _φ_.


```
14.3. stone’s duality theorem 339
```
Lemma 14.3: _For any satisfiable_ L _-theory T:_

```
(1)if F is a filter on Lind n ( T ) , then ⋃ F ⊇ T is satisfiable and closed under con-
sequence
(2)if S ⊇ T is satisfiable and closed under consequence, then {[ φ ] l : φ ∈ S } is a
filter on Lind n ( T )
(3) p is a complete n-type on T iff {[ φ ] l : φ ∈ p } is an ultrafilter on Lind n ( T )
```
_Proof._ We leave most of this to the reader, proving only that, if _F_ is a filter, then⋃ _F_
is satisfiable. Consider any finite{ _φ_ 1 , ..., _φn_ }⊆⋃ _F_. Since _F_ is a filter,[ _φ_ 1 ] _l_ ⋅...⋅
[ _φn_ ] _l_ ∈ _F_. Equally, since _F_ is a filter,[ _φ_ 1 ] _l_ ⋅...⋅[ _φn_ ] _l_ ≠0, i.e.[ _φ_ 1 ∧...∧ _φn_ ] _l_ ≠
[ _φ_ ∧¬ _φ_ ] _l_ , i.e. _T_ ⊭( _φ_ 1 ∧...∧ _φn_ )↔( _φ_ ∧¬ _φ_ ). Hence _T_ ∪{ _φ_ 1 , ..., _φn_ }is consistent.
By the Compactness Theorem 4.1, _T_ ∪⋃ _F_ is satisfiable.

We should pause. To guarantee that⋃ _F_ is satisfiable, we appealed to the fact that,
since _F_ is a filter, it is closed under finite meet without containing 0. Squinting
slightly, this property looks like (logical) compactness. And these two ideas are
very closely connected, for Boolean algebras obey this analogue of the Compact-
ness Theorem:

Theorem 14.4(Ultrafilter Theorem): _Let B be a Boolean algebra. Say that E_ ⊆ _B is
finitely-meetable iff b_ 1 ⋅...⋅ _bn_ ≠ 0 _, for all b_ 1 , ..., _bn_ ∈ _E. If E is finitely-meetable, then
there is an ultrafilter F on B with E_ ⊆ _F._

_Proof sketch._ Use exactly the same strategy as for the proof of Lindenbaum’s Lemma
4.22, replacing _consistency_ with _finitely-meetability_.

Recall that Lindenbaum’s Lemma can be used as a key step in proving the Compact-
ness Theorem. And it is no accident that there is a common core to these results:
the Ultrafilter Theorem is _equivalent_ to the Compactness Theorem.^4 So we have
an algebraic viewpoint on compactness, to compare with our logical viewpoint.

### 14.3 Stone’s Duality Theorem

We now aim for a _topological_ viewpoint on compactness. We start by recalling some
basic topological notions (for more background, see §14.a):

Definition 14.5: _Let X_ =( _X_ , _τ_ ) _be any topological space.
We say that U_ ⊆ _X is open iff U_ ∈ _τ, that U is closed iff_ ( _X_ ∖ _U_ )∈ _τ; that U is_ clopen
_iff U is both closed and open._

(^4) Jech (1973: Theorem 2.2). They are _theorems_ in that both are provable in (e.g.) ZFC. They are
_equivalent_ in that both are independent from ZF, but adding either as a new axiom entails the other.


340 types and stone spaces

_We say that γ_ ⊆ _τ is an_ open cover _of X iff_ ⋃ _γ_ = _X.
We say that X is_ compact _iff every open cover of X has a finite subcover, i.e. for any
open cover γ, there is some finite cover γ_ 0 ⊆ _γ.
We say that X is_ totally separated _iff for any x_ ≠ _y_ ∈ _X there is some clopen U_ ∈ _τ
such that x_ ∈ _U but y_ ∉ _U.
We say that X is a_ Stone space _iff X is totally separated and compact._^5

The name here is in honour of Stone, who proved that Boolean algebras are _dual_ to
Stone spaces. His duality result amounts, roughly, to the following. Each Boolean
algebra can naturally be transformed into a Stone space. Similarly, each Stone space
can naturally be transformed into a Boolean algebra. Moreover, if we perform two
of these transformations consecutively, then we end up back where we started (up
to isomorphism). And finally: these transformations preserve various interesting
maps between Boolean algebras and between Stone spaces.
The purpose of this section is to outline this duality in more detail. To begin, we
must explain what the ‘transformations’ are. One of them is simple.

Definition 14.6: _Let X be a topological space with domain X. Let_ Clopen( _X_ ) _be an
algebra whose domain is the set of X’s clopen sets, with algebraic operations on these
clopen sets defined as follows:_

#### − U = X ∖ U

#### U ⋅ V = U ∩ V U + V = U ∪ V

#### 0 =∅ 1 = X

It is straightforward to show that, if _S_ is a topological space, then Clopen( _S_ )is a
Boolean algebra.
It takes more skill to move in the opposite direction, from algebras to topologies.
The general idea is to construct a space whose points are the _ultrafilters_ on the alge-
bra. The topology is then built from basic open sets, which are determined simply
by the points of the Boolean algebra. Here is the idea more formally:

Definition 14.7: _Let B be a Boolean algebra. Let_ Ultra( _B_ ) _be the set of ultrafilters
on B. For each b_ ∈ _B, let_ u( _b_ )={ _F_ ∈Ultra( _B_ ): _b_ ∈ _F_ }_. Call these the basic sets.
We form a topological space whose underlying domain is the set of ultrafilters,_ Ultra( _B_ ) _,
and whose open sets are exactly the arbitrary unions of sets of basic sets, i.e. U is open in
the space iff U_ =⋃ _i_ ∈ _I_ u( _bi_ ) _for some index set I. By standard abuse of notation, we call
this topology simply_ Ultra( _B_ )_._

(^5) Johnstone (1982: 69–70) offers various alternative, equivalent definitions.


```
14.3. stone’s duality theorem 341
```
Note that, for each ultrafilter _F_ ∈Ultra( _B_ )and each _b_ ∈ _B_ , we always have

```
b ∈ F iff F ∈u( b ) ( ultra:flip )
```
Moreover, since each _F_ ∈Ultra( _B_ )is ‘complete’, in the sense that either _b_ ∈ _F_ or
− _b_ ∈ _F_ for each _b_ ∈ _B_ , we always have

```
F ∉u( b )iff b ∉ F iff− b ∈ F iff F ∈u(− b ) ( ultra:clopen )
```
so that u( _b_ )is always clopen. The force of this comes out in the following result:

Lemma 14.8:Ultra( _B_ ) _is a Stone space._

_Proof._ We must first check that Ultra( _B_ )is a topology. It suffices to check that
{u( _b_ ): _b_ ∈ _B_ }is a basis (see Proposition 14.22). Clearly every ultrafilter is in
⋃{u( _b_ ): _b_ ∈ _B_ }. Now if u( _a_ )and u( _b_ )are basic open sets with _F_ ∈u( _a_ )∩u( _b_ ),
then _a_ ∈ _F_ and _b_ ∈ _F_ by ( _ultra:flip_ ). Since _F_ is an ultrafilter, _a_ ⋅ _b_ ∈ _F_ , i.e. _F_ ∈u( _a_ ⋅ _b_ )
by ( _ultra:flip_ ) as required.
_Totally separated._ Let _F_ ≠ _G_ be ultrafilters on _B_. Since they are distinct, we have
some _b_ ∈ _B_ such that _b_ ∈ _F_ and _b_ ∉ _G_ , i.e. _F_ ∈u( _b_ )and _G_ ∉u( _b_ )by ( _ultra:flip_ ).
Since u( _b_ )is always clopen as in ( _ultra:clopen_ ), Ultra( _B_ )is totally separated.
_Compact._ It suffices to consider covers from the basis (see Lemma 14.25). Let _γ_
be a cover, i.e.⋃ _γ_ =Ultra( _B_ ). For reductio, suppose the following set is finitely-
meetable:
_G_ ={− _b_ : u( _b_ )∈ _γ_ }

By the Ultrafilter Theorem 14.4, there is an ultrafilter _F_ ⊇ _G_. But then _F_ ∉⋃ _γ_ ,
contradicting the fact that _γ_ is a cover. So _G_ is not finitely-meetable, i.e. there are
− _b_ 1 , ...,− _bn_ ∈ _G_ such that− _b_ 1 ⋅...⋅ − _bn_ =0. So for any _F_ ∈Ultra( _B_ ), there is
some _i_ ≤ _n_ such that− _bi_ ∉ _F_ , i.e. such that _bi_ ∈ _F_ by ( _ultra:clopen_ ). Now

```
γ 0 ={u( b 1 ), ..., u( bn )}
```
is a finite cover, and _γ_ 0 ⊆ _γ_.

Note that the _algebraic_ analogue of compactness, namely the Ultrafilter Theorem
14.4, here yields the topological compactness of Ultra( _B_ ).
Combining the preceding results—and adding in a few more observations which
we will _not_ prove—we obtain Stone’s full-fledged duality result (we define continu-
ity and homeomorphism in §14.a):^6

Theorem 14.9(Stone Duality): _The categories of Boolean algebras and Stone spaces
are dual. In particular:_

(^6) Stone (1936); for a contemporary proof, see Coppelberg (1989: ch.3).


342 types and stone spaces

```
(1)If B is a Boolean algebra, then Ultra( B ) is a Stone space, and B ≅
Clopen(Ultra( B )) , with b ↦u( b ) an isomorphism.
(2)If S is a Stone space, then Clopen( S ) is a Boolean algebra and S ≅
Ultra(Clopen( S )) , with x ↦{ p is clopen : x ∈ p } a homeomorphism.
(3) If B , C are Boolean algebras and f : B Ð→ C is a homomorphism, then f −^1
is a continuous map Ultra( C )Ð→Ultra( B ).
(4)If X , Y are Stone spaces and g : X Ð→ Y is continuous, then g −^1 is a homo-
morphism Clopen( Y )Ð→Clopen( X ).
```
Stone’s Duality Theorem 14.9 is a beautiful result. It is one of the earliest results of
category theory, and highlights deep connections between different areas of math-
ematics. Johnstone takes Stone’s work to suggest that:

[...] abstract algebra cannot develop to its fullest extent without the infusion of topolog-
ical ideas, and conversely if we do not recognize the algebraic aspects of the fundamental
structures of analysis our view of them will be one-sided.^7

But to plumb those depths would remove us even further from the core questions
of this book, concerning model theory; so we return to them.

### 14.4 Types, compactness, and stability

Stone’s Duality Theorem 14.9 allows us to take the ultrafilters on any Boolean al-
gebra and form a Stone space whose points are those ultrafilters. In §14.1, though,
we saw that the ultrafilters on a theory’s Lindenbaum algebra are, in effect, that the-
ory’s complete types. Composing these thoughts, we can form a Stone space whose
points are a theory’s complete types.
Here is the idea in detail. If _T_ is any theory, then Lind _n_ ( _T_ )is a Boolean alge-
bra, and Ultra(Lind _n_ ( _T_ ))is a Stone space. By Lemma 14.3(3), the ultrafilters on
Lind _n_ ( _T_ )are, in effect, _T_ ’s complete _n_ -types. So we can generate a Stone space
which is homeomorphic to Ultra(Lind _n_ ( _T_ )), just by replacing each ultrafilter _F_
with the complete type⋃ _F_. Otherwise put: there is a very natural topology on
Types _n_ ( _T_ ), called the _Stone topology_. Abusing notation again, we refer to this topol-
ogy by its carrier set, so we simply call it Types _n_ ( _T_ ), where its open sets are pro-
vided by taking every set u( _φ_ )={ _p_ ∈Types _n_ ( _T_ ): _φ_ ∈ _p_ }as basic.^8 It follows
immediately from Lemma 14.8 that Types _n_ ( _T_ )is totally separated and compact.
But, given our particular interest in compactness, we will also prove the compact-
ness of Types _n_ ( _T_ )directly:

(^7) Johnstone (1982: xxi).
(^8) Marker (2002: 119) denotes u( _φ_ )by[ _φ_ ]; Hodges (1993: 280) denotes u( _φ_ )by∥ _φ_ ∥.


```
14.4. types, compactness, and stability 343
```
_Direct proof of compactness of_ Types _n_ ( _T_ )_._ It suffices to consider covers from the ba-
sis (see Lemma 14.25). Let _γ_ be a cover such that every member of _γ_ is some u( _φ_ ).
Suppose, for reductio, that the following is a type:

```
d ={¬ φ : u( φ )∈ γ }
```
By Lindenbaum’s Lemma 4.22, there is a complete type _p_ ⊇ _d_. But then _p_ ∉⋃ _γ_ ,
contradicting the fact that _γ_ is a cover. So _d_ is not a type, i.e. _T_ ∪ _d_ is inconsistent.
By the Compactness Theorem 4.1, there is some finite _d_ 0 ⊆ _d_ such that _T_ ∪ _d_ 0 is
inconsistent. So for any _p_ ∈Types _n_ ( _T_ ), there is some¬ _φ_ ∈ _d_ 0 such that¬ _φ_ ∉ _p_ , i.e.
such that _φ_ ∈ _p_ (since _p_ is complete). Now

```
γ 0 ={u( φ ):¬ φ ∈ d 0 }
```
is a finite cover, and _γ_ 0 ⊆ _γ_.

In the general case, we used the Ultrafilter Theorem 14.4 to prove the compact-
ness of the associated space. In this specific case we rely upon its logical analogue,
the Compactness Theorem 4.1. This is no surprise, and it highlights that the Stone
topology on the space of types _inherits_ its topological compactness directly from the
compactness of first-order logic. Schematically, the point is that ‘every inconsistent
theory has a finite inconsistent subtheory’ entails ‘every open cover has a finite sub-
cover’. In §14.5, we obtain a converse to this result, showing that the compactness
of the topology entails the compactness of the underlying logic.
In practice, the types that are most interesting are those associated with the com-
plete theory of a model _M_ , which we define as follows:

```
Th( M )={ φ is a sentence in M ’s signature : M ⊧ φ }
```
This naturally generalises, to admit parameters. Much as in Definition 1.5 from §1.5,
where _M_ is anL-structure and _A_ ⊆ _M_ , letL( _A_ )be the language obtained by
augmentingLwith a new constant symbols _ca_ for each _a_ ∈ _A_ , and let _MA_ be an
L( _A_ )-expansion of _M_ obtained just by setting _cMaA_ = _a_. Then we define:

```
Th( MA )={ φ is anL( A )-sentence : MA ⊧ φ }
```
and we can consider the types over Th( _MA_ ). So an _n_ -type over Th( _MA_ )is a set
_p_ ofL( _A_ )-formulas with free variables among _v_ 1 , ..., _vn_ such that Th( _MA_ )∪ _p_ is
satisfiable. For readability, we denote the set of complete _n_ -types over Th( _MA_ )by
Types _n_ ( _MA_ )=Types _n_ (Th( _MA_ )).^9

(^9) Many authors use variants of the less-descriptive but easier-to-write notation _SMn_ ( _A_ )for the type-
space. See Marker (2002: 115), Hodges (1993: 280), and Pillay (1983: 2).


344 types and stone spaces

The simplest elements of the type space are those given by elements from the
underlying model. More specifically, given a sequence of elements _b_ from _M_ , we
say that tp _M_ ( _b_ / _A_ )is the set ofL( _A_ )-formulas with free variables among _v_ 1 , ..., _vn_
which are satisfied by _b_ in _MA_. (In the case where _A_ =∅, we just write tp _M_ ( _b_ )for
tp _M_ ( _b_ / _A_ ).) Another way to put this is to say that tp _M_ ( _b_ / _A_ )is the complete _n_ -type
of Types _n_ ( _MA_ )that is _realised_ by _b_.
A model need not realise all of its types. For instance, recall the type of a non-
standard natural number, ( _type:nonstandard_ ): there are many completions of this
type, but clearly none of them are realised in the standard model of the natural num-
bers. However, for every type, there is an elementary extension of the given model
realising that type. (This is proved by a simple argument from Compactness, which
is very similar to the proof of Proposition 4.18.)^10
As we saw earlier, Types _n_ ( _MA_ )naturally yields a Stone topology. That topol-
ogy has the following basic open sets, as _φ_ ranges overL( _A_ )-formulas whose free
variables are among _v_ 1 , ..., _vn_ :

```
u( φ ( v ))={ p ∈Types n ( MA ): φ ∈ p }
```
WhenL( _A_ )is countable, this space has an extremely familiar topological struc-
ture. In this case, there is an enumeration _φ_ 1 , ..., _φm_ , ... of theL( _A_ )-formulas
whose free variables are among _v_ 1 , ..., _vn_. Then, since each complete _n_ -type either
contains _φm_ or¬ _φm_ , we can visualise the complete _n_ -types as paths through an in-
finite binary tree, the first three levels of which are displayed below:

```
¬ φ 1
```
```
¬ φ 2
```
```
φ 3 ¬ φ 3
```
```
φ 2
```
```
φ 3 ¬ φ 3
```
```
φ 1
```
```
¬ φ 2
```
```
φ 3 ¬ φ 3
```
```
φ 2
```
```
φ 3 ¬ φ 3
```
Every complete _n_ -type corresponds to a path through the tree. (However, some
paths do not correspond to _n_ -types: for example, if _φ_ 2 is¬ _φ_ 1 , then no infinite path
through which goes through _φ_ 1 and _φ_ 2 is a type, since it would be unsatisfiable.) On
this way of visualising the complete _n_ -types, the basis for the topology can be given
by taking finite unions of the ‘cones’ above each consistent node on the tree (i.e.,
all the complete _n_ -types that contain the formula on the node). We can then give
this topology a _metric_ which, intuitively, says that the higher in the tree two types
part ways, the closer together they are (metrics are defined in Definition 14.23).

(^10) For details, see Marker (2002: Proposition 4.1.3).


```
14.4. types, compactness, and stability 345
```
Specifically, we define the distance between two types to be 2− _m_ , where _m_ is the
least number such that one type goes through a node containing _φm_ while the other
goes through a node containing¬ _φm_.^11
To illustrate the usefulness of this topological perspective, note that it lets us
gauge the size of Types _n_ ( _MA_ )whenL( _A_ )is countable. Cantor proved that every
closed subset of the real line is either countable or has the cardinality of the con-
tinuum, and it was later observed that this result holds for a large class of metric
spaces, including the infinite binary tree.^12 Now, Types _n_ ( _MA_ )is a closed subset of
this tree, since closed subsets of the infinite binary tree correspond to subtrees of
the infinite binary tree.^13 So:

Theorem 14.10: _If_ L( _A_ ) _is countable, then_ Types _n_ ( _MA_ ) _is either countable or has
cardinality continuum._

This depends crucially on the assumption thatL( _A_ )is countable, since we de-
fined a metric on Types _n_ ( _MA_ )via an enumeration of theL( _A_ )-formulas. Now,
we have already seen one example where Types _n_ ( _MA_ )has cardinality continuum.
Let _M_ be the natural numbers in the signature{0, 1,+,×,<}, let _A_ =∅, let _πn_ be
the _n_ thprime number, and let ‘ _a_ ∣ _b_ ’ mean that _a_ divides _b_. Then we can consider
the following generalisation of ( _type:nonstandard_ ), for any _X_ ⊆N:

```
qX ={ v 1 > Sn ( 0 ): n ≥ 0 }∪{ Sπn ( 0 ) ∣ v 1 : n ∈ X }∪{ Sπn ( 0 )∤ v 1 : n ∉ X }
```
By Compactness, _qX_ is a type for any _X_ ⊆N; but _qX_ = _qY_ iff _X_ = _Y_. Hence, since
each subset of the natural numbers may be uniquely associated to a complete type,
the number of complete types has cardinality continuum.
Before describing a situation where Types _n_ ( _MA_ )is countable, we will define a
more general notion which intuitively says that a theory has as few types as possible:

Definition 14.11: _Let T be a complete theory with an infinite model and let λ be an
infinite cardinal. We say that T is λ_ -stable _iff for every model M of T and every set
A_ ⊆ _M of cardinality_ ≤ _λ, the set_ Types 1 ( _MA_ ) _has cardinality_ ≤ _λ._^14 _We say that T is_
stable _iff T is λ-stable for some infinite cardinal λ._

(^11) For more on this topological perspective on the type space, see Laskowski (2006: §1).
(^12) More specifically, it holds for all Polish spaces, which are topological spaces whose topology can be
given by a complete metric and which contain a countable dense set. This special case of the continuum
hypothesis is provable in ZFC; see Kechris (1995: 32).
(^13) See Kechris (1995: §2b).
(^14) Note that _λ_ -stability is equivalent to the condition that Types _n_ ( _MA_ )has cardinality≤ _λ_ for _all n_ ≥1.
So it is simply for convenience that the ‘official’ definition of stability only concerns1-types rather than
_n_ -types in general. See Pillay (1983: 5).


346 types and stone spaces

That is, a theory is stable if it has comparatively few types, even as one allows the
parameters to grow. Hence, an _ω_ -stable theory in a countable signature will be one
for which Types _n_ ( _MA_ )is countable whenever _A_ is countable. For instance, the
complex numbers in the signature{0, 1,+,×}yield an interesting example of an
_ω_ -stable theory, but we postpone discussion of this until §15.5.

### 14.5 Bivalence and compactness

We began §14.4 by showing that the compactness of first-order logic entails the
compactness of the Stone space generated from a first-order theory. We will now
present a ‘converse’ of this result. To do this, we must develop a framework which
does not ‘build in’ compactness. Our suggested framework is abstract, but _biva-
lent_. Having developed the framework, we then define something _like_ a Stone space
(though again, not wanting to assume that it is compact). Finally, we show that the
Stone-like space is compact iff the logic is.
We start by defining our abstract, bivalent framework:

Definition 14.12: _A_ bivalent-calculus _, C, is a domain of objects, C, together with a
privileged object_  _, a one-place total function_ ∼ _, and a two-place relation_ ⊩ _which is a
subset of_ ℘( _C_ )× _C. Every bivalent-calculus obeys:_

```
{ a }⊩ a ( reflexivity )
if T ⊩ a, then T ∪ U ⊩ a ( weakening )
if { a }⊩ b and { b }⊩ a, then a = b ( decluttering )
T ∪{∼ a }⊩ iff T ⊩ a ( reductio )
if T ⊮ , then there is some story S ⊇ T ( lindenbaum )
```
_where a_ story _on a bivalent-calculus, C, is a set S_ ⊆ _C which obeys:_

```
S ⊮ ( consistency )
for all a ∈ C : either a ∈ S or ∼ a ∈ S ( maximality )
```
We should think ofas contradiction,⊩as entailment, and∼as negation. A
bivalent-calculus could be augmented with functions behaving like conjunction,
disjunction, and anything else you like; but this is the core. These operations are
governed by very simple rules: ( _reflexivity_ ), ( _weakening_ ), and ( _reductio_ ) are famil-
iar from classical propositional logic, and need no further comment.^15 The rule

(^15) We encountered ( _reflexivity_ ) and ( _weakening_ ) in the context of tarskian relations; see definition 13.17.
Indeed,⊩is also idempotent, and hence tarskian. _Proof._ Suppose{ _b_ ∈ _C_ : _T_ ⊩ _b_ }⊩ _a_ and let _S_ ⊇ _T_ be
a story. If _T_ ⊩ _b_ then _S_ ⊩ _b_ by ( _weakening_ ); so _S_ ⊇{ _b_ ∈ _C_ : _T_ ⊩ _b_ }. Hence _S_ ⊩ _a_ by ( _weakening_ ), and
now _T_ ⊩ _a_ by Lemma 14.13(3).


```
14.5. bivalence and compactness 347
```
( _decluttering_ ) states that propositions are individuated by their structure within a
network of entailments. For present purposes, this merely saves us the bother of
forming equivalence classes of elements (as when we construct a theory’s Linden-
baum algebra). The only rule meritting real comment is ( _lindenbaum_ ), together
with the notion of a _story_. Stories are our analogues of ultrafilters. This is why we
have given suggestive names to the conditions on being a story. In these terms,
( _lindenbaum_ ) effectively states that any consistent set is a subset of some story, i.e.
some maximally consistent set.^16
To make bivalent-calculi more familiar, here are some simple observations:

Lemma 14.13: _For any bivalent-calculus C and any a_ ∈ _C_

```
(1) { a ,∼ a }⊩
(2)If S is a story on C then { a ,∼ a }⊈ S
(3) If a ∈ S for every story S ⊇ T, then T ⊩ a
```
_Proof.(1)._ By ( _reflexivity_ ) and ( _reductio_ ).
_(2)._ By (1), ( _weakening_ ) and ( _consistency_ ).
_(3)._ Suppose _T_ ⊮ _a_. So _T_ ∪{∼ _a_ }⊮by ( _reductio_ ) and hence there is some
story _S_ ⊇ _T_ ∪{∼ _a_ }by ( _lindenbaum_ ). So _a_ ∉ _S_ by (2).

All of this should be comforting. But to make the ideas _really_ familiar, here is a
simple way to obtain bivalent-calculi. Given a fixed language for first-order logic,
form its 0thLindenbaum algebra from the empty theory; so the elements are just
[ _φ_ ] _l_ ={ _ψ_ :⊧ _φ_ ↔ _ψ_ }. Now just interpret:

```
= 0
∼[ φ ] l =−[ φ ] l =[¬ φ ] l
[ T ] l ⊩[ φ ] l iff T ⊧ φ
```
It is easy to see that this yields a bivalent-calculus. Crucially, though, the rules for
bivalent-calculi take no stance on _compactness_. In more detail,

Definition14.14: _We say that a bivalent-calculus C is_ compact _iff, for all T_ ∪{ _φ_ }⊆ _C,
we have: T_ ⊩ _a iff T_ 0 ⊩ _a for some finite T_ 0 ⊆ _T._

(^16) The inspiration behind Definition 14.12 is a relaxation of a framework used by Stalnaker, in the philo-
sophical setting we discuss in §14.7. ( _decluttering_ ) is effectively endorsed by Stalnaker (1976: (I) pp.72–3,
2012: (P6) ch.2 §1). ( _lindenbaum_ ) should be compared with Stalnaker’s principle (P5): ‘Every consistent
set of propositions is a subset of a maximal consistent set’ (2012: ch.2 §1). Stalnaker has (minor) reser-
vations about (P5), since ‘one might think that for every proposition _x_ , no matter how specific, there are
always further propositions that are incompatible with each other, but each is compatible with _x_ .’ But this
threatens (P5) only if we follow Stalnaker in accepting this further principle: for any set of propositions _S_ ,
there is a single proposition equivalent to _S_. The notion of a bivalent-calculus takes no particular stance
on that further principle (see footnote 21).


348 types and stone spaces

The bivalent-calculus obtained from first-order logic will be compact, just because
first-order logic is. But suppose we instead obtain a bivalent-calculus, in similar
fashion, from some (fixed language for) _full_ second-order logic. Since that logic is
not compact (see §7.5), the associated bivalent-calculus will not be either. In short:
there are compact and non-compact bivalent-calculi.
It is easy to generate a ‘space’ from a bivalent-calculus. We essentially follow the
steps which took us from a Boolean algebra _B_ to the Stone space Ultra( _B_ ):

Definition 14.15: _For any bivalent-calculus, C, let_ Stories( _C_ ) _be the set of all stories on
C, and let_ w( _a_ )={ _S_ ∈Stories( _C_ ): _a_ ∈ _S_ } _for each a_ ∈ _C. We say that the universe_
Uni( _C_ ) _of C is a structure whose domain is_ Stories( _C_ ) _, and that each_ w( _a_ ) _is a_ prop
_on_ Uni( _C_ )_._

There are only two real differences between this and the definition of a Stone space:
first, we considered stories, rather than ultrafilters; second, we did _not_ close the
props under arbitrary unions.^17 So Stories( _C_ )need not _quite_ be a topology. Still,
we can easily provide the usual definition of _compactness_ for a topological space, as
in Definition 14.5, and obtain what we desired:

Theorem 14.16: _If C is bivalent-calculus: C is compact iff_ Uni( _C_ ) _is compact._

_Proof.Left-to-right._ Suppose _C_ is compact. Let _γ_ be a cover and define

```
T ={∼ a ∈ C : w( a )∈ γ }
```
Suppose, for reductio, that _T_ ⊮; by ( _lindenbaum_ ), there is some story _S_ ⊇ _T_ ; and
evidently _S_ ∉⋃ _γ_ , contradicting our assumption that _γ_ is a covering. So _T_ ⊩.
By the compactness of _C_ , there is some finite _T_ 0 ⊆ _T_ with _T_ 0 ⊩. So for any
story _S_ there is some∼ _a_ ∈ _T_ 0 such that∼ _a_ ∉ _S_ i.e. _a_ ∈ _S_ by ( _maximality_ ). Now
_γ_ 0 ={w( _a_ ):∼ _a_ ∈ _T_ 0 }is a finite subcover of _γ_.
_Right-to-left._ Suppose Uni( _C_ )is compact and that _T_ ⊩ _a_ , i.e. _T_ ∪{∼ _a_ }⊩by
( _reductio_ ). So, by ( _consistency_ ) and ( _weakening_ ), there is no story _S_ ⊇ _T_ ∪{∼ _a_ }. So
_γ_ ={w(∼ _b_ ): _b_ ∈ _T_ }∪{w( _a_ )}is a cover, and hence there is a finite cover _γ_ 0 ⊆ _γ_.
So there is a finite _T_ 0 ={ _b_ 1 , ..., _bn_ }⊆ _T_ such that every story has at least one of
∼ _b_ 1 , ...,∼ _bn_ , _a_ as a member. So by Lemma 14.13(2), every story _S_ ⊇ _T_ 0 has _a_ ∈ _S_.
Hence _T_ 0 ⊩ _a_ by Lemma 14.13(3).

Hence the ‘topological’ compactness of the associated space entails its logical com-
pactness, and vice versa. We thus have what we wanted. Given an assumption of

(^17) This is because the props on Uni( _C_ )may not form a (topological) basis; in effect, because we did
not include a ‘conjunction’ operator in our definition of a bivalent-calculus.


```
14.6. a biinterpretation 349
```
bivalence,^18 there is a clear _equivalence_ between logical and topological viewpoints
on compactness.
By the by, Theorem 14.16 can easily be extended to handle a generalisation of
compactness. Say that a (topological) space is _κ-compact_ iff every open cover has a
subcover of cardinality< _κ_. Say that a calculus is _κ_ -compact iff for any _T_ and _a_ we
have: _T_ ⊩ _a_ iff _T_ 0 ⊩ _a_ for some _T_ 0 of cardinality< _κ_. Then we can easily prove: _C_
is _κ_ -compact iff Uni( _C_ )is _κ_ -compact.

### 14.6 A biinterpretation

The notion of a bivalent-calculus formalises a generally bivalent approach to logic,
which deliberately takes no particular stance on compactness. Now, just as Stone
spaces are the dual of Boolean algebras, we might look for the dual of bivalent-
calculi. That dual is easy to define:

Definition 14.17: _A_ bivalent-universe _, X, is a domain of objects, X, together with a
privileged subset of_ ℘( _X_ ) _, called the_ props _on X, such that:_

```
∅ is a prop ( lnc )
if x and y are members of exactly the same props, then x = y ( kolmogorov )
p is a prop iff ( X ∖ p ) is a prop ( bisecting )
```
In these terms, Definition 14.15 states how to move from a bivalent-calculus _C_ to a
bivalent-universe Uni( _C_ ). Inspired by Stone, we can move in the opposite direction
(cf. Definition 14.6):

Definition 14.18: _For any bivalent-universe, X, let_ Calc( _X_ ) _be a structure whose do-
main is X’s props, such that, where Q_ ∪{ _p_ } _is any set of props on X:_

```
=∅
∼ p = X ∖ p
Q ⊩ p iff ⋂ Q ⊆ p
```
Define t( _x_ )={ _p_ is a prop on _X_ : _x_ ∈ _p_ }for each _x_ ∈ _X_. Now, Stone-like, we can
obtain the following (we relegate the proof to §14.b):

Theorem 14.19: _(1)If C is a bivalent-calculus, then_ Uni( _C_ ) _is a bivalent-
universe, and the function_ w : _C_ Ð→Calc(Uni( _C_ )) _is an isomorphism._

(^18) There are, of course, compact but non-bivalent logics (e.g. intuitionistic logic) and there are associ-
ated duality theorems; but we will not explore them in this book.


350 types and stone spaces

```
(2)If X is a bivalent-universe, then Calc( X ) is a bivalent-calculus, and the func-
tion t : X Ð→Uni(Calc( X )) is an isomorphism.
```
This result enables us to move back and forth between bivalent-calculi and bivalent-
universes. In fact, we can go further, and regard Theorem 14.19 as stating that _the
theory of bivalent-calculi and the theory of bivalent-universes are biinterpretable_ , in the
sense of Chapter 5. But of course, to read Theorem 14.19 this way, we must first
present some suitable _theories_.
So: _bivalent-universe-theory_ is formally defined by incorporating Definition 14.17
into a set theory with urelements. We discussed set theory with urelements in
Chapter 11. Its signature is{ _Set_ ,∈}where, intuitively, _Set_ applies only to sets, and
hence not to urelements. To define bivalent-universe-theory, we augment the set
theory with new one-place predicates, _W_ and _P_ , and supplement the usual set-
theoretic axioms with five new axioms:

```
worlds = urelements, i.e.:(∀ x )( W ( x )↔¬ Set ( x ))
props are sets of worlds, i.e.:(∀ x : P )( Set ( x )∧(∀ y ∈ x ) W ( x ))
( lnc ), i.e.:(∀ x : Set )(¬∃ y y ∈ x → P ( x ))
( kolmogorov ), i.e.:(∀ x , y : W )((∀ z : P )( x ∈ z ↔ y ∈ z )→ x = y )
( bisecting ), i.e.:(∀ x : P )(∃ y : P )(∀ z : W )( z ∈ x ↔ z ∉ y )
```
Similarly, _bivalent-calculus-theory_ is formally defined by presenting Definition 14.12
within a set theory with urelements. Again, the idea is to augment the set the-
ory with axioms stating: propositions are the only urelements; there is a privileged
proposition 0 and an operation∼on propositions; and entailment is a specific re-
lation between sets of propositions and individual propositions.
The set theory used in the proof of Theorem 14.19 can now be carried out
within the object-language of either of these two theories. Consequently, the
proof of Theorem 14.19 provides a biinterpretation between the two theories, in
the sense of Definition 5.4. For instance, starting in bivalent-calculus-theory, which
we view as axiomatising a bivalent calculus _C_ , we can sequentially define Uni( _C_ ),
and Calc(Uni( _C_ )), and the map w : _C_ Ð→Calc(Uni( _C_ )), and then transcribe
the proof of Theorem 14.19 within this theory. The same holds, in reverse, for the
second part of the theorem, where we start in bivalent-universe-theory.

### 14.7 Propositions and possible worlds

In Chapter 5, we considered the general question of when two theories, or two
structures, should count as ‘the same’. One possible answer is that biinterpretable
theories are ‘the same’. And, certainly, biinterpretation preserves plenty of logical


```
14.7. propositions and possible worlds 351
```
properties. So it might be right to ‘identify’ bivalent-calculus-theory with bivalent-
universe-theory in some settings. However, to close this chapter, we will consider a
use to which both theories might be put, which sits at the intersection of logic and
metaphysics, and where there might be interesting reasons to _resist_ the ‘identifica-
tion’ of bivalent-calculus-theory with bivalent-universe-theory.

```
Explicating two approaches
```
Philosophers frequently talk of _propositions_ , in a sense belonging more to philo-
sophical than to mathematical logic. These propositions are something like (rei-
fied) _meanings_ of sentences. Equally often, philosophers talk of _possible worlds_.
These are something like (reified) _ways things might be_. In the literature, there are
two canonical approaches to the relationship between propositions and possible
worlds. The first is the _Worlds-First Approach_ : propositions are sets of possible
worlds. The second is the _Propositions-First Approach_ : possible worlds are maxi-
mally consistent sets of propositions.^19
On the face of it, these are rival metaphysical approaches. Our aim is to use
the biinterpretation of §14.6 to shed light on this apparent disagreement. But we
must start by explaining why bivalent-universe-theory and bivalent-calculus-theory
might even be relevant to the disagreement.
Fans of the Propositions-First Approach should embrace bivalent-calculus-
theory as a theory of their propositions. After all, if they are asked to spell out their
claim that possible worlds are sets of propositions, they are likely to say (for exam-
ple): a set of propositions is _consistent_ so long as it does not entail a contradiction;
a set of propositions is _maximal_ so long as, given any proposition, it contains either
that proposition or its negation; and possible worlds are maximally consistent sets
of propositions. This informal explication involves three ideas: there is a way to ex-
press contradiction; there is a suitable notion of entailment; and every proposition
has a negation.^20 That is precisely what bivalent-calculus-theory formalises.
To be sure, bivalent-calculus-theory is not wholly uncontroversial. First, it builds
bivalence into the very idea of a proposition, and not everyone subscribes to biva-
lence. Second, it involves ( _decluttering_ ): this amounts to identifying propositions

(^19) The Propositions-First Approach is most famously associated with Stalnaker (1976). The World-
First Approach is most famously associated with Adams (1974). Note that _both_ approaches effectively
assume that propositions are _necessary_ existents. For suppose that propositions _could_ have existed, which
in fact _do not_ exist. Then ( _a_ ) a possible world which would intuitively satisfy a ‘merely possible but actually
non-existent proposition’ might not be characterisable by reference only to propositions which _do_ exist,
so that the Propositions-First Approach fails. And ( _b_ ) if (as seems plausible) possible worlds are neces-
sary existents, and sets whose members are necessary existents are also necessary existents, then every set
of possible worlds is a necessary existent, so that the Worlds-First Approach fails. Indeed, Stalnaker has
recently distanced himself from his earlier (1976) Worlds-First Approach, precisely because he now holds
‘that propositions themselves may exist only contingently’ (2012: ch.2 §1).
(^20) See Stalnaker (1976: 71–2, 2012: ch.2 §1).


352 types and stone spaces

which entail each other, which is likely to lead to thinking of propositions in a very
coarse-grained way. Nonetheless, if we are happy think of propositions in a coarse-
grained, bivalent way, then bivalent-calculus-theory explicates the Propositions-
First-Approach wonderfully.
Similarly, fans of the Worlds-First Approach should embrace bivalent-universe-
theory as a theory of their possible worlds. After all, if they are asked to spell out
their claim that propositions are sets of possible worlds, they are likely to say a few
things. First: the contradictory proposition is not ‘true of’ any world; so the empty
set of possible worlds is a proposition, namely, the contradictory proposition. Sec-
ond: different things are ‘true of’ different worlds; so given two distinct worlds,
some proposition must distinguish them. Third: every proposition must have a
negation, which consists of exactly those worlds not in the original proposition.
And these are just what the notions of ( _lnc_ ), ( _kolmogorov_ ) and ( _bisecting_ ), from
Definition 14.17, articulate.
Unsurprisingly, bivalent-universe-theory is exactly as (un)controversial as biva-
lent-calculus-theory. First, ( _bisecting_ ) amounts to assuming that propositions be-
have in a bivalent fashion. Second, ( _kolmogorov_ ) effectively amounts to assuming
that propositions are extremely coarse-grained. But the general point is simple. If
all parties are happy to assume a coarse-grained, bivalent approach to propositions,
then bivalent-calculus-theory and bivalent-universe-theory offer excellent explica-
tions of the informal notions of propositional entailment and possible worlds.^21

```
Rapprochement between the approaches
```
We now want to bring Theorem 14.19 to bear on the Worlds-First and Propositions-
First Approaches.
For vividness, suppose that _Paige_ embraces the Propositions-First Approach. So

(^21) Note that, since neither bivalent-calculi nor bivalent-universes assume anything about _compactness_ ,
these explications avoid making controversial assumptions about compactness. This is noteworthy, be-
cause it differs from two obvious alternative approaches we might have followed.
We might have explicated propositions in terms of first-order logic or its Lindenbaum algebra, and expli-
cated possible worlds in terms of Stone spaces. (This approach is discussed by Bricker 1983.) In the ensuing
philosophical discussion, Stone’s Duality Theorem 14.9 would have played the role of our Theorem 14.19.
But this explication would have involved firmly _embracing_ the compactness of propositional-entailment
and the compactness of our possible universe.
Alternatively, we might have explicated propositions in terms of complete, atomic Boolean algebras,
and explicated possible worlds in terms of discrete topological spaces. (Where _B_ is a Boolean algebra, we
say that an element _a_ ∈ _B_ is an _atom_ such that if 0 ≤ _x_ ≤ _a_ then _x_ is either0 or _a_. We then say that _B_ is
atomic iff all its elements are suprema of some set of atoms. This approach is favoured by Stalnaker 1976:
(C) pp.72–3, 2012: (P4) ch.2 §1; Bricker 1983.) In the ensuing philosophical discussion, a well-known
result of Lindenbaum and Tarski (see e.g. Coppelberg 1989: Corollary 2.7 p.30) would have played the
role of our Theorem 14.19. But this explication would have involved firmly _rejecting_ the compactness of
propositional-entailment and the compactness of our possible universe. After all, any infinite, discrete
topological space is trivially non-compact; and to insist on a complete algebra amounts to assuming that,
for any (possibly infinite) set of propositions _x_ , there is a single proposition equivalent to the conjunction
of all the propositions in _X_.


```
14.7. propositions and possible worlds 353
```
she thinks that some _intended_ bivalent-calculus, _C_ , correctly explicates the entail-
ments between _the_ propositions. Using _C_ , she can then obtain something which
behaves just like a possible universe, Uni( _C_ ). Paige uses this to justify her belief
that possible worlds _are_ certain sets of propositions.
Equally vividly, but conversely, _Wendy_ embraces the Worlds-First-Approach. So
she thinks that some _intended_ bivalent-universe, _X_ , correctly explicates _the_ possible
universe. Using _X_ , she can obtain something which behaves just like a bunch of
propositions with entailments between them, Uni( _X_ ). Wendy uses this to justify
her belief that propositions _are_ certain sets of possible worlds.
Wendy and Paige now start talking to each other. To interpret each other, they
lean upon the biinterpretation between their respective theories, provided by The-
orem 14.19. In fact, this allows them to interpret each other in every detail: not just
in their attempts to discuss propositions and worlds directly, but in their attempts
to interpret each other, and their attempts to interpret each other’s interpretations
of each other, and so on, _ad infinitum_.
This (bi)interpretation preserves a lot. For example, by Proposition 5.9, biinter-
pretability implies _faithful interpretability_. So proofs and disproofs transfer seam-
lessly back and forth between Paige’s and Wendy’s perspectives: anything one can
prove, the other can too. And there are always two ways to arrive at a proof of a
claim: stay within one perspective and prove it directly, or temporarily adopt the
other perspective and prove the translation of the claim. Now, in §5.8, we worried
that leaning on a faithful interpretation may mean that Paige and Wendy’s proofs
cannot really count as _distinct_. In the present context, though, that looks quite
_desirable_. The whole thrust of this biinterpretation is that the Worlds-First and
Propositions-First perspectives are very close.
And they are _very_ close. For example, suppose Paige entertains the claim ‘entail-
ment should be compact’. Then both Paige and Wendy can think through, and dis-
cuss, the theoretical consequences that this claim would have, for both their ‘propo-
sitions’ and their ‘worlds’. They can consider whether these are _desirable_ conse-
quences and, whilst they may not agree on the answer, they can genuinely _commu-
nicate_ about it. Conversely, they can both discuss the effects of embracing a claim
like ‘the possible universe should be a discrete space’. In short, the biinterpretation
allows Wendy and Paige to explore, _together_ , the pros and cons of embracing or re-
jecting various proposals.
But, for all its many virtues, Paige and Wendy may find one particular aspect of
the biinterpretation somewhat _infelicitous_. Paige thinks that propositions are ba-
sic and that worlds are derivative. As such, when she formalises her position us-
ing bivalent-calculus-theory, she treats propositions as primitive urelements, at the
base of some hierarchy of sets, and she treats worlds as (constructed) sets of urele-
ments, at the next stage of the hierarchy. Wendy, by contrast, thinks that worlds are


354 types and stone spaces

basic and that propositions are derivative. As such, when she formalises her posi-
tion using bivalent-universe-theory, she treats worlds as primitive urelements and
propositions as (constructed) sets of urelements, at the next stage. Locating these
entities at different levels of the hierarchy precisely reflects their disagreement over
whether worlds or propositions are _metaphysically prior_. But, when Wendy uses the
biinterpretation given by Theorem 14.19 to interpret Paige, she treats what Paige
would regard as an urelement (i.e. as a primitive entity) as a set (i.e. as something
constructed). The same holds when Paige interprets Wendy. As such, Paige and
Wendy may simply insist that the biinterpretation fails to preserve their respective
views on _metaphysical priority_.
This, then, is precisely the extent of the rapprochement our biinterpretation will
give to Paige and Wendy. They can agree to a large extent, they can communicate
with each other on several issues of mutual concern, and they can localise their dis-
agreement to a specific issue concerning metaphysical priority.
We should add that the biinterpretation has even more clout for philosophers
who are _unconcerned_ by questions of metaphysical priority. (This will include any
philosophers who are less concerned with the _metaphysics_ , than with the _truth or fal-
sity_ , of claims made using either propositions-talk or possible-worlds-talk.)^22 Such
philosophers will be able to move seamlessly and indifferently between treating
propositions as sets of worlds, and treating worlds as sets of propositions.

### 14.a Topological background

This appendix arms the reader with the bare topological bones required to follow
the mathematics in this chapter. We define a topological space as follows:

Definition 14.20: _A_ topology _on a set T is any set τ_ ⊆℘( _T_ ) _, such that:_

```
(1) ∅, T ∈ τ
(2)if γ ⊆ τ, then ⋃ γ ∈ τ
(3) if γ ⊆ τ is finite and nonempty, then ⋂ γ ∈ τ
```
_When τ is a topology on T, we say that_ ( _T_ , _τ_ ) _is a topological space. The members of T
are the points of the space._

We will be fairly sloppy in whether we talk about topologies or about topological
spaces. This sloppiness is licensed by the fact that, when _τ_ is a topology on _T_ , we
have⋃ _τ_ = _T_ , and⟨⋃ _τ_ , _τ_ ⟩is the associated space.
Given a topology _τ_ on _T_ , the members of _τ_ are called _open_ sets of the space. We
say that _C_ ⊆ _T_ is _closed_ iff _T_ ∖ _C_ is open, i.e. a member of _τ_. It it is immediate from

(^22) Cf. the conceptual cosmopolitan of Button (2013: ch.19).


```
14.a. topological background 355
```
this definition that both∅and _T_ are both open and closed. Sets like this, which are
both open and closed, are called _clopen_ (as we mentioned in Definition 14.5).
As an example:{∅, _T_ }is always a topology on _T_ , known as the _trivial_ topology.
Equally,℘( _T_ )is always a topology on _T_ , known as the _discrete_ topology.
For a more interesting example, we turn to real analysis. Here, sets of the form
( _a_ , _b_ )={ _r_ ∈R: _a_ < _r_ < _b_ }are often called ‘basic open intervals’. To explain this,
we introduce the idea of a _basis_ :

Definition 14.21: _A_ basis _β on T is a set β_ ⊆℘( _T_ ) _such that:_

```
(1) ⋃ β = T
(2)for all U , V ∈ β and all x ∈ U ∩ V, there is some W ∈ β such that x ∈ W ⊆ U ∩ V
```
Bases are of interest because they generate topologies:

Proposition 14.22: _If β is a basis on T, then_ {⋃ _γ_ : _γ_ ⊆ _β_ } _is a topology on T, called
the_ topology generated by _β._

_Proof._ Where _τ_ ={⋃ _γ_ : _γ_ ⊆ _β_ }, we must check that _τ_ meets each clause of
Definition 14.20.
_(1)._ Clearly∅⊆ _β_ so⋃∅=∅∈ _τ_ , and we are given that⋃ _β_ = _T_ ∈ _τ_.
_(2)._ Fix _γ_ ⊆ _τ_. For each _U_ ∈ _γ_ there is some _βU_ ⊆ _β_ such that _U_ =⋃ _βU_. So
_δ_ =⋃{ _βU_ : _U_ ∈ _γ_ }⊆ _β_ and⋃ _γ_ =⋃ _δ_ ∈ _τ_.
_(3)._ We show that if _U_ , _V_ ∈ _τ_ then _U_ ∩ _V_ ∈ _τ_ ; the general result follows. If _U_ , _V_ ∈ _τ_
then there are _βU_ , _βV_ ⊆ _β_ such that _U_ =⋃ _βU_ and _V_ =⋃ _βV_. So, for any _x_ ∈ _U_ ∩ _V_ ,
there are _BU_ ∈ _βU_ and _BV_ ∈ _βV_ such that _x_ ∈ _BU_ ∩ _BV_. Since _β_ is a basis, there is
some _Bx_ ∈ _β_ such that _x_ ∈ _Bx_ ⊆ _BU_ ∩ _BV_. Now _U_ ∩ _V_ =⋃ _x_ ∈ _U_ ∩ _VBx_ ∈ _τ_.

We can apply Proposition 14.22 to real analysis as follows. LetRbe our set of points.
Let _ρ_ be the set of basic open intervals, i.e.: _ρ_ ={( _a_ , _b_ ): _a_ ≤ _b_ ∈R}. It is easy to
check that this is a basis onR; so _ρ_ generates a topology onR. Indeed, it generates
the _standard_ topology onR. The same topology can also be given by a _metric_ :

Definition 14.23: _A_ metric space _is a pair_ ( _T_ , _d_ ) _, where d is a function from T_ × _T to
the non-negative real numbers, such that, for all x_ , _y_ , _z_ ∈ _T: d_ ( _x_ , _y_ )= 0 _iff x_ = _y; and
d_ ( _x_ , _y_ )= _d_ ( _y_ , _x_ ) _; and d_ ( _x_ , _y_ )≤ _d_ ( _x_ , _z_ )+ _d_ ( _z_ , _y_ )_._

A metric space( _T_ , _d_ )induces a basis, by treating every set{ _y_ ∈ _T_ : _d_ ( _x_ , _y_ )< _r_ }
as basic, for any _x_ ∈ _T_ and non-negative real _r_ ; and by Proposition 14.22 this basis
generates a topology. The Euclidean metric onRis given by _d_ ( _x_ , _y_ )=∣ _x_ − _y_ ∣, and
it is easy to see that the topology induced by this metric is the standard topology.


356 types and stone spaces

Many results from real analysis can now be realised in a more abstract setting.
For example, we can generalise analysis’s _ε_ – _δ_ definition of a continuous function.
The guiding idea here is that the inverse image of an open set is open:

Definition 14.24: _Let τ_ 1 _be a topology on T_ 1 _and τ_ 2 _be a topology on T_ 2_. A function
f_ : _T_ 1 Ð→ _T_ 2 _is a_ continuous _function from τ_ 1 _to τ_ 2 _iff it has the following property:
if U_ ∈ _τ_ 2 _then f_ −^1 ( _U_ )={ _a_ ∈ _T_ 1 : _f_ ( _a_ )∈ _U_ }∈ _τ_ 1_.
We say that f is a_ homeomorphism _iff f is a bijection where both f and f_ −^1 _are
continuous. (So a homeomorphism is a bijection such that X is open iff f_ ( _X_ ) _is open.)_

The central topological notion in this chapter was compactness, as set out in Defi-
nition 14.5. The trivial topology is trivially compact, whereas the discrete topology
on _T_ is only compact when _T_ is finite: consider the open cover{{ _x_ }: _x_ ∈ _T_ }.
The standard topology onRis not compact—consider the open cover{(− _r_ , _r_ ):
_r_ is a positive real}—but the Heine–Borel Theorem states that every closed and
bounded subset of the reals is compact (and vice versa). And, as we repeatedly
mentioned during this chapter, when a topology is generated by a basis, we can de-
termine whether it is compact just by considering open covers by basic elements.

Lemma14.25: _Let β be a basis on T. If every cover γ_ ⊆ _β has a finite subcover, then the
topology generated by β is compact._

_Proof._ Let _τ_ be the topology generated by _β_ , and let _γ_ ⊆ _τ_ be a cover. For each
_U_ ∈ _γ_ there is some _βU_ ⊆ _β_ such that _U_ =⋃ _βU_. So _δ_ =⋃{ _βU_ : _U_ ∈ _γ_ }⊆ _β_
and⋃ _γ_ =⋃ _δ_ = _T_. By supposition, there is some finite subcover _δ_ 0 ⊆ _δ_. For each
_B_ ∈ _δ_ 0 , choose some _UB_ ∈ _γ_ such that _B_ ∈ _βUB_ i.e. _B_ ⊆ _UB_ ; now{ _UB_ : _B_ ∈ _δ_ 0 }⊆ _γ_
is a finite cover.

### 14.b Bivalent-calculi and bivalent-universes

In this appendix, we prove the central result of §14.6 which connects bivalent-calculi
with bivalent-universes:

Theorem(14.19): _(1)If C is a bivalent-calculus, then_ Uni( _C_ ) _is a bivalent-
universe, and_ w : _C_ Ð→Calc(Uni( _C_ )) _is an isomorphism.
(2)If X is a bivalent-universe, then_ Calc( _X_ ) _is a bivalent-calculus, and_ t :
_X_ Ð→Uni(Calc( _X_ )) _is an isomorphism._

_Proof.(1)._ We start by confirming that Uni( _C_ )is a bivalent-universe. Concerning


```
14.b. bivalent-calculi and bivalent-universes 357
```
( _lnc_ ): if _S_ is a story, then∉ _S_ , by ( _consistency_ ) and ( _weakening_ ), so w()=∅.
Concerning ( _kolmogorov_ ): suppose _S_ ∈w( _a_ )iff _T_ ∈w( _a_ ), for all props w( _a_ )on
Uni( _C_ ); so _a_ ∈ _S_ iff _a_ ∈ _T_ , for all _a_ ∈ _C_ , and hence _S_ = _T_. Concerning ( _bisecting_ ):
by ( _maximality_ ) and Lemma 14.13(2), for any story _S_ we have: _S_ ∈w(∼ _a_ )iff∼ _a_ ∈ _S_
iff _a_ ∉ _S_ iff _S_ ∉w( _a_ )iff _S_ ∈Stories( _C_ )∖w( _a_ ). So w(∼ _a_ )=Stories( _C_ )∖w( _a_ ).
We next confirm that w is a bijection. Clearly w is a surjection. To show injec-
tivity, suppose that w( _a_ )=w( _b_ ). So for any story _S_ ⊇{ _a_ }we have _b_ ∈ _S_ , so that
{ _a_ }⊩ _b_ by Lemma 14.13(3). Similarly,{ _b_ }⊩ _a_. So _a_ = _b_ , by ( _decluttering_ ).
To end, we confirm that w preserves structure, i.e. falsum, negation, and entail-
ment. In this argument, we use the natural notation w( _T_ )={w( _b_ ): _b_ ∈ _T_ }.

- w()=∅=, as above
- w(∼ _a_ )=Stories( _C_ )∖w( _a_ )=∼w( _a_ ), as above.
- _T_ ⊩ _a_ iff⋂w( _T_ )⊆w( _a_ ). To see this, first observe that the right-hand-side
    is equivalent to the claim that every story _S_ ⊇ _T_ has _a_ ∈ _S_. So right-to-left
    holds by Lemma 14.13(3). Conversely, suppose _T_ ⊩ _a_ and let _S_ be a story
    with _a_ ∉ _S_ , so that∼ _a_ ∈ _S_ by ( _maximality_ ); then _S_ = _S_ ∪{∼ _a_ }⊮by
    ( _consistency_ ), so _S_ ⊮ _a_ by ( _reductio_ ); and so _S_ ⊉ _T_ by ( _weakening_ ).
_(2)._ We start by confirming that Calc( _X_ )is a bivalent-calculus. We trivially have
( _reflexivity_ ), ( _weakening_ ), ( _decluttering_ ), and ( _reductio_ ). Concerning ( _lindenbaum_ ),
let _Q_ be a set of props on _X_ and suppose⋂ _Q_ ⊈∅, i.e. we have some _x_ ∈⋂ _Q_ ;
then it follows that t( _x_ )⊇ _Q_. It remains to check that t( _x_ )is a story on Calc( _X_ ).
Concerning ( _consistency_ ), _x_ ∈⋂t( _x_ ), so that⋂t( _x_ )⊈∅, and so t( _x_ )⊮by
definition. For ( _maximality_ ), let _p_ be any prop on _X_ , and observe that either _x_ ∈ _p_
or _x_ ∈( _X_ ∖ _p_ ), so that either _p_ ∈t( _x_ )or( _X_ ∖ _p_ )=∼ _p_ ∈t( _x_ ).
We now confirm t is a bijection. To check injectivity, suppose t( _x_ )=t( _y_ ); so _x_ ∈
_p_ iff _y_ ∈ _p_ for all props _p_ on _X_ ; hence _x_ = _y_ by ( _kolmogorov_ ). To check surjectivity,
let _S_ be a story on Calc( _X_ ); then there is some _x_ ∈⋂ _S_ by ( _consistency_ ). We claim
that t( _x_ )= _S_. Fix some prop _p_ on _X_. If _p_ ∈ _S_ , then _x_ ∈ _p_. Conversely, if _x_ ∈ _p_ ,
then( _X_ ∖ _p_ )∉ _S_ and hence _p_ ∈ _S_ by ( _maximality_ ). Hence _x_ ∈ _p_ iff _p_ ∈ _S_ , and so
t( _x_ )= _S_.
It remains to check that the map t preserves the structure of the bivalent-
universes, that is, that it preserves the props. If _p_ is any subset of _X_ (not necessarily
a prop), then the map t induces the map t( _p_ )={t( _x_ ): _x_ ∈ _X_ , _x_ ∈ _p_ }. We must
show that if _p_ is a subset of _X_ , then:

```
p is a prop on X iff t( p )is a prop on Uni(Calc( X ))
```
Appealing in turn to Definition 14.15 and Definition 14.18, the props on
Uni(Calc( _X_ ))are exactly the sets of the form w( _p_ )={ _S_ ∈Stories(Calc( _X_ )):
_p_ ∈ _S_ }as _p_ ranges over props on _X_. Since t is bijective, each story _S_ on Calc( _X_ )can
be written uniquely as _S_ =t( _x_ )for some _x_ ∈ _X_. Hence the props on Uni(Calc( _X_ ))


358 types and stone spaces

are exactly the sets of the form w( _p_ )={t( _x_ ): _x_ ∈ _X_ , _p_ ∈t( _x_ )}, as _p_ ranges over
props on _X_. But for props _p_ on _X_ , we have _p_ ∈t( _x_ )iff _x_ ∈ _p_. So the props on
Uni(Calc( _X_ ))are exactly the sets of the form

```
w( p )={t( x ): x ∈ X , p ∈t( x )}={t( x ): x ∈ X , x ∈ p }=t( p )
```
as _p_ ranges over props on _X_. And so the props on Uni(Calc( _X_ ))are exactly the
sets of the form t( _p_ ), as _p_ ranges over props on _X_ , as required.


