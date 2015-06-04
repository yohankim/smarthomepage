<!-- 테이블 생성시 -->
create table member(
	id varchar2(20),
	pwd varchar2(20),
	name varchar2(20),
	age varchar2(4),
	gender varchar2(5),
	primary key(id)
);
<!-- commit명령어 -->
commit;

<!-- 멤버리스트 출력시 -->
select * from member;

<!-- 회원가입시 -->
insert into member(id,pwd,name,age,gender)
values('kim','1234','김요한','23','MAN');

insert into member(id,pwd,name,age,gender)
values('hong','1234','홍요한','21','MAN');

<!-- 회원 탈퇴시-->
delete from member
where id = '';<!-- SQL 문자열 표시할 때 싱글쿼터 사용 -->

<!-- 회원조회(로그인 시) -->
select pwd from member
where id = '';

<!-- 테이블의 컬럼을 조회할 때 -->
desc member;

<!-- 회원 정보 중 비밀번호를 수정할 때 -->
update member set pwd = ''
where id = '';

<!-- 이름으로 비밀번호 찾기 -->
select from member
where name = '김요한';