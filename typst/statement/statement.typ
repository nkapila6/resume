#import "@preview/fontawesome:0.5.0": *
#import "@preview/modernpro-coverletter:0.0.6": *
// #import "@preview/hidden-bib:0.1.1": hidden-bibliography

#let refs = bibliography("refs.yml", title: "References")

#show: statement.with(
  font-type: "PT Serif",
  name: [Nikhil Kapila],
  address: [],
  contacts: (
    // (text: [#fa-icon("location-dot") UAE]),
    (text: [#fa-icon("mobile") +971503564790], link: "tel:+971503564790"),
    (text: [#fa-icon("link") nkapila.me], link: "https://www.nkapila.me"),
    (text: [#fa-icon("github") github], link: "https://github.com/nkapila6/"),
    (text: [#fa-icon("envelope") nkapila6\@gatech.edu], link: "mailto:nkapila6@gatech.edu"),
  ),
)

#v(1em)
// #align(center, text(13pt, weight: "semibold")[= Research Interest]) //#underline([Research Interest])])
#set par(first-line-indent: 2em, justify: true) 
#set text(11.5pt, weight: "regular")
#align(center,)[= Research Interests]

My research interests lie primarily in optimization and inductive biases of deep learning architectures, such as: multimodal image and text models, and generative models. 

== Optimization
In optimization, I would like to look into techniques like knowledge distillation, neural architectural search and pruning to create smaller models that outperform their larger counterparts. I recently explored this with my project `CNNtention` @CNNtention wherein we augmented attention layers in a deep ResNet model to see if refined feature maps through attention yield any benefit for an image classification task on MNIST and CIFAR-10. For upcoming work, in my personal downtime, I aim to investigate knowledge distillation techniques, i.e. some form of intermediate feature map alignment using a bigger model.

Apart from architectural changes, compute efficiency can be improved through alternative methods.
It could be something simple like decomposing the attention matrix (bilinear attention) by approximating the full `Wx` to save on compute. Another example is replacing traditional matmuls with Hadamard products as seen in certain GRU implementations @matmulfree.

Then, there exist architectures such as WANNs @wanns which has some similarity with @matmulfree where weights are fixed but architectural changes are focused on through a genetic algorithm like approach which suprisingly gives decent performance.

== Multimodal and Generative
As I dive more into the world of deep learning, I am able to recognize many similarities across modalities. I realize a lot of the ideas from image could be transferred to other modalities such as speech/text with ease. 

One example is the case of using `Neural Style Transfer for Images` @origstyletransfer and the case of using specific loss functions to dictate these changes @jjstyletransfer. I see a lot of similarities in the audio/speech modality where one could perform voice cloning by performing a similar style transfer approach in audio @generspeech. Of course, there are many newer pre-trained few/zero-shot speech models that exist now.

It's fascinating to observe how architectures with similar design principles can operate across 
different modalities by learning appropriate latent representations, 
as demonstrated by contrastive learning approaches 
like CLIP that create aligned embedding spaces. 
The recent emergence of foundation models has further highlighted how architectural decisions 
can enable powerful cross-modal capabilities, allowing systems to 
reason across text, images, audio, and other modalities with increasing coherence and sophistication.

== Biases
Another aspect of modeling is having good knowledge of its inductive biases. One paper that I found really intriguing in this regard is when it was found that CNNs inherently have a texture bias but could easily be converted into shape biases through training @cnnbias.

== Tabular modalities
Major focus on NLP and computer vision tasks have led to ignorance of tabular data @tabular where ensemble methods are still SOTA. New approaches such as TabFN @tabfn and CARTE @carte that combine deep learning approaches are now creating new interests in these fields. 

== Research Trajectory
I am due to complete my MS in Fall of 2025. Currently I am working on a few projects as listed below.
*Coursework*
- ICD9 disease prediction from unstructured clinical notes of MIMIC-III. Using the `FarSight` paper as our base @farsight.

*Personal Projects*: Whenever I'm free from coursework, I work on the below projects to deepen my understanding in generative modeling.
- *Implementing GANs and VAEs*: Better my understanding of generative modeling, how biases of certain losses change the output.
- *Implementation of models such as GPT2*: To get a better understanding of what goes into pre-training large language models.

*Future Projects*:
- I plan to take the Education Technology course in the Fall where we are pushed to do literature review and develop publishable work in the areas of EdTech. I am preparing for it now and looking into systems / approaches that can help "induce" `socratic learning`.

== Research Impact
Research in model optimization, multimodal learning, and inductive biases has significant practical applications. These approaches can democratize AI by enabling efficient deployment on edge devices, enhancing accessibility technologies, and enabling more natural human-computer interaction (Iron Man-like natural language UX).

#pagebreak()
// = References
// #hidden-bibliography(
//   bibliography("refs.yml")
// )
#refs
