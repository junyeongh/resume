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

#show heading.where(level: 2): set text(font: "Times New Roman", size: 11pt, weight: "medium")

#show link: set text(fill: blue, weight: 700)

// Content sections
#grid(
  columns: (1fr, 1fr),
  align: (left + horizon, right + horizon),
  text(size: 16pt, {
    show link: set text(fill: black, weight: "regular")
    link("https://junyeongh.github.io/resume/en.pdf")[*Junyeong Heo*]
  }),
  align(right + horizon)[
    #grid(
      columns: (auto, auto),
      column-gutter: 0.5em,
      align: horizon,
      box[
        #grid(
          columns: (auto, auto),
          align: horizon,
          column-gutter: 0.25em,
          box[#image("icons/linkedin.svg", height: 1em, width: 1em)],
          box[*LinkedIn* #link("https://www.linkedin.com/in/junyeongheo/")[\@junyeongheo]],
        )
      ],
      box[
        #grid(
          columns: (auto, auto),
          align: horizon,
          column-gutter: 0.25em,
          box[#image("icons/github.svg", height: 1em, width: 1em)],
          box[*GitHub* #link("https://github.com/junyeongh")[\@junyeongh]],
        )
      ],
    )
  ],
)
#grid(
  columns: (1fr, 1fr),
  align: (left + horizon, right + horizon),
  {
    show link: set text(fill: black, size: 12pt, weight: "medium")
    link("mailto:yeong.heo@outlook.com")[yeong.heo\@outlook.com]
  },
  align(right + horizon)[#text(size: 12pt, weight: "medium")[(HK) +852 5237-0535 | (KR) +82 10-3872-0535]],
)

= Education
#block(line(length: 100%), below: 0.5em)

*City University of Hong Kong* #h(1fr) Hong Kong SAR\
B. E. in Computer and Data Engineering, Department of Electrical Engineering #h(1fr) September 2019 - June 2025\
_Coursework: Cloud Computing Systems, Database Systems, Big Data, and Human-Computer Interaction_\
*Vanderbilt University* #h(1fr) Nashville, TN, USA\
Study abroad coursework in the School of Engineering #h(1fr) January 2024 - May 2024\
_Coursework: Applied Machine Learning, Artificial Intelligence, FPGA Design, and Programming Languages_

= Technical Skills
#block(line(length: 100%), below: 0.5em)

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

= Professional Experience
#block(line(length: 100%), below: 0.5em)

*URJOB* #h(1fr) Seoul, South Korea\
_Frontend Engineering Intern_ #h(1fr) March 2026 - April 2026\
== Monorepo Migration: React + React Router Legacy to TanStack Start
- Separated user app and admin dashboard into a pnpm workspace monorepo, sharing runtime and design tokens
- Established project conventions (file-based routing) and an agentic coding harness for the new stack
- Replaced `localStorage`-backed JWT with `HttpOnly` + `SameSite: Lax` cookies, closing the XSS token-theft path
- Adopted TanStack Query as the session single source of truth and defined the access-token refresh policy
== Developer Experience Improvements
- Generated TypeScript types from the backend Spring OpenAPI spec via `openapi-typescript`, catching contract drift at compile time
- Centralized TypeScript versioning via pnpm catalog and unified query keys with a Query Factory pattern
- Enforced pre-commit/push formatting and lint (`oxfmt`/`oxlint`) and commit conventions (Commitlint) via Lefthook
== Deployment Pipeline & Infrastructure
- Designed a reusable `workflow_call`-based GitHub Actions architecture separating CI (lint/test), Build, and Deploy across develop, preview, and production environments
- Moved Dockerfile-based EC2 builds into GitHub Actions, shipping only the `.output` artifact to minimize runtime image size and remove instance build load

*MotoNerv Limited* #h(1fr) Hong Kong SAR\
_Hardware (Embedded Systems) Engineering Intern_ #h(1fr) June 2023 - August 2023\
- Developed a prototype of an MCU-based (ESP32) dashcam for streaming video and collecting sensor data
- Preprocessed on-car sensor and location data tailored for AI video analytics in the AWS cloud environment
- Implemented data pipeline to stream sensor and video data directly to AWS S3 buckets for further processing via cellular network connection

= Projects
#block(line(length: 100%), below: 0.5em)

*RunFit* #h(1fr) #link("https://run-fit-eight.vercel.app/")[#box(image("icons/house.svg", height: 1em, width: 1em))] #h(0.5em) #link("https://github.com/fesi12-team1/run-fit/")[#box(image("icons/github.svg", height: 1em, width: 1em))]\
_Running crew matching platform with location-based filtering and pace-based discovery_
- Designed a domain-based REST API structure with typed DTO request/response bodies, standardizing the frontend–backend interface contract across a 4-person team through iterative requirement changes
- Architected a Next.js server proxy layer to centralize API request/response control, preventing backend endpoint exposure and closing JWT token-handling vulnerabilities across App Router server/client component boundaries
- Implemented role-based access control (RBAC) with httpOnly cookie-backed JWT, addressing secure session state across server and client components in Next.js App Router
- Integrated TanStack Query with custom factory patterns for queries/mutations, establishing a structured error handling strategy across all data fetching layers

*Squash Motion Tracking* (Final Year Project) #h(1fr) #link("https://github.com/junyeongh/Squash-Phase-Detect-Preprocess")[#box(image("icons/github.svg", height: 1em, width: 1em))]\
_Participated in Hong Kong Sport Institute (HKSI) initiated computer vision project for athlete performance analysis_
- Architected a full-stack computer-vision pipeline (FastAPI + React) for player tracking and pose detection from match video, enabling data-driven coaching
- Orchestrated SAM2 and YOLO model inference behind a REST API for video processing
- Reduced VRAM during transformer-based segmentation via frame sampling on forward/backward propagation
- Containerized the system with Docker / Docker Compose for reproducible deployment with NVIDIA GPU acceleration

// *Avatar Community Application* #h(1fr) #link("https://github.com/junyeongh/avatar-community")[#box(image("icons/github.svg", height: 1em, width: 1em))]\
// _Cross-platform mobile social networking application for community interaction_
// - Built a React Native (Expo) social app with tab-based navigation and interactive feeds
// - Implemented auth, post creation, and social interactions with React Hook Form + Zod for type-safe validation
// - Integrated a NestJS backend via TanStack Query for state management and real-time data sync
// - Delivered cross-platform UI with push notifications and multi-language support (i18n)

= Leadership Activities & Other Experiences
#block(line(length: 100%), below: 0.5em)

*Frontend Short-Term Intensive Course - codeit* #h(1fr) November 2025 - January 2026\
- Completed 10-week intensive covering Jest/React Testing Library, CI/CD pipelines, and Next.js architecture patterns
- Established team workflows by defining code conventions, PR templates, and review processes for a 4-person team
- Led architecture decisions for API structure, auth flows, and state management in a production-grade running crew platform
*Data Science Coaching Study: 2024 - boostcourse* #h(1fr) July - August 2024\
- Completed 4-week program on Python data analysis covering pandas, numpy, and visualization libs (matplotlib, seaborn, plotly)
- Practiced EDA techniques including correlation analysis, pivot tables, and statistical visualization on real-world KOSIS datasets
*Student Resident (Senior Resident Tutor)* #h(1fr) July 2024 - July 2025\
- Provided academic mentoring and pastoral support to resident students; coordinated hall community events and welfare programs
*Student Resident Cabinet (General Officer)* #h(1fr) October 2022 - May 2023\
- Contributed to student welfare initiatives and community programs as a student government officer
*Military service* #h(1fr) August 2020 - February 2022\
- Completed mandatory Republic of Korea military service
*Private Tutoring*\
- Taught International Baccalaureate (IB) Diploma Mathematics and Electrical Engineering to secondary and university-level students

