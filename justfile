# English
watch:
  typst watch resume.typ

export:
  #!/usr/bin/env bash
  year=$(date +%Y)
  typst compile resume.typ "Resume - Junyeong Heo ($year).pdf"

compile:
  #!/usr/bin/env bash
  year=$(date +%Y)
  typst compile resume.typ en.pdf

# Korean
watch-kr:
  typst watch resume-kr.typ

export-kr:
  #!/usr/bin/env bash
  year=$(date +%Y)
  typst compile resume-kr.typ "[허준영] 이력서 ($year).pdf"

compile-kr:
  #!/usr/bin/env bash
  year=$(date +%Y)
  typst compile resume-kr.typ kr.pdf
