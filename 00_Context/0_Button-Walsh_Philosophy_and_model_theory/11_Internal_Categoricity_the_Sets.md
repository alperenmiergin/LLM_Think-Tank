**Kaynak:** [[00_Context/0_Button-Walsh_Philosophy_and_model_theory/0_index.md]] (kunye ve tam kaynak bilgisi icin)

---

## 11 Internal categoricity and the sets

As outlined in Chapter 10, internalists invoke metamathematics without semantics.
They rely upon internal categoricity, rather than external categoricity. As a result,
they give up both on the attempt to ‘pin down’ referents for our theories, and on the
attempt to find complete theories. However, they seek solace from the _intolerance_
that is associated with internal categoricity.
In Chapter 10, though, we only considered internalism about arithmetic. We now
turn our attention to set theory, and to its internal (quasi-)categoricity.^1 So, this
chapter stands to Chapter 10 as Chapter 8 stands to Chapter 7. However, this chap-
ter also presents some new results. In particular, we present a theory which is too
weak to decide whether there is more than one (pure) set, which is nevertheless
internally categorical and intolerant in exactly the same way as PAint.

### 11.1 Internalising Scott–Potter set theory

We begin by focussing on an internalisation of the Scott–Potter theory of levels,
as introduced in §8.5. In that section, we explained that SP 2 is strictly weaker than
ZFC 2 , since the full models of SP 2 are exactly the stages of the cumulative iterative
hierarchy (up to isomorphism). That was an _external_ quasi-categoricity result. In
this section, we present an _internal_ quasi-categoricity result.
We must start by laying down a second-order formula, SP( _PE_ ), which stands
to SP 2 as PA( _NzS_ )stands to PA 2. So, the idea is to relativise SP 2 to a one-place
relation-variable _P_ , and a two-place relation-variable _E_. Since the latter will go proxy
for membership, we use _E_ since it reminds us of ‘epsilon’, and we write _x E y_ rather
than _E_ ( _x_ , _y_ ). Likewise we define the subset relation _v_ ⊆ _Eu_ :=(∀ _w E v_ ) _w E u_ rela-
tive to the membership relation _E_. When the _E_ is clear from context, we often drop
the subscript from⊆ _E_ and simply use the ordinary subset symbol⊆. Sometimes in
what follows we will have two candidate membership relations _E_ 1 and _E_ 2 , and we
will use e.g.⊆ 1 as an abbreviation for⊆ _E_ 1 to enhance readability.
Then, guided by Definition 8.9 of SP 2 , we define:^2

(^1) See Lavine (1999: 55–66, 89–95) and Väänänen and Wang (2015: 126–8).
(^2) As in footnote 32 of Chapter 8, we only use ‘∩’ in defining _H_ to assist readability. More explictly, we
would write _H_ ( _x_ ):=(∀ _z E x_ )(∀ _v_ )( _v E z_ ↔(∃ _u E x_ )( _u E z_ ∧( _v E u_ ∨ _v_ ⊆ _u_ ))).


252 internal categoricity and the sets

```
A ( x , y ):=∀ v ( v E x ↔(∃ u E y )( v E u ∨ v ⊆ u ))
H ( x ):=(∀ z E x ) A ( z , x ∩ z )
L ( x ):=(∃ y : H ) A ( x , y )
```
We use these to define a formula with _P_ and _E_ free (we reuse the conventions of the
last chapter, of suppressing repeated commas and quantifiers):

```
SP( PE ):=∀ x (∀ y E x )[ P ( x )∧ P ( y )]∧ ( sp:pure )
(∀ x , y : P ) [∀ z ( z E x ↔ z E y )→ x = y ]∧ ( sp:ext )
∀ X [(∃ x : P )∀ z ( z E x ↔ X ( z ))↔(∃ y : L )(∀ z : X ) z E y ]
( sp:levels )
```
Clearly, ( _sp:ext_ ) relativises Extensionality, and ( _sp:levels_ ) relativises Levelling. But
( _sp:pure_ ), and our approach more generally, merits comment.
We do not want to assume that _everything_ is a set. This is why we relativise Ex-
tensionality to _P_ in ( _sp:ext_ ). Then ( _sp:pure_ ) restricts the implementation of mem-
bership, _E_ , to _P_. But if we informally gloss _P_ ( _x_ )as _x is a set_ , then our axiomatiza-
tion will have ruled out the possibility of sets which contain _urelements_ , i.e. elements
which are not themselves sets. This would be unfortunate: it would prevent us from
speaking of ‘the set of cows in the field’, or even ‘the set of natural numbers’, unless
we _happen_ to think that natural numbers (or cows) are sets.^3
Fortunately, this unhappy situation is _not_ forced upon us. We should not gloss
_P_ ( _x_ )as _x is a set_. Rather, we should gloss _P_ ( _x_ )as _x is a pure set_ , i.e., intuitively, a set
which involves no urelements anywhere in its construction. Read like this, SP( _PE_ )
says _nothing at all_ about whether there are any impure sets, or what they are like if
there are any.^4
Moreover, the aim of SP( _PE_ )is not to tell us _everything_ about pure sets, but just
to describe the iterative process of set-formation itself. We can illustrate the point

simply. With Knuth, we write _x_ ↑↑ _n_ for _tetration_ , i.e. for _xx_
⋰ _x_
where ‘ _x_ ’ occurs _n_ -
times.^5 Then, for any _n_ ≥0, the following theory is consistent:

```
∃ PE [SP( PE )∧‘there are exactly( 2 ↑↑ n )-many P s’]
```
After all, by Theorem 8.10, _Vα_ ⊧∃ _PE_ SP( _PE_ )for any ordinal _α_ ≥1. As such, we
cannot obtain an internal _categoricity_ result for SP( _PE_ ), but must aim for internal

(^3) See McGee (1997: 49) and Potter (2004: vi, 24, 50–1) for discussions of why we might want to allow
urelements into our theorising about sets.
(^4) Scott (1974) and Potter (2004) instead offer a theory which has impure sets, whereupon we can de-
fine the pure sets as those whose transitive closure contains no urelements. That approach is certainly
well-motivated. However, for our purposes, it involves an unnecessary detour, since all our results con-
cern pure sets anyway. Moreover, our approach is strictly weaker, which is in advantageous in that it has a
potentially wider field of application (see §11.a).
(^5) Formally, _x_ ↑↑ 0 =1 and _x_ ↑↑( _n_ + 1 )= _xx_ ↑↑ _n_.


```
11.2. quasi-intolerance for pure set theory 253
```
_quasi_ -categoricity. And such a result is, indeed, available. To state the result for-
mally, we must define a formula, QuasiP 1 ▹ 2 ( _R_ ), which intuitively states that _R_ is
a (second-order) quasi-isomorphism, i.e. an isomorphism between an ‘initial seg-
ment of one set-like internal-structure’ and the ‘whole of the other’. The definition
follows the template established in our definition of IsoN 1 ▹ 2 ( _R_ )from §10.2, but it
is a little more cumbersome. We reserve the precise definition for §11.c, where we
also prove the following:

Theorem 11.1(Internal Quasi-Categoricity of SP):

```
⊢∀ P 1 E 1 P 2 E 2 ([SP( P 1 E 1 )∧SP( P 2 E 2 )]→∃ R QuasiP 1 ▹ 2 ( R ))
```
In some sense, this _surely_ shows internalists that SP( _PE_ )is a stellar axiomatization
of the very idea of the iterative process of set formation, which deliberately avoids
commenting on ‘how far’ that process runs.

### 11.2 Quasi-intolerance for pure set theory

We say ‘ _surely_ ’. In fact, internalists must take some care in spelling out this claim. A
naïve thought is that Theorem 11.1 allows us to pin down all initial segments of the
hierarchy (or, depending on your point of view, all the pure set hierarchies). This
should be compared with the naïve reaction to Theorem 10.2, discussed in §10.3,
that PAintpins down the natural numbers. Both reactions are equally naïve, equally
tempting, and equally mistaken.
We briefly recap the main points of §10.3. Talk of ‘pinning down’ is rather loose.
If the internalist explicates such talk in terms of semantic ascent, then she has given
up on her aim of treating Theorem 11.1 as an _internal_ quasi-categoricity result. (In
particular, we should repeat that it is _literally a type-confusion_ to think that an inter-
nal result could directly pin down certainL-structures.) Equally, there are hard
Gödelian limits on how completely a concept can be articulated by any deductive
theory. As in Chapter 10, then, we think that the best way for internalists to extract
promise from internal (quasi-) _categoricity_ , is by looking to (quasi-) _intolerance_.
Very roughly, Theorem 11.1 yields _tolerance_ regarding the height of internal-
structures, but _intolerance_ about their width (given any height). Slightly more pre-
cisely, it yields a result which we can gloss as follows: _For any second-order formula
φ concerning sets of some particular level, all internal-structures which go far enough to
take a non-vacuous stance on φ must agree on it._ But the precise statement of this
result will take some time.
Let _π_ ( _PE_ ℓ)be any property definable in terms of _P_ and _E_. We treat ‘ℓ’ as a first-
order variable which intuitively will range over levels, in the sense of _L_ we defined


254 internal categoricity and the sets

from _P_ and _E_ as in §11.1. Since levels are well-ordered by Proposition 8.24, internal-
structures with any _π_ -levels must have a _least π_ -level. So, for any formula _π_ (ℓ), we
define a formula _μπ_ ( _PE_ ℓ)which intuitively states thatℓis the _E_ -least level with the
property _π_ :

```
μπ ( PE ℓ):= π ( PE ℓ)∧ L (ℓ)∧(∀ℓ′: L )(ℓ′ E ℓ→¬ π ( PE ℓ′))
```
Now, by Theorem 11.1, the initial segments of any internal-structures beneath their
least _π_ -levels are totally internally isomorphic. So we obtain:

Theorem 11.2(Quasi-Intolerance of SP): _For any formulas π_ ( _PE_ ℓ) _and φ_ ( _PE_ ℓ)
_with all first-order quantifiers bound to elements of_ ℓ _and all second-order quantifiers
bound to subsets of_ ℓ _, we have_

```
⊢∀ PE ∀ℓ([SP( PE )∧ μπ ( PE ℓ)]→ φ ( PE ℓ))∨
∀ PE ∀ℓ([SP( PE )∧ μπ ( PE ℓ)]→¬ φ ( PE ℓ))
```
This is the result which internalists can legitimately gloss as follows: _For any second-
order formula φ concerning sets of some particular level, all internal-structures which go
far enough to take a non-vacuous stance on φ must agree on it._^6
Here is an interesting corollary of our quasi-intolerance theorem: _all set-like
internal-structures with an ω_ + 2 _thlevel must agree concerning subsets of that level._ In
particular: _they must all agree concerning the continuum hypothesis_ (as explained in
§8.5). Consequently, it is _deductively inconsistent_ to assert that there are two internal-
structures which both go far enough to take a non-vacuous stance on the continuum
hypothesis, but which differ on the status of the continuum hypothesis.
In the next section, we will discuss what (if anything) this shows about the status
of the continuum hypothesis. For now, though, we can simply treat the continuum
hypothesis as a particularly striking illustration of a very general point.
The immediate import of the Quasi-Intolerance Theorem 11.2 is that allows in-
ternalists to locate SP( _PE_ )on the cusp of the algebraic / univocal distinction. The-
ories in the Scott–Potter-style are multiply applicable by design, and indeed it is
deductively consistent to affirm the existence of two internal-structures of different
heights (as expressed in the object language). To that extent, SP( _PE_ )resembles
_group theory_ (see §10.6). However, its quasi-intolerance dramatically curtails the
extent of its multiple-applicability. For, provably, the only way for two internal-
structures to disagree (modulo subscripts) is for one to stop short of the other.
In that respect, SP( _PE_ )resembles _arithmetic_. And this, we suggest, is the sense in

(^6) To see why we must bind the quantifiers in these formulas, let _π_ ( _PE_ ℓ)be ‘there is no level greater
thanℓ’. The last levels of models of SP 2 (when they exist) can be very different, e.g. one can be of size 4
while another is of size16.


```
11.3. the status of the continuum hypothesis 255
```
which internalists can say that SP( _PE_ )is a stellar axiomatization of the very idea of
the iterative process of set formation, which deliberately withholds from comment-
ing on ‘how far’ that process runs. In a slogan: SP( _PE_ ) _is quasi-univocal_.

### 11.3 The status of the continuum hypothesis

Theorems 11.1 and 11.2 concern a Scott–Potter-style set theory. This is strictly
weaker than Zermelo–Fraenkel-style theories. To explain this point, let ZFC( _PE_ )
be an appropriately internalised version of ZFC 2 , obtained by relativising the ax-
ioms of Definition 1.12 and adding ( _sp:pure_ ) to them. Then since Proposition
8.32(1) states that ZFC 2 ⊢SP 2 , we have that⊢∀ _PE_ (ZFC( _PE_ )→SP( _PE_ )). So
we immediately obtain the internal quasi-categoricity of ZFC:^7

Corollary 11.3:

```
⊢∀ P 1 E 1 P 2 E 2 ([ZFC( P 1 E 1 )∧ZFC( P 2 E 2 )]→∃ R QuasiP 1 ▹ 2 ( R ))
```
Equally obviously, we can deductively prove from ZFC( _PE_ )the existence of an
_ω_ + 2 thlevel. So, by the Quasi-Intolerance Theorem 11.2, it is _deductively inconsistent_
to assert that there are two internal-structures such that ZFC( _PE_ )holds of both,
but such that the continuum hypothesis holds in one and fails in the other.^8
Now, in §10.6, we explained how the Arithmetical Intolerance Theorem 10.3 ap-
plies pressure to those who regard arithmetic as algebraic. The present observation
applies similar pressure to those who regard the continuum hypothesis as _indeter-
minate_. Indeed, it is not obvious how best to sustain that attitude, in the face of this
deductive inconsistency.
As in §10.6, one might try to argue for the indeterminacy of the continuum
hypothesis by invoking faithful Henkin semantics. Let CH( _PE_ )be a suitable
formalization of the continuum hypothesis using _P_ and _E_. Then, just because
the continuum hypothesis is deductively independent of ZFC 2 ,^9 there are faith-
ful Henkin-structures _A_ and _B_ such that _A_ ⊧∃ _PE_ [ZFC( _PE_ )∧CH( _PE_ )]and
_B_ ⊧∃ _PE_ [ZFC( _PE_ )∧ ¬CH( _PE_ )]. Those who think the continuum hypothesis
is indeterminate may then argue that no sense can be made of the claim that _A_ is
‘preferable’ to _B_ , or vice versa. However, something like the Transcendental Argu-
ments of Chapter 9 suggests that this kind of attempt to defend the indeterminacy of

(^7) This slightly extends Väänänen and Wang (2015: Theorem 2).
(^8) Väänänen and Wang (2015: 128) make the same observation.
(^9) This is due to the connection between strongly inaccessible cardinals and ZFC 2 discussed in §8.1, as
well as the fact that the continuum hypothesis is independent of ZFC plus the usual large cardinal axioms.
See Martin (1976: §3) and Jech (2003: Theorem 21.2 p.390).


256 internal categoricity and the sets

the continuum hypothesis walks a dangerously thin path between falsity and inco-
herence. In brief: within the model theory within which _A_ and _B_ are introduced,
we can define the idea of a _full_ semantics, and so—if we want—state that full struc-
tures are ‘preferable’. Of course, insofar as we are denied a firm grip on the model
theory, we are denied a firm grip on this notion of ‘preferability’; but, insofar as we
are denied a firm grip on the model theory, it is doubtful that we can understand the
claim that there are multiple ‘equally preferable’ models, some of which satisfy the
continuum hypothesis and others which do not, and hence the supposed _motiva-
tion_ for thinking that the continuum hypothesis is indeterminate. In sum: insofar as
we can make sense of this attempt to motivate the indeterminacy of the continuum
hypothesis, we have a rebuttal to it.
Before moving on, we should briefly note two things. First, as in the case of arith-
metic, Theorem 11.1 essentially uses the _impredicative_ Comprehension Schema, so
that the ambient second-order deductive framework is crucial to these results. Sec-
ond, even if Theorem 11.1 is taken to suggest that the continuum hypothesis is de-
terminate, it gives us no reason whatsoever to think that we can ever even obtain a
justified belief (let alone knowledge) concerning whether it is right or wrong.
Still, the short moral is that the quasi-intolerance of Scott–Potter-style
theories—and hence of all extensions of Zermelo–Fraenkel-style theories—does
two things for an _internalist_ about pure set theory. First, as in Chapter 10, it allows
them to regard pure set theory as quasi-univocal. Second, in tandem with the
considerations of Chapter 9, it places serious pressure on certain views concerning
the indeterminacy of the continuum hypothesis, and other set-theoretical claims.

### 11.4 Total internal categoricity for pure set theory

We have been discussing internal _quasi_ -categoricity and _quasi_ -intolerance. In fact,
we can obtain _full-fledged_ internal categoricity quite easily. We just need to add one
new conjunct to SP( _PE_ )to obtain CSP( _PE_ ):

```
CSP( PE ):=SP( PE )∧
∃ f [∀ x (∃! y : P ) f ( x )= y ∧(∀ y : P )∃! x f ( x )= y )] ( csp:many )
```
The initials ‘CSP’ stand for Categorical Scott–Potter set theory, since this theory
will be internally categorical (and not just internally _quasi_ -categorical). But the new
conjunct merits discussion.
Intuitively, ( _csp:many_ ) states that there is a second-order bijection whose domain
is all the objects, and whose range is (just) the pure sets. Otherwise put: there are as
many pure sets as objects simpliciter. Of course, ( _csp:many_ ) can be trivially satisfied
by assuming that _everything_ is a pure set. However, if we reject that assumption—
perhaps doubting whether cows are sets—then ( _csp:many_ ) will require that there


```
11.5. total intolerance for pure set theory 257
```
are infinitely many pure sets. Even then, ( _csp:many_ ) will hold provided that the
process of set-formation runs far enough that either ( _a_ ) the pure sets ‘eventually’
outnumber everything else, or ( _b_ ) there are as many pure sets as other things, and
infinitely many of both. Almost anyone working in set theory, or its philosophy, will
surely accept that one of these disjuncts obtains (though we revisit this in §11.a).
To obtain total internal categoricity, we now define a formula, IsoP 1 ▹ 2 ( _R_ ), which
states that _R_ is an isomorphism of set-like internal-structures. We defer the exact
formula until §11.d, where we also prove our main result:

Theorem 11.4(Internal Categoricity of CSP):

```
⊢∀ P 1 E 1 P 2 E 2 ([CSP( P 1 E 1 )∧CSP( P 2 E 2 )]→∃ R IsoP 1 ▹ 2 ( R ))
```
### 11.5 Total intolerance for pure set theory

As usual, a naïve and tempting thought is that an internal categoricity result shows
that ‘the structure of the pure sets _can_ be categorically characterized’.^10 Indeed, ac-
cording to Incurvati, this is becoming the ‘consensus’ view on the significance of
such results. But Incurvati is rightly critical of this consensus.
Incurvati’s main concern stems from the use of _unrestricted_ first-order quantifica-
tion in proving internal categoricity. For example, in our Theorem 11.4, the princi-
ple that there are as many pure sets as objects simpliciter, ( _csp:many_ ), requires unre-
stricted first-order quantification.^11 Incurvati puts the point as follows. In order for
the Theorem to show that the hierarchy is categorically determined, we would need
some reason to think that ‘universal’ models—i.e. ones with utterly unrestricted
domains—are _preferable_ to ‘restricted’ models. And, by itself, the Theorem gives
no reason to think that.
We agree, and would push this further. The notion of ‘characterizing the hier-
archy’ is obviously informal, but it is naturally understood in terms of semantic as-
cent. According to this understanding, to ‘characterize the hierarchy’ would be to
produce a formal theory which describes some object(s). (Note that this is what
a _modelist_ will think about the project of ‘characterizing the hierarchy’.) But then,
for all the reasons pointed out in §10.3 and §11.2, it is a _type-confusion_ to think that an
internal categoricity result might ‘characterize the hierarchy’. Equally, it is a mistake
to think that CSP( _PE_ )exhausts everything there is to say about pure sets. At the
risk of repetition: it fails to decide whether there is _more than one_ pure set.

(^10) Incurvati (2016: 368). Thanks to Luca Incurvati for discussion on all this.
(^11) Incurvati is actually discussing McGee’s Theorem 11.6 (see §11.a), and his focus is the unrestricted
quantification in McGee’s claim that there is a set of all the urelements, ( _zfcu:ur_ ).


258 internal categoricity and the sets

In keeping with our general line of thought, then, the best way for internalists to
extract juice from internal _categoricity_ is via _intolerance_. And, predictably, we have:^12

Theorem 11.5(Intolerance of CSP): _For any formula φ_ ( _PE_ ) _whose quantifiers are
P-restricted and whose free variables are all displayed:_

```
⊢∀ PE (CSP( PE )→ φ ( PE ))∨ ∀ PE (CSP( PE )→¬ φ ( PE ))
```
Exactly as in §10.4, this (total) intolerance result licenses us in defining a canoni-
cal theory of pure sets. So: ‘ _Pure_ ’ will be our canonical pure-set-predicate, and ‘∈’
will be our canonical membership-predicate. We then define CSPintas the theory
CSP( _Pure_ ,∈). The justification for using CSPintis simple: modulo subscripts, all
the same pure set-theoretic claims hold of every internal-structure (in the sense of
CSP( _PE_ )), so we might as well ditch the subscripts.
It is might seem genuinely startling that CSPintis totally intolerant. For CSPint
itself is far too weak to interpret Robinson’s Q. And yet, all CSPint-like internal-
structures must agree upon _anything_ you care to formulate in the language of pure
set theory: whether there are infinitely many sets: whether the continuum hypoth-
esis holds; whether projective determinacy holds; whether the generalised contin-
uum hypothesis holds; whether there is a proper class of Mahlo cardinals; anything
you like.
Moreover, as in §10.6, the total intolerance of CSPintallows internalists to main-
tain that pure set theory, like arithmetic, is _entirely_ univocal. This is surprising,
because—as in the case of arithmetic—it gives internalists a way to explain how
their theory can count as univocal, without having to engage in semantic-ascent.
But the case of CSPintis _doubly_ surprising. After all, semantic-ascent concerning set
theory typically allows that a theory like ZFC 2 is only _quasi_ -univocal, in the sense
that ZFC 2 tolerates differences concerning the height of the hierarchy. But here we
are, claiming that CSPintis _totally_ univocal.

### 11.6 Internalism and indefinite extensibility

Now, CSPint’s intolerance generates a deep challenge for anyone who does want to
view set-theory as anything less than ‘totally’ univocal. These difficulties are akin to
those discussed surrounding the Algebraic Attitude towards arithmetic (see §10.6),
and the indeterminacy of the continuum hypothesis (see §11.3). However, to bring
them out, we will consider the supposed _indefinite extensibility_ of the concept _set_.
From a model-theoretic perspective, the domain of anyL-structure satisfy-
ing ZFC 2 —even on the full semantics—cannot be ‘universal’, since the domain’s

(^12) This follows from Theorem 11.4, exactly as Theorem 10.3 follows from Theorem 10.2.


```
11.6. internalism and indefinite extensibility 259
```
power set, for example, is not a member of the domain itself. (We essentially made
the same point in §8.6, when arguing that any externally categorical set theory
would fail to handle the purportedly _all-encompassing_ nature of set theory.) As such,
if we intend to quantify _unrestrictedly_ , then no model of ZFC 2 can be ‘intended’; at
best, we have increasingly better (but always inadequate) _approximations_ of our in-
tent. This is one way to be led to the conclusion that the concept _set_ is _indefinite
extensibility_. (Indeed, it may well have been Zermelo’s, in his 1930.)
Sadly, it is a short step from this line of thought to outright incomprehensibil-
ity.^13 Modelists insist on understanding the use of quantifiers model-theoretically;
yet the above line of thought suggests that we can never use our quantifiers to quan-
tify unrestrictedly; and so our modelist is led to say: _No sentence containing quan-
tifiers can quantify over everything_. Unfortunately, _that_ claim undermines itself: it
‘wants’ to quantify over _everything_ , in order to say that it _cannot_. So, insofar as we
understand the claim, we can see that it is false.
As in Chapters 6–9, then, modelists are drawn towards a position which is inef-
fable. Perhaps modelists will be able to come up with their own way to avoid this
mess. But, once again, internalism suggests itself as a likely-looking alternative. In-
ternalists specifically reject the modelist thought, that our use of quantifiers _must_ be
understood model-theoretically. As such, internalists are under no pressure what-
soever to say: _No sentence containing quantifiers can quantify over everything_.
Indeed, internalists have a rather short line with the issue of ‘quantifying over all
the sets’. Since they have eschewed semantic ascent, the only sense that internalists
can give to (un)restricted quantification concerns the syntactic thought that ‘∀ _x_ ’ is
unrestricted, whereas ‘(∀ _x_ : Ξ)’ is restricted. Now, it is indeed important to the
proof of Theorem 11.4 that ( _csp:many_ ) involves unrestricted quantification in _that_
sense. Equally, though, no one can seriously worry about the possibility of _that_ sort
of unrestricted quantification.^14
In sum, CSPint’s intolerance allows internalists to regard set theory as wholly uni-
vocal and to bypass entirely the vexed notion of indefinite extensibility. Perhaps this
is another point in its favour.

(^13) The contents of the next few paragraphs join up with Button (2010); see also the references there.
(^14) Anticipating the discussion of §11.a, we suggest that this is all that is going on in McGee’s own discus-
sion of unrestricted quantification. McGee states his result as follows: ‘Any two models of second-order
ZFCU + [( _zfcu:ur_ )] with the same universe of discourse have isomorphic pure sets. In particular, any
two models of second-order ZFCU + [( _zfcu:ur_ )] in which the first-order variables range over everything
have isomorphic pure sets’ (1997: 55; see also p.53). One might worry that mentioning a ‘universe of dis-
course’ flags semantic ascent, undercutting the idea that he is considering _internal_ categoricity. However,
as mentioned in footnote 8 of Chapter 10, McGee works with class-models but describes them as ‘merely
figurative’. And, in the setting of class-models, talk of a ‘universe of discourse’ is a merely figurative way to
describe quantifier-restrictions.


260 internal categoricity and the sets

### 11.a Connection to McGee

The material of Chapter 10 was heavily influenced by Parsons. As we explain in
this philosophical appendix, the material in this chapter is heavily influenced by
McGee.^15 Now, like Parsons in §10.a, McGee hesitates to use second-order logic
directly, instead invoking first-order logic with ‘open-ended schemas’. As in §10.a,
this creates certain difficulties for no obvious gains. So, although it is slightly un-
faithful to McGee’s paper, for the rest of this appendix we will simply act as if McGee
had worked directly within deductive second-order logic.
McGee proved a result which is often described as a proof of _categoricity_ for
ZFCU. His result concerns an internalised version of second-order Zermelo–
Fraenkel set theory with Choice and urelements. Unlike SP( _PE_ )or CSP( _PE_ ), this
is supposed to be a theory of both pure and impure sets. The internalisation begins
as follows:

```
ZFCU( SetE ):=∀ x [∃ y y E x → Set ( x )]∧ ( zfcu:sets )
(∃ x : Set )∀ z [¬ Set ( z )→ z E x ]∧ ( zfcu:ur )
(∀ x , y : Set ) [∀ z ( z E x ↔ z E y )→ x = y ]∧ ( zfcu:ext )
∀ x ∀ y ∃ z ∀ w [ w E z ↔( w = x ∨ w = y )] ( zfcu:pairing )
∀ x ∃ y ∀ z [ z E y ↔(∃ v E x ) z E v ]∧ ( zfcu:union )
...
```
Conjuncts ( _zfcu:ext_ ) onwards simply relativise the axioms of ZFC 2 to _Set_ and _E_ ;
so we have written out relativised versions of Extensionality, Pairing, and Union,
but we leave it to the reader to complete the relativisation (using Definition 1.12 as
their guide). Additionally, ( _zfcu:sets_ ) intuitively states that only sets have members.
Finally, ( _zfcu:ur_ ) intuitively states that _there is a set of all the urelements_.
Working within ZFCU( _SetE_ ), we can define a property, _P_ , which intuitively
holds of the pure sets, i.e. sets which contains no urelements anywhere in their con-
struction.^16 McGee now proves that all ZFCU( _SetE_ )-like internal-structures have
isomorphic pure sets. So, in our terminology, he proves:

Theorem 11.6(McGee): _Where ‘P_ 1 _’ and ‘P_ 2 _’ are defined within_ ZFCU( _Set_ 1 _E_ 1 ) _and_
ZFCU( _Set_ 2 _E_ 2 ) _in the manner sketched above:_

```
⊢∀ Set 1 E 1 Set 2 E 2 ([ZFCU( Set 1 E 1 )∧ZFCU( Set 2 E 2 )]→∃ R IsoP 1 ▹ 2 ( R ))
```
McGee’s Theorem is obviously extremely similar to our Theorem 11.4. Indeed, it
follows from ours via a simple observation:

(^15) Many thanks to Vann McGee for discussion of all this.
(^16) Roughly, the definition is: _x_ is a set and and there are no non-sets in _x_ ’s transitive closure.


```
11.a. connection to mcgee 261
```
Lemma 11.7: _Where ‘P’ is defined from ‘Set’ and ‘E’ in the manner sketched above:_

```
⊢∀ SetE (ZFCU( SetE )→CSP( PE ))
```
_Proof._ Assume ZFCU( _SetE_ ). Proposition 8.32(1) shows that SP( _PE_ ). It remains
to check ( _csp:many_ ), i.e. that there are as many pure sets as objects simpliciter.^17 By
( _zfcu:ur_ ), the urelements form a set _x_ ; so every object is an element of some _Uα_ ( _x_ ),
where this is the cumulative hierarchy relativised to _x_ :^18

```
U 0 ( x )= x
Uα + 1 ( x )= Uα ( x )∪ ℘( Uα ( x ))
Uα ( x )=⋃
β < α
```
```
Uβ ( x )if α is a limit ordinal
```
Since _x_ is a set, work within ZFCU( _SetE_ )and choose an ordinal _β_ and a set _b_ which
is a subset of _Vβ_ + 1 ∖ _Vβ_ , such that _b_ and _x_ have the same cardinality. By transfinite
recursion, we can define a bijection from _Uα_ ( _x_ )to _Uα_ ( _b_ ), and the latter are pure
sets. Hence, there is an injection from the objects to the pure sets. Further, the
identity map is clearly an injection from the pure sets to the objects. Hence, the
Schröder–Bernstein Theorem yields our second-order bijection from the objects
to the pure sets.^19

McGee’s Theorem 11.6 is an immediate corollary of this Lemma plus Theorem 11.4.
And of course this is no accident. We arrived at our Theorem 11.4, by considering
this question: _What is the weakest theory, which recognisably deals with the iterative
notion of set, and for which a result like McGee’s can be obtained?_ Our answer to that
was: CSP( _PE_ ). But we now want to give two reasons for thinking that this question
was worth asking and answering in the first place.
First: using ZFCU( _SetE_ )is not entirely uncontroversial. In particular, one can
contest the assumption that the non-sets form a set, i.e. ( _zfcu:ur_ ). Consider the view
that the ordinals are _sui generis_ objects, which are not identical to sets but which
can be modelled as certain sets. Since on this view the non-sets will include all the
ordinals, presumably the non-sets will not form a set.^20 Then ( _zfcu:ur_ ) will fail. But
this viewpoint is wholly compatible with ( _csp:many_ ), for there can be just as many
_sui generis_ ordinals as pure sets.
Second, and more important: ZFCU( _SetE_ )is a very rich theory. So, although
McGee’s total internal categoricity result for ZFCU( _SetE_ )might at first be surpris-
ing, one can quickly become desensitised to it. (One can find oneself thinking:

(^17) Cf. McGee (1997: 63–4).
(^18) See Jech (1973: 45, 2003: 250).
(^19) Schröder–Bernstein is provable in the deductive second-order deductive system (see Shapiro 1991:
102).
(^20) Thanks to Neil Barton for suggesting this possible objection to ( _zfcu:ur_ ). See also Menzel (2014).


262 internal categoricity and the sets

‘well, ZFC 2 was _nearly_ externally categorical anyway, so the result is not so suspris-
ing’.) We hope that using CSP( _PE_ )will keep you _sensitised_ to the phenomenon of
total internal categoricity. So, at the risk of repetition: CSP( _PE_ ) _is astonishingly
weak_. After all, for any _n_ ≥0, the following theory is consistent:

```
∃ PE [CSP( PE )∧‘there are exactly( 2 ↑↑ n )-many P s’]
```
### 11.b Connection to Martin

In this second philosophical appendix, we relate our Theorem 11.4 to an _informal_
argument, suggested by Martin, that the iterative concept of (pure) sets is _totally_
categorical (rather than quasi-categorical). Likewise, we shall use this opportunity
to round out our discussion of Martin, started in §8.5, by mentioning his views on
second-order logic, as well as his position on the instantiation of the set concept.
Martin’s informal argument begins by considering ‘structures M 1 and M 2 both
of which meet the strong concept of pure set’.^21 Following Zermelo’s proof of his
quasi-categoricity Theorem 8.8, Martin informally argues that M 1 and M 2 must at
least be quasi-isomorphic. He then also assumes that the stages of M 1 and M 2 ‘are
well ordered and that there an absolute infinity of them’; this allows him to argue,
in effect, that any two absolutely infinite hierarchies must run as far as each other.
And so he concludes ‘that M 1 and M 2 themselves are uniquely isomorphic’.^22
However, it is not clear what M 1 and M 2 _are_. Martin does not say much positive
here: he deliberately keeps ‘the notion of _structure_ loose and informal’, though he
is explicit that he does not ‘want to rule out proper class domains’, or even assume
‘that structures need themselves be objects in a strict sense’.^23 Additionally, Martin
says very little about how to make sense of the assumption that there are absolutely
infinitely many stages, although he cites Cantor’s discussion of the absolute infinite
as a precedent.^24
One can, however, get around these difficulties by offering an ‘internalist take’
on Martin’s argument. Internalists can read Martin’s talk of ‘structures’ as short-
hand for ‘internal-structures’. Then, when Martin tells us that M 1 and M 2 are ab-
solutely infinite structures satisfying the strong concept of pure set, internalists can
take Martin to be assuming (at least) that CSP( _P_ 1 _E_ 1 )and CSP( _P_ 2 _E_ 2 ). For, what-
ever exactly ‘absolute infinity’ amounts to, it should at least entail that there are as
many pure sets as objects simpliciter, and so it should entail ( _csp:many_ ). Internal-
ists can then recast Martin’s informal argument as a deductive proof of total internal
categoricity, i.e. of Theorem 11.4.

(^21) Martin (2001: 10).
(^22) Martin (2001: 11).
(^23) See Martin (2001: 9).
(^24) See the end of Martin (2015: §3).


```
11.c. internal quasi-categoricity for sp 263
```
At this point, we should mention a distinctive element of Martin’s overall ap-
proach to categoricity: he is agnostic on whether the concept of set is instantiated
at all. So the most Martin extracts from his categoricity argument is a conditional:
_if_ the concept of set is instantiated, _then_ (low-level) statements are determinate.
Martin leaves it open whether we should endorse the antecedent or deny the con-
sequent.^25 But this is easily accommodated by the ‘internalist take’ on Martin’s ar-
gument: we can ask whether or not∃ _PE_ CSP( _PE_ ); if not, then every statement of
the form∀ _PE_ (SP( _PE_ )→ _φ_ )will be vacuous.
Of course, someone might resist the ‘internalist take’ on Martin’s argument, ei-
ther because they want the argument to remain _informal_ , or because they want the
argument to have the flavour of an _external_ categoricity result. Fair enough; our
only point is that the ‘internalist take’ deals neatly with all of the earlier worries
concerning the argument’s informality.
Additionally, someone might worry that the ‘internalist take’ on Martin’s ar-
gument involves (deductive) second-order logic. Indeed Martin—like Parsons
and McGee—attempts to obtain the force of categoricity considerations without
a commitment to second-order logic _per se_.^26 On this issue, though, the balance of
considerations seems to us similar to that discussed in §10.a.

### 11.c Internal quasi-categoricity for SP

In this technical appendix, we prove the internal quasi-categoricity of the sets, in
the sense of SP( _PE_ ). We start by defining a formula which says that _R_ is a quasi-
isomorphism between _P_ 1 with its membership relation _E_ 1 , and _P_ 2 with its mem-
bership relation _E_ 2 :

```
QuasiP 1 ▹ 2 ( R ):=∀ v ∀ y ( R ( v , y )→[ P 1 ( v )∧ P 2 ( y )])∧ ( qp:1 )
∀ v ∀ y ∀ z ([ R ( v , y )∧ R ( v , z )]→ y = z )∧ ( qp:2 )
∀ y ∀ v ∀ x ([ R ( v , y )∧ R ( x , y )]→ v = x )∧ ( qp:3 )
∀ v ∀ y ∀ x ∀ z ([ R ( v , y )∧ R ( x , z )]→[ v E 1 x ↔ y E 2 z ])∧
( qp:4 )
∀ v (∃ yR ( v , y )→(∀ x ⊆ 1 ord 1 ( v ))∃ zR ( x , z ))∧ ( qp:5 )
∀ y (∃ vR ( v , y )→(∀ z ⊆ 2 ord 2 ( y ))∃ xR ( x , z ))∧ ( qp:6 )
[(∀ v : P 1 )∃ yR ( v , y )∨(∀ y : P 2 )∃ vR ( v , y )] ( qp:7 )
```
Roughly, ( _qp:1_ ) says that _R_ is a relation with domain _P_ 1 and _P_ 2 ; ( _qp:2_ ) says that _R_
is functional; ( _qp:3_ ) says that _R_ is injective; ( _qp:4_ ) says that _R_ preserves structure;

(^25) See Martin (2001: 11, 15, 2015: §3).
(^26) See the remark ‘it does not depend upon any obscure notion of arbitrary set of numbers’ in Martin
(2001: 11) and the remarks on full second-order logic in Martin (2015: §2).


264 internal categoricity and the sets

and ( _qp:7_ ) says that _R_ exhausts one of _P_ 1 and _P_ 2. We retain the definition of ord( _x_ )
from §8.b (merely tacitly relativising it to _E_ ). As such, _x_ ⊆ 1 ord 1 ( _v_ )indicates that
_x_ ‘enters’ the _P_ 1 -hierarchy no later than _v_ , so that ( _qp:5_ ) says that _R_ ’s domain is an
initial segment of the _P_ 1 -hierarchy, and ( _qp:6_ ) indicates that _R_ ’s range is an initial
segment of the _P_ 2 -hierarchy.
We just mentioned that we retain the definition of ord( _x_ )from §8.b. More gener-
ally, throughout our proof of quasi-categoricity, we freely invoke the results proved
in §8.b concerning SP 2 , since these deductions obviously carry over to the inter-
nalised context. Here is our proof.

Theorem(Internal Quasi-Categoricity of SP, 11.1):

```
⊢∀ P 1 ∀ E 1 ∀ P 2 ∀ E 2 ([SP( P 1 E 1 )∧SP( P 2 E 2 )]→∃ R QuasiP 1 ▹ 2 ( R ))
```
_Proof._ We assume SP( _P_ 1 _E_ 1 )and SP( _P_ 2 _E_ 2 ), and start by defining two formulas:

```
Λ( X , v , y ):= P 1 ( v )∧ P 2 ( y )∧
(∀ x E 1 v )(∃ z E 2 y ) X ( x , z )∧
(∀ z E 2 y )(∃ x E 1 v ) X ( x , z )
Γ( X ):=∀ v ∀ y (Λ( X , v , y )→ X ( v , y ))
```
Note that by definition, Λ is closed upwards under inclusion, i.e. reusing the termi-
nology introduced in §10.b:(Λ( _X_ , _v_ , _y_ )∧ _X_ ⊑ _Y_ )→Λ( _Y_ , _v_ , _y_ ). Now, by Compre-
hension, there is an _R_ such that:

```
∀ v 1 ∀ v 2 ( R ( v 1 , v 2 )↔∀ X [Γ( X )→ X ( v 1 , v 2 )])
```
Intuitively, _R_ is the intersection of all the Γ’s, so that _R_ ⊑ _X_ for any _X_ such that Γ( _X_ ).
This will be our required _R_.
First let us show that Γ( _R_ ). So suppose that _v_ , _y_ are such that Λ( _R_ , _v_ , _y_ ); we must
show that _R_ ( _v_ , _y_ ). Let _X_ be such that Γ( _X_ ); we must show that _X_ ( _v_ , _y_ ). But since
_R_ ⊑ _X_ and Λ( _R_ , _v_ , _y_ )we have that Λ( _X_ , _v_ , _y_ ). Then from Γ( _X_ )we conclude that
_X_ ( _v_ , _y_ ). Hence indeed Γ( _R_ )holds.
This in turn directly implies the _left-to-right_ direction of the following:

```
∀ v 1 ∀ v 2 (Λ( R , v 1 , v 2 )↔ R ( v 1 , v 2 )) (11.1)
```
For the _right-to-left_ direction, suppose that¬Λ( _R_ , _a_ 1 , _a_ 2 ). By Comprehension,
there is _Q_ such that∀ _x_ ∀ _y_ ( _Q_ ( _x_ , _y_ )↔( _R_ ( _x_ , _y_ )∧ ¬[ _x_ = _a_ 1 ∧ _y_ = _a_ 2 ]), so that
¬ _Q_ ( _a_ 1 , _a_ 2 ). Since _R_ is the intersection of all the Γ’s, it suffices to argue that Γ( _Q_ ).
For, suppose that Λ( _Q_ , _v_ , _y_ ). Since _Q_ ⊑ _R_ we have Λ( _R_ , _v_ , _y_ )and since Γ( _R_ )
we have _R_ ( _v_ , _y_ ). If _Q_ ( _v_ , _y_ )failed, then we would have to have that _v_ = _a_ 1 and


```
11.c. internal quasi-categoricity for sp 265
```
_y_ = _a_ 2 , contradicting that Λ( _R_ , _v_ , _y_ )while¬Λ( _R_ , _a_ 1 , _a_ 2 ). This finishes the argu-
ment for (11.1).
We can now set to work proving that each conjunct of ( _qp:1_ )–( _qp:7_ ) holds.
( _qp:1_ )_._ This follows from (11.1) and the fact that Λ( _X_ , _v_ , _y_ )implies by definition
that _P_ 1 ( _v_ )∧ _P_ 2 ( _y_ ).
( _qp:2_ )_._ For reductio, suppose _a_ 1 is such that∃ _y_ ∃ _z_ ( _y_ ≠ _z_ ∧ _R_ ( _a_ 1 , _y_ )∧ _R_ ( _a_ 1 , _z_ )).
So _P_ 1 ( _a_ 1 )by ( _qp:1_ ) and so we can assume that _a_ 1 is ord 1 -minimal by Proposition
8.25(1). So for some _a_ 2 , _b_ 2 we have _a_ 2 ≠ _b_ 2 ∧ _R_ ( _a_ 1 , _a_ 2 )∧ _R_ ( _a_ 1 , _b_ 2 ). Since _a_ 2 ≠ _b_ 2 ,
by ( _qp:1_ ) and ( _sp:ext_ ) there is some _P_ 2 ( _c_ 2 )such that _c_ 2 _E_ 2 _a_ 2 ↔ _c_ 2 _E_ / 2 _b_ 2 ; without
loss, assume _c_ 2 _E_ 2 _a_ 2 and _c_ 2 _E_ / 2 _b_ 2. Since _R_ ( _a_ 1 , _a_ 2 ), by (11.1) we have Λ( _R_ , _a_ 1 , _a_ 2 )
and hence(∀ _u_ 2 _E_ 2 _a_ 2 )(∃ _u_ 1 _E_ 2 _a_ 1 ) _R_ ( _u_ 1 , _u_ 2 ). So there is some _c_ 1 _E_ 1 _a_ 1 such that
_R_ ( _c_ 1 , _c_ 2 ). Similarly, Λ( _R_ , _a_ 1 , _b_ 2 ), so there is some _d_ 2 _E_ 2 _b_ 2 such that _R_ ( _c_ 1 , _d_ 2 ).
Now _c_ 2 ≠ _d_ 2 because _c_ 2 _E_ / 2 _b_ 2. So _c_ 2 ≠ _d_ 2 ∧ _R_ ( _c_ 1 , _c_ 2 )∧ _R_ ( _c_ 1 , _d_ 2 )with _c_ 1 _E_ 1 _a_ 1 ,
contradicting the ord 1 -minimality of _a_ 1.
( _qp:3_ )_._ Exactly similar.
( _qp:4_ )_._ Suppose _R_ ( _a_ 1 , _a_ 2 )and _R_ ( _b_ 1 , _b_ 2 ). If _b_ 1 _E_ 1 _a_ 1 , then by (11.1) there is
some _c_ 2 _E_ 2 _a_ 2 with _R_ ( _b_ 1 , _c_ 2 ), and _b_ 2 = _c_ 2 by ( _qp:2_ ), so that _b_ 2 _E_ 2 _a_ 2 as required.
If _b_ 2 _E_ 2 _a_ 2 , then ( _qp:3_ ) yields that _b_ 1 _E_ 1 _a_ 1.
( _qp:5_ )_._ We work by induction on levels 1. Letℓbe a level 1 , and suppose for in-
duction that:

```
(∀ℓ′ E 1 ℓ)∀ v ∀ y ([ord 1 ( v )=ℓ′∧ R ( v , y )]→
(∀ x ⊆ 1 ℓ′)(∃ z ⊆ 2 ord 2 ( y )) R ( x , z ))
```
We will show:

```
∀ v ∀ y ([ord 1 ( v )=ℓ∧ R ( v , y )]→
(∀ x ⊆ 1 ℓ)(∃ z ⊆ 2 ord 2 ( y )) R ( x , z ))
```
Fix _v_ and _y_ such that ord 1 ( _v_ )=ℓand _R_ ( _v_ , _y_ ), and fix _x_ ⊆ 1 ℓ. Fix _x_ ′ _E_ 1 _x_ ; then
there is _v_ ′ _E_ 1 _v_ with _x_ ′⊆ 1 ord 1 ( _v_ ′) _E_ 1 ℓ, by Proposition 8.25(4). Since _R_ ( _v_ , _y_ ), we
have Λ( _R_ , _v_ , _y_ )by (11.1), so there is some _y_ ′ _E_ 2 _y_ ⊆ 2 ord 2 ( _y_ )such that _R_ ( _v_ ′, _y_ ′).
By the induction hypothesis, instantiated with ord 1 ( _v_ ′), _v_ ′and _y_ ′, there is _z_ ′⊆ 2
ord 2 ( _y_ ′)such that _R_ ( _x_ ′, _z_ ′). Moreover, the link between _x_ ′and _z_ ′is bijective, given
( _qp:2_ )–( _qp:3_ ). Further, we may argue that _z_ ′ _E_ 2 ord 2 ( _y_ ): for, _y_ ′ _E_ 2 _y_ implies
ord 2 ( _y_ ′) _E_ 2 ord 2 ( _y_ )by Proposition 8.25(3), and together with _z_ ′⊆ 2 ord 2 ( _y_ ′)and
the supertransitivity of ord 2 ( _y_ ), we obtain _z_ ′ _E_ 2 ord 2 ( _y_ ). So, for any _z_ ′, if(∃ _x_ ′ _E_ 1
_x_ ) _R_ ( _x_ ′, _z_ ′)then _z_ ′ _E_ 2 ord 2 ( _y_ ). By Levelling, there is therefore a _z_ in _P_ 2 whose
members are exactly such _z_ ′. By construction Λ( _R_ , _x_ , _z_ ), so that _R_ ( _x_ , _z_ )by (11.1).
This completes the proof by induction. Now ( _qp:5_ ) follows.
( _qp:6_ )_._ Exactly similar.


266 internal categoricity and the sets

( _qp:7_ )_._ Suppose ( _qp:7_ ) is false for reductio. So there is some element of _P_ 1 not
in _R_ ’s domain. By ( _qp:5_ ) its level 1 is also not in _R_ ’s domain. So there is least level 1 ℓ 1
not in _R_ ’s domain. By minimality, all lower levels 1 are in _R_ ’s domain and by ( _qp:5_ )
any sets 1 of lower order 1 thanℓ 1 are in _R_ ’s domain. By a parallel argument using
( _qp:5_ ), there is some leastℓ 2 not in _R_ ’s range, and all members 2 ofℓ 2 are in _R_ ’s
range. So Λ( _R_ ,ℓ 1 ,ℓ 2 )and hence _R_ (ℓ 1 ,ℓ 2 )by (11.1), contradicting our choice ofℓ 1
andℓ 2.

Now we use Theorem 11.1 to prove the Quasi-Intolerance of SP:

Theorem(Quasi-Intolerance of SP 11.2): _For any formulas π_ ( _PE_ ℓ) _and φ_ ( _PE_ ℓ) _with
all first-order quantifiers bound to elements of_ ℓ _and all second-order quantifiers bound
to subsets of_ ℓ _, we have_

```
⊢∀ PE ∀ℓ([SP( PE )∧ μπ ( PE ℓ)]→ φ ( PE ℓ))∨
∀ PE ∀ℓ([SP( PE )∧ μπ ( PE ℓ)]→¬ φ ( PE ℓ))
```
_Proof._ We work deductively in our second-order logic. Suppose SP( _P_ 1 _E_ 1 )and
_μπ_ ( _P_ 1 _E_ 1 ℓ 1 )and SP( _P_ 2 _E_ 2 )and _μπ_ ( _P_ 2 _E_ 2 ℓ 2 ). Since SP( _P_ 1 _E_ 1 )and SP( _P_ 2 _E_ 2 ), by
the previous theorem, there is _R_ such that QuasiP 1 ▹ 2 ( _R_ ). By ( _qp:7_ ), we may as-
sume without loss of generality that _R_ ’s domain is all of _P_ 1. Let _P_ ∗ 2 be the restric-
tion of _P_ 2 to everything in _R_ ’s range, and let _E_ ∗ 2 be the restriction of _E_ 2 to _P_ ∗ 2 ; then
_R_ is an isomorphism between _P_ 1 _E_ 1 and _P_ ∗ 2 _E_ ∗ 2. Chooseℓ′ 2 such that _R_ (ℓ 1 ,ℓ′ 2 ). Em-
ulating the proof of Theorem 10.3, since _μπ_ ( _P_ 1 _E_ 1 ℓ 1 )we have _μπ_ ( _P_ ∗ 2 _E_ ∗ 2 ℓ′ 2 )and
so _π_ ( _P_ ∗ 2 _E_ ∗ 2 ℓ′ 2 ). But since the quantifiers in _π_ ( _P_ ∗ 2 _E_ ∗ 2 ℓ′ 2 )are all bounded toℓ′ 2 in
the manner stipulated in the hypothesis, restriction to _P_ ∗ 2 and _E_ ∗ 2 makes no dif-
ference, so that _π_ ( _P_ 2 _E_ 2 ℓ′ 2 ). (Roughly, this is because the quantifiers are bound
toℓ′ 2 and _P_ ∗is supertransitive by ( _qp:6_ ); if so desired, this step of the argument
can be formalised along the lines of Proposition 8.28.) Because _π_ ( _P_ 2 _E_ 2 ℓ′ 2 )and by
_μπ_ ( _P_ 2 _E_ 2 ℓ 2 ), we haveℓ 2 ⊆ 2 ℓ′ 2 and hence _P_ ∗ 2 (ℓ 2 )by supertransitivity. Again, since
the quantifiers are bounded, we have that _π_ ( _P_ 2 _E_ 2 ℓ 2 )implies _π_ ( _P_ ∗ 2 _E_ ∗ 2 ℓ 2 ), so that by
_μπ_ ( _P_ ∗ 2 _E_ ∗ 2 ℓ′ 2 )we haveℓ 2 =ℓ′ 2. Since _R_ is an isomorphism between _P_ 1 _E_ 1 and _P_ ∗ 2 _E_ ∗ 2
and since _R_ (ℓ 1 ,ℓ 2 ), we can again emulate the proof of Theorem 10.3 to obtain that
_φ_ ( _P_ 1 _E_ 2 ℓ 1 )iff _φ_ ( _P_ ∗ 2 _E_ ∗ 2 ℓ 2 ). Again, since the quantifiers are bounded, this happens
iff _φ_ ( _P_ 2 _E_ 2 ℓ 2 ).

### 11.d Total internal categoricity for CSP

Our next project is to lift the preceding result into full-fledged internal categoricity
result. We first define a formula stating that _R_ is an isomorphism of sets:


```
11.d. total internal categoricity for csp 267
```
```
IsoP 1 ▹ 2 ( R ):=∀ v ∀ y ( R ( v , y )→[ P 1 ( v )∧ P 2 ( y )])∧ (11.2)
(∀ v : P 1 )∃! yR ( v , y )∧(∀ y : P 2 )∃! vR ( v , y )∧ (11.3)
∀ v ∀ y ∀ x ∀ z ([ R ( v , y )∧ R ( x , z )]→[ v E 1 x ↔ y E 2 z ]) (11.4)
```
We next need a specific version of Cantor’s Theorem:

Proposition 11.8:CSPint _deductively proves the following. Where_ ℓ _is any level, tem-
porarily define:_

```
A ℓ( x ):=(∃ℓ′: L )(ℓ′∈ℓ∧ x ⊆ℓ′)
B ℓ( x ):= x ⊆ℓ
```
_Then there is no second-order injection from B_ ℓ _to A_ ℓ_._

_Proof._ For reductio, suppose _g_ is such an injection. By Comprehension, use _g_ to
build a second-order surjection _f_ whose domain is _A_ ℓand whose range is _B_ ℓ. By
Comprehension and ( _sp:levels_ ), we have a set _d_ ={ _x_ ∈ℓ: _x_ ∉ _f_ ( _x_ )}. Since _d_ ⊆ℓ,
we have _B_ ℓ( _d_ ). Since _f_ is a surjection, _d_ = _f_ ( _a_ )for some _a_ such that _A_ ℓ( _a_ ). Since
_A_ ℓ( _a_ ), we have someℓ′∈ℓsuch that _a_ ⊆ℓ′, so that _a_ ∈ℓby supertransitivity ofℓ.
So, absurdly: _a_ ∈ _d_ iff _a_ ∉ _f_ ( _a_ )iff _a_ ∉ _d_.

The desired result is now straightforward:

Theorem(Internal categoricity of CSP, 11.4):

```
⊢∀ P 1 E 1 P 2 E 2 ([CSP( P 1 E 1 )∧CSP( P 2 E 2 )]→∃ R IsoP 1 ▹ 2 ( R ))
```
_Proof._ Assume that CSP( _P_ 1 _E_ 1 )and CSP( _P_ 2 _E_ 2 ). By Theorem 11.1, we have some _R_
such that QuasiP 1 ▹ 2 ( _R_ ). For reductio, suppose that _R_ exhausts _P_ 1 but not _P_ 2. Letℓ
be the least level 2 not in _R_ ’s range. Then _R_ is the graph of an injection _h_ from _P_ 1 to _A_ ℓ
by ( _qp:6_ ). Further, the identity map _f_ is an injection from _B_ ℓto the objects. Further,
by ( _csp:many_ ), there is an injection _g_ from the objects to _P_ 1. Hence the composition
_h_ ○ _g_ ○ _f_ is an injection from _B_ ℓto _A_ ℓ, contrary to the previous proposition.

In §11.4, we commented that the total categoricity and intolerance of CSPintmight
seem rather startling. On a technical level, though, we should perhaps emphasise
that this kind of result is not really specific to set theory. To see this, consider two
well-known external categoricity results:^27

(^27) See Marker (2002: Theorem 2.4.1 p.48), Jech (2003: Theorem 4.3 p.38), and Dasgupta (2014: 160,
165). The canonical instance of (i) is the rational numbers, and the canonical instance of (ii) is the real
numbers. Here ‘complete’ signals the existence of suprema, as in the usual axiomatizations of the real
numbers, and ‘separable’ means that there is a countable dense linear order which intersects any interval in
the original linear order.


268 internal categoricity and the sets

```
(i)all countable dense linear orders without endpoints are isomorphic;
(ii)all complete separable dense linear orders without endpoints are isomor-
phic.
```
Now consider a theory CLDO which consists of:

```
(a)the axioms of dense linear orders without endpoints;
(b)an axiom much like ( csp:many ) stating that domain of the linear order is bi-
jective with the objects; and
(c)a ‘disjunctive’ axiom stating that the linear order is either countable or both
complete and separable.
```
The standard proofs of external categoricity carry over to show that CLOintis in-
ternally categorical and hence intolerant. Now, clearly CLOintitself fails to decide
whether the order is countable, or both complete and separable, in that either op-
tion is deductively consistent with CLOint. Still, CLOintis intolerant, because we
have outsourced to the universe the decision as to which option holds: if there are
only countably many things then (b) rules out that the linear order is complete and
separable, whereas if there are uncountably many things then (b) rules out that the
linear order is countable. So CLOintis intolerant, because it explicitly connects the
size of the order with the size of the universe. Likewise, CSPintis intolerant because
axiom ( _csp:many_ ) says that there are just as many pure sets as there are objects.

### 11.e Internal quasi-categoricity of ordinals

We have established the main results discussed in this chapter. Having come this far,
though, we can prove the internal (quasi-)categoricity of the _ordinals_ with almost
no extra effort. We start by internalising a theory of ordinals, relative to a one-place
relation-variable _O_ and a two-place relation-variable<:

```
O( O ,<):=∀ x ∀ y ( x < y →[ O ( x )∧ O ( y )])∧ ( o:res )
(∀ x , y : O )( x < y ∨ x = y ∨ y < x )∧ ( o:tri )
∀ X [(∀ x : O )[(∀ y < x ) X ( y )→ X ( x )]→(∀ x : O ) X ( x )] ( o:ind )
```
And now we can prove internal quasi-categoricity, i.e. intuitively that there is a
second-order isomorphism between initial segments of two internal-structures of
ordinals, O( _O_ 1 ,< 1 )and O( _O_ 2 ,< 2 ):

Theorem 11.9(Internal quasi-categoricity for ordinals):

```
⊢∀ O 1 ∀< 1 ∀ O 2 ∀< 2 ([O( O 1 ,< 1 )∧O( O 2 ,< 2 )]→∃ R QuasiO 1 ▹ 2 ( R ))
```
_where we define:_


```
11.e. internal quasi-categoricity of ordinals 269
```
```
QuasiO 1 ▹ 2 ( R ):=∀ v ∀ y ( R ( v , y )→[ O 1 ( v )∧ O 2 ( y )])∧ ( qo:1 )
∀ v ∀ y ∀ z ([ R ( v , y )∧ R ( v , z )]→ y = z )∧ ( qo:2 )
∀ y ∀ v ∀ x ([ R ( v , y )∧ R ( x , y )]→ v = x )∧ ( qo:3 )
∀ v ∀ x ∀ y ∀ z ([ R ( v , y )∧ R ( x , z )]→[ v < 1 x ↔ y < 2 z ])∧
( qo:4 )
∀ v (∃ yR ( v , y )→(∀ x < 1 v )∃ yR ( x , y ))∧ ( qo:5 )
∀ y (∃ vR ( v , y )→(∀ z < 2 y )∃ vR ( v , z ))∧ ( qo:6 )
[(∀ x : O 1 )∃ yR ( x , y )∨(∀ y : O 2 )∃ xR ( x , y )] ( qo:7 )
```
_Proof._ Exactly as in Theorem 11.1, we define two formulas:

```
Λ( X , v , y ):= O 1 ( v )∧ O 2 ( y )∧
(∀ x < 1 v )(∃ z < 2 y ) X ( x , z )∧
(∀ z < 2 y )(∃ x < 1 v ) X ( x , z )
Γ( X ):=∀ v ∀ y (Λ( X , v , y )→ X ( v , y ))
```
Using Comprehension, and reasoning as in Theorem 11.1, we have an _R_ such that:

```
∀ v 1 ∀ v 2 ( R ( v 1 , v 2 )↔∀ X [Γ( X )→ X ( v 1 , v 2 )]
∀ v 1 ∀ v 2 ( R ( v 1 , v 2 )↔Λ( R , v 1 , v 2 )) (11.5)
```
We now prove each conjunct of ( _qo:1_ )–( _qo:7_ ), following the proofs of ( _qp:1_ )–
( _qp:7_ ). Only a couple of the clauses merit distinct comment.
( _qo:2_ )_._ For reductio, suppose _a_ 1 is such that∃ _y_ ∃ _z_ ( _y_ ≠ _z_ ∧ _R_ ( _a_ 1 , _y_ )∧ _R_ ( _a_ 1 , _z_ )).
So _O_ 1 ( _a_ 1 )by ( _qo:1_ ) and so we can assume that _a_ 1 is< 1 -minimal by ( _o:ind_ ). So
for some _a_ 2 , _b_ 2 we have _a_ 2 ≠ _b_ 2 ∧ _R_ ( _a_ 1 , _a_ 2 )∧ _R_ ( _a_ 1 , _b_ 2 ). Since _a_ 2 ≠ _b_ 2 , by
( _qo:1_ ) and ( _o:tri_ ) either _a_ 2 < 2 _b_ 2 or _b_ 2 < 2 _a_ 2 ; without loss of generality, as-
sume _b_ 2 < 2 _a_ 2. Since _R_ ( _a_ 1 , _a_ 2 ), by (11.5) we have Λ( _R_ , _a_ 1 , _a_ 2 )and so(∀ _z_ < 2
_a_ 2 )(∃ _x_ < 1 _a_ 1 ) _R_ ( _x_ , _z_ ). So, there is some _b_ 1 < 1 _a_ 1 such that _R_ ( _b_ 1 , _b_ 2 ). Sim-
ilarly, since Λ( _R_ , _a_ 1 , _b_ 2 )there is some _c_ 2 < 2 _b_ 2 such that _R_ ( _b_ 1 , _c_ 2 ). So _b_ 2 ≠
_c_ 2 ∧ _R_ ( _b_ 1 , _b_ 2 )∧ _R_ ( _b_ 1 , _c_ 2 )with _b_ 1 < 1 _a_ 1 , contradicting _a_ 1 ’s< 1 -minimality.
( _qo:5_ ) _and_ ( _qo:6_ )_._ If _R_ ( _a_ 1 , _a_ 2 ), then Λ( _R_ , _a_ 1 , _a_ 2 )by (11.5).



