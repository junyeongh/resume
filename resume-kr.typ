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
#show heading.where(level: 1): set block(above: 2em, below: 1em)

#show link: set text(fill: blue, weight: 700)

// custom function
#let divider = line(length: 100%, stroke: 0.5pt)

// Content sections
#grid(
  columns: (1fr, 4fr),
  text([*허준영*], size: 24pt),

  text(
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

#v(1em)
#divider
= 자기 소개

Ad Lorem Lorem duis est. In reprehenderit laboris laboris non. Nostrud minim proident proident reprehenderit id qui pariatur. Ex ipsum dolor minim dolor enim officia officia sint irure esse mollit.

Pariatur nulla sint elit et enim. Voluptate laboris cillum cillum commodo consequat. Eiusmod veniam officia laboris proident ut duis ex fugiat nisi eu consequat. Duis sint officia sint non voluptate est consectetur ut incididunt magna. Consequat commodo voluptate Lorem labore. Eiusmod reprehenderit id cupidatat enim dolor quis et amet.

Elit reprehenderit cupidatat proident commodo pariatur veniam adipisicing sunt id laboris adipisicing est aliqua consequat. Velit dolor quis sint ex sit cupidatat dolor irure occaecat. Sit sit cillum culpa irure. Deserunt dolore commodo velit cillum adipisicing elit culpa fugiat.

Consequat magna veniam consectetur officia nisi do adipisicing excepteur qui ipsum deserunt pariatur qui. Sunt reprehenderit ex quis magna veniam. Pariatur adipisicing id consequat ex cupidatat occaecat tempor. Nostrud duis velit culpa cillum occaecat sit minim non cupidatat aliquip.

#v(1em)
#divider

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
      *프론트엔드/모바일*: React, Next.js, React Native, Unit·Integration·E2E 테스팅\
      *백엔드 및 데이터베이스*: NestJS, FastAPI, PostgreSQL\
      *DevOps 및 인프라*: Git, CI/CD (GitHub Actions), AWS, Docker, Nix\
    ],
  ),
)

#pagebreak()
= 프로젝트

// - [ ] 프로젝트 이름, 기간
// - [ ] 프로젝트 성과 4줄
// - [ ] 필요한 키워드만 쓰고

*RunFit* #h(0.5em) #link("https://run-fit-eight.vercel.app/")[#box(image("icons/house.svg", height: 1em, width: 1em))] #h(0.5em) #link("https://github.com/fesi12-team1/run-fit/")[#box(image("icons/github.svg", height: 1em, width: 1em))] #h(1fr) 2025년 12월 - 2026년 1월\
위치 기반 필터링과 페이스 기반 탐색 기능을 갖춘 러닝 크루 매칭 플랫폼
#grid(
  columns: (1fr,) * 4,
  inset: 2pt,
  image("images/project-run-fit-1.png"),
  image("images/project-run-fit-2.png"),
  image("images/project-run-fit-3.png"),
  image("images/project-run-fit-4.png"),
)
- API 요청에 대한 Next.js 서버상 프록시 레이어 설계로 요청/응답 제어 중앙화, 백엔드 엔드포인트 노출 방지
- JWT 기반 인증 흐름의 보안 취약점 개선을 통한 Next.js App Router 환경에서의 서버/클라이언트 컴포넌트 인증 문제 해결
- 반복적인 요구사항 변경에도 일관성 유지 가능한 도메인 기반 REST API 구조 설계 및  유연한 DTO 패턴을 수립하여 프론트엔드 기획과 백엔드 구현 간의 가교 역할 수행
- 쿼리/뮤테이션을 위한 커스텀 팩토리 패턴과 데이터 페칭 레이어 전반의 체계적인 에러 핸들링 전략을 적용한 TanStack Query 통합

*Squash Motion Tracking* (졸업 프로젝트) #h(0.5em) #link("https://github.com/junyeongh/Squash-Phase-Detect-Preprocess")[#box(image("icons/github.svg", height: 1em, width: 1em))] #h(1fr) 2024년 9월 - 2025년 4월\
스쿼시 선수 퍼포먼스 분석을 위한 컴퓨터 비전 프로젝트 구현
#grid(
  columns: (1fr,) * 2,
  inset: 2pt,
  image("images/project-squash-pipeline.png"), image("images/project-squash-architecture.png"),
)

- 경기 영상 기반으로 선수 동작 추적 및 자세 감지를 통한 데이터 기반 코칭 인사이트 제공 목적의 React와 FastAPI를 활용한 풀스택 컴퓨터 비전 파이프라인 설계 및 구현
- 영상 처리를 위한 머신 러닝 모델(SAM2, YOLO) 오케스트레이션을 포함한 처리 파이프라인을 담당하는 백엔드를 구축하고 REST API를 통해 프론트엔드와 통합
- 트랜스포머 기반 세그멘테이션을 위한 프레임 샘플링 구현으로 메모리 사용량 최적화 및\ forward/backward propagation 시 VRAM 소비 감소
- Docker 및 Docker-Compose를 활용한 시스템 컨테이너화, 최적의 모델 성능을 위한 NVIDIA GPU 가속 지원과 함께 재현 가능하고 이식 가능한 배포 환경 구축

// #pagebreak()
= 학력

*City University of Hong Kong (홍콩 성시대학교)* #h(1fr) 2019년 9월 - 2025년 6월\
Computer and Data Engineering, Department of Electrical Engineering\
이수 과목: 클라우드 컴퓨팅 시스템, 데이터베이스 시스템, 빅데이터, 휴먼-컴퓨터 인터랙션\
*Vanderbilt University (미국 테네시주 내슈빌)* #h(1fr) 2024년 1월 - 2024년 5월\
School of Engineering 교환학생 프로그램\
이수 과목: 응용 머신러닝, 인공지능, FPGA 설계, 프로그래밍 언어론

// #pagebreak()
= 교육

*프론트엔드 단기 심화 과정 - 코드잇* #h(1fr) 2025년 11월 - 2026년 1월\
모던 프론트엔드 개발 실무 심화 주제 및 팀 프로젝트 10주 과정 수료

*데이터 사이언스 코칭 스터디: 2024 - 부스트코스* #h(1fr) 2024년 7월 - 2024년 8월\
Python 데이터 분석 및 데이터 시각화 4주 과정 수료

// #pagebreak()
= 경력

*MotoNerv Limited* #h(1fr) 홍콩\
_하드웨어(임베디드 시스템) 엔지니어링 인턴_ #h(1fr) 2023년 6월 - 2023년 8월\
- MCU 기반(ESP32) 블랙박스 프로토타입 개발, 영상 스트리밍 및 센서 데이터 수집 기능 구현
- AWS 클라우드 환경에서 AI 영상 분석을 위한 차량 센서 및 위치 데이터 전처리
- 셀룰러 네트워크를 통해 센서 및 영상 데이터를 AWS S3 버킷으로 직접 스트리밍하는 시스템
