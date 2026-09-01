# Philosophy and Model Theory

**Yazar:** Tim Button ve Sean Walsh (tarihsel ek: Wilfrid Hodges)
**Kaynak:** Oxford University Press, 2018 (First Edition)
**Tür:** Akademik
**Kapsam:** Model teorisinin felsefi çıkarımları — birinci/ikinci mertebe mantık, referansın belirsizliği, kategorisellik, iç kategorisellik argümanları, Boole-değerli yapılar, tip/Stone uzayları, sınıflandırma teorisi
**Yayın Tarihi:** 2018
**Kaynakça kaydı:** [[00_Context/kaynaklar.md]]

---

## Anahtar Özet (TR)

Button ve Walsh, model teorisinin (bir formel dilin farklı yapılarda nasıl "doğru" sayılabileceğini inceleyen matematiksel mantık dalı) felsefi sonuçlarını ele alıyor. Kitabın ilk yarısı, model-teorik belirsizlik argümanlarına (Putnam'ın "model-teorik argümanı", permütasyon argümanları, Newman'ın yapısalcılık itirazı) odaklanıyor: bir teorinin tüm gözlemsel/matematiksel içeriği sabit tutulsa bile, o teoriyi doğru kılan modelin (referansın) belirsiz kalabileceğini, bunun da dış dünyaya dair metafizik gerçekçiliği tehdit ettiğini tartışıyorlar.

İkinci yarı, bu belirsizliğe karşı bir çözüm olarak "iç kategoricilik" (internal categoricity) argümanlarını geliştiriyor — doğal sayılar (Dedekind), kümeler (Zermelo) ve doğruluk gibi kavramların, ikinci mertebe mantıkla iç bir bakış açısından nasıl tekil (kategorik) şekilde belirlenebileceğini gösteriyorlar. Kitap, Boole-değerli yapılar, tip/Stone uzayları, ayırt edilemezlik (indiscernibility) ve sayılamaz kategoriklik gibi daha teknik model teorisi araçlarını da bu felsefi çerçeveye bağlıyor; ekte Wilfrid Hodges model teorisinin tarihini anlatıyor.

## Key Summary (EN)

Button and Walsh examine the philosophical consequences of model theory (the branch of mathematical logic studying how a formal language can be "true" in different structures). The first half of the book focuses on model-theoretic indeterminacy arguments (Putnam's "model-theoretic argument," permutation arguments, Newman's objection to structuralism): even when a theory's entire observational or mathematical content is fixed, the model (reference) that makes it true can remain indeterminate, which threatens metaphysical realism about the external world.

The second half develops "internal categoricity" arguments as a response to this indeterminacy — showing how concepts like the natural numbers (Dedekind), sets (Zermelo), and truth can be pinned down categorically from an internal, second-order-logic standpoint. The book connects this philosophical framework to more technical model-theoretic machinery, including Boolean-valued structures, type/Stone spaces, indiscernibility, and uncountable categoricity; a historical appendix by Wilfrid Hodges traces the development of model theory itself.

---

Philosophy and Model Theory



# Philosophy and

# Model Theory

## Tim Button and Sean Walsh

_with a historical appendix by Wilfrid Hodges_


## 3

Great Clarendon Street, Oxford, ox2 6dp,
United Kingdom
Oxford University Press is a department of the University of Oxford.
It furthers the University’s objective of excellence in research, scholarship,
and education by publishing worldwide. Oxford is a registered trade mark of
Oxford University Press in the UK and in certain other countries
© Tim Button and Sean Walsh 2018
© Historical Appendix D Wilfrid Hodges
The moral rights of the authors have been asserted
First Edition published in 2018
Impression: 1
All rights reserved. No part of this publication may be reproduced, stored in
a retrieval system, or transmitted, in any form or by any means, without the
prior permission in writing of Oxford University Press, or as expressly permitted
by law, by licence, or under terms agreed with the appropriate reprographics
rights organization. Enquiries concerning reproduction outside the scope of the
above should be sent to the Rights Department, Oxford University Press, at the
address above
You must not circulate this work in any other form
and you must impose this same condition on any acquirer
Published in the United States of America by Oxford University Press
198 Madison Avenue, New York, NY 10016, United States of America
British Library Cataloguing in Publication Data
Data available
Library of Congress Control Number: 2017959066
ISBN: 978–0–19–879039–6 (hbk.)
978–0–19–879040–2 (pbk.)
Printed and bound by
CPI Group (UK) Ltd, Croydon, cr0 4yy
Links to third party websites are provided by Oxford in good faith and
for information only. Oxford disclaims any responsibility for the materials
contained in any third party website referenced in this work.


Preface

Philosophy and model theory frequently meet one another. This book aims to un-
derstand their interactions.
Model theory is used in every ‘theoretical’ branch of analytic philosophy: in phi-
losophy of mathematics; in philosophy of science; in philosophy of language; in
philosophical logic; and in metaphysics. But these wide-ranging appeals to model
theory have created a highly fragmented literature. On the one hand, many philo-
sophically significant results are found only in mathematics textbooks: these are
aimed squarely at mathematicians; they typically presuppose that the reader has a
serious background in mathematics; and little clue is given as to their philosophical
significance. On the other hand, the philosophical applications of these results are
scattered across disconnected pockets of papers.
The first aim of our book, then, is to consider the _philosophical uses of model the-
ory_. We state and prove the best versions of results for philosophical purposes. We
then probe their philosophical significance. And we show how similar dialectical
situations arise repeatedly across fragmented debates in different areas.
The second aim of our book, though, is to consider the _philosophy of model theory_.
Model theory itself is rarely taken as the subject matter of philosophising (contrast
this with the philosophy of biology, or the philosophy of set theory). But model
theory is a beautiful part of pure mathematics, and worthy of philosophical study
in its own right.
Both aims give rise to challenges. On the one hand: the philosophical uses of
model theory are scattered across a disunified literature. And on the other hand:
there is scarcely any literature on the philosophy of model theory.
All of which is to say: _philosophy and model theory isn’t really ‘a thing’ yet_. This
book aims to start carving out such a thing. We want to chart the rock-face and
trace its dialectical contours. But we present this book, not as a final word on what
philosophically inclined model theorists and model-theoretically inclined philoso-
phers should do, but as an invitation to join in.
So. This is not a book in which a single axe is ground, page by page, into an
increasingly sharp blade. No fundamental line of argument—arching from Chapter
1 through to Chapter 17—serves as the spine of the book. What knits the chapters
together into a single book is not a single thesis, but a sequence of overlapping,
criss-crossing themes.


vi preface

```
Topic selection
```
Precisely because philosophy and model theory isn’t yet ‘a thing’, we have had to
make some difficult decisions about what topics to discuss.
On the one hand, we aimed to pick topics which should be of fairly mainstream
philosophical concern. So, when it comes to the philosophical _uses_ of model the-
ory, we have largely considered topics concerning _reference_ , _realism_ , and _doxology_
(a term we introduce in Chapter 6). But, even when we have considered questions
which fall squarely within in the philosophy _of_ model theory, the questions that
we have focussed on are clearly instances of ‘big questions’. We look at questions
of _sameness_ of theories/structure (Chapter 5); of taking _diverse perspectives_ on the
same concept (in Chapter 14); of how to draw _boundaries_ of logic (in Chapter 16);
and of _classification_ of mathematical objects (Chapter 17).
On the other hand, we also wanted to give you a decent bang for your buck. We
figured that if you were going to have to wrestle with some new philosophical idea
or model-theoretic result, then you should get to see it put to decent use. (This ex-
plains why, for example, the Push-Through Construction, the just-more theory ma-
noeuvre, supervaluational semantics, and the ideas of moderation and modelism,
occur so often in this book.) Conversely, we have had to set aside debates—no
matter how interesting—which would have taken too long to set up.
All of which is to say: this book is not comprehensive. Not even close.
Although we consider models of set theory in Chapters 8 and 11, we scarcely
scratch the surface. Although we discuss infinitary logics in Chapters 15–16, we only
use them in fairly limited ways.^1 Whilst we mention Tennenbaum’s Theorem in
Chapter 7, that is as close as we get to computable model theory. We devote only
one brief section to o-minimality, namely §4.10. And although we consider quanti-
fiers in Chapter 16 and frequently touch on issues concerning logical consequence,
we never address the latter topic head on.^2
The grave enormity, though, is that we have barely scratched the surface of model
theory itself. As the table of contents reveals, the vast majority of the book considers
model theory as it existed before Morley’s Categoricity Theorem.
Partially correcting for this, Wilfrid Hodges’ wonderful historical essay appears
as Part D of this book. Wilfrid’s essay treats Morley’s Theorem as a pivot-point for
the subject of model theory. He looks back critically to the history, to uncover the
notions at work in Morley’s Theorem and its proof, and he looks forward to the
riches that have followed from it. We have both learned so much from Wilfrid’s
_Model Theory_ ,^3 and we are delighted to include his ‘short history’ here.

(^1) We do not, for example, consider the connection between infinitary logics and supervenience, as
Glanzberg (2001) and Bader (2011) do.
(^2) For that, we would point the reader to Blanchette (2001) and Shapiro (2005a).
(^3) Hodges (1993).


```
preface vii
```
Still, concerning all those topics which we have omitted: we intend no slight
against them. But there is only so much one book can do, and this book is already
much (much) longer than we originally planned. We are sincere in our earlier claim,
that this book is not offered as a final word, but as an invitation to take part.

```
Structuring the book
```
Having selected our topics, we needed to arrange them into a book. At this point,
we realised that these topics have no natural linear ordering.
As such, we have tried to strike a balance between three aims that did not always
point in the same direction: to order by _philosophical theme_ , to order by increasing
_philosophical sophistication_ , and to order by increasing _mathematical sophistication_.
The book’s final structure of represents our best compromise between these three
aims. It is divided into three main parts: _Reference and realism_ , _Categoricity_ , and
_Indiscernibility and classification_.
Each part has an introduction, and those who want to dip in and out of particular
topics, rather than reading cover-to-cover, should read the three part-introductions
after they have finished reading this preface. The part-introductions provide the-
matic overviews of each chapter, and they also contain diagrams which depict the
dependencies between each section of the book. In combination with the table of
contents, these diagrams will allow readers to take shortcuts to their favourite des-
tinations, without having to stop to smell every rose along the way.

```
Presuppositions and proofs
```
So far as possible, the book assumes only that you have completed a 101-level logic
course, and so have some familiarity with first-order logic.
Inevitably, there are some exceptions to this: we were forced to assume some
familiarity with analysis when discussing infinitesimals in Chapter 4, and equally
some familiarity with topology when discussing Stone spaces in Chapter 14. We do
not prove Gödel’s incompleteness results, although we do state versions of them in
§5.a. A book can only be so self-contained.
By and large, though, this book _is_ self-contained. When we invoke a model-
theoretic notion, we almost always define the notion formally in the text. When
it comes to proofs, we follow these rules of thumb.
The _main text_ includes both brief proofs, and also those proofs which we wanted
to discuss directly.
The _appendices_ include proofs which we wanted to include in the book, but
which were too long to feature in the main text. These include: proofs concern-
ing elementary topics which our readers should come to understand (at least one


viii preface

day); proofs which are difficult to access in the existing literature; proofs of certain
folk-lore results; and proofs of new results.
But the _book omits_ all proofs which are both readily accessed and too long to be
self-contained. In such cases, we simply provide readers with citations.
The quick moral for readers to extract is this. If you encounter a proof in the main
text of a chapter, you should follow it through. But we would add a note for read-
ers whose primary background is in philosophy. If you really want to understand a
mathematical concept, you need to see it in action. Read the appendices!

```
Acknowledgements
```
The book arose from a seminar series on philosophy and model theory that we ran
in Birkbeck in Autumn 2011. We turned the seminar into a paper, but it was vastly
too long. An anonymous referee for _Philosophia Mathematica_ suggested the paper
might form the basis for a book. So it did.
We have presented topics from this book several times. It would not be the
book it is, without the feedback, questions and comments we have received. So
we owe thanks to: an anonymous referee for _Philosophia Mathematica_ , and James
Studd for OUP; and to Sarah Acton, George Anegg, Andrew Arana, Bahram Assa-
dian, John Baldwin, Kyle Banick, Neil Barton, Timothy Bays, Anna Bellomo, Liam
Bright, Chloé de Canson, Adam Caulton, Catrin Campbell-Moore, John Corco-
ran, Radin Dardashti, Walter Dean, Natalja Deng, William Demopoulos, Michael
Detlefsen, Fiona Doherty, Cian Dorr, Stephen Duxbury, Sean Ebels-Duggan, Sam
Eklund, Hartry Field, Branden Fitelson, Vera Flocke, Salvatore Florio, Peter Fritz,
Michael Gabbay, Haim Gaifman, J. Ethan Galebach, Marcus Giaquinto, Peter Gib-
son, Tamara von Glehn, Owen Griffiths, Emmylou Haffner, Bob Hale, Jeremy
Heis, Will Hendy, Simon Hewitt, Kate Hodesdon, Wilfrid Hodges, Luca Incur-
vati, Douglas Jesseph, Nicholas Jones, Peter Koellner, Brian King, Eleanor Knox, Jo-
hannes Korbmacher, Arnold Koslow, Hans-Christoph Kotzsch, Greg Lauro, Sarah
Lawsky, Øystein Linnebo, Yang Liu, Pen Maddy, Kate Manion, Tony Martin, Guil-
laume Massas, Vann McGee, Toby Meadows, Richard Mendelsohn, Christopher
Mitsch, Stella Moon, Adrian Moore, J. Brian Pitts, Jonathan Nassim, Fredrik Ny-
seth, Sara Parhizgari, Charles Parsons, Jonathan Payne, Graham Priest, Michael
Potter, Hilary Putnam, Paula Quinon, David Rabouin, Erich Reck, Sam Roberts,
Marcus Rossberg, J. Schatz, Gil Sagi, Bernhard Salow, Chris Scambler, Thomas
Schindler, Dana Scott, Stewart Shapiro, Gila Sher, Lukas Skiba, Jönne Speck, Se-
bastian Speitel, Will Stafford, Trevor Teitel, Robert Trueman, Jouko Väänänen, Kai
Wehmeier, J. Robert G. Williams, John Wigglesworth, Hugh Woodin, Jack Woods,
Crispin Wright, Wesley Wrigley, and Kino Zhao.
We owe some special debts to people involved in the original Birkbeck seminar.


```
preface ix
```
First, the seminar was held under the auspices of the Department of Philosophy at
Birkbeck and Øystein Linnebo’s European Research Council-funded project ‘Plu-
rals, Predicates, and Paradox’, and we are very grateful to all the people from the
project and the department for participating and helping to make the seminar pos-
sible. Second, we were lucky to have several great external speakers visit the sem-
inar, whom we would especially like to thank. The speakers were: Timothy Bays,
Walter Dean, Volker Halbach, Leon Horsten, Richard Kaye, Jeff Ketland, Angus
Macintyre, Paula Quinon, Peter Smith, and J. Robert G. Williams. Third, many of
the external talks were hosted by the Institute of Philosophy, and we wish to thank
Barry C. Smith and Shahrar Ali for all their support and help in this connection.
A more distant yet important debt is owed to Denis Bonnay, Brice Halimi, and
Jean-Michel Salanskis, who organised a lovely event in Paris in June 2010 called ‘Phi-
losophy and Model Theory.’ That event got some of us first thinking about ‘Philos-
ophy and Model Theory’ as a unified topic.
We are also grateful to various editors and publishers for allowing us to reuse pre-
viously published material. Chapter 5 draws heavily on Walsh 2014, and the copy-
right is held by the Association for Symbolic Logic and is being used with their
permission. Chapters 7–11 draw heavily upon on Button and Walsh 2016, published
by _Philosophia Mathematica_. Finally, §13.7 draws from Button 2016b, published by
_Analysis_ , and §15.1 draws from Button 2017, published by the _Notre Dame Journal of
Formal Logic_.
Finally, though, a word from us, as individuals.
_From Tim._ I want to offer my deep thanks to the Leverhulme Trust: their fund-
ing, in the form of a Philip Leverhulme Prize (plp–2014–140), enabled me to take
the research leave necessary for this book. But I mostly want to thank two very spe-
cial people. Without Sean, this book could not be. And without my Ben, I could
not be.
_From Sean._ I want to thank the Kurt Gödel Society, whose funding, in the form
of a Kurt Gödel Research Prize Fellowship, helped us put on the original Birkbeck
seminar. I also want to thank Tim for being a model co-author and a model friend.
Finally, I want to thank Kari for her complete love and support.



## Contents






- A Reference and realism
- 1 Logics and languages
   - 1.1 Signatures and structures
   - 1.2 First-order logic: a first look
   - 1.3 The Tarskian approach to semantics
   - 1.4 Semantics for variables
   - 1.5 The Robinsonian approach to semantics
   - 1.6 Straining the notion of ‘language’
   - 1.7 The Hybrid approach to semantics
   - 1.8 Linguistic compositionality
   - 1.9 Second-order logic: syntax
   - 1.10 Full semantics
   - 1.11 Henkin semantics
   - 1.12 Consequence
   - 1.13 Definability
   - 1.a First- and second-order arithmetic
   - 1.b First- and second-order set theory
   - 1.c Deductive systems
- 2 Permutations and referential indeterminacy
   - 2.1 Isomorphism and the Push-Through Construction
   - 2.2 Benacerraf’s use of Push-Through
   - 2.3 Putnam’s use of Push-Through
   - 2.4 Attempts to secure reference in mathematics
   - 2.5 Supervaluationism and indeterminacy
   - 2.6 Conclusion
   - 2.a Eligibility, definitions, and Completeness
   - 2.b Isomorphism and satisfaction
- 3 Ramsey sentences and Newman’s objection
   - 3.1 The o/t dichotomy
   - 3.2 Ramsey sentences
   - 3.3 The promise of Ramsey sentences
   - 3.4 A caveat on the o/t dichotomy
   - 3.5 Newman’s criticism of Russell
   - 3.6 The Newman-conservation-objection xii contents
   - 3.7 Observation vocabulary versus observable objects
   - 3.8 The Newman-cardinality-objection
   - 3.9 Mixed-predicates again: the case of causation
   - 3.10 Natural properties and just more theory
   - 3.a Newman and elementary extensions
   - 3.b Conservation in first-order theories
- 4 Compactness, infinitesimals, and the reals
   - 4.1 The Compactness Theorem
   - 4.2 Infinitesimals
   - 4.3 Notational conventions
   - 4.4 Differentials, derivatives, and the use of infinitesimals
   - 4.5 The orders of infinite smallness
   - 4.6 Non-standard analysis with a valuation
   - 4.7 Instrumentalism and conservation
   - 4.8 Historical fidelity
   - 4.9 Axiomatising non-standard analysis
   - 4.10 Axiomatising the reals
   - 4.a Gödel’s Completeness Theorem
   - 4.b A model-theoretic proof of Compactness
   - 4.c The valuation function of §4.6
- 5 Sameness of structure and theory
   - 5.1 Definitional equivalence
   - 5.2 Sameness of structure and ante rem structuralism
   - 5.3 Interpretability
   - 5.4 Biinterpretability
   - 5.5 From structures to theories
   - 5.6 Interpretability and the transfer of truth
   - 5.7 Interpretability and arithmetical equivalence
   - 5.8 Interpretability and transfer of proof
   - 5.9 Conclusion
   - 5.a Arithmetisation of syntax and incompleteness
   - 5.b Definitional equivalence in second-order logic
- B Categoricity
- 6 Modelism and mathematical doxology
   - 6.1 Towards modelism
   - 6.2 Objects-modelism contents xiii
   - 6.3 Doxology, objectual version
   - 6.4 Concepts-modelism
   - 6.5 Doxology, conceptual version
- 7 Categoricity and the natural numbers
   - 7.1 Moderate modelism
   - 7.2 Aspirations to Categoricity
   - 7.3 Categoricity within first-order model theory
   - 7.4 Dedekind’s Categoricity Theorem
   - 7.5 Metatheory of full second-order logic
   - 7.6 Attitudes towards full second-order logic
   - 7.7 Moderate modelism and full second-order logic
   - 7.8 Clarifications
   - 7.9 Moderation and compactness
   - 7.10 Weaker logics which deliver categoricity
   - 7.11 Application to specific kinds of moderate modelism
   - 7.12 Two simple problems for modelists
   - 7.a Proof of the Löwenheim–Skolem Theorem
- 8 Categoricity and the sets
   - 8.1 Transitive models and inaccessibles
   - 8.2 Models of first-order set theory
   - 8.3 Zermelo’s Quasi-Categoricity Theorem
   - 8.4 Attitudes towards full second-order logic: redux
   - 8.5 Axiomatising the iterative process
   - 8.6 Isaacson and incomplete structure
   - 8.a Zermelo Quasi-Categoricity
   - 8.b Elementary Scott–Potter foundations
   - 8.c Scott–Potter Quasi-Categoricity
- 9 Transcendental arguments against model-theoretical scepticism
   - 9.1 Model-theoretical scepticism
   - 9.2 Moorean versus transcendental arguments
   - 9.3 The Metaresources Transcendental Argument
   - 9.4 The Disquotational Transcendental Argument
   - 9.5 Ineffable sceptical concerns
   - 9.a Application: the (non-)absoluteness of truth
- 10 Internal categoricity and the natural numbers
   - 10.1 Metamathematics without semantics
   - 10.2 The internal categoricity of arithmetic xiv contents
   - 10.3 Limits on what internal categoricity could show
   - 10.4 The intolerance of arithmetic
   - 10.5 A canonical theory
   - 10.6 The algebraic / univocal distinction
   - 10.7 Situating internalism in the landscape
   - 10.8 Moderate internalists
   - 10.a Connection to Parsons
   - 10.b Proofs of internal categoricity and intolerance
   - 10.c Predicative Comprehension
- 11 Internal categoricity and the sets
   - 11.1 Internalising Scott–Potter set theory
   - 11.2 Quasi-intolerance for pure set theory
   - 11.3 The status of the continuum hypothesis
   - 11.4 Total internal categoricity for pure set theory
   - 11.5 Total intolerance for pure set theory
   - 11.6 Internalism and indefinite extensibility
   - 11.a Connection to McGee
   - 11.b Connection to Martin
   - 11.c Internal quasi-categoricity for SP
   - 11.d Total internal categoricity for CSP
   - 11.e Internal quasi-categoricity of ordinals
- 12 Internal categoricity and truth
   - 12.1 The promise of truth-internalism
   - 12.2 Truth operators
   - 12.3 Internalism about model theory and internal realism
   - 12.4 Truth in higher-order logic
   - 12.5 Two general issues for truth-internalism
   - 12.a Satisfaction in higher-order logic
- 13 Boolean-valued structures
   - 13.1 Semantic-underdetermination via Push-Through
   - 13.2 The theory of Boolean algebras
   - 13.3 Boolean-valued models
   - 13.4 Semantic-underdetermination via filters
   - 13.5 Semanticism
   - 13.6 Bilateralism
   - 13.7 Open-ended-inferentialism
   - 13.8 Internal-inferentialism
   - 13.9 Suszko’s Thesis contents xv
   - 13.a Boolean-valued structures with filters
   - 13.b Full second-order Boolean-valued structures
   - 13.c Ultrafilters, ultraproducts, Łoś, and compactness
   - 13.d The Boolean-non-categoricity of CBA
   - 13.e Proofs concerning bilateralism
- C Indiscernibility and classification
- 14 Types and Stone spaces
   - 14.1 Types for theories
   - 14.2 An algebraic view on compactness
   - 14.3 Stone’s Duality Theorem
   - 14.4 Types, compactness, and stability
   - 14.5 Bivalence and compactness
   - 14.6 A biinterpretation
   - 14.7 Propositions and possible worlds
   - 14.a Topological background
   - 14.b Bivalent-calculi and bivalent-universes
- 15 Indiscernibility
   - 15.1 Notions of indiscernibility
   - 15.2 Singling out indiscernibles
   - 15.3 The identity of indiscernibles
   - 15.4 Two-indiscernibles in infinitary logics
   - 15.5 n -indiscernibles, order, and stability
   - 15.a Charting the grades of discernibility
- 16 Quantifiers
   - 16.1 Generalised quantifiers
   - 16.2 Clarifying the question of logicality
   - 16.3 Tarski and Sher
   - 16.4 Tarski and Klein’s Erlangen Programme
   - 16.5 The Principle of Non-Discrimination
   - 16.6 The Principle of Closure
   - 16.7 McGee’s squeezing argument
   - 16.8 Mathematical content
   - 16.9 Explications and pluralism
- 17 Classification and uncountable categoricity
   - 17.1 The nature of classification xvi contents
   - 17.2 Shelah on classification
   - 17.3 Uncountable categoricity
   - 17.4 Conclusions
   - 17.a Proof of Proposition 17.2
- D Historical appendix
   - A short history of model theory 18 Wilfrid Hodges
   - 18.1 ‘A new branch of metamathematics’
   - 18.2 Replacing the old metamathematics
   - 18.3 Definable relations in one structure
   - 18.4 Building a structure
   - 18.5 Maps between structures
   - 18.6 Equivalence and preservation
   - 18.7 Categoricity and classification theory
   - 18.8 Geometric model theory
   - 18.9 Other languages
   - 18.10 Model theory within mathematics
   - 18.11 Notes
   - 18.12 Acknowledgments
- Bibliography
- Index
- Index of names
- Index of symbols and definitions


## A Reference and realism



Introduction to Part A

The two central themes of Part A are _reference_ and _realism_.
Here is an old philosophical chestnut: _How do we (even manage to) represent the
world?_ Our most sophisticated representations of the world are perhaps linguistic.
So a specialised—but still enormously broad—version of this question is: _How do
words (even manage to) represent things?_
Enter model theory. One of the most basic ideas in model theory is that a struc-
ture assigns interpretations to bits of vocabulary, and in such a way that we can make
excellent sense of the idea that the structure makes each sentence (in that vocabu-
lary) either true or false. Squint slightly, and model theory seems to be providing us
with a perfectly precise, formal way to understand certain aspects of linguistic rep-
resentation. It is no surprise at all, then, that almost any philosophical discussion
of linguistic representation, or reference, or truth, ends up invoking notions which
are recognisably model-theoretic.
In Chapter 1, we introduce the building blocks of model theory: the notions of
signature, structure, and satisfaction. Whilst the bare technical bones should be
familiar to anyone who has covered a 101-level course in mathematical logic, we
also discuss the philosophical question: _How should we best understand quantifiers
and variables?_ Here we see that philosophical issues arise at the very outset of our
model-theoretic investigations. We also introduce second-order logic and its var-
ious semantics. While second-order logic is less commonly employed in contem-
porary model theory, it is employed frequently in philosophy of model theory, and
understanding the differences between its various semantics will be important in
many subsequent chapters.
In Chapter 2, we examine various concerns about the determinacy of reference
and so, perhaps, the determinacy of our representations. Here we encounter fa-
mous arguments from Benacerraf and Putnam, which we explicate using the for-
mal Push-Through Construction. Since isomorphic structures are elementarily
equivalent—that is, they make exactly the same sentences true and false—this
threatens the conclusion that it is radically indeterminate, which of many isomor-
phic structures accurately captures how language represents the world.
Now, one might think that the reference of our word ‘cat’ is constrained by the
causal links between cats and our uses of that word. Fair enough. But there are no
causal links between mathematical objects and mathematical words. So, on certain
conceptions of what humans are like, we will be unable to answer the question:
_How do we (even manage to) refer to any particular mathematical entity?_ That is, we
will have to accept that we _do not_ refer to particular mathematical entities.


4 introduction to part a

Whilst discussing these issues, we introduce Putnam’s famous _just-more-theory
manoeuvre_. It is important to do this both clearly and early, since many versions of
this dialectical move occur in the philosophical literature on model theory. Indeed,
they occur especially frequently in Part B of this book.
Now, philosophers have often linked the topic of reference to the topic of real-
ism. One way to draw the connection is as follows: If reference is radically inde-
terminate, then my word ‘cabbage’ and my word ‘cat’ fail to pick out anything de-
terminately. So when I say something like ‘there is a cabbage and there is a cat’, I
have _at best_ managed to say that there are at least two distinct objects. That seems
to fall far short of expressing any real commitment to _cats_ and _cabbages_ themselves.^1
In short, radical referential indeterminacy threatens to undercut certain kinds of
realism altogether. But only certain kinds: we close Chapter 2 by suggesting that
some versions of mathematical platonism can live with the fact that mathematical
language is radically referentially indeterminate by embracing a supervaluational
semantics.
Concerns about referential indeterminacy also feature in discussions about real-
ism within the philosophy of science. In Chapter 3, we examine a particular version
of scientific realism that arises by considering Ramsey sentences. Roughly, these
are sentences where all the ‘theoretical vocabulary’ has been ‘existentially quanti-
fied away’. Ramsey sentences seem promising, since they seem to incur a kind of
existential commitment to theoretical entities, which is characteristic of realism,
whilst making room for a certain level referential indeterminacy. We look at the re-
lation between Newman’s objection and the Push-Through Construction of Chap-
ter 2, and between Ramsey sentences and various model-theoretic notions of con-
servation. Ultimately, by combining the Push-Through Construction with these
notions of conservation, we argue that the dialectic surrounding Newman’s objec-
tion should track the dialectic of Chapter 2, surrounding Putnam’s permutation ar-
gument in the philosophy of mathematics.
The notions of conservation we introduce in Chapter 3 are crucial to Abraham
Robinson’s attempt to use model theory to salvage Leibniz’s notion of an ‘infinites-
imal’. Infinitesimals are quantities whose absolute value is smaller than that of any
given positive real number. They were an important part of the historical calculus;
they fell from grace with the rise of _ε_ – _δ_ notation; but they were given a new lease
of life within model theory via Robinson’s non-standard analysis. This is the topic
of Chapter 4. Here we introduce the idea of _compactness_ to prove that the use of
infinitesimals is consistent.
Robinson believed that this vindicated the viability of the Leibnizian approach
to the calculus. Against this, Bos has questioned whether Robinson’s non-standard
analysis is genuinely faithful to Leibniz’s mathematical practice. In Chapter 4, we

(^1) Cf. Putnam (1977: 491) and Button (2013: 59–60).


```
introduction to part a 5
```
offer a novel defence of Robinson. By building valuations into Robinson’s model
theory, we prove new results which allow us to approximate more closely what we
know about the Leibnizian conception of the structure of the infinitesimals. In-
deed, we show that Robinson’s non-standard analysis can rehabilitate various his-
torical methods for reasoning with and about infinitesimals that have fallen far from
fashion.
The question remains, of whether we should _believe_ in infinitesimals. Leib-
niz himself was tempted to treat his infinitesimals as ‘convenient fictions’; Robin-
son explicitly regarded his infinitesimals in the same way; and their method of in-
troduction in model theory allows for perhaps the cleanest possible version of a
fictionalist-cum-instrumentalist attitude towards ‘troublesome’ entities. Indeed,
we can prove that reasoning _as if_ there are infinitesimals will only generate results
that one could have obtained _without_ that assumption. One can have anti-realism,
then, with a clear conscience.
In Chapter 5, we take a step back from these specific applications of model the-
ory, to discuss a more methodological question about the philosophical application
of model theory: _under what circumstances should we call two structures ‘the same’?_
This question can be posed within mathematics, where its answer will depend upon
the similarities and differences that matter for the mathematical purposes at hand.
But the question can also be given a metaphysical gloss. In particular, consider a
philosopher who thinks (for example) that: ( _a_ ) there is a _single_ , abstract, entity
which is ‘the natural number structure’, and that ( _b_ ) there is a _single_ , abstract en-
tity which is ‘the structure of the integers’; but that ( _c_ ) these two entities are dis-
tinct. Then this philosopher must provide an account of identity and distinctness
between ‘structures’, so construed; and we show just how hard this is.
Notions of sameness of structure also induce notions of sameness of theory. Af-
ter surveying a wide variety of formal notions of sameness of structure and theory,
we discuss three ambitious claims concerning what sameness of theory preserves,
namely: truth; arithmetical provability; and proof. We conclude that more philo-
sophically ambitious versions of these preservation-theses generally fail.
This meta-issue of sameness of structure and theory is a good place to end Part
A, though, both because ( _a_ ) the discussion is enhanced by the specific examples
of structures and theories discussed earlier in the text, and because ( _b_ ) questions
about sameness of structure and theory inform a number of the discussions and
debates which we treat in later Parts of the book.
Readers who only want to dip into particular topics of Part A can consult the
following Hasse diagram of dependencies between the sections of Part A, whilst
referring to the table of contents. A section _y_ depends upon a section _x_ iff there is
a path leading downwards from _x_ to _y_. So, a reader who wants to get straight to the
discussion of fictionalism about infinitesimals will want to leap straight to §4.7; but


6 introduction to part a

they should know that this section assumes a prior understanding of §§2.1, 4.1, 4.2,
and much (but not all) of Chapter 1. (We omit purely technical appendices from
this diagram.)

```
1.1
1.2
1.3
1.5 1.4
1.71.6
1.9 1.8
1.10
1.11
1.12
1.13
```
1. a
    1. b1. c

```
2.1
2.2
2.3
2.4
2.5
```
```
2.a
```
```
3.1
3.2
3.3
3.5
3.6
3.7
3.8
```
```
3.4
```
```
3.9
3.10 3. a
```
```
4.1
4.2
4.3
4.4
4.5
4.6
```
```
4.7
```
```
4.8
4.9
4.10
```
```
5.1
5.3
5.4
5.5
5.65.75.8
```
```
5.2
```

