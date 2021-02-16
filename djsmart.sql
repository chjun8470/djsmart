/*
 Navicat Premium Data Transfer

 Source Server         : djsmart
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : 221.144.12.7:3306
 Source Schema         : djsmart

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 18/01/2021 11:35:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_act_d
-- ----------------------------
DROP TABLE IF EXISTS `t_act_d`;
CREATE TABLE `t_act_d`  (
  `IDX` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'IDX',
  `H_IDX` bigint(0) DEFAULT NULL COMMENT '수주 IDX',
  `ITEMS_IDX` bigint(0) DEFAULT NULL COMMENT 'ITEM IDX',
  `ITEM_NM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '상품명',
  `SERIESD_IDX` bigint(0) DEFAULT NULL COMMENT '시리즈 Detail IDX',
  `QTY` int(0) DEFAULT NULL COMMENT '주문수량',
  `REMARK` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '비고',
  `USE_BK` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'BK 유무',
  `SIU_YN` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '시유 여부',
  `STATUS` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '상태',
  `END_YN` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '출고 완료',
  `DEL` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '주문 취소여부',
  `COL1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL3` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_DATE` datetime(0) DEFAULT NULL,
  `INSERT_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_DATE` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`IDX`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_act_h
-- ----------------------------
DROP TABLE IF EXISTS `t_act_h`;
CREATE TABLE `t_act_h`  (
  `IDX` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'IDX',
  `ACT_DATE` date DEFAULT NULL COMMENT '수주일자',
  `BIZ_IDX` bigint(0) DEFAULT NULL COMMENT '거래처',
  `ACT_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '수주명',
  `DEL_DATE` datetime(0) DEFAULT NULL COMMENT '납품일',
  `REMARK` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '세부사항',
  `ORD_TEXT` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '주문 특이사항',
  `END_YN` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '납품완료',
  `COL1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL3` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_DATE` datetime(0) DEFAULT NULL,
  `INSERT_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_DATE` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`IDX`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_biz_reg
-- ----------------------------
DROP TABLE IF EXISTS `t_biz_reg`;
CREATE TABLE `t_biz_reg`  (
  `IDX` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'IDX',
  `CUST_NM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '업체명',
  `ADDRESS` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '업체주소',
  `TEL` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '연락처',
  `CUST_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '담당자',
  `ITEM` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '주거래품목',
  `REMARK` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '비고',
  `COL1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_DATE` datetime(0) DEFAULT NULL,
  `UPDATE_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_DATE` datetime(0) DEFAULT NULL,
  `CUST_TYPE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CUST_USE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`IDX`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_bom
-- ----------------------------
DROP TABLE IF EXISTS `t_bom`;
CREATE TABLE `t_bom`  (
  `IDX` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'IDX',
  `ITEMS_IDX` bigint(0) NOT NULL COMMENT 'ITEMS IDX',
  `COMP_IDX` bigint(0) NOT NULL COMMENT 'COMPONENT IDX',
  `WORK_ALLO` decimal(10, 3) DEFAULT NULL COMMENT '소요량',
  `POINT` int(0) DEFAULT NULL COMMENT 'POINT',
  `COL1` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL2` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `REMARK` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '비고',
  `INSERT_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '신규 생성자',
  `INSERT_DATE` datetime(0) DEFAULT NULL COMMENT '신규 생성일',
  `UPDATE_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '수정 작업자',
  `UPDATE_DATE` datetime(0) DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`IDX`) USING BTREE,
  UNIQUE INDEX `t_bom_uk`(`ITEMS_IDX`, `COMP_IDX`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_cocd_d
-- ----------------------------
DROP TABLE IF EXISTS `t_cocd_d`;
CREATE TABLE `t_cocd_d`  (
  `IDX` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'Index',
  `H_IDX` bigint(0) DEFAULT NULL COMMENT 'Head Index',
  `S_NO` int(0) DEFAULT NULL COMMENT '출력순서',
  `CODE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '코드',
  `NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '코드명',
  `REMARK` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '비고',
  `COL1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '신규생성ID',
  `INSERT_DATE` datetime(0) DEFAULT NULL COMMENT '신규생성일',
  `UPDATE_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '수정 ID',
  `UPDATE_DATE` datetime(0) DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`IDX`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_cocd_h
-- ----------------------------
DROP TABLE IF EXISTS `t_cocd_h`;
CREATE TABLE `t_cocd_h`  (
  `IDX` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'Index (시퀀스)',
  `CODE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '코드 (Head)',
  `NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '코드명 (Head)',
  `REMARK` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '비고',
  `COL1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '필드 1',
  `COL2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '필드 2',
  `INSERT_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '신규생성 ID',
  `INSERT_DATE` datetime(0) DEFAULT NULL COMMENT '신규생성일',
  `UPDATE_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '수정 ID',
  `UPDATE_DATE` datetime(0) DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`IDX`, `CODE`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_component
-- ----------------------------
DROP TABLE IF EXISTS `t_component`;
CREATE TABLE `t_component`  (
  `IDX` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'IDX',
  `COMPONENT` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '자재코드',
  `COMPONENT_NM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '자재명',
  `SPEC` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '규격',
  `UNIT` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '단위',
  `STOCK` decimal(10, 3) NOT NULL DEFAULT 0.000 COMMENT '재고',
  `USE_YN` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '사용유무',
  `COL1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL3` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_DATE` datetime(0) DEFAULT NULL,
  `INSERT_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_DATE` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`IDX`) USING BTREE,
  UNIQUE INDEX `t_component_uk`(`COMPONENT`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_component_trans
-- ----------------------------
DROP TABLE IF EXISTS `t_component_trans`;
CREATE TABLE `t_component_trans`  (
  `IDX` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'IDX',
  `COMP_IDX` bigint(0) DEFAULT NULL COMMENT '자재 IDX',
  `TRANS_DATE` date DEFAULT NULL COMMENT '일자',
  `KIND` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '구분',
  `ACT_IDX` bigint(0) DEFAULT NULL COMMENT '수주 IDX',
  `IN_QTY` decimal(10, 2) DEFAULT NULL COMMENT '입고량',
  `OUT_QTY` decimal(10, 2) DEFAULT NULL COMMENT '출고량',
  `GJ_GB` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '공정구분',
  `COL1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ITEM_IDX` bigint(0) DEFAULT NULL,
  `REMARK` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_DATE` datetime(0) DEFAULT NULL,
  `UPDATE_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_DATE` datetime(0) DEFAULT NULL,
  `BIZ_IDX` bigint(0) DEFAULT NULL COMMENT '거래처 IDX',
  PRIMARY KEY (`IDX`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_inventory_trans
-- ----------------------------
DROP TABLE IF EXISTS `t_inventory_trans`;
CREATE TABLE `t_inventory_trans`  (
  `IDX` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'IDX',
  `ITEMS_IDX` bigint(0) DEFAULT NULL COMMENT '품목 IDX',
  `SERIESD_IDX` bigint(0) DEFAULT NULL COMMENT '시리즈 Detail IDX',
  `CU_DATE` date DEFAULT NULL COMMENT '시유일자',
  `SB_DATE` date DEFAULT NULL COMMENT '선별일자',
  `KIND` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '구분',
  `ACT_IDX` bigint(0) DEFAULT NULL COMMENT '수주 IDX',
  `ACT_D_IDX` bigint(0) DEFAULT NULL,
  `GJ_GB` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '怨듭젙援щ텇 ?쒖쑀:CU  ?좊퀎:SB',
  `IN_QTY` int(0) DEFAULT NULL COMMENT '입고량',
  `1_QTY` int(0) DEFAULT NULL COMMENT '1급',
  `2_QTY` int(0) DEFAULT NULL COMMENT '2급',
  `3_QTY` int(0) DEFAULT NULL COMMENT '파손',
  `4_QTY` int(0) DEFAULT NULL COMMENT '시유',
  `5_QTY` int(0) DEFAULT NULL COMMENT '기타',
  `OUT_QTY` int(0) DEFAULT NULL COMMENT '출고량',
  `COL1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `REMARK` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_DATE` datetime(0) DEFAULT NULL,
  `UPDATE_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_DATE` datetime(0) DEFAULT NULL,
  `IMG_LINK1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '?대?吏留곹겕 1',
  `IMG_LINK2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '이미지링크 2',
  `IMG_LINK3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '이미지링크 3',
  `CG_DATE` date DEFAULT NULL COMMENT '출고 Date',
  `RECYCLE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '재생여부',
  PRIMARY KEY (`IDX`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_item_stock
-- ----------------------------
DROP TABLE IF EXISTS `t_item_stock`;
CREATE TABLE `t_item_stock`  (
  `ITEM_IDX` bigint(0) NOT NULL COMMENT '품목 IDX',
  `SERIESD_IDX` bigint(0) NOT NULL COMMENT '시리즈 Detail IDX',
  `QTY` int(0) DEFAULT NULL COMMENT '수량',
  `COL1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `USE_YN` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Y',
  `UPDATE_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_DATE` datetime(0) DEFAULT NULL,
  `INSERT_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_DATE` datetime(0) DEFAULT NULL,
  `REMARK` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`ITEM_IDX`, `SERIESD_IDX`) USING BTREE,
  UNIQUE INDEX `t_item_stock_uk`(`ITEM_IDX`, `SERIESD_IDX`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_items
-- ----------------------------
DROP TABLE IF EXISTS `t_items`;
CREATE TABLE `t_items`  (
  `IDX` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'IDX',
  `ITEM_NO` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '품번',
  `ITEM_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '품명',
  `SPEC` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '규격',
  `SERIES_IDX` bigint(0) DEFAULT NULL COMMENT '시리즈_IDX',
  `UNIT` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '단위',
  `BK_YN` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'BK 여부',
  `JT_QTY` decimal(10, 3) DEFAULT NULL COMMENT '점토사용량',
  `BIZ_IDX` bigint(0) DEFAULT NULL COMMENT '거래처 IDX',
  `USE_YN` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '사용유무',
  `COL1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_DATE` datetime(0) DEFAULT NULL,
  `INSERT_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_DATE` datetime(0) DEFAULT NULL,
  `SH_QTY` int(0) DEFAULT NULL COMMENT '성형 수량',
  `JH_QTY` int(0) DEFAULT NULL COMMENT '정형 수량',
  PRIMARY KEY (`IDX`) USING BTREE,
  UNIQUE INDEX `t_items_uk`(`ITEM_NO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_items_trans
-- ----------------------------
DROP TABLE IF EXISTS `t_items_trans`;
CREATE TABLE `t_items_trans`  (
  `IDX` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'IDX',
  `ITEMS_IDX` bigint(0) DEFAULT NULL COMMENT '품목 IDX',
  `TRANS_DATE` date DEFAULT NULL COMMENT '일자',
  `KIND` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '구분',
  `ACT_IDX` bigint(0) DEFAULT NULL COMMENT '수주 IDX 예비',
  `IN_QTY` int(0) DEFAULT NULL COMMENT '입고량',
  `OUT_QTY` int(0) DEFAULT NULL COMMENT '출고량',
  `GJ_GB` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '공정구분 성형:SH  정형:JH',
  `COL1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ITEM_IDX` int(0) DEFAULT NULL,
  `REMARK` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_DATE` datetime(0) DEFAULT NULL,
  `UPDATE_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_DATE` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`IDX`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `IDX` int(0) NOT NULL AUTO_INCREMENT,
  `SDATE` datetime(0) DEFAULT NULL,
  `EDATE` datetime(0) DEFAULT NULL,
  `IP` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `MID` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'member id',
  `OS` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `BORWSER` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `STATUS` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '상태',
  PRIMARY KEY (`IDX`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_member
-- ----------------------------
DROP TABLE IF EXISTS `t_member`;
CREATE TABLE `t_member`  (
  `IDX` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '순번',
  `LEVEL` int(0) DEFAULT NULL COMMENT 'Level',
  `NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '사원번호',
  `ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '?ъ슜??ID',
  `PWD` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '사용자 PW',
  `NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '성명',
  `JNUMBER` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '주민등록번호',
  `BLOOD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '혈액형',
  `MARRY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '결혼여부',
  `FIRSTDAY` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '입사일',
  `PART` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '부서',
  `IMG` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '이미지',
  `GRADE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '직급',
  `TEL` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '연락처',
  `HP` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'HP',
  `ADDR1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '본적',
  `ADDR2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '현주소',
  `EMAIL` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '이메일',
  `EXPERIENCE` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '경력',
  `SCHOOL` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '학력',
  `FAMILY` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `LICENSE` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '면허',
  `ARMY` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '병력',
  `BANKOWN` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '예금주',
  `BANKNUM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '계좌번호',
  `BANKNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '은행명',
  `WORKKIND` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '취업형태',
  `IP` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'IP',
  `REGDATE` datetime(0) DEFAULT NULL COMMENT '등록일',
  `STATE` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '상태',
  `ISUSE` bit(1) DEFAULT NULL,
  `COL1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '컬럼1',
  `COL2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '컬럼2',
  `INSERT_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '신규등록 ID',
  `INSERT_DATE` datetime(0) DEFAULT NULL COMMENT '신규등록일',
  `UPDATE_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '수정 ID',
  `UPDATE_DATE` datetime(0) DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`IDX`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_menu01
-- ----------------------------
DROP TABLE IF EXISTS `t_menu01`;
CREATE TABLE `t_menu01`  (
  `IDX` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'IDX',
  `S_NO` int(0) DEFAULT NULL COMMENT '대 메뉴 출력순서',
  `MENU_GROUP` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '대 메뉴',
  `NUM` int(0) DEFAULT NULL COMMENT '소메뉴 출력순서',
  `MENUID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '소메뉴 ID',
  `MENUNAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '소메뉴 이름',
  `REMARK` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '비고',
  `LEVEL` tinyint(0) DEFAULT NULL COMMENT '접속 권한 Lev',
  `USE_YN` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '사용 유무',
  `INSERT_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_DATE` datetime(0) DEFAULT NULL,
  `UPDATE_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_DATE` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`IDX`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_series_d
-- ----------------------------
DROP TABLE IF EXISTS `t_series_d`;
CREATE TABLE `t_series_d`  (
  `SERIES_IDX` bigint(0) DEFAULT NULL COMMENT '시리즈 IDX',
  `IDX` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'Idx',
  `COLOR_CD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '색상코드',
  `COLOR` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '색상명',
  `USE_YN` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '사용유무',
  `COL1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL2` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL3` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_DATE` datetime(0) DEFAULT NULL,
  `INSERT_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_DATE` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`IDX`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_series_h
-- ----------------------------
DROP TABLE IF EXISTS `t_series_h`;
CREATE TABLE `t_series_h`  (
  `IDX` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'Idx',
  `SERIES` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '시리즈',
  `SERIES_NM` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '시리즈명',
  `USE_YN` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '사용유무',
  `COL1` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL2` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `COL3` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `UPDATE_DATE` datetime(0) DEFAULT NULL,
  `INSERT_ID` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_DATE` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`IDX`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_ver
-- ----------------------------
DROP TABLE IF EXISTS `t_ver`;
CREATE TABLE `t_ver`  (
  `IDX` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'IDX',
  `VER_NO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '버전',
  `VER_REMARK` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '업데이트내용',
  `UPDATE_DATE` datetime(0) DEFAULT NULL,
  `UPDATE_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `INSERT_DATE` datetime(0) DEFAULT NULL,
  `INSERT_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`IDX`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_workcal
-- ----------------------------
DROP TABLE IF EXISTS `t_workcal`;
CREATE TABLE `t_workcal`  (
  `WOEK_DATE` date DEFAULT NULL COMMENT '날짜',
  `REMARK` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '비고',
  `INSERT_DATE` datetime(0) DEFAULT NULL COMMENT '등록일',
  `INSERT_ID` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '등록자'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- View structure for t_item_series_v
-- ----------------------------
DROP VIEW IF EXISTS `t_item_series_v`;
CREATE ALGORITHM = UNDEFINED DEFINER = `admin`@`localhost` SQL SECURITY DEFINER VIEW `t_item_series_v` AS select `ti`.`IDX` AS `ITEM_IDX`,`ti`.`ITEM_NO` AS `ITEM_NO`,`ti`.`ITEM_NAME` AS `ITEM_NAME`,`ti`.`SPEC` AS `ITEM_SPEC`,`ti`.`UNIT` AS `UNIT`,`ti`.`USE_YN` AS `ITEM_USE_YN`,`ti`.`BK_YN` AS `BK_YN`,`ti`.`BIZ_IDX` AS `BIZ_IDX`,`tsh`.`IDX` AS `SERIES_IDX`,`tsh`.`SERIES` AS `SERIES`,`tsh`.`SERIES_NM` AS `SERIES_NM`,`tsh`.`USE_YN` AS `SERIESH_USE_YN`,`tsd`.`IDX` AS `SERIESD_IDX`,`tsd`.`COLOR_CD` AS `COLOR_CD`,`tsd`.`COLOR` AS `COLOR`,`tsd`.`USE_YN` AS `SERIESD_USE_YN` from ((`t_items` `ti` join `t_series_h` `tsh`) join `t_series_d` `tsd`) where ((`ti`.`SERIES_IDX` = `tsh`.`IDX`) and (`tsh`.`IDX` = `tsd`.`SERIES_IDX`));

-- ----------------------------
-- View structure for t_item_stock_v
-- ----------------------------
DROP VIEW IF EXISTS `t_item_stock_v`;
CREATE ALGORITHM = UNDEFINED DEFINER = `admin`@`localhost` SQL SECURITY DEFINER VIEW `t_item_stock_v` AS select `ti`.`IDX` AS `ITEM_IDX`,`ti`.`ITEM_NO` AS `ITEM_NO`,`ti`.`ITEM_NAME` AS `ITEM_NAME`,`ti`.`SPEC` AS `ITEM_SPEC`,`ti`.`UNIT` AS `UNIT`,`ti`.`USE_YN` AS `ITEM_USE_YN`,`ti`.`BK_YN` AS `BK_YN`,`ti`.`BIZ_IDX` AS `BIZ_IDX`,`tsh`.`IDX` AS `SERIES_IDX`,`tsh`.`SERIES` AS `SERIES`,`tsh`.`SERIES_NM` AS `SERIES_NM`,`tsh`.`USE_YN` AS `SERIESH_USE_YN`,`tsd`.`IDX` AS `SERIESD_IDX`,`tsd`.`COLOR_CD` AS `COLOR_CD`,`tsd`.`COLOR` AS `COLOR`,`tsd`.`USE_YN` AS `SERIESD_USE_YN`,`ist`.`QTY` AS `STOCK_QTY`,`ist`.`USE_YN` AS `USE_YN` from (((`t_items` `ti` join `t_series_h` `tsh`) join `t_series_d` `tsd`) join `t_item_stock` `ist`) where ((`ti`.`SERIES_IDX` = `tsh`.`IDX`) and (`tsh`.`IDX` = `tsd`.`SERIES_IDX`) and (`ist`.`ITEM_IDX` = `ti`.`IDX`) and (`ist`.`SERIESD_IDX` = `tsd`.`IDX`));

-- ----------------------------
-- View structure for t_series_v
-- ----------------------------
DROP VIEW IF EXISTS `t_series_v`;
CREATE ALGORITHM = UNDEFINED DEFINER = `admin`@`localhost` SQL SECURITY DEFINER VIEW `t_series_v` AS select `sh`.`IDX` AS `IDX`,`sh`.`SERIES` AS `SERIES`,`sh`.`SERIES_NM` AS `SERIES_NM`,`sh`.`USE_YN` AS `H_USE_YN`,`sd`.`IDX` AS `D_IDX`,`sd`.`COLOR_CD` AS `COLOR_CD`,`sd`.`COLOR` AS `COLOR`,`sd`.`USE_YN` AS `D_USE_YN` from (`t_series_h` `sh` join `t_series_d` `sd`) where (`sh`.`IDX` = `sd`.`SERIES_IDX`);

SET FOREIGN_KEY_CHECKS = 1;
