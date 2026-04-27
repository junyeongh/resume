compile:
  #!/usr/bin/env bash
  year=$(date +%Y)
  typst compile en.typ "Resume - Junyeong Heo ($year).pdf"

watch:
  typst watch en.typ

compile-kr:
  #!/usr/bin/env bash
  year=$(date +%Y)
  typst compile kr.typ "[허준영] 이력서 ($year).pdf"

watch-kr:
  typst watch kr.typ