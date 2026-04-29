// Styling – Typst Documentation
// https://typst.app/docs/reference/styling/
//
// set rules
#set page(paper: "a4", margin: (top: 2cm, x: 1.5cm, bottom: 1cm))
#set text(font: "Pretendard", size: 12pt)

#set list(indent: 10pt)
#set list(marker: [•])

// show rules
#show heading.where(level: 1): set text(font: "Pretendard", size: 16pt, weight: "bold")
#show heading.where(level: 1): set block(above: 1em, below: 1em)
#show heading.where(level: 2): set text(font: "Pretendard", size: 12pt, weight: "medium")

#show link: set text(fill: blue, weight: 700)

// custom function
#let divider = line(length: 100%, stroke: 0.5pt)

// Content sections
#grid(
  columns: (1fr, 4fr),
  text(
    {
      show link: set text(fill: black, weight: "regular")
      link("https://junyeongh.github.io/resume/kr.pdf")[*허준영*]
    },
    size: 24pt,
  ),

  text(
    lang: "ko",
    align(
      right,
    )[잘 설계된 도구를 탐구하고, 도구가 사용자에게 더 잘 전달될 수 있도록 개선하는 방법을 고민합니다.\ 그런 제품을 만들기 위한 팀의 가치를 이해하고, 개선할 수 있는 부분을 찾아 함께 발전시켜 나갑니다.],
    size: 10pt,
  ),
)

#table(
  align: horizon,
  column-gutter: (0pt, 1em, 0pt, 0pt),
  columns: (auto,) * 5,
  stroke: none,

  [*전화번호*],
  [+82 10-3872-0535],
  [#box(image("icons/linkedin.svg", height: 1em, width: 1em))],
  [*LinkedIn*],
  [#link("https://www.linkedin.com/in/junyeongheo/")[\@junyeongheo]],

  [*이메일*],
  [yeong.heo\@outlook.com],
  [#box(image("icons/github.svg", height: 1em, width: 1em))],
  [*GitHub*],
  [#link("https://github.com/junyeongh")[\@junyeongh]],
)

#divider
= 자기 소개

#text(
  size: 10pt,
  [
    좋은 도구를 만들기 위해 다양한 추상화 단계를 넘나들며 기술적 깊이를 쌓아가는 과정을 즐깁니다. 그 과정에서 일어나는 여러 층위의 문제를 해결하며 지적 즐거움을 느낍니다. 동시에 같은 즐거움을 나눌 수 있는 사람들의 서로 다른 관점과 새로운 지식을 배워 나가며 함께 성장하는 것에 열정적입니다.

    저의 강점은 프로젝트의 확장성과 재현성을 고려한 구조 설계에 있습니다. 프로젝트 구조 설계와 개발 환경 일관성을 확립하고, 기술적 결정의 배경을 팀과 공유해 온 경험을 바탕으로, 궁극적으로는 개발 사이클 전반에서 프로젝트 아키텍처부터 개발 환경·인프라까지 고려해 팀의 반복 작업을 줄이는 개발자가 되고자 합니다.
  ],
)

// == 관심사
// - 개발 경험 (DX) 개선: 개발 환경 및 인프라의 선언적 환경 구축 - Nix, IaC
// - AI 에이전트 기반 개발 워크플로우: MCP 서버를 활용한 코드베이스 지식 영속화 및 다중 에이전트 협업 환경 구축

// #pagebreak()
= 스킬

#grid(
  columns: (1fr, 4fr),
  grid(
    inset: (y: 0.5em),
    [*프로그래밍 언어*],
    [*프레임워크 및 도구*],
  ),
  grid(
    inset: (y: 0.5em),
    [Python, JavaScript/TypeScript, C/C++, Rust],
    [
      *프론트엔드/모바일*: React, Next.js, React Native\
      *테스트*: Jest/Vitest, Playwright, React Testing Library\
      *백엔드 및 데이터베이스*: NestJS, FastAPI, PostgreSQL\
      *DevOps 및 인프라*: Git, CI/CD (GitHub Actions), AWS, Docker, Nix\
    ],
  ),
)

#divider
// #pagebreak()
= 경력

*유어잡(URJOB), 서울* - _프론트엔드 인턴_ #h(1fr) 2026년 3월 - 2026년 4월\
== React + React Router 레거시 시스템의 TanStack Start 기반 모노레포 마이그레이션 기획
- 기존 인증/인가의 `localStorage` 내 저장된 `access token` 사용과 페이지별 JWT와 Session 전략이 혼합되어 사용되던 방식을 `HttpOnly` + `SameSite` cookie로 개편하여 XSS 및 CSRF 공격 벡터 완화
- TanStack Query를 세션 단일 진실 소스로 채택 및 access token 갱신 정책 수립
== 프로젝트 개발 환경 및 경험 개선
- Lefthook으로 포매팅·린트·커밋 규약을 강제하는 프로젝트 컨벤션 및 Agentic coding harness\ 구축으로 개발자와 AI 에이전트의 일관된 온보딩 환경 구성
- `openapi-typescript`를 통한 OpenAPI 스펙에서 자동 생성된 타입으로 프론트-백엔드 간 불일치를\ 컴파일 타임에 차단
- Query/Mutation Factory 패턴으로 쿼리키와 설정을 통합 관리를 통한 일관적인 캐시 관리 구현
== 프로젝트 배포 파이프라인 및 인프라 개선
- EC2 인스턴트 내 Dockerfile를 통한 수동 빌드 및 배포 단계를 GitHub Actions로 이관하여\ 런타임 이미지 크기 최소화 및 EC2 인스턴스 빌드 부하 제거를 통한 배포 과정 개선
- `workflow_call` 기반의 재사용 가능한 CI(lint/test) · Build · Deploy 워크플로우 분리 후 develop/preview/production 환경별 상이한 조건의 파이프라인 구성한 아키텍처 설계

*MotoNerv Limited, 홍콩* - _하드웨어(임베디드 시스템) 엔지니어링 인턴_ #h(1fr) 2023년 6월 - 2023년 8월\
- MCU 기반 (ESP32) 블랙박스 프로토타입 개발, 영상 스트리밍 및 센서 데이터 수집 기능 구현
- AWS 클라우드 환경에서 AI 영상 분석을 위한 차량 센서 및 위치 데이터 전처리
- 셀룰러 네트워크를 통해 센서 및 영상 데이터를 AWS S3 버킷으로 직접 스트리밍하는 시스템 구축

// #pagebreak()
= 프로젝트

*RunFit* #h(0.5em) #link("https://run-fit-eight.vercel.app/")[#box(image("icons/house.svg", height: 1em, width: 1em))] #h(0.5em) #link("https://github.com/fesi12-team1/run-fit/")[#box(image("icons/github.svg", height: 1em, width: 1em))] #h(1fr) 2025년 12월 - 2026년 1월\
위치 기반 필터링과 페이스 기반 탐색 기능을 갖춘 러닝 크루 매칭 플랫폼

#box(image("images/project-run-fit.png"))

- Next.js 서버 프록시 레이어를 설계하여 API 요청/응답 제어를 중앙화하고 백엔드 엔드포인트 노출 방지
- Next.js App Router의 서버/클라이언트 컴포넌트 간 JWT 인증 흐름 보안 취약점 분석 및 개선
- 도메인 기반 REST API 구조 및 DTO 패턴을 설계하여 프론트엔드-백엔드 간 인터페이스 표준화
- TanStack Query 기반 커스텀 팩토리 패턴을 적용하여 데이터 페칭 및 에러 핸들링 체계화

*Squash Motion Tracking* (졸업 프로젝트) #h(0.5em) #link("https://github.com/junyeongh/Squash-Phase-Detect-Preprocess")[#box(image("icons/github.svg", height: 1em, width: 1em))] #h(1fr) 2024년 9월 - 2025년 4월\
스쿼시 선수 퍼포먼스 분석을 경기 영상 기반 동작 추적 및 자세 감지 컴퓨터 비전 프로젝트
#grid(
  columns: (1fr,) * 2,
  inset: 2pt,
  image("images/project-squash/pipeline.png"), image("images/project-squash/architecture.png"),
)

- React와 FastAPI를 활용한 데이터 기반 코칭용 풀스택 컴퓨터 비전 파이프라인 설계 및 구현
- 영상 처리를 위한 머신 러닝 모델 오케스트레이션 및 처리 파이프라인 담당 백엔드 구축
- 세그멘테이션 단계 중 프레임 샘플링을 통한 forward/backward propagation 시 VRAM 사용 최적화
- NVIDIA GPU 가속 지원 Docker 컨테이너화를 통한 배포 환경의 일관된 재현성 보장

// *Avatar 커뮤니티 앱* #h(0.5em) #link("https://github.com/junyeongh/avatar-community")[#box(image("icons/github.svg", height: 1em, width: 1em))]\
// _커뮤니티 상호작용을 위한 크로스 플랫폼 모바일 소셜 네트워킹 앱_
// - React Native와 Expo를 활용한 소셜 앱 구현 — 탭 기반 내비게이션과 인터랙티브 피드
// - React Hook Form과 Zod 스키마를 활용한 사용자 인증·게시글 작성·소셜 인터랙션 구현
// - TanStack Query로 NestJS 백엔드 API 연동 및 실시간 데이터 동기화 처리
// - 푸시 알림과 다국어(i18n) 지원을 갖춘 크로스 플랫폼 UI 구현

= 학력

*홍콩 성시대학교* #h(1fr) 홍콩\
전기공학부 컴퓨터·데이터공학 학사 #h(1fr) 2019년 9월 - 2025년 6월\
_이수 과목: 클라우드 컴퓨팅 시스템, 데이터베이스 시스템, 빅데이터, 인간-컴퓨터 상호작용_\
*밴더빌트 대학교* #h(1fr) 미국 테네시주 내슈빌\
공과대학 교환학생 #h(1fr) 2024년 1월 - 2024년 5월\
_이수 과목: 응용 머신러닝, 인공지능, FPGA 설계, 프로그래밍 언어론_

#divider

= 기타 활동

*프론트엔드 단기 집중 과정 - codeit* #h(1fr) 2025년 11월 - 2026년 1월\
- Jest·React Testing Library·CI/CD·Next.js 아키텍처를 다루는 10주 집중 과정 수료
- 코드 컨벤션·PR 템플릿·협업 리뷰 프로세스를 정의하며 4인 팀 개발 워크플로우 주도
*데이터 사이언스 코칭 스터디: 2024 - boostcourse* #h(1fr) 2024년 7월 - 2024년 8월\
- pandas·numpy·matplotlib 등 파이썬 데이터 분석 4주 과정 수료; KOSIS 실데이터 기반 분석 실습
