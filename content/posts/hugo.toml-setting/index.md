+++
date = '2025-02-04T23:33:13+09:00'
draft = false
title = 'hugo.toml 설정'

tags = ["GitBlog", "Hugo"]
description = ""

[cover]
image = ""  # 같은 폴더 내 이미지 사용
alt = "" # alt text, 대체 텍스트
caption = "" # Image caption
relative = true  # when using page bundles set this to true, 페이지 번들 내부 이미지 사용
hidden = false
+++

# 1. hugo.toml

[참고: [antifragile blog](https://xntifrxgile.tistory.com/71#%EA%B8%80%20%EC%9E%91%EC%84%B1-1)]  
[[블로그 hugo.toml 보기]](https://github.com/Son-Dongwoo/Son-Dongwoo.github.io/blob/main/hugo.toml)
```toml
baseURL = "https://son-dongwoo.github.io/"
languageCode = "en-us"
title = "Son-Dongwoo's Blog"
theme = "PaperMod"

[pagination]
pagerSize = 5

enableRobotsTXT = true
buildDrafts = false
buildFuture = false
buildExpired = false
pygmentsUseClasses = true
# Read: https://github.com/adityatelange/hugo-PaperMod/wiki/FAQs#using-hugos-syntax-highlighter-chroma

[minify]
disableXML = true
minifyOutput = true

[params]
env = "production" # to enable google analytics, opengraph, twitter-cards and schema.
title = "ExampleSite"
description = "Welcome to my blog!"
keywords = [ "Blog", "Portfolio", "PaperMod" ]
author = "Son-Dongwoo"
# author = ["Me", "You"] # multiple authors
images = [ "<link or path of image for opengraph, twitter-cards>" ]
DateFormat = "January 2, 2006"
defaultTheme = "dark" # auto, dark, light
disableThemeToggle = false
ShowReadingTime = true
ShowShareButtons = false
ShowPostNavLinks = true
ShowBreadCrumbs = true
ShowCodeCopyButtons = true
ShowWordCount = false
ShowRssButtonInSectionTermList = false
UseHugoToc = true
disableSpecial1stPost = false
disableScrollToTop = true
comments = true
hidemeta = false
hideSummary = false
showtoc = true
showDate = true
tocopen = false

[menu]
	[[menu.main]]
		identifier = "posts"
		name = "posts"
		url = "/posts/"
		weight = 10

  [[menu.main]]
		identifier = "projects"
		name = "projects"
		url = "/projects/"
		weight = 20

	[[menu.main]]
		identifier = "tags"
		name = "tags"
		url = "/tags/"
		weight = 30

[params.assets]
# disableHLJS = true # to disable highlight.js
disableFingerprinting = true
favicon = "<link / abs url>"
favicon16x16 = "<link / abs url>"
favicon32x32 = "<link / abs url>"
apple_touch_icon = "<link / abs url>"
safari_pinned_tab = "<link / abs url>"

[params.label]
text = "Son-Dongwoo's Blog"
icon = "/apple-touch-icon.png"
iconHeight = 35

[params.profileMode]
enabled = false
title = "Son-Dongwoo"
subtitle = "I'm Interested in Robot Learning & Deep Reinforcement Learning"
# imageUrl = "<img location>"
imageWidth = 120
imageHeight = 120
imageTitle = "My Profile Image"

	[[params.profileMode.buttons]]
		name = "Blog"
    url = "posts"
	
	[[params.profileMode.buttons]]
		name = "Projects"
    url = "projects"
	
	[params.homeInfoParams]
		Title = "Hi there 👋"
		Content = "💭 I'm Interested in<br>|🔎 Deep Reinforcement Learning<br>|🔎 Robot Learning"
	
	[[params.socialIcons]]
		name = "x"
		url = "https://x.com/"
	
	[[params.socialIcons]]
		name = "github"
		url = "https://github.com/Son-Dongwoo"
	
[params.analytics.google]
SiteVerificationTag = "XYZabc"

[params.cover]
hidden = false # hide everywhere but not in structured data
hiddenInList = false # hide on list pages and home
hiddenInSingle = false # hide on single page

# for search
# https://fusejs.io/api/options.html
[params.fuseOpts]
isCaseSensitive = false
shouldSort = true
location = 0
distance = 1000
threshold = 0.5
minMatchCharLength = 0
limit = 15
keys = [ "title", "permalink", "summary", "content" ]

# Read: https://github.com/adityatelange/hugo-PaperMod/wiki/FAQs#using-hugos-syntax-highlighter-chroma
[markup.highlight]
noClasses = false
anchorLineNos = false
codeFences = true
guessSyntax = false
lineNos = true
style = "github"

[markup]
  [markup.goldmark]
    [markup.goldmark.renderer]
      unsafe = true

```

# 2. 파라미터 설명

## **2.1.** 기본 설정

| **파라미터** | **설명** |
| --- | --- |
| `baseURL` | 사이트의 기본 URL (GitHub Pages 사용 시 `"https://<USER_ID>.github.io/"` 로 설정해야 함) |
| `languageCode` | 사이트의 기본 언어 (`en-us`: 영어, `ko-kr`: 한국어) |
| `title` | 블로그 제목 (`Son-Dongwoo's Blog`) |
| `theme` | 사용 테마 (`PaperMod`) |
| `[pagination]`<br>`pagerSize = 5` | 한 페이지에 표시할 포스트 수 (기본값: `5`) <br><br> ⚠️ Hugo 0.143.0 부터 `paginate` 소멸|
| `enableRobotsTXT` | `true`이면 `robots.txt` 파일 자동 생성 (SEO 최적화에 필요) |
| `buildDrafts` | `true`이면 `draft: true`인 포스트도 빌드됨 (기본값: `false`) |
| `buildFuture` | `true`이면 미래 날짜의 포스트도 빌드됨 |
| `buildExpired` | `true`이면 만료된 포스트도 빌드됨 |

---

## **2.2.** HTML 파일 최적화 (Minification,`[minify]`)

| **파라미터** | **설명** |
| --- | --- |
| `disableXML` | `true`이면 XML(RSS) 파일 생성 안 함 |
| `minifyOutput` | `true`이면 HTML/CSS/JS 파일을 최소화 |

---

## **2.3.** Hugo 테마 및 사이트 전반적인 설정 (`[params]`)

### **2.3.1** 블로그 메타정보

| **파라미터** | **설명** |
| --- | --- |
| `env` | `"production"` 설정 시, SEO 및 Analytics 활성화 |
| `title` | 블로그 제목 (`ExampleSite`) |
| `description` | 블로그 설명 (`"Welcome to my blog!"`) |
| `keywords` | 검색 엔진 최적화를 위한 키워드 리스트 |
| `author` | 블로그 작성자 (`"Son-Dongwoo"`) |
| `images` | OpenGraph 및 Twitter Cards에서 사용할 대표 이미지 |

### **2.3.2** 블로그 테마 및 UI 설정

| **파라미터** | **설명** |
| --- | --- |
| `DateFormat` | Hugo에서 사용할 날짜 형식 (`"January 2, 2006"`) |
| `defaultTheme` | `"auto"`: 다크/라이트 모드 자동 설정 |
| `disableThemeToggle` | `true`이면 다크/라이트 모드 토글 버튼 비활성화 |
| `ShowReadingTime` | `true`이면 포스트에 예상 읽기 시간 표시 |
| `ShowShareButtons` | `true`이면 소셜 공유 버튼 표시 |
| `ShowPostNavLinks` | `true`이면 이전/다음 포스트 네비게이션 활성화 |
| `ShowBreadCrumbs` | `true`이면 페이지 네비게이션 경로(Breadcrumb) 표시 |
| `ShowCodeCopyButtons` | `false`이면 코드 복사 버튼 비활성화 |
| `ShowWordCount` | `true`이면 포스트 글자 수 표시 |
| `ShowRssButtonInSectionTermList` | `true`이면 RSS 버튼 표시 |
| `UseHugoToc` | `true`이면 Hugo의 기본 목차 기능 사용 |
| `disableSpecial1stPost` | `true`이면 첫 번째 포스트 강조 효과 비활성화 |
| `disableScrollToTop` | `true`이면 "맨 위로 가기" 버튼 비활성화 |
| `comments` | `false`이면 댓글 기능 비활성화 |
| `hidemeta` | `false`이면 포스트 메타데이터(작성일, 태그 등) 표시 |
| `hideSummary` | `false`이면 포스트 요약 표시 |
| `showtoc` | `true`이면 글 내부에서 목차 표시 |
| `showDate` | `true`이면 포스트 날짜 표시 |
| `tocopen` | `false`이면 목차를 기본적으로 닫아둠 |

---

## **2.4.** 네비게이션 메뉴 설정 (`[[menu.main]]`)

| **파라미터** | **설명** |
| --- | --- |
| identifier | 메뉴의 고유 ID (중복되지 않도록 설정) |
| name | 메뉴에 표시될 이름 |
| url | 해당 메뉴 클릭 시 이동할 URL <br><br>⚠️ 모든 URL 경로는 앞뒤에 `/`를 붙여야 바르게 작동 |
| weight | 메뉴의 정렬 순서 (값이 낮을수록 먼저 표시됨) |

---

## **2.5.** 사이트 아이콘 설정

| **파라미터** | **설명** |
| --- | --- |
| `disableFingerprinting` | `true`이면 Hugo의 fingerprinting 기능 비활성화
→ CSS/JS 적용을 위해 `true`로 설정 |
| `favicon` | 사이트 파비콘 설정 |
| `favicon16x16` | 16x16 아이콘 설정 |
| `favicon32x32` | 32x32 아이콘 설정 |
| `apple_touch_icon` | iOS 홈 화면 아이콘 |
| `safari_pinned_tab` | Safari 브라우저 고정 탭 아이콘 |

---

## **2.6.** 블로그 상단 로고 및 텍스트 설정

| 파라미터 | 설명 |
| --- | --- |
| `text` | 네비게이션 바에서 표시할 사이트 이름 |
| `icon` | 네비게이션 바에 표시할 아이콘 이미지 |
| `iconHeight` | 아이콘의 높이 (픽셀 단위) |

---

## **2.7.** 프로필모드 설정 (`[profileMode]`)

| 파라미터 | 설명 |
| --- | --- |
| `enabled` | `true`이면 프로필 모드 활성화 |
| `title` | 프로필 모드에서 표시할 제목 |
| `subtitle` | 프로필 설명(한 줄) |
| `imageUrl` | 프로필 이미지 경로 |
| `imageWidth` | 프로필 이미지 너비 |
| `imageHeight` | 프로필 이미지 높이 |
| `imageTitle` | 프로필 이미지에 마우스를 올렸을 때 표시할 텍스트 |
| `params.profileMode.buttons` | 프로필 모드 버튼 생성 |
| `socialIcons` | X(트위터), StackOverflow, GitHub 링크 추가 |

---

## **2.8.** 홈 화면 인사말 (일반 블로그 스타일) (`[params.homeInfoParams]`)

| **파라미터** | **설명** |
| --- | --- |
| `Title` | 홈 화면에서 표시할 제목 |
| `Content` | 홈 화면에서 표시할 인사말 |

---

## **2.9.** 소셜 미디어 아이콘 (`[[params.socialIcons]]`)

| **파라미터** | **설명** |
| --- | --- |
| `name` | 소셜 미디어 플랫폼 (PaperMod에서 지원하는 이름 사용) |
| `url` | 해당 소셜 미디어 페이지 URL |

---

## **2.10.** SEO 및 검색 엔진 최적화 (Analytics)

| **파라미터** | **설명** |
| --- | --- |
| `analytics.google.SiteVerificationTag` | Google 검색 엔진 등록용 인증 태그 |

---

## **2.11.** 포스트 커버 이미지 설정

| **파라미터** | **설명** |
| --- | --- |
| `cover.hidden` | `true`이면 모든 페이지에서 커버 이미지 숨김 |
| `cover.hiddenInList` | `true`이면 목록 페이지에서 숨김 |
| `cover.hiddenInSingle` | `true`이면 포스트 내부에서 숨김 |

---

## **2.12.** 검색 기능 설정 (`fuse.js`)

| **파라미터** | **설명** |
| --- | --- |
| `isCaseSensitive` | 대소문자 구분 여부 |
| `shouldSort` | 검색 결과 정렬 여부 |
| `location` | 검색어 위치 제한<br>`0` → 검색어가 문장 어디에 있든 검색됨<br>`10` → 검색어가 문장 앞쪽에 있을 때만 검색됨 |
| `distance` | 검색어 간 최대 거리<br>`1000` → 검색어가 문장에서 자유롭게 떨어져 있어도 검색 가능<br>`10` → 검색어가 서로 가까워야 검색됨 |
| `threshold` | 검색 유사도 (낮을수록 정확한 결과) |
| `minMatchCharLength` | 검색어 최소 길이 제한 없음 |
| `limit` | 검색 결과 개수 제한 |
| `keys` | 검색 대상 필드 (제목, URL, 본문 등) |

---

## **2.13.** Syntax Highlighting (`Chroma`)

| **파라미터** | **설명** |
| --- | --- |
| `pygmentsUseClasses` | `true`이면 Syntax Highlighting을 CSS 클래스로 처리 |
| `markup.highlight.noClasses` | `false`이면 CSS 클래스를 사용하여 하이라이트 적용 |
| `markup.highlight.anchorLineNos` | `true`이면 코드 줄 번호 앞에 앵커 추가 |
| `markup.highlight.codeFences` | `true`이면 백틱(```)을 사용한 코드 블록 지원 |
| `markup.highlight.guessSyntax` | `true`이면 코드 언어 자동 감지 |
| `markup.highlight.lineNos` | `true`이면 코드 줄 번호 표시 |
| `markup.highlight.style` | 코드 하이라이트 스타일 변경 <br><br>Hugo 지원 스타일 목록:<br>• `monokai` (어두운 테마)<br>• `dracula` (어두운 테마)<br>• `github` (GitHub 스타일)<br>• `friendly` (기본값)<br>• `solarized-dark` (솔라라이즈 다크)<br>• `solarized-light` (솔라라이즈 라이트) |

---

## **2.14.** HTML 활성화 (`[markup.goldmark.renderer]`)

| **파라미터** | **설명** |
| --- | --- |
| `unsafe` | `true`이면 HTML 활성화<br>ex) `<br>` 같은 명령어 사용 가능 |