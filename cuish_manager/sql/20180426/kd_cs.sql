/*
SQLyog v10.2 
MySQL - 5.7.17-log : Database - kd_cs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kd_cs` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `kd_cs`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` varchar(32) NOT NULL COMMENT '地址id',
  `status` int(11) DEFAULT NULL COMMENT '地址状态 0未知 1有效 2无效',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(1) DEFAULT NULL COMMENT '性别',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `area_id1` varchar(32) DEFAULT NULL COMMENT '省',
  `area_id2` varchar(32) DEFAULT NULL COMMENT '市',
  `area_id3` varchar(32) DEFAULT NULL COMMENT '区县',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件id',
  `adr_cat` varchar(50) DEFAULT NULL COMMENT '地址类别：单位地址、家庭地址、对账单地址、户籍地址、其他地址',
  `remark` text COMMENT '备注',
  `check_app` int(11) DEFAULT '0',
  `mail_app` int(11) DEFAULT '0' COMMENT '是否申请信函 0否 1是',
  `vis_app` int(11) DEFAULT '0' COMMENT '是否申请外访 0否 1是',
  `relation` varchar(50) DEFAULT NULL COMMENT '关系',
  `vis_count` int(11) DEFAULT '0' COMMENT '外访次数',
  `mail_count` int(11) DEFAULT '0' COMMENT '信函次数',
  `isnew` int(11) DEFAULT NULL COMMENT '是否新地址 0否 1是',
  `create_emp_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `source` char(1) DEFAULT '0' COMMENT '来源 0贴档 1新增',
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件地址表';

/*Data for the table `address` */

/*Table structure for table `address_bak` */

DROP TABLE IF EXISTS `address_bak`;

CREATE TABLE `address_bak` (
  `id` varchar(32) NOT NULL COMMENT '地址id',
  `status` int(11) DEFAULT NULL COMMENT '地址状态 0未知 1有效 2无效',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(1) DEFAULT NULL COMMENT '性别',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `area_id1` varchar(32) DEFAULT NULL COMMENT '省',
  `area_id2` varchar(32) DEFAULT NULL COMMENT '市',
  `area_id3` varchar(32) DEFAULT NULL COMMENT '区县',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件id',
  `adr_cat` varchar(50) DEFAULT NULL COMMENT '地址类别：单位地址、家庭地址、对账单地址、户籍地址、其他地址',
  `remark` text COMMENT '备注',
  `check_app` int(11) DEFAULT '0',
  `mail_app` int(11) DEFAULT '0' COMMENT '是否申请信函 0否 1是',
  `vis_app` int(11) DEFAULT '0' COMMENT '是否申请外访 0否 1是',
  `relation` varchar(50) DEFAULT NULL COMMENT '关系',
  `vis_count` int(11) DEFAULT '0' COMMENT '外访次数',
  `mail_count` int(11) DEFAULT '0' COMMENT '信函次数',
  `isnew` int(11) DEFAULT NULL COMMENT '是否新地址 0否 1是',
  `create_emp_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `source` char(1) DEFAULT '0' COMMENT '来源 0贴档 1新增',
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件地址表';

/*Data for the table `address_bak` */

/*Table structure for table `address_copy1` */

DROP TABLE IF EXISTS `address_copy1`;

CREATE TABLE `address_copy1` (
  `id` varchar(32) NOT NULL COMMENT '地址id',
  `status` int(11) DEFAULT NULL COMMENT '地址状态 0未知 1有效 2无效',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(1) DEFAULT NULL COMMENT '性别',
  `age` int(3) DEFAULT NULL COMMENT '年龄',
  `area_id1` varchar(32) DEFAULT NULL COMMENT '省',
  `area_id2` varchar(32) DEFAULT NULL COMMENT '市',
  `area_id3` varchar(32) DEFAULT NULL COMMENT '区县',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件id',
  `adr_cat` varchar(50) DEFAULT NULL COMMENT '地址类别：单位地址、家庭地址、对账单地址、户籍地址、其他地址',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `check_app` int(11) DEFAULT NULL,
  `mail_app` int(11) DEFAULT '0' COMMENT '是否申请信函 0否 1是',
  `vis_app` int(11) DEFAULT '0' COMMENT '是否申请外访 0否 1是',
  `relation` varchar(50) DEFAULT NULL COMMENT '关系',
  `vis_count` int(11) DEFAULT '0' COMMENT '外访次数',
  `mail_count` int(11) DEFAULT '0' COMMENT '信函次数',
  `isnew` int(11) DEFAULT NULL COMMENT '是否新地址 0否 1是',
  `create_emp_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件地址表';

/*Data for the table `address_copy1` */

/*Table structure for table `approve_record` */

DROP TABLE IF EXISTS `approve_record`;

CREATE TABLE `approve_record` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件id',
  `apply_reason` varchar(2000) DEFAULT NULL COMMENT '申请原因',
  `approve_state` int(11) DEFAULT NULL COMMENT '状态 0待审批 1审批通过 2审批不通过',
  `approve_opinion` varchar(500) DEFAULT NULL COMMENT '审批意见',
  `remark` text COMMENT '备注 申请原因',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `apply_emp_id` varchar(32) DEFAULT NULL COMMENT '申请人',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `stay_reason` varchar(2000) DEFAULT NULL COMMENT '留案原因',
  `stay_time` datetime DEFAULT NULL COMMENT '留案时间',
  `stay_period` datetime DEFAULT NULL COMMENT '留案周期',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件审批记录表';

/*Data for the table `approve_record` */

/*Table structure for table `area` */

DROP TABLE IF EXISTS `area`;

CREATE TABLE `area` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `name` varchar(64) DEFAULT NULL COMMENT '区域名称',
  `org_id` varchar(32) DEFAULT NULL COMMENT '绑定组织ID',
  `status` tinyint(2) DEFAULT NULL COMMENT '系统状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `org_id` (`org_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域表';

/*Data for the table `area` */

/*Table structure for table `area_copy` */

DROP TABLE IF EXISTS `area_copy`;

CREATE TABLE `area_copy` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `name` varchar(64) DEFAULT NULL COMMENT '区域名称',
  `org_id` varchar(32) DEFAULT NULL COMMENT '绑定组织ID',
  `status` tinyint(2) DEFAULT NULL COMMENT '系统状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域表';

/*Data for the table `area_copy` */

/*Table structure for table `attachment` */

DROP TABLE IF EXISTS `attachment`;

CREATE TABLE `attachment` (
  `id` varchar(32) NOT NULL COMMENT '附件id',
  `name` varchar(100) DEFAULT NULL COMMENT '附件名称',
  `size` bigint(20) DEFAULT NULL COMMENT '附件大小',
  `path` varchar(100) DEFAULT NULL COMMENT '附件路径',
  `isJunk` char(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL COMMENT '附件上传时间',
  `type` varchar(100) NOT NULL COMMENT '附件类型 案件：bankCase、信函：mes、外访：vis',
  `fk_id` varchar(32) DEFAULT NULL COMMENT '外访记录表ID、案件表ID',
  `file_type` varchar(50) DEFAULT NULL COMMENT '文件类型 音频 视频 图片 pdf word',
  `file_format` varchar(255) NOT NULL COMMENT '文件格式',
  `create_emp_name` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_emp_name` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `fk_id` (`fk_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件表';

/*Data for the table `attachment` */

/*Table structure for table `bank_case` */

DROP TABLE IF EXISTS `bank_case`;

CREATE TABLE `bank_case` (
  `cas_id` bigint(20) NOT NULL,
  `cas_code` varchar(100) DEFAULT NULL,
  `cas_group` varchar(50) DEFAULT NULL,
  `cas_state` int(11) DEFAULT NULL,
  `cas_typ_hid` bigint(20) DEFAULT NULL,
  `cas_out_state` int(11) DEFAULT NULL,
  `cas_cbat_id` bigint(20) DEFAULT NULL,
  `cas_m` decimal(18,2) DEFAULT NULL,
  `cas_ptp_m` decimal(18,2) DEFAULT NULL,
  `cas_cp_m` decimal(18,2) DEFAULT NULL,
  `cas_paid_m` decimal(18,2) DEFAULT NULL,
  `cas_date` datetime DEFAULT NULL,
  `cas_typ_bid` bigint(20) DEFAULT NULL,
  `cas_name` varchar(50) DEFAULT NULL,
  `cas_sex` varchar(1) DEFAULT NULL,
  `cas_ca_cd` varchar(50) DEFAULT NULL,
  `cas_num` varchar(50) DEFAULT NULL,
  `cas_area_1` varchar(50) DEFAULT NULL,
  `cas_area_2` varchar(50) DEFAULT NULL,
  `cas_area_3` varchar(50) DEFAULT NULL,
  `cas_post_code` varchar(50) DEFAULT NULL,
  `cas_se_no` bigint(20) DEFAULT NULL,
  `cas_ins_user` varchar(25) DEFAULT NULL,
  `cas_ins_time` datetime DEFAULT NULL,
  `cas_alt_user` varchar(25) DEFAULT NULL,
  `cas_alt_time` datetime DEFAULT NULL,
  `cas_tremark` text,
  `cas_warn` text,
  `cas_acc_num` varchar(100) DEFAULT NULL,
  `cas_card_cat` varchar(200) DEFAULT NULL,
  `cas_principal` varchar(200) DEFAULT NULL,
  `cas_min_paid` varchar(200) DEFAULT NULL,
  `cas_cred_lim` varchar(200) DEFAULT NULL,
  `cas_delay_lv` varchar(200) DEFAULT NULL,
  `cas_gua_m` varchar(200) DEFAULT NULL,
  `cas_m_cat` varchar(200) DEFAULT NULL,
  `cas_pre_rec` longtext,
  `cas_exc_lim` varchar(200) DEFAULT NULL,
  `cas_unit_name` varchar(200) DEFAULT NULL,
  `cas_m_p` double DEFAULT NULL,
  `cas_name_1` varchar(50) DEFAULT NULL,
  `cas_name_2` varchar(50) DEFAULT NULL,
  `cas_name_3` varchar(50) DEFAULT NULL,
  `cas_num_1` varchar(200) DEFAULT NULL,
  `cas_num_2` varchar(200) DEFAULT NULL,
  `cas_num_3` varchar(200) DEFAULT NULL,
  `cas_re_1` varchar(200) DEFAULT NULL,
  `cas_re_2` varchar(200) DEFAULT NULL,
  `cas_re_3` varchar(200) DEFAULT NULL,
  `cas_con_com1` varchar(200) DEFAULT NULL,
  `cas_pr_time` datetime DEFAULT NULL,
  `cas_remark` longtext,
  `cas_con_com2` varchar(200) DEFAULT NULL,
  `cas_con_com3` varchar(200) DEFAULT NULL,
  `cas_app_1` int(11) DEFAULT NULL,
  `cas_app_2` int(11) DEFAULT NULL,
  `cas_app_3` int(11) DEFAULT NULL,
  `cas_app_4` int(11) DEFAULT NULL,
  `cas_app_5` int(11) DEFAULT NULL,
  `cas_app_6` int(11) DEFAULT NULL,
  `cas_app_7` int(11) DEFAULT NULL,
  `cas_app_8` int(11) DEFAULT NULL,
  `cas_app_9` int(11) DEFAULT NULL,
  `cas_app_10` int(11) DEFAULT NULL,
  `cas_app_11` int(11) DEFAULT NULL,
  `cas_app_12` int(11) DEFAULT NULL,
  `cas_app_13` int(11) DEFAULT NULL,
  `cas_app_14` int(11) DEFAULT NULL,
  `cas_remark2` longtext,
  `cas_remark3` longtext,
  `cas_remark4` longtext,
  `cas_ptp_c` int(11) DEFAULT NULL,
  `cas_remark5` longtext,
  `cas_card_bank` varchar(200) DEFAULT NULL,
  `cas_tip_time` datetime DEFAULT NULL,
  `cas_hom_pho` varchar(50) DEFAULT NULL,
  `cas_work_pho` varchar(50) DEFAULT NULL,
  `cas_mob_pho` varchar(50) DEFAULT NULL,
  `cas_hom_add` longtext,
  `cas_work_add` longtext,
  `cas_mail_add` longtext,
  `cas_reg_add` longtext,
  `cas_con_pho1` varchar(50) DEFAULT NULL,
  `cas_con_mob1` varchar(50) DEFAULT NULL,
  `cas_con_add1` longtext,
  `cas_con_pho2` varchar(50) DEFAULT NULL,
  `cas_con_mob2` varchar(50) DEFAULT NULL,
  `cas_con_add2` longtext,
  `cas_loan_type` varchar(200) DEFAULT NULL,
  `cas_coll_type` varchar(200) DEFAULT NULL,
  `cas_int` varchar(200) DEFAULT NULL,
  `cas_overdue_paid` varchar(200) DEFAULT NULL,
  `cas_cre_paid` varchar(200) DEFAULT NULL,
  `cas_paid_lim` varchar(200) DEFAULT NULL,
  `cas_paid_date` varchar(200) DEFAULT NULL,
  `cas_con_date` varchar(200) DEFAULT NULL,
  `cas_rai_date` varchar(200) DEFAULT NULL,
  `cas_stop_date` varchar(200) DEFAULT NULL,
  `cas_cre_date` varchar(200) DEFAULT NULL,
  `cas_remark6` longtext,
  `cas_note` longtext,
  `cas_con_pho3` varchar(50) DEFAULT NULL,
  `cas_con_mob3` varchar(50) DEFAULT NULL,
  `cas_con_add3` longtext,
  `cas_con_pho4` varchar(50) DEFAULT NULL,
  `cas_con_mob4` varchar(50) DEFAULT NULL,
  `cas_con_add4` longtext,
  `cas_name_4` varchar(50) DEFAULT NULL,
  `cas_num_4` varchar(200) DEFAULT NULL,
  `cas_re_4` varchar(200) DEFAULT NULL,
  `cas_con_com4` varchar(200) DEFAULT NULL,
  `cas_file_no` varchar(100) DEFAULT NULL,
  `cas_remark7` longtext,
  `cas_remark8` longtext,
  `cas_email` varchar(100) DEFAULT NULL,
  `cas_is_oth` int(11) DEFAULT NULL,
  `cas_is_newpr` int(11) DEFAULT NULL,
  `cas_is_newpaid` int(11) DEFAULT NULL,
  `cas_is_paidover` int(11) DEFAULT NULL,
  `cas_is_updint` int(11) DEFAULT NULL,
  `cas_rmb` varchar(100) DEFAULT NULL,
  `cas_gb` varchar(100) DEFAULT NULL,
  `cas_my` varchar(100) DEFAULT NULL,
  `cas_pos` varchar(200) DEFAULT NULL,
  `cas_part` varchar(200) DEFAULT NULL,
  `cas_backdate_p` datetime DEFAULT NULL,
  `cas_backdate` datetime DEFAULT NULL,
  `cas_back_p` double DEFAULT NULL,
  `cas_con_wpho1` varchar(50) DEFAULT NULL,
  `cas_con_wpho2` varchar(50) DEFAULT NULL,
  `cas_con_wpho3` varchar(50) DEFAULT NULL,
  `cas_con_wpho4` varchar(50) DEFAULT NULL,
  `cas_name_u` varchar(50) DEFAULT NULL,
  `cas_num_u` varchar(200) DEFAULT NULL,
  `cas_re_u` varchar(200) DEFAULT NULL,
  `cas_con_u_com` varchar(200) DEFAULT NULL,
  `cas_con_u_wpho` varchar(50) DEFAULT NULL,
  `cas_con_u_pho` varchar(50) DEFAULT NULL,
  `cas_con_u_mob` varchar(50) DEFAULT NULL,
  `cas_con_u_add` longtext,
  `cas_back_m` decimal(18,2) DEFAULT NULL,
  `cas_name_5` varchar(50) DEFAULT NULL,
  `cas_num_5` varchar(200) DEFAULT NULL,
  `cas_re_5` varchar(200) DEFAULT NULL,
  `cas_con_com_5` varchar(200) DEFAULT NULL,
  `cas_con_wpho_5` varchar(50) DEFAULT NULL,
  `cas_con_pho_5` varchar(50) DEFAULT NULL,
  `cas_con_mob_5` varchar(50) DEFAULT NULL,
  `cas_con_add_5` longtext,
  `cas_loan_date` varchar(200) DEFAULT NULL,
  `cas_app_no` varchar(100) DEFAULT NULL,
  `cas_paid_count` varchar(100) DEFAULT NULL,
  `cas_so_pcno` varchar(100) DEFAULT NULL,
  `cas_so_no` varchar(100) DEFAULT NULL,
  `cas_overdue_date` varchar(200) DEFAULT NULL,
  `cas_pback_p` double DEFAULT NULL,
  `cas_wpost_code` varchar(50) DEFAULT NULL,
  `cas_deadline` varchar(200) DEFAULT NULL,
  `cas_is_host` varchar(50) DEFAULT NULL,
  `cas_bill_date` varchar(200) DEFAULT NULL,
  `cas_last_paid` varchar(200) DEFAULT NULL,
  `cas_count` varchar(100) DEFAULT NULL,
  `cas_left_pri` varchar(100) DEFAULT NULL,
  `cas_assign_ids` longtext,
  `cas_assign_names` longtext,
  `cas_last_assign_time` datetime DEFAULT NULL,
  `cas_overdue_days` varchar(200) DEFAULT NULL,
  `cas_bir` varchar(50) DEFAULT NULL,
  `cas_mpost_code` varchar(50) DEFAULT NULL,
  `cas_perm_crline` varchar(50) DEFAULT NULL,
  `cas_alt_hold` varchar(50) DEFAULT NULL,
  `cas_cycle` varchar(50) DEFAULT NULL,
  `cas_noout` varchar(50) DEFAULT NULL,
  `cas_field_type` varchar(50) DEFAULT NULL,
  `cas_cl_area_id` bigint(20) DEFAULT NULL,
  `cas_pr_count` int(11) DEFAULT NULL,
  `cas_overdue_m` varchar(200) DEFAULT NULL,
  `cas_overdue_num` int(11) DEFAULT NULL,
  `cas_overdue_once` int(11) DEFAULT NULL,
  `cas_loan_rate` varchar(200) DEFAULT NULL,
  `cas_month_paid` varchar(200) DEFAULT NULL,
  `cas_last_vis` datetime DEFAULT NULL,
  `cas_fst_cl_paid_date` datetime DEFAULT NULL,
  `cas_last_cl_paid_date` datetime DEFAULT NULL,
  `cas_color` int(11) DEFAULT NULL,
  `cas_cc_id` bigint(20) DEFAULT NULL,
  `cas_is_newass` int(11) DEFAULT NULL,
  `cas_reg_post_code` varchar(50) DEFAULT NULL,
  `cas_last_m` decimal(18,2) DEFAULT NULL,
  `cas_last_int_date` datetime DEFAULT NULL,
  `cas_loan_end_date` varchar(200) DEFAULT NULL,
  `cas_over_limit` varchar(200) DEFAULT NULL,
  `cas_num_type` varchar(50) DEFAULT NULL,
  `cas_last_end_date` varchar(100) DEFAULT NULL,
  `cas_assign_times` longtext,
  `cas_cl_count` varchar(100) DEFAULT NULL,
  `his_remark` longtext COMMENT '历史备注',
  PRIMARY KEY (`cas_id`),
  KEY `IX_bank_case_1` (`cas_se_no`),
  KEY `IX_case_code` (`cas_code`),
  KEY `IX_cnum` (`cas_num`),
  KEY `IX_cacd` (`cas_ca_cd`),
  KEY `IX_bank` (`cas_typ_bid`),
  KEY `IX_cl_area` (`cas_cl_area_id`),
  KEY `IX_bat` (`cas_cbat_id`),
  KEY `IX_file_no` (`cas_file_no`),
  KEY `IX_acc_date` (`cas_acc_num`,`cas_date`),
  KEY `IX_cacd_date` (`cas_ca_cd`,`cas_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `bank_case` */

/*Table structure for table `call_record` */

DROP TABLE IF EXISTS `call_record`;

CREATE TABLE `call_record` (
  `id` varchar(40) NOT NULL DEFAULT '',
  `uniqueId` varchar(64) DEFAULT NULL COMMENT '电话唯一标识',
  `customerNumber` varchar(20) DEFAULT NULL COMMENT '客户号码',
  `customerProvince` varchar(20) DEFAULT NULL COMMENT '省',
  `customerCity` varchar(20) DEFAULT NULL COMMENT '市',
  `numberTrunk` varchar(20) DEFAULT NULL COMMENT '中继号码',
  `queueName` varchar(20) DEFAULT NULL COMMENT '队列号',
  `cno` varchar(20) DEFAULT NULL COMMENT '坐席工号',
  `clientNumber` varchar(20) DEFAULT NULL COMMENT '坐席电话',
  `callStatus` varchar(20) DEFAULT NULL COMMENT '外呼结果',
  `startTime` datetime DEFAULT NULL COMMENT '电话进入系统时间',
  `bridgeTime` varchar(20) DEFAULT NULL COMMENT '客户接听时间',
  `bridgeDuration` varchar(20) DEFAULT NULL COMMENT '通话时长',
  `cost` decimal(18,4) DEFAULT NULL COMMENT '费用(元)',
  `totalDuration` varchar(20) DEFAULT NULL COMMENT '总时长',
  `recordFile` varchar(1000) DEFAULT NULL COMMENT '录音文件的最终地址及录音文件名',
  `inCaseLib` varchar(20) DEFAULT NULL COMMENT '是否在案例库',
  `score` varchar(20) DEFAULT NULL COMMENT '录音质检打分，0为未打分',
  `callType` varchar(20) DEFAULT NULL COMMENT '呼叫类型',
  `comment` text COMMENT '备注',
  `taskName` varchar(100) DEFAULT NULL COMMENT '外呼任务名称',
  `endReason` varchar(100) DEFAULT NULL COMMENT '结束原因',
  `userField` varchar(100) DEFAULT NULL COMMENT '用户自定义参数',
  `sipCause` varchar(20) DEFAULT NULL COMMENT '呼叫结果',
  `mark` char(2) DEFAULT NULL COMMENT '标识  1：呼入主叫记忆  2：外呼主叫记忆',
  `answerTime` datetime DEFAULT NULL COMMENT '系统接听时间/网上回呼客户接听时间',
  `hotline` varchar(20) DEFAULT NULL COMMENT '热线号码',
  `ivrName` varchar(20) DEFAULT NULL COMMENT 'IVR名称',
  PRIMARY KEY (`id`),
  KEY `idx_cno` (`cno`) USING BTREE,
  KEY `idx_startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `call_record` */

/*Table structure for table `call_record_copy` */

DROP TABLE IF EXISTS `call_record_copy`;

CREATE TABLE `call_record_copy` (
  `id` varchar(40) NOT NULL DEFAULT '',
  `uniqueId` varchar(64) DEFAULT NULL COMMENT '电话唯一标识',
  `customerNumber` varchar(50) DEFAULT NULL COMMENT '客户号码',
  `customerProvince` varchar(50) DEFAULT NULL COMMENT '省',
  `customerCity` varchar(50) DEFAULT NULL COMMENT '市',
  `numberTrunk` varchar(50) DEFAULT NULL COMMENT '中继号码',
  `queueName` varchar(50) DEFAULT NULL COMMENT '队列号',
  `cno` varchar(50) DEFAULT NULL COMMENT '坐席工号',
  `clientNumber` varchar(50) DEFAULT NULL COMMENT '坐席电话',
  `callStatus` varchar(50) DEFAULT NULL COMMENT '外呼结果',
  `startTime` datetime DEFAULT NULL COMMENT '电话进入系统时间',
  `bridgeTime` varchar(50) DEFAULT NULL COMMENT '客户接听时间',
  `bridgeDuration` varchar(50) DEFAULT NULL COMMENT '通话时长',
  `cost` decimal(18,4) DEFAULT NULL COMMENT '费用(元)',
  `totalDuration` varchar(50) DEFAULT NULL COMMENT '总时长',
  `recordFile` varchar(1000) DEFAULT NULL COMMENT '录音文件的最终地址及录音文件名',
  `inCaseLib` varchar(50) DEFAULT NULL COMMENT '是否在案例库',
  `score` varchar(50) DEFAULT NULL COMMENT '录音质检打分，0为未打分',
  `callType` varchar(50) DEFAULT NULL COMMENT '呼叫类型',
  `comment` text COMMENT '备注',
  `taskName` varchar(100) DEFAULT NULL COMMENT '外呼任务名称',
  `endReason` varchar(100) DEFAULT NULL COMMENT '结束原因',
  `userField` varchar(100) DEFAULT NULL COMMENT '用户自定义参数',
  `sipCause` varchar(50) DEFAULT NULL COMMENT '呼叫结果',
  `mark` char(2) DEFAULT NULL COMMENT '标识  1：呼入主叫记忆  2：外呼主叫记忆',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `call_record_copy` */

/*Table structure for table `call_record_in` */

DROP TABLE IF EXISTS `call_record_in`;

CREATE TABLE `call_record_in` (
  `id` varchar(40) NOT NULL DEFAULT '',
  `uniqueId` varchar(100) DEFAULT NULL COMMENT '电话唯一标识',
  `customerNumber` varchar(50) DEFAULT NULL COMMENT '客户号码',
  `customerProvince` varchar(50) DEFAULT NULL COMMENT '省',
  `customerCity` varchar(50) DEFAULT NULL COMMENT '市',
  `numberTrunk` varchar(50) DEFAULT NULL COMMENT '中继号码',
  `queueName` varchar(50) DEFAULT NULL COMMENT '队列号',
  `cno` varchar(50) DEFAULT NULL COMMENT '坐席工号',
  `clientNumber` varchar(50) DEFAULT NULL COMMENT '坐席电话',
  `callStatus` varchar(50) DEFAULT NULL COMMENT '外呼结果',
  `startTime` datetime DEFAULT NULL COMMENT '电话进入系统时间',
  `bridgeTime` varchar(50) DEFAULT NULL COMMENT '客户接听时间',
  `bridgeDuration` varchar(50) DEFAULT NULL COMMENT '通话时长',
  `cost` decimal(18,4) DEFAULT NULL COMMENT '费用(元)',
  `totalDuration` varchar(50) DEFAULT NULL COMMENT '总时长',
  `recordFile` varchar(1000) DEFAULT NULL COMMENT '录音文件的最终地址及录音文件名',
  `inCaseLib` varchar(50) DEFAULT NULL COMMENT '是否在案例库',
  `score` varchar(50) DEFAULT NULL COMMENT '录音质检打分，0为未打分',
  `callType` varchar(50) DEFAULT NULL COMMENT '呼叫类型',
  `comment` text COMMENT '备注',
  `taskName` varchar(100) DEFAULT NULL COMMENT '外呼任务名称',
  `endReason` varchar(100) DEFAULT NULL COMMENT '结束原因',
  `userField` varchar(100) DEFAULT NULL COMMENT '用户自定义参数',
  `sipCause` varchar(50) DEFAULT NULL COMMENT '呼叫结果',
  `mark` varchar(50) DEFAULT NULL COMMENT '标识  1：呼入主叫记忆  2：外呼主叫记忆',
  `answerTime` datetime DEFAULT NULL COMMENT '系统接听时间/网上回呼客户接听时间',
  `hotline` varchar(50) DEFAULT NULL COMMENT '热线号码',
  `ivrName` varchar(50) DEFAULT NULL COMMENT 'IVR名称',
  PRIMARY KEY (`id`),
  KEY `idx_cno` (`cno`) USING BTREE,
  KEY `idx_startTime` (`startTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `call_record_in` */

/*Table structure for table `case_apply` */

DROP TABLE IF EXISTS `case_apply`;

CREATE TABLE `case_apply` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `state` int(11) DEFAULT NULL COMMENT '申请状态 -2待审批 -1审批失败 0审批通过 1已完成 2信函退回 3驳回',
  `apply_type` int(11) DEFAULT NULL COMMENT '申请类型 对应字典表 1信函 2外访 3投诉预警 4户籍查询 5法院协催 6社保查询 7公安协催 8争议咨询 9移动查询 10主管协催 11客服咨询 12电信查询 13短信申请 14退件查询 15快递查询',
  `apply_content` text COMMENT '申请内容',
  `ch_cat_1` varchar(20) DEFAULT NULL COMMENT '对应地址表 地址类别',
  `ch_cat_2` varchar(20) DEFAULT NULL COMMENT '信函模板 demo、CGI律师函、CGI追偿通知书、浦发卡中心信函模板',
  `address_id` varchar(32) DEFAULT NULL COMMENT '地址表id',
  `msg_state` int(11) DEFAULT NULL COMMENT '信函状态 1或空正常 -1退信 ',
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件ID',
  `hurry_content` text COMMENT '协催内容',
  `apply_user` varchar(32) DEFAULT NULL COMMENT '申请人id',
  `apply_user_name` varchar(32) DEFAULT NULL COMMENT '申请人名称',
  `sur_user` varchar(32) DEFAULT NULL COMMENT '协催人id',
  `sur_user_name` varchar(32) DEFAULT NULL COMMENT '协催人名称',
  `app_time` datetime DEFAULT NULL COMMENT '申请时间',
  `sur_time` datetime DEFAULT NULL COMMENT '协催时间',
  `remark` text COMMENT '备注',
  `contact_user` varchar(20) DEFAULT NULL COMMENT '联系人  注：广东-陈锦龙',
  `address` varchar(2000) DEFAULT NULL COMMENT '地址',
  `ch_count` int(11) DEFAULT NULL,
  `approval_opinion` varchar(500) DEFAULT NULL COMMENT '审批意见',
  `mail_time` datetime DEFAULT NULL COMMENT '邮寄时间',
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`) USING BTREE,
  KEY `address_id` (`address_id`) USING BTREE,
  KEY `idx_apply_user` (`apply_user`) USING BTREE,
  KEY `idx_app_time` (`app_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件协催申请';

/*Data for the table `case_apply` */

/*Table structure for table `case_apply_copy` */

DROP TABLE IF EXISTS `case_apply_copy`;

CREATE TABLE `case_apply_copy` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `state` int(11) DEFAULT NULL COMMENT '申请状态 -2待审批 -1审批失败 0审批通过 1已完成 2信函退回 3驳回',
  `apply_type` int(11) DEFAULT NULL COMMENT '申请类型 对应字典表 1信函 2外访 3投诉预警 4户籍查询 5法院协催 6社保查询 7公安协催 8争议咨询 9移动查询 10主管协催 11客服咨询 12电信查询 13短信申请 14退件查询',
  `apply_content` text COMMENT '申请内容',
  `ch_cat_1` varchar(20) DEFAULT NULL COMMENT '对应地址表 地址类别',
  `ch_cat_2` varchar(20) DEFAULT NULL COMMENT '信函模板 demo、CGI律师函、CGI追偿通知书、浦发卡中心信函模板',
  `address_id` varchar(32) DEFAULT NULL COMMENT '地址表id',
  `msg_state` int(11) DEFAULT NULL COMMENT '信函状态 1或空正常 -1退信 ',
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件ID',
  `hurry_content` text COMMENT '协催内容',
  `apply_user` varchar(32) DEFAULT NULL COMMENT '申请人id',
  `apply_user_name` varchar(32) DEFAULT NULL COMMENT '申请人名称',
  `sur_user` varchar(32) DEFAULT NULL COMMENT '协催人id',
  `sur_user_name` varchar(32) DEFAULT NULL COMMENT '协催人名称',
  `app_time` datetime DEFAULT NULL COMMENT '申请时间',
  `sur_time` datetime DEFAULT NULL COMMENT '协催时间',
  `remark` text COMMENT '备注',
  `contact_user` varchar(20) DEFAULT NULL COMMENT '联系人  注：广东-陈锦龙',
  `address` varchar(2000) DEFAULT NULL COMMENT '地址',
  `ch_count` int(11) DEFAULT NULL,
  `approval_opinion` varchar(500) DEFAULT NULL COMMENT '审批意见',
  `mail_time` datetime DEFAULT NULL COMMENT '邮寄时间',
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`) USING BTREE,
  KEY `address_id` (`address_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件协催申请';

/*Data for the table `case_apply_copy` */

/*Table structure for table `case_apply_copy1` */

DROP TABLE IF EXISTS `case_apply_copy1`;

CREATE TABLE `case_apply_copy1` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `state` int(11) DEFAULT NULL COMMENT '申请状态 -2待审批 -1审批失败 0审批通过 1已完成 2信函退回 3驳回',
  `apply_type` int(11) DEFAULT NULL COMMENT '申请类型 对应字典表 1信函 2外访 3投诉预警 4户籍查询 5法院协催 6社保查询 7公安协催 8争议咨询 9移动查询 10主管协催 11客服咨询 12电信查询 13短信申请 14退件查询',
  `apply_content` text COMMENT '申请内容',
  `ch_cat_1` varchar(20) DEFAULT NULL COMMENT '对应地址表 地址类别',
  `ch_cat_2` varchar(20) DEFAULT NULL COMMENT '信函模板 demo、CGI律师函、CGI追偿通知书、浦发卡中心信函模板',
  `address_id` varchar(32) DEFAULT NULL COMMENT '地址表id',
  `msg_state` int(11) DEFAULT NULL COMMENT '信函状态 1或空正常 -1退信 ',
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件ID',
  `hurry_content` text COMMENT '协催内容',
  `apply_user` varchar(32) DEFAULT NULL COMMENT '申请人id',
  `apply_user_name` varchar(32) DEFAULT NULL COMMENT '申请人名称',
  `sur_user` varchar(32) DEFAULT NULL COMMENT '协催人id',
  `sur_user_name` varchar(32) DEFAULT NULL COMMENT '协催人名称',
  `app_time` datetime DEFAULT NULL COMMENT '申请时间',
  `sur_time` datetime DEFAULT NULL COMMENT '协催时间',
  `remark` text COMMENT '备注',
  `contact_user` varchar(20) DEFAULT NULL COMMENT '联系人  注：广东-陈锦龙',
  `address` varchar(2000) DEFAULT NULL COMMENT '地址',
  `ch_count` int(11) DEFAULT NULL,
  `approval_opinion` varchar(500) DEFAULT NULL COMMENT '审批意见',
  `mail_time` datetime DEFAULT NULL COMMENT '邮寄时间',
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`) USING BTREE,
  KEY `address_id` (`address_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件协催申请';

/*Data for the table `case_apply_copy1` */

/*Table structure for table `case_assign` */

DROP TABLE IF EXISTS `case_assign`;

CREATE TABLE `case_assign` (
  `id` varchar(32) NOT NULL,
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件表id',
  `case_assigned_id` varchar(32) DEFAULT NULL COMMENT '被分配人ID',
  `case_assigned_name` varchar(32) DEFAULT NULL COMMENT '被分配人名称',
  `case_assign_id` varchar(32) DEFAULT NULL COMMENT '分配人ID',
  `case_assign_name` varchar(32) DEFAULT NULL COMMENT '分配人名称',
  `case_assign_time` datetime DEFAULT NULL COMMENT '分配时间',
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='案件分配表';

/*Data for the table `case_assign` */

/*Table structure for table `case_batch` */

DROP TABLE IF EXISTS `case_batch`;

CREATE TABLE `case_batch` (
  `id` varchar(32) NOT NULL,
  `batch_code` varchar(50) DEFAULT NULL COMMENT '批次号',
  `state` int(11) DEFAULT '1' COMMENT '批次导入状态 0未导入 1已导入未退案 2已导入已退案',
  `version` int(11) DEFAULT '0' COMMENT '版本号',
  `entrust_product_id` varchar(32) DEFAULT NULL COMMENT '产品ID',
  `entrust_id` varchar(32) DEFAULT NULL COMMENT '委托方id',
  `total_money` decimal(18,4) DEFAULT NULL COMMENT '总金额',
  `total_number` int(255) DEFAULT NULL COMMENT '总户数',
  `type_id` varchar(32) DEFAULT NULL COMMENT '案件类型',
  `begin_date` date DEFAULT NULL COMMENT '委案开始日期',
  `area_id` bigint(20) DEFAULT NULL COMMENT '催收地区id',
  `end_date` date DEFAULT NULL COMMENT '委案截止日期',
  `actual_end_date` datetime DEFAULT NULL COMMENT '实际退案日期',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `modify_emp_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `remark` text COMMENT '备注',
  `target` decimal(18,4) DEFAULT NULL COMMENT '回款率',
  `achieve` decimal(18,4) DEFAULT NULL COMMENT '业绩率',
  `collection_id` varchar(32) DEFAULT NULL COMMENT '催收方',
  `batch_xls` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `batch_log` text COMMENT '批次日志',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `bath_tips` varchar(255) DEFAULT NULL COMMENT '分配提示',
  `status` int(11) DEFAULT '1' COMMENT '软删除',
  `wdc_desc` varchar(255) DEFAULT NULL COMMENT '撤案说明',
  `is_upload` int(2) DEFAULT NULL COMMENT '是否上传 0未上传 1已上传',
  `template_type` varchar(32) DEFAULT '1' COMMENT '模板类型 对应字典表id 1:P2P 2:银行 3:车贷',
  `handle` varchar(32) DEFAULT NULL COMMENT '手次',
  PRIMARY KEY (`id`),
  KEY `entrust_id` (`entrust_id`) USING BTREE,
  KEY `batch` (`batch_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='批次表';

/*Data for the table `case_batch` */

/*Table structure for table `case_batch_copy` */

DROP TABLE IF EXISTS `case_batch_copy`;

CREATE TABLE `case_batch_copy` (
  `id` varchar(32) NOT NULL,
  `batch_code` varchar(50) DEFAULT NULL COMMENT '批次号',
  `state` int(11) DEFAULT '0' COMMENT '批次导入状态 0未导入 1已导入未退案 2已导入已退案',
  `version` int(11) DEFAULT '0' COMMENT '版本号',
  `entrust_product_id` varchar(32) DEFAULT NULL COMMENT '产品ID',
  `entrust_id` varchar(32) DEFAULT NULL COMMENT '委托方id',
  `total_money` decimal(18,4) DEFAULT NULL COMMENT '总金额',
  `total_number` int(255) DEFAULT NULL COMMENT '总户数',
  `type_id` varchar(32) DEFAULT NULL COMMENT '案件类型',
  `begin_date` date DEFAULT NULL COMMENT '委案开始日期',
  `area_id` bigint(20) DEFAULT NULL COMMENT '催收地区id',
  `end_date` date DEFAULT NULL COMMENT '委案截止日期',
  `actual_end_date` datetime DEFAULT NULL COMMENT '实际退案日期',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `modify_emp_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `remark` text COMMENT '备注',
  `target` decimal(18,4) DEFAULT NULL COMMENT '回款率',
  `achieve` decimal(18,4) DEFAULT NULL COMMENT '业绩率',
  `collection_id` varchar(32) DEFAULT NULL COMMENT '催收方',
  `batch_xls` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `batch_log` text COMMENT '批次日志',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `bath_tips` varchar(255) DEFAULT NULL COMMENT '分配提示',
  `status` int(11) DEFAULT '1' COMMENT '软删除',
  `wdc_desc` varchar(255) DEFAULT NULL COMMENT '撤案说明',
  `is_upload` int(2) DEFAULT NULL COMMENT '是否上传 0未上传 1已上传',
  `template_type` varchar(32) DEFAULT '1' COMMENT '模板类型 对应字典表id 1:P2P 2:银行 3:车贷',
  `handle` varchar(32) DEFAULT NULL COMMENT '手次',
  PRIMARY KEY (`id`),
  UNIQUE KEY `batch` (`batch_code`),
  KEY `entrust_id` (`entrust_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='批次表';

/*Data for the table `case_batch_copy` */

/*Table structure for table `case_car_loan` */

DROP TABLE IF EXISTS `case_car_loan`;

CREATE TABLE `case_car_loan` (
  `id` varchar(32) NOT NULL,
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件表id',
  `dealer` varchar(100) DEFAULT NULL COMMENT '经销商',
  `price` decimal(18,2) DEFAULT NULL COMMENT '价格',
  `lice_no` varchar(100) DEFAULT NULL COMMENT '车牌号',
  `brand` varchar(100) DEFAULT NULL COMMENT '品牌',
  `number` varchar(100) DEFAULT NULL COMMENT '型号',
  `vin_no` varchar(100) DEFAULT NULL COMMENT '车架号',
  `engine_no` varchar(100) DEFAULT NULL COMMENT '发动机号',
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车贷表';

/*Data for the table `case_car_loan` */

/*Table structure for table `case_collection` */

DROP TABLE IF EXISTS `case_collection`;

CREATE TABLE `case_collection` (
  `id` varchar(32) NOT NULL,
  `case_ids` text COMMENT '案件ID 多个用逗号分隔',
  `batch_id` varchar(32) DEFAULT NULL,
  `card_num` varchar(50) DEFAULT NULL COMMENT '身份证号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='共债案件表';

/*Data for the table `case_collection` */

/*Table structure for table `case_history` */

DROP TABLE IF EXISTS `case_history`;

CREATE TABLE `case_history` (
  `id` varchar(32) NOT NULL,
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件id',
  `case_code` varchar(100) DEFAULT NULL COMMENT '案件序列号',
  `state` int(10) DEFAULT NULL COMMENT '案件状态 0正常(恢复) 1暂停 2关闭 3退案 4结清 5撤回',
  `collec_state_id` varchar(4) DEFAULT NULL COMMENT '催收状态 对应字典表 caseState',
  `visit_state_id` int(11) DEFAULT NULL COMMENT '外访状态 0待审核 1被撤销 2待排程 3已排程 4已完成-无效',
  `batch_id` varchar(32) DEFAULT NULL COMMENT '批次ID',
  `case_date` datetime DEFAULT NULL COMMENT '委案日期',
  `case_backdate` datetime DEFAULT NULL COMMENT '预计退案日',
  `end_date` datetime DEFAULT NULL COMMENT '退案日期',
  `version` int(10) DEFAULT '0',
  `cus_no` varchar(100) DEFAULT NULL COMMENT '客户编号',
  `userId` varchar(100) DEFAULT NULL COMMENT '用户ID(客户号)',
  `account_no` varchar(100) DEFAULT NULL COMMENT '账号',
  `case_app_no` varchar(100) DEFAULT NULL COMMENT '申请单号',
  `case_file_no` varchar(100) DEFAULT NULL COMMENT '档案号',
  `case_name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `case_sex` varchar(1) DEFAULT NULL COMMENT '性别',
  `case_is_marriage` varchar(10) DEFAULT NULL COMMENT '婚否',
  `case_birthday` datetime DEFAULT NULL COMMENT '生日',
  `case_age` int(3) DEFAULT NULL COMMENT '年龄',
  `province_id` varchar(32) DEFAULT NULL COMMENT '省ID',
  `province_name` varchar(32) DEFAULT NULL COMMENT '省名称',
  `city_id` varchar(32) DEFAULT NULL COMMENT '市ID',
  `city_name` varchar(32) DEFAULT NULL COMMENT '市名称',
  `district_id` varchar(32) DEFAULT NULL COMMENT '区ID',
  `district_name` varchar(32) DEFAULT NULL COMMENT '区名称',
  `area_id` varchar(32) DEFAULT NULL COMMENT '催收区域ID',
  `area_name` varchar(50) DEFAULT NULL COMMENT '催收区域名称',
  `bank_account` varchar(50) DEFAULT NULL COMMENT '开户行',
  `case_house_id` varchar(10) DEFAULT NULL COMMENT '案人房产类型',
  `case_card` varchar(50) DEFAULT NULL COMMENT '卡号',
  `case_num` varchar(50) DEFAULT NULL COMMENT '证件号',
  `case_num_id` varchar(32) DEFAULT NULL COMMENT '证件类型ID',
  `case_position` varchar(32) DEFAULT NULL COMMENT '案人职位',
  `case_department` varchar(50) DEFAULT NULL COMMENT '案人部门',
  `case_position_level` varchar(20) DEFAULT NULL COMMENT '职位级别',
  `account_name` varchar(50) DEFAULT NULL COMMENT '账号名',
  `lend_institution` varchar(50) DEFAULT NULL COMMENT '放款机构',
  `old_collec_record` text COMMENT '原催收记录',
  `principal` decimal(18,4) DEFAULT NULL COMMENT '本金',
  `surplus_principal` decimal(18,4) DEFAULT NULL COMMENT '剩余本金',
  `breach` decimal(18,4) DEFAULT NULL COMMENT '违约金',
  `case_money` decimal(18,4) DEFAULT NULL COMMENT '委案金额',
  `case_last_money` decimal(18,4) DEFAULT NULL COMMENT '最新欠款',
  `case_last_date` datetime DEFAULT NULL COMMENT '最新欠款时间',
  `account_money` decimal(18,4) DEFAULT NULL COMMENT '账户金额',
  `loan_contract` varchar(50) DEFAULT NULL COMMENT '贷款合同号',
  `loan_money` decimal(18,4) DEFAULT NULL COMMENT '贷款金额',
  `loan_rate` decimal(18,4) DEFAULT NULL COMMENT '贷款利率',
  `loan_startdate` datetime DEFAULT NULL COMMENT '贷款日期',
  `loan_enddate` datetime DEFAULT NULL COMMENT '贷款截止日期',
  `contract_money` decimal(18,4) DEFAULT NULL COMMENT '签约金额',
  `overdue_money` decimal(18,4) DEFAULT NULL COMMENT '逾期金额',
  `overdue_principal` decimal(18,4) DEFAULT NULL COMMENT '逾期本金',
  `overdue_expense` decimal(18,4) DEFAULT NULL COMMENT '逾期管理费',
  `overdue_age` varchar(20) DEFAULT NULL COMMENT '逾期账龄',
  `overdue_penalty` decimal(18,4) DEFAULT NULL COMMENT '逾期罚息',
  `overdue_interest` decimal(18,4) DEFAULT NULL COMMENT '逾期利息',
  `overdue_days` int(10) DEFAULT NULL COMMENT '逾期天数',
  `overdue_date` datetime DEFAULT NULL COMMENT '逾期开始日期',
  `overdue_periods` int(10) DEFAULT NULL COMMENT '逾期期数',
  `once_overdue_periods` int(10) DEFAULT NULL COMMENT '曾逾期期数',
  `overdue_loan` decimal(18,4) DEFAULT NULL COMMENT '逾期借款',
  `overdue_principal_balance` decimal(18,4) DEFAULT NULL COMMENT '逾期本金余额',
  `overdue_compound` decimal(18,4) DEFAULT NULL COMMENT '逾期复利',
  `social_security_no` varchar(50) DEFAULT NULL COMMENT '社保电脑号',
  `social_card_no` varchar(50) DEFAULT NULL COMMENT '社保卡号',
  `agent_rate` decimal(18,4) DEFAULT NULL COMMENT '代理费率 -->业绩率',
  `entrust_rate` decimal(18,4) DEFAULT NULL COMMENT '委托费率',
  `credit_id` varchar(100) DEFAULT NULL COMMENT '信贷分类',
  `stay_periods` int(10) DEFAULT NULL COMMENT '贷还期数',
  `month_repayment` decimal(18,4) DEFAULT NULL COMMENT '每月还款金额',
  `last_repayment` decimal(18,4) DEFAULT NULL COMMENT '最后还款金额',
  `stay_principal` decimal(18,4) DEFAULT NULL COMMENT '待还本金',
  `stay_expense` decimal(18,4) DEFAULT NULL COMMENT '待还管理费',
  `stay_interest` decimal(18,4) DEFAULT NULL COMMENT '待还利息',
  `bill` int(4) DEFAULT NULL COMMENT '账单日',
  `repayment_periods` int(10) DEFAULT NULL COMMENT '已还期数',
  `commodity` varchar(50) DEFAULT NULL COMMENT '商品',
  `company_name` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `company_phone` varchar(100) DEFAULT NULL COMMENT '单位号码',
  `company_address` varchar(200) DEFAULT NULL COMMENT '单位地址',
  `company_zipcode` varchar(200) DEFAULT NULL COMMENT '单位邮编',
  `mobile1` varchar(100) DEFAULT NULL COMMENT '本人手机1',
  `mobile2` varchar(100) DEFAULT NULL COMMENT '本人手机2',
  `family_phone` varchar(100) DEFAULT NULL COMMENT '家庭号码',
  `family_address` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  `family_zipcode` varchar(200) DEFAULT NULL COMMENT '家庭邮编',
  `domicile` varchar(200) DEFAULT NULL COMMENT '户籍地址',
  `mark_id` varchar(50) DEFAULT NULL COMMENT '标ID',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `is_verify` varchar(1) DEFAULT NULL COMMENT '是否核销 0未核销 1已核销',
  `verify_date` datetime DEFAULT NULL COMMENT '核销日期',
  `repayment_type` varchar(20) DEFAULT NULL COMMENT '还款方式',
  `protocol_no` varchar(50) DEFAULT NULL COMMENT '协议编号',
  `loan_area` varchar(100) DEFAULT NULL COMMENT '放款所属地',
  `actual_loan_money` decimal(18,4) DEFAULT NULL COMMENT '实际-放款金额',
  `interest_money` decimal(18,4) DEFAULT NULL COMMENT '欠息余额',
  `penalty_reference` varchar(50) DEFAULT NULL COMMENT '罚息参照',
  `compound_interest_reference` varchar(50) DEFAULT NULL COMMENT '复息参照',
  `quota_no` varchar(50) DEFAULT NULL COMMENT '根额度编号',
  `quota_manager1` varchar(50) DEFAULT NULL COMMENT '根额度主办人客户经理',
  `quota_manager2` varchar(50) DEFAULT NULL COMMENT '根额度协办人客户经理',
  `manager_phone` varchar(50) DEFAULT NULL COMMENT '客户经理电话',
  `collateral_no` varchar(50) DEFAULT NULL COMMENT '押品编号',
  `collateral_id` varchar(50) DEFAULT NULL COMMENT '押品类型ID',
  `collateral_name` varchar(50) DEFAULT NULL COMMENT '押品名称',
  `collateral_address` varchar(200) DEFAULT NULL COMMENT '押品地址',
  `collateral_evalua` varchar(50) DEFAULT NULL COMMENT '押品评估值',
  `repay_date` int(4) DEFAULT NULL COMMENT '还款日',
  `total_construc` varchar(50) DEFAULT NULL COMMENT '建筑面积合计',
  `regione` varchar(50) DEFAULT NULL COMMENT '大区名称',
  `sub_center` varchar(50) DEFAULT NULL COMMENT '分中心名称',
  `sales_dep` varchar(50) DEFAULT NULL COMMENT '营业部名称',
  `consult_fee` decimal(18,4) DEFAULT NULL COMMENT '咨询费',
  `audit_fee` decimal(18,4) DEFAULT NULL COMMENT '审核费',
  `service_fee` decimal(18,4) DEFAULT NULL COMMENT '服务费',
  `adviser_fee` decimal(18,4) DEFAULT NULL COMMENT '顾问费',
  `fee_total` decimal(18,4) DEFAULT NULL COMMENT '费用总和',
  `initial_repay` datetime DEFAULT NULL COMMENT '最后还款日',
  `due_periods` int(10) DEFAULT NULL COMMENT '应还期数',
  `penalty_days` decimal(18,4) DEFAULT NULL COMMENT '日罚息',
  `remain_history` varchar(50) DEFAULT NULL COMMENT '历史遗留',
  `debit_bank_code` varchar(50) DEFAULT NULL COMMENT '扣款银行代码',
  `debit_bank_name` varchar(50) DEFAULT NULL COMMENT '扣款银行名称',
  `debit_account` varchar(50) DEFAULT NULL COMMENT '扣款账号',
  `relief_policy` varchar(50) DEFAULT NULL COMMENT '减免政策',
  `remark1` text COMMENT '备注1',
  `remark2` text COMMENT '备注2',
  `case_assigned_id` varchar(32) DEFAULT NULL COMMENT '被分配人ID',
  `case_assign_id` varchar(32) DEFAULT NULL COMMENT '分配人ID',
  `case_assign_name` varchar(32) DEFAULT NULL COMMENT '分配人名称',
  `case_assign_time` datetime DEFAULT NULL COMMENT '分配时间',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `modify_emp_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(2) DEFAULT '1' COMMENT '系统状态',
  `org_id` varchar(32) DEFAULT NULL COMMENT '组织id-催收方id',
  `org_name` varchar(50) DEFAULT NULL COMMENT '组织名称-催收方名称',
  `next_follow_time` datetime DEFAULT NULL COMMENT '下次跟进时间',
  `next_follow_state` varchar(50) DEFAULT NULL COMMENT '下次跟进状态 1电话催收 2外访催收',
  `last_phone_time` datetime DEFAULT NULL COMMENT '最后通电时间',
  `is_update` char(1) DEFAULT '0' COMMENT '是否更新 0否 1是',
  `handle` varchar(50) DEFAULT NULL COMMENT '手别',
  `in_derate` decimal(18,4) DEFAULT NULL COMMENT '内部减免',
  `out_derate` decimal(18,4) DEFAULT NULL COMMENT '外部减免',
  `color` int(4) DEFAULT '0' COMMENT '案件颜色 0正常 1标红 2标蓝 3标橙 4标紫 5标棕 -1不更改',
  `case_warn` varchar(500) DEFAULT NULL COMMENT '警告',
  `start_card_date` datetime DEFAULT NULL COMMENT '开卡日',
  `stop_card_date` datetime DEFAULT NULL COMMENT '停卡日',
  `credit_limit` decimal(18,2) DEFAULT NULL COMMENT '信用额度',
  `policy_expire` datetime DEFAULT NULL COMMENT '保单到期日',
  `collec_remark` text COMMENT '催收小结',
  `collec_type` varchar(50) DEFAULT NULL COMMENT '催收分类',
  `late_fee` decimal(18,4) DEFAULT NULL COMMENT '滞纳金',
  `domicile_zipcode` varchar(50) DEFAULT NULL COMMENT '户籍邮编',
  `cus_introduc` text COMMENT '客户简介',
  `bill_address` varchar(200) DEFAULT NULL COMMENT '对账单地址',
  `bill_zipcode` varchar(50) DEFAULT NULL COMMENT '对账单邮编',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `currency` varchar(50) DEFAULT NULL COMMENT '币种',
  `repayment_term` varchar(50) DEFAULT NULL COMMENT '还款期限',
  `his_remark` longtext COMMENT '历史备注',
  `entrust_id` varchar(32) DEFAULT NULL COMMENT '委托方id',
  `operate_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `case_name` (`case_name`),
  KEY `batch_id` (`batch_id`) USING BTREE,
  KEY `case_code` (`case_code`) USING BTREE,
  KEY `state` (`state`) USING BTREE,
  KEY `org_id` (`org_id`) USING BTREE,
  KEY `entrust_id` (`entrust_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件表';

/*Data for the table `case_history` */

/*Table structure for table `case_info` */

DROP TABLE IF EXISTS `case_info`;

CREATE TABLE `case_info` (
  `id` varchar(32) NOT NULL,
  `case_code` varchar(100) DEFAULT NULL COMMENT '案件序列号',
  `state` int(10) DEFAULT NULL COMMENT '案件状态 0正常(恢复) 1暂停 2关闭 3退案 4结清 5撤回',
  `collec_state_id` varchar(4) DEFAULT NULL COMMENT '催收状态 对应字典表 caseState',
  `visit_state_id` int(11) DEFAULT NULL COMMENT '外访状态 0待审核 1被撤销 2待排程 3已排程 4已完成-无效',
  `batch_id` varchar(32) DEFAULT NULL COMMENT '批次ID',
  `case_date` datetime DEFAULT NULL COMMENT '委案日期',
  `case_backdate` datetime DEFAULT NULL COMMENT '预计退案日',
  `end_date` datetime DEFAULT NULL COMMENT '退案日期',
  `version` int(10) DEFAULT '0',
  `cus_no` varchar(100) DEFAULT NULL COMMENT '客户编号',
  `userId` varchar(100) DEFAULT NULL COMMENT '用户ID(客户号)',
  `account_no` varchar(100) DEFAULT NULL COMMENT '账号',
  `case_app_no` varchar(100) DEFAULT NULL COMMENT '申请单号',
  `case_file_no` varchar(100) DEFAULT NULL COMMENT '档案号',
  `case_name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `case_sex` varchar(1) DEFAULT NULL COMMENT '性别',
  `case_is_marriage` varchar(20) DEFAULT NULL COMMENT '婚否',
  `case_birthday` datetime DEFAULT NULL COMMENT '生日',
  `case_age` int(3) DEFAULT NULL COMMENT '年龄',
  `province_id` varchar(32) DEFAULT NULL COMMENT '省ID',
  `province_name` varchar(32) DEFAULT NULL COMMENT '省名称',
  `city_id` varchar(32) DEFAULT NULL COMMENT '市ID',
  `city_name` varchar(32) DEFAULT NULL COMMENT '市名称',
  `district_id` varchar(32) DEFAULT NULL COMMENT '区ID',
  `district_name` varchar(32) DEFAULT NULL COMMENT '区名称',
  `area_id` varchar(32) DEFAULT NULL COMMENT '催收区域ID',
  `area_name` varchar(50) DEFAULT NULL COMMENT '催收区域名称',
  `bank_account` varchar(50) DEFAULT NULL COMMENT '开户行',
  `case_house_id` varchar(100) DEFAULT NULL COMMENT '案人房产类型',
  `case_card` varchar(50) DEFAULT '' COMMENT '卡号',
  `case_num` varchar(50) DEFAULT NULL COMMENT '证件号',
  `case_num_id` varchar(32) DEFAULT NULL COMMENT '证件类型ID',
  `case_position` varchar(32) DEFAULT NULL COMMENT '案人职位',
  `case_department` varchar(100) DEFAULT NULL COMMENT '案人部门',
  `case_position_level` varchar(50) DEFAULT NULL COMMENT '职位级别',
  `account_name` varchar(100) DEFAULT NULL COMMENT '账号名',
  `lend_institution` varchar(100) DEFAULT NULL COMMENT '放款机构',
  `old_collec_record` text COMMENT '原催收记录',
  `principal` decimal(18,4) DEFAULT NULL COMMENT '本金',
  `surplus_principal` decimal(18,4) DEFAULT NULL COMMENT '剩余本金',
  `breach` decimal(18,4) DEFAULT NULL COMMENT '违约金',
  `case_money` decimal(18,4) DEFAULT NULL COMMENT '委案金额',
  `case_last_money` decimal(18,4) DEFAULT NULL COMMENT '最新欠款',
  `case_last_date` datetime DEFAULT NULL COMMENT '最新欠款时间',
  `account_money` decimal(18,4) DEFAULT NULL COMMENT '账户金额',
  `loan_contract` varchar(100) DEFAULT NULL COMMENT '贷款合同号',
  `loan_money` decimal(18,4) DEFAULT NULL COMMENT '贷款金额',
  `loan_rate` decimal(18,4) DEFAULT NULL COMMENT '贷款利率',
  `loan_startdate` datetime DEFAULT NULL COMMENT '贷款日期',
  `loan_enddate` datetime DEFAULT NULL COMMENT '贷款截止日期',
  `contract_money` decimal(18,4) DEFAULT NULL COMMENT '签约金额',
  `overdue_money` decimal(18,4) DEFAULT NULL COMMENT '逾期金额',
  `overdue_principal` decimal(18,4) DEFAULT NULL COMMENT '逾期本金',
  `overdue_expense` decimal(18,4) DEFAULT NULL COMMENT '逾期管理费',
  `overdue_age` varchar(100) DEFAULT NULL COMMENT '逾期账龄',
  `overdue_penalty` decimal(18,4) DEFAULT NULL COMMENT '逾期罚息',
  `overdue_interest` decimal(18,4) DEFAULT NULL COMMENT '逾期利息',
  `overdue_days` int(10) DEFAULT NULL COMMENT '逾期天数',
  `overdue_date` datetime DEFAULT NULL COMMENT '逾期开始日期',
  `overdue_periods` int(10) DEFAULT NULL COMMENT '逾期期数',
  `once_overdue_periods` int(10) DEFAULT NULL COMMENT '曾逾期期数',
  `overdue_loan` decimal(18,4) DEFAULT NULL COMMENT '逾期借款',
  `overdue_principal_balance` decimal(18,4) DEFAULT NULL COMMENT '逾期本金余额',
  `overdue_compound` decimal(18,4) DEFAULT NULL COMMENT '逾期复利',
  `social_security_no` varchar(100) DEFAULT NULL COMMENT '社保电脑号',
  `social_card_no` varchar(100) DEFAULT NULL COMMENT '社保卡号',
  `agent_rate` decimal(18,4) DEFAULT NULL COMMENT '代理费率 -->业绩率',
  `entrust_rate` decimal(18,4) DEFAULT NULL COMMENT '委托费率',
  `credit_id` varchar(100) DEFAULT NULL COMMENT '信贷分类',
  `stay_periods` int(10) DEFAULT NULL COMMENT '贷还期数',
  `month_repayment` decimal(18,4) DEFAULT NULL COMMENT '每月还款金额',
  `last_repayment` decimal(18,4) DEFAULT NULL COMMENT '最后还款金额',
  `stay_principal` decimal(18,4) DEFAULT NULL COMMENT '待还本金',
  `stay_expense` decimal(18,4) DEFAULT NULL COMMENT '待还管理费',
  `stay_interest` decimal(18,4) DEFAULT NULL COMMENT '待还利息',
  `bill` int(4) DEFAULT NULL COMMENT '账单日',
  `repayment_periods` int(10) DEFAULT NULL COMMENT '已还期数',
  `commodity` varchar(200) DEFAULT NULL COMMENT '商品',
  `company_name` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `company_phone` varchar(100) DEFAULT NULL COMMENT '单位号码',
  `company_address` varchar(200) DEFAULT NULL COMMENT '单位地址',
  `company_zipcode` varchar(200) DEFAULT NULL COMMENT '单位邮编',
  `mobile1` varchar(100) DEFAULT NULL COMMENT '本人手机1',
  `mobile2` varchar(100) DEFAULT NULL COMMENT '本人手机2',
  `family_phone` varchar(100) DEFAULT NULL COMMENT '家庭号码',
  `family_address` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  `family_zipcode` varchar(200) DEFAULT NULL COMMENT '家庭邮编',
  `domicile` varchar(200) DEFAULT NULL COMMENT '户籍地址',
  `mark_id` varchar(100) DEFAULT NULL COMMENT '标ID',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `is_verify` varchar(1) DEFAULT NULL COMMENT '是否核销 0未核销 1已核销',
  `verify_date` datetime DEFAULT NULL COMMENT '核销日期',
  `repayment_type` varchar(50) DEFAULT NULL COMMENT '还款方式',
  `protocol_no` varchar(200) DEFAULT NULL COMMENT '协议编号',
  `loan_area` varchar(200) DEFAULT NULL COMMENT '放款所属地',
  `actual_loan_money` decimal(18,4) DEFAULT NULL COMMENT '实际-放款金额',
  `interest_money` decimal(18,4) DEFAULT NULL COMMENT '欠息余额',
  `penalty_reference` varchar(100) DEFAULT NULL COMMENT '罚息参照',
  `compound_interest_reference` varchar(100) DEFAULT NULL COMMENT '复息参照',
  `quota_no` varchar(100) DEFAULT NULL COMMENT '根额度编号',
  `quota_manager1` varchar(100) DEFAULT NULL COMMENT '根额度主办人客户经理',
  `quota_manager2` varchar(100) DEFAULT NULL COMMENT '根额度协办人客户经理',
  `manager_phone` varchar(100) DEFAULT NULL COMMENT '客户经理电话',
  `collateral_no` varchar(100) DEFAULT NULL COMMENT '押品编号',
  `collateral_id` varchar(100) DEFAULT NULL COMMENT '押品类型ID',
  `collateral_name` varchar(100) DEFAULT NULL COMMENT '押品名称',
  `collateral_address` varchar(200) DEFAULT NULL COMMENT '押品地址',
  `collateral_evalua` varchar(100) DEFAULT NULL COMMENT '押品评估值',
  `repay_date` int(4) DEFAULT NULL COMMENT '还款日',
  `total_construc` varchar(100) DEFAULT NULL COMMENT '建筑面积合计',
  `regione` varchar(100) DEFAULT NULL COMMENT '大区名称',
  `sub_center` varchar(100) DEFAULT NULL COMMENT '分中心名称',
  `sales_dep` varchar(100) DEFAULT NULL COMMENT '营业部名称',
  `consult_fee` decimal(18,4) DEFAULT NULL COMMENT '咨询费',
  `audit_fee` decimal(18,4) DEFAULT NULL COMMENT '审核费',
  `service_fee` decimal(18,4) DEFAULT NULL COMMENT '服务费',
  `adviser_fee` decimal(18,4) DEFAULT NULL COMMENT '顾问费',
  `fee_total` decimal(18,4) DEFAULT NULL COMMENT '费用总和',
  `initial_repay` datetime DEFAULT NULL COMMENT '最后还款日',
  `due_periods` int(10) DEFAULT NULL COMMENT '应还期数',
  `penalty_days` decimal(18,4) DEFAULT NULL COMMENT '日罚息',
  `remain_history` text COMMENT '历史遗留',
  `debit_bank_code` varchar(100) DEFAULT NULL COMMENT '扣款银行代码',
  `debit_bank_name` varchar(100) DEFAULT NULL COMMENT '扣款银行名称',
  `debit_account` varchar(100) DEFAULT NULL COMMENT '扣款账号',
  `relief_policy` varchar(100) DEFAULT NULL COMMENT '减免政策',
  `remark1` text COMMENT '备注1',
  `remark2` text COMMENT '备注2',
  `case_assigned_id` varchar(32) DEFAULT NULL COMMENT '被分配人ID',
  `case_assign_id` varchar(32) DEFAULT NULL COMMENT '分配人ID',
  `case_assign_name` varchar(32) DEFAULT NULL COMMENT '分配人名称',
  `case_assign_time` datetime DEFAULT NULL COMMENT '分配时间',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `modify_emp_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(2) DEFAULT '1' COMMENT '系统状态',
  `org_id` varchar(32) DEFAULT NULL COMMENT '组织id-催收方id',
  `org_name` varchar(50) DEFAULT NULL COMMENT '组织名称-催收方名称',
  `next_follow_time` datetime DEFAULT NULL COMMENT '下次跟进时间',
  `next_follow_state` varchar(50) DEFAULT NULL COMMENT '下次跟进状态 1电话催收 2外访催收',
  `last_phone_time` datetime DEFAULT NULL COMMENT '最后通电时间',
  `is_update` char(1) DEFAULT '0' COMMENT '是否更新 0否 1是',
  `handle` varchar(50) DEFAULT NULL COMMENT '手别',
  `in_derate` decimal(18,4) DEFAULT NULL COMMENT '内部减免',
  `out_derate` decimal(18,4) DEFAULT NULL COMMENT '外部减免',
  `color` int(4) DEFAULT '0' COMMENT '案件颜色 0正常 1标红 2标蓝 3标橙 4标紫 5标棕 -1不更改',
  `case_warn` varchar(500) DEFAULT NULL COMMENT '警告',
  `start_card_date` datetime DEFAULT NULL COMMENT '开卡日',
  `stop_card_date` datetime DEFAULT NULL COMMENT '停卡日',
  `credit_limit` decimal(18,2) DEFAULT NULL COMMENT '信用额度',
  `policy_expire` datetime DEFAULT NULL COMMENT '保单到期日',
  `collec_remark` text COMMENT '催收小结',
  `collec_type` varchar(50) DEFAULT NULL COMMENT '催收分类',
  `late_fee` decimal(18,4) DEFAULT NULL COMMENT '滞纳金',
  `domicile_zipcode` varchar(50) DEFAULT NULL COMMENT '户籍邮编',
  `cus_introduc` text COMMENT '客户简介',
  `bill_address` varchar(200) DEFAULT NULL COMMENT '对账单地址',
  `bill_zipcode` varchar(50) DEFAULT NULL COMMENT '对账单邮编',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `currency` varchar(50) DEFAULT NULL COMMENT '币种',
  `repayment_term` varchar(100) DEFAULT NULL COMMENT '还款期限',
  `his_remark` longtext COMMENT '历史备注',
  PRIMARY KEY (`id`),
  KEY `case_name` (`case_name`),
  KEY `batch_id` (`batch_id`) USING BTREE,
  KEY `case_code` (`case_code`) USING BTREE,
  KEY `state` (`state`) USING BTREE,
  KEY `org_id` (`org_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件表';

/*Data for the table `case_info` */

/*Table structure for table `case_info_bak` */

DROP TABLE IF EXISTS `case_info_bak`;

CREATE TABLE `case_info_bak` (
  `id` varchar(32) NOT NULL,
  `case_code` varchar(100) DEFAULT NULL COMMENT '案件序列号',
  `state` int(10) DEFAULT NULL COMMENT '案件状态 0正常(恢复) 1暂停 2关闭 3退案 4结清 5撤回',
  `collec_state_id` varchar(4) DEFAULT NULL COMMENT '催收状态 对应字典表 caseState',
  `visit_state_id` int(11) DEFAULT NULL COMMENT '外访状态 0待审核 1被撤销 2待排程 3已排程 4已完成-无效',
  `batch_id` varchar(32) DEFAULT NULL COMMENT '批次ID',
  `case_date` datetime DEFAULT NULL COMMENT '委案日期',
  `case_backdate` datetime DEFAULT NULL COMMENT '预计退案日',
  `end_date` datetime DEFAULT NULL COMMENT '退案日期',
  `version` int(10) DEFAULT '0',
  `cus_no` varchar(100) DEFAULT NULL COMMENT '客户编号',
  `userId` varchar(100) DEFAULT NULL COMMENT '用户ID(客户号)',
  `account_no` varchar(100) DEFAULT NULL COMMENT '账号',
  `case_app_no` varchar(100) DEFAULT NULL COMMENT '申请单号',
  `case_file_no` varchar(100) DEFAULT NULL COMMENT '档案号',
  `case_name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `case_sex` varchar(1) DEFAULT NULL COMMENT '性别',
  `case_is_marriage` varchar(10) DEFAULT NULL COMMENT '婚否',
  `case_birthday` datetime DEFAULT NULL COMMENT '生日',
  `case_age` int(3) DEFAULT NULL COMMENT '年龄',
  `province_id` varchar(32) DEFAULT NULL COMMENT '省ID',
  `province_name` varchar(32) DEFAULT NULL COMMENT '省名称',
  `city_id` varchar(32) DEFAULT NULL COMMENT '市ID',
  `city_name` varchar(32) DEFAULT NULL COMMENT '市名称',
  `district_id` varchar(32) DEFAULT NULL COMMENT '区ID',
  `district_name` varchar(32) DEFAULT NULL COMMENT '区名称',
  `area_id` varchar(32) DEFAULT NULL COMMENT '催收区域ID',
  `area_name` varchar(50) DEFAULT NULL COMMENT '催收区域名称',
  `bank_account` varchar(50) DEFAULT NULL COMMENT '开户行',
  `case_house_id` varchar(10) DEFAULT NULL COMMENT '案人房产类型',
  `case_card` varchar(50) DEFAULT NULL COMMENT '卡号',
  `case_num` varchar(50) DEFAULT NULL COMMENT '证件号',
  `case_num_id` varchar(32) DEFAULT NULL COMMENT '证件类型ID',
  `case_position` varchar(32) DEFAULT NULL COMMENT '案人职位',
  `case_department` varchar(50) DEFAULT NULL COMMENT '案人部门',
  `case_position_level` varchar(20) DEFAULT NULL COMMENT '职位级别',
  `account_name` varchar(50) DEFAULT NULL COMMENT '账号名',
  `lend_institution` varchar(50) DEFAULT NULL COMMENT '放款机构',
  `old_collec_record` text COMMENT '原催收记录',
  `principal` decimal(18,4) DEFAULT NULL COMMENT '本金',
  `surplus_principal` decimal(18,4) DEFAULT NULL COMMENT '剩余本金',
  `breach` decimal(18,4) DEFAULT NULL COMMENT '违约金',
  `case_money` decimal(18,4) DEFAULT NULL COMMENT '委案金额',
  `account_money` decimal(18,4) DEFAULT NULL COMMENT '账户金额',
  `loan_contract` varchar(50) DEFAULT NULL COMMENT '贷款合同号',
  `loan_money` decimal(18,4) DEFAULT NULL COMMENT '贷款金额',
  `loan_rate` decimal(18,4) DEFAULT NULL COMMENT '贷款利率',
  `loan_startdate` datetime DEFAULT NULL COMMENT '贷款日期',
  `loan_enddate` datetime DEFAULT NULL COMMENT '贷款截止日期',
  `contract_money` decimal(18,4) DEFAULT NULL COMMENT '签约金额',
  `overdue_money` decimal(18,4) DEFAULT NULL COMMENT '逾期金额',
  `overdue_principal` decimal(18,4) DEFAULT NULL COMMENT '逾期本金',
  `overdue_expense` decimal(18,4) DEFAULT NULL COMMENT '逾期管理费',
  `overdue_age` varchar(20) DEFAULT NULL COMMENT '逾期账龄',
  `overdue_penalty` decimal(18,4) DEFAULT NULL COMMENT '逾期罚息',
  `overdue_interest` decimal(18,4) DEFAULT NULL COMMENT '逾期利息',
  `overdue_days` int(10) DEFAULT NULL COMMENT '逾期天数',
  `overdue_date` datetime DEFAULT NULL COMMENT '逾期开始日期',
  `overdue_periods` int(10) DEFAULT NULL COMMENT '逾期期数',
  `once_overdue_periods` int(10) DEFAULT NULL COMMENT '曾逾期期数',
  `overdue_loan` decimal(18,4) DEFAULT NULL COMMENT '逾期借款',
  `overdue_principal_balance` decimal(18,4) DEFAULT NULL COMMENT '逾期本金余额',
  `overdue_compound` decimal(18,4) DEFAULT NULL COMMENT '逾期复利',
  `social_security_no` varchar(50) DEFAULT NULL COMMENT '社保电脑号',
  `social_card_no` varchar(50) DEFAULT NULL COMMENT '社保卡号',
  `agent_rate` decimal(18,4) DEFAULT NULL COMMENT '代理费率 -->业绩率',
  `entrust_rate` decimal(18,4) DEFAULT NULL COMMENT '委托费率',
  `credit_id` varchar(100) DEFAULT NULL COMMENT '信贷分类',
  `stay_periods` int(10) DEFAULT NULL COMMENT '贷还期数',
  `month_repayment` decimal(18,4) DEFAULT NULL COMMENT '每月还款金额',
  `last_repayment` decimal(18,4) DEFAULT NULL COMMENT '最后还款金额',
  `stay_principal` decimal(18,4) DEFAULT NULL COMMENT '待还本金',
  `stay_expense` decimal(18,4) DEFAULT NULL COMMENT '待还管理费',
  `stay_interest` decimal(18,4) DEFAULT NULL COMMENT '待还利息',
  `bill` int(4) DEFAULT NULL COMMENT '账单日',
  `repayment_periods` int(10) DEFAULT NULL COMMENT '已还期数',
  `commodity` varchar(50) DEFAULT NULL COMMENT '商品',
  `company_name` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `company_phone` varchar(100) DEFAULT NULL COMMENT '单位号码',
  `company_address` varchar(200) DEFAULT NULL COMMENT '单位地址',
  `company_zipcode` varchar(200) DEFAULT NULL COMMENT '单位邮编',
  `mobile1` varchar(100) DEFAULT NULL COMMENT '本人手机1',
  `mobile2` varchar(100) DEFAULT NULL COMMENT '本人手机2',
  `family_phone` varchar(100) DEFAULT NULL COMMENT '家庭号码',
  `family_address` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  `family_zipcode` varchar(200) DEFAULT NULL COMMENT '家庭邮编',
  `domicile` varchar(200) DEFAULT NULL COMMENT '户籍地址',
  `mark_id` varchar(50) DEFAULT NULL COMMENT '标ID',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `is_verify` varchar(1) DEFAULT NULL COMMENT '是否核销 0未核销 1已核销',
  `verify_date` datetime DEFAULT NULL COMMENT '核销日期',
  `repayment_type` varchar(20) DEFAULT NULL COMMENT '还款方式',
  `protocol_no` varchar(50) DEFAULT NULL COMMENT '协议编号',
  `loan_area` varchar(20) DEFAULT NULL COMMENT '放款所属地',
  `actual_loan_money` decimal(18,4) DEFAULT NULL COMMENT '实际-放款金额',
  `interest_money` decimal(18,4) DEFAULT NULL COMMENT '欠息余额',
  `penalty_reference` varchar(50) DEFAULT NULL COMMENT '罚息参照',
  `compound_interest_reference` varchar(50) DEFAULT NULL COMMENT '复息参照',
  `quota_no` varchar(50) DEFAULT NULL COMMENT '根额度编号',
  `quota_manager1` varchar(50) DEFAULT NULL COMMENT '根额度主办人客户经理',
  `quota_manager2` varchar(50) DEFAULT NULL COMMENT '根额度协办人客户经理',
  `manager_phone` varchar(50) DEFAULT NULL COMMENT '客户经理电话',
  `collateral_no` varchar(50) DEFAULT NULL COMMENT '押品编号',
  `collateral_id` varchar(50) DEFAULT NULL COMMENT '押品类型ID',
  `collateral_name` varchar(50) DEFAULT NULL COMMENT '押品名称',
  `collateral_address` varchar(200) DEFAULT NULL COMMENT '押品地址',
  `collateral_evalua` varchar(50) DEFAULT NULL COMMENT '押品评估值',
  `repay_date` int(4) DEFAULT NULL COMMENT '还款日',
  `total_construc` varchar(50) DEFAULT NULL COMMENT '建筑面积合计',
  `regione` varchar(50) DEFAULT NULL COMMENT '大区名称',
  `sub_center` varchar(50) DEFAULT NULL COMMENT '分中心名称',
  `sales_dep` varchar(50) DEFAULT NULL COMMENT '营业部名称',
  `consult_fee` decimal(18,4) DEFAULT NULL COMMENT '咨询费',
  `audit_fee` decimal(18,4) DEFAULT NULL COMMENT '审核费',
  `service_fee` decimal(18,4) DEFAULT NULL COMMENT '服务费',
  `adviser_fee` decimal(18,4) DEFAULT NULL COMMENT '顾问费',
  `fee_total` decimal(18,4) DEFAULT NULL COMMENT '费用总和',
  `initial_repay` datetime DEFAULT NULL COMMENT '最后还款日',
  `due_periods` int(10) DEFAULT NULL COMMENT '应还期数',
  `penalty_days` decimal(18,4) DEFAULT NULL COMMENT '日罚息',
  `remain_history` varchar(50) DEFAULT NULL COMMENT '历史遗留',
  `debit_bank_code` varchar(50) DEFAULT NULL COMMENT '扣款银行代码',
  `debit_bank_name` varchar(50) DEFAULT NULL COMMENT '扣款银行名称',
  `debit_account` varchar(50) DEFAULT NULL COMMENT '扣款账号',
  `relief_policy` varchar(50) DEFAULT NULL COMMENT '减免政策',
  `remark1` text COMMENT '备注1',
  `remark2` text COMMENT '备注2',
  `case_assigned_id` varchar(32) DEFAULT NULL COMMENT '被分配人ID',
  `case_assign_id` varchar(32) DEFAULT NULL COMMENT '分配人ID',
  `case_assign_name` varchar(32) DEFAULT NULL COMMENT '分配人名称',
  `case_assign_time` datetime DEFAULT NULL COMMENT '分配时间',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `modify_emp_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(2) DEFAULT '1' COMMENT '系统状态',
  `org_id` varchar(32) DEFAULT NULL COMMENT '组织id-催收方id',
  `org_name` varchar(50) DEFAULT NULL COMMENT '组织名称-催收方名称',
  `next_follow_time` datetime DEFAULT NULL COMMENT '下次跟进时间',
  `next_follow_state` varchar(50) DEFAULT NULL COMMENT '下次跟进状态 1电话催收 2外访催收',
  `is_update` char(1) DEFAULT '0' COMMENT '是否更新 0否 1是',
  `handle` varchar(50) DEFAULT NULL COMMENT '手别',
  `in_derate` decimal(18,4) DEFAULT NULL COMMENT '内部减免',
  `out_derate` decimal(18,4) DEFAULT NULL COMMENT '外部减免',
  `color` int(4) DEFAULT '0' COMMENT '案件颜色 0正常 1标红 2标蓝 3标橙 4标紫 5标棕 -1不更改',
  `case_warn` varchar(500) DEFAULT NULL COMMENT '警告',
  `start_card_date` datetime DEFAULT NULL COMMENT '开卡日',
  `stop_card_date` datetime DEFAULT NULL COMMENT '停卡日',
  `credit_limit` decimal(18,2) DEFAULT NULL COMMENT '信用额度',
  `policy_expire` datetime DEFAULT NULL COMMENT '保单到期日',
  `collec_remark` text COMMENT '催收小结',
  `collec_type` varchar(50) DEFAULT NULL COMMENT '催收分类',
  `late_fee` decimal(18,4) DEFAULT NULL COMMENT '滞纳金',
  `domicile_zipcode` varchar(50) DEFAULT NULL COMMENT '户籍邮编',
  `cus_introduc` text COMMENT '客户简介',
  `bill_address` varchar(200) DEFAULT NULL COMMENT '对账单地址',
  `bill_zipcode` varchar(50) DEFAULT NULL COMMENT '对账单邮编',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `currency` varchar(50) DEFAULT NULL COMMENT '币种',
  `repayment_term` varchar(50) DEFAULT NULL COMMENT '还款期限'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `case_info_bak` */

/*Table structure for table `case_info_copy` */

DROP TABLE IF EXISTS `case_info_copy`;

CREATE TABLE `case_info_copy` (
  `id` varchar(32) NOT NULL,
  `case_code` varchar(100) DEFAULT NULL COMMENT '案件序列号',
  `state` int(10) DEFAULT NULL COMMENT '案件状态 0正常(恢复) 1暂停 2关闭 3退案 4结清 5撤回',
  `collec_state_id` varchar(4) DEFAULT NULL COMMENT '催收状态 对应字典表 caseState',
  `visit_state_id` int(11) DEFAULT NULL COMMENT '外访状态 0待审核 1被撤销 2待排程 3已排程 4已完成-无效',
  `batch_id` varchar(32) DEFAULT NULL COMMENT '批次ID',
  `case_date` datetime DEFAULT NULL COMMENT '委案日期',
  `case_backdate` datetime DEFAULT NULL COMMENT '预计退案日',
  `end_date` datetime DEFAULT NULL COMMENT '退案日期',
  `version` int(10) DEFAULT '0',
  `cus_no` varchar(100) DEFAULT NULL COMMENT '客户编号',
  `userId` varchar(100) DEFAULT NULL COMMENT '用户ID(客户号)',
  `account_no` varchar(100) DEFAULT NULL COMMENT '账号',
  `case_app_no` varchar(100) DEFAULT NULL COMMENT '申请单号',
  `case_file_no` varchar(100) DEFAULT NULL COMMENT '档案号',
  `case_name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `case_sex` varchar(1) DEFAULT NULL COMMENT '性别',
  `case_is_marriage` varchar(20) DEFAULT NULL COMMENT '婚否',
  `case_birthday` datetime DEFAULT NULL COMMENT '生日',
  `case_age` int(3) DEFAULT NULL COMMENT '年龄',
  `province_id` varchar(32) DEFAULT NULL COMMENT '省ID',
  `province_name` varchar(32) DEFAULT NULL COMMENT '省名称',
  `city_id` varchar(32) DEFAULT NULL COMMENT '市ID',
  `city_name` varchar(32) DEFAULT NULL COMMENT '市名称',
  `district_id` varchar(32) DEFAULT NULL COMMENT '区ID',
  `district_name` varchar(32) DEFAULT NULL COMMENT '区名称',
  `area_id` varchar(32) DEFAULT NULL COMMENT '催收区域ID',
  `area_name` varchar(50) DEFAULT NULL COMMENT '催收区域名称',
  `bank_account` varchar(50) DEFAULT NULL COMMENT '开户行',
  `case_house_id` varchar(100) DEFAULT NULL COMMENT '案人房产类型',
  `case_card` varchar(50) DEFAULT NULL COMMENT '卡号',
  `case_num` varchar(50) DEFAULT NULL COMMENT '证件号',
  `case_num_id` varchar(32) DEFAULT NULL COMMENT '证件类型ID',
  `case_position` varchar(32) DEFAULT NULL COMMENT '案人职位',
  `case_department` varchar(100) DEFAULT NULL COMMENT '案人部门',
  `case_position_level` varchar(50) DEFAULT NULL COMMENT '职位级别',
  `account_name` varchar(100) DEFAULT NULL COMMENT '账号名',
  `lend_institution` varchar(100) DEFAULT NULL COMMENT '放款机构',
  `old_collec_record` text COMMENT '原催收记录',
  `principal` decimal(18,4) DEFAULT NULL COMMENT '本金',
  `surplus_principal` decimal(18,4) DEFAULT NULL COMMENT '剩余本金',
  `breach` decimal(18,4) DEFAULT NULL COMMENT '违约金',
  `case_money` decimal(18,4) DEFAULT NULL COMMENT '委案金额',
  `account_money` decimal(18,4) DEFAULT NULL COMMENT '账户金额',
  `loan_contract` varchar(100) DEFAULT NULL COMMENT '贷款合同号',
  `loan_money` decimal(18,4) DEFAULT NULL COMMENT '贷款金额',
  `loan_rate` decimal(18,4) DEFAULT NULL COMMENT '贷款利率',
  `loan_startdate` datetime DEFAULT NULL COMMENT '贷款日期',
  `loan_enddate` datetime DEFAULT NULL COMMENT '贷款截止日期',
  `contract_money` decimal(18,4) DEFAULT NULL COMMENT '签约金额',
  `overdue_money` decimal(18,4) DEFAULT NULL COMMENT '逾期金额',
  `overdue_principal` decimal(18,4) DEFAULT NULL COMMENT '逾期本金',
  `overdue_expense` decimal(18,4) DEFAULT NULL COMMENT '逾期管理费',
  `overdue_age` varchar(100) DEFAULT NULL COMMENT '逾期账龄',
  `overdue_penalty` decimal(18,4) DEFAULT NULL COMMENT '逾期罚息',
  `overdue_interest` decimal(18,4) DEFAULT NULL COMMENT '逾期利息',
  `overdue_days` int(10) DEFAULT NULL COMMENT '逾期天数',
  `overdue_date` datetime DEFAULT NULL COMMENT '逾期开始日期',
  `overdue_periods` int(10) DEFAULT NULL COMMENT '逾期期数',
  `once_overdue_periods` int(10) DEFAULT NULL COMMENT '曾逾期期数',
  `overdue_loan` decimal(18,4) DEFAULT NULL COMMENT '逾期借款',
  `overdue_principal_balance` decimal(18,4) DEFAULT NULL COMMENT '逾期本金余额',
  `overdue_compound` decimal(18,4) DEFAULT NULL COMMENT '逾期复利',
  `social_security_no` varchar(100) DEFAULT NULL COMMENT '社保电脑号',
  `social_card_no` varchar(100) DEFAULT NULL COMMENT '社保卡号',
  `agent_rate` decimal(18,4) DEFAULT NULL COMMENT '代理费率 -->业绩率',
  `entrust_rate` decimal(18,4) DEFAULT NULL COMMENT '委托费率',
  `credit_id` varchar(100) DEFAULT NULL COMMENT '信贷分类',
  `stay_periods` int(10) DEFAULT NULL COMMENT '贷还期数',
  `month_repayment` decimal(18,4) DEFAULT NULL COMMENT '每月还款金额',
  `last_repayment` decimal(18,4) DEFAULT NULL COMMENT '最后还款金额',
  `stay_principal` decimal(18,4) DEFAULT NULL COMMENT '待还本金',
  `stay_expense` decimal(18,4) DEFAULT NULL COMMENT '待还管理费',
  `stay_interest` decimal(18,4) DEFAULT NULL COMMENT '待还利息',
  `bill` int(4) DEFAULT NULL COMMENT '账单日',
  `repayment_periods` int(10) DEFAULT NULL COMMENT '已还期数',
  `commodity` varchar(200) DEFAULT NULL COMMENT '商品',
  `company_name` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `company_phone` varchar(100) DEFAULT NULL COMMENT '单位号码',
  `company_address` varchar(200) DEFAULT NULL COMMENT '单位地址',
  `company_zipcode` varchar(200) DEFAULT NULL COMMENT '单位邮编',
  `mobile1` varchar(100) DEFAULT NULL COMMENT '本人手机1',
  `mobile2` varchar(100) DEFAULT NULL COMMENT '本人手机2',
  `family_phone` varchar(100) DEFAULT NULL COMMENT '家庭号码',
  `family_address` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  `family_zipcode` varchar(200) DEFAULT NULL COMMENT '家庭邮编',
  `domicile` varchar(200) DEFAULT NULL COMMENT '户籍地址',
  `mark_id` varchar(100) DEFAULT NULL COMMENT '标ID',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `is_verify` varchar(1) DEFAULT NULL COMMENT '是否核销 0未核销 1已核销',
  `verify_date` datetime DEFAULT NULL COMMENT '核销日期',
  `repayment_type` varchar(50) DEFAULT NULL COMMENT '还款方式',
  `protocol_no` varchar(200) DEFAULT NULL COMMENT '协议编号',
  `loan_area` varchar(200) DEFAULT NULL COMMENT '放款所属地',
  `actual_loan_money` decimal(18,4) DEFAULT NULL COMMENT '实际-放款金额',
  `interest_money` decimal(18,4) DEFAULT NULL COMMENT '欠息余额',
  `penalty_reference` varchar(100) DEFAULT NULL COMMENT '罚息参照',
  `compound_interest_reference` varchar(100) DEFAULT NULL COMMENT '复息参照',
  `quota_no` varchar(100) DEFAULT NULL COMMENT '根额度编号',
  `quota_manager1` varchar(100) DEFAULT NULL COMMENT '根额度主办人客户经理',
  `quota_manager2` varchar(100) DEFAULT NULL COMMENT '根额度协办人客户经理',
  `manager_phone` varchar(100) DEFAULT NULL COMMENT '客户经理电话',
  `collateral_no` varchar(100) DEFAULT NULL COMMENT '押品编号',
  `collateral_id` varchar(100) DEFAULT NULL COMMENT '押品类型ID',
  `collateral_name` varchar(100) DEFAULT NULL COMMENT '押品名称',
  `collateral_address` varchar(200) DEFAULT NULL COMMENT '押品地址',
  `collateral_evalua` varchar(100) DEFAULT NULL COMMENT '押品评估值',
  `repay_date` int(4) DEFAULT NULL COMMENT '还款日',
  `total_construc` varchar(100) DEFAULT NULL COMMENT '建筑面积合计',
  `regione` varchar(100) DEFAULT NULL COMMENT '大区名称',
  `sub_center` varchar(100) DEFAULT NULL COMMENT '分中心名称',
  `sales_dep` varchar(100) DEFAULT NULL COMMENT '营业部名称',
  `consult_fee` decimal(18,4) DEFAULT NULL COMMENT '咨询费',
  `audit_fee` decimal(18,4) DEFAULT NULL COMMENT '审核费',
  `service_fee` decimal(18,4) DEFAULT NULL COMMENT '服务费',
  `adviser_fee` decimal(18,4) DEFAULT NULL COMMENT '顾问费',
  `fee_total` decimal(18,4) DEFAULT NULL COMMENT '费用总和',
  `initial_repay` datetime DEFAULT NULL COMMENT '最后还款日',
  `due_periods` int(10) DEFAULT NULL COMMENT '应还期数',
  `penalty_days` decimal(18,4) DEFAULT NULL COMMENT '日罚息',
  `remain_history` text COMMENT '历史遗留',
  `debit_bank_code` varchar(100) DEFAULT NULL COMMENT '扣款银行代码',
  `debit_bank_name` varchar(100) DEFAULT NULL COMMENT '扣款银行名称',
  `debit_account` varchar(100) DEFAULT NULL COMMENT '扣款账号',
  `relief_policy` varchar(100) DEFAULT NULL COMMENT '减免政策',
  `remark1` text COMMENT '备注1',
  `remark2` text COMMENT '备注2',
  `case_assigned_id` varchar(32) DEFAULT NULL COMMENT '被分配人ID',
  `case_assign_id` varchar(32) DEFAULT NULL COMMENT '分配人ID',
  `case_assign_name` varchar(32) DEFAULT NULL COMMENT '分配人名称',
  `case_assign_time` datetime DEFAULT NULL COMMENT '分配时间',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `modify_emp_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(2) DEFAULT '1' COMMENT '系统状态',
  `org_id` varchar(32) DEFAULT NULL COMMENT '组织id-催收方id',
  `org_name` varchar(50) DEFAULT NULL COMMENT '组织名称-催收方名称',
  `next_follow_time` datetime DEFAULT NULL COMMENT '下次跟进时间',
  `next_follow_state` varchar(50) DEFAULT NULL COMMENT '下次跟进状态 1电话催收 2外访催收',
  `is_update` char(1) DEFAULT '0' COMMENT '是否更新 0否 1是',
  `handle` varchar(50) DEFAULT NULL COMMENT '手别',
  `in_derate` decimal(18,4) DEFAULT NULL COMMENT '内部减免',
  `out_derate` decimal(18,4) DEFAULT NULL COMMENT '外部减免',
  `color` int(4) DEFAULT '0' COMMENT '案件颜色 0正常 1标红 2标蓝 3标橙 4标紫 5标棕 -1不更改',
  `case_warn` varchar(500) DEFAULT NULL COMMENT '警告',
  `start_card_date` datetime DEFAULT NULL COMMENT '开卡日',
  `stop_card_date` datetime DEFAULT NULL COMMENT '停卡日',
  `credit_limit` decimal(18,2) DEFAULT NULL COMMENT '信用额度',
  `policy_expire` datetime DEFAULT NULL COMMENT '保单到期日',
  `collec_remark` text COMMENT '催收小结',
  `collec_type` varchar(50) DEFAULT NULL COMMENT '催收分类',
  `late_fee` decimal(18,4) DEFAULT NULL COMMENT '滞纳金',
  `domicile_zipcode` varchar(50) DEFAULT NULL COMMENT '户籍邮编',
  `cus_introduc` text COMMENT '客户简介',
  `bill_address` varchar(200) DEFAULT NULL COMMENT '对账单地址',
  `bill_zipcode` varchar(50) DEFAULT NULL COMMENT '对账单邮编',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `currency` varchar(50) DEFAULT NULL COMMENT '币种',
  `repayment_term` varchar(100) DEFAULT NULL COMMENT '还款期限',
  `his_remark` longtext COMMENT '历史备注',
  PRIMARY KEY (`id`),
  KEY `case_name` (`case_name`),
  KEY `batch_id` (`batch_id`) USING BTREE,
  KEY `case_code` (`case_code`) USING BTREE,
  KEY `state` (`state`) USING BTREE,
  KEY `org_id` (`org_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件表';

/*Data for the table `case_info_copy` */

/*Table structure for table `case_linkman` */

DROP TABLE IF EXISTS `case_linkman`;

CREATE TABLE `case_linkman` (
  `id` varchar(32) NOT NULL,
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件表ID',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(50) DEFAULT NULL COMMENT '手机',
  `phone` varchar(50) DEFAULT NULL COMMENT '联系人电话',
  `phone_type` varchar(32) DEFAULT NULL COMMENT '家庭电话 单位电话 手机 联系人电话 其他电话',
  `phone_count` int(11) DEFAULT '0' COMMENT '呼叫次数',
  `card_no` varchar(200) DEFAULT NULL COMMENT '证件号',
  `unit_name` varchar(200) DEFAULT NULL COMMENT '名称',
  `unit_phone` varchar(50) DEFAULT NULL COMMENT '单位电话',
  `family_phone` varchar(100) DEFAULT NULL COMMENT '家庭电话',
  `address` text COMMENT '地址',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `status` int(11) DEFAULT '1' COMMENT '联系人状态 0未知 1有效 2无效',
  `position` int(11) DEFAULT NULL COMMENT '位置',
  `relation` varchar(200) DEFAULT NULL COMMENT '关系',
  `version` int(11) DEFAULT '0',
  `remark` text COMMENT '备注',
  `source` char(1) DEFAULT '0' COMMENT '来源 0贴档 1新增 2贴档本人手机1 3贴档本人手机2',
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`) USING HASH,
  KEY `phone` (`phone`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件联系人表';

/*Data for the table `case_linkman` */

/*Table structure for table `case_paid` */

DROP TABLE IF EXISTS `case_paid`;

CREATE TABLE `case_paid` (
  `id` varchar(32) NOT NULL,
  `state` int(11) DEFAULT NULL COMMENT '登账状态 0ptp正常 1 cp正常 2确认 3作废ptp 4作废cp(撤销) 5提交委托方',
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件id',
  `ptp_time` datetime DEFAULT NULL COMMENT 'ptp时间',
  `ptp_money` decimal(18,2) DEFAULT NULL COMMENT 'ptp金额',
  `cp_time` datetime DEFAULT NULL COMMENT 'cp时间',
  `cp_money` decimal(18,2) DEFAULT NULL COMMENT 'cp金额',
  `paid_time` datetime DEFAULT NULL COMMENT '确认还款时间',
  `paid_num` decimal(18,2) DEFAULT NULL COMMENT '确认还款金额',
  `sur_user` varchar(25) DEFAULT NULL COMMENT '确认人',
  `sur_time` datetime DEFAULT NULL COMMENT '确认时间',
  `sur_remark` text COMMENT '备注',
  `del_user` varchar(25) DEFAULT NULL COMMENT '删除人',
  `del_time` datetime DEFAULT NULL COMMENT '删除时间',
  `m_paid` decimal(18,2) DEFAULT NULL,
  `cpm_paid` decimal(18,2) DEFAULT NULL,
  `se_no` varchar(32) DEFAULT NULL COMMENT '催收人ID',
  `cm_paid` decimal(18,2) DEFAULT NULL,
  `back_paid` decimal(18,4) DEFAULT NULL COMMENT '公司佣金',
  `back_paid_rate` decimal(18,4) DEFAULT NULL COMMENT '佣金率',
  `pback_paid` decimal(18,2) DEFAULT NULL,
  `entrust_paid` decimal(18,4) DEFAULT NULL COMMENT '结算金额',
  `entrust_paid_rate` decimal(18,4) DEFAULT NULL COMMENT '委托费率',
  `last_debt_m` decimal(18,2) DEFAULT NULL,
  `left_amt` decimal(18,2) DEFAULT NULL COMMENT '余额',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_emp_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `version` int(10) DEFAULT '0' COMMENT '版本号',
  `is_derate` char(1) DEFAULT '0' COMMENT '是否减免 0未减免 1内部减免 2外部减免 3全部减免',
  `in_derate` decimal(18,4) DEFAULT '0.0000' COMMENT '内部减免',
  `out_derate` decimal(18,4) DEFAULT '0.0000' COMMENT '外部减免',
  `cancel_reason` varchar(500) DEFAULT NULL COMMENT '作废原因',
  `repay_type` char(1) NOT NULL DEFAULT '1' COMMENT '还款类型 1正常 2自来账',
  `operate_emp_id` varchar(32) DEFAULT NULL COMMENT '操作人',
  `operate_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`) USING BTREE,
  KEY `paid_time` (`paid_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件登账表';

/*Data for the table `case_paid` */

/*Table structure for table `case_paid_1` */

DROP TABLE IF EXISTS `case_paid_1`;

CREATE TABLE `case_paid_1` (
  `id` varchar(32) NOT NULL,
  `state` int(11) DEFAULT NULL COMMENT '登账状态 0ptp正常 1 cp正常 2确认 3作废ptp 4作废cp(撤销) 5提交委托方',
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件id',
  `ptp_time` datetime DEFAULT NULL COMMENT 'ptp时间',
  `ptp_money` decimal(18,2) DEFAULT NULL COMMENT 'ptp金额',
  `cp_time` datetime DEFAULT NULL COMMENT 'cp时间',
  `cp_money` decimal(18,2) DEFAULT NULL COMMENT 'cp金额',
  `paid_time` datetime DEFAULT NULL COMMENT '确认还款时间',
  `paid_num` decimal(18,2) DEFAULT NULL COMMENT '确认还款金额',
  `sur_user` varchar(25) DEFAULT NULL COMMENT '确认人',
  `sur_time` datetime DEFAULT NULL COMMENT '确认时间',
  `sur_remark` text COMMENT '备注',
  `del_user` varchar(25) DEFAULT NULL COMMENT '删除人',
  `del_time` datetime DEFAULT NULL COMMENT '删除时间',
  `m_paid` decimal(18,2) DEFAULT NULL,
  `cpm_paid` decimal(18,2) DEFAULT NULL,
  `se_no` varchar(32) DEFAULT NULL COMMENT '催收人ID',
  `cm_paid` decimal(18,2) DEFAULT NULL,
  `back_paid` decimal(18,4) DEFAULT NULL COMMENT '公司佣金',
  `back_paid_rate` decimal(18,4) DEFAULT NULL COMMENT '佣金率',
  `pback_paid` decimal(18,2) DEFAULT NULL,
  `last_debt_m` decimal(18,2) DEFAULT NULL,
  `left_amt` decimal(18,2) DEFAULT NULL COMMENT '余额',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_emp_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `version` int(10) DEFAULT '0' COMMENT '版本号',
  `is_derate` char(1) DEFAULT '0' COMMENT '是否减免 0未减免 1内部减免 2外部减免 3全部减免',
  `in_derate` decimal(18,4) DEFAULT '0.0000' COMMENT '内部减免',
  `out_derate` decimal(18,4) DEFAULT '0.0000' COMMENT '外部减免',
  `cancel_reason` varchar(500) DEFAULT NULL COMMENT '作废原因',
  `repay_type` char(1) NOT NULL DEFAULT '1' COMMENT '还款类型 1正常 2自来账',
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`) USING BTREE,
  KEY `paid_time` (`paid_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件登账表';

/*Data for the table `case_paid_1` */

/*Table structure for table `case_paid_copy` */

DROP TABLE IF EXISTS `case_paid_copy`;

CREATE TABLE `case_paid_copy` (
  `id` varchar(32) NOT NULL,
  `state` int(11) DEFAULT NULL COMMENT '登账状态 0ptp正常 1 cp正常 2确认 3作废ptp 4作废cp(撤销) 5提交委托方',
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件id',
  `ptp_time` datetime DEFAULT NULL COMMENT 'ptp时间',
  `ptp_money` decimal(18,2) DEFAULT NULL COMMENT 'ptp金额',
  `cp_time` datetime DEFAULT NULL COMMENT 'cp时间',
  `cp_money` decimal(18,2) DEFAULT NULL COMMENT 'cp金额',
  `paid_time` datetime DEFAULT NULL COMMENT '确认还款时间',
  `paid_num` decimal(18,2) DEFAULT NULL COMMENT '确认还款金额',
  `sur_user` varchar(25) DEFAULT NULL COMMENT '确认人',
  `sur_time` datetime DEFAULT NULL COMMENT '确认时间',
  `sur_remark` text COMMENT '备注',
  `del_user` varchar(25) DEFAULT NULL COMMENT '删除人',
  `del_time` datetime DEFAULT NULL COMMENT '删除时间',
  `m_paid` decimal(18,2) DEFAULT NULL,
  `cpm_paid` decimal(18,2) DEFAULT NULL,
  `se_no` varchar(32) DEFAULT NULL COMMENT '催收人ID',
  `cm_paid` decimal(18,2) DEFAULT NULL,
  `back_paid` decimal(18,4) DEFAULT NULL COMMENT '公司佣金',
  `back_paid_rate` decimal(18,4) DEFAULT NULL COMMENT '佣金率',
  `pback_paid` decimal(18,2) DEFAULT NULL,
  `last_debt_m` decimal(18,2) DEFAULT NULL,
  `left_amt` decimal(18,2) DEFAULT NULL COMMENT '余额',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_emp_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `version` int(10) DEFAULT '0' COMMENT '版本号',
  `is_derate` char(1) DEFAULT '0' COMMENT '是否减免 0未减免 1内部减免 2外部减免 3全部减免',
  `in_derate` decimal(18,4) DEFAULT '0.0000' COMMENT '内部减免',
  `out_derate` decimal(18,4) DEFAULT '0.0000' COMMENT '外部减免',
  `cancel_reason` varchar(500) DEFAULT NULL COMMENT '作废原因',
  `repay_type` char(1) NOT NULL DEFAULT '1' COMMENT '还款类型 1正常 2自来账',
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`) USING BTREE,
  KEY `paid_time` (`paid_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件登账表';

/*Data for the table `case_paid_copy` */

/*Table structure for table `case_person` */

DROP TABLE IF EXISTS `case_person`;

CREATE TABLE `case_person` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `version` int(20) DEFAULT '0' COMMENT '版本号',
  `status` int(20) DEFAULT '1' COMMENT '状态 0删除 1正常',
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件ID',
  `case_name` varchar(50) DEFAULT NULL COMMENT '员工姓名',
  `case_money` decimal(18,4) DEFAULT NULL COMMENT '案件金额',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `modify_emp_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件人信息表';

/*Data for the table `case_person` */

/*Table structure for table `case_rate` */

DROP TABLE IF EXISTS `case_rate`;

CREATE TABLE `case_rate` (
  `id` varchar(32) NOT NULL,
  `type` char(1) DEFAULT NULL COMMENT '类型 1委托费率1; 2代理费率2; 3代理费率1; 4代理费率2 ',
  `batch_id` varchar(32) DEFAULT NULL COMMENT '批次ID',
  `d0` int(4) DEFAULT NULL COMMENT '天数',
  `d1` int(4) DEFAULT NULL COMMENT '天数',
  `rate1` decimal(4,4) DEFAULT NULL COMMENT '率值',
  `d2` int(4) DEFAULT NULL,
  `rate2` decimal(4,4) DEFAULT NULL,
  `d3` int(4) DEFAULT NULL,
  `rate3` decimal(4,4) DEFAULT NULL,
  `d4` int(4) DEFAULT NULL,
  `rate4` decimal(4,4) DEFAULT NULL,
  `d5` int(4) DEFAULT NULL,
  `rate5` decimal(4,4) DEFAULT NULL,
  `d6` int(4) DEFAULT NULL,
  `rate6` decimal(4,4) DEFAULT NULL,
  `d7` int(4) DEFAULT NULL,
  `rate7` decimal(4,4) DEFAULT NULL,
  `d8` int(4) DEFAULT NULL,
  `rate8` decimal(4,4) DEFAULT NULL,
  `d9` int(4) DEFAULT NULL,
  `rate9` decimal(4,4) DEFAULT NULL,
  `d10` int(4) DEFAULT NULL,
  `rate10` decimal(4,4) DEFAULT NULL,
  `d11` int(4) DEFAULT NULL,
  `rate11` decimal(4,4) DEFAULT NULL,
  `d12` int(4) DEFAULT NULL,
  `rate12` decimal(4,4) DEFAULT NULL,
  `d13` int(4) DEFAULT NULL,
  `rate13` decimal(4,4) DEFAULT NULL,
  `d14` int(4) DEFAULT NULL,
  `rate14` decimal(4,4) DEFAULT NULL,
  `d15` int(4) DEFAULT NULL,
  `rate15` decimal(4,4) DEFAULT NULL,
  `d16` int(4) DEFAULT NULL,
  `rate16` decimal(4,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `batch_id` (`batch_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='费率表';

/*Data for the table `case_rate` */

/*Table structure for table `case_test` */

DROP TABLE IF EXISTS `case_test`;

CREATE TABLE `case_test` (
  `id` varchar(32) NOT NULL,
  `case_code` varchar(100) DEFAULT NULL COMMENT '案件序列号',
  `state` int(10) DEFAULT NULL COMMENT '案件状态 0正常(恢复) 1暂停 2关闭 3退案 4结清 5撤回',
  `collec_state_id` varchar(4) DEFAULT NULL COMMENT '催收状态 对应字典表',
  `batch_id` varchar(32) DEFAULT NULL COMMENT '批次ID',
  `case_date` datetime DEFAULT NULL COMMENT '委案日期',
  `case_backdate` datetime DEFAULT NULL COMMENT '预计退案日',
  `version` int(10) DEFAULT '0',
  `cus_no` varchar(100) DEFAULT NULL COMMENT '客户编号',
  `userId` varchar(100) DEFAULT NULL COMMENT '用户ID',
  `account_no` varchar(100) DEFAULT NULL COMMENT '账号',
  `case_app_no` varchar(100) DEFAULT NULL COMMENT '申请单号',
  `case_file_no` varchar(100) DEFAULT NULL COMMENT '档案号',
  `case_name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `case_sex` varchar(1) DEFAULT NULL COMMENT '性别',
  `case_is_marriage` varchar(1) DEFAULT NULL COMMENT '婚否',
  `case_birthday` datetime DEFAULT NULL COMMENT '生日',
  `case_age` int(3) DEFAULT NULL COMMENT '年龄',
  `province_id` varchar(32) DEFAULT NULL COMMENT '省ID',
  `province_name` varchar(32) DEFAULT NULL COMMENT '省名称',
  `city_id` varchar(32) DEFAULT NULL COMMENT '市ID',
  `city_name` varchar(32) DEFAULT NULL COMMENT '市名称',
  `area_id` varchar(32) DEFAULT NULL COMMENT '催收区域ID',
  `area_name` varchar(50) DEFAULT NULL COMMENT '催收区域名称',
  `bank_account` varchar(50) DEFAULT NULL COMMENT '开户行',
  `case_house_id` varchar(10) DEFAULT NULL COMMENT '案人房产类型',
  `case_card` varchar(50) DEFAULT NULL COMMENT '卡号',
  `case_num` varchar(50) DEFAULT NULL COMMENT '证件号',
  `case_num_id` varchar(32) DEFAULT NULL COMMENT '证件类型ID',
  `case_position` varchar(20) DEFAULT NULL COMMENT '职位',
  `case_position_level` varchar(20) DEFAULT NULL COMMENT '职位级别',
  `account_name` varchar(50) DEFAULT NULL COMMENT '账号名',
  `lend_institution` varchar(50) DEFAULT NULL COMMENT '放款机构',
  `old_collec_record` text COMMENT '原催收记录',
  `principal` decimal(18,4) DEFAULT NULL COMMENT '本金',
  `surplus_principal` decimal(18,4) DEFAULT NULL COMMENT '剩余本金',
  `breach` decimal(18,4) DEFAULT NULL COMMENT '违约金',
  `case_money` decimal(18,4) DEFAULT NULL COMMENT '委案金额',
  `account_money` decimal(18,4) DEFAULT NULL COMMENT '账户金额',
  `loan_contract` varchar(50) DEFAULT NULL COMMENT '贷款合同号',
  `loan_money` decimal(18,4) DEFAULT NULL COMMENT '贷款金额',
  `loan_rate` decimal(18,4) DEFAULT NULL COMMENT '贷款利率',
  `loan_startdate` datetime DEFAULT NULL COMMENT '贷款日期',
  `loan_enddate` datetime DEFAULT NULL COMMENT '贷款截止日期',
  `contract_money` decimal(18,4) DEFAULT NULL COMMENT '签约金额',
  `overdue_money` decimal(18,4) DEFAULT NULL COMMENT '逾期金额',
  `overdue_principal` decimal(18,4) DEFAULT NULL COMMENT '逾期本金',
  `overdue_expense` decimal(18,4) DEFAULT NULL COMMENT '逾期管理费',
  `overdue_age` varchar(20) DEFAULT NULL COMMENT '逾期账龄',
  `overdue_penalty` decimal(18,4) DEFAULT NULL COMMENT '逾期罚息',
  `overdue_interest` decimal(18,4) DEFAULT NULL COMMENT '逾期利息',
  `overdue_days` int(10) DEFAULT NULL COMMENT '逾期天数',
  `overdue_date` datetime DEFAULT NULL COMMENT '逾期开始日期',
  `overdue_periods` int(10) DEFAULT NULL COMMENT '逾期期数',
  `once_overdue_periods` int(10) DEFAULT NULL COMMENT '曾逾期期数',
  `overdue_loan` decimal(18,4) DEFAULT NULL COMMENT '逾期借款',
  `overdue_principal_balance` decimal(18,4) DEFAULT NULL COMMENT '逾期本金余额',
  `overdue_compound` decimal(18,4) DEFAULT NULL COMMENT '逾期复利',
  `social_security_no` varchar(50) DEFAULT NULL COMMENT '社保电脑号',
  `agent_rate` decimal(18,4) DEFAULT NULL COMMENT '代理费率',
  `entrust_rate` decimal(18,4) DEFAULT NULL COMMENT '委托费率',
  `credit_id` varchar(100) DEFAULT NULL COMMENT '信贷分类',
  `stay_periods` int(10) DEFAULT NULL COMMENT '贷还期数',
  `month_repayment` decimal(18,4) DEFAULT NULL COMMENT '每月还款金额',
  `last_repayment` decimal(18,4) DEFAULT NULL COMMENT '最后还款金额',
  `stay_principal` decimal(18,4) DEFAULT NULL COMMENT '待还本金',
  `stay_expense` decimal(18,4) DEFAULT NULL COMMENT '待还管理费',
  `stay_interest` decimal(18,4) DEFAULT NULL COMMENT '待还利息',
  `bill` int(4) DEFAULT NULL COMMENT '账单日',
  `repayment_periods` int(10) DEFAULT NULL COMMENT '已还期数',
  `commodity` varchar(50) DEFAULT NULL COMMENT '商品',
  `company_name` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `company_phone` varchar(100) DEFAULT NULL COMMENT '单位号码',
  `company_address` varchar(200) DEFAULT NULL COMMENT '单位地址',
  `company_zipcode` varchar(200) DEFAULT NULL COMMENT '单位邮编',
  `mobile1` varchar(100) DEFAULT NULL COMMENT '本人手机1',
  `mobile2` varchar(100) DEFAULT NULL COMMENT '本人手机2',
  `family_phone` varchar(100) DEFAULT NULL COMMENT '家庭号码',
  `family_address` varchar(200) DEFAULT NULL COMMENT '家庭地址',
  `family_zipcode` varchar(200) DEFAULT NULL COMMENT '家庭邮编',
  `domicile` varchar(200) DEFAULT NULL COMMENT '户籍地址',
  `mark_id` varchar(50) DEFAULT NULL COMMENT '标ID',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `is_verify` varchar(1) DEFAULT NULL COMMENT '是否核销 0未核销 1已核销',
  `verify_date` datetime DEFAULT NULL COMMENT '核销日期',
  `repayment_type` varchar(20) DEFAULT NULL COMMENT '还款方式',
  `protocol_no` varchar(50) DEFAULT NULL COMMENT '协议编号',
  `loan_area` varchar(20) DEFAULT NULL COMMENT '放款所属地',
  `actual_loan_money` decimal(18,4) DEFAULT NULL COMMENT '实际-放款金额',
  `interest_money` decimal(18,4) DEFAULT NULL COMMENT '欠息余额',
  `penalty_reference` varchar(50) DEFAULT NULL COMMENT '罚息参照',
  `compound_interest_reference` varchar(50) DEFAULT NULL COMMENT '复息参照',
  `quota_no` varchar(50) DEFAULT NULL COMMENT '根额度编号',
  `quota_manager1` varchar(50) DEFAULT NULL COMMENT '根额度主办人客户经理',
  `quota_manager2` varchar(50) DEFAULT NULL COMMENT '根额度协办人客户经理',
  `manager_phone` varchar(50) DEFAULT NULL COMMENT '客户经理电话',
  `collateral_no` varchar(50) DEFAULT NULL COMMENT '押品编号',
  `collateral_id` varchar(50) DEFAULT NULL COMMENT '押品类型ID',
  `collateral_name` varchar(50) DEFAULT NULL COMMENT '押品名称',
  `collateral_address` varchar(200) DEFAULT NULL COMMENT '押品地址',
  `collateral_evalua` varchar(50) DEFAULT NULL COMMENT '押品评估值',
  `repay_date` int(4) DEFAULT NULL COMMENT '还款日',
  `total_construc` varchar(50) DEFAULT NULL COMMENT '建筑面积合计',
  `regione` varchar(50) DEFAULT NULL COMMENT '大区名称',
  `sub_center` varchar(50) DEFAULT NULL COMMENT '分中心名称',
  `sales_dep` varchar(50) DEFAULT NULL COMMENT '营业部名称',
  `consult_fee` decimal(18,4) DEFAULT NULL COMMENT '咨询费',
  `audit_fee` decimal(18,4) DEFAULT NULL COMMENT '审核费',
  `service_fee` decimal(18,4) DEFAULT NULL COMMENT '服务费',
  `adviser_fee` decimal(18,4) DEFAULT NULL COMMENT '顾问费',
  `fee_total` decimal(18,4) DEFAULT NULL COMMENT '费用总和',
  `initial_repay` datetime DEFAULT NULL COMMENT '起始还款日',
  `due_periods` int(10) DEFAULT NULL COMMENT '应还期数',
  `penalty_days` decimal(18,4) DEFAULT NULL COMMENT '日罚息',
  `remain_history` varchar(50) DEFAULT NULL COMMENT '历史遗留',
  `debit_bank_code` varchar(50) DEFAULT NULL COMMENT '扣款银行代码',
  `debit_bank_name` varchar(50) DEFAULT NULL COMMENT '扣款银行名称',
  `debit_account` varchar(50) DEFAULT NULL COMMENT '扣款账号',
  `relief_policy` varchar(50) DEFAULT NULL COMMENT '减免政策',
  `remark1` text COMMENT '备注1',
  `remark2` text COMMENT '备注2',
  `case_assigned_id` varchar(32) DEFAULT NULL COMMENT '被分配人ID',
  `case_assign_id` varchar(32) DEFAULT NULL COMMENT '分配人ID',
  `case_assign_name` varchar(32) DEFAULT NULL COMMENT '分配人名称',
  `case_assign_time` datetime DEFAULT NULL COMMENT '分配时间',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `modify_emp_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(2) DEFAULT NULL COMMENT '系统状态',
  `org_id` varchar(32) DEFAULT NULL COMMENT '组织id-催收方id',
  `org_name` varchar(50) DEFAULT NULL COMMENT '组织名称-催收方名称',
  `next_follow_time` datetime DEFAULT NULL COMMENT '下次跟进时间',
  `next_follow_state` varchar(50) DEFAULT NULL COMMENT '下次跟进状态 1电话催收 2外访催收',
  `is_update` char(1) DEFAULT '0' COMMENT '是否更新 0否 1是',
  `handle` varchar(50) DEFAULT NULL COMMENT '手别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件表';

/*Data for the table `case_test` */

/*Table structure for table `ccc` */

DROP TABLE IF EXISTS `ccc`;

CREATE TABLE `ccc` (
  `id` varchar(32) NOT NULL,
  `batch_code` varchar(50) DEFAULT NULL COMMENT '批次号',
  `state` int(11) DEFAULT '1' COMMENT '批次导入状态 0未导入 1已导入未退案 2已导入已退案',
  `version` int(11) DEFAULT '0' COMMENT '版本号',
  `entrust_product_id` varchar(32) DEFAULT NULL COMMENT '产品ID',
  `entrust_id` varchar(32) DEFAULT NULL COMMENT '委托方id',
  `total_money` decimal(18,4) DEFAULT NULL COMMENT '总金额',
  `total_number` int(255) DEFAULT NULL COMMENT '总户数',
  `type_id` varchar(32) DEFAULT NULL COMMENT '案件类型',
  `begin_date` date DEFAULT NULL COMMENT '委案开始日期',
  `area_id` bigint(20) DEFAULT NULL COMMENT '催收地区id',
  `end_date` date DEFAULT NULL COMMENT '委案截止日期',
  `actual_end_date` datetime DEFAULT NULL COMMENT '实际退案日期',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `modify_emp_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `remark` text COMMENT '备注',
  `target` decimal(18,4) DEFAULT NULL COMMENT '回款率',
  `achieve` decimal(18,4) DEFAULT NULL COMMENT '业绩率',
  `collection_id` varchar(32) DEFAULT NULL COMMENT '催收方',
  `batch_xls` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `batch_log` text COMMENT '批次日志',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `bath_tips` varchar(255) DEFAULT NULL COMMENT '分配提示',
  `status` int(11) DEFAULT '1' COMMENT '软删除',
  `wdc_desc` varchar(255) DEFAULT NULL COMMENT '撤案说明',
  `is_upload` int(2) DEFAULT NULL COMMENT '是否上传 0未上传 1已上传',
  `template_type` varchar(32) DEFAULT '1' COMMENT '模板类型 对应字典表id 1:P2P 2:银行 3:车贷',
  `handle` varchar(32) DEFAULT NULL COMMENT '手次'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ccc` */

/*Table structure for table `cno_in_statistics` */

DROP TABLE IF EXISTS `cno_in_statistics`;

CREATE TABLE `cno_in_statistics` (
  `id` varchar(40) NOT NULL,
  `cno` varchar(20) DEFAULT NULL COMMENT '坐席工号',
  `emp_id` varchar(32) DEFAULT NULL COMMENT '员工id',
  `emp_name` varchar(32) DEFAULT NULL COMMENT '员工姓名',
  `org_id` varchar(32) DEFAULT NULL COMMENT '机构号',
  `callInCount` int(10) DEFAULT NULL COMMENT '来电次数',
  `callInConnectCount` int(10) DEFAULT NULL COMMENT '来电接通次数',
  `callInConnectDuration` varchar(20) DEFAULT NULL COMMENT '来电接通时长',
  `callInConnectDurationAvg` varchar(20) DEFAULT NULL COMMENT '平均来电接通时长',
  `callInConnectRate` varchar(20) DEFAULT NULL COMMENT '来电接通率',
  `bridgeDurationDayAvg` varchar(20) DEFAULT NULL COMMENT '平均每日来电时长',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_cno` (`cno`) USING BTREE,
  KEY `idx_org_id` (`org_id`) USING BTREE,
  KEY `idx_createTime` (`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电催来电坐席统计';

/*Data for the table `cno_in_statistics` */

/*Table structure for table `cno_out_statistics` */

DROP TABLE IF EXISTS `cno_out_statistics`;

CREATE TABLE `cno_out_statistics` (
  `id` varchar(40) NOT NULL,
  `cno` varchar(20) DEFAULT NULL COMMENT '坐席工号',
  `emp_id` varchar(32) DEFAULT NULL COMMENT '员工id',
  `emp_name` varchar(32) DEFAULT NULL COMMENT '员工姓名',
  `org_id` varchar(32) DEFAULT NULL COMMENT '机构号',
  `bridgeDurationTotal` varchar(20) DEFAULT NULL COMMENT '总通话时长',
  `callOutCount` int(10) DEFAULT NULL COMMENT '致电次数',
  `callOutConnectCount` int(10) DEFAULT NULL COMMENT '致电接通次数',
  `callOutConnectDuration` varchar(20) DEFAULT NULL COMMENT '致电接通时长',
  `callOutConnectDurationAvg` varchar(20) DEFAULT NULL COMMENT '平均致电接通时长',
  `callOutConnectRate` varchar(20) DEFAULT NULL COMMENT '致电接通率',
  `bridgeDurationDayAvg` varchar(20) DEFAULT NULL COMMENT '平均每日通话时长',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_cno` (`cno`) USING BTREE,
  KEY `idx_org_id` (`org_id`) USING BTREE,
  KEY `idx_createTime` (`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电催致电坐席统计';

/*Data for the table `cno_out_statistics` */

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` varchar(32) NOT NULL COMMENT '评论id',
  `content` text COMMENT '评语',
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件id',
  `user_name` varchar(25) DEFAULT NULL COMMENT '评论人',
  `comment_time` datetime DEFAULT NULL COMMENT '评论时间',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

/*Table structure for table `cus_area` */

DROP TABLE IF EXISTS `cus_area`;

CREATE TABLE `cus_area` (
  `are_id` bigint(20) NOT NULL,
  `are_name` varchar(100) DEFAULT NULL,
  `are_isenabled` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`are_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `cus_area` */

/*Table structure for table `cus_city` */

DROP TABLE IF EXISTS `cus_city`;

CREATE TABLE `cus_city` (
  `city_id` bigint(20) NOT NULL,
  `city_prv_id` bigint(20) DEFAULT NULL,
  `city_name` varchar(100) DEFAULT NULL,
  `city_isenabled` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `cus_city` */

/*Table structure for table `cus_province` */

DROP TABLE IF EXISTS `cus_province`;

CREATE TABLE `cus_province` (
  `prv_id` bigint(20) NOT NULL,
  `prv_area_id` bigint(20) DEFAULT NULL,
  `prv_name` varchar(100) DEFAULT NULL,
  `prv_isenabled` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`prv_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `cus_province` */

/*Table structure for table `employee_info` */

DROP TABLE IF EXISTS `employee_info`;

CREATE TABLE `employee_info` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `salt` varchar(32) DEFAULT NULL COMMENT '盐值(MD5)',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `modify_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `version` int(20) DEFAULT '0' COMMENT '版本号',
  `number` varchar(32) DEFAULT NULL COMMENT '员工编号',
  `status` int(20) DEFAULT '1' COMMENT '状态',
  `user_name` varchar(50) DEFAULT NULL COMMENT '员工姓名',
  `personal_id` varchar(50) DEFAULT NULL COMMENT '身份证号',
  `sex` tinyint(1) DEFAULT '1' COMMENT '性别',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `nation` varchar(100) DEFAULT '0' COMMENT '民族',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `login_name` varchar(32) DEFAULT NULL COMMENT '登录名',
  `married` tinyint(1) DEFAULT '0' COMMENT '婚姻状况',
  `province` varchar(50) DEFAULT '0' COMMENT '省份',
  `city` varchar(50) DEFAULT '0' COMMENT '城市',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `join_time` date DEFAULT NULL COMMENT '入职时间',
  `position_id` varchar(32) DEFAULT '0' COMMENT '岗位号',
  `org_id` varchar(32) DEFAULT '0' COMMENT '机构号',
  `cc_login` varchar(255) DEFAULT NULL COMMENT '坐席用户',
  `cc_pwd` varchar(255) DEFAULT NULL COMMENT '坐席密码',
  `cc_server` varchar(50) DEFAULT NULL COMMENT '服务地址',
  `cc_phone` varchar(50) DEFAULT NULL COMMENT '坐席号',
  `contact_mode` varchar(50) DEFAULT NULL COMMENT '联系方式',
  `attach_org_id` text COMMENT '附加区域',
  `attach_entrust_id` text COMMENT '附加委托方',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_name` (`login_name`),
  KEY `user_name` (`user_name`) USING BTREE,
  KEY `idx_cc_phone` (`cc_phone`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工信息表';

/*Data for the table `employee_info` */

insert  into `employee_info`(`id`,`salt`,`create_time`,`modify_time`,`version`,`number`,`status`,`user_name`,`personal_id`,`sex`,`birthday`,`nation`,`password`,`login_name`,`married`,`province`,`city`,`email`,`join_time`,`position_id`,`org_id`,`cc_login`,`cc_pwd`,`cc_server`,`cc_phone`,`contact_mode`,`attach_org_id`,`attach_entrust_id`) values ('1','1','2018-04-25 11:23:35','2018-04-26 11:23:37',0,'1',1,'1','1',1,'2018-04-25 19:43:11','0','1','1',0,'山东','1','1','2018-04-25','0','0','1','1','1','1','1',NULL,NULL),('2','2','2018-04-26 20:06:52','2018-04-27 20:06:55',0,'2',1,'2','2',1,'2018-04-25 20:07:03','0','2','2',0,'北京','2','2','2018-04-25','0','0','2','2','2','2','2',NULL,NULL);

/*Table structure for table `entrust` */

DROP TABLE IF EXISTS `entrust`;

CREATE TABLE `entrust` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '委拖方名称',
  `code` varchar(50) DEFAULT NULL COMMENT '委托方简码',
  `case_type_id` text COMMENT '案件类型',
  `product_name` text COMMENT '产品名称',
  `cooperate_date` datetime DEFAULT NULL COMMENT '合作日期',
  `address` varchar(255) DEFAULT NULL COMMENT '委托方联系地址',
  `service_hotline` varchar(50) DEFAULT NULL COMMENT '委托方客务热线',
  `abutment_person` varchar(50) DEFAULT NULL COMMENT '委托方对接人',
  `abutment_email` varchar(50) DEFAULT NULL COMMENT '对接邮箱',
  `abutment_phone` varchar(50) DEFAULT NULL COMMENT '对接电话/传真',
  `case_frequency` char(1) DEFAULT NULL COMMENT '委案频率 1周 2月 3季',
  `effec_repay_period` varchar(50) DEFAULT NULL COMMENT '有效还款期段',
  `collec_nominal` varchar(50) DEFAULT NULL COMMENT '催收名义',
  `collec_term` varchar(50) DEFAULT NULL COMMENT '催收期限',
  `stay_require` varchar(50) DEFAULT NULL COMMENT '留案要求',
  `back_require` varchar(100) DEFAULT NULL COMMENT '退案要求',
  `report_period` char(1) DEFAULT NULL COMMENT '报告周期 1周 2月 3季',
  `settlement_period` char(1) DEFAULT NULL COMMENT '结算周期 1周 2月 3季',
  `repayment_method` varchar(50) DEFAULT NULL COMMENT '还款方式',
  `discount_reduction` varchar(50) DEFAULT NULL COMMENT '折扣减免',
  `period_repayment_require` varchar(100) DEFAULT NULL COMMENT '分期还款要求',
  `cancel_account` varchar(100) DEFAULT NULL COMMENT '如何销卡/销户',
  `resource_retrieve_require` varchar(100) DEFAULT NULL COMMENT '源资取调要求',
  `collec_submit_require` varchar(100) DEFAULT NULL COMMENT '催记提交要求',
  `complaint_handle_require` varchar(100) DEFAULT NULL COMMENT '投诉处理要求',
  `tape_submit_require` varchar(100) DEFAULT NULL COMMENT '录音提交要求',
  `data_destruc_require` varchar(100) DEFAULT NULL COMMENT '资料销毁要求',
  `letter_recovery_require` varchar(100) DEFAULT NULL COMMENT '信函回收要求',
  `report_require` varchar(100) DEFAULT NULL COMMENT '报告/报表要求',
  `cus_special_instruc` varchar(100) DEFAULT NULL COMMENT '客户特别指示',
  `state` int(11) DEFAULT NULL COMMENT '启用/停用',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `contract_name` varchar(100) DEFAULT NULL COMMENT '合同名称',
  `remark` text COMMENT '备注',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人ID',
  `create_emp_name` varchar(100) DEFAULT NULL COMMENT '创建人名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='委托方表';

/*Data for the table `entrust` */

/*Table structure for table `entrust_case_product_releation` */

DROP TABLE IF EXISTS `entrust_case_product_releation`;

CREATE TABLE `entrust_case_product_releation` (
  `id` varchar(32) NOT NULL,
  `entrust_id` varchar(32) DEFAULT NULL COMMENT '委托方ID',
  `entrust_name` varchar(50) DEFAULT NULL COMMENT '委托方名称',
  `product_id` varchar(32) DEFAULT NULL COMMENT '产品ID',
  `case_source_id` varchar(32) DEFAULT NULL COMMENT '案源地ID',
  `case_source_name` varchar(50) DEFAULT NULL COMMENT '案源地名称',
  `case_type_id` varchar(50) DEFAULT NULL COMMENT '案件类型ID',
  `case_type_name` varchar(50) DEFAULT NULL COMMENT '案件类型名称',
  `code` varchar(50) DEFAULT NULL COMMENT '全简码',
  `handle_id` varchar(32) DEFAULT NULL COMMENT '手次ID',
  `handle_name` varchar(32) DEFAULT NULL COMMENT '手次名称',
  PRIMARY KEY (`id`),
  KEY `entrust_id` (`entrust_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='委托方案源产品关系表';

/*Data for the table `entrust_case_product_releation` */

/*Table structure for table `entrust_case_source` */

DROP TABLE IF EXISTS `entrust_case_source`;

CREATE TABLE `entrust_case_source` (
  `id` varchar(32) NOT NULL,
  `entrust_id` varchar(32) DEFAULT NULL COMMENT '委托方ID',
  `name` varchar(50) DEFAULT NULL COMMENT '案源地',
  `code` varchar(50) DEFAULT NULL COMMENT '案源地简码',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人id',
  `create_emp_name` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `state` int(11) DEFAULT NULL COMMENT '启用/停用',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `modify_name` varchar(32) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`),
  KEY `entrust_id` (`entrust_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='委托方案源表';

/*Data for the table `entrust_case_source` */

/*Table structure for table `entrust_copy` */

DROP TABLE IF EXISTS `entrust_copy`;

CREATE TABLE `entrust_copy` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '委拖方名称',
  `code` varchar(50) DEFAULT NULL COMMENT '委托方简码',
  `case_type_id` text COMMENT '案件类型',
  `product_name` text COMMENT '产品名称',
  `cooperate_date` datetime DEFAULT NULL COMMENT '合作日期',
  `address` varchar(255) DEFAULT NULL COMMENT '委托方联系地址',
  `service_hotline` varchar(50) DEFAULT NULL COMMENT '委托方客务热线',
  `abutment_person` varchar(50) DEFAULT NULL COMMENT '委托方对接人',
  `abutment_email` varchar(50) DEFAULT NULL COMMENT '对接邮箱',
  `abutment_phone` varchar(50) DEFAULT NULL COMMENT '对接电话/传真',
  `case_frequency` char(1) DEFAULT NULL COMMENT '委案频率 1周 2月 3季',
  `effec_repay_period` varchar(50) DEFAULT NULL COMMENT '有效还款期段',
  `collec_nominal` varchar(50) DEFAULT NULL COMMENT '催收名义',
  `collec_term` varchar(50) DEFAULT NULL COMMENT '催收期限',
  `stay_require` varchar(50) DEFAULT NULL COMMENT '留案要求',
  `back_require` varchar(100) DEFAULT NULL COMMENT '退案要求',
  `report_period` char(1) DEFAULT NULL COMMENT '报告周期 1周 2月 3季',
  `settlement_period` char(1) DEFAULT NULL COMMENT '结算周期 1周 2月 3季',
  `repayment_method` varchar(50) DEFAULT NULL COMMENT '还款方式',
  `discount_reduction` varchar(50) DEFAULT NULL COMMENT '折扣减免',
  `period_repayment_require` varchar(100) DEFAULT NULL COMMENT '分期还款要求',
  `cancel_account` varchar(100) DEFAULT NULL COMMENT '如何销卡/销户',
  `resource_retrieve_require` varchar(100) DEFAULT NULL COMMENT '源资取调要求',
  `collec_submit_require` varchar(100) DEFAULT NULL COMMENT '催记提交要求',
  `complaint_handle_require` varchar(100) DEFAULT NULL COMMENT '投诉处理要求',
  `tape_submit_require` varchar(100) DEFAULT NULL COMMENT '录音提交要求',
  `data_destruc_require` varchar(100) DEFAULT NULL COMMENT '资料销毁要求',
  `letter_recovery_require` varchar(100) DEFAULT NULL COMMENT '信函回收要求',
  `report_require` varchar(100) DEFAULT NULL COMMENT '报告/报表要求',
  `cus_special_instruc` varchar(100) DEFAULT NULL COMMENT '客户特别指示',
  `state` int(11) DEFAULT NULL COMMENT '启用/停用',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='委托方表';

/*Data for the table `entrust_copy` */

/*Table structure for table `entrust_linkman` */

DROP TABLE IF EXISTS `entrust_linkman`;

CREATE TABLE `entrust_linkman` (
  `id` varchar(32) NOT NULL,
  `entrust_product_id` varchar(32) DEFAULT NULL COMMENT '产品id',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `qq` varchar(50) DEFAULT NULL COMMENT 'qq',
  `WeChat` varchar(50) DEFAULT NULL COMMENT '微信',
  `phone` varchar(50) DEFAULT NULL COMMENT '联系人电话',
  `position` varchar(32) DEFAULT NULL COMMENT '职位',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_emp_name` varchar(32) DEFAULT NULL COMMENT '创建人',
  `remark` text COMMENT '备注',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `modify_name` varchar(32) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`),
  KEY `entrust_product_id` (`entrust_product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='委托方联系人表';

/*Data for the table `entrust_linkman` */

/*Table structure for table `entrust_product` */

DROP TABLE IF EXISTS `entrust_product`;

CREATE TABLE `entrust_product` (
  `staff_name` varchar(32) DEFAULT NULL COMMENT '营业员姓名',
  `id` varchar(32) NOT NULL,
  `case_source_id` varchar(32) DEFAULT NULL COMMENT '案源地ID',
  `case_type_id` varchar(32) DEFAULT NULL COMMENT '案件类型',
  `case_type_name` varchar(50) DEFAULT NULL COMMENT '案件类型名称',
  `handle` varchar(32) DEFAULT NULL COMMENT '手次',
  `handle_name` varchar(32) DEFAULT NULL COMMENT '手次名称',
  `code` varchar(50) DEFAULT NULL COMMENT '全简码',
  `cus_type` varchar(50) DEFAULT NULL COMMENT '客户类型',
  `rate` decimal(18,4) DEFAULT NULL COMMENT '费率',
  `entrust_id` varchar(32) DEFAULT NULL COMMENT '委托方id',
  `entrust_abbrevia` varchar(32) DEFAULT NULL COMMENT '委托方简称',
  `product_category_id` varchar(32) DEFAULT NULL COMMENT '产品分类id',
  `guarantee_way_id` varchar(32) DEFAULT NULL COMMENT '担保方式id',
  `purpose_id` varchar(32) DEFAULT NULL COMMENT '用途id',
  `contract_award_date` datetime DEFAULT NULL COMMENT '合同签约日期',
  `contract_cycle` varchar(32) DEFAULT NULL COMMENT '合同周期',
  `custom_service_total` varchar(32) DEFAULT NULL COMMENT '客服总窗',
  `service_project` varchar(32) DEFAULT NULL COMMENT '服务项目',
  `area_id1` varchar(32) DEFAULT NULL COMMENT '省',
  `area_id2` varchar(32) DEFAULT NULL COMMENT '市',
  `area_id3` varchar(32) DEFAULT NULL COMMENT '区县',
  `address` varchar(500) DEFAULT NULL COMMENT '地址',
  `staff` varchar(500) DEFAULT NULL COMMENT '营业员',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人id',
  `create_emp_name` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `state` int(11) DEFAULT NULL COMMENT '启用/停用',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `modify_name` varchar(32) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`),
  KEY `case_source_id` (`case_source_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='委托方案源表';

/*Data for the table `entrust_product` */

/*Table structure for table `entrust_visit` */

DROP TABLE IF EXISTS `entrust_visit`;

CREATE TABLE `entrust_visit` (
  `id` varchar(32) NOT NULL,
  `entrust_product_id` varchar(32) DEFAULT NULL COMMENT '产品ID',
  `contact_name` varchar(50) DEFAULT NULL COMMENT '联系人',
  `contact_time` datetime DEFAULT NULL COMMENT '联系时间',
  `communicate_mode` varchar(32) DEFAULT NULL COMMENT '沟通方式',
  `negotiation_target` text COMMENT '洽淡目标',
  `negotiation_schedule` text COMMENT '洽淡进度',
  `next_follow_time` datetime DEFAULT NULL COMMENT '下次跟进时间',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `entrust_product_id` (`entrust_product_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='委托方产品表';

/*Data for the table `entrust_visit` */

/*Table structure for table `express` */

DROP TABLE IF EXISTS `express`;

CREATE TABLE `express` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `case_apply_id` varchar(32) DEFAULT NULL COMMENT '协催申请id',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `card_type` varchar(50) DEFAULT NULL COMMENT '证件类型',
  `card_num` varchar(50) DEFAULT NULL COMMENT '证件号',
  `his_user_name` varchar(50) DEFAULT NULL COMMENT '历史用户名',
  `mobile` varchar(50) DEFAULT NULL COMMENT '手机',
  `family_phone` varchar(50) DEFAULT NULL COMMENT '家庭电话',
  `family_address` varchar(500) DEFAULT NULL COMMENT '家庭地址',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(50) DEFAULT NULL COMMENT 'qq',
  `qq_group` varchar(50) DEFAULT NULL COMMENT 'qq群',
  `wechat` varchar(50) DEFAULT NULL COMMENT '微信',
  `blog` varchar(50) DEFAULT NULL COMMENT '微博',
  `consignee_name` varchar(50) DEFAULT NULL COMMENT '收货人姓名',
  `consignee_phone` varchar(50) DEFAULT NULL COMMENT '收货人电话',
  `consignee_address` varchar(50) DEFAULT NULL COMMENT '收货人地址',
  `unit_name` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `unit_phone` varchar(50) DEFAULT NULL COMMENT '单位电话',
  `unit_address` varchar(50) DEFAULT NULL COMMENT '单位地址',
  `important_linkman_name` varchar(50) DEFAULT NULL COMMENT '重要联系人名称',
  `important_linkman_cardNum` varchar(50) DEFAULT NULL COMMENT '重要联系人身份证号',
  `important_linkman_phone` varchar(50) DEFAULT NULL COMMENT '重要联系人电话',
  `important_linkman_address` varchar(50) DEFAULT NULL COMMENT '重要联系人地址',
  `linkman_name` varchar(50) DEFAULT NULL COMMENT '联系人名称',
  `linkman_cardNum` varchar(50) DEFAULT NULL COMMENT '联系人身份证号',
  `linkman_phone` varchar(50) DEFAULT NULL COMMENT '联系人电话',
  `linkman_address` varchar(50) DEFAULT NULL COMMENT '联系人地址',
  `linkman_unitName` varchar(50) DEFAULT NULL COMMENT '联系人单位名称',
  `obtain_time` datetime DEFAULT NULL COMMENT '获取时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `status` int(11) DEFAULT '1' COMMENT '联系人状态 0未知 1有效 2无效',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `case_apply_id` (`case_apply_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='快递表';

/*Data for the table `express` */

/*Table structure for table `holiday` */

DROP TABLE IF EXISTS `holiday`;

CREATE TABLE `holiday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `holiday` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `holiday` */

/*Table structure for table `hurry_record` */

DROP TABLE IF EXISTS `hurry_record`;

CREATE TABLE `hurry_record` (
  `id` varchar(32) NOT NULL,
  `hur_cat` varchar(50) DEFAULT NULL COMMENT '业务类型',
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件表ID',
  `content` text COMMENT '协催操作内容',
  `hurry_record_id` varchar(32) DEFAULT NULL COMMENT '记录id 对应各业务表',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `operator_name` varchar(32) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`),
  KEY `case_id` (`case_id`) USING BTREE,
  KEY `hurry_record_id` (`hurry_record_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='协催表';

/*Data for the table `hurry_record` */

/*Table structure for table `last_phone_time` */

DROP TABLE IF EXISTS `last_phone_time`;

CREATE TABLE `last_phone_time` (
  `case_id` varchar(32) NOT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `last_phone_time` */

/*Table structure for table `lim_user` */

DROP TABLE IF EXISTS `lim_user`;

CREATE TABLE `lim_user` (
  `user_code` varchar(50) NOT NULL,
  `user_loginName` varchar(50) DEFAULT NULL,
  `user_pwd` varchar(50) DEFAULT NULL,
  `user_up_code` varchar(50) DEFAULT NULL,
  `user_lev` char(1) DEFAULT NULL,
  `user_so_code` varchar(50) DEFAULT NULL,
  `user_se_id` bigint(20) DEFAULT NULL,
  `user_se_name` varchar(100) DEFAULT NULL,
  `user_desc` longtext,
  `user_isenabled` char(1) DEFAULT NULL,
  `user_num` varchar(200) DEFAULT NULL,
  `user_role_id` bigint(20) DEFAULT NULL,
  `user_islogin` char(1) DEFAULT NULL,
  `user_ip` varchar(50) DEFAULT NULL,
  `user_fail` int(11) DEFAULT NULL,
  `user_pwd_upd_date` datetime DEFAULT NULL,
  `user_cti_login` varchar(255) DEFAULT NULL,
  `user_cti_pwd` varchar(255) DEFAULT NULL,
  `user_cti_server` varchar(50) DEFAULT NULL,
  `user_cti_phone` varchar(50) DEFAULT NULL,
  `user_grp_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `lim_user` */

/*Table structure for table `message_reminder` */

DROP TABLE IF EXISTS `message_reminder`;

CREATE TABLE `message_reminder` (
  `id` varchar(32) NOT NULL,
  `remind_type` int(11) DEFAULT NULL COMMENT '提醒类型,0 user 1 role',
  `remind_target` varchar(255) DEFAULT NULL COMMENT '提醒对象',
  `content` varchar(100) DEFAULT NULL COMMENT '提醒内容',
  `is_read` int(11) DEFAULT '0' COMMENT '是否已读 0 未读 1 已读',
  `url` varchar(255) DEFAULT NULL COMMENT '提醒后跳转的链接',
  `title` varchar(255) DEFAULT NULL COMMENT 'url打开后对应的tab的title',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息提醒表';

/*Data for the table `message_reminder` */

/*Table structure for table `phone_record` */

DROP TABLE IF EXISTS `phone_record`;

CREATE TABLE `phone_record` (
  `id` varchar(32) NOT NULL,
  `type_id` varchar(32) DEFAULT NULL COMMENT '催收结果 字典表ID COLLECTION_RESULT类型',
  `contact` varchar(200) DEFAULT NULL COMMENT '联系方式 电话/地址',
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件id',
  `content` text COMMENT '通话记录/催收记录',
  `con_type` varchar(50) DEFAULT NULL COMMENT '电话类型',
  `pr_pa_id` bigint(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `pr_cat` varchar(32) DEFAULT NULL COMMENT '催收措施 0电话催收 1外访 2信函 3辅助渠道',
  `relation` varchar(50) DEFAULT NULL COMMENT '关系',
  `collec_state_id` varchar(32) DEFAULT NULL COMMENT '催收状态 对应字典表 caseState',
  `negotiation` varchar(50) DEFAULT NULL COMMENT '谈判方式',
  `pr_cc_id` bigint(20) DEFAULT NULL,
  `call_id` bigint(20) DEFAULT NULL COMMENT '呼叫中心id',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `ptp_time` datetime DEFAULT NULL COMMENT 'ptp时间',
  `ptp_money` decimal(18,4) DEFAULT NULL COMMENT 'ptp金额',
  `cp_state` char(1) DEFAULT '0' COMMENT 'ptp状态 0未转cp 1已转cp',
  PRIMARY KEY (`id`),
  KEY `collec_state_id` (`collec_state_id`) USING BTREE,
  KEY `pr_cat` (`pr_cat`) USING BTREE,
  KEY `create_emp_id` (`create_emp_id`) USING BTREE,
  KEY `idx_case_id_time` (`case_id`,`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `phone_record` */

/*Table structure for table `region` */

DROP TABLE IF EXISTS `region`;

CREATE TABLE `region` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `administration_code` int(11) NOT NULL COMMENT '行政代号',
  `name` varchar(64) NOT NULL COMMENT '区域名称',
  `father_name` varchar(64) DEFAULT NULL COMMENT '父级名称',
  `city_code` char(6) DEFAULT NULL COMMENT '所属市代码',
  `area_grade` tinyint(4) NOT NULL COMMENT '区域等级',
  `parent_id` int(11) DEFAULT '0' COMMENT '父级id',
  PRIMARY KEY (`id`),
  KEY `ix_stat_parent_id` (`parent_id`),
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='案件区域表';

/*Data for the table `region` */

/*Table structure for table `region_out_statistics` */

DROP TABLE IF EXISTS `region_out_statistics`;

CREATE TABLE `region_out_statistics` (
  `id` varchar(40) NOT NULL,
  `customerProvince` varchar(32) DEFAULT NULL COMMENT '省',
  `customerCity` varchar(32) DEFAULT NULL COMMENT '市',
  `cno` varchar(20) DEFAULT NULL COMMENT '坐席工号',
  `emp_id` varchar(32) DEFAULT NULL COMMENT '员工id',
  `emp_name` varchar(32) DEFAULT NULL COMMENT '员工姓名',
  `org_id` varchar(32) DEFAULT NULL COMMENT '机构号',
  `callOutCount` int(10) DEFAULT NULL COMMENT '致电总次数',
  `callOutConnectCount` int(10) DEFAULT NULL COMMENT '致电接通次数',
  `callOutConnectDuration` varchar(20) DEFAULT NULL COMMENT '致电接通时长',
  `callOutConnectDurationAvg` varchar(20) DEFAULT NULL COMMENT '平均致电接通时长',
  `callOutConnectRate` varchar(20) DEFAULT NULL COMMENT '致电接通率',
  `bridgeDurationDayAvg` varchar(20) DEFAULT NULL COMMENT '平均每日通话时长',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_cno` (`cno`) USING BTREE,
  KEY `idx_org_id` (`org_id`) USING BTREE,
  KEY `idx_createTime` (`createTime`) USING BTREE,
  KEY `idx_customerProvince` (`customerProvince`) USING BTREE,
  KEY `idx_customerCity` (`customerCity`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电催地域统计';

/*Data for the table `region_out_statistics` */

/*Table structure for table `sal_emp` */

DROP TABLE IF EXISTS `sal_emp`;

CREATE TABLE `sal_emp` (
  `se_no` bigint(20) NOT NULL,
  `se_so_code` varchar(50) DEFAULT NULL,
  `se_name` varchar(100) DEFAULT NULL,
  `se_ide_code` varchar(50) DEFAULT NULL,
  `se_pos` varchar(50) DEFAULT NULL,
  `se_sex` varchar(50) DEFAULT NULL,
  `se_prob` varchar(50) DEFAULT NULL,
  `se_bir_place` varchar(50) DEFAULT NULL,
  `se_acc_place` varchar(100) DEFAULT NULL,
  `se_birth` varchar(50) DEFAULT NULL,
  `se_marry` varchar(10) DEFAULT NULL,
  `se_type` varchar(50) DEFAULT NULL,
  `se_job_lev` bigint(20) DEFAULT NULL,
  `se_job_cate` varchar(50) DEFAULT NULL,
  `se_job_title` varchar(50) DEFAULT NULL,
  `se_start_day` datetime DEFAULT NULL,
  `se_year_pay` varchar(50) DEFAULT NULL,
  `se_cost_center` varchar(50) DEFAULT NULL,
  `se_email` varchar(50) DEFAULT NULL,
  `se_nation` varchar(50) DEFAULT NULL,
  `se_poli_status` varchar(50) DEFAULT NULL,
  `se_edu` varchar(50) DEFAULT NULL,
  `se_tel` varchar(50) DEFAULT NULL,
  `se_phone` varchar(50) DEFAULT NULL,
  `se_qq` varchar(50) DEFAULT NULL,
  `se_msn` varchar(50) DEFAULT NULL,
  `se_rec_source` varchar(100) DEFAULT NULL,
  `se_prov_fund` varchar(50) DEFAULT NULL,
  `se_job_date` datetime DEFAULT NULL,
  `se_hou_reg` varchar(50) DEFAULT NULL,
  `se_social_code` varchar(50) DEFAULT NULL,
  `se_rap` varchar(50) DEFAULT NULL,
  `se_address` text,
  `se_remark` longtext,
  `se_bank_name` varchar(50) DEFAULT NULL,
  `se_bank_card` varchar(50) DEFAULT NULL,
  `se_weal_address` varchar(50) DEFAULT NULL,
  `se_weal_pos` varchar(50) DEFAULT NULL,
  `se_isovertime` varchar(50) DEFAULT NULL,
  `se_attendance` varchar(50) DEFAULT NULL,
  `se_card_num` varchar(50) DEFAULT NULL,
  `se_pic` longtext,
  `se_isenabled` char(1) DEFAULT NULL,
  `se_inser_date` datetime DEFAULT NULL,
  `se_code` varchar(50) DEFAULT NULL,
  `se_log` longtext,
  `se_alt_date` datetime DEFAULT NULL,
  `se_inser_user` varchar(50) DEFAULT NULL,
  `se_alt_user` varchar(50) DEFAULT NULL,
  `se_end_date` datetime DEFAULT NULL,
  `se_edc_bac` longtext,
  `se_work_ex` longtext,
  `se_user_code` varchar(50) DEFAULT NULL,
  `se_per_tel` varchar(50) DEFAULT NULL,
  `se_plan_sign_date` datetime DEFAULT NULL,
  `se_sign_date` datetime DEFAULT NULL,
  `se_credit_date` datetime DEFAULT NULL,
  `se_college` varchar(200) DEFAULT NULL,
  `se_transfer` longtext,
  PRIMARY KEY (`se_no`),
  KEY `IX_sal_emp` (`se_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sal_emp` */

/*Table structure for table `sheet0` */

DROP TABLE IF EXISTS `sheet0`;

CREATE TABLE `sheet0` (
  `case_code` varchar(255) DEFAULT NULL,
  `case_id` varchar(255) DEFAULT NULL,
  `name1` varchar(255) DEFAULT NULL,
  `re1` varchar(255) DEFAULT NULL,
  `hj1` varchar(255) DEFAULT NULL,
  `jt1` varchar(255) DEFAULT NULL,
  `unitname1` varchar(255) DEFAULT NULL,
  `unitaddr1` varchar(255) DEFAULT NULL,
  `name2` varchar(255) DEFAULT NULL,
  `re2` varchar(255) DEFAULT NULL,
  `hj2` varchar(255) DEFAULT NULL,
  `jt2` varchar(255) DEFAULT NULL,
  `unitname2` varchar(255) DEFAULT NULL,
  `unitaddr2` varchar(255) DEFAULT NULL,
  `name3` varchar(255) DEFAULT NULL,
  `re3` varchar(255) DEFAULT NULL,
  `hj3` varchar(255) DEFAULT NULL,
  `jt3` varchar(255) DEFAULT NULL,
  `unitname3` varchar(255) DEFAULT NULL,
  `unitaddr3` varchar(255) DEFAULT NULL,
  `name4` varchar(255) DEFAULT NULL,
  `re4` varchar(255) DEFAULT NULL,
  `hj4` varchar(255) DEFAULT NULL,
  `jt4` varchar(255) DEFAULT NULL,
  `unitname4` varchar(255) DEFAULT NULL,
  `unitaddr4` varchar(255) DEFAULT NULL,
  `name5` varchar(255) DEFAULT NULL,
  `re5` varchar(255) DEFAULT NULL,
  `hj5` varchar(255) DEFAULT NULL,
  `jt5` varchar(255) DEFAULT NULL,
  `unitname5` varchar(255) DEFAULT NULL,
  `unitaddr5` varchar(255) DEFAULT NULL,
  `name6` varchar(255) DEFAULT NULL,
  `re6` varchar(255) DEFAULT NULL,
  `hj6` varchar(255) DEFAULT NULL,
  `jt6` varchar(255) DEFAULT NULL,
  `unitname6` varchar(255) DEFAULT NULL,
  `unitaddr6` varchar(255) DEFAULT NULL,
  `name7` varchar(255) DEFAULT NULL,
  `re7` varchar(255) DEFAULT NULL,
  `hj7` varchar(255) DEFAULT NULL,
  `jt7` varchar(255) DEFAULT NULL,
  `unitname7` varchar(255) DEFAULT NULL,
  `unitaddr7` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sheet0` */

/*Table structure for table `social_security` */

DROP TABLE IF EXISTS `social_security`;

CREATE TABLE `social_security` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `case_apply_id` varchar(32) DEFAULT NULL COMMENT '协催申请id',
  `unit_name` varchar(200) DEFAULT NULL COMMENT '单位名称',
  `unit_phone1` varchar(50) DEFAULT NULL COMMENT '单位电话1',
  `unit_address` varchar(1000) DEFAULT NULL COMMENT '单位地址',
  `unit_phone2` varchar(50) DEFAULT NULL COMMENT '单位电话2',
  `linkman` varchar(50) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(50) DEFAULT NULL COMMENT '电话',
  `last_renew_date` datetime DEFAULT NULL COMMENT '最后续费日期',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `status` int(11) DEFAULT '1' COMMENT '联系人状态 0未知 1有效 2无效',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `case_apply_id` (`case_apply_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社保资料表';

/*Data for the table `social_security` */

/*Table structure for table `ss` */

DROP TABLE IF EXISTS `ss`;

CREATE TABLE `ss` (
  `A` varchar(255) DEFAULT NULL,
  `B` varchar(255) DEFAULT NULL,
  `C` varchar(255) DEFAULT NULL,
  `D` varchar(255) DEFAULT NULL,
  `E` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ss` */

/*Table structure for table `sys_column` */

DROP TABLE IF EXISTS `sys_column`;

CREATE TABLE `sys_column` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL COMMENT '字段名称',
  `width` int(10) NOT NULL DEFAULT '120' COMMENT '宽度',
  `sortable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可以排序',
  `title` varchar(50) NOT NULL COMMENT '标题名称',
  `grop_no` varchar(255) NOT NULL COMMENT '所属模块',
  `order_no` int(11) DEFAULT '1' COMMENT '排序号',
  `align` varchar(10) DEFAULT NULL COMMENT '对齐方式',
  ` indicate` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sys_column` */

/*Table structure for table `sys_column_copy` */

DROP TABLE IF EXISTS `sys_column_copy`;

CREATE TABLE `sys_column_copy` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL COMMENT '字段名称',
  `width` int(10) NOT NULL DEFAULT '120' COMMENT '宽度',
  `sortable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可以排序',
  `title` varchar(50) NOT NULL COMMENT '标题名称',
  `grop_no` varchar(255) NOT NULL COMMENT '所属模块',
  `order_no` int(11) DEFAULT '1' COMMENT '排序号',
  `align` varchar(10) DEFAULT NULL COMMENT '对齐方式',
  ` indicate` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sys_column_copy` */

/*Table structure for table `sys_dictionary` */

DROP TABLE IF EXISTS `sys_dictionary`;

CREATE TABLE `sys_dictionary` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `version` int(11) DEFAULT '0' COMMENT '版本',
  `status` int(11) DEFAULT NULL COMMENT '系统状态',
  `name` varchar(64) DEFAULT NULL COMMENT '字典名称',
  `dict_key` varchar(100) DEFAULT NULL COMMENT '字典键',
  `value` varchar(20) DEFAULT NULL COMMENT '字典值',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `order_no` int(11) DEFAULT NULL COMMENT '排序号',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父节点ID',
  `path` varchar(255) NOT NULL COMMENT '字典路径',
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `value` (`value`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统字典';

/*Data for the table `sys_dictionary` */

/*Table structure for table `sys_log` */

DROP TABLE IF EXISTS `sys_log`;

CREATE TABLE `sys_log` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `title` varchar(100) DEFAULT NULL COMMENT '日志标题',
  `state` tinyint(1) DEFAULT NULL COMMENT '日志状态：成功1,失败0',
  `time_consuming` int(11) DEFAULT NULL COMMENT '耗时ms',
  `server_host_name` varchar(50) NOT NULL COMMENT '服务主机名称',
  `server_host_addr` varchar(32) NOT NULL COMMENT '服务主机地址',
  `exception_info` text COMMENT '异常信息（调度失败时的异常信息）',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `start_time` datetime DEFAULT NULL COMMENT '用户操作起始时间',
  `remote_addr` varchar(64) DEFAULT NULL COMMENT '操作用户的IP地址',
  `request_url` varchar(255) DEFAULT NULL COMMENT '请求地址',
  `params` text COMMENT '操作提交的数据',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '操作用户代理信息',
  `user_id` varchar(32) DEFAULT NULL COMMENT '操作用户ID',
  `login_name` varchar(50) DEFAULT NULL COMMENT '操作用户登录名称',
  `user_name` varchar(50) DEFAULT NULL COMMENT '操作用户中文名称',
  `http_method` varchar(10) DEFAULT NULL COMMENT 'Http请求方式：GET,POST,PUT,DELETE',
  `method_name` varchar(255) DEFAULT NULL COMMENT '后台请求方法名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT=' 定时任务日志表';

/*Data for the table `sys_log` */

/*Table structure for table `sys_organization` */

DROP TABLE IF EXISTS `sys_organization`;

CREATE TABLE `sys_organization` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `version` int(11) DEFAULT '0' COMMENT '版本',
  `status` int(11) DEFAULT '1' COMMENT '系统状态',
  `name` varchar(64) DEFAULT NULL COMMENT '机构名称',
  `parent_id` int(32) DEFAULT NULL COMMENT '上级部门',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `phone` varchar(30) DEFAULT NULL COMMENT '电话号码',
  `post_code` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `fax` varchar(50) DEFAULT NULL COMMENT '传真号',
  `type` tinyint(3) DEFAULT NULL COMMENT '机构类型',
  `order_no` int(11) DEFAULT '0' COMMENT '排序号',
  `code` varchar(30) DEFAULT NULL COMMENT '机构编码',
  `principal_id` varchar(32) DEFAULT NULL COMMENT '机构负责人ID',
  `path` varchar(331) DEFAULT NULL COMMENT '机构路径',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='组织机构（部门）';

/*Data for the table `sys_organization` */

insert  into `sys_organization`(`id`,`create_time`,`modify_time`,`version`,`status`,`name`,`parent_id`,`address`,`phone`,`post_code`,`fax`,`type`,`order_no`,`code`,`principal_id`,`path`) values (1,'2018-04-24 16:44:01','2018-04-24 16:44:01',0,1,'上',0,'上','1233','1','1',1,0,'1','1','1'),(2,'2018-04-24 16:45:03','2018-04-24 16:45:03',0,1,'下',1,'下','1323','2','2',2,0,'2','2','2'),(12,NULL,NULL,NULL,NULL,'4',2,'44','4','4','4',1,4,NULL,NULL,NULL),(16,'2018-04-25 09:03:26','2018-04-25 09:03:26',0,1,'5',1,'5','5','5','6',2,5,NULL,NULL,NULL),(17,'2018-04-25 09:04:54','2018-04-24 09:04:57',0,1,'44',NULL,'4','6','6','6',6,0,NULL,'6','6'),(18,'2018-04-25 09:06:00','2018-04-24 09:06:03',0,1,'77',NULL,'77','77','77','77',77,0,'77','77','77');

/*Table structure for table `sys_position` */

DROP TABLE IF EXISTS `sys_position`;

CREATE TABLE `sys_position` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `name` varchar(100) NOT NULL COMMENT '职位名称',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '上级ID',
  `order_no` int(10) DEFAULT NULL COMMENT '排序号',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `path` varchar(331) DEFAULT NULL COMMENT '职位路径',
  `type` varchar(10) DEFAULT NULL COMMENT '岗位类型 对应字典1客服 2员工 3主任 4经理 5总监',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='职位表';

/*Data for the table `sys_position` */

insert  into `sys_position`(`id`,`name`,`parent_id`,`order_no`,`description`,`path`,`type`,`create_time`,`modify_time`) values ('1','上','1',1,'上','上','1','2018-04-25 01:57:26','2018-04-24 01:36:41'),('11','11','0',1,'12','1','2','2018-04-25 01:57:29','2018-04-24 01:41:06');

/*Table structure for table `sys_resource` */

DROP TABLE IF EXISTS `sys_resource`;

CREATE TABLE `sys_resource` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int(11) DEFAULT NULL COMMENT '系统状态',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `version` int(11) DEFAULT '0' COMMENT '版本',
  `code` varchar(60) DEFAULT NULL COMMENT '资源编码',
  `icon_cls` varchar(255) DEFAULT NULL COMMENT '图标样式',
  `name` varchar(30) NOT NULL COMMENT '资源名称',
  `order_no` int(11) DEFAULT NULL COMMENT '排序号',
  `type` int(11) NOT NULL COMMENT '资源类型 菜单(0) 功能(1)',
  `url` varchar(255) DEFAULT NULL COMMENT '资源url地址',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父级id',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_resource` */

/*Table structure for table `sys_resource_copy` */

DROP TABLE IF EXISTS `sys_resource_copy`;

CREATE TABLE `sys_resource_copy` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int(11) DEFAULT NULL COMMENT '系统状态',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `version` int(11) DEFAULT '0' COMMENT '版本',
  `code` varchar(60) DEFAULT NULL COMMENT '资源编码',
  `icon_cls` varchar(255) DEFAULT NULL COMMENT '图标样式',
  `name` varchar(30) NOT NULL COMMENT '资源名称',
  `order_no` int(11) DEFAULT NULL COMMENT '排序号',
  `type` int(11) NOT NULL COMMENT '资源类型 菜单(0) 功能(1)',
  `url` varchar(255) DEFAULT NULL COMMENT '资源url地址',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父级id',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_resource_copy` */

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `version` int(11) DEFAULT '0' COMMENT '版本',
  `status` int(11) DEFAULT '1' COMMENT '系统状态',
  `name` varchar(64) DEFAULT NULL COMMENT '角色名称',
  `description` varchar(32) DEFAULT NULL COMMENT '角色描述',
  `role_code` varchar(50) DEFAULT NULL COMMENT '角色编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

/*Table structure for table `sys_role_resource_relation` */

DROP TABLE IF EXISTS `sys_role_resource_relation`;

CREATE TABLE `sys_role_resource_relation` (
  `role_id` varchar(32) NOT NULL COMMENT '角色ID',
  `resource_id` varchar(64) NOT NULL DEFAULT '' COMMENT '资源ID',
  PRIMARY KEY (`role_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色资源关系表';

/*Data for the table `sys_role_resource_relation` */

/*Table structure for table `sys_timer_task` */

DROP TABLE IF EXISTS `sys_timer_task`;

CREATE TABLE `sys_timer_task` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `name` varchar(64) NOT NULL COMMENT '作业名称',
  `description` varchar(255) DEFAULT NULL COMMENT '作业描述',
  `jobClass` varchar(255) NOT NULL COMMENT '作业类',
  `cronExpression` varchar(100) NOT NULL COMMENT 'cron表达式',
  `params` varchar(255) DEFAULT NULL COMMENT '参数,JSON',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1（启用），0（暂停）',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `create_emp_id` varchar(32) NOT NULL COMMENT '创建人ID',
  `modify_emp_id` varchar(32) DEFAULT NULL COMMENT '修改人 ID',
  `error_email` varchar(255) DEFAULT NULL COMMENT '当调度发生错误时通知的邮件地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

/*Data for the table `sys_timer_task` */

/*Table structure for table `sys_timer_task_log` */

DROP TABLE IF EXISTS `sys_timer_task_log`;

CREATE TABLE `sys_timer_task_log` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `task_name` varchar(100) NOT NULL COMMENT '调度任务名称',
  `state` tinyint(1) DEFAULT NULL COMMENT '调度状态：成功1,失败0',
  `time_consuming` int(11) DEFAULT NULL COMMENT '耗时ms',
  `server_host_name` varchar(50) NOT NULL COMMENT '服务主机名称',
  `server_host_addr` varchar(32) NOT NULL COMMENT '服务主机地址',
  `exception_info` text COMMENT '异常信息（调度失败时的异常信息）',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `start_time` datetime DEFAULT NULL COMMENT '调度起始时间',
  `previous_fire_time` datetime DEFAULT NULL COMMENT '本次调度时间',
  `next_fire_time` datetime DEFAULT NULL COMMENT '调度任务下一次触发时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT=' 定时任务日志表';

/*Data for the table `sys_timer_task_log` */

/*Table structure for table `sys_user_column_relation` */

DROP TABLE IF EXISTS `sys_user_column_relation`;

CREATE TABLE `sys_user_column_relation` (
  `user_id` varchar(32) NOT NULL COMMENT '用户ID',
  `column_id` varchar(32) NOT NULL COMMENT '列ID',
  PRIMARY KEY (`user_id`,`column_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_column_relation` */

/*Table structure for table `sys_user_resource_relation` */

DROP TABLE IF EXISTS `sys_user_resource_relation`;

CREATE TABLE `sys_user_resource_relation` (
  `user_id` varchar(64) NOT NULL DEFAULT '' COMMENT '用户ID',
  `resource_id` varchar(32) NOT NULL COMMENT '资源ID',
  PRIMARY KEY (`user_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户资源关系表';

/*Data for the table `sys_user_resource_relation` */

/*Table structure for table `sys_user_role_relation` */

DROP TABLE IF EXISTS `sys_user_role_relation`;

CREATE TABLE `sys_user_role_relation` (
  `user_id` varchar(64) NOT NULL DEFAULT '' COMMENT '用户ID',
  `role_id` varchar(32) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色关系表';

/*Data for the table `sys_user_role_relation` */

/*Table structure for table `t_base_pinyin` */

DROP TABLE IF EXISTS `t_base_pinyin`;

CREATE TABLE `t_base_pinyin` (
  `pin_yin_` varchar(255) CHARACTER SET gbk NOT NULL,
  `code_` int(11) NOT NULL,
  PRIMARY KEY (`code_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_base_pinyin` */

/*Table structure for table `table2` */

DROP TABLE IF EXISTS `table2`;

CREATE TABLE `table2` (
  `id` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `table2` */

/*Table structure for table `target_achieve` */

DROP TABLE IF EXISTS `target_achieve`;

CREATE TABLE `target_achieve` (
  `id` varchar(32) NOT NULL,
  `state` int(2) DEFAULT '0' COMMENT '0未设置 1已设置',
  `org_id` varchar(32) DEFAULT '0' COMMENT '机构号',
  `emp_id` varchar(32) DEFAULT NULL COMMENT '员工id',
  `emp_name` varchar(255) DEFAULT NULL COMMENT '员工名称',
  `achieve` decimal(18,4) DEFAULT '0.0000' COMMENT '目标业绩',
  `year` int(4) DEFAULT NULL COMMENT '年',
  `month` int(2) DEFAULT NULL COMMENT '月',
  `create_name` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_name` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `org_id` (`org_id`) USING HASH,
  KEY `year` (`year`) USING HASH,
  KEY `month` (`month`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='目标业绩表';

/*Data for the table `target_achieve` */

/*Table structure for table `telecom` */

DROP TABLE IF EXISTS `telecom`;

CREATE TABLE `telecom` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `case_apply_id` varchar(32) DEFAULT NULL COMMENT '协催申请id',
  `mobile` varchar(50) DEFAULT NULL COMMENT '手机',
  `operator` varchar(50) DEFAULT NULL COMMENT '运营商',
  `mobile_status` int(11) DEFAULT '1' COMMENT '手机状态 0停机 1正常 2销户',
  `wide_band` varchar(100) DEFAULT NULL COMMENT '宽带号',
  `network_provide` varchar(100) DEFAULT NULL COMMENT '网络提供商',
  `wide_status` int(11) DEFAULT '1' COMMENT '宽带状态 0停机 1正常 2销户',
  `cr_address` varchar(500) DEFAULT NULL COMMENT '户籍地址',
  `address` varchar(500) DEFAULT NULL COMMENT '住址',
  `relation_1` varchar(50) DEFAULT NULL COMMENT '关系1',
  `linkman_1` varchar(50) DEFAULT NULL COMMENT '联系人1',
  `case_num_1` varchar(50) DEFAULT NULL COMMENT '证件号1',
  `relation_2` varchar(50) DEFAULT NULL COMMENT '关系2',
  `linkman_2` varchar(50) DEFAULT NULL COMMENT '联系人2',
  `case_num_2` varchar(50) DEFAULT NULL COMMENT '证件号2',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `status` int(11) DEFAULT '1' COMMENT '联系人状态 0未知 1有效 2无效',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `case_apply_id` (`case_apply_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电信资料表';

/*Data for the table `telecom` */

/*Table structure for table `template` */

DROP TABLE IF EXISTS `template`;

CREATE TABLE `template` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL COMMENT '模板名称',
  `sys_column_ids` text COMMENT '字段名称 对应sys_column主键',
  `grop_no` varchar(255) DEFAULT NULL COMMENT '所属模块',
  `state` int(10) DEFAULT '0' COMMENT '是否启用 0否 1是',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_emp_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模板设置表';

/*Data for the table `template` */

/*Table structure for table `test_student` */

DROP TABLE IF EXISTS `test_student`;

CREATE TABLE `test_student` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `student_no` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `test_student` */

/*Table structure for table `time_out_statistics` */

DROP TABLE IF EXISTS `time_out_statistics`;

CREATE TABLE `time_out_statistics` (
  `id` varchar(40) NOT NULL,
  `time` int(10) DEFAULT NULL COMMENT '时间段 如8点前 8点-9点',
  `cno` varchar(20) DEFAULT NULL COMMENT '坐席工号',
  `emp_id` varchar(32) DEFAULT NULL COMMENT '员工id',
  `emp_name` varchar(32) DEFAULT NULL COMMENT '员工姓名',
  `org_id` varchar(32) DEFAULT NULL COMMENT '机构号',
  `phoneCountTotal` int(10) DEFAULT NULL COMMENT '电催总次数',
  `connectCountTotal` int(10) DEFAULT NULL COMMENT '总接通次数',
  `bridgeDurationTotal` varchar(20) DEFAULT NULL COMMENT '总通话时长',
  `callOutConnectDurationAvg` varchar(20) DEFAULT NULL COMMENT '平均致电接通时长',
  `callOutConnectRate` varchar(20) DEFAULT NULL COMMENT '致电接通率',
  `bridgeDurationDayAvg` varchar(20) DEFAULT NULL COMMENT '平均每日通话时长',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_time` (`time`) USING BTREE,
  KEY `idx_cno` (`cno`) USING BTREE,
  KEY `idx_org_id` (`org_id`) USING BTREE,
  KEY `idx_createTime` (`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='致电时间统计';

/*Data for the table `time_out_statistics` */

/*Table structure for table `timelen_out_statistics` */

DROP TABLE IF EXISTS `timelen_out_statistics`;

CREATE TABLE `timelen_out_statistics` (
  `id` varchar(40) NOT NULL,
  `timeLen` int(10) DEFAULT NULL COMMENT '时长 如1分钟 1-2分钟',
  `cno` varchar(20) DEFAULT NULL COMMENT '坐席工号',
  `emp_id` varchar(32) DEFAULT NULL COMMENT '员工id',
  `emp_name` varchar(32) DEFAULT NULL COMMENT '员工姓名',
  `org_id` varchar(32) DEFAULT NULL COMMENT '机构号',
  `phoneCountTotal` int(10) DEFAULT NULL COMMENT '电催总次数',
  `connectCountTotal` int(10) DEFAULT NULL COMMENT '总接通次数',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_timeLen` (`timeLen`) USING BTREE,
  KEY `idx_cno` (`cno`) USING BTREE,
  KEY `idx_org_id` (`org_id`) USING BTREE,
  KEY `idx_createTime` (`createTime`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='致电时长统计';

/*Data for the table `timelen_out_statistics` */

/*Table structure for table `user_log` */

DROP TABLE IF EXISTS `user_log`;

CREATE TABLE `user_log` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `type` varchar(100) DEFAULT NULL COMMENT '操作类型',
  `user_name` varchar(50) DEFAULT NULL COMMENT '操作用户中文名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `operate_content` varchar(200) DEFAULT NULL COMMENT '操作内容',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `login_name` varchar(50) DEFAULT NULL COMMENT '操作用户登录名称',
  `ip_addr` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户日志表';

/*Data for the table `user_log` */

/*Table structure for table `visit_record` */

DROP TABLE IF EXISTS `visit_record`;

CREATE TABLE `visit_record` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `state` int(11) DEFAULT NULL COMMENT '状态 0待审核 1被撤销 2待排程 3已排程 4已完成-无效',
  `address_id` varchar(32) DEFAULT NULL COMMENT '地址id',
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件id',
  `num` int(11) DEFAULT NULL COMMENT '外访期次',
  `area_id1` varchar(32) DEFAULT NULL COMMENT '省',
  `area_id2` varchar(32) DEFAULT NULL COMMENT '市',
  `area_id3` varchar(32) DEFAULT NULL COMMENT '区县',
  `reason_type_id` varchar(32) DEFAULT NULL COMMENT '外访原因 字典表',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(1) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `require` text COMMENT '要求-目标',
  `apply_reason` text COMMENT '申请原因',
  `approve_state` int(11) DEFAULT NULL COMMENT '状态 0待审批 1审批通过 2审批不通过',
  `approve_opinion` text COMMENT '审批意见',
  `remark` text COMMENT '备注 申请原因',
  `visit_report` text COMMENT '外访报告',
  `visit_time` datetime DEFAULT NULL COMMENT '外访时间',
  `back_time` datetime DEFAULT NULL COMMENT '返回时间',
  `visit_user` varchar(1000) DEFAULT NULL COMMENT '外访人 多个用逗号隔开',
  `visit_user_id` varchar(1000) DEFAULT NULL COMMENT '外访人ID',
  `visit_address` text COMMENT '外访地址',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `apply_emp_id` varchar(32) DEFAULT NULL COMMENT '申请人',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `is_effective` varchar(20) DEFAULT NULL COMMENT '地址是否有效',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `actual_visit_time` date DEFAULT NULL COMMENT '实际外访时间',
  `visit_state` int(11) DEFAULT NULL COMMENT '外访结果 0中家人 1中债 2无址 3拆迁 4不中人 5中同事/朋友',
  PRIMARY KEY (`id`),
  KEY `address_id` (`address_id`) USING BTREE,
  KEY `case_id` (`case_id`) USING BTREE,
  KEY `visit_user` (`visit_user`(255)) USING BTREE,
  KEY `area_id1` (`area_id1`) USING BTREE,
  KEY `area_id2` (`area_id2`) USING BTREE,
  KEY `area_id3` (`area_id3`) USING BTREE,
  KEY `state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外访记录表';

/*Data for the table `visit_record` */

/*Table structure for table `visit_record_copy` */

DROP TABLE IF EXISTS `visit_record_copy`;

CREATE TABLE `visit_record_copy` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `state` int(11) DEFAULT NULL COMMENT '状态 0待审核 1被撤销 2待排程 3已排程 4已完成-无效',
  `address_id` varchar(32) DEFAULT NULL COMMENT '地址id',
  `case_id` varchar(32) DEFAULT NULL COMMENT '案件id',
  `num` int(11) DEFAULT NULL COMMENT '外访期次',
  `area_id1` varchar(32) DEFAULT NULL COMMENT '省',
  `area_id2` varchar(32) DEFAULT NULL COMMENT '市',
  `area_id3` varchar(32) DEFAULT NULL COMMENT '区县',
  `reason_type_id` varchar(32) DEFAULT NULL COMMENT '外访原因 字典表',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(1) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `require` text COMMENT '要求-目标',
  `apply_reason` text COMMENT '申请原因',
  `approve_state` int(11) DEFAULT NULL COMMENT '状态 0待审批 1审批通过 2审批不通过',
  `approve_opinion` text COMMENT '审批意见',
  `remark` text COMMENT '备注 申请原因',
  `visit_report` text COMMENT '外访报告',
  `visit_time` datetime DEFAULT NULL COMMENT '外访时间',
  `back_time` datetime DEFAULT NULL COMMENT '返回时间',
  `visit_user` varchar(1000) DEFAULT NULL COMMENT '外访人 多个用逗号隔开',
  `visit_user_id` varchar(1000) DEFAULT NULL COMMENT '外访人ID',
  `visit_address` text COMMENT '外访地址',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `apply_emp_id` varchar(32) DEFAULT NULL COMMENT '申请人',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `is_effective` varchar(20) DEFAULT NULL COMMENT '地址是否有效',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `actual_visit_time` date DEFAULT NULL COMMENT '实际外访时间',
  `visit_state` int(11) DEFAULT NULL COMMENT '外访结果 0中家人 1中债 2无址 3拆迁 4不中人 5中同事/朋友',
  PRIMARY KEY (`id`),
  KEY `address_id` (`address_id`) USING BTREE,
  KEY `case_id` (`case_id`) USING BTREE,
  KEY `visit_user` (`visit_user`(255)) USING BTREE,
  KEY `area_id1` (`area_id1`) USING BTREE,
  KEY `area_id2` (`area_id2`) USING BTREE,
  KEY `area_id3` (`area_id3`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外访记录表';

/*Data for the table `visit_record_copy` */

/*Table structure for table `visit_template` */

DROP TABLE IF EXISTS `visit_template`;

CREATE TABLE `visit_template` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL COMMENT '模板名称',
  `content` text COMMENT '模板内容',
  `type` varchar(1) DEFAULT '0' COMMENT '模板类型 0外访 1信函',
  `state` int(10) DEFAULT '0' COMMENT '是否启用 0否 1是',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_emp_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='外访模板表';

/*Data for the table `visit_template` */

/*Table structure for table `visit_template_copy` */

DROP TABLE IF EXISTS `visit_template_copy`;

CREATE TABLE `visit_template_copy` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL COMMENT '模板名称',
  `content` text COMMENT '模板内容',
  `type` varchar(1) DEFAULT '0' COMMENT '模板类型 0外访 1信函',
  `state` int(10) DEFAULT '0' COMMENT '是否启用 0否 1是',
  `create_emp_id` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_emp_id` varchar(32) DEFAULT NULL COMMENT '修改人',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='外访模板表';

/*Data for the table `visit_template_copy` */

/* Function  structure for function  `calc_length` */

/*!50003 DROP FUNCTION IF EXISTS `calc_length` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `calc_length`(str varchar(200), splitstr varchar(5)) RETURNS int(11)
begin 
return length(str)-length(replace(str, splitstr, ''))+1;
end */$$
DELIMITER ;

/* Function  structure for function  `func_get_splitStringTotal` */

/*!50003 DROP FUNCTION IF EXISTS `func_get_splitStringTotal` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `func_get_splitStringTotal`(
f_string varchar(10000),f_delimiter varchar(50)
) RETURNS int(11)
BEGIN
return 1+(length(f_string) - length(replace(f_string,f_delimiter,'')));
END */$$
DELIMITER ;

/* Function  structure for function  `func_get_split_string` */

/*!50003 DROP FUNCTION IF EXISTS `func_get_split_string` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `func_get_split_string`(
f_string varchar(1000),f_delimiter varchar(5),f_order int) RETURNS varchar(255) CHARSET utf8
BEGIN
  declare result varchar(255) default '';
  set result = reverse(substring_index(reverse(substring_index(f_string,f_delimiter,f_order)),f_delimiter,1));
  return result;
END */$$
DELIMITER ;

/* Function  structure for function  `GetNum` */

/*!50003 DROP FUNCTION IF EXISTS `GetNum` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `GetNum`(Varstring varchar(50)) RETURNS varchar(30) CHARSET utf8
BEGIN

DECLARE v_length INT DEFAULT 0;
DECLARE v_Tmp varchar(50) default '';
set v_length=CHAR_LENGTH(Varstring);

WHILE v_length > 0 DO

IF (ASCII(mid(Varstring,v_length,1))>45 and ASCII(mid(Varstring,v_length,1))<58 ) THEN

set v_Tmp=concat(v_Tmp,mid(Varstring,v_length,1));

END IF;

SET v_length = v_length - 1;

END WHILE;

RETURN REVERSE(v_Tmp);

END */$$
DELIMITER ;

/* Function  structure for function  `split_string` */

/*!50003 DROP FUNCTION IF EXISTS `split_string` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `split_string`(str varchar(200), splitstr varchar(5), strindex int) RETURNS varchar(255) CHARSET utf8
begin
declare result varchar(255) default '';
set result =reverse(substring_index( reverse(substring_index(str, splitstr, strindex)), splitstr, 1));
return result;
end */$$
DELIMITER ;

/* Function  structure for function  `to_pinyin` */

/*!50003 DROP FUNCTION IF EXISTS `to_pinyin` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` FUNCTION `to_pinyin`(NAME VARCHAR(255) CHARSET gbk) RETURNS varchar(255) CHARSET gbk
BEGIN
    DECLARE mycode INT;
    DECLARE tmp_lcode VARCHAR(2) CHARSET gbk;
    DECLARE lcode INT;
 
    DECLARE tmp_rcode VARCHAR(2) CHARSET gbk;
    DECLARE rcode INT;
 
    DECLARE mypy VARCHAR(255) CHARSET gbk DEFAULT '';
    DECLARE lp INT;
 
    SET mycode = 0;
    SET lp = 1;
 
    SET NAME = HEX(NAME);
 
    WHILE lp < LENGTH(NAME) DO
 
        SET tmp_lcode = SUBSTRING(NAME, lp, 2);
        SET lcode = CAST(ASCII(UNHEX(tmp_lcode)) AS UNSIGNED); 
        SET tmp_rcode = SUBSTRING(NAME, lp + 2, 2);
        SET rcode = CAST(ASCII(UNHEX(tmp_rcode)) AS UNSIGNED); 
        IF lcode > 128 THEN
            SET mycode =65536 - lcode * 256 - rcode ;
            SELECT CONCAT(mypy,pin_yin_) INTO mypy FROM t_base_pinyin WHERE CODE_ >= ABS(mycode) ORDER BY CODE_ ASC LIMIT 1;
            SET lp = lp + 4;
        ELSE
            SET mypy = CONCAT(mypy,CHAR(CAST(ASCII(UNHEX(SUBSTRING(NAME, lp, 2))) AS UNSIGNED)));
            SET lp = lp + 2;
        END IF;
    END WHILE;
    RETURN LOWER(mypy);
END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_address` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_address` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_address`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

				insert into address(id,
				status,
				name,
				address,
				case_id,
				adr_cat,
				remark,
				vis_count,
				check_app,
				mail_app,
				vis_app,
				relation,
				mail_count,
				isnew
				) 
				select 
				adr_id,
				adr_state,
				adr_name,
				adr_add,
				adr_cas_id,
				adr_cat,
				adr_remark,
				adr_num,
				adr_check_app,
				adr_mail_app,
				adr_vis_app,
				adr_rel,
				adr_mail_count,
				adr_isnew

				from test.address
				order by adr_cas_id asc;

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_address_same` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_address_same` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_address_same`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

		insert into address
		SELECT * FROM same.address
		where create_time>='2016-10-17';

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_attachment` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_attachment` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_attachment`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

				insert into attachment(id,
				name,
				size,
				path,
				isJunk,
				date,
				type,
				fk_id,
				file_type) 

				select 
				att_id,
				att_name,
				att_size,
				REPLACE (att_path,'uploadFiles',''),
				att_isJunk,
				att_date,
				att_type,
				att_fk_id,
				REPLACE (att_file_type,'img','IMAGE')
				from test.attachment
				order by att_id asc;

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_attachment_same` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_attachment_same` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_attachment_same`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

		insert into attachment
		SELECT * FROM same.attachment
		where create_time>='2016-10-17';

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_batch` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_batch` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_batch`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

				insert into case_batch(id,
				batch_code,
				state,
				entrust_id,
				total_money,
				total_number,
				type_id,
				begin_date,
				area_id,
				end_date,
				actual_end_date,
				create_emp_id,
				remark,
				target,
				batch_xls,
				batch_log,
				modify_time,
				create_time,
				bath_tips) 

				select 
				cbat_id,
				cbat_code,
				cbat_state,
				cbat_typ_bid,
				cbat_mon,
				cbat_num,
				cbat_type_id,
				cbat_date,
				cbat_area_id,
				cbat_backdate_p,
				cbat_backdate,
				cbat_ins_user,
				cbat_remark,
				cbat_target,
				cbat_xls,
				cbat_log,
				cbat_up_date,
				cbat_ins_date,
				cbat_tips
				from test.case_bat
				order by cbat_id asc;

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_batch_same` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_batch_same` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_batch_same`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

		insert into case_batch
		SELECT * FROM same.case_batch
		where create_time>='2016-10-17';
		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_case` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_case` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_case`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

				insert into case_info(id,
				case_code,
				state,
				collec_state_id,
				visit_state_id,
				batch_id,
				case_date,
				case_backdate,
				end_date,
				account_no,
				case_app_no,
				case_file_no,
				case_name,
				case_sex,
				case_birthday,
				province_name,
				city_name,
				district_name,
				area_id,
				bank_account,
				case_card,
				case_num,
				case_num_id,
				case_position,
				old_collec_record,
				
        principal,/*1*/
				surplus_principal,/*2*/
				case_money,/*3*/
				loan_rate,/*4*/

				loan_startdate,
				loan_enddate,

				overdue_money,/*5*/

				overdue_age,

				overdue_interest,/*6*/

				overdue_days,
				overdue_date,
				overdue_periods,
				once_overdue_periods,
				social_security_no,
				credit_id,

				month_repayment,/*7*/
				last_repayment,/*8*/

				bill,
				repayment_periods,
				company_name,
				company_phone,
				company_address,
				company_zipcode,
				mobile1,
				family_phone,
				family_address,
				family_zipcode,
				domicile,
				initial_repay,
				due_periods,
				remark1,
				remark2,
				case_assigned_id,
				case_assign_name,
				case_assign_time,
				create_emp_id,
				create_time,
				next_follow_time,
				entrust_rate,
				agent_rate,
				color,
				case_warn,
				start_card_date,
				stop_card_date,
				credit_limit,
				social_card_no,
				case_department,
				collec_remark,
				collec_type,
				late_fee,
				domicile_zipcode,
				bill_address,
				bill_zipcode,
				email,
				currency
) 

				select 
				cas_id,
				cas_code,
				cas_state,
				IFNULL(cas_typ_hid,0),	
				cas_out_state,
				cas_cbat_id,
				IF(cas_date='',NULL,cas_date) cas_date,		
				IF(cas_backdate_p='',NULL,cas_backdate_p) cas_backdate_p,
				IF(cas_backdate='',NULL,cas_backdate) cas_backdate,
				cas_acc_num,
				cas_app_no,
				cas_file_no,
				cas_name,
				cas_sex,
				IF(cas_bir='',NULL,cas_bir) cas_bir,
				cas_area_1,
				cas_area_2,
				cas_area_3,
				cas_cl_area_id,
				cas_card_bank,
				cas_ca_cd,
				cas_num,
				cas_num_type,
				cas_pos,
				cas_pre_rec,
				CONVERT(GetNum(cas_principal),DECIMAL(18,2)),/*1*/
				CONVERT(GetNum(cas_left_pri),DECIMAL(18,4)),/*2*/
				CONVERT(GetNum(cas_m),DECIMAL(18,4)),/*3*/
				CONVERT(GetNum(cas_loan_rate),DECIMAL(18,4)),/*4*/

				

				IF(cas_loan_date='',NULL,cas_loan_date) cas_loan_date,
				IF(cas_loan_end_date='',NULL,cas_loan_end_date) cas_loan_end_date,
				CONVERT(GetNum(cas_overdue_m),DECIMAL(18,4)),/*5*/
				
	
				cas_exc_lim,
				CONVERT(GetNum(cas_int),DECIMAL(18,4)),/*6*/
				
				
				cas_overdue_days,
				IF(cas_overdue_date='',NULL,cas_overdue_date) cas_overdue_date,
				cas_overdue_num,
				cas_overdue_once,
				cas_so_pcno,
				cas_loan_type,
				CONVERT(GetNum(cas_month_paid),DECIMAL(18,4)),/*7*/
				CONVERT(GetNum(cas_last_paid),DECIMAL(18,4)),/*8*/
				
				IF(cas_bill_date='',NULL,cas_bill_date) cas_bill_date,
				cas_paid_count,
				cas_unit_name,
				cas_work_pho,
				cas_work_add,
				cas_wpost_code,
				cas_mob_pho,
				cas_hom_pho,
				cas_hom_add,
				cas_post_code,
				cas_reg_add,
				IF(cas_paid_date='',NULL,cas_paid_date) cas_paid_date,
				cas_paid_lim,
				cas_remark,
				cas_remark2,
				cas_se_no,
				cas_alt_user,
				IF(cas_alt_time='',NULL,cas_alt_time) cas_alt_time,
				cas_ins_user,
				IF(cas_ins_time='',NULL,cas_ins_time) cas_ins_time,
				IF(cas_tip_time='',NULL,cas_tip_time) cas_tip_time,
				cas_back_p,
				cas_back_p as cas_back_p1,
				cas_color,
				cas_warn,
				cas_cre_date,
				cas_stop_date,
				cas_cred_lim,
				cas_so_no,
				cas_part,
				cas_tremark,
				cas_coll_type,
				cas_overdue_paid,
				cas_reg_post_code,
				cas_mail_add,
				cas_mpost_code,
				cas_email,
				cas_m_cat

				from test.bank_case
				order by cas_id asc;

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_case_apply` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_case_apply` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_case_apply`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

		    insert into case_apply
				(id,
				state,
				apply_type,
				apply_content,
				ch_cat_1,
				ch_cat_2,
				address_id,
				msg_state,
				case_id,
				hurry_content,
				apply_user_name,
				sur_user_name,
				app_time,
				sur_time,
				remark,
				contact_user,
				address,
				ch_count) 

				select 
				ch_id,
				ch_chk_state,
				ch_typ,
				ch_text,
				ch_cat_1,
				ch_cat_2,
				ch_adr_id,
				ch_msg_state,
				ch_cas_id,
				ch_res,
				ch_app_user,
				ch_sur_user,
				ch_app_time,
				ch_sur_time,
				ch_remark,
				ch_cont_user,
				ch_adr,
				ch_count
				from test.case_hp

				order by ch_cas_id asc;

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_case_apply_same` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_case_apply_same` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_case_apply_same`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

		insert into case_apply
		SELECT * FROM same.case_apply
		where app_time>='2016-10-17';

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_case_car_loan_same` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_case_car_loan_same` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_case_car_loan_same`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

		insert into case_car_loan
		SELECT * FROM same.case_car_loan
		
		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_case_paid` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_case_paid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_case_paid`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

		    insert into case_paid(id,
				state,
				case_id,
				ptp_time,
				ptp_money,
				cp_time,
				cp_money,
				create_emp_id,
				create_time,
				paid_time,
				paid_num,
				sur_user,
				sur_time,
				sur_remark,
				modify_emp_id,
				modify_time,
				del_user,
				del_time,
				m_paid,
				cpm_paid,
				se_no,
				cm_paid,
				back_paid,
				pback_paid,
				last_debt_m,
				left_amt) 

				select 
				pa_id,
				pa_state,
				pa_cas_id,
				pa_ptp_d,
				pa_ptp_num,
				pa_cp_time,
				pa_cp_num,
				pa_comt_user,
				pa_comt_time,
				pa_paid_time,
				pa_paid_num,
				pa_sur_user,
				pa_sur_time,
				pa_sur_remark,
				pa_writer,
				pa_wri_time,
				pa_del_user,
				pa_del_time,
				pa_m_paid,
				pa_cpm_paid,
				pa_se_no,
				pa_cm_paid,
				pa_back_paid,
				pa_pback_paid,
				pa_last_debt_m,
				pa_left_amt
				from test.case_paid
				order by pa_id asc;

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_case_paid_same` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_case_paid_same` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_case_paid_same`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

		insert into case_paid
		SELECT * FROM same.case_paid
		where create_time>='2016-10-17';

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_case_same` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_case_same` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_case_same`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

		insert into case_info	
		SELECT * FROM same.case_info
		where create_time>='2016-10-17';

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_comment` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_comment` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_comment`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   
				
				insert into comment
				(id,
				 content,
				 case_id,
				 user_name,
				 comment_time,
				 status
				) 
				select 
				cot_id,
				cot_content,
				cot_cas_id,
				cot_user,
				cot_time,
				cot_state
				from test.comment;

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_comment_same` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_comment_same` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_comment_same`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   
				
		insert into comment
		SELECT * FROM same.comment
		where create_time>='2016-10-17';

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_employee` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_employee` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_employee`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   
				insert into employee_info(number,
				login_name,
				salt,
				password,
				org_id,
				id,
				position_id,
				user_name,
				status,
				create_time,
				modify_time,
				cc_login,
				cc_pwd,
				cc_server,
				cc_phone,
				sex,
				join_time) 
				select 
				lu.user_code,
				lu.user_loginName,
				'aae2112444aa486590233c944545b954' as salt,
				'ab6cd86e04470349a73510ddb1f3c98e' as password,
				lu.user_so_code,
				lu.user_se_id,
				lu.user_role_id,
				lu.user_se_name,
				lu.user_isenabled,
				lu.user_pwd_upd_date as create_date,
				lu.user_pwd_upd_date,
				lu.user_cti_login,
				lu.user_pwd,
				lu.user_cti_server,
				lu.user_cti_phone,
				CASE se.se_sex WHEN '男' THEN '1' ELSE '0' END,
				se.se_job_date

				from test.lim_user lu join test.sal_emp se on lu.user_se_id=se.se_no
				order by lu.user_se_id asc;


/*增量
insert into employee_info(number,
				login_name,
				salt,
				password,
				org_id,
				id,
				position_id,
				user_name,
				status,
				create_time,
				modify_time,
				cc_login,
				cc_pwd,
				cc_server,
				cc_phone,
				sex,
				join_time) 

select 
				lu.user_code,
				lu.user_loginName,
				'aae2112444aa486590233c944545b954' as salt,
				'ab6cd86e04470349a73510ddb1f3c98e' as password,
				lu.user_so_code,
				lu.user_se_id,
				lu.user_role_id,
				lu.user_se_name,
				lu.user_isenabled,
				lu.user_pwd_upd_date as create_date,
				lu.user_pwd_upd_date,
				lu.user_cti_login,
				'ef73781effc5774100f87fe2f437a435' as user_pwd,
				lu.user_cti_server,
				lu.user_cti_phone,
				CASE se.se_sex WHEN '男' THEN '1' ELSE '0' END,
				se.se_job_date

				from test.lim_user lu left join test.sal_emp se on lu.user_se_id=se.se_no
				where lu.user_loginName is not null
				and lu.user_loginName not in(select login_name from employee_info)
				and lu.user_se_id not in (select id from employee_info)
				order by lu.user_se_id asc;
*/
				

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_hurry_record` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_hurry_record` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_hurry_record`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

				insert into hurry_record(id,
				hur_cat,
				case_id,
				operator_name,
				create_time,
				content,
				hurry_record_id
				) 
				select 
				hur_id,
				hur_cat,
				hur_cas_id,
				hur_oper,
				hur_op_time,
				hur_op_cont,
				hur_re_id

				from test.hurr_rec
				where hur_cat in('phoHur','oVis','CP','casM','cPho','cAdd')
				order by hur_id asc;

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_hurry_record_same` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_hurry_record_same` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_hurry_record_same`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

		insert into hurry_record
		SELECT * FROM same.hurry_record
		where create_time>='2016-10-17';

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_linkman_phone` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_linkman_phone` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_linkman_phone`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

				insert into case_linkman(id,
				status,
				name,
				phone,
				case_id,
				phone_type,
				phone_count,
				remark,
				create_time,
				relation) 
				select 
				phl_id,
				phl_state,
				phl_name,
				phl_num,
				phl_cas_id,
				phl_cat,
				phl_count,
				phl_remark,
				phl_upd_time,
				phl_rel


				from test.phone_list
				order by phl_id asc;

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_linkman_phone_same` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_linkman_phone_same` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_linkman_phone_same`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

		insert into case_linkman
		SELECT * FROM same.case_linkman
		where create_time>='2016-10-17';

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_organization` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_organization` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_organization`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   
				
				insert into sys_organization(id,
				name,
				code,
				parent_id,
				path) 
				select 
				so_code,
				so_name,
				so_org_code,
				so_up_code,
				concat('O20100000-1/',so_code)
				from test.sal_org;

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_phone_record` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_phone_record` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_phone_record`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

				insert into phone_record(
				id,
				type_id,
				contact,
				case_id,
				content,
				create_time,
				create_emp_id,
				con_type,
				pr_pa_id,
				name,
				pr_cat,
				ptp_time,
				ptp_money,
				relation,
				collec_state_id,
				negotiation,
				pr_cc_id,
				call_id
				) 
				select 
				pr_id,
				pr_typ_id,
				pr_contact,
				pr_cas_id,
				pr_content,
				pr_time,
				pr_se_no,
				pr_con_type,
				pr_pa_id,
				pr_name,
				pr_cat,
				pr_ptp_date,
				pr_ptp_num,
				pr_rel,
				pr_state_id,
				pr_negotiation,
				pr_cc_id,
				pr_call_id
				from test.pho_red
				order by pr_id asc;

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_phone_record_same` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_phone_record_same` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_phone_record_same`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

		insert into phone_record
		SELECT * FROM same.phone_record
		where create_time>='2016-10-17';

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_position` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_position` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_position`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   
				
				insert into sys_position(id,
				name,
				description,
				path,
				order_no
				) 
				select 
				rol_id,
				rol_name,
				rol_desc,
				rol_id as path,
				rol_id as order_no
				from test.lim_role;

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_role` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_role` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_role`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   
				
				insert into sys_role
				(id,
				name,
				description,
				create_time,
				modify_time
				) 
				select 
				grp_id,
				grp_name,
				grp_desc,
				grp_cre_time,
				grp_upd_time

				from test.lim_group;

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_user_role_relation` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_user_role_relation` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_user_role_relation`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   
				
				insert into sys_user_role_relation
				(user_id,
				role_id
				) 
				select 
				user_se_id,
				user_grp_id

				from test.lim_user
				where user_se_id !='1';

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_visit_cus_area` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_visit_cus_area` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_visit_cus_area`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   
				
				insert into cus_area
				(area_id,
				city_id,
				area_name,
				area_isenabled,
				status
				) 
				select 
				city_id,
				city_prv_id,
				city_name,
				city_isenabled,
				city_isenabled as status
				from test.cus_city;

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_visit_cus_city` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_visit_cus_city` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_visit_cus_city`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   
				
				insert into cus_city
				(city_id,
				province_id,
				city_name,
				city_isenabled,
				status
				) 
				select 
				prv_id,
				prv_area_id,
				prv_name,
				prv_isenabled,
				prv_isenabled as status
				from test.cus_province;

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_visit_cus_province` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_visit_cus_province` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_visit_cus_province`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   
				
				insert into cus_province
				(province_id,
				province_name,
				province_isenabled,
				status
				) 
				select 
				are_id,
				are_name,
				are_isenabled,
				are_isenabled as status

				from test.cus_area;

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_visit_record` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_visit_record` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_visit_record`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

		    insert into visit_record(id,
				state,
				address_id,
				case_id,
				num,
				area_id1,
				area_id2,
				area_id3,
				reason_type_id,
				name,
				sex,
				age,
				`require`,
				remark,
				visit_report,
				visit_time,
				actual_visit_time,
				apply_emp_id,
				apply_time,
				back_time,
				visit_user,
				visit_address,
				is_effective) 

				select 
				vr_id,
				vr_state,
				vr_adr_id,
				vr_cas_id,
				vr_num,
				vr_typ_id3,
				vr_typ_id2,
				vr_typ_id1,
				vr_typ_id,
				vr_name,
				vr_sex,
				vr_age,
				vr_req,
				vr_remark,
				vr_report,
				vr_est_date,
				vr_rel_date,
				vr_app_user,
				vr_app_time,
				vr_bk_time,
				vr_rec_user,
				vr_adr,
				vr_rs
				from test.vis_record
				order by vr_id asc;

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `imp_visit_record_same` */

/*!50003 DROP PROCEDURE IF EXISTS  `imp_visit_record_same` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `imp_visit_record_same`()
BEGIN

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;   

		insert into visit_record
		SELECT * FROM same.visit_record
		where create_time>='2016-10-17';

		COMMIT;         
		SET AUTOCOMMIT = 1;

END */$$
DELIMITER ;

/* Procedure structure for procedure `proce_split` */

/*!50003 DROP PROCEDURE IF EXISTS  `proce_split` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `proce_split`()
begin  
	declare cnt int default 0;  
	declare i int default 0;  
	declare str varchar(2000) default '';  
	DECLARE done INT;
	DECLARE rs_cursor CURSOR FOR SELECT DISTINCT(visit_user) as str from visit_record where visit_user is not null and visit_user_id is null;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;	
			START TRANSACTION;         
			SET AUTOCOMMIT = 0;  				
					open rs_cursor; 
							cursor_loop:loop
									FETCH rs_cursor into str;
									if done=1 then
											leave cursor_loop;
									end if;
									set cnt = calc_length(str, ',');  
                   set i=0;
									while i < cnt do
									set i = i+1;
									insert into table2(id, name) values(i, split_string(str,',', i));  
									end while;
									
							end loop cursor_loop;
					close rs_cursor;
			COMMIT;         
			SET AUTOCOMMIT = 1;
end */$$
DELIMITER ;

/* Procedure structure for procedure `proce_split_final` */

/*!50003 DROP PROCEDURE IF EXISTS  `proce_split_final` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `proce_split_final`()
begin  
	declare cnt int default 0;  
	declare i int default 0;  
	declare str varchar(2000) default '';  
	DECLARE done INT;
	DECLARE rs_cursor CURSOR FOR SELECT DISTINCT(visit_user) as str from visit_record where visit_user is not null and visit_user_id is null;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;	
			START TRANSACTION;         
			SET AUTOCOMMIT = 0;  				
					open rs_cursor; 
							cursor_loop:loop
									FETCH rs_cursor into str;
									if done=1 then
											leave cursor_loop;
									end if;
									set cnt = calc_length(str, ',');  
                   set i=0;
									while i < cnt do
									set i = i+1;
									insert into table2(id, name) values(i, split_string(str,',', i));  
									end while;
									
							end loop cursor_loop;
					close rs_cursor;
			COMMIT;         
			SET AUTOCOMMIT = 1;
end */$$
DELIMITER ;

/* Procedure structure for procedure `splitString` */

/*!50003 DROP PROCEDURE IF EXISTS  `splitString` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `splitString`(IN f_string varchar(1000),IN f_delimiter varchar(5))
BEGIN
declare cnt int default 0;
declare i int default 0;
set cnt = func_get_splitStringTotal(f_string,f_delimiter);
DROP TABLE IF EXISTS `tmp_split`;
create temporary table `tmp_split` (`val_` varchar(128) not null) DEFAULT CHARSET=utf8;

while i < cnt
do
set i = i + 1;
insert into tmp_split(`val_`) values (func_get_split_string(f_string,f_delimiter,i));
end while;
END */$$
DELIMITER ;

/* Procedure structure for procedure `up_address` */

/*!50003 DROP PROCEDURE IF EXISTS  `up_address` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `up_address`()
BEGIN
    START TRANSACTION;         
		SET AUTOCOMMIT = 0;  

		update address a
		join visit_record v on a.id=v.address_id
		set a.area_id1=v.area_id1,a.area_id2=v.area_id2,a.area_id3=v.area_id3;
		
		COMMIT;         
		SET AUTOCOMMIT = 1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `up_batch` */

/*!50003 DROP PROCEDURE IF EXISTS  `up_batch` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `up_batch`()
BEGIN
		DECLARE _batch_id INT;
		DECLARE _case_money DECIMAL(18,4);
		DECLARE _total_number INT;
		DECLARE done INT;


		DECLARE rs_cursor CURSOR FOR select batch_id,IFNULL(SUM(case_money),0) as case_money,COUNT(batch_id) as batch_number from case_info group by batch_id;
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=1;


		START TRANSACTION;         
		SET AUTOCOMMIT = 0;  				
				open rs_cursor; 
						cursor_loop:loop
								FETCH rs_cursor into _batch_id, _case_money, _total_number;
								#if done=1 then
								#		leave cursor_loop;
								#end if;
								update case_batch set total_money=CONVERT(_case_money,DECIMAL(18,4)),total_number=_total_number where id=_batch_id;
								
						end loop cursor_loop;
				close rs_cursor;
		COMMIT;         
		SET AUTOCOMMIT = 1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `up_case_area` */

/*!50003 DROP PROCEDURE IF EXISTS  `up_case_area` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `up_case_area`()
BEGIN
    START TRANSACTION;         
		SET AUTOCOMMIT = 0;  

		update case_info set area_id='1' where area_id='53';#北京
		update case_info set area_id='37' where area_id='94';#石家庄
		update case_info set area_id='19' where area_id='95';#天津
		update case_info set area_id='797' where area_id='125';#上海
		update case_info set area_id='1954' where area_id='130';#广州
		update case_info set area_id='816' where area_id='147';#南京
		update case_info set area_id='932' where area_id='148';#杭州
		update case_info set area_id='1156' where area_id='168';#福州
		update case_info set area_id='2821' where area_id='173';#西安
		update case_info set area_id='1817' where area_id='187';#长沙
		update case_info set area_id='1699' where area_id='198';#武汉
		update case_info set area_id='1034' where area_id='222';#合肥
		update case_info set area_id='2740' where area_id='226';#西藏
		update case_info set area_id='466' where area_id='251';#沈阳
		update case_info set area_id='1957' where area_id='247';#深圳
		
		COMMIT;         
		SET AUTOCOMMIT = 1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `up_case_org` */

/*!50003 DROP PROCEDURE IF EXISTS  `up_case_org` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `up_case_org`()
BEGIN
    START TRANSACTION;         
		SET AUTOCOMMIT = 0;  

		update case_info c 
		join area a on c.area_id=a.id 
		join sys_organization s on a.org_id=s.id
		set c.org_id=a.org_id,c.org_name=s.name;
		
		COMMIT;         
		SET AUTOCOMMIT = 1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `up_case_org_empty` */

/*!50003 DROP PROCEDURE IF EXISTS  `up_case_org_empty` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `up_case_org_empty`()
BEGIN
    START TRANSACTION;         
		SET AUTOCOMMIT = 0;  

		update case_info c
		join employee_info ei on c.case_assigned_id=ei.id
		join area on ei.org_id=area.org_id
		join sys_organization so on ei.org_id=so.id
		set c.area_id=area.id,c.area_name=area.name,c.org_id=so.id,c.org_name=so.name
		where c.org_id is null;
		
		COMMIT;         
		SET AUTOCOMMIT = 1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `up_case_paid_yj` */

/*!50003 DROP PROCEDURE IF EXISTS  `up_case_paid_yj` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `up_case_paid_yj`()
BEGIN
    START TRANSACTION;         
		SET AUTOCOMMIT = 0;  

		update case_paid cp
		join case_info ci on cp.case_id=ci.id
		set cp.back_paid=CONVERT((IFNULL(ci.agent_rate, 0) * IFNULL(cp.paid_num, 0)),DECIMAL(18,4)),
		cp.back_paid_rate=CONVERT(ci.agent_rate,DECIMAL(18,2))
		where cp.back_paid is null and cp.state in (2);

		update case_paid cp
		join case_info ci on cp.case_id=ci.id
		set cp.back_paid=CONVERT((IFNULL(ci.agent_rate, 0) * IFNULL(cp.cp_money, 0)),DECIMAL(18,4)),
		cp.back_paid_rate=CONVERT(ci.agent_rate,DECIMAL(18,2))
		where cp.back_paid is null and cp.state in (1);


		update case_paid cp
		join case_info ci on cp.case_id=ci.id
		set cp.back_paid_rate=CONVERT(ci.agent_rate,DECIMAL(18,2))
		where cp.back_paid_rate is null;
		
		COMMIT;         
		SET AUTOCOMMIT = 1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `up_linkman` */

/*!50003 DROP PROCEDURE IF EXISTS  `up_linkman` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `up_linkman`()
BEGIN
		DECLARE _cas_id INT;
		DECLARE done INT;
		DECLARE _cas_name_1 VARCHAR(50);
		DECLARE _cas_name_2 VARCHAR(50);
		DECLARE _cas_name_3 VARCHAR(50);
		DECLARE _cas_name_4 VARCHAR(50);
		DECLARE _cas_name_5 VARCHAR(50);
		DECLARE _cas_name_6 VARCHAR(50);
		DECLARE _cas_num_1 VARCHAR(200);
		DECLARE _cas_num_2 VARCHAR(200);
		DECLARE _cas_num_3 VARCHAR(200);
		DECLARE _cas_num_4 VARCHAR(200);
		DECLARE _cas_num_5 VARCHAR(200);
		DECLARE _cas_num_6 VARCHAR(200);
		DECLARE _cas_re_1 VARCHAR(200);
		DECLARE _cas_re_2 VARCHAR(200);
		DECLARE _cas_re_3 VARCHAR(200);
		DECLARE _cas_re_4 VARCHAR(200);
		DECLARE _cas_re_5 VARCHAR(200);
		DECLARE _cas_re_6 VARCHAR(200);
		DECLARE _cas_con_com1 VARCHAR(200);
		DECLARE _cas_con_com2 VARCHAR(200);
		DECLARE _cas_con_com3 VARCHAR(200);
		DECLARE _cas_con_com4 VARCHAR(200);
		DECLARE _cas_con_com5 VARCHAR(200);
		DECLARE _cas_con_com6 VARCHAR(200);
		DECLARE _cas_con_pho1 VARCHAR(50);
		DECLARE _cas_con_pho2 VARCHAR(50);
		DECLARE _cas_con_pho3 VARCHAR(50);
		DECLARE _cas_con_pho4 VARCHAR(50);
		DECLARE _cas_con_pho5 VARCHAR(50);
		DECLARE _cas_con_pho6 VARCHAR(50);
		DECLARE _cas_con_mob1 VARCHAR(50);
		DECLARE _cas_con_mob2 VARCHAR(50);
		DECLARE _cas_con_mob3 VARCHAR(50);
		DECLARE _cas_con_mob4 VARCHAR(50);
		DECLARE _cas_con_mob5 VARCHAR(50);
		DECLARE _cas_con_mob6 VARCHAR(50);
		DECLARE _cas_con_add1 LONGTEXT;
		DECLARE _cas_con_add2 LONGTEXT;
		DECLARE _cas_con_add3 LONGTEXT;
		DECLARE _cas_con_add4 LONGTEXT;
		DECLARE _cas_con_add5 LONGTEXT;
		DECLARE _cas_con_add6 LONGTEXT;
		DECLARE _cas_con_wpho1 VARCHAR(50);
		DECLARE _cas_con_wpho2 VARCHAR(50);
		DECLARE _cas_con_wpho3 VARCHAR(50);
		DECLARE _cas_con_wpho4 VARCHAR(50);
		DECLARE _cas_con_wpho5 VARCHAR(50);
		DECLARE _cas_con_wpho6 VARCHAR(50);
		
		DECLARE rs_cursor CURSOR FOR 
		select cas_id,cas_name_1,cas_num_1,cas_re_1,cas_con_com1,cas_con_pho1,cas_con_mob1,cas_con_add1,cas_con_wpho1,
		cas_name_2,cas_num_2,cas_re_2,cas_con_com2,cas_con_pho2,cas_con_mob2,cas_con_add2,cas_con_wpho2,
		cas_name_3,cas_num_3,cas_re_3,cas_con_com3,cas_con_pho3,cas_con_mob3,cas_con_add3,cas_con_wpho3,
		cas_name_4,cas_num_4,cas_re_4,cas_con_com4,cas_con_pho4,cas_con_mob4,cas_con_add4,cas_con_wpho4,
		cas_name_5,cas_num_5,cas_re_5,cas_con_com_5,cas_con_pho_5,cas_con_mob_5,cas_con_add_5,cas_con_wpho_5,
		cas_name_u,cas_num_u,cas_re_u,cas_con_u_com,cas_con_u_pho,cas_con_u_mob,cas_con_u_add,cas_con_u_wpho
	  from cstest.bank_case  
		order by cas_id asc;
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=1;

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;  				
				open rs_cursor; 
						cursor_loop:loop
								FETCH rs_cursor into 
								_cas_id,_cas_name_1,_cas_num_1,_cas_re_1,_cas_con_com1,_cas_con_pho1,_cas_con_mob1,_cas_con_add1,_cas_con_wpho1,
								_cas_name_2,_cas_num_2,_cas_re_2,_cas_con_com2,_cas_con_pho2,_cas_con_mob2,_cas_con_add2,_cas_con_wpho2,
								_cas_name_3,_cas_num_3,_cas_re_3,_cas_con_com3,_cas_con_pho3,_cas_con_mob3,_cas_con_add3,_cas_con_wpho3,
								_cas_name_4,_cas_num_4,_cas_re_4,_cas_con_com4,_cas_con_pho4,_cas_con_mob4,_cas_con_add4,_cas_con_wpho4,
								_cas_name_5,_cas_num_5,_cas_re_5,_cas_con_com5,_cas_con_pho5,_cas_con_mob5,_cas_con_add5,_cas_con_wpho5,
								_cas_name_6,_cas_num_6,_cas_re_6,_cas_con_com6,_cas_con_pho6,_cas_con_mob6,_cas_con_add6,_cas_con_wpho6;

							  if done=1 then
										leave cursor_loop;
								end if;

							  if (IFNULL(_cas_name_1,'')<>'' and IFNULL(_cas_con_mob1,'')<>'')  then
										insert into case_linkman(id,case_id,name,card_no,relation,unit_name,family_phone,mobile,address,unit_phone,position) values
										(REPLACE(UUID(),'-',''),_cas_id,_cas_name_1,_cas_num_1,_cas_re_1,_cas_con_com1,_cas_con_pho1,_cas_con_mob1,_cas_con_add1,_cas_con_wpho1,1);
								end if;
								if (IFNULL(_cas_name_2,'')<>'' and IFNULL(_cas_con_mob2,'')<>'')  then
										insert into case_linkman(id,case_id,name,card_no,relation,unit_name,family_phone,mobile,address,unit_phone,position) values
										(REPLACE(UUID(),'-',''),_cas_id,_cas_name_2,_cas_num_2,_cas_re_2,_cas_con_com2,_cas_con_pho2,_cas_con_mob2,_cas_con_add2,_cas_con_wpho2,2);
								end if;
								if (IFNULL(_cas_name_3,'')<>'' and IFNULL(_cas_con_mob3,'')<>'')  then
										insert into case_linkman(id,case_id,name,card_no,relation,unit_name,family_phone,mobile,address,unit_phone,position) values
										(REPLACE(UUID(),'-',''),_cas_id,_cas_name_3,_cas_num_3,_cas_re_3,_cas_con_com3,_cas_con_pho3,_cas_con_mob3,_cas_con_add3,_cas_con_wpho3,3);
								end if;
								if (IFNULL(_cas_name_4,'')<>'' and IFNULL(_cas_con_mob4,'')<>'')  then
										insert into case_linkman(id,case_id,name,card_no,relation,unit_name,family_phone,mobile,address,unit_phone,position) values
										(REPLACE(UUID(),'-',''),_cas_id,_cas_name_4,_cas_num_4,_cas_re_4,_cas_con_com4,_cas_con_pho4,_cas_con_mob4,_cas_con_add4,_cas_con_wpho4,4);
								end if;
								if (IFNULL(_cas_name_5,'')<>'' and IFNULL(_cas_con_mob5,'')<>'')  then
										insert into case_linkman(id,case_id,name,card_no,relation,unit_name,family_phone,mobile,address,unit_phone,position) values
										(REPLACE(UUID(),'-',''),_cas_id,_cas_name_5,_cas_num_5,_cas_re_5,_cas_con_com5,_cas_con_pho5,_cas_con_mob5,_cas_con_add5,_cas_con_wpho5,5);
								end if;
								if (IFNULL(_cas_name_6,'')<>'' and IFNULL(_cas_con_mob6,'')<>'')  then
										insert into case_linkman(id,case_id,name,card_no,relation,unit_name,family_phone,mobile,address,unit_phone,position) values
										(REPLACE(UUID(),'-',''),_cas_id,_cas_name_6,_cas_num_6,_cas_re_6,_cas_con_com6,_cas_con_pho6,_cas_con_mob6,_cas_con_add6,_cas_con_wpho6,6);
								end if;

						end loop cursor_loop;
				close rs_cursor;
		COMMIT;         
		SET AUTOCOMMIT = 1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `up_linkman_address` */

/*!50003 DROP PROCEDURE IF EXISTS  `up_linkman_address` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `up_linkman_address`()
BEGIN
		DECLARE done INT;
		DECLARE _case_id  VARCHAR(200);
	
		DECLARE _name1 VARCHAR(200);
		DECLARE _name2 VARCHAR(200);
		DECLARE _name3 VARCHAR(200);
		DECLARE _name4 VARCHAR(200);
		DECLARE _name5 VARCHAR(200);
		DECLARE _name6 VARCHAR(200);
		DECLARE _name7 VARCHAR(200);

		DECLARE _re1 VARCHAR(200);
		DECLARE _re2 VARCHAR(200);
		DECLARE _re3 VARCHAR(200);
		DECLARE _re4 VARCHAR(200);
		DECLARE _re5 VARCHAR(200);
		DECLARE _re6 VARCHAR(200);
		DECLARE _re7 VARCHAR(200);

		DECLARE _hj1 VARCHAR(200);
		DECLARE _hj2 VARCHAR(200);
		DECLARE _hj3 VARCHAR(200);
		DECLARE _hj4 VARCHAR(200);
		DECLARE _hj5 VARCHAR(200);
		DECLARE _hj6 VARCHAR(200);
		DECLARE _hj7 VARCHAR(200);

		DECLARE _jt1 VARCHAR(200);
		DECLARE _jt2 VARCHAR(200);
		DECLARE _jt3 VARCHAR(200);
		DECLARE _jt4 VARCHAR(200);
		DECLARE _jt5 VARCHAR(200);
		DECLARE _jt6 VARCHAR(200);
		DECLARE _jt7 VARCHAR(200);
		
		DECLARE _unitname1 VARCHAR(200);
		DECLARE _unitname2 VARCHAR(200);
		DECLARE _unitname3 VARCHAR(200);
		DECLARE _unitname4 VARCHAR(200);
		DECLARE _unitname5 VARCHAR(200);
		DECLARE _unitname6 VARCHAR(200);
		DECLARE _unitname7 VARCHAR(200);

		DECLARE _unitaddr1 VARCHAR(200);
		DECLARE _unitaddr2 VARCHAR(200);
		DECLARE _unitaddr3 VARCHAR(200);
		DECLARE _unitaddr4 VARCHAR(200);
		DECLARE _unitaddr5 VARCHAR(200);
		DECLARE _unitaddr6 VARCHAR(200);
		DECLARE _unitaddr7 VARCHAR(200);


		
		DECLARE rs_cursor CURSOR FOR 
		select 
		case_id,
		name1,
		re1,
		hj1,
		jt1,
		unitname1,
		unitaddr1,
		name2,
		re2,
		hj2,
		jt2,
		unitname2,
		unitaddr2,
		name3,
		re3,
		hj3,
		jt3,
		unitname3,
		unitaddr3,
		name4,
		re4,
		hj4,
		jt4,
		unitname4,
		unitaddr4,
		name5,
		re5,
		hj5,
		jt5,
		unitname5,
		unitaddr5,
		name6,
		re6,
		hj6,
		jt6,
		unitname6,
		unitaddr6,
		name7,
		re7,
		hj7,
		jt7,
		unitname7,
		unitaddr7

	  from sheet0
		order by case_id asc;
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=1;

		START TRANSACTION;         
		SET AUTOCOMMIT = 0;  				
				open rs_cursor; 
						cursor_loop:loop
								FETCH rs_cursor into 
								_case_id,
								_name1,
								_re1,
								_hj1,
								_jt1,
								_unitname1,
								_unitaddr1,
								_name2,
								_re2,
								_hj2,
								_jt2,
								_unitname2,
								_unitaddr2,
								_name3,
								_re3,
								_hj3,
								_jt3,
								_unitname3,
								_unitaddr3,
								_name4,
								_re4,
								_hj4,
								_jt4,
								_unitname4,
								_unitaddr4,
								_name5,
								_re5,
								_hj5,
								_jt5,
								_unitname5,
								_unitaddr5,
								_name6,
								_re6,
								_hj6,
								_jt6,
								_unitname6,
								_unitaddr6,
								_name7,
								_re7,
								_hj7,
								_jt7,
								_unitname7,
								_unitaddr7;

							  if done=1 then
										leave cursor_loop;
								end if;
								delete from address where case_id=_case_id and relation!='本人' and address='';

							  if (IFNULL(_hj1,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name1,_hj1,_case_id,'户籍地址',_re1,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_hj2,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name2,_hj2,_case_id,'户籍地址',_re2,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_hj3,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name3,_hj3,_case_id,'户籍地址',_re3,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_hj4,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name4,_hj4,_case_id,'户籍地址',_re4,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_hj5,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name5,_hj5,_case_id,'户籍地址',_re5,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_hj6,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name6,_hj6,_case_id,'户籍地址',_re6,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_hj7,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name7,_hj7,_case_id,'户籍地址',_re7,'624','2017-01-16 12:00:00','0');
								end if;

								if (IFNULL(_jt1,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name1,_jt1,_case_id,'家庭地址',_re1,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_jt2,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name2,_jt2,_case_id,'家庭地址',_re2,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_jt3,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name3,_jt3,_case_id,'家庭地址',_re3,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_jt4,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name4,_jt4,_case_id,'家庭地址',_re4,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_jt5,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name5,_jt5,_case_id,'家庭地址',_re5,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_jt6,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name6,_jt6,_case_id,'家庭地址',_re6,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_jt7,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name7,_jt7,_case_id,'家庭地址',_re7,'624','2017-01-16 12:00:00','0');
								end if;
						
								if (IFNULL(_unitname1,'')<>'' or IFNULL(_unitaddr1,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name1,CONCAT(_unitname1,"/",_unitaddr1),_case_id,'单位地址',_re1,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_unitname2,'')<>'' or IFNULL(_unitaddr2,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name2,CONCAT(_unitname2,"/",_unitaddr2),_case_id,'单位地址',_re2,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_unitname3,'')<>'' or IFNULL(_unitaddr3,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name3,CONCAT(_unitname3,"/",_unitaddr3),_case_id,'单位地址',_re3,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_unitname4,'')<>'' or IFNULL(_unitaddr4,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name4,CONCAT(_unitname4,"/",_unitaddr4),_case_id,'单位地址',_re4,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_unitname5,'')<>'' or IFNULL(_unitaddr5,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name5,CONCAT(_unitname5,"/",_unitaddr5),_case_id,'单位地址',_re5,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_unitname6,'')<>'' or IFNULL(_unitaddr6,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name6,CONCAT(_unitname6,"/",_unitaddr6),_case_id,'单位地址',_re6,'624','2017-01-16 12:00:00','0');
								end if;
								if (IFNULL(_unitname7,'')<>'' or IFNULL(_unitaddr7,'')<>'')  then
										insert into address(id,status,name,address,case_id,adr_cat,relation,create_emp_id,create_time,source) values
										(REPLACE(UUID(),'-',''),'1',_name7,CONCAT(_unitname7,"/",_unitaddr7),_case_id,'单位地址',_re7,'624','2017-01-16 12:00:00','0');
								end if;

						end loop cursor_loop;
				close rs_cursor;
		COMMIT;         
		SET AUTOCOMMIT = 1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `up_remark` */

/*!50003 DROP PROCEDURE IF EXISTS  `up_remark` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `up_remark`()
BEGIN
		DECLARE _case_id INT;
		DECLARE _remark LONGTEXT;
		DECLARE rs_cursor CURSOR FOR 
		SELECT cas_id,
		CONCAT('催收小结：',IFNULL(cas_tremark,''),'||','备注1：',IFNULL(cas_remark,''),'||','备注2：',IFNULL(cas_remark2,''),'||','备注3：',IFNULL(cas_remark3,''),'||','备注4：',IFNULL(cas_remark4,''),'||','备注5：',IFNULL(cas_remark5,''),'||','备注6：',IFNULL(cas_remark6,''),'||','备注7：',IFNULL(cas_remark7,''),'||','备注8：',IFNULL(cas_remark8,''),'||','自定义信息：',IFNULL(cas_note,''),'||','警告：',IFNULL(cas_warn,''),'||') AS remark
		FROM bank_case;
		START TRANSACTION;         
		SET AUTOCOMMIT = 0;  				
				open rs_cursor; 
						cursor_loop:loop
								FETCH rs_cursor into _case_id, _remark;
								update case_info set his_remark=_remark where id=_case_id;	
						end loop cursor_loop;
				close rs_cursor;
		COMMIT;         
		SET AUTOCOMMIT = 1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `up_visit_area1` */

/*!50003 DROP PROCEDURE IF EXISTS  `up_visit_area1` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `up_visit_area1`()
BEGIN
    START TRANSACTION;         
		SET AUTOCOMMIT = 0;  

		update visit_record v  
		join cus_area c on v.area_id1=c.are_id
		join region r on instr(r.name,c.are_name)>0 
		set v.area_id1= r.id
		where r.area_grade='0';
		
		COMMIT;         
		SET AUTOCOMMIT = 1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `up_visit_area2` */

/*!50003 DROP PROCEDURE IF EXISTS  `up_visit_area2` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `up_visit_area2`()
BEGIN
    START TRANSACTION;         
		SET AUTOCOMMIT = 0;  

		update visit_record v   
		join cus_province c on v.area_id2=c.prv_id
		join region r on instr(r.name,c.prv_name)>0  
		set v.area_id2= r.id
		where r.area_grade='1';
		
		COMMIT;         
		SET AUTOCOMMIT = 1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `up_visit_area3` */

/*!50003 DROP PROCEDURE IF EXISTS  `up_visit_area3` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `up_visit_area3`()
BEGIN
    START TRANSACTION;         
		SET AUTOCOMMIT = 0;  

		update visit_record v   
		join cus_city c on v.area_id3=c.city_id
		join region r on instr(r.name,c.city_name)>0     
		set v.area_id3= r.id
		where r.area_grade='2';
		
		COMMIT;         
		SET AUTOCOMMIT = 1;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
