+++
date = '{{ .Date }}'
draft = true
title = '{{ replace .File.ContentBaseName "-" " " | title }}'

tags = ["example"]
description = ""

UseHugoToc = true
showtoc = true
tocopen = false

[cover]
image = "images/cover.png"  # 같은 폴더 내 이미지 사용
relative = true  # when using page bundles set this to true, 페이지 번들 내부 이미지 사용
+++