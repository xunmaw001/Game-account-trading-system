DROP DATABASE IF EXISTS jspjZZlC;

CREATE DATABASE jspjZZlC default character set utf8mb4 collate utf8mb4_general_ci;

USE jspjZZlC;

DROP TABLE IF EXISTS `maijia`;

CREATE TABLE `maijia` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`maijiazhanghao` varchar(200)  UNIQUE   COMMENT '卖家账号',
	`mima` varchar(200)    COMMENT '密码',
	`maijiaxingming` varchar(200)    COMMENT '卖家姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`chushengnianyue` date    COMMENT '出生年月',
	`qqzhanghao` int    COMMENT 'qq账号',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`dianziyouxiang` varchar(200)    COMMENT '电子邮箱',
	`shenfenzhenghao` varchar(200)    COMMENT '身份证号',
	`jiatingdizhi` varchar(200)    COMMENT '家庭地址',
	`renzhengzhaopian` varchar(200)    COMMENT '认证照片',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='卖家';

INSERT INTO maijia(maijiazhanghao,mima,maijiaxingming,xingbie,chushengnianyue,qqzhanghao,lianxidianhua,dianziyouxiang,shenfenzhenghao,jiatingdizhi,renzhengzhaopian,sfsh,shhf) VALUES('卖家1','123456','卖家姓名1','男',CURRENT_TIMESTAMP,1,'020-89819991','773890001@qq.com','440300199101010001','家庭地址1','maijia_renzhengzhaopian1','否','');
INSERT INTO maijia(maijiazhanghao,mima,maijiaxingming,xingbie,chushengnianyue,qqzhanghao,lianxidianhua,dianziyouxiang,shenfenzhenghao,jiatingdizhi,renzhengzhaopian,sfsh,shhf) VALUES('卖家2','123456','卖家姓名2','男',CURRENT_TIMESTAMP,2,'020-89819992','773890002@qq.com','440300199202020002','家庭地址2','maijia_renzhengzhaopian2','否','');
INSERT INTO maijia(maijiazhanghao,mima,maijiaxingming,xingbie,chushengnianyue,qqzhanghao,lianxidianhua,dianziyouxiang,shenfenzhenghao,jiatingdizhi,renzhengzhaopian,sfsh,shhf) VALUES('卖家3','123456','卖家姓名3','男',CURRENT_TIMESTAMP,3,'020-89819993','773890003@qq.com','440300199303030003','家庭地址3','maijia_renzhengzhaopian3','否','');


DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`yonghuming` varchar(200)  UNIQUE   COMMENT '用户名',
	`mima` varchar(200)    COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`nianling` int    COMMENT '年龄',
	`chushengnianyue` date    COMMENT '出生年月',
	`qqzhanghao` int    COMMENT 'qq账号',
	`dianhuahaoma` varchar(200)    COMMENT '电话号码',
	`youxianghaoma` varchar(200)    COMMENT '邮箱号码',
	`shenfenzhenghao` varchar(200)    COMMENT '身份证号',
	`jiatingdizhi` varchar(200)    COMMENT '家庭地址',
	`gerenzhaopian` varchar(200)    COMMENT '个人照片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(yonghuming,mima,xingming,nianling,chushengnianyue,qqzhanghao,dianhuahaoma,youxianghaoma,shenfenzhenghao,jiatingdizhi,gerenzhaopian) VALUES('用户1','123456','姓名1',1,CURRENT_TIMESTAMP,1,'020-89819991','773890001@qq.com','440300199101010001','家庭地址1','yonghu_gerenzhaopian1');
INSERT INTO yonghu(yonghuming,mima,xingming,nianling,chushengnianyue,qqzhanghao,dianhuahaoma,youxianghaoma,shenfenzhenghao,jiatingdizhi,gerenzhaopian) VALUES('用户2','123456','姓名2',2,CURRENT_TIMESTAMP,2,'020-89819992','773890002@qq.com','440300199202020002','家庭地址2','yonghu_gerenzhaopian2');
INSERT INTO yonghu(yonghuming,mima,xingming,nianling,chushengnianyue,qqzhanghao,dianhuahaoma,youxianghaoma,shenfenzhenghao,jiatingdizhi,gerenzhaopian) VALUES('用户3','123456','姓名3',3,CURRENT_TIMESTAMP,3,'020-89819993','773890003@qq.com','440300199303030003','家庭地址3','yonghu_gerenzhaopian3');


DROP TABLE IF EXISTS `youxileibie`;

CREATE TABLE `youxileibie` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`youxifenlei` varchar(200)    COMMENT '游戏分类',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏类别';

INSERT INTO youxileibie(youxifenlei) VALUES('游戏分类1');
INSERT INTO youxileibie(youxifenlei) VALUES('游戏分类2');
INSERT INTO youxileibie(youxifenlei) VALUES('游戏分类3');


DROP TABLE IF EXISTS `shouxufeiyong`;

CREATE TABLE `shouxufeiyong` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`jiagequjian` varchar(200)    COMMENT '价格区间',
	`shouxufei` int    COMMENT '手续费',
	`pingtaibaozhang` varchar(200)    COMMENT '平台保障',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='手续费用';

INSERT INTO shouxufeiyong(jiagequjian,shouxufei,pingtaibaozhang) VALUES('价格区间1',1,'平台包赔');
INSERT INTO shouxufeiyong(jiagequjian,shouxufei,pingtaibaozhang) VALUES('价格区间2',2,'平台包赔');
INSERT INTO shouxufeiyong(jiagequjian,shouxufei,pingtaibaozhang) VALUES('价格区间3',3,'平台包赔');


DROP TABLE IF EXISTS `dixiachengyuyongshi`;

CREATE TABLE `dixiachengyuyongshi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiaxingming` varchar(200)    COMMENT '卖家姓名',
	`shangpinbianhao` varchar(200)  UNIQUE   COMMENT '商品编号',
	`zhanghaobiaoti` varchar(200)    COMMENT '账号标题',
	`youxiqufu` varchar(200)    COMMENT '游戏区服',
	`youxikuaqu` varchar(200)    COMMENT '游戏跨区',
	`jiaosedengji` varchar(200)    COMMENT '角色等级',
	`jiaosezhiye` varchar(200)    COMMENT '角色职业',
	`jiaosexingbie` varchar(200)    COMMENT '角色性别',
	`fenghaojilu` varchar(200)    COMMENT '封号记录',
	`qqdengji` varchar(200)    COMMENT 'qq等级',
	`qqhaoyou` varchar(200)    COMMENT 'qq好友',
	`fengmiantupian` varchar(200)    COMMENT '封面图片',
	`zhanghaojiage` int    COMMENT '账号价格',
	`jiagequjian` varchar(200)    COMMENT '价格区间',
	`shouxufei` varchar(200)    COMMENT '手续费',
	`pingtaibaozhang` varchar(200)    COMMENT '平台保障',
	`zhanghaojianjie` longtext    COMMENT '账号简介',
	`faburiqi` date    COMMENT '发布日期',
	`zhanghaoxiangqing` longtext    COMMENT '账号详情',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地下城与勇士';

INSERT INTO dixiachengyuyongshi(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,youxiqufu,youxikuaqu,jiaosedengji,jiaosezhiye,jiaosexingbie,fenghaojilu,qqdengji,qqhaoyou,fengmiantupian,zhanghaojiage,jiagequjian,shouxufei,pingtaibaozhang,zhanghaojianjie,faburiqi,zhanghaoxiangqing,thumbsupnum,crazilynum) VALUES('卖家账号1','卖家姓名1','商品编号1','账号标题1','游戏区服1','游戏跨区1','角色等级1','男鬼剑','男','存在五天封号记录','qq等级1','无QQ好友','dixiachengyuyongshi_fengmiantupian1',1,'价格区间1','手续费1','平台保障1','账号简介1',CURRENT_TIMESTAMP,'账号详情1',1,1);
INSERT INTO dixiachengyuyongshi(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,youxiqufu,youxikuaqu,jiaosedengji,jiaosezhiye,jiaosexingbie,fenghaojilu,qqdengji,qqhaoyou,fengmiantupian,zhanghaojiage,jiagequjian,shouxufei,pingtaibaozhang,zhanghaojianjie,faburiqi,zhanghaoxiangqing,thumbsupnum,crazilynum) VALUES('卖家账号2','卖家姓名2','商品编号2','账号标题2','游戏区服2','游戏跨区2','角色等级2','男鬼剑','男','存在五天封号记录','qq等级2','无QQ好友','dixiachengyuyongshi_fengmiantupian2',2,'价格区间2','手续费2','平台保障2','账号简介2',CURRENT_TIMESTAMP,'账号详情2',2,2);
INSERT INTO dixiachengyuyongshi(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,youxiqufu,youxikuaqu,jiaosedengji,jiaosezhiye,jiaosexingbie,fenghaojilu,qqdengji,qqhaoyou,fengmiantupian,zhanghaojiage,jiagequjian,shouxufei,pingtaibaozhang,zhanghaojianjie,faburiqi,zhanghaoxiangqing,thumbsupnum,crazilynum) VALUES('卖家账号3','卖家姓名3','商品编号3','账号标题3','游戏区服3','游戏跨区3','角色等级3','男鬼剑','男','存在五天封号记录','qq等级3','无QQ好友','dixiachengyuyongshi_fengmiantupian3',3,'价格区间3','手续费3','平台保障3','账号简介3',CURRENT_TIMESTAMP,'账号详情3',3,3);


DROP TABLE IF EXISTS `dixiachengzhanghaogoumai`;

CREATE TABLE `dixiachengzhanghaogoumai` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiaxingming` varchar(200)    COMMENT '卖家姓名',
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`zhanghaobiaoti` varchar(200)    COMMENT '账号标题',
	`youxiqufu` varchar(200)    COMMENT '游戏区服',
	`youxikuaqu` varchar(200)    COMMENT '游戏跨区',
	`jiaosedengji` varchar(200)    COMMENT '角色等级',
	`jiaosezhiye` varchar(200)    COMMENT '角色职业',
	`zhanghaojiage` varchar(200)    COMMENT '账号价格',
	`shouxufei` varchar(200)    COMMENT '手续费',
	`pingtaibaozhang` varchar(200)    COMMENT '平台保障',
	`shifujine` varchar(200)    COMMENT '实付金额',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`goumairiqi` datetime    COMMENT '购买日期',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地下城账号购买';

INSERT INTO dixiachengzhanghaogoumai(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,youxiqufu,youxikuaqu,jiaosedengji,jiaosezhiye,zhanghaojiage,shouxufei,pingtaibaozhang,shifujine,yonghuming,xingming,goumairiqi,sfsh,shhf,ispay) VALUES('卖家账号1','卖家姓名1','商品编号1','账号标题1','游戏区服1','游戏跨区1','角色等级1','角色职业1','账号价格1','手续费1','平台保障1','实付金额1','用户名1','姓名1',CURRENT_TIMESTAMP,'否','','未支付');
INSERT INTO dixiachengzhanghaogoumai(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,youxiqufu,youxikuaqu,jiaosedengji,jiaosezhiye,zhanghaojiage,shouxufei,pingtaibaozhang,shifujine,yonghuming,xingming,goumairiqi,sfsh,shhf,ispay) VALUES('卖家账号2','卖家姓名2','商品编号2','账号标题2','游戏区服2','游戏跨区2','角色等级2','角色职业2','账号价格2','手续费2','平台保障2','实付金额2','用户名2','姓名2',CURRENT_TIMESTAMP,'否','','未支付');
INSERT INTO dixiachengzhanghaogoumai(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,youxiqufu,youxikuaqu,jiaosedengji,jiaosezhiye,zhanghaojiage,shouxufei,pingtaibaozhang,shifujine,yonghuming,xingming,goumairiqi,sfsh,shhf,ispay) VALUES('卖家账号3','卖家姓名3','商品编号3','账号标题3','游戏区服3','游戏跨区3','角色等级3','角色职业3','账号价格3','手续费3','平台保障3','实付金额3','用户名3','姓名3',CURRENT_TIMESTAMP,'否','','未支付');


DROP TABLE IF EXISTS `dixiachengzhanghaohuanbang`;

CREATE TABLE `dixiachengzhanghaohuanbang` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiaxingming` varchar(200)    COMMENT '卖家姓名',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`zhanghaobiaoti` varchar(200)    COMMENT '账号标题',
	`pingtaibaozhang` varchar(200)    COMMENT '平台保障',
	`shifujine` varchar(200)    COMMENT '实付金额',
	`youxiqufu` varchar(200)    COMMENT '游戏区服',
	`dengluzhanghao` int    COMMENT '登录账号',
	`denglumima` varchar(200)    COMMENT '登录密码',
	`bangdingshouji` varchar(200)    COMMENT '绑定手机',
	`huanbangshouji` varchar(200)    COMMENT '换绑手机',
	`huanbangjietu` varchar(200)    COMMENT '换绑截图',
	`huanbangshijian` datetime    COMMENT '换绑时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地下城账号换绑';

INSERT INTO dixiachengzhanghaohuanbang(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,pingtaibaozhang,shifujine,youxiqufu,dengluzhanghao,denglumima,bangdingshouji,huanbangshouji,huanbangjietu,huanbangshijian,sfsh,shhf) VALUES('卖家账号1','卖家姓名1','用户名1','姓名1','商品编号1','账号标题1','平台保障1','实付金额1','游戏区服1',1,'登录密码1','020-89819991','020-89819991','dixiachengzhanghaohuanbang_huanbangjietu1',CURRENT_TIMESTAMP,'否','');
INSERT INTO dixiachengzhanghaohuanbang(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,pingtaibaozhang,shifujine,youxiqufu,dengluzhanghao,denglumima,bangdingshouji,huanbangshouji,huanbangjietu,huanbangshijian,sfsh,shhf) VALUES('卖家账号2','卖家姓名2','用户名2','姓名2','商品编号2','账号标题2','平台保障2','实付金额2','游戏区服2',2,'登录密码2','020-89819992','020-89819992','dixiachengzhanghaohuanbang_huanbangjietu2',CURRENT_TIMESTAMP,'否','');
INSERT INTO dixiachengzhanghaohuanbang(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,pingtaibaozhang,shifujine,youxiqufu,dengluzhanghao,denglumima,bangdingshouji,huanbangshouji,huanbangjietu,huanbangshijian,sfsh,shhf) VALUES('卖家账号3','卖家姓名3','用户名3','姓名3','商品编号3','账号标题3','平台保障3','实付金额3','游戏区服3',3,'登录密码3','020-89819993','020-89819993','dixiachengzhanghaohuanbang_huanbangjietu3',CURRENT_TIMESTAMP,'否','');


DROP TABLE IF EXISTS `dixiachengzhanghaoshensu`;

CREATE TABLE `dixiachengzhanghaoshensu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiaxingming` varchar(200)    COMMENT '卖家姓名',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`zhanghaobiaoti` varchar(200)    COMMENT '账号标题',
	`pingtaibaozhang` varchar(200)    COMMENT '平台保障',
	`shifujine` varchar(200)    COMMENT '实付金额',
	`goumairiqi` varchar(200)    COMMENT '购买日期',
	`xiangqingjietu` varchar(200)    COMMENT '详情截图',
	`shensushuoming` longtext    COMMENT '申诉说明',
	`shensushijian` datetime    COMMENT '申诉时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地下城账号申诉';

INSERT INTO dixiachengzhanghaoshensu(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,pingtaibaozhang,shifujine,goumairiqi,xiangqingjietu,shensushuoming,shensushijian,sfsh,shhf) VALUES('卖家账号1','卖家姓名1','用户名1','姓名1','商品编号1','账号标题1','平台保障1','实付金额1','购买日期1','dixiachengzhanghaoshensu_xiangqingjietu1','申诉说明1',CURRENT_TIMESTAMP,'否','');
INSERT INTO dixiachengzhanghaoshensu(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,pingtaibaozhang,shifujine,goumairiqi,xiangqingjietu,shensushuoming,shensushijian,sfsh,shhf) VALUES('卖家账号2','卖家姓名2','用户名2','姓名2','商品编号2','账号标题2','平台保障2','实付金额2','购买日期2','dixiachengzhanghaoshensu_xiangqingjietu2','申诉说明2',CURRENT_TIMESTAMP,'否','');
INSERT INTO dixiachengzhanghaoshensu(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,pingtaibaozhang,shifujine,goumairiqi,xiangqingjietu,shensushuoming,shensushijian,sfsh,shhf) VALUES('卖家账号3','卖家姓名3','用户名3','姓名3','商品编号3','账号标题3','平台保障3','实付金额3','购买日期3','dixiachengzhanghaoshensu_xiangqingjietu3','申诉说明3',CURRENT_TIMESTAMP,'否','');


DROP TABLE IF EXISTS `dixiachengsixinliaotian`;

CREATE TABLE `dixiachengsixinliaotian` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiaxingming` varchar(200)    COMMENT '卖家姓名',
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`zhanghaobiaoti` varchar(200)    COMMENT '账号标题',
	`zhanghaojiage` varchar(200)    COMMENT '账号价格',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`sixinneirong` longtext    COMMENT '私信内容',
	`sixinshijian` datetime    COMMENT '私信时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地下城私信聊天';

INSERT INTO dixiachengsixinliaotian(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,zhanghaojiage,yonghuming,xingming,sixinneirong,sixinshijian) VALUES('卖家账号1','卖家姓名1','商品编号1','账号标题1','账号价格1','用户名1','姓名1','私信内容1',CURRENT_TIMESTAMP);
INSERT INTO dixiachengsixinliaotian(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,zhanghaojiage,yonghuming,xingming,sixinneirong,sixinshijian) VALUES('卖家账号2','卖家姓名2','商品编号2','账号标题2','账号价格2','用户名2','姓名2','私信内容2',CURRENT_TIMESTAMP);
INSERT INTO dixiachengsixinliaotian(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,zhanghaojiage,yonghuming,xingming,sixinneirong,sixinshijian) VALUES('卖家账号3','卖家姓名3','商品编号3','账号标题3','账号价格3','用户名3','姓名3','私信内容3',CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `dixiachengsixinhuifu`;

CREATE TABLE `dixiachengsixinhuifu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiahuifu` longtext    COMMENT '卖家回复',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`yonghuhuifu` longtext    COMMENT '用户回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地下城私信回复';

INSERT INTO dixiachengsixinhuifu(shangpinbianhao,maijiazhanghao,maijiahuifu,yonghuming,yonghuhuifu) VALUES('商品编号1','卖家账号1','卖家回复1','用户名1','用户回复1');
INSERT INTO dixiachengsixinhuifu(shangpinbianhao,maijiazhanghao,maijiahuifu,yonghuming,yonghuhuifu) VALUES('商品编号2','卖家账号2','卖家回复2','用户名2','用户回复2');
INSERT INTO dixiachengsixinhuifu(shangpinbianhao,maijiazhanghao,maijiahuifu,yonghuming,yonghuhuifu) VALUES('商品编号3','卖家账号3','卖家回复3','用户名3','用户回复3');


DROP TABLE IF EXISTS `yingxionglianmeng`;

CREATE TABLE `yingxionglianmeng` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiaxingming` varchar(200)    COMMENT '卖家姓名',
	`shangpinbianhao` varchar(200)  UNIQUE   COMMENT '商品编号',
	`zhanghaobiaoti` varchar(200)    COMMENT '账号标题',
	`wangluodaqu` varchar(200)    COMMENT '网络大区',
	`youxiqufu` varchar(200)    COMMENT '游戏区服',
	`qita` varchar(200)    COMMENT '其他',
	`xiandingpifu` varchar(200)    COMMENT '限定皮肤',
	`youxidengji` varchar(200)    COMMENT '游戏等级',
	`zuigaoduanwei` varchar(200)    COMMENT '最高段位',
	`dangqianduanwei` varchar(200)    COMMENT '当前段位',
	`yingxiongshuliang` int    COMMENT '英雄数量',
	`pifushuliang` int    COMMENT '皮肤数量',
	`qqdengji` varchar(200)    COMMENT 'qq等级',
	`qqhaoyou` varchar(200)    COMMENT 'qq好友',
	`fengmiantupian` varchar(200)    COMMENT '封面图片',
	`zhanghaojiage` int    COMMENT '账号价格',
	`jiagequjian` varchar(200)    COMMENT '价格区间',
	`shouxufei` varchar(200)    COMMENT '手续费',
	`pingtaibaozhang` varchar(200)    COMMENT '平台保障',
	`zhanghaojianjie` longtext    COMMENT '账号简介',
	`faburiqi` date    COMMENT '发布日期',
	`zhanghaoxiangqing` longtext    COMMENT '账号详情',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='英雄联盟';

INSERT INTO yingxionglianmeng(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,wangluodaqu,youxiqufu,qita,xiandingpifu,youxidengji,zuigaoduanwei,dangqianduanwei,yingxiongshuliang,pifushuliang,qqdengji,qqhaoyou,fengmiantupian,zhanghaojiage,jiagequjian,shouxufei,pingtaibaozhang,zhanghaojianjie,faburiqi,zhanghaoxiangqing,thumbsupnum,crazilynum) VALUES('卖家账号1','卖家姓名1','商品编号1','账号标题1','电信','艾欧尼亚','峡谷巅峰','全部','游戏等级1','黑铁I','黑铁I',1,1,'qq等级1','无QQ好友','yingxionglianmeng_fengmiantupian1',1,'价格区间1','手续费1','平台保障1','账号简介1',CURRENT_TIMESTAMP,'账号详情1',1,1);
INSERT INTO yingxionglianmeng(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,wangluodaqu,youxiqufu,qita,xiandingpifu,youxidengji,zuigaoduanwei,dangqianduanwei,yingxiongshuliang,pifushuliang,qqdengji,qqhaoyou,fengmiantupian,zhanghaojiage,jiagequjian,shouxufei,pingtaibaozhang,zhanghaojianjie,faburiqi,zhanghaoxiangqing,thumbsupnum,crazilynum) VALUES('卖家账号2','卖家姓名2','商品编号2','账号标题2','电信','艾欧尼亚','峡谷巅峰','全部','游戏等级2','黑铁I','黑铁I',2,2,'qq等级2','无QQ好友','yingxionglianmeng_fengmiantupian2',2,'价格区间2','手续费2','平台保障2','账号简介2',CURRENT_TIMESTAMP,'账号详情2',2,2);
INSERT INTO yingxionglianmeng(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,wangluodaqu,youxiqufu,qita,xiandingpifu,youxidengji,zuigaoduanwei,dangqianduanwei,yingxiongshuliang,pifushuliang,qqdengji,qqhaoyou,fengmiantupian,zhanghaojiage,jiagequjian,shouxufei,pingtaibaozhang,zhanghaojianjie,faburiqi,zhanghaoxiangqing,thumbsupnum,crazilynum) VALUES('卖家账号3','卖家姓名3','商品编号3','账号标题3','电信','艾欧尼亚','峡谷巅峰','全部','游戏等级3','黑铁I','黑铁I',3,3,'qq等级3','无QQ好友','yingxionglianmeng_fengmiantupian3',3,'价格区间3','手续费3','平台保障3','账号简介3',CURRENT_TIMESTAMP,'账号详情3',3,3);


DROP TABLE IF EXISTS `yingxionglianmenggoumai`;

CREATE TABLE `yingxionglianmenggoumai` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiaxingming` varchar(200)    COMMENT '卖家姓名',
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`zhanghaobiaoti` varchar(200)    COMMENT '账号标题',
	`wangluodaqu` varchar(200)    COMMENT '网络大区',
	`youxiqufu` varchar(200)    COMMENT '游戏区服',
	`youxidengji` varchar(200)    COMMENT '游戏等级',
	`dangqianduanwei` varchar(200)    COMMENT '当前段位',
	`yingxiongshuliang` varchar(200)    COMMENT '英雄数量',
	`pifushuliang` varchar(200)    COMMENT '皮肤数量',
	`zhanghaojiage` varchar(200)    COMMENT '账号价格',
	`shouxufei` varchar(200)    COMMENT '手续费',
	`pingtaibaozhang` varchar(200)    COMMENT '平台保障',
	`shifujine` varchar(200)    COMMENT '实付金额',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`goumairiqi` datetime    COMMENT '购买日期',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='英雄联盟购买';

INSERT INTO yingxionglianmenggoumai(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,wangluodaqu,youxiqufu,youxidengji,dangqianduanwei,yingxiongshuliang,pifushuliang,zhanghaojiage,shouxufei,pingtaibaozhang,shifujine,yonghuming,xingming,goumairiqi,sfsh,shhf,ispay) VALUES('卖家账号1','卖家姓名1','商品编号1','账号标题1','网络大区1','游戏区服1','游戏等级1','当前段位1','英雄数量1','皮肤数量1','账号价格1','手续费1','平台保障1','实付金额1','用户名1','姓名1',CURRENT_TIMESTAMP,'否','','未支付');
INSERT INTO yingxionglianmenggoumai(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,wangluodaqu,youxiqufu,youxidengji,dangqianduanwei,yingxiongshuliang,pifushuliang,zhanghaojiage,shouxufei,pingtaibaozhang,shifujine,yonghuming,xingming,goumairiqi,sfsh,shhf,ispay) VALUES('卖家账号2','卖家姓名2','商品编号2','账号标题2','网络大区2','游戏区服2','游戏等级2','当前段位2','英雄数量2','皮肤数量2','账号价格2','手续费2','平台保障2','实付金额2','用户名2','姓名2',CURRENT_TIMESTAMP,'否','','未支付');
INSERT INTO yingxionglianmenggoumai(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,wangluodaqu,youxiqufu,youxidengji,dangqianduanwei,yingxiongshuliang,pifushuliang,zhanghaojiage,shouxufei,pingtaibaozhang,shifujine,yonghuming,xingming,goumairiqi,sfsh,shhf,ispay) VALUES('卖家账号3','卖家姓名3','商品编号3','账号标题3','网络大区3','游戏区服3','游戏等级3','当前段位3','英雄数量3','皮肤数量3','账号价格3','手续费3','平台保障3','实付金额3','用户名3','姓名3',CURRENT_TIMESTAMP,'否','','未支付');


DROP TABLE IF EXISTS `yingxionglianmenghuanbang`;

CREATE TABLE `yingxionglianmenghuanbang` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiaxingming` varchar(200)    COMMENT '卖家姓名',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`zhanghaobiaoti` varchar(200)    COMMENT '账号标题',
	`pingtaibaozhang` varchar(200)    COMMENT '平台保障',
	`shifujine` varchar(200)    COMMENT '实付金额',
	`wangluodaqu` varchar(200)    COMMENT '网络大区',
	`youxiqufu` varchar(200)    COMMENT '游戏区服',
	`dengluzhanghao` int    COMMENT '登录账号',
	`denglumima` varchar(200)    COMMENT '登录密码',
	`bangdingshouji` varchar(200)    COMMENT '绑定手机',
	`huanbangshouji` varchar(200)    COMMENT '换绑手机',
	`huanbangjietu` varchar(200)    COMMENT '换绑截图',
	`huanbangshijian` datetime    COMMENT '换绑时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='英雄联盟换绑';

INSERT INTO yingxionglianmenghuanbang(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,pingtaibaozhang,shifujine,wangluodaqu,youxiqufu,dengluzhanghao,denglumima,bangdingshouji,huanbangshouji,huanbangjietu,huanbangshijian,sfsh,shhf) VALUES('卖家账号1','卖家姓名1','用户名1','姓名1','商品编号1','账号标题1','平台保障1','实付金额1','网络大区1','游戏区服1',1,'登录密码1','020-89819991','020-89819991','yingxionglianmenghuanbang_huanbangjietu1',CURRENT_TIMESTAMP,'否','');
INSERT INTO yingxionglianmenghuanbang(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,pingtaibaozhang,shifujine,wangluodaqu,youxiqufu,dengluzhanghao,denglumima,bangdingshouji,huanbangshouji,huanbangjietu,huanbangshijian,sfsh,shhf) VALUES('卖家账号2','卖家姓名2','用户名2','姓名2','商品编号2','账号标题2','平台保障2','实付金额2','网络大区2','游戏区服2',2,'登录密码2','020-89819992','020-89819992','yingxionglianmenghuanbang_huanbangjietu2',CURRENT_TIMESTAMP,'否','');
INSERT INTO yingxionglianmenghuanbang(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,pingtaibaozhang,shifujine,wangluodaqu,youxiqufu,dengluzhanghao,denglumima,bangdingshouji,huanbangshouji,huanbangjietu,huanbangshijian,sfsh,shhf) VALUES('卖家账号3','卖家姓名3','用户名3','姓名3','商品编号3','账号标题3','平台保障3','实付金额3','网络大区3','游戏区服3',3,'登录密码3','020-89819993','020-89819993','yingxionglianmenghuanbang_huanbangjietu3',CURRENT_TIMESTAMP,'否','');


DROP TABLE IF EXISTS `yingxionglianmengshensu`;

CREATE TABLE `yingxionglianmengshensu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiaxingming` varchar(200)    COMMENT '卖家姓名',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`zhanghaobiaoti` varchar(200)    COMMENT '账号标题',
	`pingtaibaozhang` varchar(200)    COMMENT '平台保障',
	`shifujine` varchar(200)    COMMENT '实付金额',
	`goumairiqi` varchar(200)    COMMENT '购买日期',
	`xiangqingjietu` varchar(200)    COMMENT '详情截图',
	`shensushuoming` longtext    COMMENT '申诉说明',
	`shensushijian` datetime    COMMENT '申诉时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='英雄联盟申诉';

INSERT INTO yingxionglianmengshensu(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,pingtaibaozhang,shifujine,goumairiqi,xiangqingjietu,shensushuoming,shensushijian,sfsh,shhf) VALUES('卖家账号1','卖家姓名1','用户名1','姓名1','商品编号1','账号标题1','平台保障1','实付金额1','购买日期1','yingxionglianmengshensu_xiangqingjietu1','申诉说明1',CURRENT_TIMESTAMP,'否','');
INSERT INTO yingxionglianmengshensu(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,pingtaibaozhang,shifujine,goumairiqi,xiangqingjietu,shensushuoming,shensushijian,sfsh,shhf) VALUES('卖家账号2','卖家姓名2','用户名2','姓名2','商品编号2','账号标题2','平台保障2','实付金额2','购买日期2','yingxionglianmengshensu_xiangqingjietu2','申诉说明2',CURRENT_TIMESTAMP,'否','');
INSERT INTO yingxionglianmengshensu(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,pingtaibaozhang,shifujine,goumairiqi,xiangqingjietu,shensushuoming,shensushijian,sfsh,shhf) VALUES('卖家账号3','卖家姓名3','用户名3','姓名3','商品编号3','账号标题3','平台保障3','实付金额3','购买日期3','yingxionglianmengshensu_xiangqingjietu3','申诉说明3',CURRENT_TIMESTAMP,'否','');


DROP TABLE IF EXISTS `yingxionglianmengsixin`;

CREATE TABLE `yingxionglianmengsixin` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiaxingming` varchar(200)    COMMENT '卖家姓名',
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`zhanghaobiaoti` varchar(200)    COMMENT '账号标题',
	`zhanghaojiage` varchar(200)    COMMENT '账号价格',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`sixinneirong` longtext    COMMENT '私信内容',
	`sixinshijian` datetime    COMMENT '私信时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='英雄联盟私信';

INSERT INTO yingxionglianmengsixin(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,zhanghaojiage,yonghuming,xingming,sixinneirong,sixinshijian) VALUES('卖家账号1','卖家姓名1','商品编号1','账号标题1','账号价格1','用户名1','姓名1','私信内容1',CURRENT_TIMESTAMP);
INSERT INTO yingxionglianmengsixin(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,zhanghaojiage,yonghuming,xingming,sixinneirong,sixinshijian) VALUES('卖家账号2','卖家姓名2','商品编号2','账号标题2','账号价格2','用户名2','姓名2','私信内容2',CURRENT_TIMESTAMP);
INSERT INTO yingxionglianmengsixin(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,zhanghaojiage,yonghuming,xingming,sixinneirong,sixinshijian) VALUES('卖家账号3','卖家姓名3','商品编号3','账号标题3','账号价格3','用户名3','姓名3','私信内容3',CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `yingxionglianmenghuifu`;

CREATE TABLE `yingxionglianmenghuifu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiahuifu` longtext    COMMENT '卖家回复',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`yonghuhuifu` longtext    COMMENT '用户回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='英雄联盟回复';

INSERT INTO yingxionglianmenghuifu(shangpinbianhao,maijiazhanghao,maijiahuifu,yonghuming,yonghuhuifu) VALUES('商品编号1','卖家账号1','卖家回复1','用户名1','用户回复1');
INSERT INTO yingxionglianmenghuifu(shangpinbianhao,maijiazhanghao,maijiahuifu,yonghuming,yonghuhuifu) VALUES('商品编号2','卖家账号2','卖家回复2','用户名2','用户回复2');
INSERT INTO yingxionglianmenghuifu(shangpinbianhao,maijiazhanghao,maijiahuifu,yonghuming,yonghuhuifu) VALUES('商品编号3','卖家账号3','卖家回复3','用户名3','用户回复3');


DROP TABLE IF EXISTS `youxizhanghao`;

CREATE TABLE `youxizhanghao` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiaxingming` varchar(200)    COMMENT '卖家姓名',
	`shangpinbianhao` varchar(200)  UNIQUE   COMMENT '商品编号',
	`zhanghaobiaoti` varchar(200)    COMMENT '账号标题',
	`youxichangshang` varchar(200)    COMMENT '游戏厂商',
	`youxifenlei` varchar(200)    COMMENT '游戏分类',
	`wangluodaqu` varchar(200)    COMMENT '网络大区',
	`youxiqufu` varchar(200)    COMMENT '游戏区服',
	`jiaosedengji` varchar(200)    COMMENT '角色等级',
	`dangqianduanwei` varchar(200)    COMMENT '当前段位',
	`fengmiantupian` varchar(200)    COMMENT '封面图片',
	`zhanghaojiage` int    COMMENT '账号价格',
	`jiagequjian` varchar(200)    COMMENT '价格区间',
	`shouxufei` varchar(200)    COMMENT '手续费',
	`pingtaibaozhang` varchar(200)    COMMENT '平台保障',
	`zhanghaojianjie` longtext    COMMENT '账号简介',
	`faburiqi` date    COMMENT '发布日期',
	`zhanghaoxiangqing` longtext    COMMENT '账号详情',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏账号';

INSERT INTO youxizhanghao(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,youxichangshang,youxifenlei,wangluodaqu,youxiqufu,jiaosedengji,dangqianduanwei,fengmiantupian,zhanghaojiage,jiagequjian,shouxufei,pingtaibaozhang,zhanghaojianjie,faburiqi,zhanghaoxiangqing,thumbsupnum,crazilynum) VALUES('卖家账号1','卖家姓名1','商品编号1','账号标题1','腾讯','游戏分类1','电信','游戏区服1','角色等级1','当前段位1','youxizhanghao_fengmiantupian1',1,'价格区间1','手续费1','平台保障1','账号简介1',CURRENT_TIMESTAMP,'账号详情1',1,1);
INSERT INTO youxizhanghao(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,youxichangshang,youxifenlei,wangluodaqu,youxiqufu,jiaosedengji,dangqianduanwei,fengmiantupian,zhanghaojiage,jiagequjian,shouxufei,pingtaibaozhang,zhanghaojianjie,faburiqi,zhanghaoxiangqing,thumbsupnum,crazilynum) VALUES('卖家账号2','卖家姓名2','商品编号2','账号标题2','腾讯','游戏分类2','电信','游戏区服2','角色等级2','当前段位2','youxizhanghao_fengmiantupian2',2,'价格区间2','手续费2','平台保障2','账号简介2',CURRENT_TIMESTAMP,'账号详情2',2,2);
INSERT INTO youxizhanghao(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,youxichangshang,youxifenlei,wangluodaqu,youxiqufu,jiaosedengji,dangqianduanwei,fengmiantupian,zhanghaojiage,jiagequjian,shouxufei,pingtaibaozhang,zhanghaojianjie,faburiqi,zhanghaoxiangqing,thumbsupnum,crazilynum) VALUES('卖家账号3','卖家姓名3','商品编号3','账号标题3','腾讯','游戏分类3','电信','游戏区服3','角色等级3','当前段位3','youxizhanghao_fengmiantupian3',3,'价格区间3','手续费3','平台保障3','账号简介3',CURRENT_TIMESTAMP,'账号详情3',3,3);


DROP TABLE IF EXISTS `zhanghaojiaoyijilu`;

CREATE TABLE `zhanghaojiaoyijilu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiaxingming` varchar(200)    COMMENT '卖家姓名',
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`zhanghaobiaoti` varchar(200)    COMMENT '账号标题',
	`youxifenlei` varchar(200)    COMMENT '游戏分类',
	`youxiqufu` varchar(200)    COMMENT '游戏区服',
	`jiaosedengji` varchar(200)    COMMENT '角色等级',
	`zhanghaojiage` varchar(200)    COMMENT '账号价格',
	`shouxufei` varchar(200)    COMMENT '手续费',
	`pingtaibaozhang` varchar(200)    COMMENT '平台保障',
	`shifujine` varchar(200)    COMMENT '实付金额',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`goumairiqi` datetime    COMMENT '购买日期',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账号交易记录';

INSERT INTO zhanghaojiaoyijilu(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,youxifenlei,youxiqufu,jiaosedengji,zhanghaojiage,shouxufei,pingtaibaozhang,shifujine,yonghuming,xingming,goumairiqi,sfsh,shhf,ispay) VALUES('卖家账号1','卖家姓名1','商品编号1','账号标题1','游戏分类1','游戏区服1','角色等级1','账号价格1','手续费1','平台保障1','实付金额1','用户名1','姓名1',CURRENT_TIMESTAMP,'否','','未支付');
INSERT INTO zhanghaojiaoyijilu(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,youxifenlei,youxiqufu,jiaosedengji,zhanghaojiage,shouxufei,pingtaibaozhang,shifujine,yonghuming,xingming,goumairiqi,sfsh,shhf,ispay) VALUES('卖家账号2','卖家姓名2','商品编号2','账号标题2','游戏分类2','游戏区服2','角色等级2','账号价格2','手续费2','平台保障2','实付金额2','用户名2','姓名2',CURRENT_TIMESTAMP,'否','','未支付');
INSERT INTO zhanghaojiaoyijilu(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,youxifenlei,youxiqufu,jiaosedengji,zhanghaojiage,shouxufei,pingtaibaozhang,shifujine,yonghuming,xingming,goumairiqi,sfsh,shhf,ispay) VALUES('卖家账号3','卖家姓名3','商品编号3','账号标题3','游戏分类3','游戏区服3','角色等级3','账号价格3','手续费3','平台保障3','实付金额3','用户名3','姓名3',CURRENT_TIMESTAMP,'否','','未支付');


DROP TABLE IF EXISTS `youxizhanghaohuanbang`;

CREATE TABLE `youxizhanghaohuanbang` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiaxingming` varchar(200)    COMMENT '卖家姓名',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`zhanghaobiaoti` varchar(200)    COMMENT '账号标题',
	`pingtaibaozhang` varchar(200)    COMMENT '平台保障',
	`shifujine` varchar(200)    COMMENT '实付金额',
	`youxifenlei` varchar(200)    COMMENT '游戏分类',
	`youxiqufu` varchar(200)    COMMENT '游戏区服',
	`dengluzhanghao` varchar(200)    COMMENT '登录账号',
	`denglumima` varchar(200)    COMMENT '登录密码',
	`bangdingshouji` varchar(200)    COMMENT '绑定手机',
	`huanbangshouji` varchar(200)    COMMENT '换绑手机',
	`huanbangjietu` varchar(200)    COMMENT '换绑截图',
	`huanbangshijian` datetime    COMMENT '换绑时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏账号换绑';

INSERT INTO youxizhanghaohuanbang(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,pingtaibaozhang,shifujine,youxifenlei,youxiqufu,dengluzhanghao,denglumima,bangdingshouji,huanbangshouji,huanbangjietu,huanbangshijian,sfsh,shhf) VALUES('卖家账号1','卖家姓名1','用户名1','姓名1','商品编号1','账号标题1','平台保障1','实付金额1','游戏分类1','游戏区服1','登录账号1','登录密码1','020-89819991','020-89819991','youxizhanghaohuanbang_huanbangjietu1',CURRENT_TIMESTAMP,'否','');
INSERT INTO youxizhanghaohuanbang(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,pingtaibaozhang,shifujine,youxifenlei,youxiqufu,dengluzhanghao,denglumima,bangdingshouji,huanbangshouji,huanbangjietu,huanbangshijian,sfsh,shhf) VALUES('卖家账号2','卖家姓名2','用户名2','姓名2','商品编号2','账号标题2','平台保障2','实付金额2','游戏分类2','游戏区服2','登录账号2','登录密码2','020-89819992','020-89819992','youxizhanghaohuanbang_huanbangjietu2',CURRENT_TIMESTAMP,'否','');
INSERT INTO youxizhanghaohuanbang(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,pingtaibaozhang,shifujine,youxifenlei,youxiqufu,dengluzhanghao,denglumima,bangdingshouji,huanbangshouji,huanbangjietu,huanbangshijian,sfsh,shhf) VALUES('卖家账号3','卖家姓名3','用户名3','姓名3','商品编号3','账号标题3','平台保障3','实付金额3','游戏分类3','游戏区服3','登录账号3','登录密码3','020-89819993','020-89819993','youxizhanghaohuanbang_huanbangjietu3',CURRENT_TIMESTAMP,'否','');


DROP TABLE IF EXISTS `youxizhanghaoshensu`;

CREATE TABLE `youxizhanghaoshensu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiaxingming` varchar(200)    COMMENT '卖家姓名',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`zhanghaobiaoti` varchar(200)    COMMENT '账号标题',
	`youxifenlei` varchar(200)    COMMENT '游戏分类',
	`pingtaibaozhang` varchar(200)    COMMENT '平台保障',
	`shifujine` varchar(200)    COMMENT '实付金额',
	`goumairiqi` varchar(200)    COMMENT '购买日期',
	`xiangqingjietu` varchar(200)    COMMENT '详情截图',
	`shensushuoming` longtext    COMMENT '申诉说明',
	`shensushijian` datetime    COMMENT '申诉时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏账号申诉';

INSERT INTO youxizhanghaoshensu(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,youxifenlei,pingtaibaozhang,shifujine,goumairiqi,xiangqingjietu,shensushuoming,shensushijian,sfsh,shhf) VALUES('卖家账号1','卖家姓名1','用户名1','姓名1','商品编号1','账号标题1','游戏分类1','平台保障1','实付金额1','购买日期1','youxizhanghaoshensu_xiangqingjietu1','申诉说明1',CURRENT_TIMESTAMP,'否','');
INSERT INTO youxizhanghaoshensu(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,youxifenlei,pingtaibaozhang,shifujine,goumairiqi,xiangqingjietu,shensushuoming,shensushijian,sfsh,shhf) VALUES('卖家账号2','卖家姓名2','用户名2','姓名2','商品编号2','账号标题2','游戏分类2','平台保障2','实付金额2','购买日期2','youxizhanghaoshensu_xiangqingjietu2','申诉说明2',CURRENT_TIMESTAMP,'否','');
INSERT INTO youxizhanghaoshensu(maijiazhanghao,maijiaxingming,yonghuming,xingming,shangpinbianhao,zhanghaobiaoti,youxifenlei,pingtaibaozhang,shifujine,goumairiqi,xiangqingjietu,shensushuoming,shensushijian,sfsh,shhf) VALUES('卖家账号3','卖家姓名3','用户名3','姓名3','商品编号3','账号标题3','游戏分类3','平台保障3','实付金额3','购买日期3','youxizhanghaoshensu_xiangqingjietu3','申诉说明3',CURRENT_TIMESTAMP,'否','');


DROP TABLE IF EXISTS `sixinliaotianjilu`;

CREATE TABLE `sixinliaotianjilu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiaxingming` varchar(200)    COMMENT '卖家姓名',
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`zhanghaobiaoti` varchar(200)    COMMENT '账号标题',
	`youxifenlei` varchar(200)    COMMENT '游戏分类',
	`zhanghaojiage` varchar(200)    COMMENT '账号价格',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`sixinneirong` longtext    COMMENT '私信内容',
	`sixinshijian` datetime    COMMENT '私信时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='私信聊天记录';

INSERT INTO sixinliaotianjilu(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,youxifenlei,zhanghaojiage,yonghuming,xingming,sixinneirong,sixinshijian) VALUES('卖家账号1','卖家姓名1','商品编号1','账号标题1','游戏分类1','账号价格1','用户名1','姓名1','私信内容1',CURRENT_TIMESTAMP);
INSERT INTO sixinliaotianjilu(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,youxifenlei,zhanghaojiage,yonghuming,xingming,sixinneirong,sixinshijian) VALUES('卖家账号2','卖家姓名2','商品编号2','账号标题2','游戏分类2','账号价格2','用户名2','姓名2','私信内容2',CURRENT_TIMESTAMP);
INSERT INTO sixinliaotianjilu(maijiazhanghao,maijiaxingming,shangpinbianhao,zhanghaobiaoti,youxifenlei,zhanghaojiage,yonghuming,xingming,sixinneirong,sixinshijian) VALUES('卖家账号3','卖家姓名3','商品编号3','账号标题3','游戏分类3','账号价格3','用户名3','姓名3','私信内容3',CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `sixinliaotianhuifu`;

CREATE TABLE `sixinliaotianhuifu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`shangpinbianhao` varchar(200)    COMMENT '商品编号',
	`youxifenlei` varchar(200)    COMMENT '游戏分类',
	`maijiazhanghao` varchar(200)    COMMENT '卖家账号',
	`maijiahuifu` longtext    COMMENT '卖家回复',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`yonghuliuyan` longtext    COMMENT '用户留言',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='私信聊天回复';

INSERT INTO sixinliaotianhuifu(shangpinbianhao,youxifenlei,maijiazhanghao,maijiahuifu,yonghuming,yonghuliuyan) VALUES('商品编号1','游戏分类1','卖家账号1','卖家回复1','用户名1','用户留言1');
INSERT INTO sixinliaotianhuifu(shangpinbianhao,youxifenlei,maijiazhanghao,maijiahuifu,yonghuming,yonghuliuyan) VALUES('商品编号2','游戏分类2','卖家账号2','卖家回复2','用户名2','用户留言2');
INSERT INTO sixinliaotianhuifu(shangpinbianhao,youxifenlei,maijiazhanghao,maijiahuifu,yonghuming,yonghuliuyan) VALUES('商品编号3','游戏分类3','卖家账号3','卖家回复3','用户名3','用户留言3');


DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`adminid` bigint    COMMENT '管理员id',
	`ask` longtext    COMMENT '提问',
	`reply` longtext    COMMENT '回复',
	`isreply` int    COMMENT '是否回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(1,1,'提问1','回复1',1);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(2,2,'提问2','回复2',2);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(3,3,'提问3','回复3',3);


DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`title` varchar(200)    COMMENT '帖子标题',
	`content` longtext NOT NULL   COMMENT '帖子内容',
	`parentid` bigint    COMMENT '父节点id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`username` varchar(200)    COMMENT '用户名',
	`isdone` varchar(200)    COMMENT '是否关闭[关闭/开放]',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='论坛表';

INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题1','帖子内容1',1,1,'用户名1','是否关闭[关闭/开放]1');
INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题2','帖子内容2',2,2,'用户名2','是否关闭[关闭/开放]2');
INSERT INTO forum(title,content,parentid,userid,username,isdone) VALUES('帖子标题3','帖子内容3',3,3,'用户名3','是否关闭[关闭/开放]3');


DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(1,1,'表名1','收藏名称1','storeup_picture1');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(2,2,'表名2','收藏名称2','storeup_picture2');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(3,3,'表名3','收藏名称3','storeup_picture3');


DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

INSERT INTO news(title,picture,content) VALUES('标题1','news_picture1','内容1');
INSERT INTO news(title,picture,content) VALUES('标题2','news_picture2','内容2');
INSERT INTO news(title,picture,content) VALUES('标题3','news_picture3','内容3');


DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '留言人id',
	`username` varchar(200)    COMMENT '留言人用户名',
	`content` longtext NOT NULL   COMMENT '留言内容',
	`reply` longtext    COMMENT '回复内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板';

INSERT INTO messages(userid,username,content,reply) VALUES(1,'留言人用户名1','留言内容1','回复内容1');
INSERT INTO messages(userid,username,content,reply) VALUES(2,'留言人用户名2','留言内容2','回复内容2');
INSERT INTO messages(userid,username,content,reply) VALUES(3,'留言人用户名3','留言内容3','回复内容3');


DROP TABLE IF EXISTS `discussdixiachengyuyongshi`;

CREATE TABLE `discussdixiachengyuyongshi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地下城与勇士评论表';

INSERT INTO discussdixiachengyuyongshi(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussdixiachengyuyongshi(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussdixiachengyuyongshi(refid,content,userid) VALUES(3,'评论内容3',3);


DROP TABLE IF EXISTS `discussyingxionglianmeng`;

CREATE TABLE `discussyingxionglianmeng` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='英雄联盟评论表';

INSERT INTO discussyingxionglianmeng(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussyingxionglianmeng(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussyingxionglianmeng(refid,content,userid) VALUES(3,'评论内容3',3);


DROP TABLE IF EXISTS `discussyouxizhanghao`;

CREATE TABLE `discussyouxizhanghao` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏账号评论表';

INSERT INTO discussyouxizhanghao(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussyouxizhanghao(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussyouxizhanghao(refid,content,userid) VALUES(3,'评论内容3',3);



DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name) values(1,'picture1');
insert into config(id,name) values(2,'picture2');
insert into config(id,name) values(3,'picture3');
insert into config(id,name) values(4,'picture4');
insert into config(id,name) values(5,'picture5');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

