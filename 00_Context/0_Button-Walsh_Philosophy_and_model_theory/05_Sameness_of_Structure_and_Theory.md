**Kaynak:** [[00_Context/0_Button-Walsh_Philosophy_and_model_theory/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

## 5 Sameness of structure and theory

In Chapters 1–4, we introduced structures and used them to explore a wide range
of philosophical topics. In this chapter, we step back from these immediate _appli-
cations_ of the notion of a structure, and instead consider the various ways in which
two structures might be regarded as _the same_. From a semantic point of view, theo-
ries can be taken to be the sets of sentences true on a class of structures, so notions
of sameness of structure also induce notions of sameness of theory.
Much of this chapter involves simply _setting out_ various different notions of same-
ness of structure and sameness of theory. However, we also comment on their
philosophical significance. Early on, we consider whether there is a better notion
than _isomorphism_ for characterising what it means for two mathematicians to have
‘the same structure’ in mind; we suggest that this is likely to be interest-relative
(§§5.1–5.4). And in the later parts of this chapter, we consider three claims to the ef-
fect that interpreting one theory within another preserves some key property. In all
three cases, however, we are sceptical that interpretability provides what has been
demanded of it (§§5.6–5.8).
The notions of sameness of structure and theory which we introduce in this
chapter also recur frequently in this book. To anticipate: in §7.11 we will look at how
sameness of theory establishes an entanglement between arithmetic and syntax; in
§10.3 we appeal to notions of sameness of theory to show how incompleteness in-
fects ‘internally categorical’ theories; and in §14.7 we consider how a specific notion
of ‘sameness of theory’ plays out in a disagreement about metaphysical priority.

### 5.1 Definitional equivalence

Structures, as defined in Definition 1.2, are relative to a specific signature. For ex-
ample, the natural numbers with<, and the natural numbers with both<and 0, are
technically different structures. Invoking isomorphism-types cannot correct this,
since isomorphisms are defined so that they only obtain between structures in the
same signature (see Definition 2.1). But this jars with our informal ways of thinking
and speaking about ‘mathematical structures’, like the natural numbers. When we
develop arithmetic, we do not think much of introducing a defined notion, like ‘0
is the<-least natural number’ or ‘ _n_ divides _m_ iff there is some _x_ such that _n_ × _x_ = _m_ ’;
and there is certainly nothing in our practice which suggests that introducing these


108 sameness of structure and theory

new expressions changes the topic of conversation.
The notion of _definitional equivalence_ was designed to handle this. It was pre-
sented as a way to explicate the thought that two structures are mere ‘notational
variants’^1 of each other, or that they have the ‘same import’, or are ‘various descrip-
tions amount[ing] to the same thing’.^2 Roughly, two structures are definitionally
equivalent iff they share the same domain and each is definable in the other.^3 More
precisely:

Definition5.1: _An_ L _-structure M and an_ L∗ _-structure N are_ definitionally equiva-
lent _iff they have the same underlying domain and M’s interpretation of the_ L _-constant,
relation, and function symbols are definable in N, and likewise N’s interpretation of the_
L∗ _-constant, relation, and function symbols are definable in M._

We outlined _definability_ in Definition 1.8 of §1.13. To illustrate: the natural numbers
with<is definitionally equivalent to the natural numbers with<and 0, because 0
can be defined in terms of<as the<-least element. More interestingly, perhaps, we
can develop the theory of lattices either by taking the≤-relation as primitive, or by
taking the meet⋅and join+operations as primitives.^4

### 5.2 Sameness of structure and ante rem structuralism

The idea of definitional equivalence has been used to discuss a _metaphysical_ version
of the question of when two ‘structures’ are identical.
As explained in §2.4, Shapiro’s _ante rem structuralism_ is a version of objects-
platonism which holds that mathematics is about ante-structures. These are not the
model-theorist’s structures, of Definition 1.2, but instead are abstract entities con-
sisting of places with intra-structural relations holding between them. Now, since
his ante-structures are supposed to be _bona fide_ objects, we can ask Shapiro: _When
are ante-structures identical?_
We remarked in §2.4 that Shapiro’s ante-structures are a bit like isomorphism
types. And, if we think of ante-structures as being as fine-grained as isomorphism
types, this would suggest that Shapiro should answer the question as follows:

_For any structures M and N: ante_ ( _M_ )= _ante_ ( _N_ ) _iff M_ ≅ _N._

Here, ‘ante( _M_ )’ is to be read as _the (most detailed) ante-structure which is instanti-_

(^1) Corcoran (1980b: 232).
(^2) Bouvère (1965b: 622), cf. Bouvère (1965a). She originally called definitional equivalence ‘synonymy’.
(^3) Hodges (1993: 59–63) and Visser (2006: §3).
(^4) Givant and Halmos (2009: 43) and Corcoran (1980b: 233).


```
5.2. sameness of structure and ante rem structuralism 109
```
_ated by M_.^5 Unfortunately, this answer will not do. Very sensibly, Shapiro wants to
respect the fact mentioned in §5.1, that practising mathematicians do not really dis-
tinguish between the natural numbers with<, and the natural numbers with both
<and 0; so he wants to regard these as the _same_ ante-structure. As such he needs
to replace _isomorphism_ , in the above, with some other relation between structures.
Shapiro suggests that _definitional equivalence_ ‘is a good candidate for “sameness of
structure”’,^6 and this would yield the following:

_For any structures M and N: ante_ ( _M_ )= _ante_ ( _N_ ) _iff M and N are isomorphic to
definitionally equivalent structures (i.e. iff there exists some M_ ∗ _such that M_ ≅ _M_ ∗ _and
M_ ∗ _is definitionally equivalent to N)._

This avoids the previous problem. However, there is a nuance here: when some-
one invokes definitional equivalence, we need to be told what _definability_ amounts
to. In mathematical contexts, we typically consider definability in _first-order logic_.
However, we could consider definability in stronger logics. And our choice of logic
will affect which ante-structures are identical, according to the proposed criterion.
To take a simple example: in first-order logic, the natural numbers in the sig-
nature{0, _S_ }are _not_ definitionally equivalent to the natural numbers in the signa-
ture{0, _S_ ,+,×}. However, these structures _are_ definitionally equivalent in second-
order logic.^7 Since the ante rem structuralist will probably want to regard these as
the _same_ ante-structure, she will likely look to second-order logic. But definitional
equivalence in second-order logic is quite coarse-grained. For example: in second-
order logic, the natural numbers in the signature{0, _S_ }are definitionally equivalent
to an isomorphic copy of the _integers_ in the same signature (we show this in §5.b).
So, the proposed criterion would tell us that the natural number ante-structure is
identical to the integer ante-structure. And that seems contrary to Shapiro’s inter-
ests. For there _does_ seem to be a change in topic when we move from the naturals to
the integers: we seem to expand our domain of discourse, by including the _negative_
whole numbers.
It is not immediately obvious, then, that there is a nice, mathematically defin-
able equivalence relation which can be used to address the question, _When are ante-
structures identical?_ This is unfortunate for ante rem structuralism, since we doubt

(^5) We need the caveat ‘most detailed’, since if _M_ is a standard model of Peano Arithmetic, it will in-
stantiate the natural number ante-structure (whatever that is), but it will also instantiate the cardinal-א 0
ante-structure (i.e. the structure consisting ofא 0 positions with _no_ intrastructural relations between them).
On cardinal ante-structures, see Shapiro (1997: 115–23).
(^6) Shapiro (1997: 91). See also Resnik (1981: 533–6, 1997: 205–9).
(^7) The inequivalence in first-order logic holds because, in first-order logic, all the definable subsets of
the natural numbers with zero and successor are finite or cofinite (see Marker 2002: 104). For the equiv-
alence in second-order logic, see our remarks immediately after Definition 1.10 in §1.a (this only requires
the Comprehension Schema, rather than e.g. the full semantics for second-order logic).


110 sameness of structure and theory

that they can countenance any _indeterminacy_ of identity between ante-structures.^8
But it is worth explicitly noting that none of this is _only_ a problem for ante rem struc-
turalists. When asked whether two mathematicians are discussing ‘the same struc-
ture’, in some intuitive (and not very metaphysical) sense, those who are not ante
rem structuralists should be happy to let the answer be context-dependent and pos-
sibly indeterminate.

### 5.3 Interpretability

We have just considered a _philosophical_ use to which definitional equivalence might
be put. In this section and the next, though, we will consider some of the _mathemati-
cal_ or _logical_ reasons for considering notions of equivalence between structures. Ul-
timately, the aim is to find a notion of ‘sameness of structure’ which states that the
structures share all the relevant ‘logical properties’. For the remainder of the chap-
ter, we will assume for simplicity that we are working with _first-order_ logic, although
it will be obvious how to generalise the definitions to other logics.
For mathematical purposes, definitional equivalence is too restrictive to be of
much use, and for two reasons.
First, definitionally equivalent structures must share the same domain. But there
is no mathematical reason to expect that structures which we see as the same, in this
or that respect, will share an underlying domain. This point is familiar from §2.2:
mathematicians are often indifferent between isomorphic structures.
Second, definitional equivalence has no way to deal with the fact that we often
form one mathematical structure from another by taking equivalence classes. For
example, we form the rationals from the integers by considering pairs of integers
( _a_ 1 , _a_ 2 )where _a_ 2 ≠0 under the equivalence relation( _a_ 1 , _a_ 2 ) _E_ ( _b_ 1 , _b_ 2 )iff _a_ 1 _b_ 2 =
_b_ 1 _a_ 2. Likewise, we form the points of the real projective plane from triples of real
numbers (not all of which are zero) by considering the equivalence relation _E_ ′of
‘being on the same line through the origin’, i.e.:

```
( a 1 , a 2 , a 3 ) E ′( b 1 , b 2 , b 3 )iff(∃ λ ≠ 0 )( a 1 = λb 1 ∧ a 2 = λb 2 ∧ a 3 = λb 3 )
```
Obviously, _E_ is definable in the integers, and _E_ ′is definable in the real numbers.
But what we would like is a way to move from these structures, to a structure that
has just _one_ representative for each collection of equivalent elements.
To accomplish this, we must build up to the notion of a quotient structure. We
start by recalling some notation. If _E_ is an equivalence relation on a set _X_ , then _the
equivalence class of a_ is the set of elements equivalent to _a_ , i.e.:

(^8) Shapiro (1997: 79–82, 92–3) experimented with versions of indeterminacy of identity for positions
between structures, but changed his mind (2006a: 124, 128–31). For further discussion on the indetermi-
nacy of identity here, see Evans (1978), Chihara (2004: 81–3), and MacBride (2005: 570–1).


```
5.3. interpretability 111
```
```
[ a ] E ={ b ∈ X : aEb }
```
Often, _X_ will be a set of _n_ -tuples. In this case, we reuse the notation introduced in
§2.b, writing for example _a_ 1 =( _a_ 1,1, ..., _a_ 1, _n_ )and _a_ 2 =( _a_ 2,1, ..., _a_ 2, _n_ ). To illustrate
this notation, we can rewrite the relation _E_ ′from above as follows:

```
a 1 E ′ a 2 iff(∃ λ ≠ 0 )( a 1,1= λa 2,1∧ a 1,2= λa 2,2∧ a 1,3= λa 2,3)
```
With this notation in place, we can say that one structure is a _quotient structure_ of
another iff: the domain of the first is the collection of equivalence classes of some
definable equivalence relation in the second, such that all of the structure of the first
is definable in the second. More formally:

Definition 5.2: _Let A be an_ L _-structure and B be an_ L∗ _-structure. We say that B
is a_ quotient structure _of A iff both of the following hold:_

```
(1)the domain of B is the set B ={[ a ] E : a ∈ X } of equivalence classes of some
A-definable set X ⊆ Amunder an A-definable equivalence relation E ⊆ X × X
(2)for each L∗ -constant symbol c, each n-place L∗ -relation symbol R, and each
n-place L∗ -function symbol f , the following sets are A-definable:
```
```
( cB )−^1 ={ a ∈ X : B ⊧ c =[ a ] E }
( RB )−^1 ={( a 1 , ..., an )∈ Xn : B ⊧ R ([ a 1 ] E , ...,[ an ] E )}
( fB )−^1 ={( a 1 , ..., an , an + 1 )∈ Xn +^1 : B ⊧ f ([ a 1 ] E , ...,[ an ] E )=[ an + 1 ] E }
```
To illustrate the definition, consider the example of the rationals from the previous
paragraph. Since _ab_ + _cd_ = _uv_ iff _adv_ + _cbv_ = _bdu_ , the additive structure on the rationals
is definable in the integers. Expressed in the notation of Definition 5.2, we say that
(+Q)−^1 isZ-definable, because it may be written as:

```
(+Q)−^1 ={( a , b , c , d , u , v )∈(Z^2 )^3 :Q⊧ b , d , v ≠ 0 ∧ ab + cd = uv }
={( a , b , c , d , u , v )∈Z^6 :Z⊧ b , d , v ≠ 0 ∧ adv + cbv = bdu }
```
We then use this notion of a quotient structure to define the key notions of inter-
pretability and mutual interpretability:

Definition5.3: _Let A be an_ L _-structure and B be an_ L∗ _-structure. We say that A is_
interpretable _in B iff A is isomorphic to a quotient structure of B. We say that A and
B are_ mutually interpretable _iff each is interpretable in the other._

As a notion of sameness of structure, mutually interpretability avoids the two prob-
lems we raised for definitional equivalence at the start of this section. First, mutually


112 sameness of structure and theory

interpretable structures need not share a common domain; second, mutual inter-
pretability is compatible with constructing structures via equivalence relations. For
instance, by what was said above, the rationals are interpretable in the integers. Ad-
ditionally, by an important result of Julia Robinson, the integers are definable in the
rationals. So, the integers and rationals are _mutually interpretable_.^9
Later in this chapter, it will be useful to have some explicit terminology for some
special kinds of interpretability. Suppose that _B_ is isomorphic to a quotient struc-
ture of _A_ , where the relevant equivalence relation is just identity, i.e.:

```
a 1 Ea 2 iff a 1,1= a 2,1∧...∧ a 1, n = a 2, n
```
In this case, we say that _B_ is interpretable in _A_ with _identity interpreted absolutely_.^10
Further, if the equivalence relation _E_ is an equivalence relation on _n_ -tuples, we say
that the interpretation is _n-dimensional_.^11 Hence, the simplest interpretations are
one-dimensional interpretations where identity is interpreted absolutely; in such
cases, no quotienting has taken place.
For all its virtues, mutual interpretability tends not to be used directly by math-
ematicians. The reason for this is that the isomorphisms that witness mutual
interpretability need not be ‘recognisable’ by the structures in question, so that
whether two structures are mutually interpretable is decided by facts of the am-
bient metatheory, rather than just by facts about the structures themselves. To il-
lustrate the point, suppose that a geometric structure _G_ and an algebraic structure
_A_ are mutually interpretable.^12 Then _G_ defines an isomorphic copy _A_ 1 of the alge-
braic structure. We might hope to use _A_ 1 to study the original geometric structure,
_G_ , and to do this, we might consider the isomorphic copy _G_ 1 of _G_ defined in _A_ 1.
Evidently, _G_ 1 is itself definable in _G_ , just by composing the two definitions. Un-
fortunately, though, there is no guarantee that there is a _G_ -definable isomorphism
between _G_ and _G_ 1. So if we obtain information about _G_ 1 by the algebraic means of
_A_ 1 , and we want to pull this information back to the original geometric structure _G_ ,
we may have to rely upon metatheoretic resources.
Fortunately, in practice the relevant isomorphisms tend to be definable. And this
leads to a stronger notion of sameness of structures, namely biinterpretability.

(^9) J. Robinson (1949: Theorem 3.1 pp.106–7).
(^10) There is no standard notation for this. Marker (2002: 24–9) uses ‘definably interpreted’.
(^11) This terminology is from Hodges (1993: 212).
(^12) A concrete example of this arises from the ‘introduction of coordinates’ to go back and forth be-
tween an algebraic field structure and a geometric point-line structure. For more, see Hodges (1993: 222–3
Example 1), Artin (1957: ch.2), and Hartshorne (2000: Theorem 21.1 p.137).


```
5.4. biinterpretability 113
```
### 5.4 Biinterpretability

The notion of biinterpretability expands upon the idea of mutual interpretability,
by insisting that the isomorphisms between the structures should, indeed, be de-
finable. Here is the formal definition:^13

Definition5.4: _Let V be a class of_ L _-structures and let W be a class of_ L∗ _-structures.
We say that V and W are_ biinterpretable _iff the following conditions all obtain:_

```
(1)Every structure M from V uniformly defines a structure I ( M ) from W which
is a quotient structure of M.
(2)Every structure N from W uniformly defines a structure J ( N ) from V which
is a quotient structure of N.
(3) For every structure M from V there is a uniformly M-definable bijection gM :
J ( I ( M ))Ð→ M that induces an isomorphism ̷ gM : J ( I ( M ))Ð→ M.
(4)For every structure N from W there is a uniformly N-definable bijection hN :
I ( J ( N ))Ð→ N that induces an isomorphism ̷ hN : I ( J ( N ))Ð→ N.
```
_We say that M and N are_ biinterpretable _iff the two classes_ { _M_ ∗: _M_ ∗≅ _M_ } _and_
{ _N_ ∗: _N_ ∗≅ _N_ } _are biinterpretable._

Here, the adjective ‘uniformly’ means that the formulas used in the definitions are
the same for every case. So we could rephrase (1) as follows: there is a sequence of
formulas such that, for any structure _M_ from _V_ , the first formula defines an equiv-
alence relation whose equivalence classes form the domain of the structure _I_ ( _M_ )
from _W_ , and the other formulas define the interpretation of the constant, relation,
and function symbols on this structure. Likewise, in (3), the function is ‘uniformly
definable’ in that there is a single formula which, when applied to any structure _M_
from _V_ , defines a function from an appropriate Cartesian power of _M_ back to _M_ it-
self, such that the associated function _gM_ : _J_ ( _I_ ( _M_ ))Ð→ _M_ defined on the equiv-
alence classes is a bijection.^14
Biinterpretability has a central place in mathematical logic. To illustrate: the
Slaman–Woodin conjecture predicts that the Turing degrees are biinterpretable
with the standard model of PA 2. This is a major open problem in computability,
and here is how Slaman describes its significance:

The [Slaman–Woodin] Conjecture, if true, reduces all the logical questions that one could
ask of [the Turing degrees] to the exact same questions about second order arithmetic.
The structures would be logically identical, though presented in different first order lan-
guages.^15

(^13) Hodges (1993: 222) and Visser (2006: §3.3).
(^14) In the formulas which witness uniform definability, parameters may be allowed from some
parameter-free definable set, so long as any choice of parameter effects the task at hand.
(^15) Slaman (2008: 99).


114 sameness of structure and theory

Within model theory itself, Pillay speaks of biinterpretability as being partially con-
stitutive of the aims of _pure_ model theory, where the relevant contrast is to _applica-
tions_ of model theory to other areas of mathematics:

Interpretability is a key (even characteristic) notion, and in a tautological sense the busi-
ness of ‘pure’ model theory becomes the classification of first order theories up to biin-
terpretablity.^16

Part of the idea behind Slaman’s and Pillay’s remarks is that biinterpretability pre-
serves many properties that arise in mathematical logic. For instance, biinter-
pretability preserves _stability_ (which we introduced in Definition 14.11 of Chap-
ter 14) and biinterpretable structures have the same automorphism group.^17
It may well be, then, that structures are biinterpretable iff they share all the fea-
tures that matter for central purposes of mathematical logic. This is not to say,
though, that biinterpretability is the once-and-for-all _correct_ notion of ‘sameness
of structure’. Consider, again, the question from §5.2, of when two mathematicians
are discussing ‘the same structure’, in some intuitive, informal sense. If one math-
ematician is talking about the natural numbers and the other is talking about the
integers, then in certain contexts it will surely be right to say that they are talking
about importantly _different_ structures, since the former has a least element and the
latter does not. This is so, even though these two structures will be biinterpretable
(given the right signature).^18 And this again suggests that it may be purpose-relative,
context-sensitive, or indeterminate, which features of a structure are relevant to the
question of whether they are ‘the same’.

### 5.5 From structures to theories

We now move from discussing ‘sameness of structures’ to ‘sameness of theories’. In
fact, this can be done very simply:

Definition 5.5: _Where T is an_ L _-theory and T_ ∗ _is an_ L∗ _-theory:_

```
(1)T is interpretable in T ∗ iff every model M ∗ of T ∗ uniformly interprets a
model M of T.^19
(2)T and T ∗ are mutually interpretable iff each interprets the other.
```
(^16) Buss et al. (2001: 186).
(^17) For the fact about automorphism groups, see Hodges (1993: Exercise 8 p.226).
(^18) They are biinterpretable in a signature containing addition and multiplication, since these resources
allow one to do all of the usual coding tricks deployed in e.g. the proofs of Gödelian incompleteness.
(^19) The sense of ‘uniformly’ is, as above, that the same formulas are used each time. The restriction
on parameters is similar to that mentioned in footnote 14: these formulas may be allowed to include pa-
rameters from a certain parameter-free definable class in the interpreting structure _M_ ∗, so long as one
stipulates that any choice of parameters from this class succeeds in effecting such a definition of a model
of _T_ (cf. Hájek and Pudlák 1998: 149; Visser 2006: §b.3; Hodges 1993: 215).


```
5.5. from structures to theories 115
```
```
(3) T and T ∗ are biinterpretable iff they are mutually interpretable, and there
are isomorphisms which witness the correctness of the interpretations (i.e. iff the
two classes V ={ M : M ⊧ T } and W ={ N : N ⊧ T ∗} are biinterpretable in
the sense of Definition 5.4.)
(4)T and T ∗ are definitionally equivalent iff they are biinterpretable and the
domains do not change under the interpretations and the isomorphisms are given
by the identity map.^20
```
This definition characterises interpretation (between theories) in terms of _defin-
ability_. However, when dealing with logics with a sound and complete proof-
system, such as first-order logic, it is natural to characterise interpretation in terms
of _provability_. Then key idea will be: _translations of theorems are theorems_.
At a first approximation, we say that a theory _T_ is _interpretable_ in a theory _T_ ∗
iff the primitives of the interpreted theory _T_ can be translated into formulas of the
interpreting theory _T_ ∗so that the translation of every theorem of _T_ is a theorem
of _T_ ∗. However, to make this rigorous, we must say more about the relevant notion
of translation. We do this in two steps.^21 The first step is to define the interpre-
tation of a signature into a theory. For the sake of simplicity we focus on the case
where the interpretations are one-dimensional and where identity is interpreted ab-
solutely (see §5.3):^22

Definition 5.6: _Let_ L _be a signature and let T_ ∗ _be an_ L∗ _-theory. Then an_ interpre-
tation _I of_ L _into T_ ∗ _is given by the following data:_

```
(1)an L∗ -formula DI ( x ) such that T ∗⊢∃ xDI ( x )
(2)for every L -constant symbol c, an L∗ -formula CI ( x ) such that
T ∗⊢∃! x ( CI ( x )∧ DI ( x ))
(3) for every n-place L -relation symbol R, an n-place L∗ -formula RI ( x ) such
that T ∗⊢∀ x ( RI ( x )→⋀ ni = 1 DI ( xi ))
(4)for every n-place L -function symbol f , an n + 1 -place L∗ -formula FI ( x , y )
such that both T ∗⊢∀ x ∀ y ( FI ( x , y )→(⋀ ni = 1 DI ( xi )∧ DI ( y ))) , and
T ∗⊢∀ x (⋀ ni = 1 DI ( xi )→∃! y ( FI ( x , y )∧ DI ( y ))).
```
(^20) For an equivalent characterisation of definitional equivalence in terms of ‘having a common defini-
tional extension’, see Hodges (1993: 59–61).
(^21) Here we follow Lindström (2003: 96–7), Hájek and Pudlák (1998: 148–9), and Visser (2006: §2.2).
(^22) To cover _m_ -dimensional interpretations, we must modify Definition 5.6 as follows. First, the unary
formulas _DI_ and _CI_ would be replaced with _m_ -place formulas; the _n_ -place _RI_ would be replaced with _n_ ⋅ _m_ -
place formulas, and the( _n_ + 1 )-place formula _FI_ would be replaced by an( _n_ + 1 )⋅ _m_ -place formula. Second,
all the bound variables featured in Definition 5.6 would be replaced by bound _m_ -tuples of variables. To allow
identity to be interpreted non-absolutely, we must add to the data of Definition 5.6 a formula _EI_ ( _x_ 1 , _x_ 2 ),
which is _T_ ∗-provably an equivalence relation on _DI_ ( _x_ ). We would then modify (2)–(4) to ensure that the
interpretations of the constant, relations, and function symbols respected this equivalence relation. Finally,
we would modify Definition 5.6 so that( _x_ = _y_ ) _I_ is _EI_ ( _x_ , _y_ ), and replace ‘uniqueness’ by ‘uniqueness up to
equivalence’ in clause (2) and (4).


116 sameness of structure and theory

_We define a map φ_ ↦ _φIof_ L _-formulas to_ L∗ _-formulas, in the same number of free
variables, starting with atomic formulas:_

```
( x = y ) I := x = y ( x = c ) I := CI ( x )
( R ( x )) I := RI ( x ) ( f ( x )= y ) I := FI ( x , y )
```
_and offering recursion clauses as follows:_

```
(¬ φ ) I :=¬( φI )
( φ ∧ ψ ) I :=( φI ∧ ψI ) ( φ ∨ ψ ) I :=( φI ∨ ψI )
(∀ xφ ( x )) I :=(∀ x : DI ) φI ( x ) (∃ xφ ( x )) I :=(∃ x : DI ) φI ( x )
```
The intuitive idea behind clause (1) is that _DI_ serves to pick out the domain of the
interpretation. The remaining clauses then specify the means by which the inter-
preting theory is to interpret the constants, relation, and function symbols. So, the
uniqueness claim is needed in (2) because each constant symbol must pick out a
unique object, and similar remarks apply to (4).^23
The connection between interpretability, as laid down in Definition 5.5(1), and
the notion of an interpretation, as just defined, is quite straightforward. Given the
soundness and completeness of first-order logic, to provide a _uniform interpretation_
of one structure in another, as in Definition 5.5(1), just is to provide an interpreta-
tion of a signature in a theory, as in Definition 5.6. So, in place of Definition 5.5(1),
we could instead have defined interpretability in the following, equivalent fashion:

Definition 5.7: _Suppose that T is an_ L _-theory and that T_ ∗ _is an_ L∗ _-theory. Then
T is_ interpretable _in T_ ∗ _iff: there is an interpretation I of_ L _into T_ ∗ _such that, for all_
L _-sentences φ, if T_ ⊢ _φ then T_ ∗⊢ _φI._

In the case of Definition 5.7, however, our guiding idea of interpretation comes
through much more clearly: _translations of theorems are theorems_.
To illustrate the notion, ZFC interprets PA by taking ‘ _x_ is a finite ordinal’ as the
domain formula _DI_ ( _x_ ), translating ‘0’ with ‘∀ _y y_ ∉ _x_ ’, and translating the relation
‘ _x_ < _y_ ’ with ‘ _x_ ∈ _y_ ’. The translations of PA’s theorems are then all theorems of ZFC.
Whilst this translation preserves theoremhood, it does not preserve _non-
theoremhood_. We can see this by invoking Gödelian considerations. (We review

(^23) This definition does not say how to translate atomic formulas such as _f_ ( _g_ ( _x_ ))= _y_ or _f_ ( _x_ )= _h_ ( _x_ ).
But it is easy to handle such cases: _f_ ( _g_ ( _x_ ))= _y_ is equivalent to∃ _z_ ( _g_ ( _x_ )= _z_ ∧ _f_ ( _z_ )= _y_ ), and the latter
can be handled using the definition; similarly, _f_ ( _x_ )= _h_ ( _x_ )is equivalent to∃ _z_ ( _f_ ( _x_ )= _z_ ∧ _h_ ( _x_ )= _z_ ).
Formally, we are appealing to the fact that each atomic formula is equivalent to a formula in which the only
atomic subformulas are those of the form _R_ ( _x_ )and _f_ ( _x_ )= _y_ ; see Hodges (1993: 58) for a proof of this fact.


```
5.5. from structures to theories 117
```
some of the technicalities of this in §5.a.) Gödel showed how to develop a the-
ory of syntax within a theory of arithmetic, such as PA.^24 This allows us, in
particular, to arithmetise PA’s consistency sentence, as an arithmetical formula
Con(PA). Gödel’s Second Incompleteness Theorem then shows that PA does not
prove Con(PA). However, ZFC does prove the translation of Con(PA), since we
can easily build a model of PA within ZFC.
If we want also to ensure that the translations of non-theorems are non-theorems,
we need to consider a more restrictive notion of interpretability. Specifically: a
theory _T_ is said to be _faithfully interpretable_ in a theory _T_ ∗iff _T_ is interpretable in _T_ ∗
both so that translations of theorems are theorems _and_ so that translations of non-
theorems are non-theorems. More precisely:

Definition 5.8: _Where T is an_ L _-theory and T_ ∗ _is an_ L∗ _-theory:_

```
(1)T is faithfully interpretable in T ∗ iff there is some interpretation I of L into
T ∗ such that, for all L -sentences φ: T ⊢ φ iff T ∗⊢ φI.
(2)T and T ∗ are mutually faithfully interpretable iff each faithfully interprets
the other.
```
The easiest way to produce examples of faithful interpretability is to note that biin-
terpretability implies faithful interpretability:

Proposition 5.9: _Biinterpretable theories are (mutually) faithfully interpretable._

_Proof._ Suppose that _T_ and _T_ ∗are biinterpretable, i.e. the classes{ _M_ : _M_ ⊧ _T_ }
and{ _N_ : _N_ ⊧ _T_ ∗}are biinterpretable in the sense of Definition 5.4. Suppose that
_T_ ∗⊢ _φI_ ; we want to show that _T_ ⊢ _φ_. Let _N_ be a model of _T_ ; we must show that
it is a model of _φ_. Using clause (1) of Definition 5.4, _J_ ( _N_ )is a model of _T_ ∗, and so
of _φI_. Since _J_ ( _N_ )is a model of _φI_ , we have that _I_ ( _J_ ( _N_ ))is a model of _φ_. But by
clause (3) of Definition 5.4, _N_ and _I_ ( _J_ ( _N_ ))are isomorphic, so that _N_ is a model
of _φ_ as well.^25

Using this result, we can easily chart the relative strengths of our several different
notions of interpretation:

Proposition 5.10: _The following Hasse diagram represents the relationships between
notions of interpretation, where a variety of interpretability entails all and only those_

(^24) No theory has the status of _the_ theory of syntax, in the way that PA is _the_ theory of arithmetic. But
for some suitable theories of syntax, see Leigh and Nicolai (2013: 619) and Hájek and Pudlák (1998: 151).
(^25) The interpretation _I_ is used here both in the context of a map from structures _M_ to structures _I_ ( _N_ )
and a map from formulas _φ_ to formulas _φI_. This makes good sense, because the uniformity in the ‘uniform
definability’ from the definition of biinterpretation (Definition 5.4) can be produced by the formulas from
an interpretation of a signature in a theory in the sense of Definition 5.6.


118 sameness of structure and theory

_varieties of interpretability which are connected to it by a downward path. (So: biinter-
pretable theories are always mutually faithfully interpretable, but not vice versa.)_

```
T and T ∗are definitionally equivalent
```
```
T and T ∗are biinterpretable
```
```
T and T ∗are mutually faithfully interpretable
```
```
T and T ∗are mutually interpretable T faithfully interprets T ∗
```
```
T interprets T ∗
```
_Proof sketch._ Biinterpretability entails (mutual) faithful interpretability by Propo-
sition 5.9. The other entailments are trivial. So it only remains to explain why the
relevant entailments are strict.
_Biinterpretation without definitional equivalence._ Examples of such theories follow
from a recent result of Visser and Friedman.^26
_Mutual faithful interpretation without biinterpretation._ Consider the theory ZFfin,
which is obtained by taking the axioms of ZF and replacing the axiom of infinity
with its _negation_. Enayat et al. show that PA and ZFfinare mutually faithfully inter-
pretable but _not_ biinterpretable.^27
_Mutual interpretation without faithful interpretation._ By Feferman’s Theorem,^28
PA and PA+ ¬Con(PA)are mutually interpretable. But neither faithfully inter-
prets the other, since these theories have different Σ 1 -consequences, and faithful
interpretation requires sameness of Σ 1 -consequences.^29
_Faithful interpretation without mutual interpretation._ Consider PA and the theory
SA which is the true theory of arithmetic in the signature{0, _S_ }(this was defined
in §3.b). By Proposition 3.10, SA is complete. So PA faithfully interprets SA, via the
‘identity’ interpretation. But SA cannot interpret PA, since SA is both complete and
computable but PA is not.

The case of ZFfin, which we just mentioned, is particularly interesting. Whilst ZFfin
is _not_ biinterpretable with PA, Kaye and Wong show that we _can_ obtain a biinter-
pretation, if we add an axiom to ZFfinwhich states that every set is a subset of a
transitive set.^30 Evidently then, we must be very careful when making claims like

(^26) See Visser and H. M. Friedman (2014: §7).
(^27) Enayat et al. (2011).
(^28) Feferman (1960/1961: 76); see footnote 35 for more.
(^29) See Lindström (2003: 106).
(^30) Kaye and Wong (2007).


```
5.6. interpretability and the transfer of truth 119
```
‘finite set theory and number theory are “notational variants” of each other’. Whilst
their standard _models_ are biinterpretable, the _theories_ only become biinterpretable
by supplementing the axioms.

### 5.6 Interpretability and the transfer of truth

In the remainder of this chapter, we critically consider three possible philosophical
roles for _interpretability_. We start by criticising the following thesis:

_The Truth-Transfer Thesis.If T_ ∗ _interprets T and T_ ∗ _is true, then T is true._

This is a very natural idea. Moreover, it has been frequently deployed in the phi-
losophy of mathematics by neo-logicists. Frege’s Theorem states that PA 2 is inter-
pretable in a formal theory known as HP.^31 The axioms of HP are just the Compre-
hension Schema instances and Hume’s Principle, which is:

```
∀ X ∀ Y (# X =# Y ↔ E ( X , Y ))
```
Here, ‘ _E_ ( _X_ , _Y_ )’ abbreviates the claim that there is a bijection between the _X_ s and the
_Y_ ’s, and ‘# _X_ ’ is read ‘the number of _X_ s’, where#is a function symbol from one-
place second-order objects to first-order objects. Neo-logicists have insisted that
HP has a particular epistemic status—something akin to a logical principle—so
that it is knowable a priori. By combining Frege’s Theorem with the Truth-Transfer
Thesis, they have hoped to vindicate arithmetic, in the form of PA 2.^32
Unfortunately for neo-logicists and others, there are at least two different kinds
of counterexamples to the Truth-Transfer Thesis.

```
Counterexamples to the Truth-Transfer Thesis
```
The first kind of counterexample to the Truth-Transfer Thesis arises by considering
theories _T_ and sentences _φ_ such that _T_ + _φ_ and _T_ + ¬ _φ_ are _mutually_ interpretable.
Such sentences _φ_ are known as _Orey sentences_. For instance, the continuum hypoth-
esis and V=L are Orey sentences against the background of ZFC, while the Axiom
of Foundation is an Orey sentence against the background of ZFC _minus_ Founda-
tion.^33 The problem is simple: if interpreting _T_ + _φ_ in a true theory _T_ ∗is sufficient
for the truth of _T_ + _φ_ —as the Truth-Transfer Thesis insists—then in these cases,
absurdly, both _φ_ and¬ _φ_ are true.^34

(^31) See Wright (1983: ch.4) or Walsh (2012: §2.2).
(^32) The paper Walsh (2014) discusses a more epistemic reading of the neo-logicist programme.
(^33) Koellner (2009: 99) and Visser (2012: 413).
(^34) See Walsh (2014: §3.3 pp.93ff.) for a related point in an epistemic context.


120 sameness of structure and theory

A second kind of counterexample relates to Feferman’s Theorem. As mentioned
in the proof of Proposition 5.10, this states that we can find theories, _T_ , such that
_T_ and _T_ + ¬Con( _T_ )are mutually interpretable.^35 For example, Feferman’s Theo-
rem applies to PA, PA 2 , ZFC, and ZFC 2. Now, there is a long tradition of thinking
that accepting a theory _T_ also commits one to accepting Con( _T_ ),^36 and to _reject-
ing_ ¬Con( _T_ ). And this leads Niebergall to write ‘if there is _any_ metatheorem pre-
senting a problem for relative interpretability’, then it is Feferman’s Theorem.^37 (It
is worth emphasising that Feferman-style counterexamples to the Truth-Transfer
Thesis are _not_ Orey-style counterexamples, simply because consistency statements
are not Orey sentences. Indeed, the theory PA+Con(PA)is _not_ interpretable in
PA.^38 )
Both kinds of counterexample illustrate that there are simply too _many_ interpre-
tations to sustain the Truth-Transfer Thesis. The only way to defend some version
of the Thesis, then, will be to build in some restrictions on the nature of the inter-
pretations that allow for truth-transfer.
A plausible idea would be to restrict the Thesis, saying only that truth is trans-
ferred between theories when we have _mutual_ interpretability, or perhaps some-
thing stronger still. Unfortunately, that idea also fails. Our Orey-style and
Feferman-style counterexamples all involved mutual interpretability.^39 Admit-
tedly, there cannot be a Feferman-style counterexample for _faithful_ interpretabil-
ity.^40 But it is easy to find Orey-style counterexamples for _definitional equivalence_ :

Proposition 5.11: _Let ψ_ ( _x_ ) _be any formula in the signature of_ PA _such that_ PA ⊢
∃ _xψ_ ( _x_ ) _and_ PA⊢∃ _x_ ¬ _ψ_ ( _x_ )_. Let F be a new one-place predicate, and let T be the the-
ory_ PA+[∀ _x_ ( _ψ_ ( _x_ )↔ _F_ ( _x_ ))∨∀ _x_ ( _ψ_ ( _x_ )↔¬ _F_ ( _x_ ))]_. Let φ be_ ∃ _x_ ( _ψ_ ( _x_ )∧ _F_ ( _x_ ))_.
Then T_ + _φ and T_ + ¬ _φ are definitionally equivalent._

_Proof._ First note that _T_ + _φ_ is equivalent to PA+∀ _x_ ( _ψ_ ( _x_ )↔ _F_ ( _x_ )), while _T_ +¬ _φ_
is equivalent to PA+ ∀ _x_ ( _ψ_ ( _x_ )↔¬ _F_ ( _x_ )). Then _T_ + _φ_ interprets _T_ + ¬ _φ_ via
_FI_ ( _x_ ):=¬ _F_ ( _x_ ), leaving all other vocabulary unchanged. Further, _T_ +¬ _φ_ interprets
_T_ + _φ_ in the same way. Since the composition of the two interpretations is identity,
this yields definitional equivalence.

(^35) See Feferman (1960/1961: 76), Lindström (2003: 104). The precise restrictions on _T_ are that it sat-
isfies the usual conditions of Gödel’s first incompleteness theorem and that it is _essentially reflexive_ , i.e. it
proves the consistency of all its finite subtheories. The theories PA, PA 2 , ZFC, and ZFC are all essen-
tially reflexive. An example of a theory which is _not_ essentially reflexive is the theory ACA 0 mentioned in
footnote 50 below.
(^36) For classical statements of this view, see the introduction to Dean (2015).
(^37) Niebergall (2000: 44).
(^38) See Lindström (2003: 98).
(^39) And it is also worth noting that HP and PA 2 are mutually interpretable but _not_ biinterpretable; see
Walsh (2012: Corollary 24 p.1691, 2014: §6.3 pp.111–3).
(^40) PA does not faithfully interpret PA+ ¬Con(PA), nor vice versa (see the proof of Proposition 5.10).


```
5.6. interpretability and the transfer of truth 121
```
```
Bridge principles
```
Defenders of the Truth-Transfer Thesis must find some other way to restrict it. To
do this, we suggest that they think of interpretations as supplying ‘bridge principles’
between theories.^41 Then the new idea is that only interpretations with _true_ bridge
principles are guaranteed to preserve truth.
To implement this idea, let _I_ be an interpretation of theL-theory _T_ in theL∗-
theory _T_ ∗. For readability, we assume thatLis relational, that _I_ is one-dimensional
and interprets identity absolutely (see §5.3), and that the signaturesLandL∗
are disjoint. We also assume that _T_ contains an axiom of the form∀ _xD_ ( _x_ ), for a
distinguished one-place predicate _D_. For instance, if _T_ is a theory of numbers, then
we can think of ‘∀ _xD_ ( _x_ )’ as meaning ‘everything is a number’.
The following sentence essentially says that _T_ ’s intended domain aligns with the
formula _DI_ provided by the interpretation:

```
∀ x ( D ( x )↔ DI ( x )) ( bridge:D )
```
Likewise, for each _n_ -place relation symbol _R_ fromL, the following sentence essen-
tially says that the intended interpretation of the relation lines up with the formula
_RI_ provided by the interpretation:

```
(∀ x : D )( R ( x )↔ RI ( x )) ( bridge:R )
```
We define _Bridge_ ( _I_ )as the union of ( _bridge:D_ ) and ( _bridge:R_ ), as _R_ varies over the
relation symbols ofL. Note that Bridge( _I_ )is a theory in the combined signature
L∪L∗, since in ( _bridge:R_ ) the predicate _R_ is fromL, while _RI_ is anL∗-formula
delivered by the interpretation. Using this notation, we can formulate:

_The Bridged Truth-Transfer Thesis.If I is an interpretation of T in T_ ∗ _, and both T_ ∗
_and Bridge_ ( _I_ ) _are true, then T is true._

This Bridged Thesis does well in dealing with Orey-style counterexamples to the
original Truth-Transfer Thesis. To see this, we note a preliminary result:

Proposition 5.12: _Suppose that I and J are both interpretations of the signature_ L _in
the_ L∗ _-theory T_ ∗_. Then, for every_ L _-formula φ_ ( _x_ ) _:_

```
Bridge ( I )∪ Bridge ( J )⊢(∀ x : D )( φI ( x )↔ φJ ( x ))
```
(^41) We are using this in the same sense as used in the philosophy of science; see e.g. Nagel (1961). For
standard objections to, and defence of, this notion of reduction, see Dizadji-Bahmani et al. (2010).


122 sameness of structure and theory

_Proof._ The proof is by induction on the complexity of formulas. For the base case
of atomicL-formula _R_ ( _x_ ), assume that _D_ ( _xk_ )holds for each _k_ ≤ _n_. Then:

```
( R ( x )) I ↔ RI ( x )↔ R ( x )↔ RJ ( x )↔( R ( x )) J
```
The first biconditional follows from the definition of the interpretation _I_ on
atomics; the second follows from ( _bridge:R_ ) applied to _I_ ; the third follows
from ( _bridge:R_ ) applied to _J_ ; and the fourth follows from the definition of the in-
terpretation _J_ on atomics.
For the inductive steps, consider e.g. the case where _φ_ is the formula _φ_ 0 ∧ _φ_ 1 , and
suppose that we are given some _x_ such that _D_ ( _xk_ )holds for each _k_ ≤ _n_. Then:

```
φ ( x ) I ↔( φI 0 ( x )∧ φI 1 ( x ))↔( φJ 0 ( x )∧ φJ 1 ( x ))↔ φJ ( x )
```
The first and last biconditionals follow from how interpretations are defined on
conjunctions, while the middle biconditional follows from the inductive hypothe-
sis. The other inductive steps are similar.

So now let _φ_ be an Orey sentence for _T_. Let _I_ be an interpretation of theL-theory
_T_ + _φ_ in _T_ ∗, and _J_ be an interpretation of theL-theory _T_ +¬ _φ_ in _T_ ∗. Let _T_ ∪be the
theory _T_ ∗∪Bridge( _I_ )∪Bridge( _J_ ). Then _T_ ∪⊢ _φI_ ↔ _φJ_ by Proposition 5.12. And
_T_ ∪⊢ _φI_ , since _T_ ∗interprets _T_ + _φ_ via _I_. Similarly, _T_ ∪⊢(¬ _φ_ ) _J_ i.e. _T_ ∪⊢¬( _φJ_ ),
since _T_ ∗interprets _T_ +¬ _φ_ via _J_. So _T_ ∪proves all three of¬( _φJ_ ), _φI_ , and _φI_ ↔ _φJ_ ,
and so is inconsistent. It follows that _T_ ∪is _false_. So Orey sentences pose no threat
to the Bridged Thesis: what such sentences show is that at least one of the two sets
of bridge principles must be false.
To see how the Bridged Thesis deals with the Feferman-style counterexamples,
let _I_ be an intepretation of PA+ ¬Con(PA)in PA. Then _I_ lets us consider, within
PA itself, a definable model of PA+ ¬Con(PA). If we bought into the idea that
our reasons for accepting PA were reasons for _rejecting_ ¬Con(PA), then we will be
able to recognise this (code of a) model as _non-standard_. And, as such, we have
good reasons to reject Bridge( _I_ ); for Bridge( _I_ )will tell us, in effect, that the non-
standard model’s order relation,< _I_ , aligns perfectly with _the_ order relation, which
is not something we can believe whilst also regarding the non-standard model _as_
non-standard.

```
Difficulties concerning bridge principles
```
There is clearly much to say in praise of the Bridged Thesis. Unfortunately, even if
it is _correct_ , it is hard to see how it can ever be _applied_. The crucial issue concerns
how we could ever be in a position to regard the bridge principles as true.


```
5.7. interpretability and arithmetical equivalence 123
```
To see the problem, suppose we consider an interpretation of arithmetic in set
theory. In that case, the bridge principles will consist in _identifications_ of num-
bers with specific types of sets. For example, one bridge principle might entail that
2 ={∅,{∅}}. But if we are thinking about set theory as providing a metatheory
for arithmetic, then the Benacerraf-style considerations from §2.2 kick in: another
equally acceptable bridge principle might entail that 2={{∅}}. It is not unusual
to draw the conclusion that the truth-value of any specific set of bridge principles
(in this case) is indeterminate. But then the Bridged Thesis cannot be applied.
The Benacerraf-style point arises for neo-logicists just as it does for set-theoretic
reductionists. After all, HP pins down the truth condition of all sentences of the
form# _F_ =# _G_ , but it says _nothing_ about sentences of the form 2=# _F_. And
different bridge principles will give different verdicts here.
In response to this, a logicist might suggest that a particular set of bridge princi-
ples is _true by stipulation_. They might, for example, conceive of those chosen bridge
principles as simple stipulations concerning how to define numerals in terms of ‘#’.
But this move has certain costs. Logicists typically have quite ambitious goals: they
may want to show how arithmetical reasoning is applicable to every domain of en-
quiry, and to show how knowledge of Hume’s (quasi-logical) principles can ‘settle
the status of the arithmetical laws we already have, involving those arithmetical con-
cepts we already grasp’.^42 Regarding PA 2 as true-by-stipulation seems incompatible
with those goals.
Indeed, since many (if any) mutually inconsistent stipulations are possible, it
seems that stipulated-to-be-true bridge principles can only provide us with a proof
that PA 2 is _consistent_ relative to HP. But that seems to achieve very little. Doubts
about the consistency of PA 2 are not widely held. When they are voiced at all, they
tend to arise from specific sceptical concerns such as whether there are actually in-
finitely many objects. But of course HP _also_ entails the existence of infinitely many
objects. So no one who was concerned about PA 2 ’s consistency for this reason will
be mollified by the observation that HP interprets PA 2.

### 5.7 Interpretability and arithmetical equivalence

We now consider a second, rather different, philosophical use of interpretability,
which arises specifically within the philosophy of set theory. It is no surprise that
interpretability plays a significant role within set theory. After all, we can readily
use interpretability to express the way in which disparate mathematical theories are
formalisable within set theory. But the particular case we wish to consider concerns
the interpretability of set-theoretic axioms within set theory itself.

(^42) Dummett (1996: 20). See Walsh (2014: §1) for references to these aims of logicism.


124 sameness of structure and theory

Set theorists have considered many different large cardinal axioms, determinacy
axioms, and forcing axioms. Many of these axioms form a linear order under _prov-
ability_ , but there are some recent examples which are incompatible with one an-
other. It turns out, however, that even these are linear under _interpretability_ , and
that within each class of mutually interpretable theories there is a large cardinal ax-
iom.^43 Writing of this hierarchy, Steel says: ‘we know of only one road upwards,
and large cardinals are its central markers.’^44
Our question is simply this: _What attitude should we take towards mutually inter-
pretable but incompatible set theories?_
One answer to this question is suggested by Koellner’s use of the Guaspari–
Lindström Theorem.^45 This entails that two extensions of ZFC by finitely many
new axioms in the same signature as ZFC are mutually interpretable iff they prove
exactly the same Π^01 -sentences. Here, a Π^01 -sentence is simply a sentence which
begins with a block of universal quantifiers over natural numbers and all of whose
other quantifiers are bounded. Invoking this theorem, Koellner then suggests a
two-step strategy for choosing new axioms in set theory:

```
(a)‘for a given degree of [mutual] interpretability [...show] that the Π^01 -
consequences of the theories in the degree are true’; then
(b)choose a particular axiom ‘ from the degree ’, on the basis of ‘theoretical rea-
sons’ such as unity and simplicity.^46
```
In this context, though, the Guaspari–Lindström Theorem is a double-edged
sword. For, within the classes of mutual interpretability, there are theories which
_differ_ as regards the arithmetical sentences they prove. And we might well won-
der why, in step (a), we select from rival axioms which _only_ prove all the same Π^01 -
sentences, rather than from rival axioms which prove _all_ the same arithmetical sen-
tences.^47 The stricter alternative would correspond naturally to the idea that, whilst
strong extensions of set theory may disagree with one another about the nature of
sets, the theories that merit our consideration must agree with everything we know
about our close friends, the natural numbers.^48

(^43) See theories _T_ 2 and _T_ 4 on Koellner (2009: 100), and remark (7) of Koellner (2009: 102).
(^44) Feferman, H. M. Friedman, et al. (2000: 427).
(^45) See Lindström (2003: 103, 115) and Koellner (2009: 98). The Guaspari–Lindström theorem says
that for two such theories, _T_ is interpretable in _T_ ∗iff everyΠ^01 -sentence provable from _T_ ∗is also provable
from _T_. This does not hold for all theories, but rather for essentially reflexive theories which additionally
satisfy the usual conditions for Gödel’s first incompleteness theorem. See footnote 35 for the definition of
essentially reflexive.
(^46) Koellner (2009: 99). See in particular the discussion in the numbered items (1)–(8) on Koellner
(2009: 101–2) for the types of theoretical reasons which particularly interest Koellner.
(^47) Koellner (2009: 98) suggests that theΠ (^01) -sentences are ‘the analogues of observational generaliza-
tions’, in that they ‘can be definitely refuted but never definitely verified’.
(^48) Indeed, Koellner (2009: 98) suggests that ‘for _any_ arithmetical sentence _φ_ , the choice between PA+ _φ_
and PA+ ¬ _φ_ is not one of mere expedience.’ This raises the question of why we stop at claims about the
natural numbers, and do not continue into claims about the reals. The operational reason for this exclusion
is that strong extensions of set theory disagree precisely about the second-order structure of the reals.


```
5.7. interpretability and arithmetical equivalence 125
```
There may, though, be a way around this. As Steel emphasises, the mutually
interpretable extant extensions of set theory do, in fact, agree on _all_ arithmetical
consequences.^49 So we could, perhaps, continue to follow Koellner’s project for in-
voking mutual interpretability, if we replace his invocation of Guaspari–Lindström
in step (a) with a less formal, but initially plausible claim, that for all the natural
cases in (current) set theory, two extensions of the usual set-theoretic axioms are
mutually interpretable iff they agree on all the same arithmetical sentences.
However, this suggestion involves the use of the vague term ‘natural’, and there
might be different understandings of what counts as ‘natural’ in this context. To
show how this might cause problems, we will introduce the idea of a ‘one-and-a-
half-order’ theory.
Where _T_ is a first-order theory, let _T_ 1.5be the second-order theory which re-
places _T_ ’s schemas by axioms, but which only includes the _Predicative_ Comprehen-
sion Schema of §1.11. So, for example, PA1.5has the Induction Axiom from PA 2 ,
but its comprehension principle only includes comprehension for first-order for-
mulas (this theory is usually called ACA 0 ).^50 Equally, ZFC1.5has the Separation
and Replacement Axioms from ZFC 2 , but restricted comprehension (this theory
is normally called NBG).^51 It is easy to see that _T_ 1.5is a conservative extension of
_T_ for first-order formulas.^52 Hence, where we take _T_ to be PA or ZFC itself, _T_ and
_T_ 1.5prove all the same arithmetical sentences.
Importantly, though, _T_ and _T_ 1.5are not always mutually interpretable. This can
arise because, in paradigmatic cases, _T_ 1.5is finitely axiomatisable, whereas _T_ is not
finitely axiomatisable (this happens for both PA and ZFC).^53 Now, this is not a vio-
lation of the Guaspari–Lindström Theorem, because _T_ 1.5is not an extension of its
first-order counterpart _T_ in the same signature as _T_.^54 Nonetheless, one-and-a-half-
order theories provide ‘natural’ cases where _sameness of arithmetical consequences_
diverges from mutual interpretability.
This suggests that Koellner’s project for selecting axioms of set theory should
not be understood in terms of mutual interpretability, but instead as follows:

```
(a′) for a given class of (strong) extensions of set theory, which have all the same
```
(^49) Feferman, H. M. Friedman, et al. (2000: 427). This is because these interpretations are usually
provided by inner models, which agree on allΣ^12 -sentences by the Shoenfield Absoluteness Theorem (see
Jech 2003: 490).
(^50) See Simpson (2009:i.3 pp.6ff) for a formal definition of ACA 0. The origins of ACA 0 go back to
Weyl; see Dean and Walsh (2017) for historical details.
(^51) For references to original work of von Neumann, Gödel, and Bernays, see Mendelson (1997: ch.4).
(^52) This is because any _M_ of _T_ can be expanded into a model _T_ 1.5by taking as the second-order objects
all the subsets of _M_ which are first-order definable over _M_. In the terminology of Chapter 3, what we
are appealing to here is that expansion-conservation implies consequence-conservation (see Definition 3.4
and Definition 3.3).
(^53) See Simpson (2009: Lemmaviii .1.5 p.311) for a proof of the finite axiomatisability of ACA 0. See
Mendelson (1997: Proposition 4.4) for the key step in the proof of the finite axiomatisability of NBG.
(^54) And because _T_ 1.5is not essentially reflexive. See footnote 45.


126 sameness of structure and theory

```
arithmetical consequences as one another, show that they agree with every-
thing we hold true on the natural numbers; and then
(b′) choose a particular axiom from that class, on the basis of ‘theoretical reasons’
such as unity and simplicity.
```
We think this would amount only to a minor revision of Koellner’s project.
Nevertheless, if we were looking to Koellner’s project for a reason to think that
the notion of (mutual) _interpretability_ tracks something of prior philosophical in-
terest, then there is a serious problem here. To illustrate further, consider Steel’s
statement that ‘what we are trying to maximize here is the _interpretative power_ of our
set theory.’^55 For theories to which the Guispari–Lindström theorem applies, inter-
pretative power aligns with a natural prior notion of deductive strength: given such
theories, _T_ and _T_ ∗, the theorem implies that _T_ ∗interprets but is not interpretable
in _T_ iff the Π^01 -consequences of _T_ ∗are a strict superset of those of _T_. But, as the
case of _T_ 1.5and _T_ shows, this does not hold for theories in general: _T_ 1.5interprets
but is not always interpretable in _T_ , and yet they have exactly the same deductive
strength when it comes to their first-order consequences. Why, then, should we
follow Steel in seeking to maximise interpretative power?
In some situations, an answer is obvious: if we are sure that _T_ ∗is consistent, then
we can be sure of the consistency of any theories which _T_ ∗interprets. This seems to
have been why Gauss (and others) attached such great significance to the interpre-
tation of the complex numbers in the real numbers: they were certain that there was
a model of the real numbers—some notion of quantity that was in good standing—
and their interpretation then gave them confidence that there was a model of the
complex numbers.^56 But in the particular case of set theory, nothing similar can
be said. After all, it is not obvious that there is anything like an intended model of
the wildly largest large cardinal axioms,^57 and it is surely _these_ axioms of which we
should be less certain.

### 5.8 Interpretability and transfer of proof

In §§5.6–5.7 we considered some rather ambitious philosophical programmes. We
will end the chapter by considering a more parochial explanation of why mathe-
maticians seek and discover interpretations: because _an interpretation allows us to_

(^55) Feferman, H. M. Friedman, et al. (2000: 423).
(^56) Ewald (1996: v.1 p.310) and Gauss (1863–1929: v.2 p.174). For Gauss’s own subsequent reservations
about the significance of the geometric interpretation of the complex numbers, see Schlesinger’s summary
(in Gauss 1863–1929: v.10 pt.2 p.56).
(^57) Obviously we should mention the inner model programme, which (roughly stated) attempts to show
that variations on Gödel’s constructible hierarchy that admit large cardinals can be ‘built from below by
well-understood operations’ (Jensen 1995: 402). Since Steel is an eminent inner model theorist, perhaps
the thought behind his ‘maximise interpretability strength’ comment is that one ought to find inner models
‘built from below’ which satisfy theories of higher and higher interpretability strength.


```
5.8. interpretability and transfer of proof 127
```
_transfer a proof from one setting into another_. This is a very natural thought. For ex-
ample, speaking of the mutual interpretability of PA and ZFfin(see §5.5), Just and
Weese write that ‘one can thus think of the theorems provable in PA as precisely
the theorems about hereditarily finite sets that are provable without employing the
notion of an infinite set.’^58
This idea has been especially emphasised for a certain kind of interpretation. Let
us define an interpretation _I_ of anL-theory _T in itself_ to be a _duality_ iff _T_ proves
that( _φI_ ) _I_ ↔ _φ_. Using the terminology of §5.5, this condition guarantees that _T_
faithfully interprets itself, i.e. that _T_ ⊢ _φ_ iff _T_ ⊢ _φI_.^59 When the duality _I_ is clear
from context, we call _φI_ the _dual_ of _φ_. Hence, when the interpretation is a duality,
the provability of a theorem aligns with the provability of its dual.
The most famous example of a duality is from projective geometry, where the in-
terpretation is given by swapping the words ‘point’ and ‘line’, and ‘lies on the same
line’ and ‘shares a common point’.^60 Another well-known example comes from cat-
egory theory, where the interpretation is provided by switching the expression ‘the
domain of _f_ is _a_ ’ with ‘the codomain of _f_ is _a_ ’ and vice-versa.^61 Speaking of how
duality in category theory allows us to prove only results about limits and auto-
matically get results about colimits, or to prove only results about products and au-
tomatically get results about coproducts, Simmons writes: ‘by using the opposite
category [...] we can make precise this left-right symmetry, and halve the work.’^62
But in a recent paper, Detlefsen has urged caution as to this understanding of the
significance of dualities.^63 He suggests that, whatever might be gained by ‘halving
the work’ via the duality, something equally important might be lost by not devel-
oping the dual proof ‘directly’; that is, by not building up the relevant concepts,
motivating examples, lemmas, and other results which are preliminary to the dual
proof. He focusses his discussion around projective duality, but the point seems to
generalise to any duality (in our sense). And, in support of Detlefsen’s concern, we
note that, in category theory, it is still important to teach products and coproducts
as separate constructions, and for students to learn how to work with both.
Detlefsen’s point concerns dualities; but since dualities are a specific case of faith-
ful interpretations, it is worth considering how to apply his point to faithful interpre-
tations more generally. So: suppose we have a faithful interpretation _I_ ofL-theory

(^58) Just and Weese (1997: 54). But see our remarks about finite set theory and number theory after
Proposition 5.9.
(^59) The left-to-right direction follows from the definition of an interpretation. For the right-to-left di-
rection, suppose that _T_ ⊢ _φI_ ; then by the definition of an interpretation, we have _T_ ⊢( _φI_ ) _I_ ; and hence
_T_ ⊢ _φ_ by the provable equivalence of( _φI_ ) _I_ ↔ _φ_.
(^60) See e.g. Veblen and Young (1965: ch.1) or Hartshorne (1967: ch.4).
(^61) See e.g. Mac Lane (1998: §ii .1) or Awodey (2010: §3.1).
(^62) See Simmons (2011: 71). For sentiments to this effect about duality in projective geometry, see the
many quotations and references in the introductory sections to Detlefsen (2014).
(^63) Detlefsen (2014).


128 sameness of structure and theory

_T_ inL-theory _T_ ∗. Then given anyL-sentence _φ_ , we have two ways to establish
the _T_ -derivability of _φ_ :

```
(i)we can try to develop a T -proof of φ ; or
(ii)we can try to develop a T ∗-proof of φI.
```
The faithful interpretation, _I_ , might be thought valuable precisely because it makes
option (ii) available. But now the Detlefsen-like worry arises: leaning on _I_ comes
at the cost of not learning how to develop a _T_ -proof of _φ_.
Here is a quick way to make the worry vivid. Given our interpretation _I_ and some
_T_ ∗-proof of _φI_ , we know _that there is_ a _T_ -proof of _φ_. But we do not necessarily _have_
such a proof. So even if we get two _theorems_ for the price of one, we do not get two
_proofs_.
In the general setting of faithful interpretations, we can bolster this point with
a technical observation. If _T_ ∗interprets _T_ via _I_ and _π_ is a _T_ -proof of _φ_ , then _I_
provides an effective procedure for delivering a _T_ ∗-proof of _φI_ : just apply _I_ to the
_T_ -axioms in _π_ , and then appeal to the fact that interpretations act compositionally
on logical connectives and hence on logical inferences used in _π_. However, a _faithful
interpretation_ offers no such guarantee in the opposite direction. For, to say that _T_ ∗
_faithfully_ interprets _T_ , is just to add the bare existential claim that if there is a _T_ ∗-
proof _π_ ∗of _φI_ then there is a _T_ -proof _π_ of _φ_. That bare existential provides no
guarantee that there is any relation between the complexity of _π_ ∗and _π_ , nor that
there is any effective procedure for obtaining _π_ from _π_ ∗to _π_.
Now, there are ways to blunt this objection. Most known cases of faithful inter-
pretations result from combining interpretations in various ways, and so provide a
guarantee in both directions. For instance, in the case of dualities, if _π_ ∗is a _T_ -proof
of _φI_ , then applying _I_ to _π_ ∗yields a _T_ -proof of( _φI_ ) _I_ , and by combining this with a
_T_ -proof of( _φI_ ) _I_ ↔ _φ_ we get our _T_ -proof _π_ of _φ_. In the case of biinterpretations, if
_π_ ∗is a _T_ ∗-proof of _φI_ , applying _J_ to _π_ ∗yields a _T_ -proof of( _φI_ ) _J_ , and by combining
this with a _T_ -proof _π_ of( _φI_ ) _J_ ↔ _φ_ we get a _T_ -proof of _φ_.^64
Moreover, in most known cases, these procedures for transforming _π_ ∗into _π_ are
not just _effective_ , but tractable. Visser and Verbrugge introduce the following species
of interpretation: an interpretation _I_ of _T_ into _T_ ∗is _feasible_ if there is a polynomial
_p_ such that for all the axioms _φ_ of _T_ there is a proof _π_ ∗of _φI_ from _T_ ∗with∣ _π_ ∗∣≤
_p_ (∣ _φ_ ∣). (Here,∣⋅∣is the length of the formula, where we measure length of proof by
summing the lengths of the lines of the proof.)^65 It will follow from this that for all
proofs _π_ of _φ_ from _T_ there is a proof _π_ ∗of _φI_ from _T_ ∗with∣ _π_ ∗∣≤ _p_ (∣ _π_ ∣). Further,

(^64) Recall that in Proposition 5.9 we showed that biinterpretations are faithful. The proof of this Proposi-
tion shows that we have a _T_ -proof of the equivalence( _φI_ ) _J_ ↔ _φ_ , because isomorphism implies elementary
equivalence.
(^65) See Verbrugge (1993: 389). Note, though, that claims about length of proof are heavily dependent
on the proof-system being employed, and that Verbrugge works with a Hilbert-style proof system.


```
5.9. conclusion 129
```
Verbrugge notes that if the interpreted theory is finite, then the interpretation is
automatically feasible,^66 and that:

All in all it seems that the only examples of theories [which are interpretable but not fea-
sibly so] are contrived theories obtained by fixed-point constructions [...] It would be
nice to find a more natural counterexample.^67

So, in ‘natural’ cases, it may be possible to insist that the value of a faithful interpre-
tation _I_ is as follows: given a _T_ ∗-proof of _φI_ , we can obtain a _T_ -proof of _φ_.
Nevertheless, three barriers to the utility of faithful interpretations remain. First:
whilst one _can_ obtain a _T_ -proof of _φ_ , we may well not _bother_. And if we do not
bother, then we are still relying on the bare existential, doubling the number of
theorems we have but not the number of proofs and so, perhaps, not our level of
understanding. Second: actually obtaining the _T_ -proof of _φ_ will not be as simple
as running some (feasible) algorithm on the _T_ ∗-proof _φI_. After all, mathematicians
rarely offer fully formalised proofs—they provide informal, discursive proofs which
omit tedious or routine steps—so that there can be serious work to do in obtain-
ing a machine-readable _T_ ∗-proof (and turning the formal _T_ -proof into something
human-readable). But third, and most interesting: if _π_ is obtained from _π_ ∗just by
an effective translation, we might wonder whether _π_ and _π_ ∗are genuinely different
proofs.
In the specific case of projective duality, indeed, Detlefsen argues that they will
_not_ be genuinely different.^68 Recall that projective duality is obtained just by by
swapping the words ‘point’ and ‘line’, and ‘lies on the same line’ and ‘shares a com-
mon point’. Consequently, _π_ is obtained from _π_ ∗just by trivially permuting the
non-logical primitives. As such, Detlefsen denies that _π_ and _π_ ∗can count as differ-
ent proofs, in anything other than a purely syntactic sense. We entirely agree with
Detlefsen in the case of projective duality, but we would urge caution before gener-
alising this point to _any_ faithful interpretation. After all, in the more general setting,
there is no guarantee that _π_ and _π_ ∗will differ in such a trivial way. Nonetheless,
and crucially, there is no _guarantee_ that a faithful interpretation always yields two
_interestingly_ different proofs for the price of one.

### 5.9 Conclusion

We have canvassed some of the most prominent notions of sameness of structure
and sameness of theory that populate mathematical logic. One clear message is that
there is a dizzying array of possibilities here. Even after the choice of logic has been

(^66) Verbrugge (1993: 389).
(^67) Verbrugge (1993: 401).
(^68) Detlefsen (2014: §6).


130 sameness of structure and theory

made, and even after one has settled upon looking at structures as opposed to the-
ories, and even after one has fixed whether equivalence relations are allowed to go
proxy for identity and whether objects can be interpreted as _n_ -tuples of objects and
whether parameters are allowed, some fundamental decisions remain. To use an
image: interpretability merely requires that my interpreting perspective can mimic
certain aspects of your interpreted perspective; mutual interpretability requires that
each of us can mimic the other; and stronger notions, like biinterpretability and
faithful interpretability, also require (in different ways) that these copies be accu-
rate and indeed verifiability so.
Put this way, it may well seem that these notions of interpretation _must_ track
something (or several things) of chief philosophical importance. But one of the
main messages of this chapter is that it is remarkably difficult to defend anything
beyond the most parochial versions of this idea.
The parochial point is just that interpretations of theories result in proofs from
one area being translated into proofs in another area. There are obvious reasons
why this can be useful, and especially so if the two areas initially seemed only to
be distantly related. (It _was_ important and useful to discover that geometry and
algebra are closely related, and similarly for number theory and finite set theory.)
However, in the last three sections of this chapter we surveyed some more ambi-
tious reasons for caring about interpretations. There, we found much less cause for
optimism. Interpretability has no clear role to play in truth-transfer; no clear role
to play in safeguarding arithmetical consequences; and it is not guaranteed to give
you ‘two proofs for the price of one’, in anything but the most parochial way.

### 5.a Arithmetisation of syntax and incompleteness

In this chapter, we have mentioned arithmetisation of syntax, and Gödel’s theo-
rems. We sketch the main idea behind arithmetisation in this appendix, and state
versions of Gödel’s two incompleteness theorems.
Given a fixed stock of symbols, we can easily define a primitive recursive function
which encodes every (finite) string of such symbols with a unique natural number.
Here is a very simple approach. First, we enumerate the symbols in our fixed stock,
_s_ 1 , _s_ 2 , _s_ 3 , .... Then, when we encounter the string:

```
σ = si 1 si 2 si 3 ... sin
```
we encode _σ_ with a number⌜ _σ_ ⌝, defined thus:

```
⌜ σ ⌝= π 1 i^1 × πi 22 × πi 33 ×...× πinn
```
where _πm_ is the _m_ thprime number. By the Fundamental Theorem of Arithmetic—
that every number has a unique prime factorisation—this coding function from


```
5.a. arithmetisation of syntax and incompleteness 131
```
strings to natural numbers is an injection. So every string of symbols from our fixed
finite stock can be treated as a natural number without loss.
Coding of deductions proceeds similarly. We can think of a deduction simply as
a sequence of sentences _σ_ 1 , ..., _σn_ , _σn_ + 1 , with _σn_ + 1 the conclusion, and then simply
encode that deduction with the number:

```
π ⌜ 1 σ^1 ⌝× π ⌜ 2 σ^2 ⌝×...× π ⌜ nσn ⌝× π ⌜ nσ + n 1 +^1 ⌝
```
Now, the coding function we just outlined uses exponentiation, which is not a
primitive of PA. This poses no real obstacle, since exponentiation can be defined
in PA. However, technical-cum-philosophical subtleties can arise if we want to
carry out coding in theories which are _weaker_ than PA. For example: Q is strong
enough to capture any recursive function, in the sense that, for any recursive func-
tion _f_ : _ω_ Ð→ _ω_ , there is a formula _φ_ ( _x_ , _y_ )such that:^69

```
f ( n )= m iff Q⊢ φ ( Sn ( 0 ), Sm ( 0 )), and
f ( n )≠ m iff Q⊢¬ φ ( Sn ( 0 ), Sm ( 0 ))
```
Since our coding function is itself recursive, Q also captures our coding function
with some formula _φ_ ( _x_ , _y_ ). However, Q is so weak that it can prove almost nothing
_about_ this formula. Consequently, it is potentially misleading to say that Q is suf-
ficiently strong to _express_ syntactic notions; rather, in the spirit of Bezboruah and
Shepherdson, we might say that Q defines an _algebraic_ notion, which only expresses
syntactic notions when realised in stronger theories (or in certain models).^70 One
such stronger theory would of course be PA, but theories between Q and PA might
suffice. For example, the theory _I_ Σ 0 + _exp_ consists of: the axioms of Q, a primitive
exponentiation function symbol along with the basic recursive definition of expo-
nentiation in terms of multiplication, and induction for Σ 0 -formulas.^71 This (very
weak) theory might be sufficiently strong that it can reasonably be said to _express_
syntactic notions.
In any case, we can now state the two incompleteness theorems. We start with a
version of the first incompleteness theorem:^72

Theorem 5.13: _No consistent, computably enumerable theory which interprets Robin-
son’s_ Q _is arithmetically complete._

(^69) See e.g. Hájek and Pudlák (1998: 155ff) and Rautenberg (2010: 210ff).
(^70) See Bezboruah and Shepherdson (1976: 504).
(^71) I.e. formulas containing no unbounded quantifiers; see Hájek and Pudlák (1998: 37ff).
(^72) For Gödel’s original paper, see Gödel (1986: 144ff); this version employs strengthenings due to
Rosser (1936) and Craig (1953). Modern presentations of the theorem can be found in any number of
places, including Enderton (2001: 236) and Rautenberg (2010: 252).


132 sameness of structure and theory

Here, we say that _T_ is _computably enumerable_ iff there is an algorithm which sequen-
tially enumerates all of _T_ ’s members. So, when _T_ is a computably enumerable the-
ory, the algorithm outputs a list of the sentences in _T_ , and every sentence in _T_ will
eventually be listed at some point. We say that _T_ is _arithmetically incomplete_ iff there
is some _φ_ in Q’s signature, such that _φI_ ∉ _T_ and¬ _φI_ ∉ _T_ (where _I_ is _T_ ’s interpreta-
tion of Q).
Here is a version of Gödel’s Second Incompleteness Theorem:^73

Theorem 5.14: _No consistent, computably enumerable theory T which interprets_ Q
_proves_ Con( _T_ )_._

Here, Con( _T_ )is _T_ ’s interpretation of Q’s arithmetisation of the claim that
no contradiction can be deduced from _T_ ’s axioms, i.e. something of the form
∀ _x_ ¬Prf _T_ ( _x_ ,⌜⌝).

### 5.b Definitional equivalence in second-order logic

We now show that definitional equivalence in second-order logic is more coarse-
grained than in first-order logic, as mentioned in §5.2.

Proposition 5.15: _Let N be the natural numbers in the signature consisting just of zero
and successor. Let Z be the integers in the same signature. An isomorphic copy of Z is
second-order definitionally equivalent to N._

_Proof._ As discussed after Definition 1.10 in §1.a, we can define<,+, and×in _N_ using
second-order resources. The same holds for _Z_. So we can employ these notions
in both models and in their isomorphic copies. Since the result only concerns an
isomorphic copy of _Z_ , we can assume (by a Push-Through Construction) that the
domain and operations on _Z_ are computable subsets of the natural numbers.
Let _M_ be an isomorphic copy of _Z_ with with the same underlying domain as
_N_ and with an isomorphism _h_ : _M_ Ð→ _Z_ given by _h_ ( 2 _k_ )= _k_ and _h_ ( 2 _k_ + 1 )=
−( _k_ + 1 ). That is, _M_ is the result of pushing through _h_ −^1 from _Z_ onto the natural
numbers.
Now all _M_ ’s structure is trivially definable in _N_ , since all _M_ ’s structure is the
result of pushing through a computable map. So it suffices to show that _N_ ’s struc-
ture is definable in _M_. Since these two models have the same interpretation of 0,
we only need to show how to define _N_ ’s successor in _M_. For this we note that the
following claims are equivalent:

(^73) For a proof and a more precise statement, see e.g. Hájek and Pudlák (1998: Theorem 2.21 p.164).


```
5.b. definitional equivalence in second-order logic 133
```
```
(1) N ⊧ n = m + 1
(2) Z ⊧( h ( n )+ h ( m )=− 1 ∧ h ( n )< h ( m ))∨( h ( n )+ h ( m )= 0 ∧ h ( m )<
0 < h ( n ))
(3) M ⊧( n + m =− 1 ∧ n < m )∨( n + m = 0 ∧ m < 0 < n )
```
We check each claim in turn.
_(2)_ ⇔ _(3)._ Trivial, because _h_ is an isomorphism
_(1)_ ⇒ _(2)._ Suppose that (1) holds. If _m_ is even in _N_ then _m_ = 2 _k_ and _n_ = 2 _k_ +1 for
some natural number _k_ , and then by definition of _h_ we have that _h_ ( _m_ )= _h_ ( 2 _k_ )= _k_
and _h_ ( _n_ )= _h_ ( 2 _k_ + 1 )=−( _k_ + 1 ), so _Z_ ⊧ _h_ ( _n_ )+ _h_ ( _m_ )=− 1 ∧ _h_ ( _n_ )< _h_ ( _m_ ). If _m_
is odd in _N_ then _m_ = 2 _k_ +1 and _n_ = 2 _k_ +2 for some natural number _k_ , and similarly
we have that _h_ ( _m_ )= _h_ ( 2 _k_ + 1 )=−( _k_ + 1 )<0 and _h_ ( _n_ )= _h_ ( 2 _k_ + 2 )= _k_ + 1 >0.
Thus _Z_ ⊧ _h_ ( _n_ )+ _h_ ( _m_ )= 0 ∧ _h_ ( _m_ )< 0 < _h_ ( _n_ )again.
_(2)_ ⇒ _(1)._ Suppose first that _Z_ ⊧ _h_ ( _n_ )+ _h_ ( _m_ )=− 1 ∧ _h_ ( _n_ )< _h_ ( _m_ ). If _m_ were
odd, say _m_ = 2 _k_ +1 for some natural number _k_ , then _h_ ( _m_ )= _h_ ( 2 _k_ + 1 )=−( _k_ + 1 ),
and so _h_ ( _n_ )= _k_ , contradicting that _h_ ( _n_ )< _h_ ( _m_ ). Hence _m_ must rather be even,
say _m_ = 2 _k_ for some natural number _k_. Then _h_ ( _m_ )= _h_ ( 2 _k_ )= _k_ and so _h_ ( _n_ )=
−( _k_ + 1 )and _n_ = 2 _k_ +1 and so indeed _N_ ⊧ _n_ = _m_ +1. Supposing alternatively that
_Z_ ⊧ _h_ ( _n_ )+ _h_ ( _m_ )= 0 ∧ _h_ ( _m_ )< 0 < _h_ ( _n_ ), one can conclude by a similar argument
that _N_ ⊧ _n_ = _m_ +1.

Proposition 5.16: _Let Z and N be as in Proposition 5.15. No isomorphic copy of Z is
first-order definitionally equivalent to N._

_Proof._ For reductio, suppose there is an isomorphic copy _M_ of _Z_ such that _M_ is
first-order definitionally equivalent to _N_. Then the successor function of _M_ , which
we write as _SM_ , is _N_ -definable. So we have an _N_ -definable function _σ_ : _N_ Ð→ _N_
such that _σ_ ( _n_ )= _m_ iff _M_ ⊧ _S_ ( _n_ )= _m_.
Since _SM_ is a bijection on _M_ , clearly _σ_ is a bijection. So _σ_ −^1 is an _N_ -definable
bijection. For readability, we write _π_ in place of _σ_ −^1 , noting that _π_ ( _n_ )= _m_ iff _M_ ⊧
_n_ = _S_ ( _m_ ).
Now for each natural number _k_ , consider the following formula, where we em-
ploy the numeral-notation from equation ( _numerals_ ) of §1.13:

```
φk ( x , y ):= ⋁
0 ≤ i < k
```
```
( Si ( x )= y ∨ y = Si ( x ))
```
On _N_ , this defines the notion of∣ _x_ − _y_ ∣≤ _k_ , where∣⋅∣denotes the ordinary absolute
value function on the natural number.
We now argue that there is a natural number _K_ such that∣ _σ_ ( _n_ )− _n_ ∣≤ _K_ for all
natural numbers _n_. For reductio, suppose otherwise, i.e. that for all _K_ there is a
natural number _n_ such that∣ _σ_ ( _n_ )− _n_ ∣> _K_. Where _c_ is some new constant, consider
the theory _T_ which consists of all the sentences true on _N_ in the signature{0, _S_ },


134 sameness of structure and theory

together with all the axioms of the form¬ _φK_ ( _σ_ ( _c_ ), _c_ )as _K_ ranges over the natural
numbers. (In this, we are viewing _σ_ as an abbreviation for the formula defining it in
_N_ .) By the Compactness Theorem 4.1, _T_ has a model. Using the notion of a ‘chain’
from Proposition 3.10, the interpretation of _c_ must be on a different chain then the
interpretation of _σ_ ( _c_ ). And this is a contradiction. For _σ_ cannot now be defined
by a quantifier-free formula; but elementary results concerning _N_ show that any
_N_ -definable set _can_ be defined by a quantifier-free formula.^74
Exactly similarly, there is a natural number _K_ such that∣ _n_ − _π_ ( _n_ )∣≤ _K_ for all
natural numbers _n_. By taking the maximums of the two constants, there is a natural
number _K_ such that for all _n_ both∣ _σ_ ( _n_ )− _n_ ∣≤ _K_ and∣ _n_ − _π_ ( _n_ )∣≤ _K_. Using this
bound _K_ , two notions become _N_ -definable (here,<just stands for the ordinary
ordering on the natural numbers, as given in the metatheory):

```
σ ( n )> n iff K + n ≥ σ ( n )> n iff N ⊧
```
```
K
⋁
i = 1
```
```
σ ( n )= Si ( n )
```
```
n > π ( n ) iff K + π ( n )≥ n > π ( n ) iff N ⊧
```
```
K
⋁
i = 1
```
```
n = Si ( π ( n ))
```
As such, these two sets are _N_ -definable:

```
X ={ n ∈ N : σ ( n )> n } Y ={ n ∈ N : n > π ( n )}
```
Note that _σ_ is an injection from _X_ to _Y_. For, suppose that _n_ is in _X_ , i.e. _σ_ ( _n_ )> _n_ ;
then _σ_ ( _n_ )> _π_ ( _σ_ ( _n_ )), so that _σ_ ( _n_ )is in _Y_. Similarly, _π_ is an injection from _Y_ to _X_.
Since the two functions are inverses of one another, _σ_ is a bijection from _X_ to _Y_ , and
_π_ is a bijection from _Y_ to _X_.
We now appeal to a second elementary fact about _N_ : any _N_ -definable subset of
_N_ is either finite or _cofinite_ , where ‘cofinite’ means ‘has finite complement’.^75
Suppose first that _X_ is cofinite. Then _Y_ is also cofinite, since it is the image of an
injection _σ_ , and so _X_ ∩ _Y_ is infinite and hence cofinite. Choose the least _n_ 0 greater
than every element in _ω_ ∖( _X_ ∩ _Y_ ); then _σ_ ( _n_ )> _n_ > _π_ ( _n_ )for all _n_ ≥ _n_ 0. Now,
define the following _π_ -version of the numerals by recursion in the metatheory:

```
π^0 ( x ):= x πn +^1 ( x ):= π ( πn ( x ))
```
Note that if _π_ ( _x_ )= _x_ for some _x_ then by definition of _π_ we would have _M_ ⊧ _x_ =
_S_ ( _x_ ), a contradiction. From this and the fact that _π_ is an injection, the map _n_ ↦
_πn_ ( _x_ )is an injection when _x_ is fixed. Choose _n_ 1 such that _πn_ ( 0 )≥ _n_ 0 for all _n_ ≥ _n_ 1.
Then _σ_ ( _πn_ ( 0 ))> _πn_ ( 0 )> _π_ ( _πn_ ( 0 )), i.e. _πn_ −^1 ( 0 )> _πn_ ( 0 )> _πn_ +^1 ( 0 ), for all _n_ ≥
_n_ 1. So we have an infinite decreasing sequence of natural numbers, a contradiction.

(^74) See Marker (2002: Corollary 3.1.6 p.75).
(^75) See Marker (2002: 104).


```
5.b. definitional equivalence in second-order logic 135
```
Suppose, instead, that _X_ is finite. Then _Y_ is also finite, and so _X_ ∪ _Y_ is finite.
Choose the least _n_ 0 greater than every element in _X_ ∪ _Y_ ; then _σ_ ( _n_ )≤ _n_ ≤ _π_ ( _n_ )for
all _n_ ≥ _n_ 0. Now, define the following _σ_ -version of the numerals by recursion in the
metatheory:

```
σ^0 ( x ):= x σn +^1 ( x ):= σ ( σn ( x ))
```
As above, we can choose _n_ 1 such that _σ_ ( _σn_ ( 0 )) ≤ _σn_ ( 0 ) ≤ _π_ ( _σn_ ( 0 )), i.e.
_σn_ +^1 ( 0 )≤ _σn_ ( 0 )≤ _σn_ −^1 ( 0 )for all _n_ ≥ _n_ 1. Since the map _n_ ↦ _σn_ ( 0 )is an in-
jection, the inequalities are strict. So again we have an infinite decreasing sequence
of natural numbers, a contradiction.



## B Categoricity



Introduction to Part B

A theory is said to be _categorical_ iff all of its models are isomorphic. Part B focuses
on the technical and philosophical issues around categoricity.
We start by outlining a certain attitude to model theory, which we call _modelism_.
The modelist idea is that structure-talk, as used informally by mathematicians, is to
be understood in terms of isomorphism, in the model theorist’s sense. For exam-
ple, modelists will want to explicate talk of ‘the natural numbers’ in terms a particu-
lar isomorphism type. As such, modelists face an important doxological question:
_How can we pick out particular isomorphism types?_ This question will occupy us for
much of Part B; so we spend some time in Chapter 6 explaining the nature of (var-
ious versions of) this question, and in particular what it means to say that it is a
_doxological_ question. Chapter 6 therefore introduces not just one but two neolo-
gisms: _modelism_ and _doxology_. We apologise for the nomenclature. But the ideas
are important enough to name, and we will use these names throughout Part B.
In Chapter 7, we focus on modelists who want to pin down the isomorphism
type of the natural numbers. That aim immediately runs into two technical bar-
riers: the Compactness Theorem 4.1, which we encountered back in §4.1, and the
Löwenheim–Skolem Theorem 7.2, which we prove in §7.a. These results show that
no first-order theory with an infinite model can be categorical; all such theories
have non-standard models. In Chapter 4, non-standard models were our friends,
for they allowed us to introduce and reason with infinitesimals. Here, they seem
more scary: they threaten to leave modelists unable to explain how (if at all) hu-
mans can talk about ‘the natural numbers’.
The Compactness and Löwenheim–Skolem theorems encapsulate the expres-
sive limitations of first-order logics. Other logics, such as second-order logic with
its full semantics, are not so expressively limited. Indeed, Dedekind’s Categoric-
ity Theorem 7.3 tells us that all full models of PA 2 are isomorphic. However, it is
a subtle philosophical question, whether one is entitled to invoke the _full_ seman-
tics for second-order logic. In particular, we argue that the full semantics is out of
reach for any _moderate_ modelist (i.e. any modelist who embraces the moderate nat-
uralism which we first discussed in §2.3, which rejects any appeal to ‘mathematical
intuition’ or anything similar). Moreover, by generalising the problems concern-
ing full second-order logic, we show that moderate modelists cannot, by their own
lights, pin down ‘the natural numbers’.
In Chapter 8, we switch from numbers to sets. Again, no first-order set theory
can hope to get anywhere near categoricity, but Zermelo famously proved the _quasi_ -
categoricity of second-order set theory ZFC 2 ; i.e. that all full models of ZFC 2 are


140 introduction to part b

isomorphic, ‘so far as they go’. As in Chapter 7, we face the question of who is _entitled_
to invoke full second-order logic, and that question is as subtle as before. However,
the _quasi_ -categorical nature of Zermelo’s Theorem gives rise to some specific ques-
tions concerning the _aims_ of axiomatic set theories, which we explore. Moreover,
given the status of Zermelo’s Theorem in the philosophy of set theory, we offer a
stand-alone proof of the result in §8.a. In §§8.b–8.c, we also prove a similar quasi-
categoricity result for Scott–Potter set theory, a theory which axiomatises the idea
of an arbitrary stage of the iterative hierarchy.
The overarching moral of Chapters 7–8, however, is that _moderate_ modelists can-
not explain how they could hope to pin down any particular isomorphism type, and
so cannot deliver on their goal of explicating structure-talk in terms of isomorphism
types. This observation can lead to a kind of _model-theoretical scepticism_ ; that is, a
moderate modelist might think that model theory has shown to us that we simply
_cannot_ pick out the ‘the natural numbers’. But in Chapter 9, we present two _tran-
scendental_ arguments which show that this line of thought is incoherent.
The simple conclusion is that one cannot be a moderate modelist. But this still
leaves us with a choice between abandoning moderation and abandoning mod-
elism. In Chapters 10–12, we speculatively outline a way to save moderation by
abandoning modelism. The rough idea is to do _metamathematics without seman-
tics_ , by working deductively in higher-order logics. In Chapter 10, we discuss the
internal categoricity of arithmetic. In Chapter 11, we discuss internal categoricity
for pure set theories. We emphasise the promise of such results, stressing that they
may provide a non-semantic way to draw the boundary between algebraic and uni-
vocal theories. Finally, in Chapter 12, we explore how internal categoricity might
allow us to make certain claims about _mathematical truth_. Along the way, we out-
line an internalist attitude towards model theory _itself_ , and use this to illuminate the
cryptic conclusions of Putnam’s famous ‘Models and Reality’.
Chapters 6–12 are driven by questions about our ability to pin down mathemati-
cal entities and to articulate mathematical concepts. Chapter 13 is driven by similar
questions about our ability to pin down the semantic frameworks of our languages.
It transpires that there are not just non-standard models, but non-standard ways of
doing model theory _itself_. In more detail: whilst we normally outline a two-valued
semantics which makes sentences True or False in a model, the inference rules for
first-order logic (or faithful Henkin second-order logic) are compatible with a _four_ -
valued semantics; or anא 0 -valued semantics; or what-have-you. This gives rise to
perhaps the ‘deepest’ level of indeterminacy questions: _How can humans pin down
the semantic framework for their languages?_ This question is asked much less fre-
quently than the questions we raised in earlier chapters about e.g. the natural num-
bers or sets. But there is no good reason for this; and the dialectic surrounding these
questions is always the same.


```
introduction to part b 141
```
Readers who only want to dip into particular topics of Part B can consult the
following diagram of dependencies, whilst referring to the table of contents:

```
2.5 6.1
6.2
6.3
6.4
6.5
7.1
7.2
7.3 7.4
7.5
7.6
7.7
7.8
7.9
7.10
7.11
```
```
1.10
```
```
1.11
```
```
4.1
```
```
8.1
8.2
8.3
8.4
8.5 8.6 9.1
9.2
9.3
9.4
9.5
```
9. a

```
10.1
10.2
10.3
10.4
10.5
10.6
10.7
```
```
10.8
```
10. a

```
11.1
11.2
11.3
```
11. a 11. b 11.4
    11.5
    11.6
    12.1
12.2
12.3
12.4
12.5

```
13.1
```
```
13.4
```
```
13.3
```
```
13.2
1.11
```
```
2.5
```
```
13.5 13.7 13.8
13.6 13.9
```


