compile:
  #!/usr/bin/env bash
  year=$(date +%Y)
  typst compile resume.typ "Resume - Junyeong Heo ($year).pdf"

watch:
  typst watch resume.typ

compile-kr:
  #!/usr/bin/env bash
  year=$(date +%Y)
  typst compile resume-kr.typ "[허준영] 이력서 ($year).pdf"

watch-kr:
  typst watch resume-kr.typ