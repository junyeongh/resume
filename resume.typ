// Styling – Typst Documentation
// https://typst.app/docs/reference/styling/
//
// set rules
#set page(
  paper: "a4",
  margin: (
    top: 1.0cm,
    x: 1cm,
    bottom: 0.5cm,
  ),
)
#set text(font: "Times New Roman", size: 11pt)

#set list(indent: 10pt)
#set list(marker: [•])

// show rules
#show heading.where(level: 1): set text(font: "Times New Roman", size: 12pt, style: "italic", weight: "bold")
#show heading.where(level: 1): set align(center)
#show heading.where(level: 1): set block(above: 1em, below: 0.5em)

#show link: set text(fill: blue, weight: 700)

// custom function
#let section(title) = {
  heading(level: 1, title)
  block(line(length: 100%), below: 0.5em)
}

// Content sections
#align(center)[
  #text([*Junyeong Heo*], size: 12pt) \

  #box(image("icons/linkedin.svg", height: 1em, width: 1em)) *LinkedIn* #link("https://www.linkedin.com/in/junyeongheo/")[\@junyeongheo] | #box(image("icons/github.svg", height: 1em, width: 1em)) *GitHub* #link("https://github.com/junyeongh")[\@junyeongh]\
  yeong.heo\@outlook.com | (HK) +852 5237-0535 | (KR) +82 10-3872-0535\
]

#section("Education")

*City University of Hong Kong* #h(1fr) Hong Kong SAR\
B. E. in Computer and Data Engineering, Department of Electrical Engineering #h(1fr) September 2019 - June 2025\
_Coursework: Cloud Computing Systems, Database Systems, Big Data, and Human-Computer Interaction_\
*Vanderbilt University* #h(1fr) Nashville, TN, USA\
Study abroad coursework in the School of Engineering #h(1fr) January 2024 - May 2024\
_Coursework: Applied Machine Learning, Artificial Intelligence, FPGA Design, and Programming Languages_

#section("Technical Skills")

#grid(
  columns: (1fr, 3fr),
  grid(
    inset: (
      y: 0.5em,
    ),
    [*Programming Languages*],
    [*Frameworks and Tools*],
  ),
  grid(
    inset: (
      y: 0.5em,
    ),
    [Python, JavaScript/TypeScript, C/C++, Rust],
    [
      *Frontend/Mobile*: React, Next.js, React Native, Unit·Integration·E2E Testing\
      *Backend and Database*: NestJS, FastAPI, PostgreSQL\
      *DevOps & Infrastructure*: Git, CI/CD (GitHub Actions), AWS, Docker\
    ],
  ),
)

#section("Professional Experience")

*MotoNerv Limited* #h(1fr) Hong Kong SAR\
_Hardware (Embedded Systems) Engineering Intern_ #h(1fr) June 2023 - August 2023\
- Developed a prototype of an MCU-based (ESP32) dashcam for streaming video and collected sensor data
- Preprocessed on-car sensor and location data tailored for AI video analytics in the AWS cloud environment
- Implemented data pipeline to stream sensor and video data directly to AWS S3 buckets for further processing via celluar network connection

#section("Projects")

*RunFit* #h(1fr) #link("https://run-fit-eight.vercel.app/")[#box(image("icons/house.svg", height: 1em, width: 1em))] #h(0.5em) #link("https://github.com/fesi12-team1/run-fit/")[#box(image("icons/github.svg", height: 1em, width: 1em))]\
_Running crew matching platform with location-based filtering and pace-based discovery_
- Designed domain-based REST API structure where request/response bodies are typed subsets of core domain models, ensuring consistency across iterative requirement changes
- Bridged frontend planning with backend implementation by establishing flexible DTO patterns that accommodate evolving product requirements
- Architected Next.js proxy layer for all API requests to centralize request/response control, preventing backend endpoint exposure and mitigating security vulnerabilities in JWT-based authentication flow
- Implemented JWT authentication with httpOnly cookies and role-based access control (RBAC), addressing server/client component authentication in Next.js App Router environment
- Integrated TanStack Query with custom factory patterns for queries/mutations and structured error handling strategy across data fetching layers

*Squash Motion Tracking* (Final Year Project) #h(1fr) #link("https://github.com/junyeongh/Squash-Phase-Detect-Preprocess")[#box(image("icons/github.svg", height: 1em, width: 1em))]\
_Participated in Hong Kong Sport Institute (HKSI) initiated computer vision project for athlete performance analysis_
- Architected a full-stack computer vision pipeline using FastAPI to track player movements and detect poses from match videos, enabling data-driven coaching insights
- Integrated a processing pipeline, including video processing and orchestration of ML models (SAM2 and YOLO) via REST API to the backend
- Optimized memory usage by implementing frame sampling for transformer-based segmentation, reducing VRAM consumption during forward/backward propagation
- Containerized the system using Docker and Docker-Compose, enabling reproducible and portable deployment with support for NVIDIA GPU acceleration for optimal model performance

#pagebreak()

*Avatar community application* #h(1fr) #link("https://github.com/junyeongh/avatar-community")[#box(image("icons/github.svg", height: 1em, width: 1em))]\
_cross-platform mobile social networking application for community interaction_
- Built a social media app using React Native with Expo, featuring tab-based navigation and interactive social feeds
- Implemented user authentication, post creation, and social interactions with type-safe form validation using React Hook Form and Zod schemas
- Integrated NestJS backend API using TanStack Query for state management and real-time data synchronization
- Developed cross-platform UI with push notifications and multi-language support (i18n) for enhanced user engagement

#section("Leadership Activities & Other Experiences")

*Frontend Short-Term Intensive Course - codeit* #h(1fr) November 2025 - January 2026\
- Completed 10-week intensive program covering modern frontend development practices including Jest/React Testing Library, CI/CD pipelines, and Next.js architecture patterns
- Established team development workflows by defining code conventions, PR templates, and collaborative review processes for a 4-person team project
- Led technical architecture decisions for API structure, authentication flows, and state management patterns in a production-grade running crew platform
*Data Science Coaching Study: 2024 - boostcourse* #h(1fr) July - August 2024\
- Completed 4-week program on Python data analysis covering pandas, numpy, and data visualization libraries (matplotlib, seaborn, plotly)
- Practiced exploratory data analysis techniques including correlation analysis, pivot tables, and statistical visualization on real-world datasets from KOSIS (Korean Statistical Information Service)
*Student Resident (Senior Resident Tutor)* #h(1fr) July 2024 - July 2025\
*Student Resident Cabinet (General Officer)* #h(1fr) October 2022 - May 2023\
*Military service* #h(1fr) August 2020 - February 2022\
*Private Tutoring*\
- International Baccalaureate (IB) Diploma Programme (DP) - Mathematics
- Electrical Engineering

