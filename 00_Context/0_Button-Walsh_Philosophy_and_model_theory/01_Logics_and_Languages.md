**Kaynak:** [[00_Context/0_Button-Walsh_Philosophy_and_model_theory/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

## 1 Logics and languages

Model theory begins by considering the relationship between languages and struc-
tures. This chapter outlines the most basic aspects of that relationship.
One purpose of the chapter will therefore be immediately clear: we want to lay
down some fairly dry, technical preliminaries. Readers with some familiarity with
mathematical logic should feel free to skim through these technicalities, as there are
no great surprises in store.
Before the skimming commences, though, we should flag a second purpose of
this chapter. There are at least three rather different approaches to the semantics
for formal languages. In a straightforward sense, these approaches are technically
equivalent. Most books simply choose one of them without comment. We, how-
ever, lay down all three approaches and discuss their comparative strengths and
weaknesses. Doing this highlights that there are philosophical discussions to be had
from the get-go. Moreover, by considering what is invariant between the different
approaches, we can better distinguish between the merely idiosyncratic features of
a particular approach, and the things which really matter.
One last point, before we get going: tradition demands that we issue a caveat.
Since Tarski and Quine, philosophers have been careful to emphasise the impor-
tant distinction between _using_ and _mentioning_ words. In philosophical texts, that
distinction is typically flagged with various kinds of quotation marks. But within
model theory, context almost always disambiguates between use and mention.
Moreover, including too much punctuation makes for ugly text. With this in mind,
we follow model-theoretic practice and avoid using quotation marks except when
they will be especially helpful.

### 1.1 Signatures and structures

We start with the idea that formal languages can have primitive vocabularies:

Definition 1.1: _A_ signature _,_ L _, is a set of symbols, of three basic kinds: constant sym-
bols, relation symbols, and function symbols. Each relation symbol and function symbol
has an associated number of_ places _(a natural number), so that one may speak of an
n-place relation or function symbol._


8 logics and languages

Throughout this book, we use script fonts for signatures. Constant symbols should
be thought of as _names_ for entities, and we tend to use _c_ 1 , _c_ 2 , etc. Relation symbols,
which are also known as predicates, should be thought of as picking out _properties_
or _relations_. A two-place relation, such as _x is smaller than y_ , must be associated
with a two-place relation symbol. We tend to use _R_ 1 , _R_ 2 , etc. for relation symbols.
Function symbols should be thought of as picking out functions and, again, they
need an associated number of places: the function of _multiplication on the natural
numbers_ takes two natural numbers as inputs and outputs a single natural number,
so we must associate that function with a two-place function symbol. We tend to
use _f_ 1 , _f_ 2 , etc. for function symbols.
The examples just given— _being smaller than_ , and _multiplication on the natural
numbers_ —suggest that we will use our formal vocabulary to make determinate
claims about certain objects, such as people or numbers. To make this precise,
we introduce the notion of anL _-structure_ ; that is, a structure whose signature is
L. AnL-structure, _M_ , is an underlying domain, _M_ , together with an assignment
ofL’s constant symbols to elements of _M_ , ofL’s relation symbols to relations
on _M_ , and ofL’s function symbols to functions over _M_. We always use calligraphic
fonts _M_ , _N_ , ... for structures, and _M_ , _N_ , ... for their underlying domains. Where _s_
is anyL-symbol, we say that _sM_ is the object, relation or function (as appropriate)
assigned to _s_ in the structure _M_. This informal explanation of anL-structure is
always given a set-theoretic implementation, leading to the following definition:

Definition 1.2: _An_ L-structure _, M, consists of:_

_- a non-empty set, M, which is the underlying domain of M,
- an object cM_ ∈ _M for each constant symbol c from_ L _,
- a relation RM_ ⊆ _Mnfor each n-place relation symbol R from_ L _, and
- a function fM_ : _Mn_ Ð→ _M for each n-place function symbol f from_ L_._

As is usual in set theory, _Mn_ is just the set of _n_ -tuples over _M_ , i.e.:^1

```
Mn ={( a 1 , ..., an ): a 1 ∈ M and ... and an ∈ M }
```
Likewise, we implement a function _g_ : _Mn_ Ð→ _M_ in terms of its set-
theoretic graph. That is, _g_ will be a subset of _Mn_ +^1 such that if( _x_ 1 , ..., _xn_ , _y_ )and
( _x_ 1 , ..., _xn_ , _z_ )are elements of _g_ then _y_ = _z_ and such that for every( _x_ 1 , ..., _xn_ )in _Mn_
there is _y_ in _M_ such that( _x_ 1 , ..., _xn_ , _y_ )is in _g_. But we continue to think about func-
tions in the normal way, as maps sending _n_ -tuples of the domain, _Mn_ , to elements
of the co-domain, _M_ , so tend to write( _x_ 1 , ..., _xn_ , _y_ )∈ _g_ just as _g_ ( _x_ 1 , ..., _xn_ )= _y_.

(^1) The full definition of _Xn_ is by recursion: _X_ (^1) = _X_ and _Xn_ + (^1) = _Xn_ × _X_ , where _A_ × _B_ ={( _a_ , _b_ ):
_a_ ∈ _A_ and _b_ ∈ _B_ }. Likewise, we recursively define ordered _n_ -tuples in terms of ordered pairs by setting e.g.
( _a_ , _b_ , _c_ )=(( _a_ , _b_ ), _c_ ).


```
1.2. first-order logic: a first look 9
```
Given the set-theoretic background,L-structures are individuated _extension-
ally_ : they are identical iff they have exactly the same underlying domain and make
exactly the same assignments. So, where _M_ , _N_ areL-structures, _M_ = _N_ iff both
_M_ = _N_ and _sM_ = _sN_ for all _s_ fromL. To obtain different structures, then, we can
either change the domain, change the interpretation of some symbol(s), or both.
Structures are, then, individuated rather finely, and indeed we will see in Chapters
2 and 5 that this individuation is too fine for many purposes. But for now, we can
simply observe that there are many, _many_ different structures, in the sense of Defi-
nition 1.2.

### 1.2 First-order logic: a first look

We know what (L-)structures are. To move to the idea of a _model_ , we need to think
of a structure as making certain sentences true or false. So we must build up to the
notion of a sentence. We start with their syntax.

```
Syntax for first-order logic
```
Initially, we restrict our attention to _first-order sentences_. These are the sentences we
obtain by adding a basic starter-pack of logical symbols to a signature (in the sense
of Definition 1.1). These logical symbols are:

- variables: _u_ , _v_ , _w_ , _x_ , _y_ , _z_ , with numerical subscripts as necessary
- the identity sign:=
- a one-place sentential connective:¬
- two-place sentential connectives:∧,∨
- quantifiers:∃,∀
- brackets:(,)

We now offer a recursive definition of the syntax of our language:^2

Definition 1.3: _The following, and nothing else, are first-order_ L-terms _:_

_- any variable, and any constant symbol c from_ L

(^2) A pedantic comment is in order. The symbols ‘ _t_ 1 ’ and ‘ _t_ 2 ’ are not being used here as expressions in
the object language (i.e. first-order logic with signatureL). Rather, they are being used as expressions of
the metalanguage, within which we describe the syntax of first-orderL-terms andL-formulas. Similarly,
the symbol ‘ _x_ ’, as it occurs in the last clause of Definition 1.3, is not being used as an expression of the object
language, but in the metalanguage. So the final clause in this definition should be read as saying something
like this. _For any variable and any formulaφ which does not already contain a concatenation of a quantifier
followed by that variable, the following concatenation is a formula: a quantifier, followed by that variable,
followed byφ_. (The reason for this clause is to guarantee that e.g.∃ _v_ ∀ _vF_ ( _v_ )is not a formula.) We could
flag this more explicitly, by using a different font for metalinguistic variables (for example). However, as
with flagging quotation, we think the additional precision is not worth the ugliness.


10 logics and languages

_- f_ ( _t_ 1 , ..., _tn_ ) _, for any_ L _-terms t_ 1 , ..., _tnand any n-place function symbol f_
    _from_ L

_The following, and nothing else, are first-order_ L-formulas _:_

_- t_ 1 = _t_ 2 _, for any_ L _-terms t_ 1 _and t_ 2
_- R_ ( _t_ 1 , ..., _tn_ ) _, for any_ L _-terms t_ 1 , ..., _tnand any n-place relation symbol R_
    _from_ L
_-_ ¬ _φ, for any_ L _-formula φ
-_ ( _φ_ ∧ _ψ_ ) _and_ ( _φ_ ∨ _ψ_ ) _, for any_ L _-formulas φ and ψ
-_ ∃ _xφ and_ ∀ _xφ, for any variable x and any_ L _-formula φ which contains neither_
    _of the expressions_ ∃ _x nor_ ∀ _x._

_Formulas of the first two sorts—i.e. terms appropriately concatenated either with the
identity sign or an_ L _-predicate—are called_ atomicL-formulas_._

As is usual, for convenience we add two more sentential connectives,→and↔,
with their usual abbreviations. So,( _φ_ → _ψ_ )abbreviates(¬ _φ_ ∨ _ψ_ ), and( _φ_ ↔ _ψ_ )
abbreviates(( _φ_ → _ψ_ )∧( _ψ_ → _φ_ )). We will also use some extremely common
bracketing conventions to aid readability, so we sometimes use square brackets
rather than rounded brackets, and we sometimes omit brackets where no ambiguity
can arise.
We say that a variable is _bound_ if it occurs within the scope of a quantifier, i.e. we
have something like∃ _x_ (... _x_ ...). A variable is _free_ if it is not bound. We now say
that anL _-sentence_ is anL-formula containing no free variables. When we want
to draw attention to the fact that some formula _φ_ has certain free variables, say _x_
and _y_ , we tend to do this by writing the formula as _φ_ ( _x_ , _y_ ). We say that _φ_ ( _x_ , _y_ )is a
formula _with free variables displayed_ iff _x_ and _y_ are the _only_ free variables in _φ_. When
we consider a sequence of _n_ -variables, such as _v_ 1 , ..., _vn_ , we usually use overlining
to write this more compactly, as _v_ , leaving it to context to determine the number
of variables in the sequence. So if we say ‘ _φ_ ( _x_ )is a formula with free variables dis-
played’, we mean that all and only its free variables are in the sequence _x_. We also use
similar overlining for other expressions. For example, we could have phrased part
of Definition 1.3 as follows: _f_ ( _t_ )is a term whenever each entry in _t_ is anL-term
and _f_ is a function symbol fromL.

```
Semantics: the trouble with quantifiers
```
We now understand the syntax of first-order sentences. Later, we will consider log-
ics with a more permissive syntax. But first-order logic is something like the _default_ ,
for both philosophers and model theorists. And our next task is to understand its
_semantics_. Roughly, our aim is to define a relation,⊧, which obtains between a struc-
ture and a sentence just in case (intuitively) the sentence is true in the structure. In


```
1.2. first-order logic: a first look 11
```
fact, there are many different but extensionally equivalent approaches to defining
this relation, and we will consider three in this chapter.
To understand why there are several different approaches to the semantics for
first-order logic, we must see why the most obvious approach fails. Our sentences
have a nice, recursive syntax, so we will want to provide them with a nice, recursive
semantics. The most obvious starting point is to supply semantic clauses for the
two kinds of atomic sentence, as follows:

```
M ⊧ t 1 = t 2 iff tM 1 = tM 2
M ⊧ R ( t 1 , ..., tn )iff( tM 1 , ..., tMn )∈ RM
```
Next, we would need recursion clauses for the quantifier-free sentences. So, writing
_M_ ⊭ _φ_ for _it is not the case that M_ ⊧ _φ_ , we would offer:

```
M ⊧¬ φ iff M ⊭ φ
M ⊧( φ ∧ ψ )iff M ⊧ φ and M ⊧ ψ
```
So far, so good. But the problem arises with the quantifiers. Where the notation
_φ_ ( _c_ / _x_ )indicates the formula obtained by replacing every instance of the free vari-
able _x_ in _φ_ ( _x_ )with the constant symbol _c_ , an obvious thought would be to try:

```
M ⊧∀ xφ ( x )iff M ⊧ φ ( c / x )for every constant symbol c fromL
```
Unfortunately, _this recursion clause is inadequate_. To see why, suppose we had a very
simple signature containing a single one-place predicate _R_ and _no_ constant symbols.
Then, for any structure _M_ in that signature, we would _vacuously_ have that _M_ ⊧
∀ _vR_ ( _v_ ). But this would be the case even if _RM_ =∅, that is, even if _nothing_ had the
property picked out by _R_. Intuitively, that is the wrong verdict.
The essential difficulty in defining the semantics for first-order logic therefore
arises when we confront quantifiers. The three approaches to semantics which we
consider present three ways to overcome this difficulty.

```
Why it is worth considering different approaches
```
In a straightforward sense, the three approaches are technically equivalent. So most
books simply adopt one of these approaches, without comment, and get on with
other things. In deciding to present all three approaches here, we seem to be trebling
our reader’s workload. So we should pause to explain our decision.
First: the three approaches to semantics are so intimately related, at a technical
level, that the workload is probably only _doubled_ , rather than trebled.
Second: readers who are happy ploughing through technical definitions will find
nothing very tricky here. And such readers should find that the additional technical


12 logics and languages

investment gives a decent philosophical pay-off. For, as we move through the chap-
ter, we will see that these (quite dry) technicalities can both generate and resolve
philosophical controversies.
Third: we expect that even novice philosophers reading this book will have at
least a rough and ready idea of what is coming next. And such readers will be bet-
ter served by reading (and perhaps only partially absorbing) multiple _different_ ap-
proaches to the semantics for first-order logic, than by trying to rote-learn one _spe-
cific_ definition. They will thereby get a sense of what is important to supplying a
semantics, and what is merely an idiosyncratic feature of a particular approach.

### 1.3 The Tarskian approach to semantics

We begin with the Tarskian approach.^3 Recall that the ‘obvious’ semantic clauses
fail becauseLmay not contain enough constant symbols. The Tarskian approach
handles this problem by assigning interpretations to the _variables_ of the language.
In particular, where _M_ is anyL-structure, a _variable-assignment_ is any function _σ_
from the set of variables to the underlying domain _M_. We then define satisfaction
with respect to pairs of structures with variable-assignments.
To do this, we must first specify how the structure / variable-assignment pair de-
termines the behaviour of theL-terms. We do this by recursively defining an ele-
ment _tM_ , _σ_ of _M_ for a term _t_ with free variables among _x_ 1 , ..., _xn_ as follows:

```
tM , σ = σ ( xi ), if t is the variable xi
tM , σ = fM ( sM 1 , σ , ..., sMk , σ ), if t is the term f ( s 1 , ..., sk )
```
To illustrate this definition, suppose that _M_ is the natural numbers in the signature
{0, 1,+,×}, with each symbol interpreted as normal. (This licenses us in dropping
the ‘ _M_ ’-superscript when writing the symbols.) Suppose that _σ_ and _τ_ are variable-
assignments such that _σ_ ( _x_ 1 )=5, _σ_ ( _x_ 2 )=7, _τ_ ( _x_ 1 )=3, _τ_ ( _x_ 2 )=7, and consider
the term _t_ ( _x_ 1 , _x_ 2 )=( 1 + _x_ 1 )×( _x_ 1 + _x_ 2 ). Then we can compute the interpretation
of the term relative to the variable-assignments as follows:

```
tM , σ =( 1 + xM 1 , σ )×( xM 1 , σ + xM 2 , σ )=( 1 + 5 )×( 5 + 7 )= 72
tM , τ =( 1 + xM 1 , τ )×( xM 1 , τ + xM 2 , τ )=( 1 + 3 )×( 3 + 7 )= 40
```
We next define the notion of satisfaction relative to a variable-assignment:

(^3) See Tarski (1933) and Tarski and Vaught (1958), but also §12.a.


```
1.4. semantics for variables 13
```
```
M , σ ⊧ t 1 = t 2 iff tM 1 , σ = tM 2 , σ , for anyL-terms t 1 , t 2
M , σ ⊧ R ( t 1 , ..., tn )iff( tM 1 , σ , ..., tMn , σ )∈ RM , for anyL-terms t 1 , ..., tn
and any n -place relation symbol R fromL
M , σ ⊧¬ φ iff M , σ ⊭ φ
M , σ ⊧( φ ∧ ψ )iff M , σ ⊧ φ and M , σ ⊧ ψ
M , σ ⊧∀ xφ ( x )iff M , τ ⊧ φ ( x )for every variable-assignment τ
which agrees with σ except perhaps on the value of x
```
We leave it to the reader to formulate clauses for disjunction and existential quan-
tification. Finally, where _φ_ is any first-orderL- _sentence_ , we say that _M_ ⊧ _φ_ iff
_M_ , _σ_ ⊧ _φ_ for all variable-assignments _σ_.

### 1.4 Semantics for variables

The Tarskian approach is technically flawless. However, the apparatus of variable-
assignments raises certain philosophical issues.
A variable-assignment effectively gives variables a particular interpretation. In
that sense, variables are treated rather like names (or constant symbols). However,
when we encounter the clause for a quantifier binding a variable, we allow ourselves
to consider all of the _other_ ways that the bound variable might have been interpreted.
In short, the Tarskian approach treats variables as something like _varying names_.
This gives rise to a philosophical question: _should_ we regard variables as vary-
ing names? With Quine, our answer is _No_ : ‘the “variation” connoted [by the word
“variable”] belongs to a vague metaphor which is best forgotten.’^4
To explain why we say this, we begin with a simple observation. A Tarskian
variable-assignment may assign different semantic values to the formulas _x_ >0 and
_y_ >0. But, on the face of it, that seems mistaken. As Fine puts the point, using one
variable rather than the other ‘would appear to be as clear a case as any of a mere
“conventional” or “notational” difference; the difference is merely in the choice of
the symbol and not in its linguistic function.’^5 And this leads Fine to say:

```
(a)‘Any two variables (ranging over a given domain of objects) have the same
semantic role.’
```
(^4) Quine (1981: §12). For ease of reference, we cite the 1981-edition. However, the relevant sections
are entirely unchanged from the (first) 1940-edition. We owe several people thanks for discussion of ma-
terial in this section. Michael Potter alerted us to Bourbaki’s notation; Kai Wehmeier alerted us to Quine’s
(cf. Wehmeier forthcoming); and Robert Trueman suggested that we should connect all of this to Fine’s
antinomy of the variable.
(^5) Fine (2003: 606, 2007: 7), for this and all subsequent quotes from Fine.


14 logics and languages

But, as Fine notes, this cannot be right either. For, ‘when we consider the semantic
role of the variables in the same expression—such as “ _x_ > _y_ ”—then it seems equally
clear that their semantic role is different.’ So Fine says:

```
(b)‘Any two variables (ranging over a given domain of objects) have a different
semantic role.’
```
And now we have arrived at Fine’s _antinomy of the variable_.
We think that this whole antinomy gets going from the mistaken assumption that
we can assign a ‘semantic role’ to a variable in isolation from the quantifier which
binds it.^6 As Quine put the point more than six decades before Fine: ‘The vari-
ables [...] serve merely to indicate cross-references to various positions of quantifi-
cation.’^7 Quine’s point is that∃ _x_ ∀ _yφ_ ( _x_ , _y_ )and∃ _y_ ∀ _xφ_ ( _y_ , _x_ )are indeed just typo-
graphical variants, but that both are importantly different from∀ _x_ ∃ _yφ_ ( _x_ , _y_ ). And
to illustrate this graphically, Quine notes that we could use a notation which aban-
dons typographically distinct variables altogether. For example, instead of writing:

```
∃ x ∀ y (( φ ( x , y )∧ ∃ zφ ( x , z ))→ φ ( y , x ))
```
we might have written:^8

```
∃∀(( φ (●,●)∧ ∃ φ (●,●))→ φ (●,●))
```
Bourbaki rigorously developed Quine’s brief notational suggestion.^9 And the re-
sulting _Quine–Bourbaki notation_ is evidently just as expressively powerful as our or-
dinary notation. However, if we adopt the Quine–Bourbaki notation, then we will
not even be able to _ask_ whether typographically distinct variables like ‘ _x_ ’ and ‘ _y_ ’ have
different ‘semantic roles’, and Fine’s antinomy will dissolve away.^10

(^6) Fine (2003: 610–14, 2007: 12–16) considers this thought, but does not consider the present point.
(^7) Quine (1981: 69–70). See also Curry (1933: 389–90), Quine (1981: iv, 5, 71), Dummett (1981: ch.1),
Kaplan (1986: 244), Lavine (2000: 5–6), and Potter (2000: 64).
(^8) Quine (1981: §12).
(^9) Bourbaki (1954: ch.1), apparently independently. The slight difference is that Bourbaki uses
Hilbert’s epsilon operator instead of quantifiers.
(^10) Pickel and Rabern (2017: 148–52) consider and criticise the Quine–Bourbaki approach to Fine’s anti-
nomy. Pickel and Rabern assume that the Quine–Bourbaki approach will be coupled with Frege’s idea that
one obtains the predicate ‘()≤()’ by taking a sentence like ‘ 7 ≤7’ and deleting the names. They then
insist that Frege must distinguish between the case when ‘()≤()’ is regarded as a one-place predicate,
and the case where it is regarded as a two-place predicate. And they then maintain: ‘if Frege were to intro-
duce marks capable of typographically distinguishing between these predicates, then that mark would need
its own semantic significance, which in this context means designation.’ We disagree with the last part of
this claim. _Brackets_ are semantically significant, in that¬( _φ_ ∧ _ψ_ )is importantly different from(¬ _φ_ ∧ _ψ_ );
but brackets do not denote. Fregeans should simply insist that any ‘marks’ on predicate-positions have a
similarly _non-denotational_ semantic significance. After all, their ultimate purpose is just to account for the
different ‘cross-referencing’ in∀ _x_ ∃ _yφ_ ( _x_ , _y_ )and∀ _x_ ∃ _yφ_ ( _y_ , _x_ ).


```
1.5. the robinsonian approach to semantics 15
```
To be clear, no one is recommending that we _should adopt_ the Quine–Bourbaki
notation in practice: it would be hard to read and a pain to typeset. To dissolve
the antimony of the variable, it is enough to know that we _could in principle_ have
adopted this notation.
But there is a catch. Just as this notation leaves us unable to formulate Fine’s
antinomy of the variable, it leaves us unable to define the notion of a variable-
assignment. So, until we can provide a non-Tarskian approach to semantics, which
does _not_ essentially rely upon variable-assignments, we have no guarantee that we
_could_ have adopted the Quine–Bourbaki notation, even in principle. Now, we can
of course use the Tarskian approach to supply a semantics for Quine–Bourbaki sen-
tences derivatively.^11 But if we were to do that that, we would lose the right to say
that we could, in principle, have done away with typographically distinct variables
altogether, for we would still be relying upon them in our semantic machinery.
In sum, we want an approach to semantics which (unlike Tarski’s) accords vari-
ables with no more apparent significance than is suggested by the Quine–Bourbaki
notation. Fortunately, such approaches are available.

### 1.5 The Robinsonian approach to semantics

To recall: difficulties concerning the semantics for quantifiers arise becauseLmay
not contain names for every object in the domain. One solution to this problem is
obvious: just _add_ new constants. This was essentially Robinson’s approach.^12
To define how to _add_ new symbols, it is easiest to define how to _remove_ them.
Given a structure _M_ , itsL-reduct is theL-structure we obtain by _ignoring_ the in-
terpretation of the symbols in _M_ ’s signature which are not inL. More precisely:^13

Definition 1.4: _Let_ L+ _and_ L _be signatures with_ L+⊇L_. Let M be an_ L+ _-
structure. Then M_ ’sL-reduct _, N, is the unique_ L _-structure with domain M such that
sN_ = _sMfor all s from_ L_. We also say that M is a_ signature-expansion _of N, and that
N is a_ signature-reduct _of M._

In Quinean terms, the difference between a model and its reduct is not _ontological_
but _ideological_.^14 We do not add or remove any entities from the domain; we just
add or remove some (interpretations of) symbols.

(^11) Where _φ_ is any Quine–Bourbaki sentence, let _φ_ fobe the sentence of first-order logic which results
by: ( _a_ ) inserting the variable _vn_ after the _n_ thquantifier in _φ_ , counting quantifiers from left-to-right; ( _b_ )
replacing each blob connected to the _n_ th-quantifier with the variable _vn_ and ( _c_ ) deleting all the connecting
wires. Then say _M_ ⊧ _φ_ iff _M_ ⊧ _φ_ fo, with _M_ ⊧ _φ_ fodefined via the Tarskian approach.
(^12) A. Robinson (1951: 19–21), with a tweak that one finds in, e.g., Sacks (1972: ch.4).
(^13) Cf. Hodges (1993: 9ff) and Marker (2002: 31).
(^14) Quine (1951: 14).


16 logics and languages

We can now define the idea of ‘adding new constants for every member of the
domain’. The following definition explains how to add, for each element _a_ ∈ _M_ , a
new constant symbol, _ca_ , which is taken to name _a_ :

Definition1.5: _Let_ L _be any signature. For any set M,_ L( _M_ ) _is the signature obtained
by adding to_ L _a new constant symbol cafor each a_ ∈ _M. For any_ L _-structure M with
domain M, we say that M_ ○ _is the_ L( _M_ ) _-structure whose_ L _-reduct is M and such that
cM_

```
○
a = a for all a ∈ M.
```
Since _M_ ○is flooded with constants, it is very easy to set up its semantics. We start
by defining the interpretation of theL( _M_ )-terms which contain no variables:

```
tM
```
```
○
= fM
```
```
○
( sM
```
```
○
1 , ..., s
M ○
k ), if t is the variable-freeL( M )-term f ( s^1 , ..., sk )
```
For each atomic first-orderL( _M_ )-sentence, we then define:

```
M ○⊧ t 1 = t 2 iff tM
```
```
○
1 = t
```
```
M ○
2 , for any variable-freeL( M )-terms t^1 , t^2
M ○⊧ R ( t 1 , ..., tn )iff( tM
```
```
○
1 , ..., t
```
```
M ○
n )∈ R
```
```
M ○, for
```
```
any variable-freeL( M )-terms t 1 , ..., tn and
any n -place relation symbol R fromL( M )
```
And finally we offer:

```
M ○⊧¬ φ iff M ○⊭ φ
M ○⊧( φ ∧ ψ )iff M ○⊧ φ and M ○⊧ ψ
M ○⊧∀ xφ ( x )iff M ○⊧ φ ( ca / x )for every a ∈ M
```
We now have what we want, in terms of _M_ ○. And, since _M_ ○is uniquely determined
by _M_ , we can now extract what we really wanted: definitions concerning _M_ itself.
Where _φ_ ( _v_ )is a first-orderL-formula with free variables displayed, and _a_ are from
_M_ , we define a _three_ -place relation which, intuitively, says that _φ_ ( _v_ )is _true of_ the
entities _a_ according to _M_. Here is the definition:

```
M ⊧ φ ( a )iff M ○⊧ φ ( ca / v )
```
The notation _φ_ ( _c_ / _v_ )indicates theL( _M_ )-formula obtained by substituting the
_k_ thconstant in the sequence _c_ for the _k_ thvariable in the sequence _v_. So we have
defined a _three_ -place relation between anL-formula, entities _a_ , and a structure _M_ ,
in terms of a _two_ -place relation between a structure _M_ ○and anL( _M_ )-formula.
For readability, we will write _φ_ ( _c_ )instead of _φ_ ( _c_ / _v_ ), where no confusion arises.
As a limiting case, a sentence is a formula with no free variables. So for eachL-
sentence _φ_ , our definition states that _M_ ⊧ _φ_ iff _M_ ○⊧ _φ_. And, intuitively, we can
read this as saying that _φ_ is _true_ in _M_.


```
1.6. straining the notion of ‘language’ 17
```
To complete the Robinsonian semantics, we will define something similar for
_terms_. So, where _a_ are entities from _M_ and _t_ ( _v_ )is anL-term with free variables
displayed, we define a function _tM_ : _Mn_ Ð→ _M_ , by:

```
tM ( a )=( t ( ca / v )) M
```
```
○
```
This completes the Robinsonian approach. And the approach carries no taint of
the antinomy of the variable, since it clearly accords variables with no more seman-
tic significance than is suggested by the Quine–Bourbaki notation. Indeed, it is
easy to give a Robinsonian semantics directly for Quine–Bourbaki sentences, via:
_M_ ○satisfies a Quine–Bourbaki sentence beginning with ‘∀’ _iff_ for every _a_ ∈ _M_ the
model _M_ ○satisfies the Quine–Bourbaki sentence which results from replacing all
blobs connected to the quantifier with ‘ _ca_ ’ and then deleting the quantifier and the
connecting wires.

### 1.6 Straining the notion of ‘language’

For all its virtues, the Robinsonian approach has some eyebrow-raising features of
its own. To define satisfaction for the sentences of the first-orderL-sentences, we
have considered the sentences in some _other_ formal languages, namely, those with
signatureL( _M_ )for anyL-structure _M_. These languages can be _enormous_. Let _M_
be an infiniteL-structure, whose domain _M_ has size _κ_ for some very big cardinal
_κ_.^15 ThenL( _M_ )contains at least _κ_ symbols. Can such a beast really count as a
_language_ , in any intuitive sense?
Of course, there is no technical impediment to defining these enormous lan-
guages. So, if model theory is just regarded as a branch of _pure_ mathematics, then
there is no real reason to worry about any of this. But we might, instead, want model
theory to be regarded as a branch of _applied_ mathematics, whose (idealised) sub-
ject matter is the languages and theories that mathematicians _actually_ use. And if
we regard model theory that way, then we will not want our technical notion of a
‘language’ to diverge too far from the kinds of things which we would ordinarily
count as languages.
There is a second issue with the Robinsonian approach. In Definition 1.5, we
introduced a new constant symbol, _ca_ , for each _a_ ∈ _M_. But we did not say what,
exactly, the constant symbol _cais_. Robinson himself suggested that the constant
_ca_ should just be the object _a itself_.^16 In that case, every object in _M_ ○would name
itself. But this is both philosophically strange and also technically awkward.
On the philosophical front: we might want to consider a structure, _W_ , whose
domain is the set of all living wombats. In order to work out which sentences are

(^15) As is standard, we use _κ_ to denote a cardinal; see the end of §1.b for a brief review of cardinals.
(^16) A. Robinson (1951: 21).


18 logics and languages

true in _W_ using Robinson’s own proposal, we would have to treat each wombat as a
name for itself, and so imagine a language whose syntactic parts are live wombats.^17
This stretches the ordinary notion of a language to breaking point.
There is also a technical hitch with Robinson’s own proposal. Suppose that _c_ is
a constant symbol ofL. Suppose that _M_ is anL-structure where the _symbol c_
is itself an _element_ of _M_ ’s underlying domain. Finally, suppose that _M_ interprets _c_
as naming some element other than _c_ itself, i.e. _cM_ ≠ _c_. Now Robinson’s proposal
requires that _cM_

○
= _c_. But since _M_ ○is a signature expansion of _M_ , we require that
_cM_
○
= _cM_ , which is a contradiction.
To fix this bug whilst retaining Robinson’s idea that _ca_ = _a_ , we would have to
tweak the definition of anL-structure to ensure that the envisaged situation can-
not arise.^18 A better alternative—which also spares the wombats—is to abandon
Robinson’s suggestion that _ca_ = _a_ , and instead define the symbol _ca_ so that it is
guaranteed _not_ to be an element of _M_ ’s underlying domain.^19 So this is our official
Robinson _ian_ semantics (even if it was not exactly Robinson’s).

### 1.7 The Hybrid approach to semantics

Tarskian and Robinsonian semantics are technically equivalent, in the following
sense: they use the same notion of anL-structure, they use the same notion of
anL-sentence, and they end up defining exactly the same relation,⊧, between
structures and sentences. But, as we have seen, neither approach is exactly ideal. So
we turn to a third approach: a _hybrid_ approach.
In the Robinsonian semantics, we used _M_ ○to define the expression _M_ ⊧ _φ_ ( _a_ ).
Intuitively, this states that _φ_ is true of _a_ in _M_. If we _start_ by defining this notation—
which we can do quite easily—then we can use it to present a semantics with the
following recursion clauses:

```
M ⊧ t 1 = t 2 iff tM 1 = tM 2 , for any variable-freeL-terms t 1 , t 2
M ⊧ R ( t 1 , ..., tn )iff( tM 1 , ..., tMn )∈ RM , for any variable-freeL-terms
t 1 , ..., tn and any n -place relation symbol R fromL
M ⊧¬ φ iff M ⊭ φ
M ⊧( φ ∧ ψ )iff M ⊧ φ and M ⊧ ψ
M ⊧∀ vφ ( v )iff M ⊧ φ ( a )for all a ∈ M
```
(^17) Cf. Lewis (1986: 145) on ‘Lagadonian languages’.
(^18) We would have to add a clause: if _M_ is anL-structure and _s_ ∈L∩ _M_ , then _sM_ = _s_.
(^19) A simple way to do this is as follows: let _ca_ be the ordered pair( _a_ , _M_ ). By Foundation in the back-
ground set theory within which we implement our model theory,( _a_ , _M_ )∉ _M_.


```
1.8. linguistic compositionality 19
```
All that remains is to define _M_ ⊧ _φ_ ( _a_ )without going all-out Robinsonian. And the
idea here is quite simple: we just add new constant symbols when we need them,
but not before. Here is the idea, rigorously developed. Let _M_ be anL-structure
with _a_ from _M_. For each _ai_ among _a_ , let _cai_ be a constant symbol not occurring in
L. Intuitively, we interpret each _cai_ as a name for _ai_. More formally, we define
_M_ [ _a_ ]to be a structure whose signature isLtogether with the new constant sym-
bols among _ca_ , whoseL-reduct is _M_ , and such that _cMai_ [ _a_ ]= _ai_ for each _i_. Where
_φ_ ( _v_ )is anL-formula with free variables displayed, the Hybrid approach defines:

```
M ⊧ φ ( a )iff M [ a ]⊧ φ ( ca / v )
```
When we combine our new definition of _M_ ⊧ _φ_ ( _a_ )with the clause for universal
quantification, we see that universal quantification effectively amounts to consider-
ing all the different ways of expanding the signature of _M_ with a _new_ constant sym-
bol which could be interpreted to name _any_ element of _M_. (So the Hybrid approach
offers a semantics by simultaneous recursion over structures and languages.) Fi-
nally, we offer a similar clause for terms:

```
tM ( a )= tM [ a ]( ca / v )
```
thereby completing the Hybrid approach.^20

### 1.8 Linguistic compositionality

Unsurprisingly, the Hybrid approach is technically equivalent to the Robinsonian
and Tarskian approaches. However, its philosophical merits come out when we
revisit some of the potential defects of the other approaches. The Tarskian ap-
proach does not distinguish sufficiently between names and variables; the Hybrid
approach has no such issues. Indeed, just like the Robinsonian approach, the Hy-
brid approach accords variables with no greater semantic significance than is sug-
gested by the Quine–Bourbaki notation. But the Robinsonian approach involved
vast, peculiar ‘languages’; the Hybrid approach has no such issues. And, following
Lavine, we will pause on this last point.^21
It is common to insist that languages should be _compositional_ , in some sense. One
of the most famous arguments to this effect is due to Davidson. Because natural
languages are _learnable_ , Davidson insists that ‘the meaning of each sentence [must
be] a function of a finite number of features of the sentence’. For, on the one hand,

(^20) The hybrid approach is hinted at by Geach (1962: 160), and Mates (1965: 54–7) offers something
similar. But the clearest examples we can find are Boolos and Jeffrey (1974: 104–5), Boolos (1975: 513–4),
and Lavine (2000: 10–12).
(^21) See Lavine’s (2000: 12–13) comments on compositionality and learnability.


20 logics and languages

if a language has this feature, then we ‘understand how an infinite aptitude can be
encompassed by finite accomplishments’. Conversely, if ‘a language lacks this fea-
ture then no matter how many sentences a would-be speaker learns to produce and
understand, there will remain others whose meanings are not given by the rules
already mastered.’^22
Davidson’s argument is too quick. After all, it is a _wild_ idealisation to suggest that
any actual human can indeed understand or learn the meanings of _infinitely_ many
sentences: some sentences are just too long for any actual human to parse. It is
unclear, then, why we should worry about the ‘learnability’ of such sentences.
Still, something in the _vicinity_ of Davidson’s argument seems right. In §1.6, we
floated the idea that model theory should be regarded as a branch of _applied_ math-
ematics, whose (idealised) subject matter is the languages and theories that (pure)
mathematicians _actually_ use. But here is an apparent phenomenon concerning that
subject matter: once we have a fixed interpretation in mind, we tend to act as if that
interpretation fixes the truth value of _any_ sentence of the appropriate language, no
matter how long or complicated that sentence is.^23 All three of our approaches to
formal semantics accommodate this point. For, given a signatureLand anL-
structure _M_ —i.e. an interpretation of the range of quantification and an interpre-
tation of eachL-symbol—the semantic value of everyL-sentence is completely
determined within _M_ , in the sense that, for everyL-sentence _φ_ , either _M_ ⊧ _φ_ , or
_M_ ⊧¬ _φ_ , but not both.
But the Hybrid approach, specifically, may allow us to go a little further. For,
whenLis finite,^24 and we offer the Hybrid approach to semantics, we may gain
some insight into how a finite mind might _fully understand_ the rules by which an
interpretation fixes the truth-value of every sentence. That understanding seems to
reduce to three rather tractable components:

```
(a)an understanding of the finitely many recursion clauses governing satisfac-
tion for atomic sentences (finitely many, as we assumed thatLis finite);
(b)an understanding of the handful of recursion clauses governing sentential
connectives; and
(c)an understanding of the recursion clauses governing quantification
```
On the Hybrid approach, point (c) reduces to an understanding of two ideas: (i)
the _general_ idea that names can pick out objects,^25 and (ii) the intuitive idea that, for
any object, we could expand our language with a new name for that object. In short:

(^22) Davidson (1965: 9).
(^23) A theme of Part B is whether, in certain circumstances, axioms can also fix truth values.
(^24) We can make a similar point ifLcan be recursively specified.
(^25) There are some deep philosophical issues concerning the question of how names pick out objects (see
Chapters 2 and 15). However, the general notion seems to be required by _any_ model-theoretic semantics,
so that there is no _special_ problem here for the Hybrid approach.


```
1.9. second-order logic: syntax 21
```
the Hybrid semantics seems to provide a truly _compositional_ notion of meaning. But
we should be clear on what this means.
First, we are not aiming to escape what Sheffer once called the ‘logocentric
predicament’, that ‘ _In order to give an account of logic, we must presuppose and employ
logic._ ’^26 Our semantic clause for object-language conjunction,∧, always involves
conjunction in the metalanguage. On the Hybrid approach, our semantic clause
for object-language universal quantification,∀, involved (metalinguistic) quantifi-
cation over all the ways in which a new name could be added to a signature. We do
not, of course, claim that anyone could read these semantic clauses and come to _un-
derstand_ the very idea of conjunction or quantification from scratch. We are making
a much more mundane point: to understand the hybrid approach to semantics, one
need only understand a tractable number of ideas.
Second, in describing our semantics as compositional, we are _not_ aiming to sup-
ply a semantics according to which the meaning of∀ _xF_ ( _x_ )depends upon the sep-
arate meanings of the expressions∀, _x_ , _F_ , and _x_.^27 Not only would that involve an
oddly inflexible understanding of the word ‘compositional’; the discussion of §1.4
should have convinced us that variables do not have semantic values in isolation.^28
Instead, on the hybrid approach, the meaning of∀ _xF_ ( _x_ )depends upon the mean-
ings of the quantifier-expression∀ _x_ ... _x_ and the predicate-expression _F_ ( ). The
crucial point is this: the Hybrid approach delivers the truth-conditions of infinitely
many sentences using only a small ‘starter pack’ of principles.
Having aired the virtues of the Hybrid approach, though, it is worth repeating
that our three semantic approaches are technically equivalent. As such, we can in
good faith use whichever approach we like, whilst claiming all of the pleasant philo-
sophical features of the Hybrid approach. Indeed, in the rest of this book, we simply
use whichever approach is easiest for the purpose at hand.
This concludes our discussion of first-order logic. It also concludes the ‘philo-
sophical’ component of this chapter. The remainder of this chapter sets down the
purely technical groundwork for several later philosophical discussions.

### 1.9 Second-order logic: syntax

Having covered first-order logic, we now consider _second_ -order logic. This is much
less popular than first-order logic among working model-theorists. However, it has

(^26) Sheffer (1926: 228).
(^27) Pickel and Rabern (2017: 155) call this ‘structure intrinsicalism’, and advocate it.
(^28) Nor would it help to suggest that the meaning of∀ _xF_ ( _x_ )depends upon the separate meanings of
the two composite expressions∀ _x_ and _F_ ( _x_ ). For if we think that open formulas possess semantic values
(in isolation), we will obtain an exactly parallel (and exactly as confused) ‘antinomy of the open formula’
as follows: clearly _F_ ( _x_ )and _F_ ( _y_ )are notational variants, and so should have the same semantic value; but
they cannot have the same value, since _F_ ( _x_ )∧ ¬ _F_ ( _y_ )is not a contradiction.


22 logics and languages

certain philosophically interesting dimensions. We explore these philosophical is-
sues in later chapters; here, we simply outline its technicalities.
First-order logic can be thought of as allowing quantification into _name_ position.
For example, if _φ_ ( _c_ )is a formula containing a constant symbol _c_ , then we also have
a formula∀ _vφ_ ( _v_ / _c_ ), replacing _c_ with a variable which is bound by the quantifier.
To extend the language, we can allow quantification into _relation symbol_ or _function
symbol_ position. For example, if _φ_ ( _R_ )is a formula containing a relation symbol _R_ ,
we would want to have a formula∀ _Xφ_ ( _X_ / _R_ ), replacing the relation symbol _R_ with
a relation-variable, _X_ , which is bound by the quantifier. Equally, if _φ_ ( _f_ )is a formula
containing a function symbol _f_ , we would want to have a formula∀ _pφ_ ( _p_ / _f_ ).
Let us make this precise, starting with the syntax. In addition to all the symbols
of first-order logic, our language adds some new symbols:

- relation-variables: _U_ , _V_ , _W_ , _X_ , _Y_ , _Z_
- function-variables: _p_ , _q_

both with numerical subscripts and superscripts as necessary. In more detail: just
like relation symbols and functions symbols, these higher-order variables come
equipped with a number of places, indicated (where helpful) with superscripts. So,
together with the subscripts, this means we have countably many relation-variables
and function-symbols for each number of places. We then expand the recursive
definition of a term, to allow:

- _qn_ ( _t_ 1 , ..., _tn_ ), for anyL-terms _t_ 1 , ..., _tn_ and _n_ -place function-variable _qn_

and we expand the notion of a formula, to allow

- _Xn_ ( _t_ 1 , ..., _tn_ ), for anyL-terms _t_ 1 , ..., _tn_ and _n_ -place relation-variable _Xn_
- ∃ _Xnφ_ and∀ _Xnφ_ , for any _n_ -place relation-variable _Xn_ and any second-order
    L-formula _φ_ which contains neither of the expressions∃ _Xn_ nor∀ _Xn_
- ∃ _qnφ_ and∀ _qnφ_ , for any _n_ -place function-variable _qn_ and any second-order
    L-formula _φ_ which contains neither of the expressions∃ _qn_ nor∀ _qn_

We will also introduce some abbreviations which are particularly helpful in a
second-order context. Where Ξ is any one-place relation symbol or relation-
variable, we write(∀ _x_ : Ξ) _φ_ for∀ _x_ (Ξ( _x_ )→ _φ_ ), and(∃ _x_ : Ξ) _φ_ for∃ _x_ (Ξ( _x_ )∧ _φ_ ).
We also allow ourselves to bind multiple quantifiers at once; so(∀ _x_ , _y_ , _z_ : Ξ) _φ_ ab-
breviates∀ _x_ ∀ _y_ ∀ _z_ ((Ξ( _x_ )∧Ξ( _y_ )∧Ξ( _z_ ))→ _φ_ ).

### 1.10 Full semantics

The syntax of second-order logic is straightforward. The semantics is more subtle;
for here there are some genuinely _non_ -equivalent options.
We start with _full semantics_ for second-order logic (also known as _standard_ se-
mantics). This usesL-structures, exactly as we defined them in Definition 1.2.


```
1.10. full semantics 23
```
The trick is to add new semantic clauses for our second-order quantifiers. In fact,
we can adopt any of the Tarskian, Robinsonian, or Hybrid approaches here, and we
sketch all three (leaving the reader to fill in some obvious details).
_Tarskian._ Variable-assignments are the key to the Tarskian approach to first-order
logic. So the Tarskian approach to second-order logic must expand the notion of
a variable-assignment, to cover both relation-variables and function-variables. In
particular, we take it that _σ_ is a function which assigns every variable to some entity
_a_ ∈ _M_ , every _n_ -place relation-variable to some subset of _Mn_ , and every function-
variable to some function _Mn_ Ð→ _M_. We now add clauses:

```
M , σ ⊧ Xn ( t 1 , ..., tn )iff( tM 1 , σ , ..., tMn , σ )∈( Xn ) M , σ for any
L-terms t 1 , ..., tn
M , σ ⊧∀ Xnφ ( Xn )iff M , τ ⊧ φ ( Xn )for every variable-assignment τ
which agrees with σ except perhaps on Xn
M , σ ⊧∀ qnφ ( qn )iff M , τ ⊧ φ ( qn )for every variable-assignment τ
which agrees with σ except perhaps on qn
```
_Robinsonian._ The key to the Robinsonian approach to first-order logic is to in-
troduce a new constant symbol for every entity in the domain. So the Robinsonian
approach to second-order logic must introduce a new relation symbol for every pos-
sible relation on _M_ , and a new function symbol for every possible function. Let
_M_ ◾be the structure which expands _M_ in just this way. So, for each _n_ and each
_S_ ⊆ _Mn_ , we add a new relation symbol _RS_ with _S_ = _RM_
◾
_S_ , and for each function
_g_ : _Mn_ Ð→ _M_ we add a new function symbol _fg_ with _g_ = _fM_
◾
_g_. We can now
simply rewrite the first-order semantics, replacing _M_ ○with _M_ ◾, and adding:

```
M ◾⊧∀ Xnφ ( Xn )iff M ◾⊧ φ ( RS / Xn )for every S ⊆ Mn
M ◾⊧∀ qnφ ( qn )iff M ◾⊧ φ ( fg / qn )for every function g : Mn Ð→ M
```
_Hybrid._ The key to the Hybrid approach to second-order logic is to define, up-
front, the three-place relation between _M_ , a formula _φ_ , and a relation (or function)
on _M_.^29 We illustrate the idea for the case of relations (the case of functions is ex-
actly similar). Let _S_ be a relation on _Mn_. Let _RS_ be an _n_ -place relation symbol not
occurring inL. We define _M_ [ _S_ ]to be a structure whose signature isLtogether

with the new relation symbol _RS_ , such that _M_ [ _S_ ]’sL-reduct is _M_ and _RMS_ [ _S_ ]= _S_.
Then where _φ_ ( _X_ )is anL-formula with free relation-variable displayed, we define:

```
M ⊧ φ ( S )iff M [ S ]⊧ φ ( RS / X )for any relation symbol RS ∉L
M ⊧∀ Xnφ ( Xn )iff M ⊧ φ ( S )for every relation S ⊆ Mn
```
(^29) Trueman (2012) recommends a semantics like this as a means for overcoming philosophical resis-
tance to the use of second-order logic.


24 logics and languages

The three approaches ultimately define the same semantic relation. And we call the
ensuing semantics _full_ second-order semantics.
The relative merits of these three approaches are much as before. So: the
Tarskian approach unhelpfully treats relation-variables as if they were varying pred-
icates; the Robinsonian approach forces us to stretch the idea of a language to break-
ing point; but the Hybrid approach avoids both problems and provides us with a
reasonable notion of compositionality. (It is worth noting, though, that all three
approaches effectively assume that we understand notions like ‘all subsets of _Mn_ ’.
We revisit this point in Part B.)

### 1.11 Henkin semantics

The Tarskian, Robinsonian, and Hybrid approaches all yielded the same relation,
⊧. However, there is a _genuinely alternative_ semantics for second-order logic. More-
over, the availability of this alternative is an important theme in Part B of this book.
So we outline that alternative here.
In _full_ second-order logic, universal quantification into relation-position effec-
tively involves considering _all possible_ relations on the structure. Indeed, using
℘( _A_ )for _A_ ’s powerset, i.e.{ _B_ : _B_ ⊆ _A_ }, we have the following: if _X_ is a one-place
relation-variable, then the relevant ‘domain’ of quantification in∀ _Xφ_ is℘( _M_ ); and
if _X_ is an _n_ -place relation-variable, then the relevant ‘domain’ of quantification in
∀ _Xφ_ is℘( _Mn_ ). An alternative semantics naturally arises, then, by considering
more _restrictive_ ‘domains’ of quantification, as follows:

Definition 1.6: _A_ HenkinL-structure _, M, consists of:_

_- a non-empty set, M, which is the underlying domain of M
- a set M_ rel _n_ ⊆℘( _Mn_ ) _for each n_ < _ω
- a set M_ fun _n_ ⊆{ _g_ ∈℘( _Mn_ +^1 ): _g is a function Mn_ Ð→ _M_ } _for each n_ < _ω
- an object cM_ ∈ _M for each constant symbol c from_ L
_- a relation RM_ ⊆ _Mnfor each n-place relation symbol R from_ L
_- a function fM_ : _Mn_ Ð→ _M for each n-place function symbol f from_ L_._

In essence, _M_ rel _n_ serves as the domain of quantification for the _n_ -place relation-
variables, and _M_ fun _n_ serves as the domain of quantification for the _n_ -place function-
variables. As before, though, we can make this idea precise using any of our three
approaches to formal semantics. We sketch all three.
_Tarskian._ Where _M_ is a Henkin structure, we take our variable-assignments _σ_
to be restricted in the following way: _σ_ assigns each variable to some entity _a_ ∈ _M_ ,
each _n_ -place relation-variable to some element of _M_ rel _n_ , and each _n_ -place function-
variable to some element of _M_ fun _n_. We then rewrite the clauses for the full semantics,


```
1.11. henkin semantics 25
```
exactly as before, but using this more restricted notion of a variable-assignment.
_Robinsonian._ Where _M_ is a Henkin structure, we let _M_ ◽be the structure which
expands _M_ by adding new relation symbols _RS_ such that _S_ = _RM_

◽
_S_ for every relation
_S_ ∈ _M_ rel _n_ , and new function symbols _fg_ such that _g_ = _fM_

```
◽
g for every function g ∈
M fun n. We then offer these clauses:
```
```
M ◽⊧∀ Xnφ ( Xn )iff M ◽⊧ φ ( RS / Xn )for every relation S ∈ M rel n
M ◽⊧∀ qnφ ( qn )iff M ◽⊧ φ ( fg / qn )for every function g ∈ M fun n
```
```
Hybrid. We need only tweak the recursion clauses, as follows:
```
```
M ⊧∀ Xnφ ( Xn )iff M ⊧ φ ( S )for every relation S ⊆ M rel n
M ⊧∀ qnφ ( qn )iff M ⊧ φ ( g )for every function g ∈ M fun n
```
We say that _Henkin semantics_ is the semantics yielded by any of these three ap-
proaches, as applied to Henkin structures. Importantly, Henkin semantics gener-
alises the _full_ semantics of §1.10. To show this, let _M_ be anL-structure in the sense
of Definition 1.2. From this, define a Henkin structure _N_ by setting, for each _n_ < _ω_ ,
_N_ rel _n_ =℘( _Nn_ )and _N_ fun _n_ as the set of all functions _Nn_ Ð→ _N_. Then _full_ satisfaction,
defined over _N_ , is exactly like _Henkin_ satisfaction, defined over _N_.
The notion of a Henkin structure may, though, be a bit _too_ general. To see
why, consider a HenkinL-structure _M_ , and suppose that _R_ is a one-place rela-
tion symbol ofL, so that _RM_ ⊆ _M_. Presumably, we should want _M_ to satisfy
∃ _X_ ∀ _v_ ( _R_ ( _v_ )↔ _X_ ( _v_ )), for _RM_ should _itself_ provide a witness to the second-order
existential quantifier. But this holds if and only if _RM_ ∈ _M_ rel 1 , and the definition of
a Henkin structure does not guarantee this. For this reason, it is common to insist
that the following axiom schema should hold in all structures:

_Comprehension Schema._ ∃ _Xn_ ∀ _v_ ( _φ_ ( _v_ )↔ _Xn_ ( _v_ )) _, for every formula φ_ ( _v_ ) _which
does not contain the relation-variable Xn_

We must block _Xn_ from appearing in _φ_ ( _v_ ), since otherwise an axiom would be
∃ _X_ ∀ _v_ (¬ _X_ ( _v_ )↔ _X_ ( _v_ )), which will be inconsistent. However, we allow other free
first-order and second-order variables, because this allows us to form new concepts
from old concepts. For instance, given the two-place relation symbol _R_ , we have as
an axiom∃ _X_^2 ∀ _v_ 1 ∀ _v_ 2 (¬ _R_ ( _v_ 1 , _v_ 2 )↔ _X_^2 ( _v_ 1 , _v_ 2 )), i.e. _M_ rel 2 must contain the set of
all pairs not in _RM_ , i.e. _M_^2 ∖ _RM_. So: if we insist that (all instances) of the Com-
prehension Schema must hold in all Henkin structures, then we are insisting on
further properties concerning our various _M_ rel _n_ s. There is also a _predicative_ version
of Comprehension:

_Predicative Comprehension Schema._ ∃ _Xn_ ∀ _v_ ( _φ_ ( _v_ )↔ _Xn_ ( _v_ )) _, for every formula
φ_ ( _v_ ) _which neither contains the relation-variable Xnnor any second-order quantifiers_


26 logics and languages

When we want to draw the contrast, we call the (plain vanilla) Comprehension
Schema the _Impredicative_ Comprehension Schema. But this will happen only
rarely; we only mention Predicative Comprehension in §§5.7, 10.2, 10.c, and 11.3.
We could provide a similar schema to govern functions. But it is usual to make
the stronger claim, that the following should hold in all structures (for every _n_ ):^30

_Choice Schema._ ∀ _Xn_ +^1 (∀ _v_ ∃ _y Xn_ +^1 ( _v_ , _y_ )→∃ _pn_ ∀ _v Xn_ +^1 ( _v_ , _pn_ ( _v_ )))

To understand these axioms, let _S_ be a two-place relation on the domain, and sup-
pose that the antecedent is satisfied, i.e. that for any _x_ there is some _y_ such that
_S_ ( _x_ , _y_ ). The relevant Choice instance then states that there is then a one-place func-
tion, _p_ , which ‘chooses’, for each _x_ , a _particular_ entity _p_ ( _x_ )such that _S_ ( _x_ , _p_ ( _x_ )).
For obvious reasons, this _p_ is known as a _choice function_. Hence, just like the Com-
prehension Schema, the Choice Schema guarantees that the domains of the higher-
order quantifiers are well populated.
This leads to a final definition: a _faithful Henkin structure_ is a Henkin structure
within which both (impredicative) Comprehension and Choice hold.^31

### 1.12 Consequence

We have defined satisfaction for first-order logic and for both the full- and Henkin-
semantics for second-order logic. However, any definition of satisfaction induces a
notion of consequence, via the following:

Definition 1.7: _A_ theory _is a set of sentences in the logic under consideration. Given a
structure M and a theory T, we say that M is a_ model _of T, or more simply M_ ⊧ _T, iff
M_ ⊧ _φ for all sentences φ from T. We say that T has φ as a_ consequence _, or that T
entails φ, or more simply just T_ ⊧ _φ, iff: if M_ ⊧ _T then M_ ⊧ _φ for all structures M._

Note that this definition is relative to a semantics. So there are as many notions of
logical consequence as there are semantics.
Here are some examples to illustrate the notation. Consider the natural numbers
_N_ and the integers _Z_ in the signature consisting just of the symbol<, where this
is given its natural interpretation. It is easy to see that both structures satisfy the
following axioms:

```
∀ x ∀ y ∀ z (( x < y ∧ y < z )→ x < z )
∀ x ( x ≮ x )
∀ x ∀ y ( x < y ∨ x = y ∨ y < x )
```
(^30) For more, see Shapiro (1991: 67).
(^31) See e.g. Shapiro (1991: 98–9).


```
1.13. definability 27
```
These are the axioms of a _linear order_. Let _T_ LObe the theory consisting of just these
three axioms. Then we would write _N_ ⊧ _T_ LOand _Z_ ⊧ _T_ LO. But if we drop the third
axiom, we obtain the related notion of a _partial order_. For an example of a partial
order which is not a linear order, consider any set _X_ with more than two elements,
and consider the structure _P_ whose first-order domain is the powerset℘( _X_ )of _X_ ,
with<interpreted in _P_ as the subset relation. If _a_ , _b_ are distinct elements of _X_ , then
_P_ ⊧{ _a_ }≮{ _b_ }∧{ _a_ }≠{ _b_ }∧{ _b_ }≮{ _a_ }. So _P_ ⊭ _T_ LO.

### 1.13 Definability

In addition to a notion of consequence, a semantics will induce a notion of defin-
ability, as follows:

Definition 1.8: _Let M be any structure and n_ ≥ 1_. We say that a subset X of Mn
is_ definable _iff there is both a formula φ_ ( _v_ 1 , ..., _vn_ , _x_ 1 , ..., _xm_ ) _with all free variables
displayed and also elements b_ 1 , ..., _bm_ ∈ _M such that:_

```
X ={( a 1 , ..., an )∈ Mn : M ⊧ φ ( a 1 , ..., an , b 1 , ..., bm )}
```
Here, the elements _b_ 1 , ..., _bm_ are called _parameters_. Many authors allow parame-
ters to be tacitly suppressed, and so say that _X_ is definable iff _X_ ={( _a_ 1 , ..., _an_ )∈
_Mn_ : _M_ ⊧ _φ_ ( _a_ 1 , ..., _an_ )}for some _φ_ ( _v_ 1 , ..., _vn_ )which is (tacitly) allowed to con-
tain further unmentioned parameters. If parameters are not allowed, such authors
typically say this explicitly. We will be similarly explicit. When parameters are not
allowed, the resulting sets are called _parameter-free definable sets_. Clearly a set is _M_ -
definable iff it is parameter-free definable in some signature-expansion of _M_ (see
Definition 1.4).
To illustrate the idea of definability, consider again the natural numbers _N_ in the
signature consisting just of<, again with its natural interpretation. Here is a simple
definable set:

```
{ 0 }={ n ∈ N : N ⊧¬∃ x x < n }
```
As a slightly more complicated example, the graph of the successor operation in _N_
is definable, since intuitively _n_ = _m_ +1 iff _m_ is less than _n_ and there is no natural
number strictly between _m_ and _n_. More precisely:

```
G ={( n , m )∈ N^2 : N ⊧( m < n ∧ ¬∃ z ( m < z < n ))}
```
Now, both of these sets are _parameter-free_ definable. And so it follows that _all_ defin-
able sets over _N_ are parameter-free definable. For, where _S_ is the successor function


28 logics and languages

on the natural numbers, each natural number _n_ is equal to the term _Sn_ ( 0 ), which
we define recursively as follows:

```
S^0 ( a )= a Sn +^1 ( a )= S ( Sn ( a )) ( numerals )
```
(We label this definition ‘( _numerals_ )’ for future reference.) Hence, to say that 2=
_S_^2 ( 0 )is just a fancy way of saying that two is the second successor of zero. The
terms _Sn_ ( 0 )are sometimes called the _numerals_ , and clearly _N_ ⊧ _n_ = _Sn_ ( 0 )for
each natural number _n_ ≥0. So, we can explicitly define the numerals in terms of
the less-than relation using _G_ , any definable set on _N_ is _parameter-free_ definable, by
the following:

```
{( a 1 , ..., an )∈ Nn : N ⊧ φ ( a 1 , ..., an , b 1 , ..., bm )}
={( a 1 , ..., an )∈ Nn : N ⊧ φ ( a 1 , ..., an , Sb^1 ( 0 ), ..., Sbm ( 0 ))}
```
For an example of a structure with definable sets which are not parameter-free de-
finable, letLbe a countable signature and let _M_ be an uncountableL-structure.
Since there are only countably manyL-formulas, there are only countably many
parameter-free definable sets. But trivially the singleton{ _a_ }of any element _a_ from
_M_ is definable, as{ _a_ }={ _x_ ∈ _M_ : _M_ ⊧ _x_ = _a_ }. So _M_ has uncountably many
definable subsets which are not parameter-free definable.
Finally, it is worth mentioning a particular aspect of definability in second-order
logic. Consider the natural numbers _N_ in the full semantics, and consider the set
{( _n_ , _A_ )∈ _N_ × ℘( _N_ ): _N_ ⊧ _A_ ( _n_ )}consisting of all pairs of numbers and sets
of numbers such that the number is in the set. It obviously makes good sense to
say that this set is definable, even though it is not a subset of _N_ × _N_ but rather of
_N_ ×℘( _N_ ). So, in the case of second-order logic, we expand the notion of definabil-
ity to include both subsets of products of the _second-order_ domain, and subsets of
products of the first-order domain and the second-order domain. This point holds
for both the Henkin and the full semantics.

### 1.a First- and second-order arithmetic

We have laid down the syntax and semantics for the logics which occupy us
throughout this book. However, we will frequently discuss certain specific mathe-
matical theories. So, for ease of reference, in this appendix we lay down the usual
first- and second-order axioms of arithmetic. We cover set theory in the next ap-
pendix, and reserve all philosophical commentary for later chapters.

Definition1.9: _The theory of Robinson Arithmetic,_ Q _, is given by the universal closures
of the following eight axioms:_


```
1.a. first- and second-order arithmetic 29
```
```
(Q 1 ) S ( x )≠ 0
(Q 2 ) S ( x )= S ( y )→ x = y
(Q 3 )x ≠ 0 →∃ y x = S ( y )
(Q 4 )x + 0 = x
```
```
(Q 5 ) x + S ( y )= S ( x + y )
(Q 6 ) x × 0 = 0
(Q 7 ) x × S ( y )=( x × y )+ x
(Q 8 ) x ≤ y ↔∃ z x + z = y
```
_The theory of Peano Arithmetic,_ PA _, is given by adding to Robinson Arithmetic the fol-
lowing Induction Schema:_

```
[ φ ( 0 )∧ ∀ y ( φ ( y )→ φ ( S ( y )))]→∀ yφ ( y )
```
While PA obviously formalises an important part of number-theoretic practice, it
was axiomatised only in 1934.^32 We now turn to second-order arithmetic:

Definition 1.10: _The theory of_ second-order Peano arithmetic _,_ PA 2 _, is given by ax-
ioms (Q_ 1 _)–(Q_ 3 _) of Definition 1.9, the Comprehension Schema of §1.11, and the following
mathematical Induction Axiom:_

```
∀ X ([ X ( 0 )∧ ∀ y ( X ( y )→ X ( S ( y )))]→∀ yX ( y ))
```
With the exception of the Comprehension Schema, the axioms of PA 2 were first
explicitly written down by Dedekind.^33 The Choice Schema is typically not built
into axiomatisations of PA 2 , although it is valid on the standard semantics.^34
Note that the signature of PA 2 is just{0, _S_ }, whereas the signature of the first-
order theory PA is{0, _S_ ,<,+,×}. However, in the setting of PA 2 , order, addition
and multiplication are explicitly definable in the sense of Definition 1.8. For in-
stance, the graph of the addition function is the unique three-place relation which
is the union of all three-place relations satisfying the following condition, which
intuitively describes an initial segment of the graph of addition:

```
Φ( B ):=∀ xB ( x , 0, x )∧ ∀ x ∀ y ∀ w [ B ( x , S ( y ), w )→
∃ z ( w = S ( z )∧ B ( x , y , z ))]
```
By Comprehension, there is a three-place relation _A_ satisfying _A_ ( _a_ , _b_ , _c_ )iff
∃ _B_ (Φ( _B_ )∧ _B_ ( _a_ , _b_ , _c_ )). If we then define _a_ + _b_ = _c_ by _A_ ( _a_ , _b_ , _c_ )we can easily show
by induction that this satisfies axioms (Q4)–(Q5) of Definition 1.9. An analogous
definition can be presented in second-order logic for a formula which satisfies ax-
ioms (Q6)–(Q7). Finally, obviously (Q8) allows≤to be explicitly defined in terms
of addition and first-order logic.

(^32) Hilbert and Bernays (1934). For contemporary references on PA and its subsystems, see e.g. Kaye
(1991) and Hájek and Pudlák (1998).
(^33) Dedekind (1888).
(^34) A contemporary reference on PA 2 and its subsystems is Simpson (2009).


30 logics and languages

### 1.b First- and second-order set theory

We now turn to set theory. The signature of set theory consists just of the binary
relation∈, where we read _x_ ∈ _y_ as ‘ _x_ is a member of _y_ ’. We start with the following
axioms, which we state slightly informally, leaving the reader to transcribe them
into sentences of first-order logic if she wishes. Here and throughout,(∀ _y_ ∈ _x_ ) _φ_
abbreviates∀ _y_ ( _y_ ∈ _x_ → _φ_ )and(∃ _y_ ∈ _x_ ) _φ_ abbreviates∃ _y_ ( _y_ ∈ _x_ ∧ _φ_ ).

_Extensionality.For all x and y, we have: x_ = _y iff_ ∀ _z_ ( _z_ ∈ _x_ ↔ _z_ ∈ _y_ )
_Pairing.For all x and y, there is a unique set,_ { _x_ , _y_ } _, such that for all z: z_ ∈{ _x_ , _y_ } _iff
either z_ = _x or z_ = _y
Union.For all x, there is a unique set,_ ⋃ _x, , such that for all z: z_ ∈⋃ _x iff_ (∃ _y_ ∈ _x_ ) _z_ ∈ _y
Power Set.For all x, there is a unique set,_ ℘( _x_ ) _, such that for all z: z_ ∈℘( _x_ ) _iff z_ ⊆ _x
Separation Schema.For all x andv there is a unique set,_ { _y_ ∈ _x_ : _φ_ ( _y_ , _v_ )} _, such that
for all z: z_ ∈{ _y_ ∈ _x_ : _φ_ ( _y_ , _v_ )} _iff both z_ ∈ _x and φ_ ( _z_ , _v_ )

In the Separation Schema, there is one axiom for each formula _φ_ ( _y_ , _v_ )in the signa-
ture. It is worth noting that the uniqueness claims in Pairing, Union, Power Set, and
the Separation Schema are redundant, given Extensionality,^35 and that the left-to-
right directions of the biconditionals in Pairing, Union, and Power Set are redun-
dant, given the Separation Schema. For instance, suppose that for all _x_ and _y_ there
is some _v_ such that if _z_ = _x_ or _z_ = _y_ then _z_ ∈ _v_. Then{ _z_ ∈ _v_ : _z_ = _x_ ∨ _z_ = _y_ }exists
by Separation and is obviously equal to{ _x_ , _y_ }.
Using these axioms, we define∅as the unique set with no members; the empty
set. Whilst there are _philosophical_ discussions to have about∅’s existence,^36 there
are no _technical_ discussions to be had. The usual background axioms for first-order
logic assert that there exists at least one object _x_ , and applying Separation to the
formula _z_ ≠ _z_ we obtain a set∅such that,∀ _z_ ( _z_ ∈∅↔( _z_ ∈ _x_ ∧ _z_ ≠ _z_ )), from
which it follows by elementary logic that∀ _z z_ ∉∅. The uniqueness of the empty
set then follows from Extensionality.
The intersection of _x_ , written⋂ _x_ , is the set whose members elements are ex-
actly those which are members of every element of _x_. This exists whenever _x_ is
non-empty, since⋂ _x_ ={ _y_ ∈⋃ _x_ :(∀ _z_ ∈ _x_ ) _y_ ∈ _z_ }, which exists by Union and
Separation. The usual binary operations of union _x_ ∪ _y_ and intersection _x_ ∩ _y_ can
then be defined via _x_ ∪ _y_ =⋃{ _x_ , _y_ }and _x_ ∩ _y_ =⋂{ _x_ , _y_ }. Finally, the singleton{ _x_ }
is defined to be{ _x_ , _x_ }and is the set whose unique member is _x_.
We define the successor _s_ ( _x_ )of _x_ to be the set _x_ ∪{ _x_ }, so that _z_ ∈ _s_ ( _x_ )iff either
_z_ = _x_ or _z_ ∈ _x_. This notation allows us to state another axiom:

_Infinity.There is a set w such that_ ∅∈ _w and for all x, if x_ ∈ _w then s_ ( _x_ )∈ _w_

(^35) For philosophical commentary on uniqueness, see Potter (2004: 258–9).
(^36) See e.g. Oliver and Smiley (2006: 126–32).


```
1.b. first- and second-order set theory 31
```
The empty set∅plays a role in set theory similar to the role zero plays in arithmetic,
and the successor function _s_ in set theory is similar to the successor function _S_ from
the axioms of Definition 1.9. In these terms, the Infinity Axiom says that there is a
set which contains the ersatz of zero and is closed under the ersatz of successor.
Using the intersection operation, defined above, we can also state another axiom,
whose role is to rule out infinite descending membership chains:

_Foundation.For every non-empty set x there is some z_ ∈ _x such that z_ ∩ _x_ =∅

After all, if an infinite chain ...∈ _xn_ ∈...∈ _x_ 2 ∈ _x_ 1 ∈ _x_ 0 existed, then the non-empty
set _x_ ={ _x_ 0 , _x_ 1 , _x_ 2 , ..., _xn_ , ...}would violate Foundation.
Introducing the usual notation∃! _xφ_ to abbreviate∃ _x_ ∀ _v_ ( _φ_ ↔ _x_ = _v_ ), for any
variable _v_ not occurring in _φ_ , we lay down an axiom schema which, intuitively, states
that the image of any set under a function is a set:

_Replacement Schema.For all w and allv: if_ (∀ _x_ ∈ _w_ )∃! _yφ_ ( _x_ , _y_ , _v_ ) _, then_ ∃ _z_ (∀ _x_ ∈
_w_ )(∃ _y_ ∈ _z_ ) _φ_ ( _x_ , _y_ , _v_ )

Finally, we lay down an axiom stating that any set can be equipped with a binary
relation that satisfies the axioms of a well-order:

_Choice.Any set can be well-ordered_

A well-order is a linear order such that any non-empty set of ordered elements has
a least element. (The axioms of a linear order were given in §1.12.) Note that
Choice, here, is a single axiom, expressed in first-order logic with an additional
primitive,∈. This single Axiom should _not_ be confused with the Choice Schema
for second-order logic, as laid down in §1.11, which yields infinitely many second-
order sentences. That said, there is evidently a connection between the Axiom and
the Schema: the Axiom of Choice (in our model theory) entails that the full seman-
tics for second-order logic always satisfies the Choice Schema, since one can use a
well-order of the underlying domain of the model (or one of its finite products) to
obtain the relevant witnesses for the Choice Schema.
Having discussed the axioms, we can finally define some theories:^37

Definition1.11: _The axioms of_ first-order Zermelo–Fraenkel set theory _,_ ZF _, are Ex-
tensionality, Pairing, Union, Power Set, Infinity, Foundation, the Separation Schema,
and the Replacement Schema. The theory_ ZFC _adds Choice to_ ZF_._

We can form second-order versions of these theories by replacing the first-order
schemas with appropriate second-order sentences. In particular, we replace the

(^37) A contemporary reference for ZFC is e.g. the monograph Kunen (1980).


32 logics and languages

Separation and Replacement _Schemas_ with simple _Axioms_ , i.e. individual sentences
of second-order logic with an additional primitive,∈:

_Separation._ ∀ _F_ ∀ _x_ ∃ _y_ ∀ _w_ [ _w_ ∈ _y_ ↔( _w_ ∈ _x_ ∧ _F_ ( _w_ ))]
_Replacement._ ∀ _G_ ∀ _w_ [(∀ _x_ ∈ _w_ )∃! _yG_ ( _x_ , _y_ )→∃ _z_ (∀ _x_ ∈ _w_ )(∃ _y_ ∈ _z_ ) _G_ ( _x_ , _y_ )]

We then define:

Definition 1.12: _The theory of_ second-order Zermelo–Fraenkel set theory with
Choice _,_ ZFC 2 _, is formed by taking the axioms of first-order_ ZFC _, and replacing the
Separation Schema with the Separation Axiom, and the Replacement Schema with the
Replacement Axiom, and by adding on the Comprehension Schema._

As with second-order arithmetic, the Choice Schema is not built into these theories,
and should not be confused with the (set-theoretic) Axiom of Choice. The theory
ZFC 2 is sometimes also called _Kelly–Morse set theory_.^38 While second-order set
theory is less widely used than first-order set theory, it plays an important role in
the foundations and philosophy of set theory. We discuss this in Chapters 8 and 11.
Occasionally, but especially from Chapter 7 onwards, we invoke elementary con-
siderations about ordinals and cardinals. As is usual, we reserve _α_ , _β_ , _γ_ , _δ_ for or-
dinals. An _ordinal_ is defined to be a transitive set which is well-ordered by mem-
bership, where _x_ is transitive iff every member of _x_ is a subset of _x_. The member-
ship relation on ordinals is usually just written with<, and it is provable in very
weak fragments of ZFC that<well-orders the ordinals. The successor operation
_s_ ( _α_ )= _α_ ∪{ _α_ }= _α_ +1 on ordinals is such that _α_ < _s_ ( _α_ )and there is no ordinal
_β_ with _α_ < _β_ < _s_ ( _α_ ). We define 0=∅, then 1= _s_ ( 0 ), 2= _s_ ( 1 ), 3= _s_ ( 2 ), ..., and
_ω_ ={0, 1, 2, 3, ...}. A limit ordinal is an ordinal _β_ such that _β_ ≠0 and _β_ ≠ _s_ ( _γ_ )for
any ordinal _γ_ ; and _ω_ is the least limit ordinal.
A _cardinal_ is an ordinal which is not bijective with any smaller ordinal. The finite
ordinals 0, 1, 2, ... and _ω_ are all cardinals. The aleph sequence provides the standard
enumeration of infinite cardinals:א 0 = _ω_ ;א _α_ + 1 is the least cardinal greaterא _α_ ; and
when _α_ is a limit ordinal, the cardinalא _α_ is the least upper bound of{א _β_ : _β_ <
_α_ }. Henceא _ω_ is the least ordinal which is greater thanא 0 ,א 1 ,א 2 , ... and it too is a
cardinal. We reserve _κ_ , _λ_ for cardinals, and we use∣ _X_ ∣for the _cardinality_ of the set
_X_ , that is∣ _X_ ∣= _κ_ iff _X_ is bijective with _κ_ but with no smaller ordinal. We frequently
invoke the facts that∣ _X_ × _Y_ ∣ =max{∣ _X_ ∣,∣ _Y_ ∣}when one of∣ _X_ ∣,∣ _Y_ ∣is infinite, and
that the union of≤ _κ_ -many sets of cardinality≤ _κ_ itself has cardinality≤ _κ_ when _κ_
is infinite.^39

(^38) See Monk (1969) for an axiomatic development of set theory in this framework.
(^39) These elementary facts about cardinality can be found in any set-theory textbook, such as Hrbáček
and Jech (1999) or the beginning chapters of Kunen (1980) or Jech (2003).


```
1.c. deductive systems 33
```
### 1.c Deductive systems

In several places in this book, we will need to refer to a deductive system for first-
order and second-order logics. Many different but provably equivalent deductive
systems are possible, and we could compare and contrast their relative technical and
philosophical merits. However, deduction is not the focus of this book, so we will
simply set down a system of natural deduction without much comment.^40
To be clear: we do not expect anyone to be able to learn how to use or manipulate
natural deductions just by reading this appendix. Equally, we did not expect that
anyone could learn how to do arithmetic or set theory just by reading the previous
two appendices. The aim is just to lay down a particular system, so that we can refer
back to it later in this book.
First, we lay down rules for the sentential connectives. In the rules¬E,∨E, and
→I, an assumption is _discharged_ at the point when the rule is applied. We mark this
using square brackets, and a cross-referencing index, _n_ :

```
Ex
φ
```
```
φ ¬ φ
 Raa
[ φ ] n
⋮
 ¬I, n
¬ φ
```
```
[¬ φ ] n
⋮
¬E, n
φ
φ ψ
∧I
( φ ∧ ψ )
```
```
( φ ∧ ψ )
φ ∧E
```
```
( φ ∧ ψ )
ψ ∧E
φ
∨I
( φ ∨ ψ )
```
```
ψ
∨I
( φ ∨ ψ )
( φ ∨ ψ )
```
```
[ φ ] n
⋮
χ
```
```
[ ψ ] n
⋮
χ ∨E, n
χ
```
```
[ φ ] n
⋮
ψ →I, n
( φ → ψ )
```
```
φ ( φ → ψ )
ψ →E
```
We now consider the rules for first-order quantifiers. These rules are subject to
the following restrictions: _t_ can be any term; in∀I, _c_ must not occur in any undis-
charged assumption on which _φ_ ( _c_ )depends; in∃I one can replace any/all occur-
rences of _t_ with _x_ , but in∀I one must replace _all_ occurrences of _c_ with _x_ , and in
both of these rules _x_ should not already occur in _φ_ ( _c_ ); finally, in implementing∃E,
_c_ must not occur in∃ _xφ_ ( _x_ ), in _ψ_ , or in any undischarged assumption on which _ψ_
depends, except for _φ_ ( _c_ ).

(^40) It is essentially based on Prawitz (1965).


34 logics and languages

```
φ ( c )
∀I
∀ xφ ( x )
```
```
∀ xφ ( x )
∀E
φ ( t )
φ ( t )
∃I
∃ xφ ( x )
∃ xφ ( x )
```
```
[ φ ( c )] n
⋮
ψ
ψ ∃E, n
```
To complete the rules for first-order logic, we have the rules for identity. Note that
adopting the rule=I is equivalent to treating every instance of _t_ = _t_ as an _axiom_ ,
since it is licensed on any (including no) assumptions:

```
=I
t = t
```
```
t 1 = t 2 φ ( t 1 )
=E
φ ( t 2 )
```
```
t 2 = t 1 φ ( t 1 )
=E
φ ( t 2 )
```
To move to a deduction system for second-order logic, we simply add rules for the
quantifiers, exactly analogous to the first-order case. So, for relation-variables we
have (with similar restrictions as before):

```
φ ( Rm )
∀ 2 I
∀ Xmφ ( Xm )
```
```
∀ Xmφ ( Xm )
∀ 2 E
φ ( Rm )
φ ( Rm )
∃ 2 I
∃ Xmφ ( Xm )
∃ Xmφ ( Xm )
```
```
[ φ ( Rm )] n
⋮
ψ
ψ ∃^2 E, n
```
The case of function symbols is exactly similar. Finally, to ensure that our deduction
system aligns with _faithful_ Henkin models, we also allow as axioms any instance of
the Comprehension or Choice schemas, i.e. we add these rules:

```
Comp
∃ Xn ∀ v ( φ ( v )↔ Xn ( v ))
```
```
Choice
∀ Xn +^1 (∀ v ∃ y Xn +^1 ( v , y )→∃ pn ∀ v Xn +^1 ( v , pn ( v )))
```
These are all the rules for our deduction systems for sentential, first-order and
second-order logic. When we have a deduction whose only undischarged assump-
tions are members of _T_ and which ends with the line _φ_ , we write _T_ ⊢ _φ_.


