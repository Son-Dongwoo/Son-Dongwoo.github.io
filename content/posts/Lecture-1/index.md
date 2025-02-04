+++
date = '2025-02-05T01:10:32+09:00'
draft = false
title = 'Lecture 1, Introduction'

tags = ["Deep Reinforcement Learning"]
description = "UC Berkeley의 CS 285 강의인 Deep Reinforcement Learning의 Lecture 1 정리"

UseHugoToc = true
showtoc = true
tocopen = false

[cover]
image = "images/cover.webp"  # 같은 폴더 내 이미지 사용
relative = true  # when using page bundles set this to true, 페이지 번들 내부 이미지 사용
+++

> 강의 자료: [UC Berkeley - Deep Reinforcement Learning](https://rail.eecs.berkeley.edu/deeprlcourse/)<br>강의 영상: [Youtube Link](https://www.youtube.com/playlist?list=PL_iWQOsE6TfVYGEGiAOMaOzzv41Jfm_Ps)
> 

- 강화 학습은 **사람이 생각하지 못하는 새로운 해결책**을 제시할 수 있다. 그렇기에 강화 학습은 공부할 가치가 충분하다.

- 강화 학습은 2가지 의미로 정의되며, 각 내용은 분리된 정의이다.
    1. 학습 기반 의사 결정을 위한 수학적 형식 주의 
        
        → Mathematical formalism for learning-based decision making
        
    2. 경험으로부터 의사 결정과 제어를 학습하는 접근 방식
        
        → Approach for learning decision making and control from experience
        

- 지도 학습과 강화 학습의 차이
    
    
    | 지도 학습 (Usually assumes) | 강화 학습 |
    | --- | --- |
    | i.i.d. data | Data is **not** i.i.d.<br>→ previous outputs influence future inputs! |
    | known ground truth outputs in training | Ground truth answer is not known, only know if we succeeded or failed<br>→ more generally, we know the reward |

<aside style="border-radius: var(--radius); background:var(--code-bg); padding:5px; border-left:5px solid #f1c40f;">  

💡What is **i.i.d. data (independent and identically distributed)**?  
- **Independent (독립성):** 각 데이터 샘플은 서로 독립적이다. 즉, 한 샘플이 다른 샘플에 영향을 주지 않는다.
- **Identically Distributed (동일 분포):** 모든 데이터 샘플은 동일한 확률 분포에서 추출된다. 이는 데이터가 일정한 분포를 따르고 있다는 것을 의미한다.
</aside>

- reward는 scalar 값!

- 강화 학습은 Complex physical tasks를 잘한다.

- 리처드 서튼의 **[The Bitter Lesson](http://incompleteideas.net/IncIdeas/BitterLesson.html)** 읽어보기
    - Learning: use data to extract patterns (Deep Learning)
    - Search: use computation to extract inferences (Optimization)

- Imitation Learning은 단순히 근육의 움직임을 따라하는 것이 아니라 그 행동의 목적을 이해하고 에이전트가 독창적으로 행동하는 것이 인상적이다.