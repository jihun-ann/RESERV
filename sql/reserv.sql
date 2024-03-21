create table d_menu(
    menunum number not null primary key
);

drop table serv_user;

create table serv_user(
    usernum number,
    userid varchar(30),
    userpw varchar(200) not null,
    username varchar(30) not null,
    userssn varchar(200),
    userphonenum varchar(30) not null,
    useraddress varchar(500) not null,
    authority varchar(30) not null,
    enabled number default 1,
    str_01 varchar(100),
    str_02 varchar(100),
    str_03 varchar(100),
    str_04 varchar(100),
    str_05 varchar(100),
    CONSTRAINT serv_user_pk primary key(usernum,userssn),
    constraint serv_user_uk UNIQUE (userid)
);

insert into serv_user(usernum,userid,userpw,username,userssn,userphonenum,useraddress,hasrole) values(user_seq.nextval,'test','test','test','010101-0101010','010-0000-0000','test','user');

drop table serv_menu;
create table serv_menu(
    menunum number,
    menuname varchar(20) not null,
    menuurl varchar(50) not null,
    userid varchar(30),
    compcode varchar(10),
    str_01 varchar(50),
    str_02 varchar(50),
    str_03 varchar(50),
    str_04 varchar(50),
    str_05 varchar(50),
    CONSTRAINT serv_menu_pk primary key (menunum,userid),
    CONSTRAINT serv_userid_fk FOREIGN key(userid) REFERENCES serv_user(userid) on delete cascade,
    CONSTRAINT serv_userid_fk2 FOREIGN key(compcode) REFERENCES serv_company(compcode) on delete cascade
);
create SEQUENCE menu_seq;

drop table serv_company;

create table serv_company(
    compnum number,
    compcode varchar(10),
    compname varchar(50),
    compcont varchar(30),
    compuser varchar(30),
    compaddress varchar(500),
    compphonenum varchar(30),
    businessnum varchar(100),
    str_01 varchar(50),
    str_02 varchar(50),
    str_03 varchar(50),
    str_04 varchar(50),
    str_05 varchar(50),
   CONSTRAINT serv_comp_pk primary key (compnum, businessnum),
   constraint serv_comp_fk FOREIGN key (compuser) REFERENCES serv_user(userid),
   constraint serv_comp_uk unique (compcode)
);
create SEQUENCE comp_seq;

create table 