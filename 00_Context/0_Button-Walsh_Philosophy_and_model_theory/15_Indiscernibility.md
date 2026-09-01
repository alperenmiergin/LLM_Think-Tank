**Kaynak:** [[00_Context/0_Button-Walsh_Philosophy_and_model_theory/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

## 15 Indiscernibility

Two entities are indiscernible, intuitively speaking, when they cannot be told apart,
or discriminated from each other in some way. The purpose of this chapter is to use
model theory to shed some light on two broad questions concerning indiscernibles:
_Are there any indiscernible objects? And if so, how do we talk about them?_ We consider
these questions in reverse order, starting with the semantics of indiscernibles in
§15.2, and considering their existence in §15.3.
We begin the chapter, though, with some philosophical-cum-technical prelimi-
naries. The reason for this is that there are many, many things one might mean by
‘indiscernible’, and model theory can helpfully illuminate these different meanings.
And we close the chapter by introducing some technical apparatus which relates in-
discernibles to infinitary logics (§15.4) and to stability (§15.5). This apparatus also
underpins the final two chapters of the book.

### 15.1 Notions of indiscernibility

As mentioned, ‘indiscernible’ can mean many things. Indeed, there are at least three
degrees of freedom in our meaning. We can vary: ( _a_ ) the primitive ideology; ( _b_ )
the background logic; and ( _c_ ) the grade of discernibility.

```
Primitive ideology
```
When attempting to discern two objects, an obvious starting point would be appeal
to their (intrinsic) ‘properties’ or ‘qualities’. For example, perhaps we can immedi-
ately discriminate between cups and saucers. To track this model-theoretically, we
might select a signature involving two one-place predicates, _C_ and _S_ , which respec-
tively pick out the cups and the saucers (on the intended interpretation). However,
if our signature only includes these crockery-predicates, then it will not allow us to
discern red cups from blue ones. The immediate upshot is that any model-theoretic
notion of discernibility will be signature-relative.
We should also be careful not to restrict ourselves—at least, initially—to consid-
ering properties or qualities which are only symbolised with one-place predicates.
For example, we might want to allow that two otherwise indiscernible cups are dis-
cerned from one another by the fact that only one of them is on a saucer. This would


360 indiscernibility

involve adding a two-place predicate to stand for _x is on y_. Then the one-place for-
mula∃ _x_ ( _S_ ( _x_ )∧ _O_ ( _x_ , _v_ ))will be satisfied by one cup but not the other (on the
intended interpretation).
The moral is: _we must take care concerning which primitive features—modelled via
the primitive symbols of our signature—count towards discernibility_.

```
Background logic
```
We just considered the formula∃ _x_ ( _S_ ( _x_ )∧ _O_ ( _x_ , _v_ )), a formula of first-order logic
with one free variable. Unsurprisingly, we can affect what can be discerned from
what, by varying the logic within which we provide such formulas.
To illustrate the point, let _B_ be the disjoint union of a complete countably-
infinite graph with a complete uncountable graph:

```
B =R
RB ={( n , m )∈N^2 : n ≠ m }∪{( p , q )∈(R∖N)^2 : p ≠ q }
```
Let _φ_ ( _v_ )be any first-order formula in this signature with no parameters. Then ei-
ther _φ_ applies to every entity in the structure, or it applies to no entity in the struc-
ture. (If this is not immediately clear, we explain why in Theorem 15.7.) However,
if we allow _φ_ to take _parameters_ , then this no longer holds: only the members ofN
have an edge to 0 in _B_. Equally, if we allowed _second-_ order formulas, we would not
obtain the same result: only the members ofNhave edges to only countably many
entities.
The immediate moral, as above, is: _we must take care concerning what logical no-
tions count towards discernibility_. In particular, we must take care about whether
we are allowing first- or second-order quantification. Equally, we must take care
over whether the discerning formulas are allowed to contain parameters. By de-
fault, throughout this chapter, formulas will contain _no_ parameters (unless explic-
itly stated otherwise)
Relatedly, we also need to decide whether or not our logic should include a prim-
itive notion of _identity_. And this point merits careful discussion. To approach the
point, we need to step back and ask: _Why might one want to consider the idea of dis-
cernibility in the first place?_
The ambitious hope is that considering the idea of discernibility will provide us
with a genuinely illuminating answer to the question: _When are objects identical?_
To take a simple example: set theory states that sets are identical iff they share all
their members. To take a more contentious example: reflecting on physical theories
might convince us that nature abhors a (non-trivial) symmetry. The general hope,
perhaps, is that some notion of indiscernibility will provide us with a _non-trivial
criterion of identity_.


```
15.1. notions of indiscernibility 361
```
This ambition need not be _reductive_. Someone might simply seek an illuminating
_constraint_ upon the conditions under which objects can be distinct. That said, some
philosophers have hoped to find a _reductive_ criterion for identity, looking to replace
the identity primitive with some _defined_ notion of indiscernibility. This reductive
ambition is found among philosophers who have defended some ‘Principle of Iden-
tity of Indiscernibles’, and we explore this in §15.3. However, if our aim _is_ reductive,
then we obviously cannot help ourselves to a _primitive_ identity relation, in the way
that standard first-order logic does (for example). Similarly, we are unlikely to want
to help ourselves to full second-order logic, since the identity relation is _definable_
there, via _x_ = _y_ ↔∀ _X_ ( _X_ ( _x_ )↔ _X_ ( _y_ )).
None of this is to say that full second-order logic, or first-order logic with identity,
have no place when it comes to discussing notions of indiscernibility. Rather, we
must always be clear on whether or not our logic should contain a primitive notion
of identity, and we should be aware that certain philosophical motivations may push
us towards using an identity-free logic.

```
Grades of discernibility
```
Thus far, we have highlighted that any discussion of discernibility must take care
concerning the primitive vocabulary and the background logic. We now explore a
third degree of freedom: the _grade_ of discernibility.
To speak of a ‘grade of discernibility’ is somewhat jargonistic. But we can intro-
duce the idea fairly naturally via Black’s celebrated dialogue between two characters,
Ali and Bob.^1 Bob presents a now famous thought experiment:

Isn’t it logically possible that the universe should have contained nothing but two exactly
similar spheres? We might suppose that each was made of chemically pure iron, had a
diameter of one mile, that they had the same temperature, colour, and so on, and that
nothing else existed. Then every quality and relational characteristic of one would also
be a property of the other.^2

Here, Bob allows us various resources for distinguishing entities from each other:
we can consider their shape (spherical), their composition (iron), their size (one
mile diameter), their temperature, their colour, and so on. All of these features will,
presumably, be symbolised with one-place predicates. But Bob also mentions ‘re-
lational characteristics’. Specifically, Bob has in mind the point that both spheres
satisfy the one-place formula which symbolises ‘ _being at a distance of two miles_ , say,
_from the centre of a sphere one mile in diameter_ .’^3 So, when _a_ and _b_ are our two spheres,

(^1) Black (1952). Actually, Black simply calls his characters ‘A’ and ‘B’; we have given them full names in
the interests of readability.
(^2) Black (1952: 156).
(^3) Black (1952: 157).


362 indiscernibility

Bob is effectively suggesting that we should simply consider whether _a_ and _b_ satisfy
all the same formulas in one free variable (in some suitable signature, and with some
suitable background logic). And Bob’s point is then that _φ_ ( _a_ )↔ _φ_ ( _b_ ), for all for-
mulas _φ_ ( _v_ )with only one free variable (on the intended interpretation). As such,
Bob insists that the spheres are _indiscernible_.
Ali, however, insists that Bob has omitted something important:

Each of the spheres will surely differ from the other in being at some distance from that
other one, but at no distance from itself—that it to say, it will bear at least one relation to
itself— _being at no distance from_ [...]—that it does not bear to the other.^4

Ali’s point is that there is some _two_ -place formula, _φ_ ( _x_ , _y_ ), such that _φ_ ( _a_ , _a_ )but
¬ _φ_ ( _a_ , _b_ ). And this, Ali thinks, shows that the spheres are _discernible_ after all.
To make sense of Ali and Bob’s discussion, we define various _grades of indiscerni-
bility_. We start by recalling some notation from §14.4. Given anL-structure _M_
and a sequence of elements _a_ , recall that tp _M_ ( _a_ )is the set ofL-formulas with free
variables among _v_ 1 , ..., _vn_ which are satisfied by _a_ in _M_. That is, tp _M_ ( _a_ )is the com-
plete _n_ -type _p_ ∈Types _n_ ( _M_ )realised by _a_. Now, all of that takes place in first-order
logic with identity, but we can easily extend the ideas to other logics:

Definition 15.1: _Let M be an_ L _-structure with a sequence of elementsa. We say:_^5

```
tp+ M ( a )={ φ is a first-order L -formula, possibly with ‘ = ’ : M ⊧ φ ( a )}
tp− M ( a )={ φ is a first-order L -formula, without ‘ = ’ : M ⊧ φ ( a )}
tps M ( a )={ φ is a second-order L -formula : M ⊧ φ ( a )}
```
_In the second-order case, we assume the_ full _semantics._

The mnemonic that we have introduced here is to use ‘−’ to indicate first-order logic
without identity, ‘+’ to indicate first-order logic with identity, and ‘s’ to indicate
(full) second-order logic. We now define some grades of discernibility:^6

Definition 15.2: _For any_ L _-structure M, say that a and b are:_

```
(1) one-indiscernibles− in M iff tp− M ( a )=tp− M ( b )
(2) one-indiscernibles+ in M iff tp+ M ( a )=tp+ M ( b )
(3) one-indiscernibless in M iff tps M ( a )=tps M ( b )
(4) two-indiscernibles− in M iff tp− M ( a , b )=tp− M ( b , a )
```
(^4) Black (1952: 157).
(^5) Hence, what we referred to in §14.4 with the notation tp _M_ ( _a_ ), we are now referring to with the
notation tp+ _M_ ( _a_ ).
(^6) This family of definitions has a long heritage, e.g.: Hilbert and Bernays (1934: §5), Quine (1960:
230–2, 1976), Caulton and Butterfield (2012: §2.1, §3.2), Ketland (2006: 306–7, 2011: Definitions 2.3, 2.5),
Ladyman et al. (2012: Definition 3.1 §6.4), and Button (2017: Definition 2.1).


```
15.1. notions of indiscernibility 363
```
```
(5) two-indiscernibles+ in M iff tp+ M ( a , b )=tp+ M ( b , a )
(6) two-indiscernibless in M iff tps M ( a , b )=tps M ( b , a )
(7) Leibniz-indiscernibles− in M iff tp− M ( a , a )=tp− M ( a , b )
```
Note that there is no need to define _Leibniz-indiscernibles_ +or _Leibniz-indiscernibles_ s.
After all: if tps _M_ ( _a_ , _a_ )=tps _M_ ( _a_ , _b_ ), then also tp+ _M_ ( _a_ , _a_ )=tp+ _M_ ( _a_ , _b_ ), and so in
particular _a_ = _a_ iff _a_ = _b_ , and hence _a_ = _b_. So these grades of indiscernibility would
simply be equivalent to genuine identity.
Since Leibniz-indiscernibility−is perhaps the least familiar of the previous no-
tions, it is worth noting a few quick equivalents of it:^7

Lemma 15.3: _For any_ L _-structure M, the following are equivalent:_

```
(1)a and b are Leibniz-indiscernibles − in M
(2)M ⊧∀ v ( φ ( a , v )↔ φ ( b , v )) , for all atomic formulas φ not containing ‘ = ’
(3) M ⊧∀ v ( φ ( a , v )↔ φ ( b , v )) , for all first-order formulas φ not containing
‘ = ’
```
Let us now apply these notions to Black’s two-sphere world. To do this, we must
represent that world with a formal model, _S_. Since the only point at issue between
Ali and Bob concerns the relation ‘being at some non-zero distance from’, the sim-
plest formal model is just a two-element graph with an edge between nodes iff they
stand at a distance from one another, which we can depict thus:

```
a b
```
We now have tp− _S_ ( _a_ )=tp− _S_ ( _b_ )but tp− _S_ ( _a_ , _a_ )≠tp− _S_ ( _a_ , _b_ ). So the two spheres will
be one- _indiscernibles_ −, but Leibniz- _discernibles_ −.
To consider the other five grades defined in Definition 15.2, recall from Theo-
rem 2.3 that isomorphisms preserve even full satisfaction second-order formulas.
Evidently, from our description of the example, there is a non-trivial isomorphism
_h_ : _S_ Ð→ _S_ , obtained just by swapping the two spheres around. Hence our spheres
are two-indiscernibless. In more detail: with _h_ ( _a_ )= _b_ and _h_ ( _b_ )= _a_ , we have
tps _S_ ( _a_ , _b_ )=tps _S_ ( _h_ ( _a_ ), _h_ ( _b_ ))=tps _S_ ( _b_ , _a_ ).
An isomorphism _h_ : _M_ Ð→ _M_ is called an _automorphism_ , or sometimes a _sym-
metry_ , on _M_.^8 As we just saw, invoking symmetries can provide a handy test for

(^7) See Casanovas et al. (1996: 508) and Ketland (2011: Theorem 3.17).
(^8) Model theorists prefer ‘automorphism’; physicists prefer ‘symmetry’. We stick with ‘symmetry’
partly because it is shorter, but mostly because ‘one-symmetricals’ is snappier than ‘one-automorphics’
(see Definition 15.4).


364 indiscernibility

satisfaction of some of the grades of discernibility from Definition 15.2. But we can
also use symmetries to define three _grades of symmetry_ :^9

Definition 15.4: _For any_ L _-structure M, say that a and b are:_

```
(1) one-symmetricals in M iff there is a symmetry h on M such that h ( a )= b,
(2) two-symmetricals in M iff there is a symmetry h on M such that h ( a )= b
and h ( b )= a,
(3) Leibniz-symmetricals in M iff there is a symmetry h on M such that h ( a )=
b, h ( b )= a and h ( x )= x for all x ∉{ a , b }.
```
In these terms, the spheres _a_ and _b_ are Leibniz-symmetricals in _S_.
In defining the notion of an isomorphism, the only object-language symbols
which are mentioned are those of the signature; there is no need to mention
‘=’. Nevertheless, the notion of an isomorphism—and hence each grade of
symmetry—straightforwardly depends upon the notion of identity. After all, an
isomorphism is a bijection, which is to say it maps _unique_ objects to _unique_ objects,
and _vice versa_. If we want to avoid treating identity as a primitive—for philosophical
or technical reasons—then the notion of an isomorphism is therefore probably too
strong. In looking for a weaker notion, a first thought would be to consider non-
bijective functions between structures.^10 But this is insufficiently concessive, since
the very idea of a _function_ also depends upon the notion of identity, in that each
argument yields _exactly one_ value. Consequently, we should consider structure-
preserving _relations_ that may hold between structures. The appropriate notion is
this (writing _aHb_ to indicate that( _a_ , _b_ )∈ _H_ ):^11

Definition 15.5: _Let M_ , _N be_ L _-structures. A_ relativeness correspondence _from M
to N is any two-place relation H whose domain is exactly M and whose range is exactly
N, such that for all_ L _-constant symbols c, all n-place_ L _-predicates R, all n-place_ L _-
function symbols f , and all a_ 1 _Hb_ 1 , ..., _anHbn:_

```
cMHcN
( a 1 , ..., an )∈ RMiff ( b 1 , ..., bn )∈ RN
fM ( a ) H fN ( b )
```
_A_ relativity _on M is a relativeness correspondence from M to M._

Then, by simple analogy with our three grades of symmetry, we can consider three
grades of relativity:

(^9) This formulation follows Button (2017: Definition 2.5). For some precedents, see Ketland (2006,
2011) and Ladyman et al. (2012).
(^10) The notion of a _strict homomorphism_ is often employed in the technical literature.
(^11) This is due to Casanovas et al. (1996: Definition 2.5).


```
15.1. notions of indiscernibility 365
```
Definition 15.6: _For any_ L _-structure M, say that a and b are:_

```
(1) one-relatives in M iff there is a relativity H on M with aHb
(2) two-relatives in M iff there is a relativity H on M with aHb and bHa
(3) Leibniz-relatives in M iff there is a relativity H on M with aHb and bHa
and xHx for all x such that neither x , a nor x , b are Leibniz-indiscernibles −
```
These are the last of our grades of discernibility. The very obvious moral is that, in
discussing discernibility: _we must take care concerning the grade of discernibility_.
We can chart the relative strengths of our different grades of discernibility us-
ing a Hasse diagram. According to this notation, we have a connected path down
the page between two grades R and S iff being R entails being S. For example, the
result below tells us that all two-indiscerniblessare one-indiscernibles−, and that
all one-symmetricals are one-indiscernibles−, but that there are structures contain-
ing two-indiscerniblesswhich are not one-symmetricals, and structures containing
one-symmetricals which are not two-indiscernibless. The proof is in §15.a.

Theorem 15.7: _The following Hasse diagram represents the relationships between the
grades of discernibility:_

```
identicals (i.e.=)
```
```
Leibniz-symmetricals
```
```
two-symmetricals
```
```
one-symmetricals
```
```
Leibniz-indiscernibles−
```
```
Leibniz-relatives
```
```
two-relatives
```
```
one-relatives
```
```
two-indiscernibless
```
```
one-indiscernibless
```
```
two-indiscernibles+
```
```
one-indiscernibles+
```
```
two-indiscernibles−
```
```
one-indiscernibles−
```
_If we restrict our attention to structures with_ relational _signatures, the diagram is the
same, except that_ ‘Leibniz-indiscernibles−’ _sits below_ ‘identicals’ _and above_ ‘Leibniz-
symmetricals’_. (I.e. in relational structures, all Leibniz-indiscernibles are Leibniz-
symmetricals, but the converse is false.)_


366 indiscernibility

### 15.2 Singling out indiscernibles

In the previous section, we set out some preliminaries for a philosophical discus-
sion of indiscernibility. We will now embark on that discussion, beginning with
the question: _If there are indiscernibles, then how do we single out any one of them?_
We must start by commenting on the idea of _singling out_ an object. This is a
rough-and-ready, intuitive, idea. We may want to single out an entity in thought,
thinking about one particular object rather than any other. Equally, we may want to
single out an entity verbally, perhaps with a singular term which (we hope) refers
determinately to exactly one object, or perhaps using a definite description.^12 But
this rough-and-ready idea is enough to motivate a difficulty. Where two (or more)
objects are indiscernibles, there is an obvious (doxological) question: _How could
we possibly single out one of these, rather than the other?_

```
We cannot single out two-symmetricals
```
Having posed the question, we must immediately recall the morals of §15.1. We
are asking a question which concerns indiscernibility. So, we must determine the
appropriate signature, the appropriate logic, and the appropriate grade of discerni-
bility, for our discussion.
We start with the signature. If the idea is to single out an entity in thought, then
when we model what is going on, we should allow ourselves symbols standing for
anything that can legitimately be entertained in thought. That said, we must take
care to avoid trivialising the question. For example: suppose we insisted on adopt-
ing a primitive one-place predicate, whose intended interpretation was _the entity
uniquely singled out by me right now_. If we are, indeed, capable of uniquely singling
out one of two _otherwise_ indiscernible objects, then it will indeed be the case that
they are also discerned by the fact that only one of them is (uniquely) singled out.
But it would obviously put the cart before the horse, to begin with such a predi-
cate and _assume_ it has a unique interpretation. For similar reasons, in this context
we should probably restrict our attention to _relational_ signature. After all, if we al-
low our signature to contain distinct names for two _otherwise_ indiscernible objects,
then we again put the cart before the horse in assuming that we can (determinately)
name one rather than the other.
We now turn to the logic. We mentioned in §15.1 that there are philosophical con-
texts in which we should not allow ourselves access to identity (either by treating it
as a primitive, or by using full second-order logic). However, this does not seem to
be one of those contexts. After all, if _a_ stands in some relation to exactly one object,
whilst _b_ stands in some relation to exactly two objects, but _a_ and _b_ are _otherwise_ in-

(^12) We are taking no stance on whether definite descriptions should sometimes be regarded _as_ singular
terms, or rendered along more Russellian lines.


```
15.2. singling out indiscernibles 367
```
discernible, it is plausible that we can single out _a_ rather than _b_ by formalising these
relational-cum-numerical facts using an identity predicate.
The more substantial question is whether we should allow ourselves only first-
order logic with identity, or full second-order logic, or maybe some stronger logic
still. In asking this, we run the risk of reopening some of the wounds from Part B
of this book. To bypass that, we will simply argue for the following: _Given some
two-symmetricals, it is impossible to single out any one of them._
Here is why we think this, and why it bypasses the debate about ‘which logic is
correct’. Let _a_ and _b_ be two-symmetricals in some appropriate relational signature.
Then there cannot be _any_ formula _φ_ ( _x_ , _y_ )which enables us to tell them apart, pair-
wise. That is, for any such formula, we will have _φ_ ( _a_ , _b_ )iff _φ_ ( _b_ , _a_ ). We can see this
if we consider formulas of (full) second-order logic, just by looking at Theorem 15.7.
And in fact, if we skip ahead to Corollary 15.10 of §15.4, we see that the same point
holds even if we allow for _arbitrarily infinitely long_ formulas. This suggests to us that
there is _literally nothing_ we can say, do, or think, that will allow us to single out _a_
over _b_.
(It is not obvious, though, that any _weaker_ grade of discernibility will do. For,
if _a_ and _b_ are _not_ two-symmetricals, then Corollary 15.10 of §15.4 entails that there
is some infinitary formula _φ_ ( _x_ , _y_ )such that _φ_ ( _a_ , _b_ )but¬ _φ_ ( _b_ , _a_ ). So, _if_ we have
access to infinitary logic, and can narrow our attention down to considering _either
a or b_ , then we can use _φ_ to single out _a_ rather than _b_ .)

```
On mental faculties
```
We have just argued that, once we have selected an appropriate relational signature,
we cannot single out any two-symmetricals. We now want to consider some appli-
cations of this point, and to defend it against some possible counter-arguments.
In §15.1, we discussed Black’s two-sphere world, and treated it as a graph, _S_. We
also noted that there is a symmetry on _S_ , obtained just by swapping the two spheres.
So, the spheres are relevantly two-symmetrical. By the preceding argument, then,
it is impossible to single out either of the spheres.^13
Here is a more mathematical illustration of phenomenon. Objects-platonists be-
lieve that the complex numbers are abstract objects. But there is a symmetry on the
complex plane which sends every _a_ + _bi_ to _a_ − _bi_ , and vice versa. So, in particular,
the two square-roots of−1 are two-symmetricals in the signature of the complex
plane,{0, 1,+,×}. And this suggests that they are two-symmetricals in _any_ signa-
ture which is appropriate for considering our ability to think about complex num-
bers. Consequently, objects-platonists should accept that is impossible to single
out either of the square-roots of−1.

(^13) Here, then, we are in some agreement with Black’s character Bob (1952: 156–7).


368 indiscernibility

Now, this conclusion may well come as no surprise. After all, in Chapter 2, we
suggested that the _moderate_ objects-platonist must accept that she cannot single out
_any_ natural number over any other. (Indeed, in a sense, the moral of Chapter 2 is
that, when the _moderate_ objects-platonist wants to single out abstract objects, the
appropriate signature is just the _empty_ signature.) However, we would note that
not all objects-platonists are _moderate_. So the above point is of particular interest to
_immoderate_ objects-platonists.
Our verdicts here are in line with the general philosophical consensus.^14 But
Priest dissents. He thinks that, since we _can and do_ determinately single out _i_ over
− _i_ , some ‘powerful’ mental faculty of ours must allow us to do this:^15

An act of pure intention can intend an object when there are other indiscriminable objects.
How is this possible? That I think, is the nature of the beast. It must be possible, however,
because it has actually been done [...] we can intend+ _i_ rather than− _i_ [...]. At some
stage, some mathematician or committee of mathematicians, must have chosen one of
these objects arbitrarily and called it ‘+ _i_ ’. Acts of pure intention, it would seem, can be
very powerful.^16

We respond to Priest by insisting that postulating this ‘powerful’ mental faculty
achieves nothing. Priest has told us that ‘some mathematician or committee
of mathematicians must have chosen one of [the square-roots of−1] arbitrarily
and called it “+ _i_ ”’. Let us suppose—consistently with Priest’s metaphysics-cum-
metasemantics—that two _different_ mathematicians, working independently from
one another, made _different_ arbitrary choices at some stage, so that their two uses
of ‘ _i_ ’ referred to the two different square-roots. Working in isolation from one an-
other, both mathematicians would (of course) have managed just fine. Moreover,
when the mathematicians met and discussed complex analysis, they neither would
nor could be aware that they had made _different_ choices. But in that case, supposing
that they made _different_ choices plays no role in accounting for mathematical prac-
tice; and there cannot really be any reason _beyond_ mathematical practice to make
the supposition. There is, then, just no reason to postulate that the mathematicians
ever _made_ these choices, and so no reason here to countenance the existence of a
faculty, whose sole purpose is to make such choices possible. (And, in passing, we
would offer a similar response to anyone who thinks that one of the square-roots of
−1 is more _natural_ as the referent of ‘ _i_ ’ than of ‘− _i_ ’: there is just no _point_ in postu-
lating this mysterious property of ‘naturalness’.)

(^14) See Brandom (1996: 298ff), Field (2001: 328), and Shapiro (2012: 381ff).
(^15) We should note that Priest’s postulates this mental faculty, not _specifically_ in order to deal with the
complex numbers, but on more general grounds concerning (for example) our ability to think about fic-
tional characters. However, _even if_ one has postulated this faculty on other grounds, we would still argue
(exactly as in the text) that nothing is achieved by insisting that the faculty is ‘activated’ in the case of the
complex numbers.
(^16) Priest (2005: 142).


```
15.2. singling out indiscernibles 369
```
That is our main response to Priest. But there is a slight wrinkle. Mathematicians
seem to treat ‘ _i_ ’ as a name. And when asked to elaborate on the name ‘ _i_ ’, they might
say that it means ‘the positive square-root of−1’. Both the use of a name, and the use
of the definite article, naïvely suggest that we _have_ singled out some unique object.
So we must deal with this naïve concern.
Cutting a long story short, our response is that it is just _too_ naïve. We already
made this point in §2.4, but it is worth repeating: we can and do employ gram-
matically singular expressions, without requiring that they single out any particular
entity. Here is a lovely example, which Shapiro uses to make exactly this point:

Remember the chess set that came with nine white pawns? I could have used an extra
king, but I never needed the extra pawn.^17

The crucial fact is that we can sensibly employ the grammatically singular expres-
sion ‘ _the_ extra pawn’, even though no pawn was in any way ‘special’, and so no par-
ticular pawn was singled out. So it may be with expressions like ‘ _i_ ’ or ‘the positive
square-root of−1’.
Next, we need a _formal_ semantics which can accommodate this fact. Shapiro
suggests the supervaluational semantics sketched in §2.5, and we agree. The gen-
eral idea, recall, is that what is _true_ (simpliciter) is what is satisfied in all appropriate
models. In the particular case of the complex numbers, the appropriate models
would be the _two_ distinct signature-expansions of the complex plane where ‘ _i_ ’ is al-
lowed to refer to either of the two different square-roots of−1. Then a sentence
_φ_ in this richer signature is true (simpliciter) iff _φ_ is satisfied in _both_ signature-
expansions. Job done, with minimal fuss.
This is just a particular instance of the supervaluational strategy which we
sketched in §2.5, and one point raised there is worth repeating. The use of super-
valuational semantics does not make the issue of singling out disappear. Rather,
the issue recurs at every higher level. Our distinct structures introduce labels to the
complex numbers: one structure picks out one of the square-roots of−1 with ‘ _i_ ’,
and the other structure picks out the very same object with ‘− _i_ ’. Precisely because
we cannot possibly single out one square-root over the other, we cannot say _which_
structure labels which square-root with ‘ _i_ ’. The two (augmented) structures are ex-
actly as indiscernible as the two square-roots of−1 themselves.^18 If we like, we can
say ‘the structure which labelled the _positive_ root with “ _i_ ” is distinct from the struc-
ture which labelled the negative root with “ _i_ ”’; but we must understand _this_ claim
supervaluationally too.

(^17) Shapiro (2012: 393, 396; see also 401–5).
(^18) Cf. Shapiro (2012: 406–7), particularly his discussion of choice functions and ‘circularity’.


370 indiscernibility

### 15.3 The identity of indiscernibles

The preceding section assumed that certain kinds of indiscernibles exist. It also dis-
armed one potential objection against their existence. For, whilst we argued we can-
not _single out_ two-symmetricals (in some appropriate signature), we also showed
that this does not raise difficulties for our ability to _discuss_ two-symmetricals.
(Roughly: we can say everything about them that we _ought_ to be able to say.)
There is still, though, room for us to deny that there _are_ any indiscernibles. And
this leads us towards the debate around _the Principle of the Identity of Indiscernibles_.
Our basic argument in this section is that it is quite hard to get too stressed about
the Principle of the Identity of Indiscernibles in the philosophy of mathematics.^19

```
Many principles of identity of indiscernibles
```
We start by noting that there is not just _one_ principle of identity of indiscernibles.
Given the morals of §15.1, there are _many_ principles, which differ depending upon
the signature, the background logic, and the particular grade of discernibility.
To illustrate this, consider Black’s two-sphere world again. This was presented
as a potential counterexample to the identity of indiscernibles. Now, given a suit-
able (relational) signature, the two spheres are Leibniz-symmetricals, for there is a
symmetry sending one sphere to the other. So, if Black’s two-sphere world is (meta-
physically) possible, then the following principle is not (metaphysically) necessary:

_Identity of Leibniz-Symmetricals.Leibniz-symmetricals are identical_

However, each sphere is at no distance from itself, but at some distance from the
other sphere. Consequently, the spheres are Leibniz-discernible−, and Black’s two-
sphere world is compatible with (the necessity of) this principle:

_Identity of Leibniz-Indiscernibles_ − _.Leibniz-indiscernibles_ − _are identical_

Indeed, by Theorem 15.7, the Identity of Leibniz-Indiscernibles−is strictly _weaker_
than the Identity of Leibniz-Symmetricals, when we consider relational signatures.
And it does seem appropriate to consider relational signatures, when discussing ver-
sions of the identity of indiscernibles, since allowing our signature to contain names
or functions in this context would prejudge key questions of identity (see the dis-
cussion of §15.1).
There are, then, many principles of identity of indiscernibles. The question is,
whether there are any good arguments for or against _any_ such principle, in mathe-
matics or elsewhere. Unsurprisingly, we will focus on the mathematical case, but
we first want to make a brief comment about _physical_ indiscernibles.

(^19) _Tim adds:_ so Button (2006) no longer reflects my views. Instead, this section develops Button (2013:
211fn.8, 2017: §3n.8).


```
15.3. the identity of indiscernibles 371
```
```
Physical indiscernibles and verificationism
```
In the physical case, Black suggested that _verificationism_ might license some princi-
ple of identity of indiscernibles. Specifically, his character Ali insists that the exis-
tence of indiscernible entities ‘would be unverifiable _in principle_ .’^20 She is not cor-
rected within Black’s dialogue, but Ali is mistaken. Following Hawley, we present
a toy example to show that nothing (in principle) prevents us from obtaining evi-
dence that there are distinct indiscernibles.^21
Let _a_ and _b_ be distinct particles of a certain kind, _K_ , and suppose that _a_ and _b_ are
Leibniz-indiscernibles−for a suitable relational signature. (Note that, other than
identity, Leibniz-indiscernibility−is the most refined grade of indiscernibility for
relational signatures, by Theorem 15.7.) Since _a_ and _b_ are Leibniz-indiscernible−, if
we have chosen the signature suitably, then they will have exactly the same locations
at all times. Nonetheless, we may be able to obtain evidence _that_ there are two
(always perfectly overlapping) entities, rather than one. Suppose, for example, that
we also have excellent evidence that all particles of kind _K_ have a certain fixed mass,
_m_. Then if we take a mass-reading at a spacetime location containing both _a_ and _b_ ,
it will be 2 _m_ rather than _m_. This reading will provide some (defeasible) evidence
that there are two particles of kind _K_. But then it is wrong to claim that the existence
of indiscernible entities ‘would be unverifiable _in principle_ ’, at least in this case.
To repeat: that was a toy example. There is much more to say about whether
_contemporary_ physical theory is best understood as vindicating some form of the
identity of indiscernibles. We hope, though, that the logical framework established
in §15.1—selecting an appropriate signature, an appropriate logic, and an appropri-
ate grade of discrimination—may be fruitful for philosophers of physics.

```
Cheap routes to discernibility
```
We now return from the physical to the mathematical, and consider the question:
_Does mathematical practice require that we must believe in indiscernibles?_
Many philosophical programmes are pitched against objects-platonism. If any of
them succeed, then of course we should not infer from mathematical practice that
there are indiscernible mathematical entities, since we should not infer that there
are _any_ mathematical entities. On the other hand, though, it might just seem _obvious_
that objects-platonists must believe in indiscernibles: if they believe in the complex
numbers then, following the discussion of §15.2, it seems that they must believe that
the two square-roots of−1 are two-symmetricals. Leitgeb and Ladyman have run
a more general argument to this effect, roughly as follows:^22

(^20) Black (1952: 155). Ali immediately adds: ‘Hence it would be meaningless.’
(^21) Hawley (2009: 116).
(^22) This is how we understand Leitgeb and Ladyman (2008: 394–5).


372 indiscernibility

```
(a)Mathematical practice tells us that there are many structures which contain
Leibniz-indiscernibles−.
(b)Considerations from mathematical practice trump any epistemological
or metaphysical qualms one might have about the existence of Leibniz-
indiscernibles−.
```
Whilst discussing (b) might lead to interesting questions in philosophical method-
ology, we will focus on criticising (a).
Leitgeb and Ladyman mostly focus on the case of graph theory. They note that
practising graph theorists will say, for example, ‘there is exactly one graph with two
nodes and no edges’. According to Leitgeb and Ladyman, since the graph has no
edges at all, its nodes are Leibniz-indiscernibles−.^23 But their conclusion is surely
too quick. In §2.4 and §15.2 we emphasised that it is too naïve to assume that gram-
matically singular phrases must single out _particular_ entities. The point applies to
a grammatically singular phrase like ‘the graph with two nodes and no edges’: we
can use the phrase without thinking that there is _exactly one_ such graph.
This is not merely a ‘philosophical’ point; it is a point made by practising graph-
theorists. Here, for example, is a quote from Tutte’s _Graph Theory_ :

Pure graph theory is concerned with those properties of graphs that are invariant under
isomorphism, for example the number of vertices, the number of loops, the number of
links, and the number of vertices of a given valency. It is therefore natural for a graph the-
orist to identify two graphs that are isomorphic. For example, all link-graphs are isomor-
phic, and therefore he speaks of the ‘link-graph’ as though there were only one. Similarly
one hears of ‘the null graph’, ‘the vertex graph’, and ‘the graph of the cube’. When this
language is used, it is really an isomorphism class (also called an abstract graph) that is
under discussion.^24

Tutte is not alone here; many graph theorists say similar things.^25 But if we are really
considering the isomorphism class of all two-element graphs with no edges—i.e.
simply the class of all two-element domains—then it makes no sense to say that _the_
nodes of _the_ graph are Leibniz-indiscernibles−. After all, as we noted back in §2.2,
_every_ object is treated as a node by _some_ graph.
To really emphasise this point, say that a _haecceitistic property_ is a property which
applies to exactly one object, and necessarily only to that object. Now, if every entity
has a haecceititistic property, then _every_ entity is one-discernible−from every other
in the haecceitistic signature. It is entirely compatible with Tutte’s description of
graph theoretic practice that there _is_ such a haecceitistic signature; it would just be
a signature which graph-theorists _ignore_ , in favour of more spartan signatures.

(^23) Leitgeb and Ladyman (2008: 392).
(^24) Tutte (1984: 6). Leitgeb and Ladyman (2008: 390fn.3) cite the passage, but they do not really discuss
the threat it poses to their viewpoint.
(^25) See e.g. the list in De Clercq (2012: 668).


```
15.3. the identity of indiscernibles 373
```
To be clear, _even if_ such haecceitistic properties exist, they will not help us to _sin-
gle out_ any particular objects. After all, the ‘haecceitistic signature’ will not be some-
thing which we could hope to master, in thought or speech. As such, the dialectic
of §15.2 will not be affected by countenancing the existence, in the abstract, of this
haecceitistic signature. The point is simply this: if, metaphysically speaking, there
are haecceitistic properties, then the principle of the _Identity of One-Indiscernibles_ −,
as understood for the haecceitistic signature, will be true to the metaphysics.
Leitgeb and Ladyman, or others, might complain that appealing to haecceitistic
properties would be _ad hoc_. For example, they might suggest that haecceities have
only been invoked in order to save some version of the identity of indiscernibles,
on spurious metaphysical grounds, and not because they are _needed_ by our best ac-
count of mathematical practice. Here, they would be leaning back on (b).
In response, note that we introduced haecceitistic properties only to make our
discussion of Tutte more vivid. More important, though: it is genuinely unclear
that haecceities _are_ an _ad hoc_ addition. The ambient set theory within which we
do our model theory trivially licenses the following: for every entity, _a_ , there is a
set whose unique member is _a_. Such singleton sets serve precisely the role of haec-
ceitistic properties:^26 they serve as potential extensions of one-place predicates in
our structures, and these extensions are precisely our formal surrogates for proper-
ties. So, far from being at odds with mathematical practice, mathematical practice
can be regarded as _requiring_ haecceitistic properties. Maybe, indeed, mathematical
practice yields a version of the identity of indiscernibles _on the cheap_.
Here is a second way to think that mathematical practice ‘cheaply’ yields some
version of the identity of indiscernibles. It is commonplace to insist that (classical)
mathematical practice can all be embedded within the set theoretic hierarchy. So,
a set-theoretic reductionist—who insists that each branch of (classical) mathemat-
ics ultimately reduces to (pure) set theory—can invoke the set-theoretic Axiom
of Extensionality to obtain the Identity of Leibniz-Indiscernibles−in the signature
whose only primitive is∈.
Doubtless, some philosophers will complain that these ‘cheap’ routes to a ver-
sion of the identity of indiscernibles get matters ‘back to front’. They will complain
that the distinctness of _a_ and _b_ should _ground_ the fact that _a_ and _b_ are discernible
(in some way), and not vice versa.^27 However, this complaint is orthogonal to our
question. We have only been considering _whether_ indiscernible objects are iden-
tical. We are not here especially interested in whether _identity_ or _indiscernibility_ is
‘metaphysically prior’ (or whether that question even makes sense).
To be clear: we have not tried to argue that some version of the identity of in-
discernibles _is_ correct. We have simply noted that mathematical practice does not

(^26) Alternatively, we might say that they entail the existence of haecceitistic properties, since _a_ uniquely
possesses the property of being a member of{ _a_ }.
(^27) Versions of this argument are discussed by Hawley (2009: 108–11).


374 indiscernibility

really seem to steer us in either direction. Indeed, for everything said so far, it is not
at all clear that objects-platonists should feel under _any_ pressure to take any partic-
ular stance on issues relating to the identity of indiscernibles.

```
Ante rem structuralism and indiscernibles
```
In fact, we think that the version of objects-platonism which is most likely to have
a vested interest in the identity of indiscernibles is Shapiro’s ante rem structural-
ism. We introduced this back in §2.4, and we have mentioned it several times since,
but we will recap the general idea. Shapiro believes that mathematics is about ante-
structures (he calls them ‘structures’, but they are not structures in the sense of Def-
inition 1.2). These are supposed to be abstract objects, consisting of _places_ , with
certain intra-structural relations holding between them.^28
To explain why Shapiro’s ante rem structuralist might find the identity of indis-
cernibles interesting, note the following. According to Shapiro, the _essence_ of a place
in an ante-structure is its intrastructural relations to the (other) positions in the
ante-structure.^29 Clarifying this, Shapiro writes:

The number2 [...] has lots of properties [.... But] every property that2 enjoys comes in
virtue of its being that place in the natural number structure. This is because that is what
2 is.^30

Shapiro seems to be suggesting that there are properties which are _essential_ to 2, and
that these essential properties (at least partially) ground its _accidental_ properties.
But, if we accept that places in structures have certain essential properties, then we
can formulate new versions of the identity of indiscernibles:

_Identity of Essential-Indiscernibles (scheme).If a and b are places in the same struc-
ture, and they are indiscernible in the signature appropriate to the essential properties of
that structure, then a_ = _b._

We say that this is a scheme, since there will be different versions of this principle,
corresponding to the different grades of indiscernibility. So, we could replace ‘in-
discernible’ in this scheme with ‘one-indiscernible−’, or ‘two-symmetrical’, or any-
thing else. But the idea is that, in restricting our attention to _essential_ properties, we
will rule out ‘cheap’ routes to discernibility.^31
Shapiro, however, rejects _all_ of these principles, and for a very simple reason.
Shapiro believes that there are _cardinal ante-structures_. According to Shapiro, these
ante-structures consist _only_ of places, with _no_ essential (intra-structural) properties

(^28) Shapiro (1997: 73–4).
(^29) See Shapiro (1997: 5–6, 72, 2006a: 114–21).
(^30) Shapiro (2006a: 121).
(^31) See e.g. Shapiro (2006a: 140).


```
15.3. the identity of indiscernibles 375
```
or relations. The signature appropriate to the such structures is, then, the empty
signature; and so the places in a cardinal ante-structure are indiscernibles according
to _any_ grade of indiscernibility (short of _bare identity_ ).^32 As such, Shapiro rejects
every version of the principle of the identity of essential-indiscernibles, and allows
‘that two distinct objects can [...] have _all_ of their essential properties in common’.^33
There are clear parallels between Shapiro’s stance, here, and Leitgeb and Lady-
man’s. Leitgeb and Ladyman also argued against (any form of) the identity of indis-
cernibles, by considering structures with, crudely, nothing much going on in them.
However, Leitgeb and Ladyman claimed to appeal to little more than a face-value
reading of mathematical practice.^34 Shapiro, however, explicitly puts his point in
metaphysically loaded terms, speaking of _essential_ properties. So our earlier reser-
vations concerning Leitgeb and Ladyman’s argument need not apply directly to
Shapiro’s approach.
Still, we _do_ have a reservation concerning Shapiro’s argument: we are unclear
which properties should count as _essential_. Consider Shapiro’s _cardinal-three ante-
structure_. Whatever else we want to say, we must surely be allowed to make the in-
nocuous mathematical claim: _there are exactly six symmetries on the cardinal-three
ante-structure: the trivial symmetry, three symmetries which simply swap two places
and leave the third place undisturbed, and two symmetries which act non-trivially on
all three places_. Here, then, we are committed to thinking that there are three _dif-
ferent_ functions which swap different pairs of places. Moreover, it is unclear (to
us) why the existence of these functions should not count as an _essential_ feature of
the cardinal-three ante-structure. But, if the existence of these functions is an _es-
sential_ feature of the cardinal-three ante-structure, then the places in that structure
will be (to some extent) discerned by their essential properties. For example: if the
three symmetries _h_ 1 , _h_ 2 and _h_ 3 are implemented via unique two-place predicates
_Rh_ 1 , _Rh_ 2 and _Rh_ 3 , which are thought of as capturing essential relations, then every
place becomes _one-discernible_ −from every other, for exactly one element satisfies
∃ _xRh_ 1 ( _v_ , _x_ )∧∃ _xRh_ 2 ( _v_ , _x_ ). In short: unless more can be said concerning ‘essential’
properties, then even Shapiro’s ante rem structuralist yields a _cheap_ version of the
identity of indiscernibles, in terms of essential properties.
This concludes our main philosophical commentary on indiscernibles. To cut a
long story short: within mathematics, we see no obvious reasons to get very stressed
about whether or not there are any indiscernibles.

(^32) Shapiro (2006a: 131–2, 2006b: 167).
(^33) Shapiro (2006a: 140); see also Shapiro (2006b: 170–1). This sets him against Burgess (1999: 287–8),
Hellman (2001: 193), and Keränen (2001, 2006), who suggest that Shapiro is committed to some non-trivial
version of the identity of indiscernibles. For further discussion, see MacBride (2006b).
(^34) As something like an inference to the best explanation; see Leitgeb and Ladyman (2008: 389).


376 indiscernibility

### 15.4 Two-indiscernibles in infinitary logics

In the final two sections of this chapter, we will present two different generalisations
of indiscernibility. Both sections can safely be omitted on a first reading. However,
they both round out the technical aspects of issues associated with indiscernibles,
and also provide results which will be useful in Chapters 16–17.
In this section, we discuss analogues of indiscernibility in _infinitary_ logics, with
and without identity. We start by sketching the syntax and semantics for infinitary
logics, and then show that the grades of indiscernibility for infinitary logics are sub-
sumed by the grades of indiscernibility which we have already discussed.

```
Syntax and semantics
```
In ordinary (finitary) first-order logic, given a signatureL, every first-orderL-
formula is of finite length; it contains only finitely many symbols. This feature
tracks the intuitive idea of a sentence rather well (cf. §1.6): in principle, we can gen-
erate grammatical English sentences of arbitrary finite length, just by repeated con-
junction, but natural language seems not to license _infinitely_ long sentences. Pure
mathematical logic need not, though, be similarly constrained, and nothing pre-
vents us from defining logics with infinitary sentences.
We start by tweaking the syntax of our languages. Instead of regarding conjunc-
tion and disjunction as two-place sentential connectives, we regard them as opera-
tions on sets of sentences. So, when Φ is a set of formulas (perhaps meeting some
further constraint),⋀Φ will be the (possibly infinitary) conjunction of all the for-
mulas in _φ_. Equally, instead of having our two quantifiers bind individual variables,
we have them bind _sets_ of variables. So, when V is a set of variables (perhaps meet-
ing some further constraints) and _φ_ is a formula which does not already bind any of
the variables in V, we will have a formula∀V _φ_. We can vary the constraints on Φ
and V to define different infinitary logics. So, where _κ_ and _λ_ are infinite cardinals,
_L_ + _κλ_ is the infinitary logic which, intuitively, allows up-to- _κ_ -length conjunction and
up-to- _λ_ -length quantification and the identity sign ‘=’, and _L_ − _κλ_ is the identity-free
version of the same infinitary logic. Here is the precise definition.

Definition 15.8: _For any signature_ L _, the following—and nothing else—are the
Lκλ_ (L)+-formulas _:_

_- t_ 1 = _t_ 2 _, for any_ L _-terms t_ 1 _and t_ 2 _in the sense of Definition 1.3
- R_ ( _t_ 1 , ..., _tn_ ) _, for any_ L _-terms t_ 1 , ..., _tnin the sense of Definition 1.3 and any_
    _n-place relation symbol R_ ∈L
_-_ ⋀Φ _and_ ⋁Φ _, for any set of Lκλ_ (L) _-formulas_ Φ _of size_ < _κ
-_ ∃V _φ and_ ∀V _φ, for any set of variables_ V _of size_ < _λ, and any Lκλ_ (L) _-formula_
    _φ such that if_ ∃X _or_ ∀X _occurs in φ then_ X∩V=∅


```
15.4. two-indiscernibles in infinitary logics 377
```
_We say that φ is an L_ +∞ _λ_ (L)-formula _iff φ is an L_ + _κλ_ (L) _-formula for some infinite
cardinal κ. We say that φ is an L_ +∞∞(L)-formula _iff φ is an L_ +∞ _λ_ (L) _-formula for
some infinite cardinal λ. We define the L_ − _κλ_ (L) _-formulas, the L_ −∞ _λ_ (L) _-formulas, and
the L_ −∞∞(L) _-formulas exactly similarly, except that we prohibit the occurrence of ‘_ = _’
in any formula._

We give a semantics for these infinitary languages just by tweaking the semantics
for ordinary first-order logic. On the Tarskian approach, the key clauses are:

```
M , σ ⊧¬ φ iff M , σ ⊭ φ
M , σ ⊧⋀Φ iff M , σ ⊧ φ for all φ ∈Φ
M , σ ⊧∀V φ (V)iff M , τ ⊧ φ (V)for every variable-assignment τ which agrees
with σ except perhaps on the values of the members of V
```
It is easy to see that _L_ + _ωω_ is essentially first-order logic. After all, _L_ + _ωω_ allows arbitrary
finite conjunctions, and we can achieve the same effect via finitely many uses of the
two-place connective∧. Similarly, _L_ + _ωω_ allows a quantifier to bind arbitrary finite
numbers of variables, and we can achieve the same thing via finitely many uses of a
quantifier which binds a single variable.

```
Isomorphism andL +∞∞
```
These infinitary logics are, though, much richer than ordinary first-order logic. In-
deed, _L_ +∞∞is powerful enough to pin down a structure’s isomorphism type.
Here is the intuitive way in which this is done. First, given a structure, _M_ , we
flood it with names, obtaining _M_ ○, and describe all the basic facts about _M_ ○in
terms of these names. Second: we form the (often enormous) infinitary conjunc-
tion of these facts, and existentially generalise away all the names. Finally: we add
a ‘totality fact’, essentially saying that there are no further objects to consider.
To make this idea precise, we introduce some new notation, for the infinitary
notion of an _n_ -type (compare Definition 15.1):

```
∞tp+ M ( a )={ φ is an L +∞∞(L)-formula : M ⊧ φ ( a )}
```
The following Lemma now refines the intuitive idea which we just outlined:

Lemma 15.9: _Let M and N be_ L _-structures, and leta andb be (possibly transfinite)
sequences from M and N respectively. The following are equivalent:_

```
(1)There is an isomorphism h : M Ð→ N with ̷ h ( a )= b
(2) ∞tp+ M ( a )=∞tp+ N ( b )
```
_Proof.(1)_ ⇒ _(2)._ This is a simple induction on complexity, extending the proof of
Theorem 2.3.


```
378 indiscernibility
```
_(2)_ ⇒ _(1)._ First: Let _a_ 1 , ..., _aβ_ , ... be a complete enumeration of the elements
in _M_ , of length _κ_ , such that the _initial_ part of this enumeration is just our given
_a_. (Without loss of generality, we can assume our enumeration involves no rep-
etition.) As in Definition 1.5, let _M_ ○be the signature expansion of _M_ formed by
adding new constant symbols _ca_ 1 , ..., _caβ_ , .... Now let _T_ be the set of all atomic and
negated atomic sentences _φ_ in the expanded signature such that _M_ ○⊧ _φ_.^35
Second: Take the infinitary conjunction⋀ _T_. Replace each constant _caβ_ in⋀ _T_
with the variable _vβ_ ; call this new infinitary formula _ψ_. Finally: let V be the set of
variables{ _vβ_ : _aβ_ is not in the sequence _a_ }, and consider the formula:

```
χ ( v ):=∃V( ψ ∧ ∀ x
```
```
κ
⋁
α = 1
```
```
x = vα )
```
```
By construction, M ⊧ χ ( a ). Hence, assuming (2), N ⊧ χ ( b ). And, because χ
tracks all of the atomic and negated atomic sentences, this characterises M and N
up to isomorphism.
```
```
We will exploit this Lemma in Chapter 16. But its immediate interest lies in its ability
to connect grades of symmetry with certain notions of indiscernibility:
```
```
Corollary 15.10: For any L -structure M, a and b are:
(1)one-symmetricals in M iff ∞tp+ M ( a )=∞tp+ M ( b )
(2)two-symmetricals in M iff ∞tp+ M ( a , b )=∞tp+ M ( b , a )
```
```
We can gloss this result as follows: the infinitary analogue of indiscernibility+is
symmetricality. So there is no need to complicate Theorem 15.7 by considering
grades of L +∞∞-indiscernibility; they are subsumed by the grades of symmetry.
```
```
Relativeness correspondence andL −∞∞
There is an exactly analogous connection between the grades of relativity, and
grades of indiscernibility for infinitary languages without identity. However, rather
than proving these results directly, we invoke some machinery from identity-
free model theory; specifically, the idea of quotienting a structure by Leibniz-
indiscernibility−:^36
```
(^35) The set of formulas _T_ is sometimes called the _complete atomic diagram_. The proof of this direction
of the Lemma is thus closely related to the _Diagram Lemma_ (cf. Hodges 1993: Lemma 1.4.2 p.17; Marker
2002: Lemma 2.3.3 p.44).
(^36) See e.g. Monk (1976: Exercises 29.33–34) and Casanovas et al. (1996: Definition 2.3–2.4).


```
15.4. two-indiscernibles in infinitary logics 379
```
Definition15.11: _Let M be any_ L _-structure. ThenM_ /∼ _is the_ L _-structure obtained by
quotienting M by Leibniz-indiscernibility_ −_. So its elements are_

```
[ a ] M /∼={ b ∈ M : a and b are Leibniz-indiscernibles − in M }
```
_When no confusion can arise, we dispense with the subscript, talking of_ [ _a_ ] _rather than_
[ _a_ ] _M_ /∼_. The_ L _-symbols are interpreted on the domain_ {[ _a_ ]: _a_ ∈ _M_ } _as follows, for
all_ L _-constant symbols c, all n-place_ L _-predicates R, all n-place_ L _-function symbols
f , and alla from Mn:_

```
cM /∼=[ cM ]
RM /∼={[ a ]∈[ M ] n : a ∈ RM }
```
```
fM /∼([ a ])=[ fM ( a )]
```
A key feature of quotient-structures is that they preserve satisfaction of identity-free
formulas. More precisely, when we define:

```
∞tp− M ( a )={ φ is an L −∞∞(L)-formula : M ⊧ φ ( a )}
```
a simple induction on complexity yields:

Lemma 15.12: _Let M be an_ L _-structure. For any sequencea of elements from M (pos-_

_sibly transfinite),_ ∞tp− _M_ ( _a_ )=∞tp− _M_ /∼([ _a_ ])_._

The second interesting idea from identity-free model-theory employs these
quotient-structures, and reinforces the idea—mentioned in §15.1—that relativeness
correspondences are the identity-free analogues of isomorphisms:^37

Lemma 15.13: _Let M and N be_ L _-structures, and leta andb be (possibly transfinite)
sequences from M and N respectively. The following are equivalent:_

```
(1)There is an isomorphism ̷ h : M /∼Ð→ N /∼ with h ([ a ])=[ b ]
(2)There is a relativeness correspondence H from M to N such that a 1 Hb 1 , ...,
aγHbγ , ...
```
By combining these two big ideas, we can very easily ‘lift’ Lemma 15.9 and Corollary
15.10 into their identity-free analogues:

Lemma 15.14: _Let M and N be_ L _-structures, and leta andb be (possibly transfinite)
sequences from M and N respectively. The following are equivalent:_

(^37) For this result, see any of Casanovas et al. (1996: Proposition 2.6), Bonnay and Engström (2013: §4),
and Button (2017: §4).


380 indiscernibility

```
(1)There is a relativeness correspondence H from M to N such that a 1 Hb 1 , ...,
aγHbγ , ...
(2) ∞tp− M ( a )=∞tp− M ( b )
```
_Proof.(1)_ ⇒ _(2)._ Given (1), there is an isomorphism _h_ : _M_ /∼Ð→ _N_ /∼with
̷ _h_ ([ _a_ ])=[ _b_ ]by Lemma 15.13. By Lemma 15.9,∞tp+ _M_ /∼([ _a_ ])=∞tp+ _N_ /∼([ _b_ ]),

so that∞tp− _M_ /∼([ _a_ ])=∞tp− _N_ /∼([ _b_ ])and so∞tp− _M_ ( _a_ )=∞tp− _N_ ( _b_ )by Lemma
15.12.
_(2)_ ⇒ _(1)._ Given (2), we have∞tp− _M_ /∼([ _a_ ])=∞tp− _N_ /∼([ _b_ ])by Lemma 15.12.
SinceLis set-sized, there is an _L_ −∞∞(L)-formula which states that _x_ and _y_ are
Leibniz-indiscernibles−, given by:

```
⋀{ φ ( x , x )↔ φ ( x , y ): φ is an L − ωω (L)-formula}
```
This _L_ −∞∞(L)-formula defines _identity_ in _M_ /∼and _N_ /∼. So∞tp+ _M_ /∼([ _a_ ]) =

∞tp+ _N_ /∼([ _b_ ]). By Lemma 15.9, there is an isomorphism _h_ : _M_ /∼Ð→ _N_ /∼such

that̷ _h_ ([ _a_ ])=[ _b_ ]. The result now follows by Lemma 15.13.

Corollary 15.15: _For any_ L _-structure M, a and b are:_

```
(1)one-relatives in M iff ∞tp− M ( a )=∞tp− M ( b )
(2)two-relatives in M iff ∞tp− M ( a , b )=∞tp− M ( b , a )
```
Another way to state Corollary 15.15 is as follows: the infinitary analogue of
indiscernibility−is relativity. Again, there is no need to complicate Theorem 15.7
with grades of _L_ −∞∞-indiscernibility.

### 15.5 n -indiscernibles, order, and stability

We now consider a second generalisation of indiscernibles. The notions of indis-
cernibility from Definition 15.2 only involved pairwise comparisons of elements.
Sometimes, we may want to go further. To see why, let _G_ be this graph:

```
1 2
```
#### 4 3

Clearly 1 and 2 are two-symmetricals, as are 1 and 3, and likewise 2 and 3. But the
formalisation of ‘ _x_ has an edge to _y_ and _y_ has an edge to _z_ ’ is satisfied by(1, 2, 3)but
not by(2, 1, 3), so that tp+ _G_ (1, 2, 3)≠tp+ _G_ (2, 1, 3). Hence _pairwise_ comparisons of
elements in the set{1, 2, 3}do not reflect their _trio-wise_ discernibility.


```
15.5. n -indiscernibles, order, and stability 381
```
```
n-indiscernibles andω-indiscernibles
```
To deal with this, we offer the following definition:

Definition 15.16: _Let M be an_ L _-structure and let n_ ≥ 1_. We say that a subset X_ ⊆ _M
with at least n-elements is n_ -indiscernible+ _iff for any two n-element sequences of distinct
elementsa_ =( _a_ 1 , ..., _an_ ) _andb_ =( _b_ 1 , ..., _bn_ ) _from X, we have_ tp+ _M_ ( _a_ )=tp+ _M_ ( _b_ )_.
When X_ ⊆ _M has infinitely many elements, we say that X is ω_ -indiscernible+ _iff X is
n-indiscernible_ + _for each n_ ≥ 1_._

The adjective ‘distinct’, in this definition, has the meaning that _ai_ ≠ _aj_ and _bi_ ≠ _bj_
for all 1≤ _i_ < _j_ ≤ _n_. In the case _n_ =2, this usage clearly agrees with the definition
of two-indiscernibles+from Definition 15.2, and so the notion of _n_ -indiscernible+
can be seen as a natural generalisation of two-indiscernibles+. In our example _G_ ,
from above, the set{1, 2}is two-indiscernible+, but the set{1, 2, 3}is not three-
indiscernible+. Clearly, Definition 15.16 may be modified in the obvious way to gen-
erate notions of _n_ -indiscernibles−, _n_ -indiscernibless, and even _n_ -symmetricals and
_n_ -relatives, via infinitary logics and the results of §15.4.
We now want to explain how linear orders interact with indiscernibility, in this
extended sense.

```
Orders and indiscernibles
```
Here is a simple observation: _If M defines a linear order_ < _, then no distinct elements
a_ , _b are two-indiscernibles_ +_._ (The axioms for a linear order were set out in §1.12.) To
see why, suppose for reductio that tp+ _M_ ( _a_ , _b_ )=tp+ _M_ ( _b_ , _a_ )for some _a_ ≠ _b_. Now,
either _a_ < _b_ or _b_ < _a_ : but if _a_ < _b_ , then _v_ 1 < _v_ 2 is in tp+ _M_ ( _a_ , _b_ )=tp+ _M_ ( _b_ , _a_ ), so that
_b_ < _a_ , a contradiction; and a similar contradiction ensues if _b_ < _a_. Generalising this
thought, a linear order prevents there from being any _n_ -indiscernible+set for _n_ ≥2.
(However, a linear order is _compatible_ with various notions of one-discernibility.
For example, in the rationals as a linear order, any distinct elements _a_ < _b_ are one-
symmetrical since _x_ ↦ _x_ +( _b_ − _a_ )is a symmetry sending _a_ to _b_ .)
In fact, linear orders are essentially the _only_ obstacle to indiscernibility. To see
this connection, we liberalise the notion of a linear order:

Definition 15.17: _We say that a structure M has an order iff for some n_ ≥ 1 _, there is
a_ 2 _n-place formula φ_ ( _x_ , _y_ ) _and an infinite sequence of n-tuplesa_ 1 , _a_ 2 , ... _from M such
that M_ ⊧ _φ_ ( _ai_ , _aj_ ) _iff i_ < _j. We say that a theory T_ has an order _iff there is a model M
of T which has an order._

Another way to phrase the idea that _M_ has an order, is to say that there is a definable


382 indiscernibility

relation<on _Mn_ × _Mn_ , and an infinite set _L_ ⊆ _Mn_ which need _not_ be definable,
such that( _L_ ,<)is a linear order. So ‘having an order’ is more liberal than ‘defin-
ing an infinite linear order’, since it does not require that the domain of the order
be definable.^38 The following theorem then states that having an order is the _only_
obstacle to having a model with _ω_ -indiscernibles+:

Theorem 15.18: _Let T be a complete first-order theory with infinite models. If T does
not have an order, then there is a model M of T which contains a set of ω-indiscernibles_ +_._

The proof of this theorem employs a good deal of machinery which we have not
developed here, and so we omit it.^39 But we can contextualise Theorem 15.18, by
noting a fundamental, equivalent characterisation of not having an order:^40

Theorem15.19: _Let T be a complete first-order theory with infinite models. Then T does
not have an order iff T is stable._

The notion of _stability_ mentioned here was introduced in Definition 14.11, and it
formalises the idea that a theory has few types. Putting these two theorems to-
gether, then, we find that having few types implies the existence of models with
_ω_ -indiscernibles+. This is quite intuitive: the types are the different sets of formu-
las that can be consistently satisfied by an object, and if there are very few of these
then it will be harder to discern objects from one another.
Here is another useful and immediate consequence of Theorem 15.19: any theory
which defines an infinite linear order is not stable. So, the complete theories of the
rationals or the reals, in any signature including<, are not stable.
Indeed, stability is the exception, rather than the rule, amongst complete theo-
ries. So one might well ask whether there is anything similar to _ω_ -indiscernibles+
in non-stable contexts. To our knowledge, the closest idea is the following:

Definition 15.20: _Let_ ( _L_ ,<) _be an infinite linear order and let X_ ={ _ai_ ∈ _M_ : _i_ ∈ _L_ }
_be a set of elements of a model M indexed by L. We say that X is_ order-indiscernible+
_iff_ tp+ _M_ ( _ai_ 1 , ..., _ain_ )= tp+ _M_ ( _aj_ 1 , ..., _ajn_ ) _for all n_ ≥ 1 _and all increasing sequences
i_ 1 <...< _inand j_ 1 <...< _jnfrom L._

(^38) As mentioned at the outset of this chapter, usually when considering indiscernibility one restricts
attention to formulas without parameters. It is worth then noting that Definition 15.17 is equivalent to a
version of it where parameters are allowed in the formula. For, suppose that _T_ has an order in this extended
sense, where we display the parameters _p_ as _φ_ ( _x_ , _y_ , _p_ )and where the infinite sequence is written as _ai_. Then
define _ψ_ ( _x_ , _u_ , _y_ , _v_ )to be _φ_ ( _x_ , _y_ , _u_ )and define _bi_ = _aip_. Then _ψ_ ( _x_ , _u_ , _y_ , _v_ )and _bi_ are witnesses to _T_ having
an order in the parameter-free sense.
(^39) See Marker (2002: Theorem 5.2.13 p. 184).
(^40) For a proof, see Pillay (1983: Theorem 2.15 p.22).


```
15.5. n -indiscernibles, order, and stability 383
```
A complicated argument using infinitary combinatorics shows that, for _any_ theory
_T_ with infinite models, and any infinite linear order( _L_ ,<), there is a model of _T_
containing order-indiscernibles+associated with( _L_ ,<).^41 So one can find order-
indiscernibles+in models of PA, ZFC, the theory of the reals, etc.^42

```
Sources of stability
```
We end this chapter by mentioning some important examples of stable theories.
The complex numbers in the field signature{0, 1,+,×}provide an important
example of a stable theory, and hence an important example of a theory with _ω_ -
indiscernibles+.^43 Indeed, there are very natural examples of _ω_ -indiscernibles+
here. Say that a complex number _a_ is _algebraic_ over a set _B_ of complex numbers
if _p_ ( _a_ )=0 for some polynomial _p_ ( _x_ )with coefficients from _B_ or the rationals; and
further say that a set _A_ is _independent_ if _a_ is not algebraic over _A_ ∖{ _a_ }for any _a_ from
_A_. Independent sets which are maximal—in that they cannot be further extended
and remain independent—turn out to be _ω_ -indiscernibles+, because any permuta-
tion of them extends to a symmetry on the complex field.^44
Another source of stable theories, and hence _ω_ -indiscernibles+, comes from
the simple observation that stability is preserved downwards under interpretabil-
ity (where interpretability was defined in §5.5). More precisely, _T_ and _T_ ∗are com-
plete theories with infinite models, and _T_ ∗is stable and interprets _T_ , then _T_ is also
stable.^45 So, by the above, the complete theory of any structure definable in the
complex field is stable. This includes the general linear group (the set of _n_ × _n_ ma-
trices over the complex numbers with non-zero determinant) and the special linear
group (those such matrices with determinant 1).
Other examples of stable theories generalise the complex field, in that while the
complex field is an algebraically closed structure (every non-trivial polynomial has
a root), these other stable theories are closed in some other way: for example, differ-
entially closed fields of characteristic zero are stable, as are separably closed fields.^46
But it is worth noting that the stability of a theory is sometimes very difficult to de-
termine. For example, it was only recently shown that the complete theory of a free

(^41) See Marker (2002: 179) and Pillay (1983: 6–7).
(^42) Furthermore, it turns out that: a complete theory with infinite models is stable iff all order-
indiscernibles+are _ω_ -indiscernible+. For the left-to-right direction, see Pillay (1983: 87). The right-to-left
direction follows from Theorem 15.19 and the result cited in the previous footnote. Indeed, one normally
proves Theorem 15.18 by showing that order-indiscernibles+are _ω_ -indiscernibles+in a stable theory.
(^43) Marker (2002: Corollary 4.1.18 p. 124). It is hard to show that this theory has _no_ order; but it is
easy to show that it has no linear order which respects the usual rules concerning how the order interacts
with zero, one, addition, and multiplication. If such an order<respected those rules, then: if _i_ >0 then
− 1 = _i_^2 >0, a contradiction; and if _i_ <0 then 0 <− _i_ and thus 0 <(− _i_ )^2 =−1, a contradiction again.
(^44) See Hungerford (1980: 312).
(^45) See Hodges (1993: 307).
(^46) See Marker et al. (2006: 49, 142).


384 indiscernibility

group with more than two generators is stable, despite the fact that mathematicians
have been aware of such groups since the advent of group theory.^47 By contrast, it
has been known since the 1970s that all abelian groups are stable.^48

### 15.a Charting the grades of discernibility

In this appendix, we sketch a proof of Theorem 15.7. Most of this is proved else-
where;^49 our further observations will also give a sense of the full proof.

_Proof sketch of Theorem 15.7.Two-symmetricals are two-indiscernibles_ s _, and one-
symmetricals are one-indiscernibles_ s_._ Just by Theorem 2.3.
_Two-indiscernibles_ s _are two-indiscernibles_ + _, and one-indiscernibles_ s _are one-
indiscernibles_ +_._ This is because every first-order formula is a second-order formula.
These implications would continue to hold if ‘=’ were omitted from the second-
order vocabulary, since in the full semantics for second-order logic we could define
_x_ = _y_ via∀ _X_ ( _X_ ( _x_ )↔ _X_ ( _y_ )).
_Two-indiscernibles_ + _need not be one-indiscernibles_ s_._ Consider _B_ from §15.1, the dis-
joint union of a complete countable graph with a complete continuum-sized graph.
Let _a_ be from the countable graph and _b_ be from the continuum-sized graph. Now
_a_ and _b_ are one-discernibless, since full second-order logic allows us to formulate
‘ _v_ has edges to _only countably_ many elements’. But _a_ and _b_ are two-indiscernibles+.
To see this, use Theorem 7.2(1) to build a countable Skolem hull, _H_ , of _B_ such that
{ _a_ , _b_ }⊆ _H_. Clearly _H_ consists of two (disjoint) complete countable graphs; so
there is a symmetry sending _a_ to _b_ on _H_ , so that tp+ _H_ ( _a_ )=tp+ _H_ ( _b_ )by Theorem 2.3.
Then tp+ _B_ ( _a_ )=tp+ _H_ ( _a_ )=tp+ _H_ ( _b_ )=tp+ _B_ ( _b_ )as _H_ ⪯ _B_.
_Two-indiscernibles_ s _need not be one-relatives._ LetLcontain one-place predicates
_Pn_ for all _n_ < _ω_ , and a single two-place predicate _R_. Define a structure _C_ as follows:

#### C =N

```
PCn ={ 2 n +1, 2 n + 2 }, for all 0< n < ω
RC ={(1, 2 n + 1 ): 0< n < ω }∪{(0, 2 n ): 0< n < ω }
```
We can represent _C_ more perspicuously as follows:

(^47) See Sela (2013).
(^48) This follows from the stability of modules. See Hodges (1993: 660).
(^49) Button (2017: §3).


```
15.a. charting the grades of discernibility 385
```
```
1 3 P 1 4 0 2
5 P 2 6
7 P 3 8
9 P 4 10
⋮ ⋮
```
We first show that 0 and 1 are not one-relatives. For reductio, suppose there is a
relativity _H_ with 0 _H_ 1. Then since _H_ ’s domain is the whole of _C_ , we have 2 _Hy_ for
some _y_ ∈ _C_. Since 0 _H_ 1, 2 _Hy_ and _RC_ (0, 2), we have _RC_ (1, _y_ ). So _PCn_ ( _y_ ), for some
_n_ ≥1. Now since 2 _Hy_ and _PCn_ ( _y_ ), we have _PCn_ ( 2 ), a contradiction, as required.
We now show that 0 and 1 are two-indiscernibless. Let _φ_ ( _x_ , _y_ )be any second-
orderL-formula with free variables displayed, and let _Cφ_ be _C_ ’s reduct to the signa-
ture consisting of just the _finitely_ manyL-symbols appearing in _φ_. For each of the
finitely many one-place predicates _Pi_ appearing in _φ_ , both 0 and 1 are connected
via _R_ to exactly one entity picked out by _Pi_ ; and both are connected to a countable
infinity of entities picked out by no one-place predicate occurring in _φ_. So 0 and 1
are two-symmetricals in _Cφ_ , so that _Cφ_ ⊧ _φ_ (0, 1)↔ _φ_ (1, 0). Since _φ_ was arbitrary,
_C_ ⊧ _φ_ (0, 1)↔ _φ_ (1, 0).



