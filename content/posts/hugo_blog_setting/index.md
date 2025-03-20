+++
date = '2025-01-27T05:53:09+09:00'
draft = false
title = 'Hugo를 이용한 Git Blog 구축하기'

tags = ["GitBlog", "Hugo"]
description = ""

UseHugoToc = true
showtoc = true
tocopen = false

[cover]
image = "images/cover.webp"  # 같은 폴더 내 이미지 사용
relative = true  # when using page bundles set this to true, 페이지 번들 내부 이미지 사용
+++

- Hugo를 선택한 이유: 속도가 가장 빠르니께!

| 도구 | 속도 | 커스터마이징 | 쉬운 설치 | 테마 다양성 | 추천 사용 사례 |
| --- | --- | --- | --- | --- | --- |
| **Hugo** | 🔥 빠름 | 중간 | 간단 | 많음 | 빠른 블로그 생성 |
| **Gatsby** | 중간 | 매우 높음 | 약간 복잡 | 많음 | React 기반 웹사이트 |
| **Hexo** | 빠름 | 중간 | 간단 | 많음 | 간단한 블로그 |
| **Next.js** | 중간 | 매우 높음 | 복잡 | 없음 | 동적 웹사이트 |
| **Zola** | 빠름 | 중간 | 간단 | 적음 | 직관적 블로그 |
| **Pelican** | 중간 | 중간 | 간단 | 적음 | Python 활용 블로그 |

### **1.** Git 설치

1. [Git 공식 사이트](https://git-scm.com/)에서 Windows용 설치 파일 다운로드 및 실행. (Git-2.47.1.2-64-bit)

---

### **2.** Hugo 설치

- **Windows**:
    1. [Hugo Releases 페이지](https://github.com/gohugoio/hugo/releases)에서 Windows용 설치 파일을 다운로드. (hugo_extended_0.142.0_windows-amd64.zip)
    2. `C:\Hugo\bin`  폴더 생성 및 폴더 내에 설치 파일 압축 해제
        
        ```bash
        C:\HUGO
        └─bin
                hugo.exe
                LICENSE
                README.md
        ```
        
    3. 환경 변수를 설정해 `hugo` 명령어를 사용할 수 있도록 설정.
        
        {{< figure src="images/image-1.png" >}}
        
    4. 설치 후 Hugo가 정상적으로 설치되었는지 확인:
        
        ```bash
        hugo version
        # hugo v0.142.0-1f746a872442e66b6afd47c8c04ac42dc92cdb6f+extended windows/amd64 BuildDate=2025-01-22T12:20:52Z VendorInfo=gohugoio
        ```
        

---

### **3.** 새로운 Hugo 사이트 생성

Hugo 사이트를 생성합니다:

```bash
hugo new site myblog
cd myblog
```

---

### **4.** 테마 설치

- **링크**: [PaperMod GitHub](https://github.com/adityatelange/hugo-PaperMod)
- **특징**:
    - 깔끔하고 미니멀한 디자인.
    - 빠른 로딩 속도와 쉬운 설정.
    - Markdown으로 작성된 콘텐츠 중심의 블로그에 적합.
    - MathJax, KaTeX 지원 ([Andy Zeng](https://andyzeng.github.io/)처럼 연구 중심 블로그에 적합).
- **적합한 이유**:
    - 연구 논문, 코드 샘플, 수식을 깔끔하게 표현 가능.
    - 커스터마이징이 쉬워 블로그를 독창적으로 꾸밀 수 있음.

1. PaperMod 테마 설치

```bash
git init
git submodule add https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
```

1. `hugo.toml` 파일에 테마를 설정합니다:

```toml
baseURL = "https://son-dongwoo.github.io/"
languageCode = "en-us"
title = "Son-Dongwoo's Blog"
theme = "PaperMod"
```

---

### **5.** 로컬에서 실행

테마가 적용되었는지 확인하기 위해 서버 실행

```bash
hugo server -D
```

웹 브라우저에서 `http://localhost:1313`으로 접속해 사이트 확인하기.

---

### **6.** 블로그 커스터마이징

1. `hugo.toml`  수정
    
    `hugo.toml` 파일을 열고 사이트의 기본 설정 변경
    
    <aside>
    🔥
    
    `params.assets.disableFingerprinting=true`을 작성해야 CSS가 제대로 동작한다! [[출처: antifragile](https://xntifrxgile.tistory.com/71#Hugo%20%EC%84%A4%EC%B9%98-1)]
    
    </aside>
    
    ```toml
    baseURL = "https://son-dongwoo.github.io/"
    languageCode = "en-us"
    title = "Son-Dongwoo's Blog"
    theme = "PaperMod"
    
    [params]
      author = "Son-Dongwoo"
      description = "Welcome to my blog!"
      showDate = true
      showReadingTime = true
      assets.disableFingerprinting=true
    ```
    
2. 메뉴 설정
    
    블로그 메뉴를 설정하려면 `hugo.toml`에 다음 섹션을 추가한다.
    
    ```toml
    [menu]
      [[menu.main]]
        name = "Home"
        url = "/"
        weight = 1
    
      [[menu.main]]
        name = "About"
        url = "/about/"
        weight = 2
    ```
    

→ 전체 `hugo.toml`

```bash
baseURL = "https://son-dongwoo.github.io/"
languageCode = "en-us"
title = "Son-Dongwoo's Blog"
theme = "PaperMod"

[params]
  author = "Son-Dongwoo"
  description = "Welcome to my blog!"
  showDate = true
  showReadingTime = true
  assets.disableFingerprinting=true

[menu]
  [[menu.main]]
    name = "Home"
    url = "/"
    weight = 1

  [[menu.main]]
    name = "About"
    url = "/about/"
    weight = 2
```

1. Markdown 기반 글 작성
    
    글을 작성하려면 아래 명령어를 사용합니다:
    
    ```bash
    hugo new posts/my-first-post.md
    ```
    
    작성된 Markdown 파일은 `content/posts/my-first-post.md` 경로에 저장됩니다. 예시:
    
    ```markdown
    +++
    title: "My First Post"
    date: 2025-01-27
    draft: false
    +++
    
    Hello, world! This is my first post on Hugo.
    ```
    

---

### **7.** 블로그 배포

1. 정적 파일 생성
    
    ```bash
    hugo -t PaperMod
    ```
    
    이 명령을 실행하면 `public` 폴더에 정적 HTML 파일이 생성된다.
    
2. GitHub Pages로 배포
    1. Repository 생성
        - 프로젝트 이름: `<user-id>.github.io`
        - 프로젝트 공개 여부: Public
        - 두 개의 브랜치로 관리하고자 한다.
            
            
            | 브랜치 | 역할 |
            | --- | --- |
            | main | Hugo 프로젝트 소스 파일 관리. |
            | gh-pages | Hugo로 빌드한 정적 파일을 배포. |
            
    2. `main` 브랜치
        
        ```bash
        cd C:\SonDongwoo\myblog
        git init
        git config --global user.email "sondongwoo2024@gmail.com"
        git config --global user.name "Son-Dongwoo"
        git remote add origin https://github.com/Son-Dongwoo/Son-Dongwoo.github.io.git
        git branch -m main
        git add .
        git commit -m "Upload Hugo source files to main"
        git push -u origin main
        ```
        
    3. `gh-pages` 브랜치.
        
        ```bash
        cd public
        git init
        git remote add origin https://github.com/Son-Dongwoo/Son-Dongwoo.github.io.git
        git branch -m gh-pages
        git add .
        git commit -m "Deploy Hugo site"
        git push -u origin gh-pages
        ```
        
    4. gh-pages 브랜치 관리
        - GitHub Pages 설정
            - GitHub Repository의 **Settings** → **Pages**로 이동
            - Branch를 `gh-pages` 브랜치로 설정
            
            {{< figure src="images/image-2.png" >}}
            
    

---

### **9.** 자동화 코드 작성

- Window
    
    ```bash
    @echo off
    REM ========================
    REM Deploy Hugo site script
    REM ========================
    
    :: Build the project with the specified theme
    hugo -t PaperMod
    
    :: Navigate to the public directory
    cd public
    
    :: Add changes to git in the public folder
    git add .
    
    :: Ask for commit message for public folder
    echo Enter commit message for gh-pages branch \(Press ENTER for default message\):
    set /p msg_public="> "
    if "%msg_public%"=="" set msg_public=Rebuilding site on %date% %time%
    git commit -m "%msg_public%"
    
    :: Push changes to the gh-pages branch
    git push origin gh-pages
    
    :: Return to the project root directory
    cd ..
    
    :: Add changes in the root directory
    git add .
    
    :: Ask for commit message for main branch
    echo Enter commit message for main branch \(Press ENTER for default message\):
    set /p msg_main="> "
    if "%msg_main%"=="" set msg_main=Rebuilding site on %date% %time%
    git commit -m "%msg_main%"
    
    :: Push changes to the main branch
    git push origin main
    
    ```
    
- Linux
    
    ```bash
    #!/bin/bash
    
    # ========================
    # Deploy Hugo site script
    # ========================
    
    # Build the project with the specified theme
    hugo -t PaperMod
    
    # Navigate to the public directory
    cd public || exit
    
    # Add changes to git in the public folder
    git add .
    
    # Ask for commit message for the gh-pages branch
    echo "Enter commit message for gh-pages branch (Press ENTER for default message):"
    read msg_public
    if [ -z "$msg_public" ]; then
      msg_public="Rebuilding site on $(date)"
    fi
    git commit -m "$msg_public"
    
    # Push changes to the gh-pages branch
    git push origin gh-pages
    
    # Return to the project root directory
    cd .. || exit
    
    # Add changes in the root directory
    git add .
    
    # Ask for commit message for the main branch
    echo "Enter commit message for main branch (Press ENTER for default message):"
    read msg_main
    if [ -z "$msg_main" ]; then
      msg_main="Rebuilding site on $(date)"
    fi
    git commit -m "$msg_main"
    
    # Push changes to the main branch
    git push origin main
    
    ```