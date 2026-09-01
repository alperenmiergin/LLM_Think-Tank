**Kaynak:** [[00_Context/0_Button-Walsh_Philosophy_and_model_theory/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

## 2 Permutations and referential indeterminacy

In Chapter 1, we introduced some of the most basic ideas in model theory: struc-
tures, signatures, and satisfaction. In this chapter, we introduce the fundamental
notion of an _isomorphism_. This provides the technical basis for several philosophi-
cal issues made famous by Benacerraf and Putnam, concerning both the ‘intuitive’
idea of a mathematical structure and referential indeterminacy.

### 2.1 Isomorphism and the Push-Through Construction

One of the most fundamental ideas in model theory is _isomorphism_. We come to
the idea of isomorphism via the notion of a map which ‘preserves structure’.

Definition2.1: _Let M and N be_ L _-structures. A bijection h_ : _M_ Ð→ _N is an_ isomor-
phism _from M to N iff: for any_ L _-constant symbol c, any n-place_ L _-relation symbol
R, any n-place_ L _-function symbol f , and all a_ 1 , ..., _anfrom M:_

```
h ( cM )= cN
( a 1 , ..., an )∈ RMiff ( h ( a 1 ), ..., h ( an ))∈ RN
h ( fM ( a 1 , ..., an ))= fN ( h ( a 1 ), ..., h ( an ))
```
_When there is an isomorphism from M to N, we say that M and N are_ isomorphic _,
and write M_ ≅ _N._

We continue to use overlining to discuss tuples, as introduced §1.2. So _a_ will be some
sequence of elements( _a_ 1 , ..., _an_ ). We also introduce some notation to allow tuples
to interact easily with functions. The idea is to ‘push _h_ through’ sets of elements of
_M_ and _N_ , through sets of sets of elements of _M_ and _N_ , and so on:

Definition 2.2: _Let h_ : _M_ Ð→ _N be any function and leta be from M. We define_
̷ _h_ ( _a_ )=( _h_ ( _a_ 1 ), ..., _h_ ( _an_ ))_. For each X_ ⊆ _Mn, we define_ ̷ _h_ ( _X_ )={̷ _h_ ( _a_ ): _a_ ∈ _X_ }_._

_Likewise, for each Y_ ⊆℘( _Mn_ ) _we define_ ̷ _h_ ( _Y_ )={̷ _h_ ( _X_ ): _X_ ∈ _Y_ }_._


36 permutations and referential indeterminacy

In these terms, we can rewrite the last part of the definition of an isomorphism
as _h_ ( _fM_ ( _a_ ))= _fN_ (̷ _h_ ( _a_ )). Where no ambiguity can arise, we sometimes simply
write _h_ ( _a_ )rather than̷ _h_ ( _a_ ). Now, we have explicitly written out the definition of
̷ _h_ on the first couple of levels of the set-theoretic hierarchy above _M_ , but the defini-

tion generalises naturally to higher levels. In each case, we simply define the action
of _h_ ̷on a higher-level object _X_ as the set which collects together the action of̷ _h_ on
all of _X_ ’s members.
There are many equivalent ways to define the notion of an isomorphism:

Theorem 2.3: _For any_ L _-structures M and N and any bijection h_ : _M_ Ð→ _N, the
following are equivalent:_

```
(1)h is an isomorphism from M to N
(2)M ⊧ φ ( a ) iff N ⊧ φ (̷ h ( a )) , for alla from Mnand all atomic L -formulas
φ ( v ) with free variables displayed
(3) M ⊧ φ ( a ) iff N ⊧ φ (̷ h ( a )) , for alla from Mnand all first-order L -
formulas φ ( v ) with free variables displayed
(4)M ⊧ φ ( a ) iff N ⊧ φ (̷ h ( a )) , for alla from Mnand all second-order L -
formulas φ ( v ) with free variables displayed, with consequence read either via the
full or the Henkin semantics for second-order logic (see §§1.10–1.11)
```
The proof of this result involves a lengthy induction on complexity of formulas,
which we relegate to §2.b. But Theorem 2.3 has an immediate, important corollary.
Since sentences are just formulas with no free variables, the entailment (1)⇒(3)
shows that isomorphic structures make exactly the same first-order sentences true.
This idea is significant enough to merit some new terminology.

Definition2.4: _Let M and N be_ L _-structures. We say that M and N are_ elementar-
ily equivalent _, written M_ ≡ _N, iff they satisfy exactly the same_ L _-sentences, i.e. M_ ⊧ _φ
iff N_ ⊧ _φ, for all_ L _-sentences φ._

With this notation, the corollary of Theorem 2.3 which we just observed becomes:

Corollary 2.5: _If M_ ≅ _N, then M_ ≡ _N._

The _converse_ to Corollary 2.5 is false. However, showing this requires a slightly dif-
ferent set of tools, and so we defer discussion of this point until Chapter 4.
Isomorphic—and so elementarily equivalent—structures are very easy to con-
struct. Indeed, given any structure and any bijection whose domain is the struc-
ture’s underlying domain, we can treat that bijection as an isomorphism. This is, in
fact, one of the most basic constructions in model theory.


```
2.2. benacerraf’s use of push-through 37
```
_The Push-Through Construction.Let_ L _be any signature, let M be any_ L _-structure
with domain M, and let h_ : _M_ Ð→ _N be any bijection. We use h to define an_ L _-
structure, N, with domain N, by defining sN_ =̷ _h_ ( _sM_ ) _for each_ L _-symbol s._^1 _So, for
any_ L _-constant symbol c, any n-place_ L _-relation symbol R, any n-place_ L _-function
symbol f , and alla from Mn:_

```
cN = h ( cM )
RN =̷ h ( RM )={̷ h ( a ): a ∈ RM }
fN = h ○ fM ○̷ h −^1 , so that fN (̷ h ( a ))= h ( fM ( a ))
```
_In this,_ ̷ _h_ −^1 ( _b_ )= _a iff_ ̷ _h_ ( _a_ )= _b. We may writeh_ ̷: _M_ Ð→ _N to indicate that we are
considering the function built from h which induces_ L _-structure._

As mentioned, this Construction is an extremely simple way to generate new struc-
tures from old ones. But it has a surprising number of rich philosophical conse-
quences, which we explore in this chapter and the next.

### 2.2 Benacerraf’s use of Push-Through

Since the Push-Through Construction makes isomorphic copies of structures _so_
easy to come by, it is no surprise that, for many mathematical purposes, it seems
not to matter which of two isomorphic models one works with.
The most famous philosophical statement of this point is due to Benacerraf. He
focussed specifically on the fact that, when doing arithmetic, it makes no difference
whether we think of the natural numbers as Zermelo’s finite ordinals:

```
∅,{∅},{{∅}},{{{∅}}}, ...
```
or as von Neumann’s finite ordinals:^2

```
∅,{∅},{∅,{∅}},{∅,{∅},{∅,{∅}}}, ...
```
Benacerraf maintained:

For arithmetical purposes, the properties of numbers which do not stem from the rela-
tions they bear to one another in virtue of being arranged in a progression are of no con-
sequence whatsoever.^3

(^1) We can also define the construction when _M_ is a HenkinL-structure, as in Definition 1.6. The
idea is to keep pushing _h_ through the range of _N_ ’s second-order variables. So we set _N_ rel _n_ =̷ _h_ ( _M_ rel _n_ )and
_N_ fun _n_ =̷ _h_ ( _M_ rel _n_ ). Note that there is no guarantee that _RN_ =̷ _h_ ( _RM_ )should be a member of _M_ rel _n_ , even
when _M_ = _N_ ; the existence of _RN_ is guaranteed by the _ambient_ set-theoretic framework within which we
are working. Similarly, we should not expect that _N_ rel _n_ = _M_ rel _n_ or that _N_ fun _n_ = _M_ fun _n_.
(^2) By our definition of _s_ ( _x_ )in §1.b, the finite von Neumann ordinals are the sets _sn_ (∅)for each _n_.
(^3) Benacerraf (1965: 69-70).


38 permutations and referential indeterminacy

Otherwise put: for arithmetical purposes, all we require is that the progression is
both long enough and also appropriately structured. Since we can always use the
Push-Through Construction to induce the appropriate structure, this reduces to
the requirement that we have _enough_ things.
Such observations suggest that mathematicians—and so, perhaps, philoso-
phers—can typically focus only on ‘mathematical structure’, informally construed.
Moreover, this attitude is reflected in some parts of mathematical practice. Mathe-
matical discourse is rich with apparent definite descriptions of mathematical struc-
tures, like ‘ _the_ natural number structure’ or ‘ _the_ Klein four-group’; but, given the
Push-Through Construction and related issues, it is equally rich with the idea that
we only care about the identity of such entities ‘up to isomorphism’.
This motivates a compelling idea: _mathematical structures, as discussed informally
by mathematicians, are best explicated by isomorphism types_. An _isomorphism type_ is
just a class of isomorphic models.^4
We discuss this idea in much more detail in Part B, under the name _modelism_. For
now, though, we should perhaps stress that this explication need not be presented as
an _ontological_ hypothesis. The point of treating informal-structures as isomorphism
types is that it will allow us to deploy model theory when discussing philosophical
issues that arise within mathematics. The idea, then, is to think of model theory as
a branch of _applied mathematics_ , whose target area of application is mathematical
discourse and mathematical practice (cf. §1.5).
In particular, if a mathematician claims that the theory of arithmetic picks out ‘ _the_
natural number structure’, the idea will be that the theory of arithmetic picks out a
particular equivalence class of isomorphic models. This is a very natural claim to
make, in the case of arithmetic. But we should emphasise that not every mathemat-
ical theory is like the arithmetic in this respect. Group theory does not aim to pick
out any particular mathematical structure (informally construed): the whole _point_
of group theory is that it can be applied to many different mathematical areas, such
as modular arithmetic, certain classes of permutations, and so forth. Similar points
hold for theories governing rings, fields, topologies, and so on. Following Shapiro,
we call these kinds of theories _algebraic_.^5 These are to be contrasted with _univocal_
theories, like arithmetic, which aim to ‘describ[e] a certain definite mathematical
domain’^6 or to ‘specify _one particular interpretation_ ’,^7 loosely speaking.
This kind of view can, however, easily lead to the view that mathematical lan-
guage displays a high degree of referential indeterminacy, even for univocal theo-

(^4) Unfortunately, there is an infelicity here. A model theorist’s structures are always relative to a specific
_signature_. Consequently, the natural numbers in the signature{0, _S_ }induce a _different_ equivalence class of
isomorphic structures than the natural numbers in the signature{ _S_ }. We revisit this in Chapter 5.
(^5) Shapiro (1997: 40–1).
(^6) Grzegorczyk (1962: 39).
(^7) Kline (1980: 273).


```
2.3. putnam’s use of push-through 39
```
ries. Suppose that we do, indeed, hold that when we talk about ‘the natural num-
bers’, we are really just discussing a particular isomorphism type. Importantly, no
single object in that isomorphism type can be thought of as _the_ natural number 27,
for example. Rather, every structure in that isomorphism type has its own 27thel-
ement. Moreover, by considering the Push-Through Construction, every object
is the 27thelement of _some_ model of arithmetic. So, when we consider the arith-
metical term ‘27’, there is no _single_ object in the isomorphism type for that term
to pick out.^8 Indeed, on this view, if ‘27’ refers at all, then it surely refers to all of
‘the 27s’ of all of the isomorphic models equally, i.e. it refers to _every_ object equally.
And this is just to say that the our arithmetical vocabulary is radically referentially
indeterminate.

### 2.3 Putnam’s use of Push-Through

We just used the Push-Through Construction to motivate a focus on ‘mathematical
structure’ (informally construed). In turn, this led us to consider referential inde-
terminacy within mathematics. But an equally celebrated use of the Push-Through
Construction, made famous by Putnam, leads to referential indeterminacy more
directly.^9

```
The permutation argument
```
Philosophers sometimes use model theory to explicate the intuitive notions of ref-
erence and truth. To take a toy example, consider a simple theory, stated in natural
English, consisting of three sentences: ‘Ajax is a cat’, ‘Betty is a cat’, and ‘Chad is not
a cat’.^10 We might formalise this using a one-place predicate, _C_ , and three constant
symbols, _c_ 1 , _c_ 2 , _c_ 3 , as the following theory:{ _C_ ( _c_ 1 ), _C_ ( _c_ 2 ),¬ _C_ ( _c_ 3 )}. We can then
provide a model of this theory, _M_ , as follows:

```
M ={Ajax, Betty, Chad} cM 1 =Ajax
CM ={Ajax, Betty} cM 2 =Betty
cM 3 =Chad
```
Now we think of _M_ as explicating the reference relation. Its formal signature tracks
our natural language vocabulary, with, for example, ‘ _c_ 1 ’ acting as a surrogate for the
English word ‘Ajax’, and ‘ _C_ ’ acting as a surrogate for our predicate ‘...is a cat’. And,

(^8) Few formal languages have ‘27’ as a primitive term, but we can just use the term _S_ (^27) ( 0 ), as defined
in ( _numerals_ ) of §1.13.
(^9) The idea has a long history; for details, see Button (2013: 14fn.1–2, 18fn.7, 27fn.2).
(^10) For the toy, see Putnam (1977: 484) and Button (2013: 14–15).


40 permutations and referential indeterminacy

viewed thus, _M_ explicates reference as follows: the name ‘Ajax’ refers to Ajax, the
name ‘Betty’ refers to Betty, the name ‘Chad’ refers to Chad, and the predicate ‘...is
a cat’ picks out the only (relevant) cats, namely Ajax and Betty. Similarly, the fact
that _M_ ⊧ _C_ ( _c_ 1 )is taken to explicate why ‘Ajax is a cat’ is _true_.
With this explication as a backdrop, Putnam used model theory to raise philo-
sophical questions about reference. Suppose we start with a model which makes
true everything which, intuitively, _should_ be true. (The theory this model satisfies
will, of course, be much more complicated than our toy theory, but the idea is the
same.) Putnam now uses a Push-Through Construction to generate a distinct but
isomorphic model. Since the two models are isomorphic, they make true exactly
the same sentences; but since they are distinct, they differ on the (explicated) ref-
erence of some symbol. And this raises a philosophical question: What makes one
model, rather than the other, a better explication of the reference relation? More
briefly: _What, if anything, fixes reference?_
Putnam focussed specifically on the case where we generate a new model by per-
muting the underlying domain of the given model, rather than by substituting in
new objects; hence his argument is called the _permutation argument_. We can illus-
trate this with our toy example. Let _h_ be a permutation on our earlier domain, _M_ ,
such that _h_ (Ajax)=Betty and _h_ (Betty)=Chad and _h_ (Chad)=Ajax. Then the
model we generate by the Push-Through Construction, _N_ , has the same domain as
our original model, but differs on the interpretation of every symbol:

```
N =̷ h ( M )= M cN 1 = h ( cM 1 )=Betty
CN =̷ h ( CM )={Betty, Chad} cN 2 = h ( cM 2 )=Chad
cN 3 = h ( cM 3 )=Ajax
```
So, comparing the rival explications of reference provided by _M_ and _N_ , we must
now ask why our predicate ‘...is a cat’ picks out Ajax and Betty (as _M_ suggests)
rather than Betty and Chad (as _N_ suggests).
The issue generalises rapidly. By Pushing-Through, we can see that any name
could be taken to refer to _anything_ , that any one-place predicate could be taken to
pick out _any_ collection of things (provided only that there are enough of them), and
similarly for all the other expressions of our language. We will stare into the abyss
of _radical referential indeterminacy_ , where every word refers equally to everything,
which is just to say that nothing refers at all.^11

```
Preferable models
```
A natural reaction to Putnam’s permutation argument, and to this threat of radi-
cal referential indeterminacy, is to claim that some models are simply more _prefer-_

(^11) Concerning why this is an abyss, see Button (2013: 59–60).


```
2.3. putnam’s use of push-through 41
```
_able_ than others as candidates for explicating reference. Howsoever ‘preferability’
is spelled out, the crucial thought is that isomorphic models can differ as regards
their preferability.^12
In response, Putnam insisted that anyone advancing this line must outline the
required notion of preferability and explain why preferable models (so construed)
are better at explicating reference.^13 In doing so, Putnam maintained, his opponent
would have to provide a _theory_ of preferability. But the permutation argument es-
tablishes that _any_ theory has multiple models, _including_ this theory of preferability
(taken together, if we like, with anything else we want to say). So Putnam main-
tained that the theory of preferability is _just more theory_ —more grist to be Pushed-
Through the permutation-mill—and so cannot help to pin down reference. For
obvious reasons, Putnam’s general argumentative strategy here is called the _just-
more-theory manoeuvre_.
This manoeuvre has been widely criticised.^14 It is not hard to see why. To con-
tinue with our toy example: _M_ suggested that the predicate ‘...is a cat’ picks out
the cats, Ajax and Betty; whereas our permuted model, _N_ , suggested that the same
predicate picks out a mixture of cats and non-cats, namely Betty and Chad. This
permuted model therefore seems to ignore the _causal_ relationships that link our use
of the word ‘cat’ to the cats. This leads to the thought that a preferable model must
(among other things) respect certain causal constraints on language–object rela-
tions. In this context, the just-more-theory manoeuvre amounts to noting that we
can reinterpret the word ‘causation’. But if causation _does_ fix reference, then this
_re_ interpretation is just a _mis_ interpretation, with no philosophical significance.
We just considered glossing preferability in terms of causation. We will discuss an
alternative account of preferability, pioneered by Lewis, in §2.a. But the above is not
intended as a final word _at all_. When it comes to Putnam’s permutation argument,
as it applies generally, it is only the _beginning_ of the story.^15

```
Referential indeterminacy for moderate objects-platonism
```
In this book, however, we tend to be less concerned with physical objects, like cats
and cherries, and more concerned with _mathematical_ objects. So we will now focus
on the mathematical case.
It is easy to see that Putnam’s permutation argument and his just-more-theory
manoeuvre are more immediately threatening in mathematical contexts. In brief:

(^12) See Merrill (1980: 80) and Lewis (1984: 227–8).
(^13) Putnam (1977: 486–7, 1980: 477, 1981: 45–8, 1983: ix). For partial anticipations of this response, see
Winnie (1967: 228–9), Field (1975: 383–4), and Wallace (1979: 309–11).
(^14) See e.g. Lewis (1984: 225) and Bays (2001: 342–8, 2008: 197–207); for more references, see Button
(2013: 29fn.8).
(^15) For a much fuller story, see Button (2013: 3, 27–73). We should emphasise that Putnam never _advo-
cated_ radical referential indeterminacy, but used it as a kind of reductio against his opponents.


42 permutations and referential indeterminacy

certain rather natural positions in the philosophy of mathematics are bound, by
their own lights, to treat the notion of a preferable reference candidate as _just more
theory_. To explain this point, we will introduce a particular position within the phi-
losophy of mathematics, which we call _moderate objects-platonism_ , which must ac-
cept that mathematical language is radically referentially indeterminate. (But, as we
will explain in §2.5, we do not think that this is necessarily a _problem_ .)
Moderate objects-platonism has essentially two components: moderation and
objects-platonism. We begin with the latter. As we use the phrase, _objects-platonists_
believe that mathematical entities are genuine objects. When they hear someone
say, for example, ‘there are infinitely many prime numbers’, they take that as a face-
value existential claim. _There really are prime numbers_ , they claim, _and indeed in-
finitely many of them_. They do not want to paraphrase away this claim, to remove
the apparently existential commitment (i.e. they are not nominalists). They do not
think that this is a claim which is only to be made in the context of some ‘pretence’
that mathematicians like to indulge in (i.e. they are not fictionalists). They take
the claim it as it stands. Furthermore, objects-platonists have a minimal thesis con-
cerning the _nature_ of these mathematical objects, namely: they are abstract entities,
neither spatial nor temporal, and so in particular they are not our _creations_. (This
does not mean that they refuse to talk of ‘constructing’ mathematical entities; but
they always regard such talk as a helpful heuristic, rather than a metaphysical claim.)
Our moderate objects-platonist is an _objects-platonist_ in exactly this sense.
We now consider _moderation_. The use of this expression in this context is due to
Putnam, and it is very much a term of art, indicating a particular kind of _naturalism_.
Now, the word ‘naturalism’ has come to mean many things in philosophy,^16 but the
moderate objects-platonist buys into a very _specific_ brand of naturalism. At a very
rough first pass, the moderate has an image of human beings as closer to apes than
angels. Consequently, when she speaks of human _faculties_ , she wants those faculties
to be the kinds of things which could plausibly both have evolved within a species,
and also could have developed within an individual creature as it grew from a foe-
tus into an adult. Broadly speaking, then, she is closer aligned to empiricism than to
rationalism. And, in particular, the moderate rejects all appeals to faculties of _math-
ematical intuition_ , or anything similar, within her philosophy of mathematics. Our
moderate objects-platonist is a _moderate_ , in exactly this sense.
Admittedly, this is a somewhat rough sketch of moderate objects-platonism. But
we doubt that a more precise statement is either possible or desirable. For, on the
one hand, moderate objects-platonism is not so much a declared and precise posi-
tion, as a zeitgeisty _default_ for contemporary would-be platonists. And, on the other
hand, we do not need to offer anything more precise in order to show that moderate
objects-platonists face certain issues concerning the determinacy of reference.

(^16) See, in particular, Maddy (2005).


```
2.3. putnam’s use of push-through 43
```
Here is how those issues arise. Our moderate objects-platonist regards mathe-
matical objects as abstract entities which we do not create. Still, she thinks that we
talk about them. But, since they are abstract, she accepts that we cannot fix refer-
ence to mathematical entities by _seeing_ them, _pointing_ to them, or _interacting_ with
them in any way; her moderation rules that out. Indeed, she will follow Putnam in
rhetorically asking:

What neural process, after all, could be described as the perception of a mathematical
object? Why of _one_ mathematical object rather than another?^17

A better thought is that we come to refer to mathematical entities after some process
of mathematical education. But, for a moderate, there is only so much that educa-
tion can achieve. As Dummett quipped in this context, ‘No amount of training will
teach a chimpanzee to talk.’ Since the moderate sees humans as closer to apes than
angels, she cannot believe that the process of education ‘awakens’ something ‘latent
in the child’s mind’.^18 If learning some mathematical theory is what allows us to refer
to specific mathematical entities, then the theory cannot merely gesture in roughly
the right direction, with the slack picked up by some innate faculties (as it were).
Rather, the theories _themselves_ must precisely pin down the mathematical entities.
In a brief slogan: for the moderate objects-platonist, there can be no ‘reference by
acquaintance’ to mathematical objects; ‘reference by description’ is her only hope.
Putnam’s permutation argument kicks in at exactly this point. If a theory has any
models, then it has many distinct isomorphic models, just by the Push-Through
Construction, and every different model will differ on the explicated reference of
some expression. So the moderate objects-platonist _cannot_ hope that laying down
a formal theory will enable her to refer determinately to mathematical objects. Her
only hope has been dashed.
The moderate objects-platonist might, perhaps, try to respond by insisting that
some structures are _preferable_ over others as reference candidates. But her modera-
tion renders this move entirely ineffective. Given her moderation, she cannot think
that the preferability of one model over another consists in allowing our ‘mathe-
matical gaze’ to fall upon certain objects rather than others, or in singling out some
specific entity in mathematical intuition. But it then becomes extremely unclear
what preferability _could_ consist in. It might be reasonable to say, for example, that a
preferable model of PA should have a countable domain. (We discuss this further in
Chapter 7; recall that PA is the usual axiomatisation of first-order arithmetic, out-
lined in §1.a.) But this will not address the permutation argument at all: by the
Push-Through Construction, if there are any countable models of PA, then there
are (absolutely infinitely) many of them. No; if preferability is to _fix_ reference, it

(^17) Putnam (1980: 471); Putnam’s emphasis.
(^18) Dummett (1963: 189–90).


44 permutations and referential indeterminacy

must be that some particular entity is the _preferred_ referent of ‘1’, that some other
particular entity is the _preferred_ referent of ‘2’, and so forth. But this just seems in-
compatible with the moderate objects-platonist’s own naturalistic constraints on
what preferability could amount to.
Simply put, there is a dilemma: any notion of preferability which could fix math-
ematical reference is incompatible with moderation.^19 As such, _moderate_ objects-
platonists must embrace radical referential indeterminacy. (But an _im_ moderate
objects-platonist might yet manage to insist on determinacy of reference.)

### 2.4 Attempts to secure reference in mathematics

We have argued that objects-platonists must chose between moderation and de-
terminacy of reference. In this section, we illustrate the point by considering three
different positions in the philosophy of mathematics which have attempted to _avoid_
referential indeterminacy.

```
Shapiro’s ante rem structuralism
```
In §2.2, we discussed a mathematical-cum-philosophical focus on ‘mathematical
structure’. Shapiro has embraced this, whilst attempting to secure the _determinacy_
of reference for mathematical terms, by advancing a position which he calls _ante rem
structuralism_.
At its most basic, this position holds that mathematics is about ‘structures’. How-
ever, the kinds of thing which Shapiro calls ‘structures’ are, emphatically, _not_ struc-
tures in the sense of Definition 1.2. So, to avoid ambiguity, we will call the entities
which Shapiro postulates _ante-structures_. According to Shapiro, ante-structures are
abstract entities; they consist of _places_ , with certain intra-structural relations hold-
ing between them.^20 These abstract entities should be thought of along the lines
of universals, or platonic forms, which are abstract but can be multiply realised.
Shapiro calls such realisations _systems_ , and a _place-holder_ is an object which, on that
realisation, instantiates a particular place in the realised ante-structure.^21 Shapiro’s
_ante rem_ structuralism is then the claim that ante-structures exist independently
from the systems realising them.^22
In some senses, Shapiro’s ante-structures are rather like the isomorphism types
which, in §2.2, we considered using to explicate the informal notion of mathemati-

(^19) Cf. Hodes (1984: 127, 133–5) and McGee (1997: 35–8). Button (2013: chs.3–7) argues that the same
dilemma applies in a rather more general context, against any _external realist_.
(^20) Shapiro’s ante-structures can be compared to Resnik’s (1981, 1997) _patterns_ , and Shapiro’s places can
be compared to Resnik’s _positions_.
(^21) Shapiro (1997: 73–4).
(^22) Shapiro (1997: 9, 84–5, 109).


```
2.4. attempts to secure reference in mathematics 45
```
cal ‘structure’. But there is a crucial difference. As mentioned at the end of §2.2, no
single object in the isomorphism type of the natural numbers can be thought of as
_the_ natural number 27; rather, every structure in that isomorphism type has its own
27 thelement. By contrast, according to Shapiro, the ante-structure for arithmetic—
_the_ natural number ante-structure—contains _places_. So some particular entity is _the_
27-place in this ante-structure. And Shapiro maintains that the expression ‘27’ de-
terminately refers to _this_ position.^23 This is how Shapiro aims to secure the deter-
minacy of reference.
However, since places in ante-structures are abstract objects, we must ask
Shapiro _why_ the expression ‘27’ refers to the 27-position in the natural number
structure, rather than to any _other_ abstract entity. As others before us have noted,
we can make the question sharp by noting that the Push-Through Construction al-
lows us to create a model of arithmetic according to which ‘27’ refers to _any_ entity
we like, including any other place in the natural number ante-structure.^24 Indeed,
as it stands, the problem is a simple one. The Push-Through Construction gener-
ates _too many_ referential candidates, and postulating new types of abstract objects
only _adds_ to the embarrassment of potential referential riches.
In response, Shapiro might emphasise that the Push-Through Construction only
generates a structure in the sense of Definition 1.2, and does not generate one of
his _ante_ -structures. He may then go on to argue that ante-structures are _preferable_
reference candidates for our mathematical language. However, this would simply
return us to the dialectic of §2.3: given that all the entities involved are abstract,
it is entirely unclear _why_ ante-structures, rather thanL-structures, should count
as _preferable_. As in §2.3, this problem looks simply unanswerable if Shapiro’s ante
rem structuralism is supposed to be a version of _moderate_ objects-platonism. Con-
versely, if Shapiro’s ante rem structuralism is _immoderate_ , it is unclear why Shapiro’s
ante rem structuralism—rather than his lack of moderation—is the ‘active ingredi-
ent’ in pinning down reference.

```
Putnam’s internal realism (constructivist reading)
```
Putnam’s own response to his permutation arguments was not structuralist, nor did
it involve embracing referential indeterminacy. Instead, he abandoned moderate
objects-platonism in favour of a position he called ‘internal realism’. Famously, he
claimed that ‘Models are not lost noumenal waifs looking for someone to name
them; they are constructions within our theory itself, and they have names from
birth.’^25 And he later supplemented this pregnant idea with the claim:

(^23) Shapiro (1997: 14, 55fn.15, 141fn.8).
(^24) See Balaguer (1998b: 80–4), Hellman (2001: 193–6, 2005: 546), and McGee (2005: 151).
(^25) Putnam (1980: 482).


46 permutations and referential indeterminacy

If, as I maintain, ‘objects’ themselves are as much made as discovered, as much products
of our conceptual invention as of the ‘objective’ factor in experience [...], then of course
objects intrinsically belong under certain labels; because those labels are the tools we used
to construct a version of the world with such objects in the first place. But _this_ kind of
‘Self-Identifying Object’ is not mind-independent.^26

In this last quote, Putnam speaks of ‘objects’ in general, not just mathematical ob-
jects. However, the basic thought at this time seems to be as follows: we name the
objects at the same time as we construct them, and this is what makes some mod-
els preferable as explications of reference. Evidently, though, this involved reject-
ing moderate objects-platonism, for our objects-platonist denies that we _construct_
mathematical entities (in any serious sense).
Putnam did not, however, persist with this constructivist imagery for very long.
His ‘internal realism’ moved on in rather different directions,^27 and he made very
few further remarks about the specific topic of reference to mathematical entities.
In Chapters 9–12, we will extract some ideas from Putnam’s ‘internal realist’ writ-
ings which do _not_ require any constructivist imagery (but which, equally, do not
secure determinacy of mathematical reference). Here, we simply want to note the
availability of a constructivist position, which might secure referential determinacy.

```
Syntactic Priority
```
Finally, we consider a version of objects-platonism which embraces a principle
known as the _Syntactic Priority Thesis_. This Thesis has come to be associated with
Hale and Wright’s neo-logicism,^28 but its simplest formulation is due to Dummett:

If a word functions as a proper name, then it _is_ a proper name [...] If its syntactical func-
tion is that of a proper name, then we have fixed the sense, and with it the reference, of a
proper name.^29

Moreover, some incarnations of the Syntactic Priority Thesis were supposed to
_block_ the indeterminacy of reference. For example, Hale claims that ‘when the truth
values of all sentences containing a singular term have been fixed, there can be no
_further_ question about which object it stands for’.^30

(^26) Putnam (1981: 54).
(^27) For details, see Button (2013: chs.9–11, 18–19).
(^28) Wright (1983: 14, 24, 51–3, 171fn.5).
(^29) Dummett (1956: 494). Duke (2012: chs.3–4) emphasises the importance of this early article in Dum-
mett’s later thought e.g. Dummett (1981: 497). Dummett developed this from Frege’s (1980: x) ‘context
principle’, and Wright (1983: 14, 171fn.5) is clear that he regards the Syntactic Priority Thesis as deriving
explicitly from Dummett.
(^30) Hale (1987: 229–30); and on the previous page he insists that anyone who runs Putnam’s permutation
argument must deny the context principle.


```
2.5. supervaluationism and indeterminacy 47
```
At first glance, Hale’s claim might seem bizarre. After all, by Corollary 2.5, all
models generated by the permutation argument are elementarily equivalent, so
that the ‘truth values of all sentences’ are undisrupted by the reinterpretation, even
though they differ on the explicated reference of any terms you like. What this
shows, though, is just that those who advance the Syntactic Priority Thesis as a
cure for referential indeterminacy must have a somewhat different conception of
_reference_ in mind.^31
Whatever exactly that different conception amounts to, though, it seems implau-
sible that any purely _syntactic_ test could settle whether or not a term refers determi-
nately. This point has been well made by Rosen.^32 Syntax does not seem to tell me
that ‘bald’ is a vague predicate; but, if we think of predicates as referring at all, we
might well say that ‘bald’ refers somewhat indeterminately. We may happily speak
of ‘ _the_ third sock’ that was mistakenly included in the pair of socks we bought, even
though all three socks are qualitatively alike, so that ‘ _the_ third sock’ does not pick
out any particular sock.^33 You will never meet _the_ man on the Clapham omnibus,
Joe Sixpack, or Otto Normalverbraucher, even though all of these characters were
introduced using grammatically singular expressions. Perhaps most pertinently: a
specification of a legal procedure may discuss ‘the plaintiff’, in the singular, but the
case at hand will determine who the plaintiff is. So it may be with numbers: num-
ber theory discusses ‘the number 27’, in the singular, but context may determine
what the number 27 is. We revisit some of these examples in §9.4 and §15.2. For
now, our point is just that syntax _alone_ provides little clue as to whether reference
is determinate.

### 2.5 Supervaluationism and indeterminacy

The considerations of §§2.2–2.4 have led many philosophers simply to _embrace_ the
idea that mathematical terms refer indeterminately.^34 To close the chapter, though,
we will explain why this seems to be entirely _compatible_ with moderate objects-
platonism. In particular, we will sketch a _supervaluational_ semantics which mod-

(^31) See Wright (1983: 82–3), in particular the discussion of the point that: ‘After all, what we state met-
alinguistically by “ _a_ has reference” is just the object-language “(∃ _x_ ) _x_ = _a_ ”’. Cf. also Dummett (1981: 508).
(^32) Rosen (2003: 231ff). Hale and Wright (2003: 253) respond to Rosen by toning down what the Syn-
tactic Priority Thesis could hope to show. For further criticism of what the neo-Fregean can hope to learn
from studying syntax, see Trueman (2014).
(^33) Cf. Shapiro (2012: 393, 396).
(^34) For example: McGee (1997: 36) regards the question of ‘how mathematical terms come to have de-
terminate referents’ as ‘insoluble’. Balaguer (1998b: 84, 1998a: 73) says that platonists ‘have to claim that
while [theories like PA] truly describe collections of abstract mathematical objects, they do not pick out
_unique_ collections of such objects’. MacBride (2005: 581) similarly writes that ‘indeterminacy appears to be
an ineliminable aspect of reference to mathematical objects’. Indeed, the prospect of referential indetermi-
nacy is also sometimes used as evidence for the conclusion that mathematical language does not refer at all
(cf. Hodes 1984: 139).


48 permutations and referential indeterminacy

erate objects-platonists can adopt, but which allows for referential indeterminacy.
The core idea behind supervaluationism is to define truth (simpliciter) in terms
of what happens in all appropriate models.^35 More specifically, we schematically
stipulate that, for each sentence _φ_ in the relevant language:

```
(a) φ is true iff every appropriate model satisfies φ
(b) φ is false iff every appropriate model satisfies¬ φ
(c) φ is indeterminate otherwise
```
Now, this stipulation is schematic, since exactly which models count as ‘appropriate’
will depend upon the purpose at hand. But the crucial point is that the appropriate
models can beL-structures, exactly as defined in Definition 1.2, even whilst the
resulting semantics allows for _indeterminacy_ of truth value. Let us see this in action.
For everything we have said in this chapter, the moderate objects-platonist may
be able to insist that the _appropriate models of arithmetic_ are all isomorphic. We will
extensively criticise this suggestion in Chapter 7; but let us grant it for now. In that
case, it is easy to show that the supervaluational semantics will entail both that:

```
(i)no arithmetical sentence is indeterminate ; and
(ii)no arithmetical expression refers determinately
```
Concerning (i): let _φ_ be any arithmetical sentence, and let _M_ be any appropriate
model of arithmetic. Either _M_ ⊧ _φ_ or _M_ ⊧¬ _φ_. Now suppose also that _N_ is an
appropriate model. Since all appropriate models are (by hypothesis) isomorphic,
_M_ ≅ _N_. So, by Corollary 2.5, _M_ ≡ _N_. So if _M_ ⊧ _φ_ then _N_ ⊧ _φ_ ; and if _M_ ⊧¬ _φ_
then _N_ ⊧¬ _φ_. Generalising: either every appropriate model satisfies _φ_ , so that _φ_ is
_true_ by (a); or every appropriate model satisfies¬ _φ_ , so that _φ_ is _false_ by (b).
Concerning (ii): let _a_ and _b_ be two different abstract entities. Then, by a Push-
Through Construction, there is an appropriate model where ‘0’ picks out _a_ , and a
different appropriate model where ‘0’ picks out _b_. So, if we expand the notion of
an _appropriate model_ to accommodate semantic vocabulary,^36 then by (c) it will be
indeterminate what ‘0’ refers to. Generalising the point, _no_ arithmetical word will
refer determinately to any particular thing.
It is worth noting, though, that the use of supervaluational semantics does not
stop at the level of arithmetical vocabulary, but percolates upwards through the
model theory itself. To illustrate the point, let us continue with our example of
two abstract objects, _a_ and _b_. Because the moderate objects-platonist cannot refer
determinately to _any_ abstract entity, she cannot refer determinately to _a_ rather than

(^35) While natural in any discussion of indeterminacy (such as in vagueness), it is rarer to see this kind
of supervaluational approach explicitly developed in the philosophy of mathematics. Some exceptions are
McGee (2005: 151), Hodes (1990: 365, 1991: 158), and Walsh and Ebels-Duggan (2015: §8).
(^36) There are many ways to do this. One is to expand the notion of an appropriate model, so that it in-
cludes semantic as well as arithmetical vocabulary. Another is to expand the supervaluational semantics to
open-formulas, offering e.g.: _φ_ ( _v_ )is _true ofa_ iff every appropriate model has _φ_ ( _a_ ). Since we have appro-
priate models _M_ and _N_ with 0 _M_ = _a_ and 0 _N_ = _b_ , we can gloss this in terms of referential indeterminacy.


```
2.6. conclusion 49
```
_b_. So she cannot tell us _which_ structure labels which entity with ‘0’. In short, she
cannot refer determinately to either of the two structures, any more than she can
refer determinately to either of the original abstract entities.
We see no intrinsic difficulty with this idea. However, it is worth observing that
the supervaluational framework yields an interesting mismatch between our nat-
ural vernacular and our formal semantics. In the example just given: within each
structure, ‘0’ refers determinately to _some_ particular abstract entity (albeit a differ-
ent entity in each case). However, the moderate objects-platonist must accept that
_our_ word ‘0’ just _could not_ pick out one abstract entity rather than any other. So:
neither of the two structures, by itself, provides a faithful model of how our natu-
ral language works. The ‘faithful model’, if there is one, comes from considering _all_
structures simultaneously.
Moreover, as Lavine notes, all of these the issues concerning names carry over to
quantifiers.^37 This is most easily seen in the case of the Robinsonian and Hybrid
approaches to semantics, where we handled quantifiers by ‘adding new names’ to
the structure (see §1.5 and §1.7). More precisely: we added new constant symbols
which, as usual, must each pick out exactly _one_ element of the domain. But, if the
initial structure’s domain consisted entirely of abstract objects, then the moderate
objects-platonist must accept that these new constant symbols cannot be thought of
as names that any human could wield, for, according to her, no human could refer
determinately to any abstract objects. As such, the notion of ‘adding new names’
must be meant in a slightly more technical sense than it may have first appeared.
Still, to provide a formal semantics, we require only _that these augmented structures
exist_ ; we do not require that we can determinately refer, in natural language, to the
entities in their domain, or to the augmented structures themselves.
In sum: moderate objects-platonists must embrace the radical referential inde-
terminacy of mathematical language. They can make explicate this using a superval-
uational semantics. And the indeterminacy of reference percolates through every
level of that formal semantics.

### 2.6 Conclusion

The philosophical content of this chapter has been generated just by repeated ap-
plications of the Push-Through Construction. The Construction showed that iso-
morphism is extremely easy to come by. And this led to two main thoughts.
First: the informal notion of ‘mathematical structure’ can, perhaps, be fruitfully
explicated via isomorphism types, i.e. classes of isomorphic structures.

(^37) Lavine (2000: 20–6). Lavine also notes that the Tarskian approach of §1.3 faces the same issue, since
moderate objects-platonists must accept that they cannot pick out any particular variable-assignment over
abstract entities.


50 permutations and referential indeterminacy

Second: moderate objects-platonists cannot plausibly maintain that mathemat-
ical terms refer determinately. Crudely: moderation rules out any plausible mech-
anism of reference to abstract entities that were not our own creations.
The two uses of the Push-Through Construction which brought us these morals
are clearly linked both technically and philosophically. They are also, how-
ever, linked _historically_. Benacerraf’s famous 1965-paper grew out of his 1960-
dissertation,^38 where he writes:

One day in conversation, Putnam made very suggestive remarks in the course of a dis-
cussion of the question ‘Can, or should, the numbers be identified with sets of sets?’ His
point was to reject the question, arguing that it arises from a distinction between number
words and numbers parallel to that between, say, furniture words and furniture, and that
in the former case the distinction was unwarranted.^39

Moreover, some of Putnam and Benacerraf’s considerations were motivated by a
reading of chapter 2 of Cassirer’s 1910-book, in which Cassirer defends Dedekind
against Frege on the foundations of arithmetic. Cassirer writes:

It is a fundamental characteristic of the ordinal theory [of natural number] that in it the
individual number never means anything by itself alone, that a fixed value is only ascribed
to it by its position in the total system.^40

To our ears, this both harkens back to Dedekind,^41 and heralds modern structural-
ists like Shapiro and Parsons.

### 2.a Eligibility, definitions, and Completeness

In §2.3, we discussed responses to Putnam’s permutation argument which invoke
_preferability_. In this appendix, we consider a recent discussion of referential inde-
terminacy which links Lewis’s views on preferability to a result which we will en-
counter in Chapter 4. Consequently, some readers may want to read ahead before
returning to this appendix. And this appendix can be safely omitted, at least on a
first reading, since nothing said here affects the conclusions of this chapter.
Lewis famously held that basic physical properties are maximally _eligible_ as the
referents of our predicates.^42 Subsequent authors have suggested, more broadly,
that certain fundamental properties (which need not be physical) are maximally
eligible. In this appendix, we use the word ‘eligible’ in this sense, without wishing

(^38) The dissertation Benacerraf (1960) is listed as itemb1 in Benacerraf’s bibliography in Morton and
Stich (1996: 263) and its relation to his papers is discussed in Benacerraf (1996: 24).
(^39) Benacerraf (1960: 162).
(^40) Cassirer (1910: 47–8).
(^41) Dedekind (1888: ¶¶73, 134).
(^42) Lewis (1984: 227–8).


```
2.a. eligibility, definitions, and completeness 51
```
ourselves to endorse either the notion of fundamentality at work, or the thought
that eligibility (so construed) has much to do with reference.
As outlined, eligibility is first and foremost a feature of the possible _referents_ of ex-
pressions, such as the set of electrons. But if eligibility is to block Putnam’s permu-
tation argument, then we need a way to measure the eligibility of entire _structures_.
The simplest way to do this would be if the eligibility of a model were a function of
the eligibility of its referents. Lewis made some suggestions in this direction him-
self, and these have recently been developed by Williams.^43 His idea is as follows.
We first assume that our model-theoretic _metalanguage_ has primitive predicates for
each of the maximally eligible referents.^44 To compute the eligibility of a structure,
we then simply consider the length of the metalinguistic definition of the structure.
Or rather, because a structure has multiple definitions if it has any, we say: _The eli-
gibility of M is the reciprocal of the length of the shortest possible definition of M in the
metalanguage._ So, the shorter the definition, the more eligible the structure.
To see how this is supposed to deal with Putnam’s permutation argument, let _M_
be any structure, let _h_ be any bijection with domain _M_ , and use the Push-Through
Construction to generate a structure _N_ isomorphic to _M_. To determine whether
_M_ or _N_ is more eligible, we must compare the lengths of their shortest possible
definitions. Let _D_ be a shortest definition of _M_. Crucially, there is no guarantee
that any of _N_ ’s definitions is as short as _D_. Indeed, the only definition of _N_ which
is guaranteed to exist, in general, involves inserting the symbol ‘ _h_ ’ into _D_ several
times, and this definition is of course strictly longer than _D_ itself. In short, and as
desired: isomorphic models need not be equally eligible.
This blunts some of the force of Putnam’s permutation argument. However, hav-
ing proposed the idea, Williams goes on to argue that it is ultimately _ineffective_ in
dealing with the permutation argument, claiming that Gödel’s Completeness The-
orem can be used to rekindle the threat of referential indeterminacy.^45 (We state
and prove the Completeness Theorem in §4.a.) His reasoning is as follows. Sup-
pose we start with a theory of the physical world, _T_ , in a finite signature, which is
consistent with (a formalisation of) the claim ‘there are exactly _n_ things’. By the
Completeness Theorem 4.24, there is a model _N_ of _T_ whose domain has exactly _n_
elements. Following Williams, we can take these elements to be the natural num-
bers 1 through _n_. Since _N_ is finite, ‘brute force’ guarantees that there will be a finite
description of _M_ : just explicitly list each and every aspect of the interpretation.
But now, according to Williams, there is a genuine threat: if the natural numbers
are fundamental entities, then this ‘brute force’ description might be very short, so
that _N_ is extremely eligible; but _N_ is clearly ‘unintended’, for its domain consists of

(^43) Williams (2007); see also also Hale (1987: 222) and Hale and Wright (1997: 438). Many thanks to
Williams for discussion on the material in this section.
(^44) Metaphysicians may think of this as Ontologese, if they like; see e.g. Sider (2011: 171–3).
(^45) Williams (2007: 381–93).


52 permutations and referential indeterminacy

abstract numbers and not physical things. In summary: in this case, an ‘eligibility
benchmark’ can be established by brute force, and we have no guarantee that the
genuinely ‘intended’ model meets the benchmark.^46
In response, we note that Williams’s observation here has very little to do with the
Completeness Theorem. The _Push-Through Construction_ is what allows us to take
_N_ ’s domain to be the natural numbers 1 through _n_.^47 The Completeness Theorem
first gives us a model, _M_ , with _n_ elements; since it has _n_ elements, there is a bijec-
tion _h_ : _M_ Ð→{1, ..., _n_ }; and now we can generate _N_ using the Push-Through
Construction. So it is just the Push-Through Construction which enables us to say
that brute force will establish an ‘eligibility benchmark’ for any theory in a finite sig-
nature with a finite model. Williams’s appeal to the Completeness Theorem adds
only this: _if_ it is consistent to add to a theory the claim ‘there are exactly _n_ objects’,
_then_ that theory has a model with exactly _n_ elements. _Pace_ Williams, we cannot see
why this increases the threat of referential indeterminacy.
Moreover, there is a serious risk of getting tangled in the weeds here. The entire
discussion trades on measuring a structure’s eligibility by the length of its metalin-
guistic definition. This is a poor measure for several reasons, but a simple one is
that it only yields results for structures which are explicitly definable in the metalan-
guage using finitely many sentences. This is, of course, why we could only establish
an ‘eligibility benchmark’ by brute force for theories in finite signatures with finite
models.^48 But if we want to consider theories with infinite models—and we often
will—then all bets are off again.
Indeed, all we are really entitled to infer from the preceding discussion is this: if
the eligibility of a model is a function of the eligibility of its referents, then _maybe_
the ‘intended’ model will fail to be maximally eligible. And maybe not. Not enough
has been said about _eligibility_ to have any real clue.

### 2.b Isomorphism and satisfaction

This appendix presents the inductive proof of Theorem 2.3. We leave the case of (4)
as an exercise for the reader. During the proof, we work with multiple _ni_ -tuples, and
we subscript these; so for example _a_ 1 =( _a_ 1,1, ..., _a_ 1, _n_ 1 )and _a_ 2 =( _a_ 2,1, ..., _a_ 2, _n_ 2 ).

Theorem(2.3): _For any_ L _-structures M and N and any bijection h_ : _M_ Ð→ _N, the
following are equivalent:_

(^46) Williams (2007: 388).
(^47) So when Williams (2007: 381) says that nothing stops us from ‘setting up the model...with any do-
main we choose, so long as the size is appropriate’, he implicitly invokes the Push-Through Construction.
(^48) This may be partially mitigated by using more sophisticated measures of eligibility than the mere
length of a structure’s definition, e.g. perhaps Kolmogorov complexity (cf. Williams 2007: 377fn.30). But
there are hard limits to how far we can hope that the eligibility of structures can be a function of definitions.


```
2.b. isomorphism and satisfaction 53
```
```
(1)h is an isomorphism from M to N
(2)M ⊧ φ ( a ) iff N ⊧ φ (̷ h ( a )) , for alla from Mnand all atomicL -formulas
φ ( v ) with free variables displayed
(3) M ⊧ φ ( a ) iff N ⊧ φ (̷ h ( a )) , for alla from Mnand all first-order L -
formulas φ ( v ) with free variables displayed
(4)M ⊧ φ ( a ) iff N ⊧ φ (̷ h ( a )) , for alla from Mnand all second-order L -
formulas φ ( v ) with free variables displayed, with consequence read either via the
full or the Henkin semantics for second-order logic (see §§1.10–1.11)
```
_Proof.(1)_ ⇒ _(2)._ Suppose (1). We first prove that, where _t_ ( _v_ )is a term with free
variables displayed, we have _h_ ( _tM_ ( _a_ ))= _tN_ (̷ _h_ ( _a_ )). This is by induction on com-
plexity of terms. The only interesting case is when _t_ = _f_ ( _t_ 1 , ..., _tk_ )for someL-
function symbol _f_ andL-terms _t_ 1 , ..., _tk_ , in which case, by (1):

```
h ( fM ( tM 1 ( a 1 ), ..., tMk ( ak )))= fN ( h ( tM 1 ( a 1 )), ..., h ( tMk ( ak )))
= fN ( tN 1 (̷ h ( a 1 )), ..., tNk (̷ h ( ak )))
```
We now turn our attention to atomicL-sentences. Where _R_ is anL-relation sym-
bol, by (1) and the above, we have:

```
M ⊧ R ( t 1 ( a 1 ), ..., tn ( an ))iff( tM 1 ( a 1 ), ..., tMn ( an ))∈ RM
iff( h ( tM 1 ( a 1 )), ..., h ( tMn ( an )))∈ RN
iff( tN 1 ( h ̷( a 1 )), ..., tNn (̷ h ( an )))∈ RN
iff N ⊧ R ( t 1 (̷ h ( a 1 )), ..., tn (̷ h ( an )))
```
The case of identity is similar, here invoking the fact that _h_ is a bijection; we leave
it to the reader.
_(2)_ ⇒ _(3)._ We prove (3) by induction on complexity of formulas. The base case
holds by assuming (2). The remaining cases are given by the recursion clauses for
satisfaction, together with the induction hypothesis (for the middle biconditional
each time). In the case of negation:

```
M ⊧¬ φ ( a )iff M ⊭ φ ( a )iff N ⊭ φ (̷ h ( a ))iff N ⊧¬ φ (̷ h ( a ))
```
The case of conjunction is similar, and we leave it to the reader. In the case of uni-
versal quantification:

```
M ⊧∀ xφ ( a , x )iff M ⊧ φ ( a , b )for all b ∈ M
iff N ⊧ φ (̷ h ( a ), d )for all d ∈ N
iff N ⊧∀ xφ (̷ h ( a ), x )
```
The middle step in this last case invokes the fact that _h_ is a bijection.


54 permutations and referential indeterminacy

_(3)_ ⇒ _(1)._ Clearly (3)⇒(2). So, assuming (2), we first show that relation sym-
bols are preserved. With _a_ 1 , ..., _an_ ∈ _M_ , we have:

```
( a 1 , ..., an )∈ RM iff M ⊧ R ( a 1 , ..., an )
iff N ⊧ R ( h ( a 1 ), ..., h ( an ))
iff( h ( a 1 ), ..., h ( an ))∈ RN
```
We next show that function symbols are preserved. Let _a_ be from _M_ and suppose
_b_ = _fM_ ( _a_ ). Since _M_ ⊧ _f_ ( _a_ )= _b_ , we have _N_ ⊧ _f_ ( _h_ ̷( _a_ ))= _h_ ( _b_ )by (2). Hence
_fN_ (̷ _h_ ( _a_ ))= _h_ ( _b_ )= _h_ ( _fM_ ( _a_ )). The case of constant symbols is similar.


