**Kaynak:** [[00_Context/0_Button-Walsh_Philosophy_and_model_theory/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

## 4 Compactness, infinitesimals, and the reals

In this chapter, we introduce the Compactness Theorem. This provides us with the
tools to investigate non-standard models. These non-standard models will occupy
us in Part B of this book. There, they will be treated as some kind of _foe_. But, in this
chapter, non-standard models come as _friends_.
Arguably the most famous application of the Compactness Theorem lies in
Robinson’s development of non-standard analysis. Robinson’s aim was to resus-
citate _infinitely small quantities_ , as used in the historical calculus of the seventeenth
and early eighteenth century. In this chapter, we suggest that Robinson’s attempt to
‘fully vindicate’ the historical calculus can be extended beyond even the point that
Robinson himself realised.^1 However, this is not merely of historic interest: it pro-
vides a stunning example of how model-theoretic methods can help to articulate
and defend varieties of instrumentalism in the philosophy of mathematics.
The ideas of this chapter focus on a single mathematical structure, namely the
real numbers and some of its model-theoretic extensions. While most of our ef-
forts in this chapter concern non-standard analysis, we close the chapter with a brief
discussion of other model-theoretic perspectives on the real numbers.

### 4.1 The Compactness Theorem

Here is one of the most fundamental results in model theory:

Theorem 4.1(Compactness Theorem): _Let T be a first-order theory. Then T has a
model iff every finite subtheory of T has a model._

_Proof.Left-to-right_ is trivial, since any model of _T_ is a model of each of _T_ ’s finite
subtheories. _Right-to-left_ holds by assuming that every finite subtheory of _T_ has a
model. Then _T_ is consistent, by the soundness of the deductive system and Propo-
sition 4.20. So _T_ has a model by Gödel’s Completeness Theorem 4.24.

This quick proof of Compactness uses Gödel’s Completeness Theorem. No doubt

(^1) The phrase ‘fully vindicate’ is in A. Robinson (1966: 2). Elsewhere, Robinson was more circumspect
about the aims of the project: he says that his theory ‘provides a satisfactory framework for the develop-
ment’ of Leibniz’s notion of infinitesimals (1968: 70), and that it is ‘a natural approach to [...] a calculus
involving infinitesimals’ (1961: 433).


76 compactness, infinitesimals, and the reals

most readers will have encountered this result before; but, for the sake of complete-
ness, we prove it in §4.a. However, given its centrality, we also offer two more
proofs of the Compactness Theorem in this book: a more model-theoretic proof in
§4.b, and a set-theoretic-cum-algebraic proof in §13.c.
To demonstrate the power of the Compactness Theorem, we will use it to prove
the existence of a non-standard model of arithmetic. Let _T_ be the theory of ‘true
arithmetic’, i.e. the theory containing all the sentences in the signature of PA which
are true on the natural numbers (PA is set out in Definition 1.9 of §1.a). Let _c_ be a
new constant symbol, and consider the following expanded theory where the term
_Sn_ ( 0 )is defined as in ( _numerals_ ) of §1.13:

```
T ∗= T ∪{ Sn ( 0 )< c : n < ω } ( non-standard )
```
Let _T_ ∗ 0 be any finite subtheory of _T_ ∗. Since _T_ ∗ 0 is finite, it contains at most finitely
many sentences of the form _Sn_ ( 0 )< _c_ ; so let _m_ be the largest number _n_ such that
_Sn_ ( 0 )< _c_ appears in _T_ ∗ 0 (or 0 if there are no instances). Then consider the model
_N_ +which is a signature expansion of _N_ in which _c_ is interpreted to name _m_ +1.
Clearly _N_ +is a model of _T_ ∗ 0. And since _T_ ∗ 0 was an arbitrary finite subtheory of _T_ ∗,
the Compactness Theorem 4.1 entails that _T_ ∗itself has a model, _N_ ∗.
In _N_ ∗, the interpretation of _c_ must differ from the interpretation of each _Sn_ ( 0 ),
as _n_ ranges over natural numbers in the meta-theory. So this element must be _in-
finitary_ , for according to _N_ ∗it is larger than any number picked out by a numeral.
It will be useful to have a term for such models and elements:

Definition4.2: _An element b of a model M of_ PA _is_ non-standard _iff M_ ⊧ _b_ ≠ _Sn_ ( 0 )
_for each n_ < _ω, where n ranges over natural numbers in the meta-theory. A_ non-standard
model _of_ PA _is a model which contains a non-standard element._

In these terms, _cN_
∗
is a non-standard element in the non-standard model _N_ ∗.
Our model _N_ ∗also illustrates an important model-theoretic notion. We first
introduce the notion, and then show how it applies to _N_ ∗.^2

Definition 4.3: _For any_ L _-structures A and B such that A_ ⊆ _B, we say that B is an_
elementary extension _of A iff for any elementsa from A and any_ L _-formula φ_ ( _x_ ) _we
have A_ ⊧ _φ_ ( _a_ ) _iff B_ ⊧ _φ_ ( _a_ )_. Equivalently, we say that A is an_ elementary substruc-
ture _of B, or simply write A_ ⪯ _B._

A closely related notion drops the requirement that _A_ ⊆ _B_ :

(^2) See Hodges (1993: 54) and Marker (2002: 44).


```
4.2. infinitesimals 77
```
Definition 4.4: _For any_ L _-structures A and B, we say that a map h_ : _A_ Ð→ _B is
an_ elementary embedding _iff for any elementsa from A and any_ L _-formula φ_ ( _x_ ) _we
have A_ ⊧ _φ_ ( _a_ ) _iff B_ ⊧ _φ_ (̷ _h_ ( _a_ ))_._

As in Definition 2.2, if _a_ =( _a_ 1 , ..., _an_ )then̷ _h_ ( _a_ )=( _h_ ( _a_ 1 ), ..., _h_ ( _an_ )). The name
‘embedding’ comes from fact that if _B_ ⊧ _h_ ( _a_ )= _h_ ( _b_ )then _A_ ⊧ _a_ = _b_ , so that
elementary embeddings are always injective. Finally, if _h_ : _A_ Ð→ _B_ is an ele-
mentary embedding, then _B_ is isomorphic to an elementary extension of _A_ , by a
simple Push-Through Construction. Up to isomorphism, then, elementary exten-
sions and elementary embeddings are two viewpoints on the same thing.
We can now apply these notions to our model _N_ ∗from before. Where _N_ is again
the natural numbers, the map _h_ : _N_ Ð→ _N_ ∗given by _h_ ( _n_ )=( _Sn_ ( 0 )) _N_

∗
is an
elementary embedding. For, given any one-place formula _φ_ ( _x_ ), we have:

```
N ⊧ φ ( n )iff N ⊧ φ ( Sn ( 0 ))iff N ∗⊧ φ ( Sn ( 0 ))iff N ∗⊧ φ ( h ( n )) ( elem )
```
The first biconditional holds because the term _Sn_ ( 0 )picks out _n_ on _N_ , the second
biconditional holds because _N_ and _N_ ∗both satisfy the same complete theory _T_
in their common signature and _φ_ ( _Sn_ ( 0 ))is a sentence in this signature, and the
final biconditional holds thanks to the definition of _h_. And obviously the same
argument as given for ( _elem_ ) works for formulas in any number of free variables. So
_h_ is an elementary embedding and our model _N_ ∗is isomorphic to an elementary
extension of the natural numbers. But it is not isomorphic to the natural numbers
_themselves_. (This refutes the converse of Corollary 2.5.)

### 4.2 Infinitesimals

Armed with the general idea of a non-standard model, we now turn to the devel-
opment of Robinson’s non-standard analysis. The aim, recall, is to resuscitate in-
finitesimals, so we must start by saying what they are:

Definition4.5: _An_ infinitesimal _is a quantity η such that_ 0 <∣ _η_ ∣<^1 _nfor every natural
number n_ > 0_._

Here, and throughout the chapter, we use vertical bars to indicate _absolute value_.
(Note that many other texts treat zero itself as an infinitesimal.^3 However, by adopt-
ing the convention that zero is not infinitesimal, we can state our results and discuss
certain philosophical questions more concisely.)
Now, let _R_ be any expansion of the real numbers as a linear order with addition
and multiplication and constants for zero and one. Let _T_ be the complete theory

(^3) See Hurd and Loeb (1985: 25) and Goldblatt (1998: 50).


78 compactness, infinitesimals, and the reals

of _R_ in this signature. By using the Compactness Theorem 4.1 exactly as in §4.1,
we can create a model of _T_ with infinitesimals. In particular, if _η_ is the new constant
symbol, we let

```
T ∗= T ∪{( 0 <∣ η ∣<^1 n ): n < ω }
```
Let _T_ ∗ 0 be any finite subtheory of _T_ ; let _m_ be the greatest _n_ with( 0 <∣ _η_ ∣<^1 _n_ )
in _T_ ∗ 0 ; then the expansion of _R_ in which _η_ is interpreted as _m_^1 + 1 is a model of _T_ ∗ 0.
Since _T_ ∗ 0 was an arbitrary finite subtheory of _T_ ∗, by the Compactness Theorem 4.1
the theory _T_ ∗has a model.
An argument similar to that of §4.1 also shows that _T_ ∗has a model _R_ ∗which
is an elementary extension of _R_. For, in the previous paragraph, there were no re-
strictions on the type of signature which we could interpret on the real numbers,
other than that it contained{0, 1,<,+,×}. So, we can assume that each real num-
ber _r_ is denoted by a constant _cr_ in the structure _R_.^4 As above, there is a model _R_ ∗
of _T_ ∗in this expanded signature. There is therefore a natural map _h_ : _R_ Ð→ _R_ ∗
given by sending each real number _r_ to the interpretation of _cr_ in the structure _R_ ∗.
So for each _n_ -place formula _φ_ ( _x_ )in the signature, we have the following (compare
this with ( _elem_ ) of §4.1):

```
R ⊧ φ ( r )iff R ⊧ φ ( cr )iff R ∗⊧ φ ( cr )iff R ∗⊧ φ (̷ h ( r ))
```
Accordingly, _h_ is an elementary embedding, so that _R_ ∗is isomorphic to an elemen-
tary extension of _R_ by a Push-Through Construction. Hence, _R_ has an elementary
extension containing infinitesimals.
In §4.1, we used Compactness and sentences of the form _n_ < _c_ to obtain infinitary
elements. Our method for obtaining infinitesimals involved considering sentences
of the form( 0 <∣ _η_ ∣<^1 _n_ ). This suggests, correctly, that infinitary elements are the
reciprocals of infinitesimals, and vice versa. Indeed, we define:

Definition4.6: _A quantity b is_ infinite _iff n_ <∣ _b_ ∣ _for all natural numbers n. A quantity
b is_ finite _iff there is a natural number n such that_ ∣ _b_ ∣≤ _n._

It is now easy to see _b_ is infinitesimal iff^1 _b_ is infinite. It follows that any elemen-
tary extension of _R_ containing infinitesimals will also contain infinite elements,
for division is defined everywhere in _R_ (except on 0). It is also easy to see that any
quantity is either: (i) infinite, (ii) finite and not infinitesimal, or (iii) infinitesimal.

(^4) Using the notation of §1.5, we could do this by moving from _R_ to _R_ ○; but this would introduce
more superscripts than necessary.


```
4.3. notational conventions 79
```
### 4.3 Notational conventions

Over the next few sections, we use infinitesimals to develop a non-standard ap-
proach to real analysis. Readers with no prior familiarity with real analysis will
struggle with this material; they may wish to take it on trust that we _can_ develop
an entirely rigorous theory of infinitesimals, and skip directly to §4.7, where we dis-
cuss the largely philosophical issue of instrumentalism about infinitesimals. But
readers who are sticking with us should be forearmed with some nomenclature.
In what follows, we work with elementary extensions _R_ ∗of _R_. The signature
of _R_ will vary from application to application. Since the first-order part of _R_ is
simply the real numbers, we simply call elements of _R reals_. For lack of any better
term, we continue to call the elements of _R_ ∗ _quantities_. So, on this definition, all
reals are quantities.
We now define an important equivalence relation, of ‘almost-equality’:

```
a ≈ b iff a − b is infinitesimal or zero
```
The notation _a_ ≈ _b_ also allows us to define the standard part of a finite quantity. In
particular, if _a_ is finite, then we define its _standard part_ to be the unique real num-
ber _r_ such that _r_ ≈ _a_.^5 For instance, if _η_ is infinitesimal, then the standard part of _η_
is zero, while the standard part of 5+ _η_ is just 5.
Our final piece of notation relates to definability (as laid down in §1.13). If _f_ :
_R_ Ð→ _R_ is any function which is _R_ -definable by a formula _φ_ ( _x_ , _y_ ), then by the
elementary equivalence of _R_ and _R_ ∗, the formula _φ_ ( _x_ , _y_ )as interpreted in _R_ ∗
defines a function from _R_ ∗to _R_ ∗. In what follows, we denote this function
by _f_ ∗: _R_ ∗Ð→ _R_ ∗. We proceed similarly with _n_ -place functions and _n_ -place
relations. However, for certain very frequently used functions, like absolute value,
we sometimes abuse notation and write∣ _x_ ∣instead of the more cumbersome∣ _x_ ∣∗.

### 4.4 Differentials, derivatives, and the use of infinitesimals

We will start by showing how to use infinitesimals to define both the derivative and
its historical predecessor, the differential. The very first textbook on the calculus,
l’Hôpital’s _Analysis of the Infinitely Small_ , contains this definition at its outset: ‘The
infinitely small portion by which a variable quantity continually increases or de-
creases is called the _Differential_ .’^6 In this vein, we offer the following:

Definition4.7: _Let η be an infinitesimal quantity, let f be a function on quantities, and
let t be any quantity. The_ differential _is then_ ( _dηf_ )( _t_ )= _f_ ( _t_ + _η_ )− _f_ ( _t_ )

(^5) The standard part was first defined in A. Robinson (1966: 57). It takes some effort to verify its
existence and uniqueness; see e.g. Hurd and Loeb (1985: 26) and Goldblatt (1998: 53).
(^6) l’Hôpital (2015: Definition II, p.2).


80 compactness, infinitesimals, and the reals

That is, the differential( _dηf_ )( _t_ )tells us how much a ‘variable quantity’ changes
when its argument is infinitesimally increased from _t_ to _t_ + _η_.
The differential was the primary concept in the historical calculus. But we can
define the now more familiar notion of the derivative in terms of the differential.

Definition 4.8: _Let η, f and t be as in Definition 4.7 and let L_ ∈ _R. Then f has_

derivative _L at t iff_ ( _dηfη_ )( _t_ )≈ _L for all infinitesimals η._

For example, the derivative of _f_ ( _t_ )= _t_^2 is 2 _t_ :

```
( dηf )( t )
η
```
#### =

```
( t + η )^2 − t^2
η
```
#### =

```
t^2 + 2 tη + η^2 − t^2
η
```
#### =

```
2 tη + η^2
η
```
```
= 2 t + η ≈ 2 t
```
When _t_ is real and _η_ is infinitesimal, both the numerator 2 _tη_ + _η_^2 and the denom-
inator _η_ are infinitesimal; but 2 _t_ is not. As Euler put it, in the differential calculus
‘the work involved is not finding the differentials themselves, which are both equal
to zero, but rather in finding their geometric ratio.’^7
The computation of _f_ ( _t_ )= _t_^2 , however, led to many criticisms of the use of
infinitesimals. To some early readers of the calculus, it seemed that the last step was
justified by supposing that the infinitesimal _η_ was _equal_ to zero, i.e. that 2 _t_ + _η_ = 2 _t_.
(Look again at Euler’s claim, that the differentials ‘are both equal to zero’.) This, of
course, contradicts the assumption that _η_ was _non-zero_ , which we needed in order
to divide by _η_ at the outset of the calculation. Berkeley put the point as follows:

I admit that signs may be made to denote either any thing or nothing: and consequently
that in the original notation _t_ + _η_ , _η_ might have signified either an increment or nothing.
But then which of these soever you make it signify, you must argue consistently with such
its signification, and not proceed upon a double meaning: Which to do were a manifest
sophism.^8

That is, Berkeley saw the original versions of the calculus as haphazardly assuming
that a quantity _η_ was non-zero at the outset of a calculation, and then _later in that
same calculation_ explicitly violating this assumption.
Fortunately, Robinson’s distinction between _x_ = _y_ and _x_ ≈ _y_ dispels this worry.
We do not say that 2 _t_ + _η_ = 2 _t_ , only that 2 _t_ + _η_ ≈ 2 _t_. As Robinson said:

[...] instead of claiming that two quantities which differ only by an infinitesimal amount,
e.g. _x_ and _x_ + _η_ , are actually equal, we find only that they are equivalent in a well-defined
sense, _x_ + _η_ ≈ _x_ and thus can be substituted for one another in some relations but not in
others.^9

(^7) Euler (1755: 66).
(^8) Ewald (1996: v.1 p.69), variables changed to match preceding text.
(^9) A. Robinson (1967: 34), variables and notation changed to match main text. See also (1966: 266).


```
4.5. the orders of infinite smallness 81
```
In short, the distinction between=and≈gives firm-footing to the notion of a
derivative, as presented in terms of infinitesimals via Definition 4.8.
However, it is still not clear how to relate _that_ notion of a derivative, with the
notion of a derivative _as we currently understand it_ , namely as:

Definition 4.9: _For any function f_ :R Ð→R _and any t_ ∈R _, we define f_ ′( _t_ )=
lim _x_ → 0 _f_ ( _t_ + _x_ ) _x_ − _f_ ( _t_ ) _, when this limit exists._

This is where our model-theoretic machinery starts to pay its way. As Robinson
noted, these two notions provably align:^10

Proposition 4.10: _If f_ : _R_ Ð→ _R is R-definable and t_ , _L_ ∈ _R, then the following
are equivalent:_

```
(1) f ′( t )= L in the sense of Definition 4.9
(2) f ∗ has derivative L at t in the sense of Definition 4.8
```
_Proof.(1)_ ⇒ _(2)._ Suppose that _f_ ′( _t_ )= _L_. Let _η_ be infinitesimal and let _ε_ >0 be

a positive real number. We must show that∣( _dηf_

∗)( _t_ )
_η_ − _L_ ∣< _ε_. Applying Defini-
tion 4.9 to _ε_ >0, we obtain a real _δ_ >0 such that for all _x_ ∈ _R_ if 0<∣ _x_ ∣ < _δ_
then∣ _f_ ( _t_ + _x_ ) _x_ − _f_ ( _t_ )− _L_ ∣< _ε_. By elementarity,^11 this holds in _R_ ∗. Since _η_ is infinites-

imal, of course 0<∣ _η_ ∣< _δ_ and so∣( _dηf_

```
∗)( t )
η − L ∣< ε , as required.
(2) ⇒ (1). Suppose that( dηf
```
∗)( _t_ )
_η_ ≈ _L_ for all infinitesimal _η_. Let _ε_ >0 be a real.
Suppose that _δ_ >0 is infinitesimal with 0<∣ _η_ ∣< _δ_ , so that _η_ is also infinitesimal.

Then by hypothesis,∣( _dηf_

```
∗)( t )
η − L ∣< ε. Hence, in R
```
```
∗there is δ >0 such that
```
if 0<∣ _η_ ∣< _δ_ then∣( _dηfη_ )( _t_ )− _L_ ∣< _ε_. By elementarity, this also holds in _R_.

### 4.5 The orders of infinite smallness

We have just glimpsed the power of Robinson’s non-standard analysis. Moreover,
there is clearly _some_ resemblance between Robinson’s notion of an infinitesimal and
its historical antecedents. But Robinson claimed at times to have ‘ _fully_ vindicated’
Leibniz’s use of infinitesimals (our emphasis). And this claim is open to criticism.
In particular, Bos has argued that there are aspects of the historical usage of in-
finitesimals which have no counterpart in Robinson’s non-standard analysis. Con-
sequently, Bos writes that the early calculus and non-standard analysis simply

(^10) A. Robinson (1961: 436, 1966: 68, 1967: 31).
(^11) I.e. appealing to the following: since _A_ ⪯ _B_ , when _a_ are from _A_ we have _A_ ⊧ _φ_ ( _a_ )iff _B_ ⊧ _φ_ ( _a_ ).


82 compactness, infinitesimals, and the reals

present us with two different conceptions of ‘the structure of the set of infinites-
imals.’^12 In this section, we explain Bos’s reasons for making this claim, and we will
respond to Bos on Robinson’s behalf in §4.6. However, we want to emphasise that
Bos’s objection poses no threat to non-standard analysis as a part of mathematics
or logic (and nor was it meant to). Instead, Bos’s criticism challenges Robinson’s
claims about the broader intellectual significance of his non-standard analysis.
As a way into Bos’s objection, we consider the proof of the product rule for
derivatives. Let _f_ and _g_ be two functions, let _t_ be a point of evaluation, and let _η_ be
an infinitesimal. For readability, we will (when convenient) write the differential
of _h_ as _dh_ rather than( _dηh_ )( _t_ ), and the value _h_ ( _t_ )as _h_. Then the traditional proof
of the product rule began thus:

```
d ( f ⋅ g )=( f ⋅ g )( t + η )−( f ⋅ g )( t )
= f ( t + η )⋅ g ( t + η )− f ( t )⋅ g ( t )
=( d f + f ( t ))⋅( dg + g ( t ))− f ( t )⋅ g ( t )
= d f ⋅ dg + d f ⋅ g ( t )+ f ( t )⋅ dg + f ( t )⋅ g ( t )− f ( t )⋅ g ( t )
= f ⋅ dg + g ⋅ d f + d f ⋅ dg ( prod-comp )
```
Robinsonian analysis provides us with robust tools to continue this proof. We first
divide throughout by _η_ , obtaining _d_ ( _fη_ ⋅ _g_ )= _f_ ⋅ _dgη_ + _g_ ⋅ _dfη_ + _d f_ ⋅ _dgη_. Now, assuming
that _f_ is differentiable at _t_ ,^13 we can prove that _d f_ is infinitesimal:

Proposition 4.11: _Suppose that f_ : _R_ Ð→ _R is R-definable and differentiable at
t_ ∈ _R, and that η in R_ ∗ _is infinitesimal. Then_ ( _dηf_ )( _t_ )= _d f is infinitesimal._

_Proof._ By Proposition 4.10, for some _L_ ∈ _R_ we have _f_ ( _t_ + _η_ ) _η_ − _f_ ( _t_ ) ≈ _L_. So

∣ _f_ ( _t_ + _η_ ) _η_ − _f_ ( _t_ )− _L_ ∣<^1 _n_ for all _n_ > 0. Since _η_ ≠0, we may multiply through by

∣ _η_ ∣to obtain∣( _f_ ( _t_ + _η_ )− _f_ ( _t_ ))− _L_ ⋅ _η_ ∣ < ∣ _ηn_ ∣ <^1 _n_. Since _n_ > 0 was arbitrary,
_f_ ( _t_ + _η_ )− _f_ ( _t_ )≈ _L_ ⋅ _η_ ≈0, where the last equivalence holds because _L_ is in
_R_ and _η_ is infinitesimal.

If _g_ is differentiable at _t_ , then _dgη_ is finite by Proposition 4.10, so that _d f_ ⋅ _dgη_ is in-

finitesimal, so that now _d_ ( _fη_ ⋅ _g_ ) ≈ _f_ ⋅ _dgη_ + _g_ ⋅ _dfη_. By Proposition 4.10 again, both
_dg
η_ ≈ _g_

```
′and df
η ≈ f
```
```
′, so that d ( f ⋅ g )
η ≈ f ⋅ g
```
```
′+ g ⋅ f ′. Invoking Proposition 4.10 one
```
last time, we obtain the now-familiar product rule:

```
( f ⋅ g )′= f ⋅ g ′+ g ⋅ f ′ ( prod-rule )
```
(^12) Bos (1974: 84).
(^13) The assumption is necessary. Let _f_ ( _x_ )= _x_ − (^1) if _x_ ≠0, and let _f_ ( _x_ )=0 otherwise. Then _dηf_ ( 0 )=
_f_ ( _η_ )− _f_ ( 0 )= _η_ −^1 , which is infinite.


```
4.5. the orders of infinite smallness 83
```
But that is how things continue in the _Robinsonian_ setting, and it involves noting
the difference between≈and=. Historical practitioners of the calculus, however,
obtained the product rule just by _discarding_ the term _d f_ ⋅ _dg_ at the end of the calcu-
lation ( _prod-comp_ ).
In an attempt to justify discarding this term, l’Hôpital wrote that ‘this is because
the quantity _d f_ ⋅ _dg_ is infinitely small with respect to the other terms _g_ ⋅ _d f_ and _f_ ⋅ _dg_ .’^14
But this explanation is dangerously quick. The product of an infinitesimal with a
real number is itself an infinitesimal, and hence the two terms _f_ ⋅ _dg_ and _g_ ⋅ _d f_ are _both_
infinitesimals since _dg_ and _d f_ are infinitesimals (as we just saw). So l’Hôpital’s point
cannot have been that the term _d f_ ⋅ _dg_ is an infinitesimal while the other two terms
were not. Equally, l’Hôpital’s point cannot have been that we can _always_ discard
infinitesimals, for then we could discard all three terms. Finally, while the absolute
value of _d f_ ⋅ _dg_ is strictly less than that of the other two terms, this does not itself
explain why we should be allowed to discard _d f_ ⋅ _dg_ , any more than we could hope to
obtain a true identity by discarding the term 3 in the equation 15= 7 + 5 +3. Rather,
l’Hôpital’s point must be something more like the following: _d f_ ⋅ _dg_ is somehow of
a _different order of smallness_ than the other two terms. But Robinsonian analysis has
not (yet) given us any way to make sense of this notion.
The concern just voiced about the product rule is not anachronistic; Berkeley
made essentially the same complaint. Working geometrically, Berkeley conceived
of _f_ and _g_ as the lengths of two lines _A_ and _B_ , and of _d f_ and _dg_ as the small lengths
_a_ and _b_ by which they are increased. Then( _A_ + _a_ )( _B_ + _b_ )− _AB_ represents the
difference in area of a rectangle when its sides are increased from _A_ and _B_ to _A_ + _a_
and _B_ + _b_. Berkeley noted that some authors had suggested that this difference was
the quantity _aB_ + _bA_. But Berkeley insisted that:

[...] _aB_ + _bA_ + _ab_ will be the true increment of the rectangle, exceeding that which was ob-
tained by the former illegitimate and indirect method by the quantity _ab_. And this holds
universally be the quantities _a_ and _b_ what they will, big or little, finite or infinitesimal, in-
crements, moments, or velocities. Nor will it avail to say that _ab_ is a quantity exceedingly
small: since we are told that ‘in mathematical matters errors, however small, are not to be
contemned.’^15

Note that this a slightly different kind of objection than we discussed in §4.4. There
it seemed that Berkeley was (rightly) objecting to a lack of care in distinguishing be-
tween _x_ = _y_ and _x_ ≈ _y_. Here, Berkeley is drawing attention to the fact that the early
calculus seemed simply to discard certain infinitesimals from sums of infinitesimals,
apparently because some infinitesimals were sufficiently smaller than others to li-
cense this.

(^14) l’Hôpital (2015: 4), variables changed to match preceding text.
(^15) Ewald (1996: v.1 p.66).


84 compactness, infinitesimals, and the reals

These issues about the product rule are far from isolated, and Bos draws atten-
tion to a host of other similar cases. For instance, he cites an argument of Bernoulli
that the quotient of an infinitesimal of order one and an infinitesimal of order three
should be an infinitely large quantity of order two.^16 Likewise, he cites Euler’s argu-
ment that the natural logarithm of an infinitesimal is of a different order of smallness
than all of the _n_ throots of the infinitesimal.^17
The essential problem is this. Proofs in the historical calculus appealed to a no-
tion of _different orders of smallness_. If this notion cannot be accommodated within
non-standard analysis, then there is a real concern that non-standard analysis and
the historical calculus employ different notions of _infinitesimal_.

### 4.6 Non-standard analysis with a valuation

Fortunately, as we now show, a natural notion of different orders of smallness _is_
available within Robinson’s framework.
We will define a function, _v_ , which allows us to compare different orders of small-
ness. So when _a_ and _b_ are of the _same_ order of smallness, we write _v_ ( _a_ )= _v_ ( _b_ );
and when _a_ is _much_ smaller than _b_ , and so of a greater order of smallness, we write
_v_ ( _a_ )> _v_ ( _b_ ).^18 Here is the formal implementation of this intuitive idea:

Theorem4.12: _Let the natural logarithm function,_ ln _, be definable in R, and let R_ ∗⪰
_R. Then there is an ordered abelian group G and a surjective map v_ : _R_ ∗Ð→( _G_ ∪
{∞}) _satisfying the following properties:_

```
(1)v ( a )=∞ iff a = 0
(2)v ( ab )= v ( a )+ v ( b )
(3) v ( a + b )≥min( v ( a ), v ( b ))
(4) 0 < v ( a )<∞ iff a is infinitesimal
(5) v ( a )< 0 iff a is infinite
(6)v ( a )= 0 iff a is finite, non-zero, and not infinitesimal
(7)If ∣ a ∣≤∣ b ∣ , then v ( a )≥ v ( b )
```
The function _v_ in this theorem is a _valuation map_. Axioms (1)–(3) are the axioms
for a _valued field_ ,^19 while axioms (4)–(7) indicate how _v_ acts differently on infinites-
imals, finite and infinite quantities. The notion of an ‘ordered abelian group’ just

(^16) Bos (1974: 23).
(^17) Bos (1974: 84) and Euler (1780: §§9–14).
(^18) There is, we admit, an awkwardness in describing this situation by saying that ‘ _a_ is of a _greater order
of smallness_ than _b_ ’. But we hope that this awkwardness will be quickly mitigated by the formalism of the
valuation function.
(^19) See Engler and Prestel (2005) for a standard treatment of valued fields, and see van den Dries (2014)
for a discussion of traditional applications to model theory. See in particular Engler and Prestel (2005: 28)


```
4.6. non-standard analysis with a valuation 85
```
encapsulates algebraic properties common to ordered structures with an addition
function, such as the integers or the reals.^20
To get a sense of how _v_ behaves, we offer two quick observations. When _a_ and
_b_ are infinitesimals, their product is much smaller than either infinitesimal, in that
_v_ ( _ab_ )= _v_ ( _a_ )+ _v_ ( _b_ )> _v_ ( _a_ ), by clauses (2) and (4) of the Theorem. By contrast,
when _a_ is infinitesimal but _b_ is a finite, non-zero, non-infinitesimal, their product is
exactly as small as _a_ itself, since _v_ ( _ab_ )= _v_ ( _a_ )+ _v_ ( _b_ )= _v_ ( _a_ )+0, by clause (6).
We defer the proof of Theorem 4.12 to §4.c. But we also prove there that the
group mentioned in Theorem 4.12 is unique up to isomorphism (see Proposition
4.26). And this shows that, up to isomorphism, our valuation function uniquely
implements an extremely intuitive idea of ‘orders of smallness’.
Once we are armed with our valuation map, _v_ , we can set about recovering var-
ious historical arguments which invoked the idea of different orders of smallness.
We start with the historical deployment of the product rule. To handle this, we use
the following result, which shows that, when a function has non-zero derivative, its
differential gets valuated the same as its infinitesimal:

Proposition 4.13: _Let R_ ∗ _be as in Theorem 4.12. Let f_ : _R_ Ð→ _R be R-definable
and also differentiable at t. Then f_ ′( _t_ )≠ 0 _iff: v_ (( _dηf_ ∗)( _t_ ))= _v_ ( _η_ ) _for all infinites-
imals η._

_Proof._ By Proposition 4.10 and Theorem 4.12, the following are equivalent:

```
(1) f ′( t )≠ 0
(2) there is finite non-zero L ∈ R such that( dηf
```
```
∗)( t )
η ≈ L for all infinitesi-
mals η
(3) v (( dηf
```
```
∗)( t )
η )=0 for all infinitesimals η
(4) v (( dηf ∗)( t ))= v ( η )for all infinitesimals η
```
The only aspect of this equivalence which merits comment is (3)⇒(2). Suppos-
ing (3), by Theorem 4.12, for each infinitesimal _η_ there is some _Lη_ ∈ _R_ ∖{ 0 }such

that( _dηf_

∗)( _t_ )
_η_ ≈ _Lη_. By our supposition that _f_ is differentiable at _t_ and Proposi-
tion 4.10, we have _Lη_ = _Lη_ ′for all infinitesimals _η_ , _η_ ′.

This yields a proposition which partly vindicates l’Hôpital:^21

and van den Dries (2014: 77) for the definition of a valued field. We frequently use these three conse-
quences of (1)–(2):
First, _v_ ( 1 )=0; this holds since _v_ ( 1 )= _v_ ( 1 ⋅ 1 )= _v_ ( 1 )+ _v_ ( 1 ).
Second, _v_ (^1 _a_ )=− _v_ ( _a_ ); this holds since if _a_ ≠0 then 0 = _v_ ( 1 )= _v_ ( _a_ ⋅^1 _a_ )= _v_ ( _a_ )+ _v_ (^1 _a_ ).
Third, _v_ ( _ab_ )= _v_ ( _a_ )− _v_ ( _b_ ); this holds since _v_ ( _ab_ )= _v_ ( _a_ ⋅^1 _b_ )= _v_ ( _a_ )+ _v_ (^1 _b_ )= _v_ ( _a_ )− _v_ ( _b_ ).

(^20) The axioms of ordered abelian groups are given in all of the references from the previous footnote.
(^21) In the statement and proof of this proposition, like in the initial discussion of the product rule
in ( _prod-comp_ ) of §4.5, for a function _h_ we write (where convenient) the differential( _dηh_ )( _t_ )as _dh_ ,
and the value _h_ ( _t_ )simply as _h_.


86 compactness, infinitesimals, and the reals

Proposition4.14: _Suppose f and g are differentiable at t, and that the derivative of the
product f_ ⋅ _g at t is non-zero. Then v_ ( _f_ ⋅ _dg_ + _g_ ⋅ _d f_ + _d f_ ⋅ _dg_ )= _v_ ( _f_ ⋅ _dg_ + _g_ ⋅ _d f_ )_._

_Proof._ Let us write( _f_ ⋅ _g_ )′( _t_ )= _L_ for some real _L_ ≠0. Let _η_ be a positive infinites-
imal. By our reasoning concerning ( _prod-rule_ ) in the Robinsonian setting:

```
( f ⋅ g )′( t )= f ( t )⋅ g ′( t )+ g ( t )⋅ f ′( t )= L ≈ f ⋅ ηdg + g ⋅ ηdf
```
Since _L_ is a non-zero real, _v_ ( _L_ )= _v_ ( _f_ ⋅ _ηdg_ + _g_ ⋅ _ηdf_ )=0, so that

```
v ( f ⋅ dg + g ⋅ d f )= v ( η ⋅( f ⋅ dgη + g ⋅ ηdf ))= v ( η )+ v ( f ⋅ ηdg + g ⋅ ηdf )= v ( η )
```
But as _L_ ≠0, by ( _prod-comp_ ) and Proposition 4.13 we have _v_ ( _f_ ⋅ _dg_ + _g_ ⋅ _d f_ + _d f_ ⋅ _dg_ )=
_v_ ( _d_ ( _f_ ⋅ _g_ ))= _v_ ( _η_ ).

So, if we are only interested in the ‘order of infinite smallness’, we can indeed discard
the term _d f_ ⋅ _dg_ from _f_ ⋅ _dg_ + _g_ ⋅ _d f_ + _d f_ ⋅ _dg_. And this is just as l’Hôpital suggested, mod-
ulo the extra assumption that the derivative of the product is non-zero. However,
the extra assumption is indispensable. To see this, let _f_ ( _x_ )= _g_ ( _x_ )= _x_ and let _t_ = 0
be our evaluation-point: then _v_ ( _f_ ⋅ _dg_ + _g_ ⋅ _d f_ )= _v_ ( 0 + 0 )=∞, but _d f_ = _dg_ = _η_ ,
so that _v_ ( _d_ ( _f_ ⋅ _g_ ))= _v_ ( _f_ ⋅ _dg_ + _g_ ⋅ _d f_ + _d f_ ⋅ _dg_ )= _v_ ( 0 + 0 + _η_^2 )= 2 _v_ ( _η_ )<∞.
We next turn to Bernoulli’s result. To tackle this, we must define higher-order
differentials,^22 by iterating Definition 4.7 in the obvious way:^23

```
( d^1 ηf )( t )=( dηf )( t ) ( dnη +^1 f )( t )=( dnηf )( t + η )−( dnηf )( t )
```
We can now extend Proposition 4.13 to cover such _n_ th-order differentiables:

Proposition 4.15: _Let R_ ∗ _be as in Theorem 4.12. Let f_ : _R_ Ð→ _R be R-definable
and nth-order differentiable at t. Then f_ ( _n_ )( _t_ )≠ 0 _iff v_ (( _dnηf_ ∗)( _t_ ))= _nv_ ( _η_ ) _for all
infinitesimals η._

(^22) A. Robinson (1966: 79–80).
(^23) The notions of higher-order differentials obviously make sense also when _η_ is not infinitesimal. If _x_
ranges over non-zero real numbers, then lim _x_ → 0 ( _d
nxf_ )( _t_ )
_ric Riemann derivative_. See e.g. Mukhopadhyay (2012: 6–8). When _xn_ is sometimes today called _f_ is _n_ -times differentiable, the usual _the nth-order unsymmet-
n_ thderivative is equal to the _n_ th-order unsymmetric Riemann derivative (though the converse need not
hold). One typically uses an intermediary notion of an _n_ thPeano derivative to obtain these results. In
particular, one has: (i) if _f_ is _n_ th-order differentiable at _t_ , then it is _n_ th-order Peano differentiable at _t_ and
the two derivatives are equal, but the converse does not hold (Mukhopadhyay 2012: Theorem 1.4.1 p.17),
and (ii) if _f_ is _n_ th-order Peano differentiable at _t_ then it is _n_ th-order unsymmetric Riemann differentiable
at _t_ , and the two derivatives are equal (Mukhopadhyay 2012: Theorem 2.22.1 p.176). For another proof of
these results, see Butzer and Berens (1967: §2.2 pp.95ff).


```
4.6. non-standard analysis with a valuation 87
```
_Proof._ As in Proposition 4.10, if _f_ is _n_ th-order differentiable at _t_ , then
( _dnηf_ ∗)( _t_ )
_ηn_ ≈
_f_ ( _n_ )( _t_ )for all infinitesimals _η_.^24 The proof now runs as in Proposition 4.13, noting
that _nv_ ( _η_ )= _v_ ( _ηn_ ).

This result predicts an important feature of the early calculus, noted by Bos, namely
that the higher-order differentials were conceived to be ‘of successive different or-
ders of infinity.’^25 Moreover, Proposition 4.15 allows us to vindicate Bernoulli’s ar-
gument, mentioned in §4.5, that the quotient of an infinitesimal of order one and
an infinitesimal of order three should be an infinitely large quantity of order two.
To show this, let _η_ be infinitesimal with _v_ ( _η_ )= _u_ >0, where ‘ _u_ ’ is a mnemonic
for ‘unit’. Suppose that _t_ ∈ _R_ , that _f_ is once differentiable at _t_ , that _g_ is three-times
differentiable at _t_ , and that all these derivatives are non-zero. Abbreviate _dnf_ =
( _dnηf_ )( _t_ )and _dng_ =( _dnηg_ )( _t_ )and let _a_ in _R_ be non-zero. Then by Proposition
4.15 and Proposition 4.11 we have:

_v_ ( _ad_ ⋅ _df_ (^3) _g_ )= _v_ ( _a_ ⋅ _d f_ )− _v_ ( _d_^3 _g_ )= _v_ ( _a_ )+ _v_ ( _d f_ )− _v_ ( _d_^3 _g_ )= 0 + _u_ − 3 _u_ =− 2 _u_
So, dividing an infinitesimal quantity _a_ ⋅ _d f_ of value _u_ by an infinitesimal quantity
_d_^3 _g_ of value 3 _u_ results in a quantity _ad_ ⋅ _df_ (^3) _g_ of value− 2 _u_ < 0. Further, clause (5)
of Theorem 4.12 states that negative valuations are reserved for infinite quantities;
so, as Bernoulli argued, this quotient is an infinitely large quantity of order two, in
reference to our unit.
Last, we turn to Euler’s result, mentioned in §4.5. This result is motivated by the
following observation. If _η_ is a positive infinitesimal, then so is its square root _η_
(^12)
,
and hence both get valuated as positive but non-infinite, thus:
_v_ ( _η_ )= _v_ ( _η_
(^12)
⋅ _η_
(^12)
)= _v_ ( _η_
(^12)
)+ _v_ ( _η_
(^12)
)= 2 _v_ ( _η_
(^12)
)
Similarly, _η_ receives a valuation which is three times that of its cube root _η_
(^13)

. It
follows from this that we have a descending chain:

```
v ( η )> v ( η
```
(^12)
)> _v_ ( _η_
(^13)
)> _v_ ( _η_
(^14)
)>...
Euler asked whether there was something beyond all of these, of a different order
of infinite smallness. He answered this in the affirmative by using the natural log-
arithm. We will prove his result using our valuation map, _v_ , but using exactly the
same application of l’Hôpital’s rule as Euler’s original proof:^26
(^24) One can use elementarity and the fact, mentioned in footnote 23, that if _f_ is _n_ -times differentiable, the
usual _n_ thderivative is equal to the _n_ th-order unsymmetric Riemann derivative. Alternatively, A. Robinson
(1966: 80) gives a proof under the additional assumption that the _k_ th-order derivatives for all _k_ ≤ _n_ exist
_and_ are continuous on an open interval containing the point.
(^25) Bos (1974: 27).
(^26) For Euler’s proof, see Bos (1974: 85), Euler (1780: §8). There it is stated in terms of the infinite
element^1 _η_ rather than the infinitesimal _η_.


88 compactness, infinitesimals, and the reals

Proposition 4.16: _If η_ > 0 _is infinitesimal, then v_ ( _η_

(^1) _n_
)> _v_ (ln^1 _η_ )> 0 _for all n_ ≥ 1_.
Proof._ Note that lim _x_ → 0 + _ex_
(^1) _n_
=1. Hence _eη_
(^1) _n_
≈1, and from this it follows that
_eη_
(^1) _n_ ⋅ln _η_
= _eη_
(^1) _n_
⋅ _η_ is infinitesimal and hence< _e_ −^1. So we have the inequality _eη_
(^1) _n_ ⋅ln _η_
<
_e_ −^1. By taking natural logarithms of both sides, we obtain _η_
(^1) _n_
⋅ln _η_ <−1 or _η_
(^1) _n_
<−ln^1 _η_.
Applying _v_ to these positive quantities, we obtain _v_ ( _η_
(^1) _n_
)≥ _v_ (−ln^1 _η_ )= _v_ (ln^1 _η_ ).
For reductio, suppose that _v_ ( _η_
(^1) _n_
)= _v_ (−ln^1 _η_ )= _v_ (ln^1 _η_ ). Then:
_v_ ( _η_
(^1) _n_
⋅(−ln _η_ ))= _v_ ( _η_
(^1) _n_
)+ _v_ (−ln _η_ )= _v_ ( _η_
(^1) _n_
)− _v_ (−ln^1 _η_ )= 0
So the positive quantity _η_
(^1) _n_
⋅(−ln _η_ )is finite but not infinitesimal and not zero, so
that there is some real _M_ >0 such that _M_^1 ≤ _η_
(^1) _n_
⋅(−ln _η_ )≤ _M_. By elementarity, in _R_
there is a sequence _bk_ >0 of reals with lim _k_ →∞ _bk_ =0 and _M_^1 ≤ _b_
(^1) _n
k_ ⋅(−ln _bk_ )≤ _M_
for all _k_. By compactness, this sequence has a convergent subsequence whose limit
lies in the closed interval[ _M_^1 , _M_ ]={ _z_ ∈ _R_ : _M_^1 ≤ _z_ ≤ _M_ }. But by l’Hôpital’s rule:
lim
_x_ → 0 +
( _x_
(^1) _n_
⋅(−ln _x_ ))=lim
_x_ → 0 +
−ln _x_
1
_x_^1 _n_
=lim
_x_ → 0 +
−^1 _x_
−^1 _n_ ⋅^1
_x_^1 _n_ +^1
= lim
_x_ → 0 +
_n_ ⋅ _x_
(^1) _n_
= 0
Hence, we have a contradiction. So in fact we must have that _v_ ( _η_
(^1) _n_
)> _v_ (ln^1 _η_ ).
Finally, let us note why _v_ (ln^1 _η_ )>0. Since _η_ >0 is infinitesimal,−ln _η_ is infinite
and hence−ln^1 _η_ >0 is infinitesimal. So 0< _v_ (−ln^1 _η_ )= _v_ (ln^1 _η_ ).
This section has been somewhat heavy on technicalities, so it may help to sum-
marise what we have shown. Using a valuation function, we have introduced a natu-
ral, intuitive notion of different orders of infinite smallness which is available within
non-standard analysis. And we have showed how the valuation function vindicates
several historical uses of different orders of infinitesimals.

### 4.7 Instrumentalism and conservation

Evidently, infinitesimals can be incorporated both rigorously and beautifully into
contemporary mathematics. However, this leaves open the question of whether
one should _believe_ in infinitesimals. In a famous letter to Varignon, Leibniz wrote:

To speak the truth, I am not very persuaded myself that it is necessary to consider the
infinite and the infinitely small other than as ideal things or as well-founded fictions.^27

(^27) Leibniz (1849–63: vol.4 p.110).


```
4.7. instrumentalism and conservation 89
```
Elaborating on this, Jesseph suggests that ‘a fiction is well-founded in the Leibnizian
sense when it does not lead us astray, so that indulgence in the fiction is harmless.’^28
Robinson expressed a similar view, presenting a kind of fictionalism or instrumen-
talism concerning _all_ infinitary notions in mathematics:

My position concerning the foundations of Mathematics is based on the following two
main points or principles. [¶] (i) Infinite totalities do not exist in any sense of the word
(i.e. either really or ideally). More precisely, any mention, or purported mention, of infi-
nite totalities is, literally _meaningless_. [¶] (ii) Nevertheless, we should continue the busi-
ness of Mathematics ‘as usual,’ i.e. we should act _as if_ infinite totalities really existed.^29

The general fictionalist or instrumentalist idea is that we should not actively _believe_
in infinite or infinitesimal entities, but that we can happily _employ_ them in reliable
reasoning (about real numbers, in this case). There are obvious echoes here of the
o/t dichotomy from Chapter 3, but in this case the finite is being treated as _okay_
and the infinite(simal) is _troublesome_. (And, anticipating a little, in §4.9 we will
see that some contemporary presentations of non-standard analysis contain various
kinds of non-standard _sets_ in addition to infinitesimals. We can consider a similar
attitude there: that we should not _believe_ in non-standard sets, because they are
troublesome, but that we can happily employ them in reliable reasoning).
In a moment, we will explain why reasoning with infinitesimals (or non-standard
sets) is, indeed, reliable. But first, we should ask whether infinitesimals _should_ be
thought of as more troublesome than reals. There is a genuine risk here of traffick-
ing in mere squeamishness.
Squeamishness about infinitesimals may have been reasonable, when it seemed
that we had to treat them as both _distinct_ from 0 and _identical_ to 0 within the very
same calculation. But we quashed that worry, firmly, in §4.4.
A second source of squeamishness may be that it is difficult to ‘picture’ a con-
tinuum which contains infinitesimals. Between 0 and any positive real, there is a
smaller positive real; but all the positive infinitesimals will have to sit _after_ 0 but
before _any_ positive real; and it is certainly hard to form an intuitive ‘picture’ of this
ordering. That said, one might wonder whether this is any harder than the attempt
to ‘picture’ the (now standard, in every sense) idea that the continuum is made up
of _points_. After all, the pointwise conception of the continuum allows us to define
several functions which are _extremely_ hard to ‘picture’, such as Peano’s space-filling
curve, Bolzano–Weierstrass’s continuous everywhere but differentiable nowhere
function, and Conway’s Base 13 function.

(^28) Jesseph (2008: 232). Also: ‘A fiction is well-founded when it reliably enables us to investigate the
properties of real things, so that indulgence in the fiction cannot lead us into error’ (Jesseph 1998: 35).
(^29) A. Robinson (1965: 230).


90 compactness, infinitesimals, and the reals

As such, we are not sure whether there are principled reasons to regard real quan-
tities as _okay_ but infinitesimals as _troublesome_. The tendency to regard infinitesimals
as merely fictional may just be a legacy of history.
There are, however, excellent reasons to regard infinitesimals as _reliable_.
These reasons relate to _conservation_. In Definition 3.3, we defined _consequence_ -
conservation. We can equally define a notion of _deduction_ -conservation (not-
ing that if the deductive system is sound and complete for the semantics, then
consequence-conservation and deduction-conservation align):

Definition 4.17: _Let T be an_ L+ _-theory and S be an_ L _-theory, with_ L+⊇L_. T is_
deduction-conservative _over S iff: if T_ ⊢ _φ then S_ ⊢ _φ for all_ L _-sentences φ._

So, if our theory of infinitesimals is deduction-conservative over our ‘vanilla’ theory
of the reals, then anything which can be proved about the reals using the theory
of infinitesimals can ‘already’ be proved using only our ‘vanilla’ theory. Moreover,
we can redescribe deduction-conservation in model-theoretic terms, using reducts
(from Definition 1.4) and elementary extensions (from Definition 4.3).

Proposition 4.18: _Let T be a first-order_ L+ _-theory and S be a first-order_ L _-theory,
with_ L+⊇L_. The following are equivalent:_

```
(1)T is deduction-conservative over S.
(2)For any L -structure M ⊧ S, there is an L+ -structure N which satisfies T
and whose L -reduct is an elementary extension of M.
```
_Proof.(1)_ ⇒ _(2)_. Assume (1), and let _M_ ⊧ _S_. Let _M_ ○be as in Definition 1.5, so
that _cM_
○
_a_ = _a_ for each _a_ ∈ _M_ , and so that the new constants _c
M_ ○
_a_ are chosen to be
distinct from any constant symbol appearing inL+.
Where Th( _M_ ○)is the set of sentences true on the structure _M_ ○, we now prove
that _T_ ∪Th( _M_ ○)is consistent. Let _δ_ ( _ca_ )be an arbitrary conjunction of finitely
many sentences in Th( _M_ ○), where _ca_ are the new constants _ca_ 1 , ..., _can_ ∉L+oc-
curring in _δ_. Since _M_ ○⊧ _δ_ ( _ca_ ), we have _M_ ○⊧∃ _vδ_ ( _v_ ). Hence _S_ ⊬∀ _v_ ¬ _δ_ ( _v_ )and
_T_ ⊬∀ _v_ ¬ _δ_ ( _v_ )by (1). So _T_ ∪{ _δ_ ( _ca_ )}is consistent. Since _δ_ was an arbitrary finite
conjunction from Th( _M_ ○), by the Compactness Theorem 4.1, _T_ ∪Th( _M_ ○)has a
model. Call it _N_ ∗.
By the Push-Through Construction, we can assume that _cN_

∗
_a_ = _a_ for all _a_ ∈ _M_.
Letting _N_ be _N_ ∗’sL+-reduct, an argument similar to ( _elem_ ) shows that _N_ ⪰ _M_.
_(2)_ ⇒ _(1)_. Suppose (1) fails, i.e. there is someL-sentence _φ_ such that _T_ ⊢ _φ_
and _S_ ⊬ _φ_. Since _S_ ∪{¬ _φ_ }is consistent, by the Completeness Theorem there is
a model _M_ ⊧ _S_ ∪{¬ _φ_ }. Then for anyL+-structure _N_ whoseL-reduct is an
elementary extension of _M_ , we have _N_ ⊧¬ _φ_ , and hence _N_ ⊭ _T_. So (2) fails.


```
4.8. historical fidelity 91
```
This allows us to describe situations where reasoning with infinitesimals is provably
‘harmless’. Let _S_ be a theory which is true on the real numbers, and suppose that _T_
extends _S_ with further principles governing infinitesimals (perhaps in an expanded
signature). For instance, _T_ might simply assert that there is an infinitesimal, or more
elaborately, _T_ might assert that there is a valuation map satisfying the clauses of
Theorem 4.12. If _S_ is sufficiently rich that any model of _S_ has an elementary exten-
sion that may be expanded to a model of _T_ ,^30 then _T_ is deduction-conservative over
_S_ by Proposition 4.18. In that case, _T_ says no more nor less about the reals than _S_
does. So, one can use _T_ to reason about the reals with a clear conscience.
Conservation results are famously associated with Hilbert’s programme, which
aimed to show that set-theoretic and higher-order methods were conservative over
a basic kind of arithmetic.^31 So it is no accident that Robinson described his own
philosophy of mathematics as ‘basically, close to that of Hilbert and his school.’^32
That said, Proposition 4.18 is proved model-theoretically. As such, someone who
is worried that _both_ infinitesimal _and_ model-theoretic methods are _troublesome_ will
not be convinced by this kind of argument (they will likely require a purely _proof-
theoretic_ demonstration that infinitesimal methods are reliable). Still, anyone who
accepts model theory (and so anyone who accepts set theory) will need no further
proof of the reliability of infinitesimal methods.

### 4.8 Historical fidelity

Model theory has paid its way several times now. Nonetheless, Bos suggests that
Robinson’s (essential) use of _contemporary_ model-theoretic methods undermines
any hope of reconstructing the _historical_ calculus:

[...] the most essential part of non-standard analysis, namely the proof of the existence
of the entities it deals with [i.e. infinitesimals inside elementary extensions], was entirely
absent in the Leibnizian infinitesimal calculus, and this constitutes, in my view, so funda-
mental a difference between the theories that the Leibnizian analysis cannot be called an
early form, or precursor, of non-standard analysis.^33

(^30) If _T_ merely asserts the existence of infinitesimals, then _S_ only needs the meagre resources to talk
about e.g. zero, one, addition, multiplication and a linear order, and to show _n_ +^11 <^1 _n_ for each _n_ >0.
If we want to invoke the valuation map from Theorem 4.12, then we must ensure that _S_ includes enough
principles governing the natural logarithm function to ensure that the proof of that theorem works for any
model of _S_.
(^31) For references on Hilbert’s views on conservation, see Detlefsen (1996: 79, 1986: 30–1). For dis-
cussion of recent conservation results in the setting of arithmetic and their bearing on the reevaluation of
Hilbert’s programme, see Simpson (1988: 353ff).
(^32) A. Robinson (1965: 229). Elsewhere Robinson writes that ‘Leibniz’s approach is akin to Hilbert’s
original formalism, for Leibniz, like Hilbert, regarded infinitary entities as ideal, or fictitious, additions to
concrete Mathematics’ (1967: 39–40).
(^33) Bos (1974: 83).


92 compactness, infinitesimals, and the reals

But surely neither Robinson, nor anyone else, was suggesting that any kind of model
theory was implicit in the early calculus. The claim is only that model theory estab-
lishes that one can _reason reliably_ with infinitesimals. We have seen how this takes
place. And once that _has_ taken place, there is no further need to conceive of in-
finitesimals model-theoretically, as elements of an elementary extension of the re-
als. If we like, we can conceive of infinitesimals deductively, as characterised by
an axiom asserting the existence of entities with an absolute value smaller than
any positive rational. As Robinson put it in one place, ‘we may look at our the-
ory syntactically and may consider that what we have done is to introduce _new
deductive procedures_ rather than new mathematical entities.’^34 In short, if we use
the model-theoretic Proposition 4.18 to show that certain infinitesimal methods are
deduction-conservative over real methods, we can, thereafter, appeal to an entirely
proof-theoretic conception of reliability. And, while semantics and model-theory
may be twentieth-century inventions, mathematics has always been in the business
of proof.
We just considered Bos’s complaint about Robinson’s use of model theory. A
similar complaint might be raised against our use of the valuation map, as follows:
_the very idea of a valuation map is so alien to the mathematics of Leibniz and his con-
temporaries, that its invocation cannot feature in any plausible attempt to vindicate the
historical calculus._
As before, though, we are not making the implausible claim that Leibniz et al.
conceived matters in terms of valuation maps. Our point is only that we can use
the valuation map to show that their notion of ‘different orders of smallness’ was
(provably) on a reliable footing.
We do not deny, then, that invoking a valuation map involves a certain amount
of _reconceptualisation_ of the mathematics of a previous generation. But here, we
keep good company. In their famous 1882-paper, Dedekind and Weber ‘ _define_ the
“points of a Riemann surface” to be _discrete valuations_ ’, where a valuation is _discrete_
if the codomain of the valuation function is the integers.^35 In doing so, they plainly
added to the concept of the Riemann surface; but no one would contemn them.^36
Moreover, it is unclear why worries about anachronism should focus solely on
the use of _model theory_ (whether our deployment of a valuation map, or Robin-
son’s appeal to Compactness). The whole approach to non-standard analysis in-
vokes, without much comment, a presentation of analysis which was only first de-
veloped in the nineteenth century, and which supplanted the eighteenth century
idea of ‘continuous magnitudes such as lengths and weights’ and ‘their “abstract”

(^34) A. Robinson (1966: 282).
(^35) This is a quotation from Dieudonné’s (1985) history of algebraic geometry. The reference for the
original Dedekind–Weber paper is Dedekind and Weber (1882) and Dedekind (1930–32:i pp.238ff).
(^36) For nuanced discussions of ‘concept change’ in the context of the Dedekind–Weber paper, see Schap-
pacher (2010) and Haffner (forthcoming).


```
4.9. axiomatising non-standard analysis 93
```
counterparts’.^37 Even mentioning first-order features common to the real numbers
and their elementary extensions—e.g. ‘every first-order definable bounded set has
a least upper bound’—involves departing non-trivially from the _historical_ calculus.
In sum, our claims about our valuation map are rather modest. The apparatus
of a valuation map is certainly a conceptual addition to the calculus. But it allows
us to derive some of the theorems presented by its historical practitioners. And,
more generally, it suggests the reliability of certain historical considerations about
‘different orders of smallness’.

### 4.9 Axiomatising non-standard analysis

Over the past two sections, we considered a certain shift from model theory to
proof theory. The focus on proof can motivate a more _axiomatic_ approach to non-
standard analysis. So, too, can the desire to develop a general approach to non-
standard analysis that does not depend so very heavily on model theory. In this
section, we outline such approaches, characterising them by their responses to three
questions concerning axiomatisation.

```
Axiomatising elementary extensions
```
The most pedestrian axiomatisation of non-standard analysis would simply add the
claim ‘there is an infinitesimal’ to some formal theory of real numbers. However,
our work in the previous sections shows that non-standard analysis thrives precisely
because it provides a way to go back and forth between a setting with no infinites-
imals and a setting with infinitesimals. And the pedestrian approach offers us no
obvious way _internal to the theory_ to ‘go back’ to a setting with no infinitesimals.
Hence, the first question is how to axiomatise the reals _together with_ an elemen-
tary extension that possesses infinitesimals. This is really just a question of how to
axiomatise elementary extensions. Expressed at this level of generality, there is a
natural answer. Suppose that _A_ and _B_ areL-structures and that _A_ ⪯ _B_. Expand
the signatureLto a signatureL+that contains a new unary predicate symbol
_St_ ( _x_ ), which is a mnemonic for ‘standard’. Recall from §1.9 that(∀ _x_ : _St_ ) _φ_ ab-
breviates∀ _x_ ( _St_ ( _x_ )→ _φ_ )and(∃ _x_ : _St_ ) _φ_ abbreviates∃ _x_ ( _St_ ( _x_ )∧ _φ_ ). Given an
L-formula _φ_ , let _φSt_ be the result of restrcting all the quantifiers in _φ_ to _St_. Then
expand _B_ to anL+-structure _B_ +where the new predicate symbol _St_ ( _x_ )is inter-
preted as _A_ , the underlying domain of _A_. Since _B_ ⪰ _A_ , the structure _B_ +satisfies
every sentence of the following form, where _φ_ ( _x_ )is anL-formula:^38

(^37) Epple (2003: 291).
(^38) The equivalent characterisation of elementary embeddings given by the Tarski–Vaught test (Propo-
sition 7.4 of Chapter 7) yields a slightly more elegant but equivalent axiom. Compare e.g. the ‘transfer


94 compactness, infinitesimals, and the reals

```
(∀ x : St )( φSt ( x )↔ φ ( x )) ( elem:object )
```
This axiomatic rendition of the notion of an elementary extension is often used as
a basis of axiomatic formulations of non-standard analysis. In particular, one sim-
ply takes natural axioms _T_ for the elementary extension, and adds every sentence of
the form of ( _elem:object_ ). From this, one can deduce _φSt_ for all axioms _φ_ of _T_ , since
this is just an object-language expression of being an elementary extension, and ele-
mentary extensions preserve first-order sentences. Hence this axiomatic rendition
provides the benefits of passing back and forth between the standard reals and an
elementary extension with infinitesimals.

```
Axiomatising the reals
```
The second question facing any axiomatisation of non-standard analysis is how
to axiomatise the real numbers in the first place. Some choices will trivialise the
project. For instance, if _S_ is a complete theory, then any theory _T_ in any extension
of _S_ ’s signature is deduction-conservative over _S_ , so long as _T_ is consistent with
_S_.^39 Conversely, if we want non-trivial conservation results, then we must seek an
_in_ complete axiomatisation of the reals.
An obvious option is to take the usual second-order axiomatisation of the reals,
whose completeness axiom states that any non-empty bounded subsets of the reals
has a least upper bound.^40 This axiomatisation interprets Robinson’s Q, and so it
is incomplete.^41
But there is no reason to stop at _second_ -order logic. If we want to do non-standard
probability theory, for example, then we will have to work with probability mea-
sures, which are even higher-order beasts. And if we admit higher-order objects
of all finite orders, it becomes very natural to view the reals as simply embedded
within set theory.^42 In this case, we let _T_ be the axioms of ZFC, plus the axioms
from ( _elem:object_ ), along with the supposition that there is an infinitesimal among
the non-standard reals. If we then assume that there is a model of ZFC, we can use
the methods of §4.7 to show that _T_ is deduction-conservative over ZFC.

principle’ in Nelson (1977: 1166). This way of axiomatising elementary extensions is also sometimes used
in the setting of large cardinals: see e.g. Reinhardt’s Axiom S2 in Reinhardt (1974: 192).

(^39) To see this, suppose that _T_ ⊢ _φ_ , where _φ_ is from _S_ ’s signature; since _S_ is complete, either _S_ ⊢ _φ_ or
_S_ ⊢¬ _φ_ ; but the latter cannot happen since a model of both _T_ and _S_ would satisfy both _φ_ and¬ _φ_ ; so _S_ ⊢ _φ_.
(^40) For formal statements, see any real analysis text. This also arises in the context of categoricity argu-
ments (see §7), and so formal statements of these axioms can often be found in treatments of second-order
logic, such as Shapiro (1991: 83–4).
(^41) For details on these sorts of considerations, see §§5.a, 7.5 and 10.3. We should emphasise that the
theory is here being considered _deductively_ , rather than (e.g.) using the full semantics.
(^42) Hrbáček motivates the move to set theory by noting that ‘the work with higher-order structures
involves the type-theoretic language repugnant to most mathematicians’ (1978: 1).


```
4.9. axiomatising non-standard analysis 95
```
```
Axiomatising non-standardness
```
The final design question concerns how to axiomatise the idea that the elemen-
tary extension is a _non-standard_ model, while the elementary substructure is a _stan-
dard_ model. Now, unlike the predicate ‘ _St_ ’ that we introduced a moment ago, the
italicised phrases in the previous sentence are not object-language expressions, but
metatheoretic. Furthermore, the adjective ‘standard’ as used in the metatheory
does not have a sharply defined meaning, but is instead understood by reference to
paradigmatic (non-)examples. For instance, the natural numbers are the standard
model of PA, and any model not isomorphic to it is non-standard (in exactly the
sense of Definition 4.2); likewise, the real numbers are a standard model, while any
model with infinitesimals is non-standard. This usage of the word ‘standard’ is con-
nected heavily with issues surrounding the categoricity of second-order theories,
which will occupy us in Part B of this book. But for now, we can simply approach
the standard / non-standard distinction via these paradigmatic examples.
To axiomatise _standardness_ , we simply appeal to the idea that the schemata in
ZFC (or whatever rich theory we are working with) should extend to any signature
whatsoever, including the signature of the elementary extension.^43 In the case of
ZFC, this would involve for instance the Separation schema (see §1.b), so we would
insist on the existence of any subset of a standard set which can be defined by a
formula involving _any_ resources we like (standard sets, infinitesimals, or anything
else). If the rich theory is PA 2 , this would involve the Comprehension Schema (see
§1.a), and so we would insist that _any_ formula determines a standard second-order
subset of natural numbers.
To axiomatise the _non-standardness_ of elementary extensions, it seems desirable
to have a single principle that handles all appeals to compactness. Nelson suggests
the following axiom schema, where ‘ _Stfin_ ’ restricts to standard finite sets, and _φ_ is a
formula in the signature of set theory:^44

```
(∀ z : Stfin )∃ x (∀ y ∈ z ) φ ( x , y )↔∃ x (∀ y : St ) φ ( x , y ) ( elem:nelson )
```
To illustrate how this axiom is an object-language expression of compactness, ob-
serve how it implies the existence of infinitesimals. Let _φ_ ( _x_ , _y_ )be the statement ‘ _x_
is a positive quantity, and if _y_ is a positive quantity then∣ _x_ ∣<∣ _y_ ∣’. Then the left-hand
side of ( _elem:nelson_ ) is satisfied, because for each finite set of positive quantities we
can find a positive quantity less than all of them. But the right-hand side says that
there is a positive quantity which is less than all positive standard quantities, which
is just to say that there is an infinitesimal. This lets us view Nelson’s ( _elem:nelson_ )
as an object-language expression of compactness.

(^43) This kind of requirement is well-known from Feferman’s discussion of schemata (1991: 8). It is also
related to a point about ‘open-endedness’ made in the discussion of categoricity theorems (see footnote 21
in §7.10 and §13.7).
(^44) See the ‘principle of idealization’ in Nelson (1977: 1166).


96 compactness, infinitesimals, and the reals

However, Nelson’s ( _elem:nelson_ ) has some potentially counterintuitive conse-
quences. For instance, take _φ_ ( _x_ , _y_ )to be simply _y_ ∈ _x_. Then the left-hand side
of ( _elem:nelson_ ) is trivially satisfied, because we may simply take the witness _x_ to
be _z_ itself, and have(∀ _z_ : _Stfin_ )(∀ _y_ ∈ _z_ ) _y_ ∈ _z_. But then Nelson’s ( _elem:nelson_ )
entails that∃ _x_ (∀ _y_ : _St_ ) _y_ ∈ _x_ , that is, that there is a set which contains all the
standard sets.^45 But this consequence of Nelson’s object-language expression of
compactness seems rather different from our earlier arguments for infinitesimals
via compactness. In this earlier argument, the idea was to show that some standard
set (namely, the real numbers) has more elements than we usually think (namely,
infinitesimals). By contrast, Nelson’s ( _elem:nelson_ ) implies that there is a set which
is not a member of any standard set. (That said, it is not obvious that this is a fatal
objection to Nelson’s axiom: the push-and-pull here is similar to that surrounding
Fletcher’s objection, with which we close this section.)
Hrbáček’s alternative axiomatisation of non-standard analysis begins by correct-
ing for this. Hrbáček defines a set to be _internal_ iff it is a member of a standard
set. Evidently, then, all standard sets are internal sets, since they are members of
their own singletons. Letting ‘ _Int_ ’ abbreviate this notion of being internal, Hrbáček
considers a variant of ( _elem:object_ ) which expresses that the internal sets are an el-
ementary extension of the standard sets:^46

```
(∀ x : St )( φSt ( x )↔ φInt ( x ))
```
for all formulas in the signature of set theory. Hrbáček then modifies Nel-
son’s ( _elem:nelson_ ), by ‘bounding’ it with a standard set:^47

```
(∀ a : St )((∀ z : Stfin )[ z ⊆ a →(∃ x : Int )(∀ y ∈ z ) φInt ( x , y )]↔
(∃ x : Int )(∀ y : St )[ y ∈ a → φInt ( x , y )])
```
This alternative principle still allows the existence of infinitesimals, since the argu-
ment we gave earlier may be bounded with the _standard_ set of reals. However, it
directly blocks the derivation of the existence of a set that contains all the standard
sets, since no internal set could have this property.
Nevertheless, if there are non-internal sets, then we must ask how they behave.
And Hrbáček has shown that, against the background of his other axioms, it is in-
consistent to claim that the non-internal sets satisfy either the Power Set Axiom or
the axiom that every set can be well-ordered.^48 Referring to this result, Fletcher

(^45) Nelson (1977: 1167) and Hrbáček (2006: 96).
(^46) See ‘transfer’ in Hrbáček (2006: 85).
(^47) See ‘bounded idealization’ in Hrbáček (2006: 86). In this schema, _φ_ may be a formula in the signature
of set theory that may contain internal sets as parameters.
(^48) Hrbáček (2006: 90). Of course, in ZF the axiom that every set can be well-ordered is equivalent
to the Axiom of Choice, but this equivalence no longer holds when the Power Set Axiom is dropped (cf.
Zarach 1982: Theoremiii ). For statements of these set-theoretic axioms, see §1.b.


```
4.10. axiomatising the reals 97
```
writes that it ‘undermines confidence in one’s intuitive picture of the non-standard
universe on the basis of which informal arguments are created and justified’.^49
Fletcher’s objection strikes us as half wrong and half right. What seems wrong
is this: non-standard analysis has a formalist bent, and formalists are unlikely to be
much concerned with providing an intuitive picture of the universe of non-standard
sets or non-internal sets. (Of course, formalists might care about providing intu-
itive pictures, if those pictures help to convince us that some theory is consistent;
but consistency cannot be at issue here, since both Nelson’s and Hrbáček’s non-
standard set theories are deduction-conservative over ZFC, so that it is consistent
if ZFC is.) But what seems right in Fletcher’s objection is this: as formalists, prac-
titioners of non-standard analysis should be very much concerned with isolating
efficacious modes of reasoning, so it will be problematic if non-standard set the-
ory requires large-scale changes to the usual set-theoretic axioms. After all, as Nel-
son once put it, the idea was supposed to be that ‘what is new [in axiomatic non-
standard analysis] is only an addition, not a change’.^50

### 4.10 Axiomatising the reals

There is obviously much more to say about axiomatisations of non-standard anal-
ysis. However, saying any more would take us too far afield from model theory.^51
And indeed, much contemporary work in model theory on the real numbers is _not_
centred around non-standard analysis, but around first-order axiomatisations of the
reals. We close this chapter by briefly surveying this work.
The complete first-order theory of the reals, in the signature with zero, one, ad-
dition, and multiplication, is computable. In addition to the usual field axioms,^52
the axioms are that−1 is not a sum of squares, that either _a_ or− _a_ is a square for
every _a_ , and that every odd degree polynomial has a root. These axioms are true of
the real numbers, and it turns out that they are complete.^53
These algebraic resources also allow us to define the ordering on reals. In partic-
ular, a real number is positive iff its square root is real, so that we define:

```
a < b iff(∃ x ≠ 0 ) x^2 = b − a
```
The axioms described in the previous paragraph suffice to show that all of the ordi-
nary properties of the ordering now hold: for example, it is linear and if 0< _c_ and

(^49) Fletcher (1989: 1004).
(^50) Nelson (1977: 1165).
(^51) For those who want to read more on this topic, we highly recommend Hrbáček (2006).
(^52) The field axioms are those axioms common to the rationals, the reals, and the complexes that indi-
cate how zero and one interact with addition and multiplication. See any algebra textbook for the formal
definition of the field axioms, e.g. Hungerford (1980: 116).
(^53) See Marker (2002: §3.3, 2006: §2).


98 compactness, infinitesimals, and the reals

_a_ < _b_ then _a_ × _c_ < _b_ × _c_.^54
An explicit description of this theory was found independently by Tarski and
by Artin and Schreier. Tarski had two primary reasons for interest in this theory.
First, he was interested in the fact that this axiomatisation provides a decision pro-
cedure for whether a first-order statement is true on the real numbers.^55 Second, in
1931 Tarski started studying the model theory of the real numbers as a way to con-
vince other mathematicians that the notions of satisfaction and definability were
not paradoxical.^56 Thus his work on the model theory of the real numbers serves
as a mathematical supplement to his famous definition of truth.
Artin and Schreier’s work is located not in model theory _per se_ , but in a distinct
tradition of real algebra, whose history has been exhaustively studied by Sinaceur.^57
According to Sinaceur, Hilbert’s work on the foundations of geometry provides the
mathematical antecedent of Artin and Schreier’s work. Hilbert had attempted to as-
certain which parts of geometry depend essentially upon ‘higher-order’ postulates,
like the completeness of the real field or the Archimedian axiom. Sinaceur suggests
that we should similarly view Artin and Schreier as showing that ‘the order relation
on the field of real numbers cannot be dissociated from its topology’, for we have
just seen that the order is definable in terms of the field operations.^58 So: whereas
Dedekind had ‘reduced continuity to order [via Dedekind cuts], Artin and Schreier
reduced order to calculation’.^59
Most recent work on the model theory of the real numbers does not, however,
work directly with the axiomatisation provided by Artin–Schreier and Tarski. In-
stead, it works with a generalisation known as _o-minimality_. Its origins lie in a re-
mark from Tarski’s 1931 paper, where he notes that the parameter-free definable sub-
sets of the reals in the signature{0, 1,+}are precisely finite unions of intervals of
the following form, with rational or infinite endpoints:^60

```
( a , b ), [ a , b ), ( a , b ], [ a , b ]
```
Tarski’s idea seems to have been forgotten, until van den Dries’s 1982 address on
Tarski’s problem of the decidability of the real field expanded by exponentiation.^61

(^54) For a more formal treatment of the axioms of an ordered field see e.g. Lang (2002: 449ff).
(^55) See Tarski (1948) for the decidability result and Tarski (1967) for the completeness result. The meth-
ods are very similar in each case.
(^56) See the introduction to Tarski (1931).
(^57) Sinaceur (1991).
(^58) Sinaceur (1991: 146). See also Sinaceur (1991: 29, 217, 223).
(^59) Sinaceur (1994: 200). See also Sinaceur (1991: 28, 187, 1994: 194) for quotations from Hasse and
Weil which Sinaceur uses to buttress her case for this view of the significance of Artin and Schreier.
(^60) Tarski (1931: 233). As usual, we define( _a_ , _b_ )={ _c_ ∈ _R_ : _a_ < _c_ < _b_ }, and the closed bracket symbol
indicates that we use ‘≤’ in lieu of ‘<’. Here, infinite endpoints are only allowed when we do not employ a
closed bracket symbol. That is,(−∞, _b_ ]is allowed and is defined as{ _c_ ∈ _R_ : _c_ ≤ _b_ }, but e.g.[−∞, _b_ )is
not allowed since this would incorrectly suggest that−∞is an element of the reals.
(^61) van den Dries (1984). For the original problem, see Tarski (1948: 45).


```
4.a. gödel’s completeness theorem 99
```
In the associated paper, van den Dries noted that one could take something very
much like Tarski’s result as an axiom and deduce many of the known properties of
the definable sets of reals from it. This notion was later generalised by Pillay and
Steinhorn as follows:^62

Definition 4.19: _Let M be an expansion of a dense linear order without endpoints.
Then M is_ o-minimal _iff every subset of M which is definable with parameters is a finite
union of points and open intervals._

Here, open intervals are of the form( _a_ , _b_ ), and a dense linear order without end-
points is simply a linear order which does not have greatest or least elements and
which satisfies the density condition: if _a_ < _b_ then there is some _c_ with _a_ < _c_ < _b_.
The canonical example of an o-minimal structure is provided by Tarski’s own work,
namely the real field.^63 The other important example is due to Wilkie, who showed
that the real field with exponentiation is also o-minimal.^64 Wilkie’s result inau-
gurated much recent activity in this area. Nonetheless, Tarski’s original question,
about the decidability of the real field with exponentiation, is still open.^65
While much present interest in o-minimality stems from its applications to other
areas of mathematics,^66 van den Dries also indicates a more foundational motiva-
tion. Grothendieck once suggested that there should be a _tame topology_ : a notion of
topology which a priori excluded all of the ‘pathological’ functions from elementary
analysis, such as space-filling continuous curves.^67 A basic result about o-minimal
structures is that every definable function in them is both piecewise continuous and
piecewise differential.^68 As such, van den Dries suggests that ‘o-minimal structures
provide an excellent framework for developing tame topology’.^69

### 4.a Gödel’s Completeness Theorem

In this appendix, we prove Gödel’s Completeness Theorem 4.24, which we invoked
both in §2.a and in our proof of Compactness in §4.1. Our proof of Gödel’s result
comes in a series of lemmas, the first of which is very easy.

(^62) Pillay and Steinhorn (1984, 1986); van den Dries (1998) is a standard reference to, and overview of,
o-minimality.
(^63) This follows almost automatically from the ‘quantifier elmination’ results which one uses to establish
the decidability and completeness results. See Marker (2002: 99) and van den Dries (1998: 37).
(^64) Wilkie (1996).
(^65) There are some conditional results. Macintyre and Wilkie (1996) show that it is decidable if a
number-theoretic conjecture known as Schaunel’s conjecture is true.
(^66) For example, see Scanlon (2012).
(^67) See Grothendieck (1997: §5).
(^68) For piecewise continuity, see the monotonicity theorem in van den Dries (1998: 43); for piecewise
differentiability see van den Dries (1998: 115).
(^69) van den Dries (1998: vii). For further discussion, see Giaquinto (2015: §3.3) and Galebach (2016).


100 compactness, infinitesimals, and the reals

Proposition 4.20: _For any first-order theory T: T is consistent iff every finite subset of
T is consistent._

_Proof.Left-to-right_ is trivial. _Right-to-left_ holds because any deduction in first-order
logic is only ever finitely long, and so a deduction of _T_ ’s inconsistency would only
use finitely many sentences from _T_.

The next result is more interesting: it gives a method for keeping tight control over
existential claims.

Lemma4.21(Henkin): _Let T be a consistent_ L _-theory. There is a signature_ L∗⊇L
_with the same cardinality as the set of_ L _-formulas, and a consistent_ L∗ _-theory T_ ∗⊇ _T
with the_ witness property _, namely: for every_ L∗ _-formula φ_ ( _x_ ) _, there is some_ L∗ _-
constant symbol c such that_ (∃ _xφ_ ( _x_ )→ _φ_ ( _c_ ))∈ _T_ ∗_._

_Proof._ Let _κ_ be the cardinality ofL-formulas (see the end of §1.b for a brief discus-
sion of cardinals). We define the signatureL∗by expandingLwith _new_ constant
symbols, _cα_ , for every _α_ < _κ_. We can enumerate all theL∗-formulas with one free
variable, _x_ , by _φ_ 1 , ..., _φα_ , ... for _α_ < _κ_. We now define a sequence of theories, by
recursion up through _κ_ :

```
T 0 = T
Tα + 1 = Tα ∪{∃ xφα + 1 ( x )→ φα + 1 ( cβ )}, where cβ is the new constant with
least index not appearing in any sentence in Tα or in φα + 1 ( x )
Tβ =⋃
α < β
```
```
Tα for limit ordinals λ
```
Recall that there are _κ_ -many new constants; so, since _κ_ is a cardinal, at any stage _Tα_
with _α_ < _κ_ there are always some constants which have not yet been used. We now
prove, by induction, that _Tα_ is consistent for each _α_ ≤ _κ_.
The consistency of _T_ 0 = _T_ was assumed.
For induction, suppose _Tα_ is consistent. Suppose, for reductio, that _Tα_ + 1 is in-
consistent. So _Tα_ ⊢¬(∃ _xφα_ + 1 ( _x_ )→ _φα_ + 1 ( _cβ_ ))and hence _Tα_ ⊢∃ _xφα_ + 1 ( _x_ )and
_Tα_ ⊢¬ _φα_ + 1 ( _cβ_ ), by simple deductive manipulations. But _cβ_ does not occur in any
sentence in _Tα_ , nor in _φα_ + 1 ( _x_ ). So we have _Tα_ ⊢∀ _x_ ¬ _φα_ + 1 ( _x_ ), and hence _Tα_ is
inconsistent, contrary to our assumption. So _Tα_ + 1 is consistent after all.
Finally, let _β_ be a limit ordinal, and suppose for induction that _Tα_ is consistent for
all _α_ < _β_. Then any finite subset of _Tβ_ occurs in some _Tα_ and so is, by assumption,
consistent. So _Tβ_ is consistent, by Proposition 4.20.
So _Tκ_ = _T_ ∗is consistent, and has the witness property by construction.

Before stating our next result, we need a version of Zorn’s Lemma. Against the back-
ground of ZF, Zorn’s Lemma is equivalent to the Axiom of Choice (as stated in


```
4.a. gödel’s completeness theorem 101
```
§1.b), and so is always available in ZFC. Here is the version we use: a partial order
of subsets of a given set has a maximal element when the union of any non-empty
linearly ordered subset is in the partial order. More precisely, let _P_ ⊆℘( _A_ ), and
suppose that for any non-empty _L_ ⊆ _P_ satisfying _x_ ⊆ _y_ or _y_ ⊆ _x_ for all _x_ , _y_ in _L_ , one
has⋃ _L_ in _P_ ; then Zorn’s Lemma says that _P_ has a maximal element _m_ , i.e. if _m_ ⊆ _x_
then _m_ = _x_ for any _x_ ∈ _P_.^70 Our next result uses Zorn’s Lemma to turn consistent
theories into _complete_ , consistent theories. (As in §3.b, anL-theory _T_ is _complete_
iff either _φ_ ∈ _T_ or¬ _φ_ ∈ _T_ for everyL-sentence _φ_ .)

Lemma 4.22(Lindenbaum): _For any consistent_ L _-theory T, there is some complete,
consistent_ L _-theory T_ ∗⊇ _T._

_Proof._ Consider the set of all consistentL-theories extending _T_ :

```
C ={ S is anL-theory : T ⊆ S and S is consistent}
```
We first argue that there is some maximal _T_ ∗∈ _C_ , i.e. a set _T_ ∗which is not a proper
subset of any member of _C_. By Zorn’s Lemma, it suffices to show that if _L_ is a set
of elements of _C_ which are linearly ordered by⊆, then⋃ _L_ is in _C_. But trivially
_T_ ⊆⋃ _L_ ; and every finite subset of⋃ _L_ is consistent, since any finite subset of it
must be included in some element of _L_ , since its elements are linearly ordered by
⊆, so that⋃ _L_ itself is consistent (as in Proposition 4.20). By Zorn’s Lemma, then,
there is indeed some maximal _T_ ∗∈ _C_.
It remains to show that _T_ ∗is complete. Suppose that _φ_ ∉ _T_ ∗. Then _T_ ∗∪{ _φ_ }
is inconsistent, since _T_ ∗is maximal. So _T_ ∗∪{ _φ_ }⊢, and hence _T_ ∗⊢¬ _φ_. So
_T_ ∗∪{¬ _φ_ }is consistent and hence¬ _φ_ ∈ _T_ ∗because _T_ ∗is maximal.

Finally, we show how to construct models for complete, consistent theories with
the witness property:

Lemma4.23: _Let T be a complete, consistent_ L _-theory with the witness property. Then
T has a model M whose domain consists of equivalence classes of_ L _-constant symbols._

_Proof._ Define an equivalence relation∼on theL-constant symbols, by _c_ ∼ _d_ iff
_T_ ⊢ _c_ = _d_. We use[ _c_ ]to denote the equivalence classes under∼, i.e.[ _c_ ]={ _d_ :
_c_ ∼ _d_ }. Let _M_ be theL-structure whose underlying domain _M_ is the set of these
∼-equivalence classes, and which interprets theL-symbols as follows:

(^70) For more on Zorn’s Lemma and its equivalence with the Axiom of Choice, see Hrbáček and Jech
(1999: 142).


102 compactness, infinitesimals, and the reals

```
cM =[ c ]
RM ={([ c 1 ], ...,[ cn ]): T ⊢ R ( c 1 , ..., cn )}
fM ={([ c 1 ], ...,[ cn ],[ cn + 1 ]): T ⊢ f ( c 1 , ..., cn )= cn + 1 }
```
In this last line, we are describing the interpretation of the _n_ -place function sym-
bol _f_ by means of its graph. Further, while the interpretation of the function and
relation symbols is defined in terms of how the theory acts on the representatives
from the equivalence classes, the definition of∼ensures that nothing depends on
this choice of representatives. For instance, if _R_ is a two-place relation and _f_ is a
one-place function, then we have:

```
T ⊢( c 1 = d 1 ∧ c 2 = d 2 ∧ R ( c 1 , c 2 ))→ R ( d 1 , d 2 )
T ⊢( c 1 = d 1 ∧ c 2 = d 2 ∧ f ( c 1 )= c 2 )→ f ( d 1 )= d 2
```
Expressed in terms of equivalence classes and the structure _M_ , these imply that if
[ _c_ 1 ]=[ _d_ 1 ]and[ _c_ 2 ]=[ _d_ 2 ], then _RM_ ([ _c_ 1 ],[ _c_ 2 ])implies _RM_ ([ _d_ 1 ],[ _d_ 2 ]), and
likewise _fM_ ([ _c_ 1 ])=[ _c_ 2 ]implies _fM_ ([ _d_ 1 ])=[ _d_ 2 ]. Hence the interpretations
of the relation and function symbols in _M_ does not depend on the choice of the
representatives from the equivalence classes.
We now show, by induction on complexity ofL-formulas _φ_ ( _x_ )with all free
variables displayed, that for all tuples _c_ ofL-constant symbols:

```
T ⊢ φ ( c )iff M ⊧ φ ([ c ])
```
For atomic formulas, the biconditional holds by the definition of _M_. The induc-
tion step associated with conjunction follows easily by the induction hypothesis,
as does the induction step for negation, since _T_ is complete. For the induction
step associated with the existential quantifier, first consider the right-to-left direc-

tion of the biconditional. That is, first suppose that _M_ ⊧∃ _xφ_ ([ _c_ ], _x_ ). Then

_M_ ⊧ _φ_ ([ _c_ ],[ _d_ ])for someL-constant symbol _d_. With an appeal to the induction
hypothesis, this finishes the right-to-left direction. For the left-to-right direction,
suppose that _T_ ⊢∃ _xφ_ ( _c_ , _x_ ). Then since _T_ has the witness property, _T_ ⊢ _φ_ ( _c_ , _d_ )
for someL-constant symbol _d_. And we are done, by invoking the induction hy-
pothesis again.

Putting all of these results together, we obtain Gödel’s Completeness Theorem.

Theorem4.24(Gödel Completeness): _Let T be any first-order theory. If T_ ⊧ _φ then
T_ ⊢ _φ. In particular, if T is consistent then T has a model._

_Proof._ Suppose that _T_ ⊧ _φ_ and, for reductio, that _T_ ⊬ _φ_. Then _T_ ∪{¬ _φ_ }is con-
sistent. Apply Henkin’s Lemma 4.21 to _T_ ∪{¬ _φ_ }, then Lindenbaum’s Lemma 4.22


```
4.b. a model-theoretic proof of compactness 103
```
to that. The resulting theory is a complete, consistentL∗-theory with the witness
property. By Lemma 4.23, it has a model, whoseL-reduct satisfies _T_ ∪{¬ _φ_ }. Since
we assumed _T_ ⊧ _φ_ , this model also satisfies _φ_ , which is a contradiction.

### 4.b A model-theoretic proof of Compactness

In §4.1, we proved the Compactness Theorem 4.1 from Gödel’s Completeness The-
orem 4.24. That involves a detour through a _deductive_ system, but the idea can be
made more direct.^71 We start with a definition:

Definition 4.25: _Let T be any theory. Say that T is_ satisfiable _iff T has a model. Say
that T is_ finitely-satisfiable _iff every finite subset of T has a model._

In these terms, to prove the Compactness Theorem 4.1, we just need to show that
finite-satisfiability entails satisfiability. Our strategy is basically to repeat most of
the steps of §4.a, replacing ‘consistent’ with ‘finitely-satisfiable’. In detail: we will
reprove Lemmas 4.21–4.23, using only semantic notions; the Compactness Theo-
rem then follows immediately:

Lemma(4.21†): _Let T be a finitely-satisfiable_ L _-theory. There is a signature_ L∗⊇L
_with the same cardinality as the set of_ L _-formulas, and a finitely-satisfiable_ L∗ _-theory
T_ ∗⊇ _T with the witness property._

_Proof._ We define _Tα_ , for _α_ ≤ _κ_ , exactly as in Lemma 4.21. We must then prove
that _Tα_ is finitely satisfiable for each _α_ ≤ _κ_. The only interesting case is successor
ordinals. For induction, suppose _Tα_ is finitely-satisfiable, and consider any finite
_Sα_ ⊆ _Tα_. Let _M_ be any model of _Sα_. If _M_ ⊭∃ _xφα_ + 1 ( _x_ ), then _M_ ⊧{∃ _xφα_ + 1 ( _x_ )→
_φα_ + 1 ( _cβ_ )}. Alternatively, if _M_ ⊧∃ _xφα_ + 1 ( _x_ ), then _M_ ⊧ _φα_ + 1 ( _a_ )for some _a_ ∈ _M_.
Since _cβ_ does not occur in _M_ ’s signature, form a model _M_ ∗by augmenting _M_ so
that _cM_

```
∗
β = a. Now M
```
∗⊧{∃ _xφ
α_ + 1 ( _x_ )→ _φα_ + 1 ( _cβ_ )}. Either way, we have a model
of _Sα_ ∪{∃ _xφα_ + 1 ( _x_ )→ _φα_ + 1 ( _cβ_ )}. Since _Sα_ was an arbitrary finite subset of _Tα_ ,
_Tα_ + 1 is finitely-satisfiable.

Lemma(4.22†): _For any finitely-satisfiable_ L _-theory T, there is some complete,
finitely-satisfiable_ L _-theory T_ ∗⊇ _T._

_Proof._ As in the proof of Lemma 4.22, Zorn’s Lemma yields a maximalL-theory
_T_ ∗which extends _S_ and is finitely-satisfiable. It remains to show that _T_ ∗is complete.

(^71) Paseau (2010) surveys and discusses five proofs of compactness. The proof in this appendix is the
first of those five.


104 compactness, infinitesimals, and the reals

Suppose, for reductio, that _φ_ ∉ _T_ ∗and¬ _φ_ ∉ _T_ ∗. Since _T_ ∗is maximal, some finite
_S_ 1 ⊆ _T_ ∗is such that _S_ 1 ∪{ _φ_ }is unsatisfiable, i.e. _S_ 1 ⊧¬ _φ_ , and similarly some finite
_S_ 2 ⊆ _T_ ∗is such that _S_ 2 ⊧¬¬ _φ_. But then _S_ 1 ∪ _S_ 2 is a finite unsatisfiable subset of
_T_ ∗, contradicting the fact that _T_ ∗is finitely-satisfiable.

Lemma(4.23†): _Let T be a complete, finitely-satisfiable_ L _-theory with the witness
property. Then T has a model M whose underlying domain consists of equivalence classes
of_ L _-constant symbols._

_Proof._ Repeat the proof of Lemma 4.23, replacing⊢with⊧throughout.

### 4.c The valuation function of §4.6

This appendix proves the existence of a valuation function, _v_ , with the properties
described in Theorem 4.12. In fact, we define _v_ in terms of the negative of the natural
logarithm. So, during the proof of Theorem 4.12, it may help to consider this graph:

```
− 10 − 5 5 10
```
```
5
```
```
g ( x )=−ln∣ x ∣
```
```
h ( x )= e − x
```
It depicts _g_ ( _x_ )=−ln∣ _x_ ∣for _x_ ≠0, and its inverse on positive values, _h_ ( _x_ )= _e_ − _x_ ,
which we use in later results. The asymptotic behaviour of _g_ is representative of _v_.
For example, small non-zero finite values of _x_ yield large but finite values of _g_ ( _x_ ),
and infinitesimal values of _x_ yield infinite values of _g_ ( _x_ ).

Theorem(4.12): _Let the natural logarithm function,_ ln _, be definable in R, and
let R_ ∗⪰ _R. Then there is an ordered abelian group G and a surjective map v_ : _R_ ∗Ð→
( _G_ ∪{∞}) _satisfying the following properties:_

```
(1)v ( a )=∞ iff a = 0
(2)v ( ab )= v ( a )+ v ( b )
(3) v ( a + b )≥min( v ( a ), v ( b ))
(4) 0 < v ( a )<∞ iff a is infinitesimal
```

```
4.c. the valuation function of §4.6 105
```
```
(5) v ( a )< 0 iff a is infinite
(6)v ( a )= 0 iff a is finite, non-zero, and not infinitesimal
(7)If ∣ a ∣≤∣ b ∣ , then v ( a )≥ v ( b )
```
_Proof._ Let∼be an equivalence relation on _R_ ∗defined by:

```
a ∼ b iff a − b is finite
```
Let _G_ be the quotient group of _R_ ∗induced by this equivalence relation. If _H_ de-
notes the set of finite elements of _R_ ∗, then _a_ ∼ _b_ iff _a_ − _b_ ∈ _H_ , so that _G_ may be
written _R_ ∗/ _H_. Thus the elements of _G_ are the equivalence classes[ _a_ ]={ _b_ ∈ _R_ ∗:
_a_ ∼ _b_ }, where _a_ ranges over _R_ ∗. Note that _G_ has a natural order defined by[ _a_ ]<[ _b_ ]
iff _b_ − _a_ is positive and infinite. Finally, note that the unit element of the group _G_ is
[ 0 ], but we will write this as 0, as in the statement of the Theorem, since this is the
traditional way of writing the units of groups whose operation is written additively.
We now define our map _v_ :

```
v ( a )=
```
#### ⎧⎪

#### ⎪

#### ⎨

#### ⎪⎪

#### ⎩

```
∞ if a = 0
[−ln∗∣ a ∣] otherwise
```
Here,∞is stipulated to be greater than all elements of _G_ and to satisfy _a_ +∞=∞.
Clearly we have _v_ ( _a_ )=∞iff _a_ =0. To see that _v_ ( _ab_ )= _v_ ( _a_ )+ _v_ ( _b_ ), not:

```
v ( ab )=[−ln∗∣ ab ∣]=[(−ln∗∣ a ∣)+(−ln∗∣ b ∣)]= v ( a )+ v ( b )
```
In this equation, we appeal to the fact that[ _x_ + _y_ ]=[ _x_ ]+[ _y_ ]; this follows from the
fact that the map sending _x_ to[ _x_ ]is a homomorphism of groups. (This is because
the projection of a group onto one of its quotients is always a homomorphism.)
Next, suppose that 0 < _v_ ( _a_ ) < ∞. So _a_ ≠ 0 and−ln∗∣ _a_ ∣ > 0 is not fi-
nite. Then∣ _a_ ∣is infinitesimal, and hence so is _a_. Now, suppose that _v_ ( _a_ )<0.
Then _v_ (^1 _a_ )=− _v_ ( _a_ )>0 and so^1 _a_ is infinitesimal and hence _a_ is infinite. Finally,
suppose that _v_ ( _a_ )=0. Then−ln∗∣ _a_ ∣is finite. Then _a_ is finite, non-zero and not
infinitesimal.
Suppose that∣ _a_ ∣≤∣ _b_ ∣. Since the natural logarithm is non-increasing, ln∗∣ _a_ ∣≤
ln∗∣ _b_ ∣and hence−ln∗∣ _a_ ∣≥−ln∗∣ _b_ ∣. If the two quantities are finitely far from one
another then _v_ ( _a_ )= _v_ ( _b_ ). Otherwise−ln∗∣ _a_ ∣+ln∗∣ _b_ ∣>0 is infinite and hence
_v_ ( _a_ )> _v_ ( _b_ ).
Finally, we show that _v_ ( _a_ + _b_ )≥min( _v_ ( _a_ ), _v_ ( _b_ )). Without loss of generality
we may suppose that _v_ ( _a_ )≥ _v_ ( _b_ ), so that _v_ ( _b_ )=min( _v_ ( _a_ ), _v_ ( _b_ )). If _a_ =0 then
_a_ + _b_ = _b_ and so we are done. Hence we may assume that _a_ ≠0. If _b_ =− _a_ then
_a_ + _b_ =0 and so _v_ ( _a_ + _b_ )=∞and hence we are trivially done. Thus we may further
assume that _b_ ≠− _a_. Then by our assumptions that _a_ ≠0 and _b_ ≠− _a_ we have that _ab_


106 compactness, infinitesimals, and the reals

is finite non-zero and hence also _a_ + _bb_ is finite non-zero. So now _v_ ( _a_ + _b_ )− _v_ ( _b_ )=
_v_ ( _a_ + _bb_ )≥0 and hence _v_ ( _a_ + _b_ )≥ _v_ ( _b_ )=min( _v_ ( _a_ ), _v_ ( _b_ )).

Moreover, as promised in §4.6, the value group is unique up to isomorphism:

Proposition4.26: _Any two ordered abelian groups with the properties described in The-
orem 4.12 are isomorphic._

_Proof._ Suppose that _G_ ′is an ordered abelian group with the properties of Theorem
4.12, with a witnessing surjective map _v_ ′: _R_ ∗Ð→( _G_ ′∪{∞}). It suffices to
show that _G_ and _G_ ′are isomorphic, where _G_ is the group constructed in the proof
of Theorem 4.12. Define a map _f_ : _R_ ∗Ð→ _G_ ′by _f_ ( _a_ )= _v_ ′( _e_ − _a_ ). Then _f_ is a
group homomorphism:

```
f ( 0 )= v ′( e −^0 )= v ′( 1 )= 0
f ( a + b )= v ′( e −( a + b ))= v ′( e − a ⋅ e − b )= v ′( e − a )+ v ′( e − b )= f ( a )+ f ( b )
```
Also, _f_ is surjective. For, suppose that _c_ ∈ _G_ ′. Since _v_ ′is surjective, choose _b_ ∈ _R_ ∗
such that _v_ ′( _b_ )= _c_. Then _b_ ≠0 since _c_ ≠∞. Since _v_ ′( _b_ )= _v_ ′(− _b_ ), without loss
of generality let _b_ >0. Let _a_ =−ln∗ _b_ , so that _e_ − _a_ = _b_. Then _f_ ( _a_ )= _v_ ′( _e_ − _a_ )=
_v_ ′( _b_ )= _c_.
We now show that the _kernel of f_ , also called ker( _f_ )={ _a_ ∈ _R_ ∗: _f_ ( _a_ )= 0 }, is
precisely the finite elements, which we wrote as _H_ in the proof of Theorem 4.12. For,
suppose that _a_ in _R_ ∗is finite. Then _e_ − _a_ is also finite non-zero and not infinitesimal,
so that _v_ ′( _e_ − _a_ )=0 by hypothesis on _v_ ′. Hence _f_ ( _a_ )=0. Conversely, suppose that
_a_ is infinite. If _a_ <0 then _e_ − _a_ is infinite and thus _v_ ′( _e_ − _a_ )<0 by hypothesis on _v_ ′,
so that _f_ ( _a_ )≠0; and if _a_ >0 then _e_ − _a_ is infinitesimal and then 0< _v_ ′( _e_ − _a_ )<∞
by hypothesis on _v_ ′, so that again _f_ ( _a_ )≠0. Hence, indeed ker( _f_ )is precisely the
finite elements.
Now the group epimorphism _f_ : _R_ ∗Ð→ _G_ ′induces a group isomorphism
~ _f_ : _G_ Ð→ _G_ ′given by~ _f_ ([ _a_ ])= _f_ ( _a_ ).^72 Further, this isomorphism~ _f_ respects the

ordering. For, suppose that[ _a_ ]<[ _b_ ]. Then _b_ − _a_ is positive and infinite, so that
_e_ −( _b_ − _a_ )is infinitesimal. Hence 0< _v_ ′( _e_ −( _b_ − _a_ ))<∞by hypothesis on _v_ ′, so that
0 < _f_ ( _b_ − _a_ )<∞. Since _f_ is a homomorphism, we have 0< _f_ ( _b_ )− _f_ ( _a_ ), i.e.
_f_ ( _a_ )< _f_ ( _b_ ). An identical argument shows that _f_ ( _a_ )< _f_ ( _b_ )implies _a_ < _b_. Hence,
_G_ and _G_ ′are indeed isomorphic as ordered abelian groups.

(^72) This is sometimes called the _first isomorphism theorem_ for groups. See any standard algebra text, e.g.
Hungerford (1980: 43).


