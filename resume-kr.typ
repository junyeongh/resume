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

#show link: set text(fill: blue, weight: 700)

// custom function
#let divider = line(length: 100%, stroke: 0.5pt)

// Content sections
#grid(
  columns: (1fr, 4fr),
  text(
    {
      show link: set text(fill: black, weight: "regular")
      link("https://github.com/junyeongh/resume")[*허준영*]
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

처음 프로그래밍을 접한 건 수업 자료를 정리하기 위한 간단한 스크립트였지만, 그 과정에서 로직을 설계하고 자동화의 효율을 경험하는 것에 매력을 느끼며 개발에 관심을 가졌습니다.

다양한 추상화 단계를 넘나들며 기술적 깊이를 쌓아가는 과정에서 문제 해결의 지적 즐거움을 느끼는 동시에, 관심사를 공유하는 사람들과 교류하며 새로운 관점과 지식을 배워 나가는 것을 즐깁니다. 그런 지적 즐거움을 팀과 함께 나눌 수 있는 환경을 만들어 나가고 함께 성장하는 것에 열정이 있습니다.

저의 강점은 프로젝트의 확장성과 재현성을 고려한 구조 설계에 있습니다. 프로젝트 구조 설계와 개발 환경 일관성을 확립하고, 트레이드오프 결정의 배경을 팀과 공유해 온 경험을 바탕으로, 궁극적으로는 개발 사이클 전반에서 프로젝트 아키텍처부터 개발 환경·인프라까지 고려해 팀의 반복 작업을 줄이는 개발자가 되고자 합니다.

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

// #pagebreak()
= 경력

*MotoNerv Limited, 홍콩* - _하드웨어(임베디드 시스템) 엔지니어링 인턴_ #h(1fr) 2023년 6월 - 2023년 8월\
- MCU 기반 (ESP32) 블랙박스 프로토타입 개발, 영상 스트리밍 및 센서 데이터 수집 기능 구현
- AWS 클라우드 환경에서 AI 영상 분석을 위한 차량 센서 및 위치 데이터 전처리
- 셀룰러 네트워크를 통해 센서 및 영상 데이터를 AWS S3 버킷으로 직접 스트리밍하는 시스템 구축

// #pagebreak()
= 학력

*City University of Hong Kong (홍콩 성시대학교)* #h(1fr) 2019년 9월 - 2025년 6월\
Computer and Data Engineering, Department of Electrical Engineering\
이수 과목: 클라우드 컴퓨팅 시스템, 데이터베이스 시스템, 빅데이터, 휴먼-컴퓨터 인터랙션\
*Vanderbilt University (미국 테네시주 내슈빌)* #h(1fr) 2024년 1월 - 2024년 5월\
School of Engineering 교환학생 프로그램\
이수 과목: 응용 머신러닝, 인공지능, FPGA 설계, 프로그래밍 언어론\

// #pagebreak()
= 교육

*프론트엔드 단기 심화 과정 - 코드잇* #h(1fr) 2025년 11월 - 2026년 1월\
모던 프론트엔드 개발 실무 심화 주제 및 팀 프로젝트 10주 과정 수료

*데이터 사이언스 코칭 스터디: 2024 - 부스트코스* #h(1fr) 2024년 7월 - 2024년 8월\
Python 데이터 분석 및 데이터 시각화 4주 과정 수료

#pagebreak()
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

// #lorem(100)

// #pagebreak()
// = 관심사
