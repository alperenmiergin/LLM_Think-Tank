**Kaynak:** [[00_Context/0_Button-Walsh_Philosophy_and_model_theory/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

## 10 Internal categoricity and the natural numbers

Since we are halfway through Part B, it might help to take stock.
In Chapter 6, we introduced _modelism_. This is the view that mathematical struc-
ture, informally construed, should be explicated in terms of a model-theorist’s iso-
morphism types. In Chapters 7–9, we showed that this is incompatible with _mod-
eration_. This is the (naturalist) view that we must reject all appeal to ‘mathematical
intuition’, or anything similar, in the philosophy of mathematics. Sadly, moderate
modelists cannot explain how creatures like us could possibly pin down structures
up to isomorphism. So moderate modelism must be rejected.
However, we have not yet considered whether we should reject the _moderation_
or the _modelism_.^1 Moderation is just a _zeitgeisty_ form of naturalism, which stems
from a nebulous but broadly anti-rationalist conception of the kinds of creatures
we are. As such, any serious exploration of alternatives to moderation would take
us far away from model theory as such.
We _can_ , however, outline a rival to modelism by using some metamathematical
tools which bear a family-resemblance to standard model theory. This rival, which
we call _internalism_ , aims to be compatible with moderation. We will explore inter-
nalism over the next three chapters, first focussing on arithmetic, then turning to set
theory in Chapter 11, and finally turning to internalism about model theory itself in
Chapter 12.
We should emphasise right now, though, that we are not _advocating_ internalism,
any more than we were advocating modelism. Rather, we are presenting internalism
in a speculative spirit. It is a fascinating position, worthy of attention, and we want
to develop it as best we can.
The very idea of internalism is hugely in debt, in various ways, to Putnam, Par-
sons, and McGee. We shall mention these authors several times in the next two
chapters, but such mentions will fail to convey the extent of our debt to them.
Internalism relies heavily on deduction. In this chapter and the next, the deduc-
tive system in question is always the system of second-order natural deduction laid
down in §1.c (though in this chapter we do not need Choice). So, when we say

(^1) In fact, this is a point where we are inclined to part ways: Sean is inclined to reject the _moderation_ ;
Tim is inclined to reject the _modelism_. But, at the time of writing, these are just inclinations, rather than
settled positions.


224 internal categoricity and the natural numbers

something is _second-order deducible_ , or use the single turnstile⊢, we always have in
mind that specific deductive system. When we speak of ‘pure second-order logic’,
we mean second-order logic in the empty signature, i.e. formulas which contain
only connectives, various types of quantifiers and associated variables, and the iden-
tity sign. We frequently use the notation introduced in §1.9, where(∃ _x_ : Ξ) _ψ_ ab-
breviates∃ _x_ (Ξ( _x_ )∧ _ψ_ )and(∀ _x_ : Ξ) _ψ_ abbreviates∀ _x_ (Ξ( _x_ )→ _ψ_ ).

### 10.1 Metamathematics without semantics

We begin by introducing the _very idea_ of our internalist rival to modelism. The
technical material in this section and the next owes much to Väänänen and Wang.

```
From infinity to arithmetic
```
A set is _Dedekind-infinite_ if there is some function from the set to itself which is in-
jective but not surjective. This notion can be transcribed into the formalism of pure
second-order logic in the obvious way, just by writing out the notions of function-
ality, injectivity, and non-surjectivity by hand:

```
∃ F ∃ R (∃ z : F )[(∀ x : F )(∃! y : F ) R ( x , y )∧
(∀ x , x ′, y : F )(( R ( x , y )∧ R ( x ′, y ))→ x = x ′)∧
(∀ x : F )¬ R ( x , z )]
```
Here, _R_ is the graph of the injective function, whose non-surjectivity as a function
from _F_ to _F_ is witnessed by the element _z_ of _F_. Since this expresses that there is a
property, _F_ , with Dedekind-infinitely many instances, we dub this sentence DI 2.
From DI 2 , we can deduce something which looks _very arithmetical_.^2 We can ex-
plain what, by running through something very much like Dedekind’s own reason-
ing.^3 Fix _F_ , _R_ and _z_ witnessing DI 2 , and define a formula with one free one-place
relation-variable, _X_ , which intuitively says that _z_ is in _X_ and that _X_ is closed under
the _R_ -relation:

```
Γ( X ):= X ( z )∧(∀ x : X )∀ y ( R ( x , y )→ X ( y ))
```
By second-order logic’s Comprehension Schema, there is a property _N_ such that:

```
∀ v ( N ( v )↔∀ X [Γ( X )→ X ( v )])
```
(^2) Indeed, 10.1 shows that DI 2 interprets PA 2 with parameters. See Chapter 5 footnote 19.
(^3) Dedekind (1888). For a recent treatment which keeps close to Dedekind’s original, see Potter (2004:
88–92). The deductive version of the argument is in Väänänen and Wang (2015: Theorem 2).


```
10.1. metamathematics without semantics 225
```
In effect, _N_ is the ‘minimal closure’ of _z_ under _R_. Moreover, by Comprehension
again, there is an _S_ such that:

```
∀ x ∀ y ( S ( x , y )↔[ R ( x , y )∧ N ( x )∧ N ( y )])
```
In effect, _S_ is the restriction of _R_ to _N_. It is now easy but tedious to confirm the
following (see §10.b; we label each conjunct for future reference):^4

```
N ( z )∧(∀ x : N )(∃! y : N ) S ( x )= y ∧ ( pa:res )
(∀ x : N ) S ( x )≠ z ∧ ( pa:q1 )
(∀ x , y : N )( S ( x )= S ( y )→ x = y )∧ ( pa:q2 )
∀ X [( X ( z )∧(∀ x : N )[ X ( x )→ X ( S ( x ))])→(∀ x : N ) X ( x )] ( pa:ind )
```
We abbreviate this conjunction as PA( _NzS_ ), where ‘ _N_ ’ reminds us of ‘natural num-
ber’, where ‘ _z_ ’ reminds us of ‘zero’, and where ‘ _S_ ’ reminds us of ‘successor’. Addition-
ally, in what follows we will frequently need to write ‘∃ _N_ ∃ _z_ ∃ _S_ ’, and for space and
readability we write ‘∃ _NzS_ ’ (and similarly for universal quantification). In these
terms, then, we have shown:^5

Proposition 10.1:DI 2 ⊢∃ _NzS_ PA( _NzS_ )

Now, if we glance at Definition 1.10, which lays down the theory PA 2 , it is clear that
PA( _NzS_ )essentially re-axiomatises PA 2 relative to _N_ , _z_ , and _S_ : for ( _pa:res_ ) rela-
tivises our attention to _N_ , then ( _pa:q1_ ) and ( _pa:q2_ ) go proxy for (Q1) and (Q2),
while ( _pa:ind_ ) stands in for PA 2 ’s Induction Axiom.^6 And that is what we meant,
when we earlier said that we can deduce something which looks _very arithmetical_
from DI 2. In particular, we might consider glossing the formal sentence of pure
second-order,∃ _NzS_ PA( _NzS_ ), using the _informal_ claim:

```
(1)there is an arithmetical structure
```
So glossed, we would say that DI 2 _proves the existence of an arithmetical structure._

(^4) The use of functional notation here, and throughout the next three chapters, is abbreviatory and
formally justified by ( _pa:res_ ). For instance, in ( _pa:ind_ ), _X_ ( _S_ ( _x_ ))abbreviates∀ _y_ ( _S_ ( _x_ , _y_ )→ _X_ ( _y_ )), and
_S_ ( _x_ )= _S_ ( _y_ )abbreviates∀ _v_ ( _S_ ( _x_ , _v_ )↔ _S_ ( _y_ , _v_ )). If we preferred, we could obtain _bona fide_ second-
order functions from such relations, using either Choice or a comprehension principle for functions. For
example, using Comprehension there is a relation _S_ ∗such that∀ _x_ ∀ _y_ ( _S_ ∗( _x_ , _y_ )↔[ _S_ ( _x_ , _y_ )∨ ¬ _N_ ( _x_ )]),
and we can then obtain a genuine _function_ by Choice. However, we would prefer not to muddy the waters
by using Choice.
(^5) This is Väänänen and Wang (2015: Theorem 2).
(^6) But note that PA( _NzS_ ) _omits_ the infinitely many Comprehension Schema instances which we build
in to the axiomatisation of PA 2. So, in this context, the instances of the Comprehension Schema are simply
relegated to the ambient deductive system.


226 internal categoricity and the natural numbers

```
The idea of an arithmetical internal-structure
```
However, regarding (1) as a good gloss of∃ _NzS_ PA( _NzS_ )is the key first step away
from modelism and towards internalism.
Since (1) is an informal sentence concerning ‘structure’, modelists will want to
explicate it via model theory. Their explication will involve three components.
First, there is a particular object, anL-structure, _N_. This object has a domain, _N_ ,
which contains a distinguished element, 0, and upon which we have some function
_S_ : _N_ Ð→ _N_. Second, there is the theory which is true in thisL-structure. This is
PA 2 , a set of second-order sentences. Third, there is the relation,⊧, between theL-
structure and the theory. This is a recursively defined, _bona fide_ language–object
relation. So modelists explicate (1) as follows: _there is some N such that N_ ⊧PA 2.^7
Our _internalist_ , by contrast, explicates (1) as∃ _NzS_ PA( _NzS_ ). This explication
is very different. In speaking informally of ‘an arithmetical structure’, here, the in-
ternalist is _not_ aiming to draw attention to some specific object which stands in a
language–object satisfaction relation to some theory. She is _not_ engaging in seman-
tic ascent. She is simply saying something in a second-order object language, along
the following lines: _some property (a second-order entity), some (first-order) object,
and some function (a second-order entity) collectively behave arithmetically_.
Prima facie, either explication of (1) is entirely reasonable. But we must never
confuse the two. To guard against such confusion, when we discuss what model-
theorists call ‘a model’, we use the phrase ‘anL-structure’. When we discuss what
internalists calls ‘a model’ (i.e. some entities of various types interacting with one
another), we use the phrase ‘an internal-structure’. To confuseL-structures with
internal-structures is not just a mistake; _it is literally a type confusion_. To repeat:L-
structures are first-order objects, presented within some model theory, whereas to
talk of ‘an internal-structure’ is to gesture at three entities of different logical types.
To further unpack the (typed) differences betweenL-structures and internal-
structures, imagine we develop claim (1) a little, and say:

```
(2) there is an arithmetical structure, and φ holds in it
```
As before, modelists take ‘an arithmetical structure’ to be someL-structure, _N_.
They then take _φ_ to be a sentence which is mentioned (rather than used). And they
take the notion of ‘holding’ to be the language–object satisfaction relation. So, they
explicate (2) by saying: _there is some N such that N_ ⊧PA 2 _and N_ ⊧ _φ_.
As before, internalists regard (2) as drawing attention to some property, ob-
ject and function which collectively behave arithmetically. Since this explication
makes no mention of any language–object relation, internalists must explicate the
claim ‘ _φ_ holds in it’ as a further constraint on the property, object and function
which collectively behave arithmetically. So, internalists explicate (2) by saying:

(^7) Depending on context, modelists may want to add an additional level of abstraction, by lifting all of
this up to the level of isomorphism types.


```
10.2. the internal categoricity of arithmetic 227
```
∃ _NzS_ [PA( _NzS_ )∧ _φ_ ( _NzS_ )]. That is, they regard _φ_ as a formula containing free
variables _N_ , _z_ , and _S_ , which are then bound by the same quantifiers that bind the
free variables in PA( _NzS_ ).
In this chapter, we will encounter several other informal claims about ‘mathemat-
ical structure’ which modelists and internalists will explicate differently. We will say
more about them as we go; but we hope that the general pattern is becoming clear.
Model theory involves metalinguistic ascent: treating theories and their models as
(syntactically first-order) objects of study, and considering a _bona fide_ language–
object satisfaction relation which holds between them. Modelists embrace this as
a device for thinking about ‘mathematical structure’, but internalists shun that way
of thinking. Instead, the their idea is as follows:

_Theinternalistmanifesto.For philosophical purposes, the metamathematics of second-
order theories should not involve semantic ascent. Instead, it should be undertaken within
the logical framework of very theories under investigation. Our slogan is: metamathe-
matics without semantics!_

Over the next three chapters, we want to see just how far this idea can be pushed.
Before the pushing begins, we should probably explain why we have dedicated
three chapters of this book to a somewhat _anti_ -model-theoretical position. First,
then: the sheer similarity of topic suggests that internalism ought be discussed next
to modelism. Second: in spite of the (typed) differences, there are clear technical
parallels between ordinary model-theoretic methods and the deductive approach
recommended by internalists. Third, and relatedly: what set theorists call _class-
models_ are easily regarded as internal-structures.^8 And finally, as we show in Chap-
ter 12, we can consider internalism about model theory _itself_ , and so take a new per-
spective _on_ model theory.

### 10.2 The internal categoricity of arithmetic

In this chapter, though, we set our sights a little lower, and simply consider internal-
ism about arithmetic. So, the internalist’s hope is to explicate informal talk of ‘the
natural numbers’ in terms of arithmetical internal-structures. The key step towards
realising this hope is via a result which we might gloss as follows: _all arithmetical
internal-structures are isomorphic_.

(^8) But depending on the set theory, one might not allow quantification over classes. For more on class
models, see Jech (2003: 161–2). McGee presents his internal categoricity result for set theory (see §11.a)
in terms of class-models, whilst describing the use of class-models as ‘merely figurative, second-order logic
in wolf’s clothing’ (1997: 56). Indeed, as we will reconstruct McGee’s result, his internal-structures are
class-models in the sense of Kelly–Morse set theory (with urelements).


228 internal categoricity and the natural numbers

Our first task, though, is to state that result precisely. Following the discussion
in §10.1, the phrase ‘internal-structure’ needs to be treated with care here. So: just
as internalists explicate (1) via∃ _NzS_ PA( _NzS_ ), they should explicate:

```
(3)for any arithmetical internal-structure, ...
via:∀ NzS (PA( NzS )→...)
```
Equally, they should explicate:

```
(4) for any two arithmetical internal-structures, ...
via:∀ N 1 z 1 S 1 N 2 z 2 S 2 ([PA( N 1 z 1 S 1 )∧PA( N 2 z 2 S 2 )]→...)
```
To state our target result precisely, then, we just need a way to say ‘there is an
internal-isomorphism between PA( _N_ 1 _z_ 1 _S_ 1 )and PA( _N_ 2 _z_ 2 _S_ 2 )’. But note: we have
said ‘internal-isomorphism’ here, rather than ‘isomorphism’, and for good reason.
Internal-structures are notL-structures; indeed, as we explained in §10.1, it is lit-
erally a _type confusion_ to identify them. Similarly, it would literally be a type con-
fusion to expect to find an isomorphism, in the model-theorist’s sense, between
PA( _N_ 1 _z_ 1 _S_ 1 )and PA( _N_ 2 _z_ 2 _S_ 2 ). After all, PA( _N_ 1 _z_ 1 _S_ 1 )and PA( _N_ 2 _z_ 2 _S_ 2 )are sim-
ply two open-formulas of pure second-order logic, containing a one-place relation-
variable, a first-order variable, and a one-place function-variable.
Guided by the idea of _metamathematics without semantics_ , however, it is quite
easy to define the idea of an internal-isomorphism between PA( _N_ 1 _z_ 1 _S_ 1 )and
PA( _N_ 2 _z_ 2 _S_ 2 ). Here is the definition (we label the conjuncts for future reference):

```
IsoN 1 ▹ 2 ( R ):=∀ v ∀ y ( R ( v , y )→[ N 1 ( v )∧ N 2 ( y )])∧ ( in:1 )
(∀ v : N 1 )∃! yR ( v , y )∧ ( in:2 )
(∀ y : N 2 )∃! vR ( v , y )∧ ( in:3 )
R ( z 1 , z 2 )∧ ∀ v ∀ y ( R ( v , y )→ R ( S 1 ( v ), S 2 ( y ))) ( in:4 )
```
Roughly, conjunct ( _in:1_ ) says that _R_ maps _N_ 1 to _N_ 2 , ( _in:2_ ) says that _R_ is func-
tional, ( _in:3_ ) says that _R_ is a bijection, and ( _in:4_ ) says that _R_ ‘preserves arithmetical
structure’. Assembling all of this, the following sentence of pure second-order logic
roughly says ‘all arithmetical internal-structures are internally-isomorphic’:

```
∀ N 1 z 1 S 1 N 2 z 2 S 2 ([PA( N 1 z 1 S 1 )∧PA( N 2 z 2 S 2 )]→∃ R IsoN 1 ▹ 2 ( R ))
```
Moreover, this sentence is a _deductive theorem_ of second-order logic. So we have:^9

Theorem 10.2(Internal Categoricity of PA):

```
⊢∀ N 1 z 1 S 1 N 2 z 2 S 2 ([PA( N 1 z 1 S 1 )∧PA( N 2 z 2 S 2 )]→∃ R IsoN 1 ▹ 2 ( R ))
```
(^9) This is Väänänen and Wang (2015: Theorem 1).


```
10.3. limits on what internal categoricity could show 229
```
The proof is in §10.b, but it essentially consists in ‘internalising’ one version of a
proof of Dedekind’s Theorem 7.3, in roughly the same way that, in §10.1, we ‘inter-
nalised’ Dedekind’s proof that an infinite system yields an arithmetical structure.
This suggests that we should compare Theorem 10.2 with Dedekind’s Theo-
rem 7.3. Speaking _very_ loosely, both theorems say ‘all models of arithmetic are iso-
morphic’. But speaking _that_ loosely is unwise. Dedekind’s Theorem 7.3 concerns
L-structures and full second-order satisfaction, and is proved in a model-theoretic
metatheory which treats PA 2 as an object-theory. Theorem 10.2 involves no seman-
tic ascent, no mention of sentences, and no semantic notions. It just amounts to a
_deduction_ of a single sentence of pure second-order logic.^10
In what follows, we call Theorem 10.2 an _internal_ categoricity result, and contrast
this with Dedekind’s _external_ categoricity result.^11 These labels are appropriately
suggestive. Crudely: an external result involves standing back from a theory’s object
language and considering its semantics in some model-theoretic metalanguage. By
contrast, an internal result is proved deductively and _within_ the object language. It
concerns internal-structure, and is of chief concern to internalists.

### 10.3 Limits on what internal categoricity could show

The remainder of this chapter focusses on the philosophical significance of internal
categoricity. We start, though, by emphasising some things that internal categoric-
ity results _cannot possibly_ show. The limitations here follow straightforwardly from
the deductive nature of internal categoricity.

```
No pinning down L -structures
```
The first limit is this: _no internal categoricity result can show that a theory pins down
a unique_ L _-structure in the model-theorist’s sense (even up-to-isomorphism)._
The reason for this is straightforward. Internal categoricity theorems are deduc-
tions within pure second-order logic. They involve no semantic notions. To sug-
gest that an internal categoricity theorem could directly allow us to pin down an
L-structure would just be a type confusion again.
Of course, just as one _can_ engage in semantic reflection about theories, so one _can_
engage in semantic reflection about internal categoricity theorems. In particular,
given the _full_ semantics for second-order logic, Theorem 10.2 essentially amounts to

(^10) However, it is worth highlighting that there is an important sense in which Theorem 10.2 requires
a strong deductive second-order logic. In particular: as outlined §1.11, we are working with an Impred-
icative Comprehension Schema; Theorem 10.2 fails if we replace the Impredicative with the _Predicative_
Comprehension Schema (see §10.c).
(^11) Walmsley (2002: 249–51) seems to have been the first author to use the phrase ‘internal categoricity’.
The phrase ‘relative categoricity’ is also used here, e.g. Walsh and Ebels-Duggan 2015.


230 internal categoricity and the natural numbers

a statement of external categoricity, i.e. to Dedekind’s Theorem. However, external
categoricity vanishes with the _Henkin_ semantics; for although all internal-structures
are alike within a _single_ Henkin interpretation, they need not be alike across _differ-
ent_ Henkin interpretations.^12 Unsurprisingly, then, treating internal categoricity via
semantic ascent simply takes us on a long detour back to the issues of Chapter 7.
In short, if internal categoricity results are to show us anything new, they must be
approached _as internal_ categoricity results: as deductive theorems of pure second-
order logic. And that is how we treat them in what follows.

```
No avoiding Gödelian incompleteness
```
The second limit is this: _internally categorical theories are incomplete._
It is sometimes said that Gödelian incompleteness does not affect second-order
theories. That claim is imprecise. Of course, if we invoke the full semantics for
second-order logic, then the external categoricity of PA 2 yields its completeness
(for all this, see §7.2). But the internalist aims to do metamathematics without se-
mantics and eschews external categoricity results in favour of deductively proved
internal categoricity results. And both versions of Gödel’s incompleteness theo-
rems (see §5.a) apply to deductive second-order theories.
To bring this out, we will use ‘ _Num_ ’ as a canonical (one-place) number-predicate,
‘0’ as canonical (first-order) constant, and ‘ _Succ_ ’ as a canonical successor-function-
symbol (formally, _Succ_ will be a two-place relation symbol). Then we define PAint
to be this second-order sentence:

```
Num ( 0 )∧(∀ x : Num )(∃! y : Num ) Succ ( x )= y ∧
(∀ x : Num ) Succ ( x )≠ 0 ∧
(∀ x , y : Num )( Succ ( x )= Succ ( y )→ x = y )∧
∀ X [( X ( 0 )∧(∀ x : Num )[ X ( x )→ X ( Succ ( x ))])→(∀ x : Num ) X ( x )]
```
Plainly, PAint is just the theory obtained by taking the formula PA( _NzS_ )
from ( _pa:res_ )–( _pa:ind_ ) and replacing its free variables with our new canonical vo-
cabulary. The name PAintstands for _Peano Arithmetic, internalised_.
Now, PAintis surely consistent.^13 Additionally, PAintinterprets Q, by the remarks
in the last paragraph of §1.a. And, PAintis obviously computably enumerable.^14
So, by Gödel’s First Incompleteness Theorem 5.13, PAintis arithmetically incom-
plete. And, by Gödel’s Second Incompleteness Theorem 5.14, PAintdoes not prove
Con(PAint).

(^12) See Lavine (1999: 64) and Väänänen and Wang (2015: 99).
(^13) Indeed, PAintis consistent if DI 2 is consistent with our deductive second-order system (see §10.1).
(^14) It is also computably enumerable when one explicitly includes in it the axioms of the background de-
ductive system for the second-order logic—including the infinitely many instances of the Comprehension
Schema, as in footnote 6—and closes the theory under provability.


```
10.3. limits on what internal categoricity could show 231
```
This reinforces the earlier point, that internal categoricity provides no guide
concerning semantics. Suppose, for reductio, that within PAintwe could de-
fine ‘standard’ semantic notions concerning internal-structures. Presumably, PAint
would trivially prove that some internal-structure—comprising _Num_ , 0 and _Succ_ —
satisfies PAint. Assuming that PAintproves a version of the Soundness Theorem—
as we would demand from a ‘standard’ semantics—then PAintproves Con(PAint),
contradicting Gödel’s Second Incompleteness Theorem 5.14. So, when we say that
Theorem 10.2 tells us nothing about semantics, this is not just a quibble about what
to call a ‘semantics’. There are rock-solid impossibilities here.

```
No ‘pinning down’ internal-structure
```
These two observations pack some heavy punches concerning the potential signif-
icance of Theorem 10.2. To see why, consider this naïve reaction to the Theorem:

```
(5)Theorem 10.2 shows that PAintpins down the natural numbers up to internal-
isomorphism
```
This naïve reaction is both understandable and extremely appealing. We spent most
of Chapters 6–8 considering the modelist’s ambition of pinning down the natural
numbers up to isomorphism (in the model-theorist’s sense). In this chapter, we are
presenting internalism as an alternative to modelism. But if the modelist-turned-
internalist can insist on (5), she will be able to retain many of her former ambitions.
Sadly, (5) is too opaque to be of any use. As we repeatedly emphasised in our
discussion of modelism in Chapters 6–8, talk of ‘pinning down’ is inevitably quite
loose, and needs to be made more precise. But no way of making it more precise
seems very conducive to internalism.
Suppose that the internalist unpacks (5) along these lines: PAint _is true of, and
only of, a rather limited range of entities_. Then she has invoked some language–object
‘true of’ relation, and engaged in semantic ascent after all. In so doing, she given up
on her aim to treat Theorem 10.2 as an _internal_ categoricity result. (And if she insists
that the phrase ‘true of’ does _not_ signal semantic ascent, then we would ask her to
use some less misleading phrase.)
Suppose instead, then, that the internalist unpacks (5) along these different lines:
PAint _articulates our arithmetical concepts as fully as possible_. This may avoid semantic
ascent, but it just seems wrong. Since Con(PAint)is independent from PAint, the
theory PAint∧Con(PAint)outlines our arithmetical concepts more precisely than
PAintitself, for whatever exactly ‘articulating our arithmetical concepts’ amounts to,
adding Con(PAint)surely adds some detail.
For these reasons, we think that internalists should just abandon (5), and look
for alternative ways to gloss the significance of internal categoricity.
The difficulties surrounding (5) point, in fact, towards a disconcerting dilemma.


232 internal categoricity and the natural numbers

On the one hand, suppose we think of ‘internal-isomorphisms between internal-
structures’ _as if_ they were isomorphisms betweenL-structures. Then it is obvious
why we might _care_ about them. However, to treat them in this way involves semantic
ascent, contrary to the aims of internalism. On the other hand, if we do not think
of ‘internal-isomorphisms between internal-structures’ in that way, it is not at all
obvious why we should _care_ about them.
To avoid this dilemma, we think that internalists should switch their focus from
Theorem 10.2 to a corollary which we will now introduce.

### 10.4 The intolerance of arithmetic

In §2.1, we saw that isomorphism entails elementary equivalence (this was Corol-
lary 2.5). It turns out that _internal_ -isomorphism entails something similar. To ex-
plain what, we need a short definition.
Roughly, we say that a formula’s quantifiers are Ξ-restricted iff all its first-order
and second-order quantifiers are restricted to Ξ. Formally, we employ the notation
introduced in §1.9, where(∃ _x_ : Ξ) _ψ_ abbreviates∃ _x_ (Ξ( _x_ )∧ _ψ_ )and(∀ _x_ : Ξ) _ψ_
abbreviates∀ _x_ (Ξ( _x_ ) → _ψ_ ). We also introduce some similar second-order ab-
breviations. So,(∃ _Xn_ : Ξ _n_ ) _ψ_ abbreviates∃ _Xn_ (∀ _v_ [ _Xn_ ( _v_ )→⋀ _ni_ = 1 Ξ( _vi_ )]∧ _ψ_ )
and(∀ _Xn_ : Ξ _n_ ) _ψ_ abbreviates∀ _Xn_ (∀ _v_ [ _Xn_ ( _v_ )→⋀ _ni_ = 1 Ξ( _vi_ )]→ _ψ_ ). Intuitively,
(∃ _Xn_ : Ξ)draws attention to an _n_ -place relation over the property Ξ. We then say
that _φ_ ’s _quantifiers are_ Ξ _-restricted_ iff every first-order quantified expression in _φ_ is
of the form(∀ _x_ : Ξ)or(∃ _x_ : Ξ), and every second-order quantified expression
is of the form(∀ _Xn_ : Ξ)or(∃ _Xn_ : Ξ). In these terms, Theorem 10.2 entails the
following (the proof is in §10.b):

Theorem 10.3(Intolerance of PA): _For any formula φ_ ( _NzS_ ) _whose quantifiers are
N-restricted and whose free variables are all displayed:_

```
⊢∀ NzS (PA( NzS )→ φ ( NzS ))∨ ∀ NzS (PA( NzS )→¬ φ ( NzS ))
```
Given the discussion of §§10.1–10.2, the internalist will gloss this result as follows:
_either φ holds in every arithmetical internal-structure, or_ ¬ _φ holds in every arithmetical
internal-structure._ This is why we call the result an _intolerance_ theorem: no object-
language deviation between internal-structures is tolerated.

### 10.5 A canonical theory

The first consequence import of the Intolerance Theorem 10.3 is that it allows us to
introduce a _canonical_ internalised theory of arithmetic.


```
10.6. the algebraic / univocal distinction 233
```
Suppose we consider two arithmetical internal-structures. So, we have two
candidate number properties _N_ 1 and _N_ 2 , two candidate initial elements _z_ 1 and
_z_ 2 , and two candidate successor functions _S_ 1 and _S_ 2 , such that PA( _N_ 1 _z_ 1 _S_ 1 )and
PA( _N_ 2 _z_ 2 _S_ 2 ). Given intolerance, exactly the same arithmetical claims must hold or
fail in both internal-structures, modulo subscripts. So, for arithmetical purposes,
there is simply no need to _bother_ with the subscripts.^15 As such, we can all simply
agree to use PAint: the theory introduced in §10.3, with its canonical vocabulary of
‘ _Num_ ’, ‘0’ and ‘ _Succ_ ’.^16
It is worth noting that the use of PAintcan be be justified by anyone who accepts
both ( _a_ ) our deductive system of second-order logic and ( _b_ ) that there is _some_ prop-
erty with infinitely many instances. By Proposition 10.1, anyone who accepts ( _a_ )
and ( _b_ ) must accept that _some_ arithmetical internal-structure exists; and then the
Intolerance Theorem 10.3 shows that we can reason about all arithmetical internal-
structures simultaneously using the canonical theory PAint.
Note, though, that PAintrecords only what matters _for arithmetic_ ; it is silent on all
other matters. To illustrate the point: in our earlier example, perhaps the candidate
initial elements, _z_ 1 and _z_ 2 , were distinct from each other; maybe _z_ 1 is Julius Caesar
and _z_ 2 is the abstract entity Goodness. But to ask whether 0 itself is Caesar, or
Goodness, or something else, is just to misunderstand the _point_ of employing the
canonical theory, PAint.^17 To repeat: PAintis presented just as a canonical theory
which provides a convenient common language for reasoning about all arithmetical
internal-structures simultaneously.

### 10.6 The algebraic / univocal distinction

The ability to introduce such a canonical theory, off the back of the Intolerance
Theorem, is already significant. But internalists can push this further, and use in-
tolerance to explicate the distinction between algebraic and univocal theories.

```
Demarcating (non-)algebraic theories without modelism
```
In §2.2, we introduced a rough-and-ready distinction between algebraic and uni-
vocal theories. Algebraic theories are multiply-applicable (usually by design), and
paradigm examples include theories governing rings, fields, topologies, and cate-
gories. By contrast, univocal theories aim to ‘describ[e] a certain definite mathe-

(^15) This relates to Parsons’ own intended ambitions for the use of internal categoricity; see §10.a.
(^16) Fans of Carnap may find it helpful to regard the Carnap-sentence∃ _NzS_ PA( _NzS_ )→PAintas PAint’s
_meaning-postulate_ (see footnote 7 of Chapter 3).
(^17) In that respect, it realises a certain kind of ‘structuralist’ insight. It also connects with Parsons’ claim
that a sentence like ‘ 2 ={{∅}}’ has no absolute truth value, but depends upon context (2008: 103, 77).


234 internal categoricity and the natural numbers

matical domain’^18 or to ‘specify _one particular interpretation_ ’, speaking loosely.^19
Modelists can provide a simple explication of this distinction. They explicate the
idea of a ‘particular interpretation’ as an isomorphism type (or something similar).
They then say that univocal theories aspire to pin down an isomorphism type (or
similar), whereas algebraic theories have no such aspiration.^20
Having abandoned modelism, however, internalists must explicate the distinc-
tion between algebraic and univocal theories in some other way (if at all). More-
over, given their desire to avoid semantic ascent, this is no easy task. There is a
risk that the internalist will be unable to see any real contrast between, for example,
group theory and arithmetic. Fortunately, the Intolerance Theorem 10.3 generates
the required contrast.
Guided by the theory PAint, let us introduce an internalised version of group the-
ory, GTint, which axiomatises group theory relative to _Gr_ , _e_ , and○:

```
GTint:= Gr ( e )∧(∀ x , y : Gr ) Gr ( x ○ y )∧
(∀ x : Gr ) x ○ e = e ○ x = x ∧
(∀ x , y , z : Gr ) ( x ○ y )○ z = x ○( y ○ z )∧
(∀ x : Gr )(∃ y : Gr ) x ○ y = y ○ x = e
```
Now, in the course of doing group theory we will want to consider _multiple_ groups.
To take a simple example, we might say: if group a has only one element and group
b has more than one element, then any function from b to a is a homomorphism.
Internalists can formalise this as follows. Let GTint[a]be the theory which results
by subscripting every instance of ‘ _Gr_ ’, ‘ _e_ ’ and ‘○’ in GTintwith ‘a’. Similarly, where
_φ_ is a formula in the signature{ _Gr_ , _e_ ,○}, let _φ_ int[a]be the formula which results
by subscripting every instance of ‘ _Gr_ ’, ‘ _e_ ’ and ‘○’ in _φ_ with ‘a’. Define GTint[b]and
_φ_ int[b]similarly. Then, where _φ_ is(∀ _x_ : _Gr_ ) _x_ = _e_ , to say that group a has one
element but group b has more than one element is simply to assert:

```
GTint[a]∧ φ int[a]∧GTint[b]∧ ¬ φ int[b]
```
And it is easy to prove deductively from this that any second-order relation which
is functional with domain _Gr_ band range _Gr_ ais an internal-homomorphism.
But suppose that we attempt something similar in the case of arithmetic, and
try to consider two arithmetical structures which differ over some arithmetically-
significant feature. Anyone who views arithmetic as univocal will immediately balk
at this idea. And internalists can claim that balking is the _right_ reaction. For, on

(^18) Grzegorczyk (1962: 39).
(^19) Kline (1980: 273).
(^20) See, for example, Meadows (2013: 540).


```
10.6. the algebraic / univocal distinction 235
```
the internalist’s explication, to consider two arithmetical internal-structures which
differ over some arithmetically-significant feature, is to assert:

```
PAint[a]∧ φ int[a]∧PAint[b]∧ ¬ φ int[b]
```
for some _φ_ in PAint’s signature whose quantifiers are all _Num_ -restricted. But, by
Theorem 10.3, that is to assert something _deductively inconsistent_.
The short point here is that PAint, unlike GTint, is intolerant. And the internalist
can now say: _the intuitive algebraic / univocal distinction should be formally explicated
by the tolerant / intolerant distinction_.

```
Intolerance as a challenge for algebraic views of arithmetic
```
So far in this section, we have tacitly assumed that arithmetic _should_ be regarded
as univocal. Presumably this is the ‘default view’.^21 However, in §7.6, we noted the
possibility of an Algebraic Attitude towards arithmetic. And proponents of this Al-
gebraic Attitude will deny that there is any great difference between considering
two different groups, and considering two different natural number structures.
To be absolutely clear: the intolerance of PAintdoes _not_ show that the Algebraic
Attitude is deductively inconsistent. ( _Of course_ it does not: the Algebraic Attitude
is a philosophical viewpoint, not a mathematical conjecture.) In what follows, our
point is just that PAint’s intolerance constrains the possible ways in which someone
might try to _defend_ the Algebraic Attitude.
One possible way to defend the Algebraic Attitude is to invoke (faithful) Henkin
semantics. In particular, if _φ_ is deductively independent from PAint, then there are
Henkin-structures _A_ and _B_ such that _A_ ⊧PAint∧ _φ_ and _B_ ⊧PAint∧¬ _φ_. Fans of the
Algebraic Attitude may then argue that that no sense can be made of the claim that
_A_ is ‘preferable’ to _B_ , or vice versa. However, given the Metaresources Transcen-
dental Argument of Chapter 9, this sort of argument walks a dangerously thin path
between falsity and incoherence. To recap that Argument very briefly: we must
describe _A_ and _B_ within some model theory; that model theory will interpret a
sizeable chunk of arithmetic; so, within that model theory, we can easily define the
notion of a standard model of arithmetic and state that these models are ‘preferable’.
Of course, insofar as we are denied a firm grip on the model theory, we are denied
a firm grip on ‘preferability’; but, insofar as we are denied a firm grip on the model
theory, it is doubtful that we can understand the claim that PAinthas multiple differ-
ent models, and hence the supposed _motivation_ for the Algebraic Attitude. In sum:
insofar as we can make sense of this attempt to motivate the Algebraic Attitude, we
can see it is wrong.

(^21) Koellner (2009: 91) uses this phrase to describe the view that all arithmetical sentences have a de-
terminate truth value. One of our aims in this chapter, though, is to defer invocations of the tricksy notion
of _truth_ for as long as possible.


236 internal categoricity and the natural numbers

```
New life for deductive approaches
```
To summarise this section, the Intolerance Theorem does two things. First, it fur-
nishes internalists with an explication of the difference between group theory (or
similar algebraic theories) and arithmetic. Second, together with the considera-
tions of Chapter 9, it places pressure on the Algebraic Attitude towards arithmetic.
This is extremely significant. Considered as deductive theories, both group the-
ory and arithmetic are incomplete. It is only a short step from that observation, to
the thought that we _must_ invoke semantics if we want to place these two theories on
opposite sides of an algebraic / univocal divide. But the Intolerance Theorem 10.3
shows that this further thought is _not_ forced upon us. As such, the Intolerance The-
orem 10.3 breathes fresh life into a deductive-centric approach to arithmetic which
otherwise might have seemed dead, post-Gödel.

### 10.7 Situating internalism in the landscape

Given its focus on deduction, internalism might well seem like a version of _if-
thenism_ , which just happens to focus on conditionals of the form ‘if PAint, then...’.
That impression is simply _wrong_. Unlike if-thenists, internalists _affirm_ PAintun-
conditionally. As such, internalists happily affirm the antecedents of those condi-
tionals, and so also affirm the consequents. They do not just say: _if_ PAint, then there
are infinitely many prime numbers. They unconditionally say: there _are_ infinitely
many prime numbers. The arithmetised Intolerance Theorem 10.3, proved within
PAintitself, is something internalists _unconditionally_ affirm.
Indeed, with this point clarified, it might seem that internalism is in fact a species
of _objects-platonism_. After all, our internalist explicitly and unconditionally claims
that _there are_ infinitely many prime numbers.
However, as we defined the position in §2.3, objects-platonism _also_ involves the
claim that numbers are not of our creation, and not spatio-temporal. We would
be a little surprised if an internalist claimed that we _do_ create the numbers, or that
they _are_ spatio-temporal, but it simply is not clear that internalists must say that
they are _not_. In §10.5, we introduced PAintas a _canonical_ theory of arithmetic, on
the grounds that intolerance shows that merely orthographical differences between
arithmetical vocabularies are irrelevant to arithmetic itself. But we also emphasised
that PAinttakes no stance on whether 0 is the man Julius Caesar, or the abstract ob-
ject Goodness, or something else. Now, Caesar is spatio-temporal, whereas Good-
ness is abstract. Moreover, _if_ there are any properties with infinitely many instances
and Caesar and Goodness both exist, _then_ provably there are arithmetical internal-
structures such that:^22

(^22) By considerations in §10.1, DI 2 entails the existence of an arithmetical internal-structure. Now, by


```
10.8. moderate internalists 237
```
PAint[a]∧ (^0) a=Caesar∧PAint[b]∧ (^0) b=Goodness
As such, a claim like ‘(∀ _x_ : _Num_ ) _x_ is abstract’ need _not_ be agreed on all sides, mod-
ulo subscripts. A very natural form of internalism can therefore insist on taking no
stance on whether the numbers are abstract or concrete, and can therefore dismiss
(rather than negate) a central doctrine of objects-platonism. More generally, this
version of internalism can claim to be liberated from _any_ metaphysical questions
concerning the nature of arithmetic.^23 Perhaps this is a point in internalism’s favour.
Finally, because internalists both insist that arithmetic is _true_ and emphasise the
use of deductive second-order logic, one might think that internalism is a variety of
_logicism_. Whilst it certainly has affinities with certain versions of logicism, one par-
ticular difference is crucial. In brief: logicists have epistemological ambitions, and
so must explain how we can _know_ that there is an _ω_ -sequence; internalists have dox-
ological ambitions, and are aiming to articulate what it _means_ to say that there is an
_ω_ -sequence. In more detail: in this chapter, we showed how to obtain an internally
categorical theory of arithmetic, PAint, from the claim that there is a property with
infinitely many instances, DI 2. The internalist should not, though, be regarded as
making any particular claim about the epistemological status of DI 2. Her point is
just that, using DI 2 , we can articulate a theory of arithmetic which is demonstrably
intolerant and so, she insists, univocal.
All told, then, internalism about arithmetic is neither formalism, nor object-
platonism, nor logicism. Though we revisit this in §12.3, _internalism is its own thing_.

### 10.8 Moderate internalists

In this chapter, we have outlined the very idea of internalism, as a philosophical re-
action to the internal categoricity and intolerance of arithmetic. In the introduction
to this chapter, though, we billed internalism as an alternative to modelism, moti-
vated by the incompatibility of modelism with _moderation_. So, we need to show
that internalism is compatible with _moderation_. In particular, we need to explain
why a moderate can lay claim to Theorems 10.2 and 10.3.
Recall that moderation involves a particular conception of ‘creatures like us’,
which eschews appeal to mathematical intuition, quasi-perception, or anything
similar. Now, creatures like us certainly can become competent in using natural
deduction systems. So, moderates surely face no special problem in proving The-
orem 10.2. Our proof, given in §10.b, is pretty short. Admittedly, that proof is not
completely formalised, but an entirely formal proof would not have been that much

repeated applications of the Comprehension Schema, we can find an object-language surrogate for the
Push-Through Construction of §2.1. We leave this to the reader.

(^23) But it is doubtful that they can so easily discharge the question of whether DI 2 holds, i.e. whether
there _is_ a property with infinitely many instances.


238 internal categoricity and the natural numbers

longer. So moderates—like anyone else—can go through it, line by line, and check
that everything is in order with it.
The more interesting issue concerns the Intolerance Theorem 10.3. This says that
any sentence of a certain shape is a deductive theorem. It is, then, _metalinguistic_
in character. Its proof (in §10.b) is similarly metalinguistic, since it proceeds by
induction on the complexity of formulas.
It is worth emphasising that internalists need not fear the use of metalanguages
altogether. Internalists only oppose _semantic_ ascent, and the statement and proof
of Theorem 10.2 require no model-theoretic notions, only proof-theoretic ones. In-
deed, for just this reason, Theorem 10.2 can be encoded without any real loss as a sin-
gle deductive theorem of PAint _itself_. In more detail: in §5.a and §7.11 we noted that
questions about sentences and proofs can be interpreted _arithmetically_. As such,
PAintproves an arithmetised version of Theorem 10.3, i.e. a formalisation of:

_for any code of a formula φ_ ( _NzS_ ) _whose quantifiers are N-restricted and whose free
variables are displayed, there is a code of a deduction of the following:_
∀ _NzS_ (PA( _NzS_ )→ _φ_ ( _NzS_ ))∨ ∀ _NzS_ (PA( _NzS_ )→¬ _φ_ ( _NzS_ ))_._

So any internalist who is prepared to affirm PAintcan assert a single-sentence ersatz
of Theorem 10.3, without even engaging in _metalinguistic_ ascent.
This shows that internalists can invoke Theorem 10.3. However, there is a spe-
cific complexity which arises when we consider _moderate_ internalists. That com-
plexity arises as follows (and it should be directly compared with the issue which
arose for moderate formalists in §7.11). Theorem 10.3 involves reasoning _about_ de-
ductive systems. To reason effectively _about_ them, one needs (intuitively) to have
a clear grasp on what they _are_. But deductive systems concern manipulations of
sentence-types; these can be of arbitrary finite length, containing vastly more lines
than there are atoms in the universe. Indeed, no reasonable theory of deductive
systems can be complete (when considered deductively itself). So: what guaran-
tees that a moderate internalist has managed to get hold of the right notions of an
‘arbitrary deduction’, when she offers Theorem 10.3?
Fortunately, the moderate internalist can give a short response to this problem.
The proof of Theorem 10.3 will still go through _even if_ ( _per impossibile_ ) she ‘some-
how’ got hold of the ‘wrong’ notion of an ‘arbitrary deduction’. As we just noted:
PAintitself proves an arithmetised version of the Intolerance Theorem 10.2. More-
over, the proof of that arithmetised result is finitely long. So, moving back from the
arithmetical to the syntactic: Theorem 10.3 goes through even if we are ‘somehow’
discussing the ‘wrong’ notion of an ‘arbitrary deduction’. Consequently, the moder-
ate internalist can legitimately invoke Theorem 10.3 without ‘first’ having to supply
some guarantee that she is discussing the ‘right’ notion of an ‘arbitrary deduction’.


```
10.a. connection to parsons 239
```
The situation is, therefore, that if anyone can embrace internalism, then moder-
ates can. And if internalism is ultimately viable, then it allow moderates to explain
how creatures like us can come to possess arithmetical concepts which are sharp
enough to be univocal. That, we think, is the potential philosophical promise of
the internal categoricity of arithmetic.

### 10.a Connection to Parsons

In this philosophical appendix, we want to explain how Parsons’ work relates to the
contents of this chapter.^24 The appendix can safely be omitted, since it does not
affect any of the philosophical claims that we made earlier. However, discussing
Parsons both helps to contextualise our discussion, and helps to illustrate what in-
ternal categoricity results can and cannot achieve.

```
Parsons’ approach
```
Where we have used second-order logic throughout this chapter, Parsons restricts
himself to first-order logic.
Parsons asks us to imagine two characters, Kurt and Michael, who are both com-
mitted to PA. For simplicity, we imagine that their arithmetical vocabularies are
subscripted, ‘k’ for Kurt, and ‘m’ for Michael. Parsons imagines that Kurt and
Michael start to communicate with one another, to the point that both become flu-
ent in the other’s language, and incorporate each other’s vocabulary into their own
language. Having expanded their vocabularies appropriately, Parsons holds that
Kurt should understand his (first-order) Induction Schema in a sufficiently ‘open-
ended’ way that it has instances which contain both Kurt and Michael’s vocabulary;
and similarly for Michael. As such, Kurt can recursively define the following func-
tor, _f_ , from his numbers to Michael’s:

_f_ ( (^0) k):= (^0) m _f_ ( _S_ k( _x_ )):= _S_ m( _f_ ( _x_ ))
Kurt can then prove, using his (open-ended) arithmetical resources, that _f_ is bijec-
tive and preserves structure. And whatever Kurt can do, Michael can do too.^25
The philosophical upshot is supposed to be something like this. Whenever we
encounter someone else who is using PA, we can use this method to assure ourselves
that we are (in some sense) engaged in the same enterprise.
(^24) Many thanks to Charles Parsons for discussion of all this.
(^25) Parsons (1990a: 34–5, 2008: 281–2).


240 internal categoricity and the natural numbers

```
First-order logic versus second-order logic
```
As mentioned earlier, though, Parsons’ approach is first-order. And this leads to
an _expressive_ problem. Lacking second-order resources, it is not immediately clear
what general result we are supposed to be pointed to, by considering the specific
interaction between Kurt and Michael.
Parsons himself glosses the relevant general result as follows.

Suppose our language contains a singular term ‘0’, a one-place functor ‘ _S_ ’ and a predicate
‘ _N_ ’, and also another such triplet ‘ 0 ′’, ‘ _S_ ′’, ‘ _N_ ′’. Suppose that the elementary Peano axioms
hold for each. In keeping with Skolem’s recursive arithmetic, we can introduce by primi-
tive recursion a functor, _f_ , with [certain properties].^26

However, given the infinity of ‘the elementary Peano axioms’, to say that these ax-
ioms ‘ _hold_ for each’ triplet essentially requires semantic ascent. For internalists who
want to avoid semantic ascent, that is unfortunate.
So let us consider an _alternative_ formal result which might be relevant to the case
of Kurt and Michael. As mentioned, Parsons wants Kurt and Michael to approach
Induction ‘open-endedly’. We could make this concrete as follows. Suppose Kurt
claims that he is committed to the Induction Schema:

```
[ φ ( 0 )∧ ∀ y ( φ ( y )→ φ ( S ( y )))]→∀ yφ ( y )
```
But suppose he follows this up by insisting that _φ_ , here, ranges over _any property_
that might be picked out by _any possible language_. Kurt’s line of thought has an ap-
propriate level of generality to it; but it again invokes semantic ascent. Indeed, it
essentially amounts to the claim that _φ_ should be able to take, as a value, any set of
natural numbers. This is to fall back on (a syntactic fragment of) full second-order
logic, and an _external_ categoricity result, in just the way discussed under option (a)
in §7.10. (NB: this is _not_ the result that Parsons himself wants to invoke.)
The main advantage of the move to deductive second-order logic, then, is that it
allows us to formulate a relevant result, Theorem 10.2, in a crisp manner and without
any threat of semantic ascent. Of course, some will worry that the use of _second-
order_ logic is just too high a price. However, the most vocal objections against
second-order logic involve qualms about its _semantics_ , and any such objections are
irrelevant to its _deductive_ employment. The one concern that we _cannot_ dismiss
so lightly concerns the essential use of _Impredicative_ Comprehension (see §§10.2
and 10.c). But, insofar as Parsons (or others) have concerns about Impredicative
Comprehension, they should have exactly similar concerns about the idea that Kurt
and Michael understand Induction in an ‘open-ended’ fashion, since their ability to
invoke each others’ vocabulary plays a similar technical role in Parsons’ reasoning

(^26) Parsons (2008: 281).


```
10.a. connection to parsons 241
```
as Impredicative Comprehension plays in Theorem 10.2. As such, we commend
second-order logic and Theorem 10.2 to Parsons, as a clean route to achieving his
philosophical ends.
Indeed, Parsons’ imagined interaction between Kurt and Michael is easy to han-
dle using second-order resources, and at that point their interaction simply be-
comes an extremely vivid illustration of arithmetic’s _univocity_ (see §10.6). In more
detail: imagine that Kurt and Michael are working with _second-order_ arithmetic.

They can simply plug _Num_ k (^0) k _Succ_ kand _Num_ m (^0) m _Succ_ minto the quantifiers of The-
orem 10.2, and obtain:
[PA( _Num_ k (^0) k _Succ_ k)∧PA( _Num_ m (^0) m _Succ_ m)]→∃ _R_ IsoNk▹m( _R_ )
Now, presumably Michael can easily affirm PA( _Num_ m (^0) m _Succ_ m); and, after suffi-
cient time with Kurt, he can also affirm PA( _Num_ k (^0) k _Succ_ k); whereupon he obtains
the required internal-isomorphism. Kurt can do the same. Equally, using Theorem
10.3, Kurt and Michael can conclude that their languages differ _only_ in the imposed
subscripts, so that they can ditch their subscripts and use PAint.
_Limits on what theorems can show_
We now wish to consider an objection which Field specifically raises against Par-
sons’ discussion of Kurt and Michael. That said, we will be slightly unfair to Field,
and act as if Field’s objection were raised against our ‘second-orderisation’ of Kurt
and Michael.
In this context, Field’s objection amounts to doubting whether _Michael_ can justi-
fiably affirm PA( _Num_ k (^0) k _Succ_ k).^27 To be sure, Michael may have heard Kurt re-
peatedly claim ‘I accept unrestricted induction’, and he may have observed that
Kurt uses his language just like Michael himself does. But if Kurt’s second-order
quantifier were somehow _restricted_ , then Michael would not be allowed to assert
PA( _Num_ k (^0) k _Succ_ k). And then Michael could not prove the existence of a second-
order isomorphism between Kurt’s numbers and his.^28
One might think that the worry can be resolved just by noting that Michael and
Kurt can produce _literally_ the same proof of Theorem 10.2, that they can discuss
it, confirm its correctness together, and so forth. According to Field, however, to
say this would be to beg the question: it would _assume_ that Michael and Kurt al-
ready share a language, which is precisely what they were attempting to _establish_ by
appealing to Theorem 10.2.^29
(^27) See Field (2001: 358–60).
(^28) In particular, Michael would be unable to invoke ‘induction on _Num_ k’ to prove the left-conjunct of
( _in:3_ ) in thek- andm-subscripted version of Theorem 10.2.
(^29) Parsons’ own response to Field focusses on the fact that Michael should not be regarded as a ‘rad-
ical interpreter’ of Kurt. This is somewhat different than the response we will make. However, it is at


242 internal categoricity and the natural numbers

We think that Field’s complaint here is _partially_ right. Suppose that a model-
theoretical sceptic has suggested that Michael and Kurt are discussing non-
isomorphic _Henkin_ models of second-order arithmetic. We cannot answer that
sceptic by pointing out that Kurt and Michael have produced literally the same
proof, line by line. For, if the sceptical scenario obtained, then that same proof
would mean different things in their respective mouths, for it would concern non-
isomorphic models.
This point is worth emphasising. But it is also worth emphasising that it is irrel-
evant to our internalist’s imagined use of internal categoricity. We stressed in §10.3
that internal categoricity results cannot be used to pin down anL-structure, or to
rule out Henkin models, or whatever.
Here is another sense in which Field’s complaint is correct: no amount of
theorem-proving can guarantee that Kurt might not one day do something which
makes Michael do a double-take, and exclaim ‘but then your induction axiom was
restricted after all, for you have rejected this instance of induction!’ However, it is
worth noting that this point has nothing much to do with the _induction_ axiom. Sim-
ilarly, no amount of theorem-proving can guarantee that Kurt might not one day do
something which makes Michael exclaim ‘but then you did not mean conjunction
by “ _and_ ” after all, for you accepted _φ_ and accepted _ψ_ but now you are refusing to
accept _φ_ ∧ _ψ_ !’
Indeed, the inability of a _theorem_ to provide us with certain kinds of guarantee has
nothing specifically to do with _mathematics_ or _logic_. To take an entirely humdrum
case: Kurt and Michael might have both used the word ‘green’ to apply to similar
things for a very long time, until one day one of them starts using the word ‘green’
where the other uses ‘red’, causing Michael to exclaim ‘but then you did not mean
greenness by “ _green_ ” after all!’ No _theorem_ can block these sorts of concerns, which
are particular instances of a much more general worry: scepticism about meaning,
or rule-following scepticism. This is not to say that these concerns are philosoph-
ically uninteresting. It is just to say that we have nothing special to say about them
here, and nor do we feel under any _duty_ to say something special. To put arithmeti-
cal vocabulary on as firm a doxological footing as any other vocabulary is all anyone
could really want.

### 10.b Proofs of internal categoricity and intolerance

In this technical appendix, we prove the results used in this chapter. Throughout,
we will use _X_ ⊑ _Y_ to abbreviate∀ _v_ ( _X_ ( _v_ )→ _Y_ ( _v_ )).

least somewhat consonant with internalism, as we have outlined it; in particular, internalism sits well with
Parsons’ claim that ‘language as used is prior to semantic reflection on it’ (2008: 285).


```
10.b. proofs of internal categoricity and intolerance 243
```
We start with the result of §10.1, that DI 2 proves the existence of an arithmetical
internal-structure. Our proof here is just that of Väänänen and Wang:^30

Proposition(10.1):DI 2 ⊢∃ _NzS_ PA( _NzS_ )

_Proof._ In this proof, we reuse the notation Γ( _X_ ), _N_ , _z_ and _S_ , from §10.1.
We first show that Γ( _N_ ). The definition of Γ trivially entails _N_ ( _z_ ), so it suf-
fices to show that(∀ _x_ : _N_ )∀ _y_ ( _R_ ( _x_ , _y_ )→ _N_ ( _y_ )). So suppose _N_ ( _a_ )and _R_ ( _a_ , _b_ ).
Since _N_ ( _a_ )we have∀ _X_ [Γ( _X_ )→ _X_ ( _a_ )], whereupon by definition of Γ we have
∀ _X_ [Γ( _X_ )→ _X_ ( _b_ )], and so _N_ ( _b_ ). So Γ( _N_ )holds.
Now we check that each of the conjuncts of PA( _NzS_ )holds, given our defini-
tions of _N_ , _z_ and _S_.
( _pa:res_ )_._ From Γ( _N_ ), we immediately have _N_ ( _z_ ). Then the existence and
uniqueness of successors in _N_ follows from the inductive clause of Γ( _N_ )and the
way in which _S_ is defined by restricting _R_ to _N_.
( _pa:q1_ )_._ For reductio, suppose _N_ ( _a_ )and _S_ ( _a_ )= _z_. Since _S_ ⊑ _R_ , it follows that _z_
is in _R_ ’s range, contradicting the fact that _z_ and _R_ witness DI 2.
( _pa:q2_ )_. R_ is injective since it is a witness to DI 2 , and so _S_ is injective since _S_ ⊑ _R_.
( _pa:ind_ )_._ Fix _G_ such that _G_ ( _z_ )∧(∀ _x_ : _N_ )[ _G_ ( _x_ )→ _G_ ( _S_ ( _x_ ))]. Using Com-
prehension to take the intersection of _G_ and _N_ , we may assume that _G_ ⊑ _N_. Since
_S_ is the restriction of _R_ to _N_ , it follows that Γ( _G_ ). Now fix _a_ such that _N_ ( _a_ ); so
∀ _X_ (Γ( _X_ )→ _N_ ( _a_ )), and so _G_ ( _a_ ).

Our proof of Theorem 10.2, again following Väänänen and Wang, is similar:^31

Theorem(Parsons, 10.2):

```
⊢∀ N 1 z 1 S 1 N 2 z 2 S 2 ([PA( N 1 z 1 S 1 )∧PA( N 2 z 2 S 2 )]→∃ R IsoN 1 ▹ 2 ( R ))
```
_Proof._ We define a formula H( _X_ )in one free two-place relation-variable, _X_ , where
‘H’ is a good mnemonic for ‘hereditary’:

```
H( X ):= X ( z 1 , z 2 )∧(∀ v : N 1 )(∀ y : N 2 )[ X ( v , y )→ X ( S 1 ( v ), S 2 ( y ))] (10.1)
```
By Comprehension in the deductive system, there is a relation _R_ such that:

```
∀ v ∀ y ( R ( v , y )↔∀ X [H( X )→ X ( v , y )]) (10.2)
```
Now we verify conditions ( _in:1_ )–( _in:4_ ), described in §10.2.

(^30) Väänänen and Wang (2015: Theorem 2). But there is an obvious affinity to Dedekind’s own proof;
see footnote 3.
(^31) Väänänen and Wang (2015: Theorem 1). Alternatively, one could simply transcribe Shapiro’s (1991:
82–3) proof of Dedekind’s Theorem 7.3 into a deductive system for second-order logic. This contrasts
with our (much shorter) proof of Dedekind’s Theorem in §7.4, which invoked the natural numbers in the
metatheory.


244 internal categoricity and the natural numbers

```
( in:1 ). By Comprehension, there is R ∗such that
```
```
∀ x ∀ y ( R ∗( x , y )↔[ R ( x , y )∧ N 1 ( x )∧ N 2 ( y )])
```
Intuitively, _R_ ∗is like what we might write as _R_ ∩( _N_ 1 × _N_ 2 )in a set-theoretic
metatheory. Clearly _R_ ∗⊑ _R_. We will show that H( _R_ ∗), i.e.:

```
R ∗( z 1 , z 2 )∧(∀ v : N 1 )(∀ y : N 2 )[ R ∗( v , y )→ R ∗( S 1 ( v ), S 2 ( y ))]
```
To see that _R_ ∗( _z_ 1 , _z_ 2 ), we must show that _N_ 1 ( _z_ 1 )and _N_ 2 ( _z_ 2 )and _R_ ( _z_ 1 , _z_ 2 ). The
first two hold by assumption; and by (10.1) we have∀ _X_ (H( _X_ )→ _X_ ( _z_ 1 , _z_ 2 )), so
that _R_ ( _z_ 1 , _z_ 2 )by (10.2).
Next, suppose that _N_ 1 ( _v_ )and _N_ 2 ( _y_ ) and _R_ ∗( _v_ , _y_ ); we must show that
_R_ ∗( _S_ 1 ( _v_ ), _S_ 2 ( _y_ )). First, suppose that H( _X_ ); since _R_ ∗( _v_ , _y_ ), we also have
_R_ ( _v_ , _y_ )and so _X_ ( _v_ , _y_ )by (10.2), so that _X_ ( _S_ 1 ( _v_ ), _S_ 2 ( _y_ ))by (10.1). Generalising,
∀ _X_ (H( _X_ )→ _X_ ( _S_ 1 ( _v_ ), _S_ 2 ( _y_ ))), so that _R_ ( _S_ 1 ( _v_ ), _S_ 2 ( _y_ )))by (10.2). Since _N_ 1 ( _v_ )
and _N_ 2 ( _y_ ), obviously _N_ 1 ( _S_ 1 ( _v_ ))and _N_ 2 ( _S_ 2 ( _v_ )). So now _R_ ∗( _S_ 1 ( _v_ ), _S_ 2 ( _y_ )).
This shows that H( _R_ ∗). By (10.2), it follows that _R_ ⊑ _R_ ∗. Since _R_ ∗⊑ _R_ , we have
that _R_ and _R_ ∗are coextensive. This establishes ( _in:1_ ), and also that H( _R_ ).
( _in:2_ )_._ By Comprehension there is an _F_ such that∀ _v_ ( _F_ ( _v_ )↔∃! _yR_ ( _v_ , _y_ )). In-
voking induction in PA( _N_ 1 _z_ 1 _S_ 1 ), we have:

```
( F ( z 1 )∧(∀ v : N 1 ) [ F ( v )→ F ( S 1 ( v ))])→(∀ v : N 1 ) F ( v )
```
To show _F_ ( _z_ 1 ), first note that _R_ ( _z_ 1 , _z_ 2 )because H( _R_ ); so it suffices to show
uniqueness. So suppose for reductio that _R_ ( _z_ 1 , _a_ 2 )and _a_ 2 ≠ _z_ 2. By Comprehen-
sion there is _Q_ such that∀ _v_ ∀ _y_ ( _Q_ ( _v_ , _y_ )↔[ _R_ ( _v_ , _y_ )∧ ¬( _v_ = _z_ 1 ∧ _y_ = _a_ 2 )]). We
will show that H( _Q_ ). Clearly _Q_ ( _z_ 1 , _z_ 2 )since _R_ ( _z_ 1 , _z_ 2 )and since _z_ 2 ≠ _a_ 2. Sup-
pose now that _N_ 1 ( _v_ )and _N_ 2 ( _y_ ). Then since both _Q_ ⊑ _R_ and H( _R_ ), we have
_R_ ( _S_ 1 ( _v_ ), _S_ 2 ( _y_ )). The only way in which _Q_ ( _S_ 1 ( _v_ ), _S_ 2 ( _y_ ))could fail is if both
_S_ 1 ( _v_ )= _z_ 1 and _S_ 2 ( _y_ )= _a_ 2. But by ( _pa:q1_ ) in PA( _N_ 1 _z_ 1 _S_ 1 )we know _S_ 1 ( _v_ )≠ _z_ 1 ,
so indeed _Q_ ( _S_ 1 ( _v_ ), _S_ 2 ( _y_ ))and so H( _Q_ ). Hence _R_ ⊑ _Q_ by (10.2). But _R_ ( _z_ 1 , _a_ 2 )
and so _Q_ ( _z_ 1 , _a_ 2 ), which is a contradiction. This finishes the argument that _F_ ( _z_ 1 ).
Suppose now that _N_ 1 ( _v_ )and _F_ ( _v_ ). Let _y_ be the unique element with _R_ ( _v_ , _y_ ),
so that _N_ 1 ( _v_ )and _N_ 2 ( _y_ )by ( _in:1_ ). Then since H( _R_ )we have _R_ ( _S_ 1 ( _v_ ), _S_ 2 ( _y_ )).
So to show _F_ ( _S_ 1 ( _v_ ))it again suffices to show uniqueness. So suppose for reduc-
tio that _R_ ( _S_ 1 ( _v_ ), _b_ 2 )and _b_ 2 ≠ _S_ 2 ( _y_ ). By Comprehension there is _P_ such that
∀ _u_ ∀ _x_ ( _P_ ( _u_ , _x_ )↔[ _R_ ( _u_ , _x_ )∧ ¬( _u_ = _S_ 1 ( _v_ )∧ _x_ = _b_ 2 )]). We will show that H( _P_ ).
Clearly _P_ ( _z_ 1 , _z_ 2 )since _R_ ( _z_ 1 , _z_ 2 )and since _z_ 1 ≠ _S_ 1 ( _v_ )by ( _pa:q1_ ) in PA( _N_ 1 _z_ 1 _S_ 1 ).
Suppose now that _N_ 1 ( _u_ )and _N_ 2 ( _x_ )and _P_ ( _u_ , _x_ ). Then since both _P_ ⊑ _R_ and H( _R_ ),
we have _R_ ( _S_ 1 ( _u_ ), _S_ 2 ( _x_ )). The only way in which _P_ ( _S_ 1 ( _u_ ), _S_ 2 ( _x_ ))could fail is if
_S_ 1 ( _u_ )= _S_ 1 ( _v_ )and _S_ 2 ( _x_ )= _b_ 2. By ( _pa:q2_ ) in PA( _N_ 1 _z_ 1 _S_ 1 )this would require that


```
10.b. proofs of internal categoricity and intolerance 245
```
_u_ = _v_. But then _P_ ( _u_ , _x_ )implies _R_ ( _u_ , _x_ )which implies _R_ ( _v_ , _x_ ), and our hypothesis
on _y_ implies _y_ = _x_ , which in turn implies _S_ 2 ( _y_ )= _S_ 2 ( _x_ )= _b_ 2 , a contradiction.
Hence in fact _P_ ( _S_ 1 ( _u_ ), _S_ 2 ( _x_ )). This completes the argument that H( _P_ ). Hence
_R_ ⊑ _P_ by (10.2). But _R_ ( _S_ 1 ( _v_ ), _b_ 2 )and so _P_ ( _S_ 1 ( _v_ ), _b_ 2 ), which is a contradiction.
This finishes the argument that _F_ ( _S_ 1 ( _v_ )).
Now(∀ _v_ : _N_ 1 ) _F_ ( _v_ )by induction in PA( _N_ 1 _z_ 1 _S_ 1 ).
( _in:3_ )_._ By an exactly similar induction on _N_ 2.
( _in:4_ )_._ Simply appeal to ( _in:1_ ) and the fact that H( _R_ ).

We next prove our Intolerance Theorem. Essentially, this simply amounts to ‘inter-
nalising’ the proof of Theorem 2.3:

Theorem(Intolerance of PA, 10.3): _For any formula φ_ ( _NzS_ ) _whose quantifiers are
N-restricted and whose free variables are all displayed:_

```
⊢∀ NzS (PA( NzS )→ φ ( NzS ))∨ ∀ NzS (PA( NzS )→¬ φ ( NzS ))
```
_Proof._ We start by introducing some notation. When IsoN 1 ▹ 2 ( _R_ ), we let _r_ be a
functor induced from _R_. So _r_ ( _x_ )is to be read as ‘the unique _y_ such that _R_ ( _x_ , _y_ )’,
and _r_ ( _u_ )is to be read as ‘the unique _v_ such that _R_ ( _u_ 1 , _v_ 1 )for each _ui_ in _u_ ’. This
notation is licensed by the fact that _R_ will be a bijection. We will work deductively,
and establish the following:

```
∀ N 1 z 1 S 1 N 2 z 2 S 2 (IsoN 1 ▹ 2 ( R )→
(∀ u : N 1 )(∀ X : N 1 )[ φ ( N 1 z 1 S 1 , u , X )↔ φ ( N 2 z 2 S 2 , r ( u ), r ( X ))])
```
This will suffice to establish the main theorem, by ignoring _u_ and _X_ , using an
internal-isomorphism _R_ from Theorem 10.2, and invoking some simple deductive
manipulation.
_Atomic cases._ Recall that, officially, _S_ is a relation symbol rather than a function
symbol. So, within the metatheory, we have three kinds of atomic formula:

- Case 1: _φ_ is _S_ ( _x_ , _y_ ), perhaps with _z_ replacing one or both of _x_ and _y_. Now,
    if _S_ 1 ( _x_ , _y_ ), then via IsoN 1 ▹ 2 ( _R_ )we immediately get _S_ 2 ( _r_ ( _x_ ), _r_ ( _y_ )), so the
    deductive system proves _φ_ 1 ( _x_ , _y_ )→ _φ_ 2 ( _r_ ( _x_ ), _r_ ( _y_ )). The converse condi-
    tional is similar, with _r_ −^1 in place of _r_.
- Case 2: _φ_ is _x_ = _y_ , perhaps with _z_ replacing one or both of _x_ and _y_. This case
    is exactly analogous.
- Case 3: _φ_ is _X_ ( _v_ ), perhaps with _N_ replacing _X_ , or _z_ replacing _v_. In this case,
    since _r_ ( _X_ )={ _r_ ( _v_ ): _X_ ( _v_ )}we can infer from _X_ ( _v_ )to( _r_ ( _X_ ))( _r_ ( _v_ )), so the
    deductive system proves _φ_ 1 ( _u_ , _X_ )→ _φ_ 2 ( _r_ ( _u_ ), _r_ ( _X_ )). The converse condi-
    tional is similar, using _r_ −^1 in place of _r_.


```
246 internal categoricity and the natural numbers
```
```
Propositional connectives. These inductive steps are trivial.
First-order quantifiers. Suppose, for induction, that we have:
```
```
⊢∀ N 1 z 1 S 1 N 2 z 2 S 2 (IsoN 1 ▹ 2 ( R )→(∀ v , u : N 1 )(∀ X : N 1 )
[ φ ( N 1 z 1 S 1 , v , u , X )↔ φ ( N 2 z 2 S 2 , r ( v ), r ( u ), r ( X ))])
```
Working deductively, suppose PA( _N_ 1 _z_ 1 _S_ 1 )and PA( _N_ 2 _z_ 2 _S_ 2 )and IsoN 1 ▹ 2 ( _R_ ), that
_a_ are all from _N_ 1 , and that there is some _b_ from _N_ 1 with _φ_ ( _N_ 1 _z_ 1 _S_ 1 , _b_ , _a_ , _X_ ). By
the induction hypothesis we have _φ_ ( _N_ 2 _z_ 2 _S_ 2 , _r_ ( _b_ ), _r_ ( _a_ ), _r_ ( _X_ )). Moreover, since _r_
maps from _N_ 1 to _N_ 2 , we have _N_ 2 ( _r_ ( _b_ )). As _φ_ ’s quantifiers are _N_ 2 -restricted, we
have∃ _y φ_ ( _N_ 2 _z_ 2 _S_ 2 , _y_ , _r_ ( _a_ ), _r_ ( _X_ )); so:

```
⊢∀ N 1 z 1 S 1 N 2 z 2 S 2 (IsoN 1 ▹ 2 ( R )→(∀ u : N 1 )(∀ X : N 1 )
[∃ y φ ( N 1 z 1 S 1 , y , u , X )↔∃ y φ ( N 2 z 2 S 2 , y , r ( u ), r ( X ))])
```
```
Second-order quantifiers. These are handled similarly.
```
### 10.c Predicative Comprehension

```
In §10.2 we mentioned that Im predicative Comprehension is required for internal
categoricity. In this appendix, we explain that claim.
As explained in §1.11, the Predicative Comprehension Schema is just the restric-
tion of the (Impredicative) Comprehension Schema to instances where the for-
mula in question contains only first-order quantifiers.^32 The canonical models of
the Predicative Comprehension Schema are given by taking a first-order structure
and letting the second-order quantifiers range over the first-order definable subsets
of the structure.^33 The following result roughly says that simply placing two struc-
tures side-by-side does not really affect definability, and so does not interestingly
change which second-order entities there are in a predicative setting:
```
```
Proposition 10.4: Let L 1 and L 2 be disjoint relational signatures, and let N 1 and
N 2 be respectively an L 1 -structure and an L 2 -structure with disjoint domains. Let
L =L 1 ∪L 2 and let A = N 1 ∪ N 2 be the L -structure where for i ∈{1, 2}
the interpretation of the n-place L ipredicate R is given by RA = RNi. Then for any
i ∈{1, 2} , any n ≥ 1 and any X ⊆ Nni: if X is A-definable, then X is Ni-definable.
```
```
We will prove this proposition below. However, it yields a quick proof that internal
categoricity requires Impredicativity. More precisely:
```
(^32) And, in the formalism introduced in §5.7, the theory PA1.5is the same thing as PA 2 when the Com-
prehension Schema is taken to be Predicative.
(^33) Cf. Hájek and Pudlák (1998: 153) and Simpson (2009: 361–362).


```
10.c. predicative comprehension 247
```
Theorem 10.5: _Theorem 10.2 is not provable using only Predicative Comprehension_

_Proof._ LetL 1 andL 2 be disjoint relational versions of the signature of PA 2
together with a number-predicate, soL 1 = { _Num_ 1 , 0 1 , _Succ_ 1 }andL 2 =
{ _Num_ 2 , 0 2 , _Succ_ 2 }, with all symbols relational. Let _N_ 1 and _N_ 2 be two disjoint
models of PA which are not isomorphic, with _N_ 1 = _NumN_ 11 and _N_ 2 = _NumN_ 22.
As in Proposition 10.4, let _A_ = _N_ 1 ∪ _N_ 2 , and consider the second-order structure
_B_ whose first-order quantifiers range over _A_ and whose second-order quantifiers
range over the first-order definable subsets of _A_.
We will show that _B_ ⊧PA( _Num_ 101 _Succ_ 1 )and _B_ ⊧PA( _Num_ 202 _Succ_ 2 ). It
suffices to verify the Induction Axiom. Without loss of generality, let _X_ ⊆ _N_ 1
be a second-order object in _B_ , so that _X_ is _A_ -definable by definition of _B_ and
_X_ is _N_ 1 -definable by Proposition 10.4. Since _N_ 1 ⊧PA, it satisfies the instance
of Induction associated to _X_ , as required. So _B_ ⊧PA( _Num_ 101 _Succ_ 1 )and _B_ ⊧
PA( _Num_ 202 _Succ_ 2 ).
Finally, suppose for reductio that Theorem 10.2 is provable with only Predica-
tive Comprehension. Then it would be true on _B_ , and so _N_ 1 and _N_ 2 would be
isomorphic, contrary to hypothesis.

Before proceeding, we should make two brief remarks on this theorem. First, as
mentioned in §1.a, the signature of PA 2 is just{0, _S_ }, whereas the signature of the
first-order theory PA adds<,+and×. Given merely _Predicative_ Comprehension, it
might be natural to allow PA 2 to have the same expansive signature as PA. But since
our proof of Theorem 10.5 is based on very general considerations about first-order
structures, it would go through even with this enriched signature.
Second, Theorem 10.2 can be proven with weaker comprehension principles, _if_
one additionally assumes that one of the two domains is a subset of the other.^34
Likewise, as mentioned in §10.a, Parsons proves a version of Theorem 10.2 by al-
lowing for a kind of recursion which can ‘reach between’ the two domains.^35
It only remains to prove Proposition 10.4. Though the result is perhaps obvious,
its proof requires a long induction on complexity of formulas. For the remainder of
this appendix, we fix a structure _A_ as in the statements of the proposition, we intro-
duce some definitions for certain kinds of definable subsets, and we slowly come
to an understanding of how the definable subsets of _A_ interact with the definable
subsets of _N_ 1 and _N_ 2.

Definition 10.6: _A set X_ ⊆ _Anis_ partition-definable _iff there is some permutation
π_ :{1, ..., _n_ }Ð→{1, ..., _n_ } _and some m_ ≤ _n and some N_ 1 _-definable X_ 1 ⊆ _Nm_ 1 _and_

(^34) For detail and its reverse mathematical status, see Simpson and Yokoyama (2012).
(^35) Parsons (1990a: 34–5, 2008: 281–2); see also Lavine (1999: §5.1).


248 internal categoricity and the natural numbers

_N_ 2 _-definable X_ 2 ⊆ _Nn_ 2 − _msuch that X_ ={( _x_ 1 , ..., _xn_ )∈ _An_ :( _xπ_ ( 1 ), ..., _xπ_ ( _m_ ))∈
_X_ 1 ∧( _xπ_ ( _m_ + 1 ), ..., _xπ_ ( _n_ ))∈ _X_ 2 }_._

In the case _m_ =0, this means _X_ ={( _x_ 1 , ..., _xn_ )∈ _An_ :( _xπ_ ( 1 ), ..., _xπ_ ( _n_ ))∈ _X_ 2 }
and in the case _m_ = _n_ , this means _X_ ={( _x_ 1 , ..., _xn_ )∈ _An_ :( _xπ_ ( 1 ), ..., _xπ_ ( _n_ ))∈
_X_ 1 }. Hence _N_ 1 -definable sets _X_ 1 ⊆ _Nn_ 1 and _N_ 2 -definable sets _X_ 2 ⊆ _Nn_ 2 are trivially
examples of partition-definable subsets of _An_. We start by showing a simple closure
property of these sets:

Proposition 10.7: _The partition-definable subsets are closed under finite intersection._

_Proof._ The empty set is vacuously partition-definable. Now, suppose we have

```
X ={( x 1 , ..., xn )∈ An :( xπ ( 1 ), ..., xπ ( m ))∈ X 1 ∧( xπ ( m + 1 ), ..., xπ ( n ))∈ X 2 }
Y ={( x 1 , ..., xn )∈ An :( xρ ( 1 ), ..., xρ (ℓ))∈ Y 1 ∧( xρ (ℓ+ 1 ), ..., xρ ( n ))∈ Y 2 }
```
If{ _π_ ( 1 ), ..., _π_ ( _m_ )}≠{ _ρ_ ( 1 ), ..., _ρ_ (ℓ)}, then without loss of generality suppose
that _i_ = _π_ ( _j_ )= _ρ_ ( _k_ )for some _i_ ≤ _n_ and _j_ ≤ _m_ and _k_ >ℓ; then if( _x_ 1 , ..., _xn_ )is in
_X_ ∩ _Y_ , we would have( _xπ_ ( 1 ), ..., _xπ_ ( _m_ ))∈ _X_ 1 ⊆ _Nm_ 1 and( _xρ_ (ℓ+ 1 ), ..., _xρ_ ( _n_ ))∈ _Y_ 2 ⊆
_Nn_ 2 − _m_ and so _xi_ = _xπ_ ( _j_ )= _xρ_ ( _k_ )would be in _N_ 1 ∩ _N_ 2. Hence if{ _π_ ( 1 ), ..., _π_ ( _m_ )}≠
{ _ρ_ ( 1 ), ..., _ρ_ (ℓ)}then _X_ ∩ _Y_ is empty and hence partition-definable. Likewise, if
{ _π_ ( _m_ + 1 ), ..., _π_ ( _n_ )} ≠ { _ρ_ (ℓ+ 1 ), ..., _ρ_ ( _n_ )}then _X_ ∩ _Y_ is empty and hence
partition-definable. Hence suppose that{ _π_ ( 1 ), ..., _π_ ( _m_ )} = { _ρ_ ( 1 ), ..., _ρ_ (ℓ)}
and{ _π_ ( _m_ + 1 ), ..., _π_ ( _n_ )}={ _ρ_ (ℓ+ 1 ), ..., _ρ_ ( _n_ )}, and thus _m_ =ℓ. Then this
is clearly _Ni_ -definable:

_Zi_ ={( _z_ 1 , ..., _zm_ )∈ _Xi_ :( _z_ ( _ρ_ ○ _π_ − (^1) )( 1 ), ..., _z_ ( _ρ_ ○ _π_ − (^1) )( _m_ ))∈ _Yi_ }
So that:
_X_ ∩ _Y_ ={( _x_ 1 , ..., _xn_ ):( _xπ_ ( 1 ), ..., _xπ_ ( _m_ ))∈ _Z_ 1 ∧( _xπ_ ( _m_ + 1 ), ..., _xπ_ ( _n_ ))∈ _Z_ 2 }
And so _X_ ∩ _Y_ is partition-definable.
We next characterise the _A_ -definable sets in terms of partition-definable sets:
Proposition 10.8: _Every A-definable subset X_ ⊆ _Anis a finite union of partition-defin-
able sets.
Proof._ This by induction on the complexity of the formula _φ_ ( _x_ 1 , ..., _xn_ )defining
_X_. For anyL _i_ -predicate _R_ , one has that{( _x_ 1 , ..., _xn_ )∈ _An_ : _A_ ⊧ _R_ ( _a_ 1 , ..., _an_ )}=
{( _x_ 1 , ..., _xn_ )∈ _Nni_ : _Ni_ ⊧ _R_ ( _a_ 1 , ..., _an_ )}and so the result trivially follows. For the


```
10.c. predicative comprehension 249
```
atomic formula associated to identity, we have the finite union{( _x_ 1 , _x_ 2 )∈ _A_^2 : _A_ ⊧
_x_ 1 = _x_ 2 }={( _x_ 1 , _x_ 2 )∈ _N_^21 : _N_ 1 ⊧ _x_ 1 = _x_ 2 }∪{( _x_ 1 , _x_ 2 )∈ _N_^22 : _N_ 2 ⊧ _x_ 1 = _x_ 2 }.
Suppose the result holds for _X_ , _Y_ , so that both _X_ , _Y_ are finite unions of partition-
definable sets. Then trivially the result holds for _X_ ∪ _Y_.
Suppose that the result holds for _X_. We show it holds for _An_ ∖ _X_. Since the result
holds for _X_ , we may write it as the finite union of partition-definable sets _Y_ , _Z_ , ....
Then _An_ ∖ _X_ is the finite intersection of the sets _An_ ∖ _Y_ , _An_ ∖ _Z_ , .... But note that:

```
An ∖ Y ={( x 1 , ..., xn )∈ An :( xπ ( 1 ), ..., xπ ( m ))∉ Nm 1 }∪
{( x 1 , ..., xn )∈ Nn 1 :( xπ ( 1 ), ..., xπ ( m ))∉ Y 1 }∪
{( x 1 , ..., xn )∈ An :( xπ ( m + 1 ), ..., xπ ( n ))∉ Nn 2 − m }∪
{( x 1 , ..., xn )∈ Nn 2 :( xπ ( m + 1 ), ..., xπ ( n ))∉ Y 2 }
```
Obviously the second of these is _N_ 1 -definable and the fourth is _N_ 2 -definable, so
both are partition-definable. Further, the first and third of these are finite unions of
partition-definable sets: for, if e.g. _n_ =2 and _π_ ( 1 )=1 and _π_ ( 2 )=2 then the first
of these is equal to( _N_ 1 × _N_ 2 )∪( _N_ 2 × _N_ 1 )∪( _N_ 2 × _N_ 2 ), and each of these is clearly
partition-definable. Hence _An_ ∖ _X_ is the intersection of the sets _An_ ∖ _Y_ , _An_ ∖ _Z_ , ...,
each of which is a finite union of partition-definable sets⋃ _iYi_ ,⋃ _jZj_ , .... Then
_An_ ∖ _X_ is a finite union of finite intersections of the form _Yi_ ∩ _Zj_ ∩ ⋯, which are
partition-definable by Proposition 10.7.
Finally, suppose that the result holds for _X_ ⊆ _An_ +^1. We must show that the result
holds for _π_ ( _X_ )={( _x_ 1 , ..., _xn_ )∈ _An_ :(∃ _xn_ + 1 ∈ _A_ )( _x_ 1 , ..., _xn_ + 1 )∈ _X_ }. Since
_π_ ( _X_ ∪ _X_ ′)= _π_ ( _X_ )∪ _π_ ( _X_ ′), we may without loss of generality assume that _X_ itself
is partition-definable. Then we have:

```
π ( X )={( x 1 , ..., xn )∈ An :(∃ xn + 1 ∈ N 1 )[( xπ ( 1 ), ..., xπ ( m ))∈ X 1 ∧
( xπ ( m + 1 ), ..., xπ ( n + 1 ))∈ X 2 ]}∪
{( x 1 , ..., xn )∈ An :(∃ xn + 1 ∈ N 2 )[( xπ ( 1 ), ..., xπ ( m ))∈ X 1 ∧
( xπ ( m + 1 ), ..., xπ ( n + 1 ))∈ X 2 ]}
```
If _n_ + 1 ∈{ _π_ ( 1 ), ..., _π_ ( _m_ )}, then the second union is empty and the first is clearly
partition-definable. If _n_ + 1 ∈{ _π_ ( _m_ + 1 ), ..., _π_ ( _n_ + 1 )}, then the first union is empty
and the second is partition-definable. Either way, _π_ ( _X_ )is partition-definable.

We can now prove Proposition 10.4 itself:

_Proof of Proposition 10.4._ Suppose that _X_ ⊆ _Nn_ 1 is _A_ -definable. If _X_ is empty then it
is trivially _N_ 1 -definable, and so suppose without loss of generality that _X_ is non-
empty. By Proposition 10.8, _X_ is the finite union of partition-definable subsets
_Y_ , _Z_ , ..., each of which may likewise be assumed non-empty. So suppose that


250 internal categoricity and the natural numbers

```
Y ={( x 1 , ..., xn )∈ An :( xπ ( 1 ), ..., xπ ( m ))∈ Y 1 ∧( xπ ( m + 1 ), ..., xπ ( n ))∈ Y 2 }
```
for some _N_ 1 -definable _Y_ 1 ⊆ _Nm_ 1 and _N_ 2 -definable _Y_ 2 ⊆ _Nn_ 2 − _m_. Since∅≠ _Y_ ⊆ _X_ ⊆
_Nn_ 1 , we must have that _m_ = _n_ and hence that

```
Y ={( x 1 , ..., xn )∈ An :( xπ ( 1 ), ..., xπ ( m ))∈ Y 1 }
```
which is obviously _N_ 1 -definable.


