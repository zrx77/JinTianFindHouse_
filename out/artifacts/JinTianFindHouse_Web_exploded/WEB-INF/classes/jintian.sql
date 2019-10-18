/*
Navicat MySQL Data Transfer

Source Server         : web
Source Server Version : 50727
Source Host           : 47.97.161.152:3306
Source Database       : jintian

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-10-15 19:52:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `a_answerid` int(30) NOT NULL AUTO_INCREMENT,
  `a_userid` int(30) NOT NULL,
  `a_answerquestionid` int(30) NOT NULL,
  `a_answercontent` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`a_answerid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('1', '1', '1', '采光没有问题,是的');
INSERT INTO `answer` VALUES ('2', '2', '2', '周边设施完善,可以拎包入住');
INSERT INTO `answer` VALUES ('3', '3', '3', '有的,附近还有生活超市,');
INSERT INTO `answer` VALUES ('4', '4', '4', '有的,附近还有生活超市,公园等');
INSERT INTO `answer` VALUES ('5', '5', '5', '请您放心');
INSERT INTO `answer` VALUES ('6', '6', '6', '有的');

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `area_id` int(30) NOT NULL AUTO_INCREMENT,
  `area_value` varchar(60) NOT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', '50㎡以下');
INSERT INTO `area` VALUES ('2', '50-70㎡');
INSERT INTO `area` VALUES ('3', '70-90㎡');
INSERT INTO `area` VALUES ('4', '90-110㎡');
INSERT INTO `area` VALUES ('5', '110-130㎡');
INSERT INTO `area` VALUES ('6', '130-150㎡');

-- ----------------------------
-- Table structure for borkerinfo
-- ----------------------------
DROP TABLE IF EXISTS `borkerinfo`;
CREATE TABLE `borkerinfo` (
  `b_borkerid` int(30) NOT NULL AUTO_INCREMENT,
  `b_borkername` varchar(30) NOT NULL,
  `b_borkersex` varchar(30) DEFAULT NULL,
  `b_borkeriphone` int(30) NOT NULL,
  `b_entrytime` date DEFAULT NULL,
  `b_position` varchar(30) DEFAULT NULL,
  `b_companyid` int(30) NOT NULL,
  `company_audit` int(30) DEFAULT NULL,
  PRIMARY KEY (`b_borkerid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of borkerinfo
-- ----------------------------
INSERT INTO `borkerinfo` VALUES ('1', '徐建斌', '男', '111111', '2019-09-04', '主管', '1', '1');
INSERT INTO `borkerinfo` VALUES ('2', '张一', '女', '222222', '2019-09-11', '员工', '2', '1');
INSERT INTO `borkerinfo` VALUES ('3', '王五', '男', '333333', '2019-09-04', '组长', '3', '1');
INSERT INTO `borkerinfo` VALUES ('4', '张三', '男', '444444', '2019-09-12', '员工', '4', '1');
INSERT INTO `borkerinfo` VALUES ('5', '李四', '女', '555555', '2019-08-27', '总经理', '5', '0');
INSERT INTO `borkerinfo` VALUES ('6', '小明', '男', '666666', '2019-09-11', '员工', '6', '0');

-- ----------------------------
-- Table structure for characteristic
-- ----------------------------
DROP TABLE IF EXISTS `characteristic`;
CREATE TABLE `characteristic` (
  `characteristic_id` int(30) NOT NULL AUTO_INCREMENT,
  `characteristic_value` varchar(30) NOT NULL,
  PRIMARY KEY (`characteristic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of characteristic
-- ----------------------------
INSERT INTO `characteristic` VALUES ('1', '必然好房');
INSERT INTO `characteristic` VALUES ('2', '满五年');
INSERT INTO `characteristic` VALUES ('3', '满两年');
INSERT INTO `characteristic` VALUES ('4', '近地铁');
INSERT INTO `characteristic` VALUES ('5', 'VR房源');
INSERT INTO `characteristic` VALUES ('6', 'VR未来家');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `c_commentid` int(30) NOT NULL AUTO_INCREMENT,
  `c_userid` int(30) NOT NULL,
  `c_commenttime` date DEFAULT NULL,
  `c_commenthouseid` int(30) NOT NULL,
  `c_comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`c_commentid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', '2019-09-03', '1', '小区位置优越,楼龄稍老了一些,砖混结构');
INSERT INTO `comment` VALUES ('2', '2', '2019-09-23', '2', '采光无遮挡,简单装修,户型方正');
INSERT INTO `comment` VALUES ('3', '3', '2019-09-11', '3', '房内有异味,但总体格局大方');
INSERT INTO `comment` VALUES ('4', '4', '2019-09-18', '4', '楼层低出入方便');
INSERT INTO `comment` VALUES ('5', '5', '2019-08-26', '5', '房龄较老,水管等也有不同程度的老化');
INSERT INTO `comment` VALUES ('6', '6', '2019-08-27', '6', '采光较差,有遮挡物');

-- ----------------------------
-- Table structure for community
-- ----------------------------
DROP TABLE IF EXISTS `community`;
CREATE TABLE `community` (
  `community_id` int(30) NOT NULL AUTO_INCREMENT,
  `community_name` varchar(30) NOT NULL,
  `community_propertype` varchar(30) NOT NULL,
  `community_propertyprice` decimal(30,2) NOT NULL,
  `community_propertycompany` varchar(30) NOT NULL,
  `community_developer` varchar(30) NOT NULL,
  `community_totalbuild` varchar(30) NOT NULL,
  `community_element` varchar(30) NOT NULL,
  `community_tier` varchar(30) NOT NULL,
  `community_family` varchar(30) NOT NULL,
  `community_elevator` varchar(30) DEFAULT NULL,
  `community_elevatornumber` int(30) DEFAULT NULL,
  `community_trusteeship_id` int(30) NOT NULL,
  PRIMARY KEY (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community
-- ----------------------------
INSERT INTO `community` VALUES ('1', '溪秀苑翠溪园', '1', '2.35', '保利物业', '1', '20', '6', '20', '480', '有', '2', '1');
INSERT INTO `community` VALUES ('2', '旭辉御府', '3', '5.00', '恒大物业', '0', '20', '6', '20', '480', '有', '2', '2');
INSERT INTO `community` VALUES ('3', '旭水蓝轩', '2', '8.00', '太原物业', '1', '20', '6', '20', '480', '有', '2', '3');
INSERT INTO `community` VALUES ('4', '景园里', '2', '9.00', '新城物业', '1', '20', '6', '20', '480', '有', '2', '4');
INSERT INTO `community` VALUES ('5', '溪秀苑翠溪园', '3', '10.00', '天津物业', '0', '20', '6', '20', '480', '有', '3', '5');
INSERT INTO `community` VALUES ('6', '福悦里', '2', '10.00', '正荣物业', '1', '20', '6', '20', '480', '有', '1', '6');

-- ----------------------------
-- Table structure for dealsuccess
-- ----------------------------
DROP TABLE IF EXISTS `dealsuccess`;
CREATE TABLE `dealsuccess` (
  `d_dealid` int(30) NOT NULL AUTO_INCREMENT,
  `d_houseid` int(30) NOT NULL,
  `d_userid` int(30) NOT NULL,
  `d_successprice` decimal(10,2) NOT NULL,
  `d_costprice` decimal(10,2) DEFAULT NULL,
  `d_date` date NOT NULL,
  `d_indentnumber` varchar(30) NOT NULL,
  PRIMARY KEY (`d_dealid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dealsuccess
-- ----------------------------
INSERT INTO `dealsuccess` VALUES ('1', '1', '1', '380000.00', '375000.00', '2019-09-08', '123456');
INSERT INTO `dealsuccess` VALUES ('2', '2', '2', '250000.00', '245600.00', '2019-09-11', '123456');
INSERT INTO `dealsuccess` VALUES ('3', '3', '3', '450000.00', '452300.00', '2019-09-05', '123456');
INSERT INTO `dealsuccess` VALUES ('4', '4', '4', '270000.00', '245000.00', '2019-02-06', '123456');
INSERT INTO `dealsuccess` VALUES ('5', '5', '5', '245000.00', '235700.00', '2019-09-26', '123456');
INSERT INTO `dealsuccess` VALUES ('6', '6', '6', '525000.00', '510700.00', '2019-08-30', '123456');

-- ----------------------------
-- Table structure for decoration
-- ----------------------------
DROP TABLE IF EXISTS `decoration`;
CREATE TABLE `decoration` (
  `decoration_id` int(30) NOT NULL AUTO_INCREMENT,
  `decoration_value` varchar(30) NOT NULL,
  PRIMARY KEY (`decoration_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of decoration
-- ----------------------------
INSERT INTO `decoration` VALUES ('1', '精装修');
INSERT INTO `decoration` VALUES ('2', '普通装修');
INSERT INTO `decoration` VALUES ('3', '毛坯房');

-- ----------------------------
-- Table structure for developers
-- ----------------------------
DROP TABLE IF EXISTS `developers`;
CREATE TABLE `developers` (
  `d_developersid` int(30) NOT NULL AUTO_INCREMENT,
  `d_communityid` int(30) NOT NULL,
  PRIMARY KEY (`d_developersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of developers
-- ----------------------------

-- ----------------------------
-- Table structure for developersinfo
-- ----------------------------
DROP TABLE IF EXISTS `developersinfo`;
CREATE TABLE `developersinfo` (
  `d_developersinfo_id` int(30) NOT NULL AUTO_INCREMENT,
  `d_developersname` varchar(50) NOT NULL,
  `d_personname` varchar(30) NOT NULL,
  `d_personphone` varchar(30) NOT NULL,
  `d_developersaddress` varchar(50) NOT NULL,
  PRIMARY KEY (`d_developersinfo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of developersinfo
-- ----------------------------
INSERT INTO `developersinfo` VALUES ('1', '恒大', '许一', '051-111111', '天津和平');
INSERT INTO `developersinfo` VALUES ('2', '万科', '许二', '051-222222', '天津宁河');
INSERT INTO `developersinfo` VALUES ('3', '碧桂园', '许三', '051-333333', '天津武清');
INSERT INTO `developersinfo` VALUES ('4', '华润', '许四', '051-444444', '天津南开');
INSERT INTO `developersinfo` VALUES ('5', '世贸', '许五', '051-555555', '天津东丽');
INSERT INTO `developersinfo` VALUES ('6', '龙湖', '许六', '051-666666', '天津塘沽');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `feedback_id` int(30) NOT NULL AUTO_INCREMENT,
  `feedback_broker_id` int(30) NOT NULL,
  `feedback_time` date NOT NULL,
  `Feedback_lookhouset` date NOT NULL,
  `feedback_feedbroker_id` int(30) NOT NULL,
  `feedback_content` varchar(200) DEFAULT NULL,
  `feedback_client_id` int(30) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES ('1', '1', '2019-09-23', '2019-09-23', '1', '户型方正;南北通透;装修温馨;产权清晰;前排无遮挡', '1');
INSERT INTO `feedback` VALUES ('2', '2', '2019-09-10', '2019-09-06', '2', '格局不错,南北通透', '2');
INSERT INTO `feedback` VALUES ('3', '3', '2019-09-17', '2019-09-17', '3', '装修温馨,无异味', '3');
INSERT INTO `feedback` VALUES ('4', '4', '2019-09-10', '2019-09-18', '4', '无异味', '4');
INSERT INTO `feedback` VALUES ('5', '5', '2019-07-31', '2019-08-15', '5', '格局大方', '5');
INSERT INTO `feedback` VALUES ('6', '6', '2019-09-10', '2019-09-12', '6', '空间很大', '6');

-- ----------------------------
-- Table structure for floor
-- ----------------------------
DROP TABLE IF EXISTS `floor`;
CREATE TABLE `floor` (
  `floor_id` int(30) NOT NULL AUTO_INCREMENT,
  `floor_value` varchar(30) NOT NULL,
  PRIMARY KEY (`floor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of floor
-- ----------------------------
INSERT INTO `floor` VALUES ('1', '低楼层');
INSERT INTO `floor` VALUES ('2', '中楼层');
INSERT INTO `floor` VALUES ('3', '高楼层');

-- ----------------------------
-- Table structure for housecharacteristic
-- ----------------------------
DROP TABLE IF EXISTS `housecharacteristic`;
CREATE TABLE `housecharacteristic` (
  `hchara_id` int(30) NOT NULL AUTO_INCREMENT,
  `hchara_house_id` int(30) NOT NULL,
  `hchara_characteristic` varchar(100) NOT NULL,
  `hchara_sellpoint` varchar(100) NOT NULL,
  `hchara_introduced` varchar(100) NOT NULL,
  `hchara_traffic` varchar(100) NOT NULL,
  `hchara_ownership` varchar(100) DEFAULT NULL,
  `hchara_control information` varchar(100) DEFAULT NULL,
  `hchara_communityinfo` varchar(100) DEFAULT NULL,
  `hchara_housetype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`hchara_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of housecharacteristic
-- ----------------------------
INSERT INTO `housecharacteristic` VALUES ('1', '1', '周边配施完善', '格局大方,空间大', '南北通透,采光充足,便利生活', '交通方便', '房屋所有权', '已卖', '此小区房子为洋房，小区内栽种着各种植被，同时配备多种运动器械，方便您在工作之余进行简单的锻炼。', '此房为两室，敞亮舒适 ，格局方正规整，方便实用，厨房带窗有阳台，有助于通风，适合居住');
INSERT INTO `housecharacteristic` VALUES ('2', '2', '周边设备完善', '厨房带窗有阳台,有助于通风', '规划设施完善', '交通方便', '房屋所有权', '未卖', '此小区的环境比较优美，地面干净整洁，有花有树，平时可以在小区散步也是很不错的选择，还有一些健身器可以锻炼身体', '此房户型方正，东向两居，采光充足，无遮挡，无浪费面积');
INSERT INTO `housecharacteristic` VALUES ('3', '3', '周边设备完善,配备多种运动器械,方', '格局规整', '设施完善', '交通便捷', '无抵押', '已销', ' 此房子2008年建成，商品房配套设施，小区中间位置有水系，花园，每年春天小区一片生机盎然，还有健身器材供居民使用，其他信息看房时详细讲解', '此房格局比较好，采光好，屋内光线明亮，卧室的空间相对宽敞，原始两居改的一居，居住舒适');
INSERT INTO `housecharacteristic` VALUES ('4', '4', '周边设备完善', '小区环境干净舒适,适合居住', '出行方便,配套完善', '出行方便', '无抵押', '已销', '此小区房子为洋房，小区内栽种着各种植被，同时配备多种运动器械，方便您在工作之余进行简单的锻炼。', '此房为两室，敞亮舒适 ，格局方正规整，方便实用，厨房带窗有阳台，有助于通风，适合居住');
INSERT INTO `housecharacteristic` VALUES ('5', '5', '满五年', '房子精装修,总款低', '南北有窗,居住舒适', '出行十分便利', '无抵押', '已销', '此小区的环境比较优美，地面干净整洁，有花有树，平时可以在小区散步也是很不错的选择，还有一些健身器可以锻炼身体', '此房户型方正，东向两居，采光充足，无遮挡，无浪费面积');
INSERT INTO `housecharacteristic` VALUES ('6', '6', '满五年', '南北通透,户型方正,一梯两户,采光好', '全部为洋房,小区内栽种各种植被,配备多种运动器械,方便进行简', '200米处有生活超市,满足日常的生活购物需求', '有抵押 30万元 业主自还', '未销', ' 此房子2008年建成，商品房配套设施，小区中间位置有水系，花园，每年春天小区一片生机盎然，还有健身器材供居民使用，其他信息看房时详细讲解', '此房为两室，敞亮舒适 ，格局方正规整，方便实用，厨房带窗有阳台，有助于通风，适合居住');

-- ----------------------------
-- Table structure for housecompany
-- ----------------------------
DROP TABLE IF EXISTS `housecompany`;
CREATE TABLE `housecompany` (
  `company_id` int(30) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(30) NOT NULL,
  `company_phone` varchar(30) NOT NULL,
  `company_address` varchar(50) NOT NULL,
  `company_Identification` int(50) NOT NULL,
  `company_audit` int(30) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of housecompany
-- ----------------------------
INSERT INTO `housecompany` VALUES ('1', '光明地产', '111111', '天津', '111111', '1');
INSERT INTO `housecompany` VALUES ('2', '海信地产', '222222', '天津', '222222', '1');
INSERT INTO `housecompany` VALUES ('3', '天津地产', '333333', '天津', '333333', '1');
INSERT INTO `housecompany` VALUES ('4', '美盛地产', '444444', '天津', '444444', '1');
INSERT INTO `housecompany` VALUES ('5', '万科地产', '555555', '天津', '555555', '0');
INSERT INTO `housecompany` VALUES ('6', '恒达地产', '666666', '天津', '666666', '1');

-- ----------------------------
-- Table structure for houseinfo
-- ----------------------------
DROP TABLE IF EXISTS `houseinfo`;
CREATE TABLE `houseinfo` (
  `h_house_id` int(30) NOT NULL AUTO_INCREMENT,
  `h_user_id` int(30) DEFAULT NULL,
  `h_housetype_id` int(30) DEFAULT NULL,
  `h_attribute_id` int(30) DEFAULT NULL,
  `h_area_id` int(30) DEFAULT NULL,
  `h_street_id` int(30) DEFAULT NULL,
  `h_community_id` int(30) DEFAULT NULL,
  `h_tower` varchar(30) DEFAULT NULL,
  `h_tier` varchar(30) DEFAULT NULL,
  `h_family` varchar(30) DEFAULT NULL,
  `h_company_id` int(30) DEFAULT NULL,
  `h_broker_id` int(30) DEFAULT NULL,
  `h_recort_id` int(30) DEFAULT NULL,
  `h_feedback_id` int(30) DEFAULT NULL,
  `h_pledge_id` int(30) DEFAULT NULL,
  `h_flat` varchar(50) DEFAULT NULL,
  `h_structure` varchar(50) DEFAULT NULL,
  `h_heatsystem` varchar(50) DEFAULT NULL,
  `h_yearproperty` int(20) DEFAULT NULL,
  PRIMARY KEY (`h_house_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of houseinfo
-- ----------------------------
INSERT INTO `houseinfo` VALUES ('1', '1', '1', '1', '1', '1', '1', '36栋', '28层', '4户', '1', '1', '1', '1', '1', '平层', '混合结构', '集中供暖', '70');
INSERT INTO `houseinfo` VALUES ('2', '2', '1', '1', '2', '1', '1', '10栋', '25层', '6户', '1', '1', '1', null, '1', '平层', '钢混结构', '集中供暖', '70');
INSERT INTO `houseinfo` VALUES ('3', '3', '1', '1', '3', '2', '2', '20栋', '10层', '3户', '2', '2', '2', '2', '2', '平层', '混合结构', '集中供暖', '70');
INSERT INTO `houseinfo` VALUES ('4', '4', '1', '1', '1', '1', '1', '30栋', '24层', '8户', '1', '1', '1', '1', '1', '平层', '钢混结构', '集中供暖', '70');

-- ----------------------------
-- Table structure for housepledge
-- ----------------------------
DROP TABLE IF EXISTS `housepledge`;
CREATE TABLE `housepledge` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `h_housepledge_id` int(30) DEFAULT NULL,
  `h_pledgetypy_id` int(30) DEFAULT NULL,
  `h_borker_id` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of housepledge
-- ----------------------------
INSERT INTO `housepledge` VALUES ('1', '1', '1', '1');

-- ----------------------------
-- Table structure for housetrusteeship
-- ----------------------------
DROP TABLE IF EXISTS `housetrusteeship`;
CREATE TABLE `housetrusteeship` (
  `ht_id` int(30) NOT NULL AUTO_INCREMENT,
  `ht_housecompany_id` int(30) NOT NULL,
  `ht_borker_id` int(30) DEFAULT NULL,
  `ht_houseid` int(30) DEFAULT NULL,
  PRIMARY KEY (`ht_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of housetrusteeship
-- ----------------------------
INSERT INTO `housetrusteeship` VALUES ('1', '1', '1', '1');
INSERT INTO `housetrusteeship` VALUES ('2', '2', '2', '2');
INSERT INTO `housetrusteeship` VALUES ('3', '3', null, null);
INSERT INTO `housetrusteeship` VALUES ('4', '4', null, null);
INSERT INTO `housetrusteeship` VALUES ('5', '5', '5', '5');
INSERT INTO `housetrusteeship` VALUES ('6', '6', '6', '6');

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `i_image_id` int(30) NOT NULL AUTO_INCREMENT,
  `i_house_id` int(30) NOT NULL,
  `i_imagenumber` int(30) NOT NULL,
  `i_imageurl` varchar(200) NOT NULL,
  PRIMARY KEY (`i_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('1', '1', '1', 'statics/images/pc1.jpg');
INSERT INTO `images` VALUES ('2', '2', '1', 'statics/images/pc1.jpg');
INSERT INTO `images` VALUES ('3', '3', '3', 'zimg201');
INSERT INTO `images` VALUES ('4', '4', '4', 'jimg1001');
INSERT INTO `images` VALUES ('5', '5', '5', 'fimg2001');
INSERT INTO `images` VALUES ('6', '6', '6', 'eimg02');
INSERT INTO `images` VALUES ('7', '1', '2', 'loupan/statics/images/ximg2.jpg');
INSERT INTO `images` VALUES ('8', '2', '3', 'loupan/statics/images/ximg1.jpg');
INSERT INTO `images` VALUES ('9', '1', '2', 'statics/images/pc0_opgc9argj.jpg.q_70.jpg');
INSERT INTO `images` VALUES ('10', '1', '1', 'loupan/statics/images/ximg1.jpg');
INSERT INTO `images` VALUES ('11', '2', '3', 'loupan/statics/images/ximg2.jpg');
INSERT INTO `images` VALUES ('12', '3', '1', 'loupan/statics/images/ximg2.jpg');
INSERT INTO `images` VALUES ('13', '2', '2', 'loupan/statics/images/ximg1.jpg');
INSERT INTO `images` VALUES ('14', '1', '3', 'statics/images/shouse1.jpg!m_fill,w_235,h_178,l_fbk');
INSERT INTO `images` VALUES ('15', '1', '4', 'statics/images/pc4.jpgstatics/images/shouse2.jpg!m_fill,w_235,h_178,l_fbk');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `job_id` int(30) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(30) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('1', '总经理');
INSERT INTO `job` VALUES ('2', '副总经理');
INSERT INTO `job` VALUES ('3', '主管');
INSERT INTO `job` VALUES ('4', '人事总监');
INSERT INTO `job` VALUES ('5', '组长');
INSERT INTO `job` VALUES ('6', '员工');

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `area_id` int(30) NOT NULL AUTO_INCREMENT,
  `metro_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES ('1', '天津');

-- ----------------------------
-- Table structure for mortgagetype
-- ----------------------------
DROP TABLE IF EXISTS `mortgagetype`;
CREATE TABLE `mortgagetype` (
  `mortgagetype_id` int(30) NOT NULL AUTO_INCREMENT,
  `mortgagetype_value` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`mortgagetype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mortgagetype
-- ----------------------------
INSERT INTO `mortgagetype` VALUES ('1', '个人抵押');
INSERT INTO `mortgagetype` VALUES ('2', '按揭贷款');
INSERT INTO `mortgagetype` VALUES ('3', '质押贷款');

-- ----------------------------
-- Table structure for new_h
-- ----------------------------
DROP TABLE IF EXISTS `new_h`;
CREATE TABLE `new_h` (
  `new_h_id` int(30) NOT NULL AUTO_INCREMENT,
  `new_h_screen` int(30) NOT NULL,
  `new_h_opening` int(30) NOT NULL,
  `new_h_status` int(30) NOT NULL,
  `new_h_opentime` date NOT NULL,
  `new_h_feature_ID` int(50) NOT NULL,
  `new_h_price` int(50) NOT NULL,
  `new_h_imageurl` varchar(100) NOT NULL,
  `new_h_newname` varchar(100) NOT NULL,
  `new_h_totalprice` int(100) NOT NULL,
  `new_h_area` int(100) NOT NULL,
  `new_h_hall` int(20) NOT NULL,
  PRIMARY KEY (`new_h_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of new_h
-- ----------------------------
INSERT INTO `new_h` VALUES ('1', '1', '5', '1', '2019-09-12', '1', '31800', 'loupan/statics/images/ximg1.jpg', '旭辉景瑞·塘沽湾陆号', '127', '1200', '1');
INSERT INTO `new_h` VALUES ('2', '2', '4', '2', '2019-09-05', '2', '23900', 'loupan/statics/images/ximg3.jpg', '月星家居广场', '230', '1400', '2');
INSERT INTO `new_h` VALUES ('3', '3', '4', '3', '2019-08-28', '3', '22100', 'loupan/statics/images/ximg1.jpg', '南益金街', '150', '1000', '1');
INSERT INTO `new_h` VALUES ('4', '4', '4', '1', '2019-08-28', '4', '21700', 'loupan/statics/images/ximg2.jpg', '天保汇津广场', '123', '1100', '2');
INSERT INTO `new_h` VALUES ('5', '5', '1', '2', '2019-08-27', '5', '56000', 'loupan/statics/images/ximg3.jpg', '金地平山印', '360', '2400', '2');
INSERT INTO `new_h` VALUES ('6', '6', '3', '1', '2019-09-05', '6', '23500', 'loupan/statics/images/ximg2.jpg', '首创禧悦公馆', '240', '1600', '1');
INSERT INTO `new_h` VALUES ('7', '7', '1', '1', '2019-01-01', '7', '36100', 'loupan/statics/images/ximg2.jpg', '紫熙臺', '320', '1200', '2');
INSERT INTO `new_h` VALUES ('8', '2', '2', '1', '2018-06-05', '1', '28200', 'loupan/statics/images/ximg2.jpg', '绿氧小镇商铺', '180', '1300', '1');
INSERT INTO `new_h` VALUES ('9', '3', '2', '3', '2017-01-03', '2', '27500', 'loupan/statics/images/ximg3.jpg', '滨海明发广场', '310', '1540', '2');
INSERT INTO `new_h` VALUES ('10', '1', '3', '3', '2019-03-04', '3', '72000', 'loupan/statics/images/ximg1.jpg', '北大资源阅公馆', '200', '1300', '1');
INSERT INTO `new_h` VALUES ('11', '3', '1', '2', '2019-10-21', '4', '42300', 'loupan/statics/images/ximg2.jpg', '象博豪庭', '143', '1200', '2');
INSERT INTO `new_h` VALUES ('12', '5', '3', '3', '2017-03-25', '5', '24900', 'loupan/statics/images/ximg3.jpg', '南益名悦华庭', '325', '1300', '1');
INSERT INTO `new_h` VALUES ('13', '6', '4', '2', '2016-04-15', '6', '30200', 'loupan/statics/images/ximg2.jpg', '梧桐大道', '126', '1140', '2');
INSERT INTO `new_h` VALUES ('14', '7', '5', '3', '2018-02-21', '7', '43400', 'loupan/statics/images/ximg1.jpg', '通用陆院', '421', '1700', '2');

-- ----------------------------
-- Table structure for old_h
-- ----------------------------
DROP TABLE IF EXISTS `old_h`;
CREATE TABLE `old_h` (
  `old_h_id` varchar(30) NOT NULL,
  `old_h_screen` int(30) NOT NULL,
  `old_h_decoration` int(30) NOT NULL,
  `old_h_heating` int(30) NOT NULL,
  `old_h_ownership` int(30) NOT NULL,
  `old_h_propertype` int(30) NOT NULL,
  `old_h_ladderratio` int(30) NOT NULL,
  `old_h_yearproperty` int(30) NOT NULL,
  `old_h_lastsale` date NOT NULL,
  `old_h_mortgageInfor` int(30) NOT NULL,
  `old_h_roomrpareprarts` int(30) NOT NULL,
  `old_h_img` varchar(60) NOT NULL,
  `old_h_show` varchar(255) NOT NULL,
  `old_h_price` int(10) NOT NULL,
  `old_h_communityid` int(30) NOT NULL,
  `old_h_metre` int(30) NOT NULL,
  `old_h_ propertyownership` int(30) NOT NULL,
  PRIMARY KEY (`old_h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of old_h
-- ----------------------------
INSERT INTO `old_h` VALUES ('1', '1', '1', '1', '1', '1', '1', '70', '2019-09-23', '1', '1', 'statics/images/shouye_c_1.jpg', '万源星城低楼层，H户型，南北通透，看房方便', '120', '1', '87', '0');
INSERT INTO `old_h` VALUES ('2', '1', '1', '2', '1', '1', '1', '70', '2019-09-23', '1', '1', 'statics/images/shouye_c_2.jfif', '溪秀苑，低楼层，中间位置，业主诚心出售', '125', '2', '76', '0');
INSERT INTO `old_h` VALUES ('3', '1', '1', '3', '1', '1', '1', '70', '2019-09-23', '1', '1', 'statics/images/shouye_c_3.jfif', '中北镇溪秀苑通透两室、房间干净、价格合适看房方便', '130', '3', '80', '0');
INSERT INTO `old_h` VALUES ('4', '1', '1', '1', '1', '1', '1', '70', '2018-02-11', '1', '1', 'statics/images/shouye_c_4.jfif', '配套较齐 采光较好 业主诚意出售 干净整洁 看房方便', '150', '3', '93', '0');
INSERT INTO `old_h` VALUES ('5', '1', '1', '1', '1', '1', '1', '70', '2019-07-01', '1', '1', 'statics/images/shouye_c_2.jfif', '桥园里 精装两室 2楼 采光充足 双地铁 看房方便', '98', '2', '88', '0');

-- ----------------------------
-- Table structure for opening
-- ----------------------------
DROP TABLE IF EXISTS `opening`;
CREATE TABLE `opening` (
  `opening_id` int(30) NOT NULL AUTO_INCREMENT,
  `opening_value` varchar(30) NOT NULL,
  PRIMARY KEY (`opening_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opening
-- ----------------------------
INSERT INTO `opening` VALUES ('1', '近期开盘');
INSERT INTO `opening` VALUES ('2', '售罄');
INSERT INTO `opening` VALUES ('3', '1月后');
INSERT INTO `opening` VALUES ('4', '3月后');

-- ----------------------------
-- Table structure for oriented
-- ----------------------------
DROP TABLE IF EXISTS `oriented`;
CREATE TABLE `oriented` (
  `oriented_id` int(30) NOT NULL AUTO_INCREMENT,
  `oriented_value` varchar(30) NOT NULL,
  PRIMARY KEY (`oriented_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oriented
-- ----------------------------
INSERT INTO `oriented` VALUES ('1', '南北');
INSERT INTO `oriented` VALUES ('2', '朝南');
INSERT INTO `oriented` VALUES ('3', '朝东');
INSERT INTO `oriented` VALUES ('4', '朝北');
INSERT INTO `oriented` VALUES ('5', '朝西');

-- ----------------------------
-- Table structure for ownership
-- ----------------------------
DROP TABLE IF EXISTS `ownership`;
CREATE TABLE `ownership` (
  `ownership_id` int(30) NOT NULL AUTO_INCREMENT,
  `ownership_value` varchar(30) NOT NULL,
  PRIMARY KEY (`ownership_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ownership
-- ----------------------------
INSERT INTO `ownership` VALUES ('1', '商品房');
INSERT INTO `ownership` VALUES ('2', '公房');
INSERT INTO `ownership` VALUES ('3', '经适房');
INSERT INTO `ownership` VALUES ('4', '其他');

-- ----------------------------
-- Table structure for permit
-- ----------------------------
DROP TABLE IF EXISTS `permit`;
CREATE TABLE `permit` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `p_premit_id` int(30) NOT NULL,
  `p_havepremit` varchar(30) NOT NULL,
  `p_premitnumber` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permit
-- ----------------------------
INSERT INTO `permit` VALUES ('1', '1', '有', '100001');
INSERT INTO `permit` VALUES ('2', '2', '无', null);
INSERT INTO `permit` VALUES ('3', '3', '有', '100003');
INSERT INTO `permit` VALUES ('4', '4', '有', '100004');
INSERT INTO `permit` VALUES ('5', '5', '有', '100005');
INSERT INTO `permit` VALUES ('6', '6', '有', '100006');

-- ----------------------------
-- Table structure for problemfocused
-- ----------------------------
DROP TABLE IF EXISTS `problemfocused`;
CREATE TABLE `problemfocused` (
  `pro_problemid` int(30) NOT NULL AUTO_INCREMENT,
  `pro_userid` int(30) DEFAULT NULL,
  `pro_problem` int(30) DEFAULT NULL,
  PRIMARY KEY (`pro_problemid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of problemfocused
-- ----------------------------
INSERT INTO `problemfocused` VALUES ('1', '1', '1');
INSERT INTO `problemfocused` VALUES ('2', '2', '2');
INSERT INTO `problemfocused` VALUES ('3', '3', '3');
INSERT INTO `problemfocused` VALUES ('4', '4', '4');
INSERT INTO `problemfocused` VALUES ('5', '5', '5');
INSERT INTO `problemfocused` VALUES ('6', '6', '6');
INSERT INTO `problemfocused` VALUES ('7', '7', '7');

-- ----------------------------
-- Table structure for propertyownership
-- ----------------------------
DROP TABLE IF EXISTS `propertyownership`;
CREATE TABLE `propertyownership` (
  `po_id` int(20) NOT NULL AUTO_INCREMENT,
  `po_value` varchar(50) NOT NULL,
  PRIMARY KEY (`po_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of propertyownership
-- ----------------------------
INSERT INTO `propertyownership` VALUES ('1', '共有');
INSERT INTO `propertyownership` VALUES ('2', '非共有');

-- ----------------------------
-- Table structure for propertype
-- ----------------------------
DROP TABLE IF EXISTS `propertype`;
CREATE TABLE `propertype` (
  `propertype_id` int(30) NOT NULL AUTO_INCREMENT,
  `propertype_value` varchar(30) NOT NULL,
  PRIMARY KEY (`propertype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of propertype
-- ----------------------------
INSERT INTO `propertype` VALUES ('1', '塔楼');
INSERT INTO `propertype` VALUES ('2', '板楼');
INSERT INTO `propertype` VALUES ('3', '板塔结合');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `q_questionid` int(30) NOT NULL AUTO_INCREMENT,
  `q_userid` int(30) DEFAULT NULL,
  `q_question` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`q_questionid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '1', '采光如何,是否是精装修?');
INSERT INTO `question` VALUES ('2', '2', '周边设施完善吗');
INSERT INTO `question` VALUES ('3', '3', '周边有医院吗');
INSERT INTO `question` VALUES ('4', '4', '附近有公园广场吗');
INSERT INTO `question` VALUES ('5', '5', '价格如何');
INSERT INTO `question` VALUES ('6', '6', '之前有人看过这套房子吗?');

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `region_id` int(30) NOT NULL AUTO_INCREMENT,
  `region_value` varchar(30) NOT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO `region` VALUES ('1', '和平');
INSERT INTO `region` VALUES ('2', '南开');
INSERT INTO `region` VALUES ('3', '河西');
INSERT INTO `region` VALUES ('4', '河北');
INSERT INTO `region` VALUES ('5', '河东');
INSERT INTO `region` VALUES ('6', '红桥');
INSERT INTO `region` VALUES ('7', '西青');
INSERT INTO `region` VALUES ('8', '北辰');
INSERT INTO `region` VALUES ('9', '东丽');
INSERT INTO `region` VALUES ('10', '津南');
INSERT INTO `region` VALUES ('11', '塘沽');
INSERT INTO `region` VALUES ('12', '开发区');
INSERT INTO `region` VALUES ('13', '武清');
INSERT INTO `region` VALUES ('14', '滨海新区');
INSERT INTO `region` VALUES ('15', '宝坻');
INSERT INTO `region` VALUES ('16', '蓟州');
INSERT INTO `region` VALUES ('17', '海河教育园区');

-- ----------------------------
-- Table structure for rent_h
-- ----------------------------
DROP TABLE IF EXISTS `rent_h`;
CREATE TABLE `rent_h` (
  `rent_h_id` int(30) NOT NULL,
  `Screen_h_id` int(30) NOT NULL,
  `rent_h_way` int(30) NOT NULL,
  `rent_h_brand` int(30) NOT NULL,
  `rent_h_renttime` int(30) NOT NULL,
  `Rent_h_peoperty` int(30) DEFAULT NULL,
  `rent_h_checkIn` varchar(30) NOT NULL,
  `rent_h_look` varchar(30) NOT NULL,
  `rent_h_carspace` int(30) NOT NULL,
  `rent_h_usewater` varchar(30) NOT NULL,
  `rent_h_useelectricity` varchar(30) NOT NULL,
  `rent_h_gas` int(30) NOT NULL,
  `rent_h_tv` int(30) NOT NULL,
  `rent_h_refrigerator` int(30) NOT NULL,
  `rent_h_washing` int(30) NOT NULL,
  `rent_h_aircond` int(30) NOT NULL,
  `rent_h_waterheater` int(30) NOT NULL,
  `rent_h_bed` int(30) NOT NULL,
  `rent_h_heating` int(30) NOT NULL,
  `rent_h_wifi` int(30) NOT NULL,
  `rent_h_wardrobe` int(30) NOT NULL,
  `rent_h_naturalgas` int(30) NOT NULL,
  `rent_h_price` int(30) NOT NULL,
  `rent_h_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rent_h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rent_h
-- ----------------------------
INSERT INTO `rent_h` VALUES ('1', '1', '2', '5', '3', '1', '随时入住', '随时可看', '1', '民用水', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '40', 'renthouse/images/1.jpg');
INSERT INTO `rent_h` VALUES ('2', '2', '2', '4', '3', '1', '随时入住', '随时可看', '1', '民用水', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '36', 'renthouse/images/2.jpg');
INSERT INTO `rent_h` VALUES ('3', '3', '2', '8', '5', '1', '随时入住', '随时可看', '1', '民用水', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '74', 'renthouse/images/3.jpg');
INSERT INTO `rent_h` VALUES ('4', '4', '1', '7', '4', '1', '随时入住', '随时可看', '0', '民用水', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '0', '45', 'renthouse/images/4.jpg');
INSERT INTO `rent_h` VALUES ('5', '5', '2', '6', '5', '1', '随时入住', '随时可看', '1', '民用水', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '44', 'renthouse/images/5.jpg');
INSERT INTO `rent_h` VALUES ('6', '6', '1', '5', '2', '1', '随时入住', '随时可看', '0', '民用水', '1', '0', '1', '0', '1', '0', '1', '1', '1', '1', '1', '1', '50', 'renthouse/images/6.jpg');
INSERT INTO `rent_h` VALUES ('7', '7', '1', '5', '2', '1', '随时入住', '随时可看', '0', '民用水', '1', '0', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '35', 'renthouse/images/7.jpg');
INSERT INTO `rent_h` VALUES ('8', '8', '1', '5', '2', '1', '随时入住', '随时可看', '0', '民用水', '1', '0', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '80', 'renthouse/images/8.jpg');

-- ----------------------------
-- Table structure for rentrecord
-- ----------------------------
DROP TABLE IF EXISTS `rentrecord`;
CREATE TABLE `rentrecord` (
  `rentrecord_id` int(30) NOT NULL AUTO_INCREMENT,
  `rentrecord_housetype` varchar(30) NOT NULL,
  `rentrecord_dealtime` date NOT NULL,
  `rentrecord_price` decimal(30,2) NOT NULL,
  `rentrecord_rentalmethod` varchar(30) NOT NULL,
  `rentrecord_paymoneytype` varchar(30) DEFAULT NULL,
  `rentrecord_renthouseid` int(30) NOT NULL,
  PRIMARY KEY (`rentrecord_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rentrecord
-- ----------------------------
INSERT INTO `rentrecord` VALUES ('1', '1', '2019-09-09', '1000.00', '1', '2', '1');
INSERT INTO `rentrecord` VALUES ('2', '2', '2019-08-27', '1500.00', '0', '3', '2');
INSERT INTO `rentrecord` VALUES ('3', '3', '2019-09-10', '1800.00', '1', '1', '3');
INSERT INTO `rentrecord` VALUES ('4', '4', '2019-09-03', '2000.00', '1', '2', '4');
INSERT INTO `rentrecord` VALUES ('5', '5', '2019-09-10', '2200.00', '1', '2', '5');
INSERT INTO `rentrecord` VALUES ('6', '6', '2019-09-18', '1800.00', '0', '3', '6');

-- ----------------------------
-- Table structure for roomtype
-- ----------------------------
DROP TABLE IF EXISTS `roomtype`;
CREATE TABLE `roomtype` (
  `roomtype_id` int(30) NOT NULL AUTO_INCREMENT,
  `roomtype_value` varchar(30) NOT NULL,
  PRIMARY KEY (`roomtype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roomtype
-- ----------------------------
INSERT INTO `roomtype` VALUES ('1', '一室');
INSERT INTO `roomtype` VALUES ('2', '二室');
INSERT INTO `roomtype` VALUES ('3', '三室');
INSERT INTO `roomtype` VALUES ('4', '四室');
INSERT INTO `roomtype` VALUES ('5', '五室');
INSERT INTO `roomtype` VALUES ('6', '五室以上');

-- ----------------------------
-- Table structure for screen
-- ----------------------------
DROP TABLE IF EXISTS `screen`;
CREATE TABLE `screen` (
  `screen_id` int(30) NOT NULL AUTO_INCREMENT,
  `screen_house_id` int(30) NOT NULL,
  `screen_locationid` int(30) DEFAULT NULL,
  `screen__price_id` int(30) DEFAULT NULL,
  `screen__housetype_id` int(30) DEFAULT NULL,
  `screen_buildingarea_id` int(30) DEFAULT NULL,
  `screen_characteristic_id` int(30) DEFAULT NULL,
  `screen_oriented_id` int(30) DEFAULT NULL,
  `screen_floor_id` int(30) DEFAULT NULL,
  `screen_use_id` int(30) DEFAULT NULL,
  PRIMARY KEY (`screen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of screen
-- ----------------------------
INSERT INTO `screen` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for street
-- ----------------------------
DROP TABLE IF EXISTS `street`;
CREATE TABLE `street` (
  `street_id` int(30) NOT NULL AUTO_INCREMENT,
  `street_value` varchar(30) NOT NULL,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of street
-- ----------------------------
INSERT INTO `street` VALUES ('1', '南市');
INSERT INTO `street` VALUES ('2', '南市门营');
INSERT INTO `street` VALUES ('3', '劝业场');
INSERT INTO `street` VALUES ('4', '桃园街');
INSERT INTO `street` VALUES ('5', '体育馆街');
INSERT INTO `street` VALUES ('6', '小白楼');
INSERT INTO `street` VALUES ('7', '新兴街');

-- ----------------------------
-- Table structure for subway
-- ----------------------------
DROP TABLE IF EXISTS `subway`;
CREATE TABLE `subway` (
  `subway_id` int(30) NOT NULL AUTO_INCREMENT,
  `sunway_value` varchar(30) NOT NULL,
  PRIMARY KEY (`subway_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subway
-- ----------------------------
INSERT INTO `subway` VALUES ('1', '5号线');
INSERT INTO `subway` VALUES ('2', '1号线');
INSERT INTO `subway` VALUES ('3', '2号线');
INSERT INTO `subway` VALUES ('4', '3号线');
INSERT INTO `subway` VALUES ('5', '6号线');
INSERT INTO `subway` VALUES ('6', '9号线');

-- ----------------------------
-- Table structure for supportingfacility
-- ----------------------------
DROP TABLE IF EXISTS `supportingfacility`;
CREATE TABLE `supportingfacility` (
  `s_supportingid` int(30) NOT NULL AUTO_INCREMENT,
  `s_communityid` int(30) NOT NULL,
  `s_hospital` varchar(30) DEFAULT NULL,
  `s_supermarket` varchar(30) DEFAULT NULL,
  `s_school` varchar(30) DEFAULT NULL,
  `s_park` varchar(30) DEFAULT NULL,
  `s_busstatin` varchar(30) DEFAULT NULL,
  `s_metro` varchar(30) DEFAULT NULL,
  `s_bank` varchar(30) DEFAULT NULL,
  `s_recreation` varchar(30) DEFAULT NULL,
  `s_shopping` varchar(30) DEFAULT NULL,
  `s_catering` varchar(30) DEFAULT NULL,
  `s_sports` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`s_supportingid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supportingfacility
-- ----------------------------
INSERT INTO `supportingfacility` VALUES ('1', '1', '有', '有', '无', '有', '有', '无', '有', '有', '有', '有', '有');
INSERT INTO `supportingfacility` VALUES ('2', '2', '有', '有 ', '无', '有', null, null, null, '有', null, '有', '有');
INSERT INTO `supportingfacility` VALUES ('3', '3', '无', '有', '无', '有', '有', '有', null, '有', '无', '有', '有');
INSERT INTO `supportingfacility` VALUES ('4', '4', '有', '无', '有', '无', '有', ' ', '有', '无', '无', '有', '有');
INSERT INTO `supportingfacility` VALUES ('5', '5', '有', '无', '无', '有', '有', '无', '有', '无', '有', '有', '无');
INSERT INTO `supportingfacility` VALUES ('6', '6', '无', '有', '有', '无', '无', '有', '无', '有', '无', '有', '无');

-- ----------------------------
-- Table structure for use
-- ----------------------------
DROP TABLE IF EXISTS `use`;
CREATE TABLE `use` (
  `use_id` int(30) NOT NULL AUTO_INCREMENT,
  `use_value` varchar(30) NOT NULL,
  PRIMARY KEY (`use_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of use
-- ----------------------------
INSERT INTO `use` VALUES ('1', '普通住宅');
INSERT INTO `use` VALUES ('2', '商业类');
INSERT INTO `use` VALUES ('3', '别墅');
INSERT INTO `use` VALUES ('4', '四合院');
INSERT INTO `use` VALUES ('5', '车位');
INSERT INTO `use` VALUES ('6', '其他');

-- ----------------------------
-- Table structure for userlike
-- ----------------------------
DROP TABLE IF EXISTS `userlike`;
CREATE TABLE `userlike` (
  `userlike_id` int(20) NOT NULL AUTO_INCREMENT,
  `userlike_users_id` int(20) DEFAULT NULL,
  `userlike_old_h_id` int(20) DEFAULT NULL,
  `userlike_new_h_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`userlike_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlike
-- ----------------------------
INSERT INTO `userlike` VALUES ('1', '4', '1', '2');
INSERT INTO `userlike` VALUES ('2', '4', '2', '1');
INSERT INTO `userlike` VALUES ('3', '4', '3', '3');
INSERT INTO `userlike` VALUES ('5', '1', '1', '2');
INSERT INTO `userlike` VALUES ('6', '1', '2', '1');
INSERT INTO `userlike` VALUES ('7', '1', '3', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `u_id` int(30) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(30) NOT NULL,
  `u_pwd` varchar(100) NOT NULL,
  `u_house_id` int(30) DEFAULT NULL,
  `u_phonenumber` varchar(80) NOT NULL,
  `u_listing` int(30) DEFAULT NULL,
  `u_community` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '15234190078', 'xgl6590', '1', '15234190078', null, '');
INSERT INTO `users` VALUES ('17', '19935150512', 'lxy1234', null, '19935150512', null, null);
INSERT INTO `users` VALUES ('23', '13485478439', 'zrf1234', null, '13485478439', null, null);
INSERT INTO `users` VALUES ('27', '18734852225', 'laosun111', null, '18734852225', null, null);
INSERT INTO `users` VALUES ('28', '18035147414', 'Jc5201314.', null, '18035147414', null, null);
