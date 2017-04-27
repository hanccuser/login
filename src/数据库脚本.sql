drop table member purge;
create table member(
	mid VARCHAR2(50),
	password VARCHAR2(32),
	CONSTRAINT pk_mid PRIMARY KEY(mid)
	);
	insert into member(mid,password)values('han','156');
	insert into member(mid,password)values('cheng','258');
commit;