#import "@preview/basic-resume:0.2.4": *
#import "@preview/fontawesome:0.5.0": *
#set page(numbering: "1")
#set heading(numbering: "1.")

// Personal information
#let name = "Nikhil Kapila"
// #let email = [#link("nkapila6@gatech.edu")[#fa-mailbox() Email]]
// #let github = "github.com/nkapila6"
// #let linkedin = "linkedin.com/in/nikhilkapila"
// #let phone = "(+971) 50 3564790"
// #let personal-site = "nkapila.me"

// #show: resume.with(
//   author: name,
//   email: email,
//   github: github,
//   linkedin: linkedin,
//   phone: phone,
//   personal-site: personal-site,
//   accent-color: "#26428b",
//   font: "New Computer Modern",
//   paper: "a4",
//   author-position: left,
//   personal-info-position: left,
// )

#show: resume.with(
  author: name,
  // Use empty strings for these since we're using our custom contact section
  email: "",
  github: "",
  linkedin: "",
  phone: "",
  personal-site: "",
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "a4",
  author-position: left,
  personal-info-position: left,
)

#let email = [#link("mailto:nkapila6@gatech.edu")[#fa-envelope() nkapila6\@gatech.edu]]
#let phone = [#fa-phone()\(+971)503564790]
#let github = [#link("https://github.com/nkapila6")[#fa-github() nkapila6]]
#let linkedin = [#link("https://linkedin.com/in/nikhilkapila")[#fa-linkedin() nikhilkapila]]
#let website = [#link("https://nkapila.me/")[#fa-globe() nkapila.me]]

// negative spacing
#v(-1.75em)
#let contact-section = grid(
  columns: (2fr,2fr,1.5fr,2fr,2fr),
  column-gutter: .75em,
  row-gutter: 0.5em,
  email,
  phone,
  github,
  linkedin,
  website,
  []
)
#contact-section

// Summary
#let summary = [
  Skilled Machine Learning Practitioner with hands-on 
  experience with Machine Learning and Deep Learning techniques 
  coupled with experience in lighting and lighting control systems. 
  Proven ability to design and deploy AI models, optimize ML pipelines, 
  and implement smart control solutions. 
  // Authored pre-prints on attention mechanisms in CNNs, 
  // bridging AI research with real-world applications.
]

== Summary
#summary

== Research Interests
My research interests lies in optimization of deep learning architectures, multimodal image and text models, 
and generative image/speech models. 
In optimization, I focus on techniques like knowledge distillation, neural architecture search, 
and pruning to create smaller models that outperform their larger counterparts.
//I tried to do this with my recent
//project #ref(<pubs>, supplement:[#link("https://arxiv.org/abs/2412.11657")[CNNtention] (as seen in page], form:"page")) 
//where I augmented a few attention layers within a deep resnet and saw improvement in qualitative performance.

I am further intrigued by cross-modal similarities. For example, adapting image style transfer to audio with the same approach of refining feature maps. 
Models like CLIP show how contrastive learning aligns embeddings/latent space across modalities, and  the rise of foundation models shows how thoughtful architectural choices enable reasoning across text, images, audio, etc.

== Education

#edu(
  institution: "Georgia Institute of Technology",
  location: "Atlanta, GA",
  dates: dates-helper(start-date: "Jan 2023", end-date: "Present"),
  degree: "Master of Science in Computer Science - Artificial Intelligence (OMSCS Program)",
  consistent: true
)
- Current GPA: 4.00 / 4.00
- Completed Coursework: Deep Learning, Machine Learning, Software Development Process, Knowledge-Based AI, Human-Computer Interaction
- `Unofficial` TA for Georgia Tech's Machine Learning class. Maintaining #link("https://github.com/knakamura13/mlrose-ky")[`mlrose`] library and documentation used in the class.
- Ongoing Coursework: Natural Language Processing, Big Data for Health (Spring 2025)
- Upcoming Coursework (Summer/Fall 2025): TBC

#edu(
  institution: "National Institute of Technology",
  location: "New Delhi, India",
  dates: dates-helper(start-date: "2014", end-date: "2018"),
  degree: "Bachelors of Technology in Electronics and Communication Engineering",
  consistent: true
)
- GPA: 6.97 / 10.00
- Relevant CS courses taken: Data Structures, Algorithms, Object-Oriented Programming, Computer Networks, Image Processing

== Employment History

#work(
  title: "Technical Engineer",
  company: "Luxtron Systems",
  location: "United Arab Emirates",
  dates: dates-helper(start-date: "Jun 2018", end-date: "Present"),
)
- Led the transition towards lighting and control systems from LED components which increased business value.
- Designing and installation of lighting control systems. 
- Collaborated with cross-functional teams to deliver customized control solutions.
- Currently working on integrating AI features into our service offerings.

#work(
  title: "Graduate Researcher",
  company: "Georgia Institute of Technology",
  location: "Remote (Atlanta, GA)",
  dates: dates-helper(start-date: "May 2024", end-date: "Aug 2024"),
)
- Graduate researcher, a part of the #link("https://sites.gatech.edu/human-augmented-analytics-group/alumni/")[Human-Augmented Analytics Group].
- Implemented a full MLOps pipeline and researched whether LSTM models could be democratized on different building data. Published findings and models on HuggingFace Spaces and Github.

#work(
  title: "R&D Trainee",
  company: "Helvar Oy Ab",
  location: "Finland",
  dates: dates-helper(start-date: "Aug 2019", end-date: "Sept 2019"),
)
- Evaluated intelligent wireless nodes for lighting control systems.
- Created technical documentation for AC-DC converters in LED lighting.
- Presented market research findings for Middle Eastern lighting trends.

#work(
  title: "Research Intern",
  company: "Indian Institute of Technology, Delhi",
  location: "New Delhi, India",
  dates: dates-helper(start-date: "2017", end-date: "2018"),
)
- Developed simulations for quadrotor systems using MATLAB Simulink.
- Analyzed mechanical systems leading to quadrotor design optimizations.

== Research Work (Pre Prints) <pubs>
- Ongoing for Big Data for Health - Long Term Disease (ICD-9) Prediction using Unstructured Clinical Notes
  #link("https://github.com/AttentionSeekers/NLPVise/")[#fa-github() Github]

- *Kapila, N.*, Glattki, J., & Rathi, T. (December 2024). <CNNtention>
  #link("https://arxiv.org/abs/2412.11657")["CNNtention: Can CNNs do better with Attention?"] arXiv:2412.11657 [cs.CV]. 
  #link("https://github.com/AttentionSeekers/CNNtention/")[#fa-github() Github]

- *Kapila, N.* (July 2024). 
  #link("https://nkapila.me/masters/mscs-research-work")["Training LSTMs on Building Genome 2 Data."]
  #link("https://github.com/nkapila6/lstm-bgd2")[#fa-github() Github]

== Skills

#let skills = [
  *Languages*: Python, C, C++, MATLAB.

  *Frameworks*: Experienced with PyTorch, ScikitLearn, NumPy/Numba, Pandas/Polars, Captum, Skorch, MLFlow.
  
  // *Machine Learning Techniques*: Deep Learning, Attention Mechanisms, Transformers, Large Language Model (LLM) Fine-tuning, Model Optimization.
  
  *Tools*: HuggingFace, GitHub, Git VCS, DIALux, AutoCAD.
  
  *Research and Development*: Academic Research, Lit Review, Market Review, Technical Documentation, Experiment Design, Data Pipeline Implementation.
  
  *Soft Skills*: Collaboration in Cross-Functional Teams, Technical Communication, Problem-Solving, Project Management.
]

#skills

== Coded Projects -- Open Source Contributions & Masters Work

#project(
  name: "Deep Learning Projects",
  dates: "Fall 2024",
  url: "https://github.com/AttentionSeekers/CNNtention",
)
- Developed FCNNs, CNNs, generative models, RNNs, LSTMs, and Transformers using NumPy (from scratch) and PyTorch
- Designed and implemented the CNNtention project where we experimented with different types of attention layers in a deep ResNet.

#project(
  name: "LSTMs on BGD2 dataset",
  dates: "Summer 2024",
  url: "https://github.com/nkapila6/lstm-bgd2",
)
- Created a full end-to-end Machine Learning pipeline using PyTorch & Metaflow MLOps library during my research position.
- Deployed using Docker

#project(
  name: "Machine Learning Projects",
  dates: "Spring 2024",
  url: "https://nkapila.me/masters/cs7641-review",
)
- Implemented ML algorithms, including classification/regression, clustering, dimensionality reduction, and reinforcement learning agents. Wrote highly technical reports on each of these topics.
- Created a post on my technical blog detailing the adventures and learnings in this class.

#project(
  name: "Open Source Contributions",
)
- #link("https://github.com/knakamura13/mlrose-ky")[*mlrose-ky*]: Contributing to `mlrose`, a Python library used in Georgia Tech's CS7641 Machine Learning class. 
  Wrote the full #link("https://nkapila6.github.io/mlrose-ky/")[documentation] and added new features.
- *Biscuit Code Editor*: Added a feature during my free time as a part of Hackoctober Fest 2024
- *Full List* of projects can be viewed on my GitHub

// #project(
//   name: "RPM Problems Solver",
//   dates: "Summer 2023"
// )
// - Developed as part of the Knowledge-Based AI (KBAI) course to create an intelligent agent capable of solving the Ravens IQ Test
// - Score: 74.00 / 96.00

// #project(
//   name: "Job Comparison Android App",
//   dates: "Fall 2023",
//   url: "https://www.youtube.com/watch?v=BDsmPKvq3rs",
// )
// - Built a data-persistent Android application to compare and rank jobs based on multiple parameters
// - Developed during the Software Development Process (SDP) course

== Certifications -- Listing Recent 3 Only

- #certificates(
  name: "Fundamentals of Deep Learning",
  issuer: "Nvidia",
  date: "2024",
  url: "https://learn.nvidia.com/certificates?id=0x3zAbT6TfilxUwD_kMgaA",
)
- #certificates(
  name: "Machine Learning with Python",
  issuer: "IBM",
  date: "2024",
  url: "https://www.credly.com/badges/88522d33-bcf6-4aca-ae8c-21a58a68a594/print",
)
- #certificates(
  name: "Machine Learning Foundations: A Case Study Approach",
  issuer: "University of Washington",
  date: "2024",
  url: "https://www.coursera.org/account/accomplishments/verify/W6DPNVH4V88P",
)
- *Full & Detailed List* can be viewed at my LinkedIn

== References

Can be viewed on LinkedIn
Others available on request