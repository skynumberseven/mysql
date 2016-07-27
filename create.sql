drop database if exists informationone;
create database informationone character set utf8; -- 创建数据库
use informationone; -- 进入数据库
create table information(-- 创建数据表(机构)
  id int unsigned not null auto_increment primary key,
  mechanismcoding char(32) not null,-- 机构编码 mechanism coding
  superiorcoding char(32) not null,-- 上级编码 superior coding
  lnstitutionalorder char(32) not null,-- 机构顺序 lnstitutional order
  nameoforganization char(32) not null,-- 机构名称name of organization
  organizationdescription char(32) not null,-- 机构描述 Organization description
  createpersonnel char(8) not null,-- 创建人员 Create personnel
  creationtime date not null,-- 创建时间 Creation time
  updatepersonnel char(8) not null,-- 更新人员 Update personnel
  updatetime date not null-- 更新时间 Update time
);

create table institutionaluser( -- 机构用户institutional user
  id int unsigned not null auto_increment primary key,
  number char(32) not null, -- 编号
  mechanismcoding char(32) not null, -- 机构编码 mechanism coding
  usercode char(32) not null -- 用户编码 user code
);


create table mechanismrole(-- 机构角色 mechanism role
  id int unsigned not null auto_increment primary key,
  number char(32) not null,-- 编号
  characterencoding char(32) not null,-- 角色编码 character encoding
  mechanismcoding char(32) not null-- 机构编码 mechanism coding
);


create table buttonlibrary(-- 按钮库 button library
  id int unsigned not null auto_increment primary key,
  buttoncode char(32) not null,-- 按钮代码 button code
  buttonname char(16) not null,-- 按钮名称 button name
  userorder char(16),-- 顺序
  lconname varchar(32),-- 图标名 lcon name
  remarks text(1000),-- 备注
  createdate date not null,-- 创建日期 create date
  updatepersonnel char(8) not null,-- 更新人员 Update personnel
  updatetime date not null,-- 更新时间 Update time
  createpersonnel char(8) not null-- 创建人员 Create personnel
);

create table user(-- 创建数据表（用户）
  id int unsigned not null auto_increment primary key,
  userorder char(32) not null,-- 用户顺序 user order
  username char(8) not null,-- 用户名称 user name
  userdescrption char(32) not null,-- 用户描述 user descrption
  loginpassword char(16) not null,-- 登录密码 login password
  rolename char(8) not null,-- 角色名称 role name
  nameoforganization char(32),-- 用户配置name of organization
  whethertoenable char(8) not null,-- 是否启用 whether to enable
  lastlandingtime date not null,-- 最后登陆时间 last landing time
  landingfrequency char(16) not null,-- 登录次数 landing frequency
  createdate datetime not null,-- 创建日期 create date
  updatepersonnel char(8) not null,-- 更新人员 update personnel
  updatetime date not null-- 更新时间 update time
);

create table userrole(-- 用户角色 user role
  id int unsigned not null auto_increment primary key,
  number char(32) not null,-- 编号
  usercode char(32) not null,-- 用户编码 user code
  characterencoding char(32) not null-- 角色编码 character encoding
);

create table menubutton(-- 菜单按钮 menu button
  id int unsigned not null auto_increment primary key,
  number char(32) not null,-- 编号
  functioncoding char(32) not null,-- 功能编码 function coding
  buttoncoding char(2) not null-- 描述说明description
);

create table usersettings(-- 创建数据表（用户设置）
  number int unsigned not null auto_increment primary key,-- 编号
  setcode char(32) not null,-- 设置编码 set code
  setname char(32) not null,-- 设置名称 set name
  setvalue char(32) not null,-- 设置值 set value
  description char(32) not null-- 描述说明 description
);

create table rolefunction(-- 角色功能 role function
  id int unsigned not null auto_increment primary key,
  code char(32) not null,-- 编码
  characterencoding char(32) not null,-- 角色编码 character encoding
  functioncoding char(32) not null-- 功能编码 function coding
);

create table function(-- 创建数据表（功能）
  id int unsigned not null auto_increment primary key,
  functioncoding char(32) not null,-- 功能编码 function coding
  superiorcoding char(16) not null,-- 上级编码 superior coding
  functionalsequence char(16) not null,-- 功能顺序 functional sequence
  functiondescription char(32) not null,-- 功能描述 function description
  functionname char(16) not null,-- 功能名称 function name
  url char(200),--
  whethervisible char(8) not null,-- 是否可见 whether visible
  whethertoenable char(8) not null,-- 是否启用 whether toenable
  createpersonnel char(8) not null,-- 创建人员 Create personnel
  creationtime date not null,-- 创建时间 Creation time
  updatepersonnel char(8) not null,-- 更新人员 Update personnel
  updatetime date not null-- 更新时间 Update time
);

create table role(-- 角色
  id int unsigned not null auto_increment primary key,
  characterencoding char(32) not null,-- 角色编码 character encoding
  rolesequence char(32) not null,-- 角色顺序 role sequence
  rolename char(32) not null,-- 角色名称 role name
  roledescription text(1000),-- 角色描述 role description
  createpersonnel char(8) not null,-- 创建人员 Create personnel
  creationtime date not null,-- 创建时间 Creation time
  updatepersonnel char(8) not null,-- 更新人员 Update personnel
  updatetime date not null-- 更新时间 Update time
);

create table rolemenubutton(-- 角色菜单按钮 role menu button
  id int unsigned not null auto_increment primary key,
  number char(32) not null,-- 编号
  characternumber char(32) not null,-- 角色编号 character number
  functioncoding char(32) not null,-- 功能编号 functioncoding
  buttoncode char(32) not null-- 按钮代码 button code
);

create table rolecolumnpermissions(-- 角色列权限 role column permissions
  id int unsigned not null auto_increment primary key,
  number char(32) not null,-- 编号
  characterencoding char(32) not null,-- 角色编码 character encoding
  functioncoding char(32) not null,-- 功能编码 function coding
  permissiontype char(16) not null,-- 权限类型 permission type
  fieldname char(32) not null-- 字段名称 field name
);

create table codingtype(-- 创建数据表（编码类型）
  id int unsigned not null auto_increment primary key,
  codingtype char(16) not null,-- 编码类型 coding type
  userorder char(16) not null,-- 类型顺序 user order
  typename char(32) not null,-- 类型名称 type name
  typedescription char(32),-- 类型描述 type description
  createpersonnel char(8) not null,-- 创建人员 Create personnel
  creationtime date not null,-- 创建时间 Creation time
  updatepersonnel char(8) not null,-- 更新人员 Update personnel
  updatetime date not null-- 更新时间 Update time
);

create table code(-- 创建数据表（编码）
  id int unsigned not null auto_increment primary key,
  code char(16) not null,-- 编码
  superiorcoding char(32),-- 上级编码 superior coding
  typecode char(16),-- 类型编码 type code
  typename char(32),-- 类型名称 type name
  valueinenglish char(16),-- 英文值 value in english
  chinesevalue char(16),-- 中文值 chinese value
  whethertoenable char(8) not null,-- 是否启用 whether to enable
  codingdescription char(32),-- 编码描述 coding description
  createpersonnel char(8) not null,-- 创建人员 Create personnel
  creationtime date not null,-- 创建时间 Creation time
  updatepersonnel char(8) not null,-- 更新人员 Update personnel
  updatetime date not null-- 更新时间 Update time
);

create table loginhistory(-- 创建数据表（登录历史）
  id int unsigned not null auto_increment primary key,
  number char(32) not null,-- 编号 number
  landingpersonnelnumber char(32),-- 登录人员编号 landing personnel number
  loginname char(16) not null,-- 登录人员名称 login name
  langingcharacternumber char(32) not null,-- 登录者角色编号 langing character number
  characternameofthelander char(32) not null,-- 登录者角色名称 character name of the lander
  clientmachinename char(16) not null,-- 客户端机器名 client machine name
  clientip char(32) not null,-- 客户端IP client ip
  landingtime date not null,-- 登录时间 landing time
  createpersonnel char(8) not null,-- 创建人员 Create personnel
  creationtime date not null,-- 创建时间 Creation time
  updatepersonnel char(8) not null,-- 更新人员 Update personnel
  updatetime date not null-- 更新时间 Update time
);

create table authorizationcode(-- 授权代码 authorization code
  id int unsigned not null auto_increment primary key,
  authorizationcode char(86) not null,-- 授权代码 authorization code
  authorizationname char(32) not null,-- 授权名称 authorization name
  supervisorcode char(86) not null,-- 上级代码 supervisor code
  createpersonnel char(8) not null,-- 创建人员 Create personnel
  creationtime date not null,-- 创建时间 Creation time
  updatepersonnel char(8) not null,-- 更新人员 Update personnel
  updatetime date not null-- 更新时间 Update time
);

create table roleauthorization(-- 角色授权 role authorization
  id int unsigned not null auto_increment primary key,
  number char(32) not null,-- 编号
  characterencoding char(32) not null,-- 角色编码 character encoding
  authorizationcode char(86) not null-- 授权代码 authorization code
);

create table systemlog(-- 创建数据表（系统日志）
  id int unsigned not null auto_increment primary key,
  number char(32) not null,-- 编号
  logsource char(32) not null,-- 日志来源 log source
  logtypenumber char(32) not null,-- 日志类型编号 log type number
  logtypename char(16) not null,-- 日志类型名称 log type name
  logcontent text(10000),-- 日志内容 log content
  journalnotes varchar(1000),-- 日志备注 journal notes
  operatornumber char(32) not null, -- 操作人员编号 operator number
  operatorname char(32) not null,-- 操作人员名称 operator name
  logtime date not null,-- 日志时间 log time
  createpersonnel char(8) not null,-- 创建人员 Create personnel
  creationtime date not null,-- 创建时间 Creation time
  updatepersonnel char(8) not null,-- 更新人员 Update personnel
  updatetime date not null-- 更新时间 Update time
);

create table systemcode(-- 系统编码 system code
  id int unsigned not null auto_increment primary key,
  parametervalues char(16) not null,-- 参数值 parameter values
  whethertheusercanedit char(4) not null,-- 用户是否可编辑 whether the user can edit
  `describe` char(100),-- 描述
  creator char(16) not null,-- 创建者
  createdate date not null,-- 创建日期 create date
  renewperson char(16) not null,-- 更新者 renew person
  updatedate date not null-- 更新日期 update date
);

insert into information values('1','720200','0001','one','机构1','第一个','tx',
  '20160725','xjj','20160725');
insert into information values('2','720201','0002','two','机构1','第一个','tx',
  '20160725','lab','20160725');
insert into information values('3','720201','0003','three','机构1','第一个','tx',
  '20160725','ljh','20160725');
     select * from information

insert into institutionaluser values('1','720204','0004','four');
  insert into institutionaluser values('2','720205','0005','five');
    insert into institutionaluser values('3','720206','0006','six');
      select * from institutionaluser

insert into mechanismrole values('1','720207','seven','0007');
  insert into mechanismrole values('2','720208','eight','0008');
    insert into mechanismrole values('3','720209','nine','0009');
       select * from mechanismrole

insert into buttonlibrary values(null, '720310', 'dianyixia', '1', 'img01', '备注0', '20160725', 'tom', '20160725', '李');
 insert into buttonlibrary values(null, '720211', 'dianyixia', '2', 'img02', '备注1', '20160725', 'tom', '20160725', '强');
  insert into buttonlibrary values  (null, '720212', 'dianyixia', '3', 'img03', '备注2', '20160725', 'tom', '20160725', '张');
      select * from buttonlibrary;

insert into user values(null, '8', 'xjj', '用户描述0', 'lkjhcf5555', 'username1', ' ', '是', '20160726', '23', '20160726', '李大', '20160726');
 insert into user values(null, '7', 'my', '用户描述1', 'dfgdg55554', 'username2', ' ', '是', '20160726', '30', '20160726', '李二', '20120726');
  insert into user values(null, '6', 'ljh', '用户描述2', 'ffdsed5568', 'username3', ' ', '否', '20160726', '62', '20160726', '李三', '20110726');
      select * from user;

insert into userrole values(null, '225', '256', '569');
  insert into userrole values(null, '225', '256', '569');
    insert into userrole values(null, '225', '256', '569');
      select * from userrole;

insert into menubutton values(null, '2512', '251', '5555');
  insert into menubutton values(null, '2512', '251', '5555');
    insert into menubutton values(null, '2512', '251', '5555');
      select * from menubutton;

insert into usersettings values('9527', '000123', '亮度', '20%', '描述说明0');
  insert into usersettings values('1524', '008151', '声音', '40%', '描述说明1');
    insert into usersettings values('4487', '085555', '灰度', '50%', '描述说明2');
      select * from usersettings;

insert into rolefunction values(null, '2225', '26321', '58466');
  insert into rolefunction values(null, '2225', '26221', '58146');
    insert into rolefunction values(null, '2855', '26691', '53666');
      select * from rolefunction;

insert into function values
  (null, '001', '0010', '8', '功能描述0', 'this', 'sadfghjwertydsfdgfhgjhsddfg', '是', '是', 'xjj', '20140125', 'ljb', '20140130');
insert into function values
  (null, '002', '0011', '7', '功能描述1', 'ther', 'waresrdrwesreretsrdteserter',  '否', '是', 'xjj', '20160501', 'ljb', '20030525');
insert into function values
  (null, '003', '0020', '6', '功能描述2', 'her', 'wertfqwertq34rqwertwerwerwe',  '是', '否', 'xjj', '20130125', 'ljb', '20160506');
      select * from function;

insert into role values(null, '5565', '8', 'xjj', '角色描述0', 'xjj', '2016-07-21', 'ljb', '2016-07-26');
  insert into role values(null, '5552', '7', 'my', '角色描述1', 'xjj', '2016-07-21', 'ljb', '2016-07-26');
    insert into role values(null, '5516', '6', 'ljh', '角色描述2', 'xjj', '2016-07-21', 'ljb', '2016-07-26');
      select * from role;

insert into rolemenubutton values(null, '2522', '8456', '001', 'sdfghjfg');
  insert into rolemenubutton values (null, '2552', '5556', '002', 'dfgrdgsd');
    insert into rolemenubutton values(null, '2452', '2656', '003', 'sfdesfdzfzd');
      select * from rolemenubutton;

insert into rolecolumnpermissions values(null, '2561', '5242', '56962', '直击', '字段名称0');
  insert into rolecolumnpermissions values(null, '2582', '527', '56962', '直击', '字段名称1');
    insert into rolecolumnpermissions values(null, '25174', '5242', '56962', '直击', '字段名称2');
      select * from rolecolumnpermissions;

insert into codingtype values(null, '二进制', '08', '进制', '类型描述0', 'ljh', '2009-02-02', 'xjj', '20110723');
  insert into codingtype values(null, '十进制', '07', '进制', '类型描述1', 'ljb', '2011-02-02', 'xjj', '20110723');
    insert into codingtype values(null, '十六进制', '06', '进制', '类型描述2', 'my', '2016-02-02', 'xjj', '20110723');
      select * from codingtype;

insert into code values(null, 'fdgd', 'fdgdgd', 'e', 'E', '英文', '中文', 'yes', '编码描述0', 'tom', '20110703', 'jas', '20160225');
  insert into code values(null, 'gegrdgd', 'fdgddf', 'a', 'A', '英文', '中文', 'no', '编码描述1', 'jas', '20110703', 'jas', '20160225');
    insert into code values(null, 'dfffd', 'fdgdgdsf', 'b', 'B', '英文', '中文', 'yes', '编码描述2', 'wqs', '20110703', 'jas', '20160225');
      select * from code;

insert into loginhistory values
    (null, '001', '010', 'my', '001', 'xjj', '0010', "192.185.2.2", '2016-02-25', 'tom', '2016-05-30', 'tom', '20160728');
insert into loginhistory values
    (null, '002', '011', 'xjj', '002', 'my', '01010', "192.185.2.2", '2016-02-25', 'tom', '2016-05-30', 'tom', '20160728');
insert into loginhistory values
    (null, '003', '012', 'ljb', '003', 'ljh', '01010', "192.185.2.2", '2016-02-25', 'tom', '20160530', 'tom', '20160728');
      select * from loginhistory;

insert into authorizationcode values
    (null, 'eerghytjuyyhtgrfegr', '002', '555656', 'ljh', '2016-07-21', 'tom', '20160727');
insert into authorizationcode values
    (null, 'dfgyujghfghjkgfdgh', '003', '868686', 'ljb', '2016-07-21', 'tom', '20160727');
insert into authorizationcode values
    (null, 'retgdffghjkmhgfgdf', '004', '2727276', 'xjj', '2016-07-21', 'tom', '20160727');
      select * from authorizationcode;

insert into rolefunction values(null, '2225', '26321', '58466');
  insert into rolefunction values(null, '2225', '26221', '58146');
    insert into rolefunction values(null, '2855', '26691', '53666');
      select * from rolefunction;

insert into systemlog values
    (null, '001', '220', '007', 'text', '日志内容0', '日志备注0', '002', 'tom', '2016-07-04', 'tom', '20150725', 'jav', '20140125');
insert into systemlog values
    (null, '002', '240', '008', 'text', '日志内容0', '日志备注0', '002', 'tom', '2016-07-04', 'tom', '20150725', 'jav', '20140125');
insert into systemlog values
    (null, '003', '210', '003', 'text', '日志内容0', '日志备注0', '002', 'tom', '2016-07-04', 'tom', '20150725', 'jav', '20140125');
      select * from systemlog;

insert into systemcode values(null, '22258', '是', '描述0', 'my', '2013-01-25', 'tom', '20160727');
  insert into systemcode values(null, '2258', '否', '描述1', 'ljb', '2013-01-25', 'tom', '20160727');
    insert into systemcode values(null, '2215558', '是', '描述2', 'xjj', '2013-01-25', 'tom', '20160727');
      select * from systemcode;
