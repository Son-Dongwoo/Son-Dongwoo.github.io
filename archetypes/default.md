+++
date = '{{ .Date }}'
draft = true
title = '{{ replace .File.ContentBaseName "-" " " | title }}'

tags = ["example", "cover"]
description = ""

[cover]
image = "cover.jpg"  # 같은 폴더 내 이미지 사용
alt = "이것은 대표 이미지입니다." # alt text, 대체 텍스트
caption = "" # Image caption
relative = true  # when using page bundles set this to true, 페이지 번들 내부 이미지 사용
hidden = false
+++