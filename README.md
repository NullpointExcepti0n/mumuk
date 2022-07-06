# mumuk

### 강남중앙정보 수강생 및 관계자를 위한 맛집 소개 웹페이지입니다.

### 1. 프로젝트 개요

---

- 매일 학원을 등원하여 식사메뉴를 선정하는 것에 대한 어려움에서 프로젝트를 시작하였습니다.
- 개인 선호도에 따른 식당을 추천해 주는 웹페이지로 만들면 수강생 및 관계자에게 도움을 줄 수 있을 것이라 생각하였습니다.
- 단순히 선호도로 인한 선택만이 아닌 게임적인 요소를 추가하여 식당 선정에 도움과 재미를 주고자 하였습니다

### 2. 프로젝트 제작 기간 및 역할

---

- 2022.03.16 ~ 2022.04.19
- 팀 프로젝트(3명)
    - 권기준(회원 가입, 선호도별 메뉴 추천 시스템)
    - 박찬우(랜던 메뉴 추천 시스템, 밥 친구 게시판)
    - 이하영(메인 화면, 식당 리스트 게시판)

### 3. 사용 기술

---

- back-end
    - Java 11
    - JSP&Servlet
    - MyBatis
- front-end
    - HTML5
    - CSS3
    - JavaScript
    - jQuery
- server
    - Apache Tomcat v9.0
    

### 4. 메뉴 트리

---

![Untitled](mumuk%20c02e382ace3c4524b440864295186258/Untitled.png)

### 5. ERD

---

![ERD](https://user-images.githubusercontent.com/101856118/177474312-a3e60f2e-3a56-4ea2-9d16-a0632b5e4bcd.jpg)

### 6. 핵심 기능

---

- 선호도에 따른 식당 추천 기능
- 게임성을 지닌 식당 추천 기능
- 회원 가입 기능
- 회원들간 밥 친구를 구하는 게시판
- 전체 식당 리스트와 식당 상세정보를 위한 지도 API

### 6.1 선호도에 따른 식당 추천 기능

---

- 자체적으로 나눈 카테고리를 통해 식당을 추천한다
