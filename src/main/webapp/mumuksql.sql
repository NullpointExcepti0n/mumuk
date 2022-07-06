-- 밥친구 게시판
create table bf (
	num number primary key, 			-- key : 글쓸때마다 1씩 증가
	writer varchar2(20) not null, 		-- 작성자
	subject varchar2(50) not null, 		-- 제목
	content varchar2(500) not null, 	-- 본문
	readcount number default 0, 		-- 읽은 횟수
	password varchar2(12) not null, 	-- 암호
	ref number not null, 				-- 답변글끼리 그룹
	re_step number not null, 			-- ref내의 순서
	re_level number not null, 			-- 들여쓰기
	ip varchar2(20) not null, 			-- 작성자 ip
	reg_date date not null, 			-- 작성일
	del char(1) default 'n'
);

-- 북마크(먹고싶다) 테이블
create table bookmark (
   bm_no number primary key,   -- 북마크 번호
   rno number references restaurant(rno) not null,  -- 식당 번호       
   mno number references member(mno) not null       -- 회원 번호 
);

select * from member;

select * from bookmark;

drop sequence seq_bookmark_bm_no;
create sequence seq_bookmark_bm_no;

-- 식당 테이블
create table restaurant (
   rno number primary key,  -- 식당 번호
   rname varchar2(50) not null, -- 식당 이름
   addr varchar2(100) not null, -- 식당 주소
   rtel varchar2(20),           -- 식당 전화번호
   menu1 varchar2(50) not null, -- 대표메뉴1
   menu2 varchar2(50), -- 대표메뉴2
   menu3 varchar2(50), -- 대표메뉴3
   img1 varchar2(100), -- 메뉴사진1
   img2 varchar2(100), -- 메뉴사진2
   img3 varchar2(100), -- 메뉴사진3
   img4 varchar2(100), -- 메뉴사진4
   map_x number not null, -- 좌표x
   map_y number not null, -- 좌표y
   sep_1 varchar2(50) not null, -- 대분류
   sep_2 varchar2(50) not null, -- 중분류
   sep_3 varchar2(50), -- 소분류
   del char(1) default 'n' not null,  -- 삭제 여부
   readcount number default 0 not null           
);

-- 맴버
create table member (
	mno           NUMBER       primary key,   -- 회원번호
    id	          VARCHAR2(20) not null,      -- 아이디
    password      VARCHAR2(20) not null,      -- 비밀번호
    name	      VARCHAR2(20) not null,      -- 이름
    email_id	  VARCHAR2(20) not null,      -- 이메일 @ 앞 부분
    email_domain  VARCHAR2(20) not null,	  -- 이메일 @ 뒷 부분
	tel	          VARCHAR2(20) not null,	  -- 전화번호
	nickName	  VARCHAR2(20) not null,	  -- 별명
	reg_date	  DATE         not null,      -- 가입일
	profile	      VARCHAR2(20),               -- 프로필
	del	          CHAR(1)	  default 'N'     -- 삭제여부
);

create sequence seq_member_mno;

-- 식당 리뷰 테이블
create table review (
	rv_no number primary key,    -- 리뷰 번호
    content varchar2(500) not null,   -- 내용
    reg_date date not null,           -- 작성일
    rno number references restaurant(rno) not null,  -- 식당 번호
    mno number references member(mno) not null,      -- 회원 번호
    del char(1) default 'n'                     -- 삭제 여부 
);

create sequence seq_review_rv_no;

-- 식당 별점 테이블
create table starRate (
	rate_no number primary key,      -- 별점 번호
	star_rate number not null,       -- 별점
	rno number references restaurant(rno) not null,  -- 식당 번호
	mno number references member(mno) not null       -- 회원 번호
);

create sequence seq_starRate_rate_no;
