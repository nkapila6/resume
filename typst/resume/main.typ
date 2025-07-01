// #import "@preview/basic-resume:0.2.4": *
#import "template.typ": *
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

#let email = [#link("mailto:info@nkapila.me")[#fa-envelope() info\@nkapila.me]]
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
  experience with Machine Learning and Deep Learning techniques. 
  Proven ability to design and deploy AI models, optimize ML pipelines. Experienced in lighting and lighting control systems. 
  // Authored pre-prints on attention mechanisms in CNNs, 
  // bridging AI research with real-world applications.
]

== Summary
#summary

// == Interests in Research Work
// I am passionate about optimizing and creating deep learning architectures. My current interests are in multimodal learning, exploring cross-modal similarities in image, text, and audio domains, and generative modeling using GANs and VAEs. I am also intrigued by inductive biases in neural networks and emerging approaches for AI in tabular data.

// My research interests lies in optimization of deep learning architectures, multimodal image and text models, 
// and generative image/speech models. 
// In optimization, I like to focus on techniques like knowledge distillation, neural architecture search, 
// and pruning to create smaller models that outperform their larger counterparts.
//I tried to do this with my recent
//project #ref(<pubs>, supplement:[#link("https://arxiv.org/abs/2412.11657")[CNNtention] (as seen in page], form:"page")) 
//where I augmented a few attention layers within a deep resnet and saw improvement in qualitative performance.
// I am further intrigued by cross-modal similarities. For example, adapting image style transfer to audio with the same approach of refining feature maps. 
// Models like CLIP show how contrastive learning aligns embeddings/latent space across modalities, and  the rise of foundation models shows how thoughtful architectural choices enable reasoning across text, images, audio, etc.

== Education

#edu(
  institution: "Georgia Institute of Technology",
  location: "Atlanta, GA",
  dates: "Batch of 2025", // dates-helper(start-date: "Jan 2023", end-date: "Present"),
  degree: "Master of Science in Computer Science - Artificial Intelligence (OMSCS Program)",
  consistent: true
)
- CGPA: 4.00 / 4.00
- AI related courses: Machine Learning, Deep Learning, Natural Language Processing, Big Data for Health


#edu(
  institution: "National Institute of Technology",
  location: "New Delhi, India",
  dates: "Batch of 2018", //dates-helper(start-date: "2014", end-date: "2018"),
  degree: "Bachelors of Technology in Electronics and Communication Engineering",
  consistent: true
)
- Excelled in CS-related course work: Data Structures, Algorithms, Object-Oriented Programming, Computer Networks, Image Processing

== Work Experience

#work(
  title: "Technical Engineer",
  company: "Luxtron Systems",
  location: "United Arab Emirates",
  dates: dates-helper(start-date: "Jun 2018", end-date: "Present"),
)
- Led the transition towards lighting & control systems which increased business value and market share.
// - Designing and installation of lighting control systems. 
- Collaborated with cross-functional teams to deliver customized control solutions.
// - Trying to automate the commissioning process using Agents or similar.
- Currently working on integrating AI features into our service offerings.

#work(
  title: "Graduate Researcher",
  company: "Georgia Institute of Technology",
  location: "Remote (Atlanta, GA)",
  dates: dates-helper(start-date: "May 2024", end-date: "Aug 2024"),
)
- Graduate researcher, a part of the #link("https://sites.gatech.edu/human-augmented-analytics-group/alumni/")[Human-Augmented Analytics Group].
- Built MLOps pipeline and researched democratizing LSTM models across building datasets. | #link("https://github.com/nkapila6/lstm-bgd2")[#fa-github() Github] | #link("https://www.youtube.com/watch?v=rGKhB1wkei4")[#fa-youtube() YouTube]

// #work(
//   title: "R&D Trainee",
//   company: "Helvar Oy Ab",
//   location: "Finland",
//   dates: dates-helper(start-date: "Aug 2019", end-date: "Sept 2019"),
// )
// - Evaluated intelligent wireless nodes for lighting control systems.
// - Created technical documentation for AC-DC converters in LED lighting.
// - Presented market research findings for Middle Eastern lighting trends.

// #work(
//   title: "Research Intern",
//   company: "Indian Institute of Technology, Delhi",
//   location: "New Delhi, India",
//   dates: dates-helper(start-date: "2017", end-date: "2018"),
// )
// - Developed simulations for quadrotor systems using MATLAB Simulink.
// - Analyzed mechanical systems leading to quadrotor design optimizations.

#let skills = [
  - *Languages*: Python, C, C++, MATLAB
  - *Frameworks*: PyTorch/TensorFlow, SKLearn, Ollama, NumPy, Pandas/Polars, MLFlow, FastAPI, MCP servers
  // *Machine Learning Techniques*: Deep Learning, Attention Mechanisms, Transformers, Large Language Model (LLM) Fine-tuning, Model Optimization.
  - *Tools*: HuggingFace, GitHub, Git VCS, Docker, GitHub Actions, AutoCAD | *Platforms*: Linux/Windows/macOS
  - *Research and Development*: Academic Research, Lit Review, Market Review, Technical Documentation //, Experiment Design, Data Pipeline Implementation.
  // - *Soft Skills*: Collaboration in Cross-Functional Teams, Technical Communication, Problem-Solving, Project Management.
]

== Research Work
- #link("https://raw.githubusercontent.com/AttentionSeekers/FarSightBERT/main/submission/bd4h_final_report.pdf")[*FarSightBERT: Enhancing Embeddings for Long Term Disease Prediction (04/25)*] | #link("https://github.com/AttentionSeekers/FarSightBERT")[#fa-github() Github]
- #link("https://arxiv.org/abs/2412.11657")[*CNNtention: Can CNNs do better with Attention? (12/24)*] | #link("https://github.com/AttentionSeekers/CNNtention/")[#fa-github() Github]
- #link("https://nkapila.me/masters/mscs-research-work")[*Training LSTMs on Building Genome 2 Data (07/24)*] | #link("https://github.com/nkapila6/lstm-bgd2")[#fa-github() Github]

// == Projects

// #project(
//   name: "Deep Learning Projects",
//   dates: "Fall 2024",
//   // url: "https://github.com/AttentionSeekers/CNNtention",
// )
// - Developed FCNNs, CNNs, generative models, RNNs, LSTMs, and Transformers using NumPy (from scratch) and PyTorch
// - Designed and implemented the CNNtention project where we experimented with different types of attention layers in a deep ResNet.

// #project(
//   name: "Machine Learning Projects",
//   dates: "Spring 2024",
//   // url: "https://nkapila.me/masters/cs7641-review",
// )
// - Implemented ML algorithms, including classification/regression, clustering, dimensionality reduction, and reinforcement learning agents. Wrote highly technical reports on each of these topics.
// - Created a post on my technical blog detailing the adventures and learnings in this class.

== Volunteering
- `Unofficial` TA for Georgia Tech's Machine Learning class. Maintaining #link("https://github.com/knakamura13/mlrose-ky")[`mlrose-ky`] library and documentation used in class.
- OMSCS UAE Chapterhead: created the UAE chapter and grew it to \~40 people from a group of 3.

== Projects
I am actively #link("https://github.com/nkapila6?tab=repositories")[*building side projects*] and contributing to #link("https://github.com/search?q=is%3Apr%20author%3Ankapila6%20%20is%3Amerged&type=pullrequests")[*open source repositories*] focused on AI tooling.
- #link("https://github.com/nkapila6/mcp-local-rag")[*mcp-local-rag*] \ "primitive" RAG-like web search "model context protocol (MCP)" server that runs locally | *Language*: Python
- #link("https://github.com/nkapila6/mcp-meme-sticky")[*mcp-meme-sticky*] \ create AI generated memes and convert them into stickers for Telegram or WhatsApp | *Language*: Python


// #table(
//   columns: (auto, auto, auto),
//   align: horizon,
//   table.header(
//     [*Project*], [*Type*], [*Contribution*]
//   ),
//   [#link("https://github.com/probabl-ai/skore")[*skore*] \ the scikit-learn sidekick],[Open Source Contribution],[Added new features for `train_test_split`, documentation and test cases.],
//   [#link("https://github.com/knakamura13/mlrose-ky")[*mlrose-ky*] \ Random optimization library used in \ Georgia Tech's Machine Learning class],[Open Source Contribution],
//   [Added new features such as ability to parallelize experimentation, bug fixes, better documentation to help students understand how to conduct experiments],
//   [#link("https://github.com/tomlin7/biscuit")[*biscuit*] \ code editor in python], [Open Source Contribution], [Added relative line numbering as a part of `Hacktoberfest 2024`.],
//   [#link("https://github.com/nkapila6/mcp-local-rag")[*mcp-local-rag*] \ Model Context Protocol (MCP) server listed on #link("https://github.com/modelcontextprotocol/servers")[`MCP servers official repo`]], [Open Source Project], ["primitive" RAG-like web search "model context protocol (MCP)" server that runs locally. No APIs required.],
//   [#link("https://github.com/nkapila6/mcp-meme-sticky")[*mcp-meme-sticky*] \ Model Context Protocol (MCP) server listed on #link("https://github.com/modelcontextprotocol/servers")[`MCP servers official repo`]], [Open Source Project], [Create AI generated memes and convert them into stickers for Telegram or WhatsApp. No APIs required.]
// )

// #project(
//   name: "Open Source Projects"
// )
// - #link("https://github.com/nkapila6/mcp-local-rag/")[*mcp-local-rag*]: A MCP server for Claude that allows you to perform web search locally without any API use.
// - #link("https://github.com/nkapila6/mcp-meme-sticky/")[*mcp-local-sticky*]: A MCP server for Claude that allows you to make memes and WhatsApp/Telegram stickers.

// #project(
//   name: "Open Source Contributions",
// )
// - #link("https://github.com/knakamura13/mlrose-ky")[*mlrose-ky*]: Contributing to `mlrose`, a Python library used in Georgia Tech's CS7641 Machine Learning class. Wrote the full #link("https://nkapila6.github.io/mlrose-ky/")[documentation] and added new features.
// - #link("https://github.com/probabl-ai/skore")[*skore*]: Added a new features, tests, updated documentation.
// - #link("https://github.com/tomlin7/biscuit")[*Biscuit Code Editor*]: Added a feature during my free time as a part of Hackoctober Fest 2024
// - 

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

== Skills
#skills

== Hackathon and talks
- Gave a talk on my MCP server projects at #link("https://dubai.aitinkerers.org/p/ai-tinkerers-dubai-meetup-june-2025-demo-day")[AI Tinkerers Dubai Meetup – June 2025 Demo Day]

== Awards & Certifications
- Won 2nd place at #link("https://dubai.aitinkerers.org/p/ai-tinkerers-dubai-hackathon-may-2025-powered-by-couchbase")[*AI Tinkerers - Dubai Hackathon - May 2025*]
- #link("https://learn.nvidia.com/certificates?id=0x3zAbT6TfilxUwD_kMgaA")[*Fundamentals of Deep Learning*], NVIDIA (12/2024)
- #link("https://learn.nvidia.com/certificates?id=0x3zAbT6TfilxUwD_kMgaA")[*Machine Learning with Python*], IBM (04/2024)
- #link("https://www.coursera.org/account/accomplishments/verify/W6DPNVH4V88P")[*Machine Learning Foundations: A Case Study Approach*], University of Washington (01/2024)