/*
Navicat SQL Server Data Transfer

Source Server         : SqlServer连接
Source Server Version : 90000
Source Host           : 127.0.0.1:1433
Source Database       : educationitem
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 90000
File Encoding         : 65001

Date: 2017-10-16 14:38:03
*/


-- ----------------------------
-- Table structure for bank
-- ----------------------------
#DROP TABLE If exists bank;

CREATE TABLE bank (
bank int NOT NULL primary key AUTO_INCREMENT,
bank_name varchar(100) NOT NULL
)ENGINE=INNODB DEFAULT CHARSET='utf8' comment '银行表';



# #DBCC CHECKIDENT(N'bank', RESEED, 7)


-- ----------------------------
-- Records of bank
-- ----------------------------
# #SET IDENTITY_INSERT bank ON;

INSERT INTO bank (bank, bank_name) VALUES (N'1', N'中国银行');


INSERT INTO bank (bank, bank_name) VALUES (N'2', N'中国农业银行');


INSERT INTO bank (bank, bank_name) VALUES (N'3', N'中国建设银行');


INSERT INTO bank (bank, bank_name) VALUES (N'4', N'中国工商银行');


INSERT INTO bank (bank, bank_name) VALUES (N'5', N'九江银行');


INSERT INTO bank (bank, bank_name) VALUES (N'6', N'交通银行');


INSERT INTO bank (bank, bank_name) VALUES (N'7', N'中国邮政储蓄银行');


# #SET IDENTITY_INSERT bank OFF


-- ----------------------------
-- Table structure for CashRecord
-- ----------------------------
#DROP TABLE If exists CashRecord;

CREATE TABLE CashRecord (
pay_record_id int NOT NULL primary key AUTO_INCREMENT  ,
userid int NULL ,
course_id int NULL ,
cash_date datetime NULL ,
pay_money float(53) NULL ,
Incom_money float(53) NULL ,
status int NULL ,
reason varchar(50) NOT NULL
)ENGINE=INNODB DEFAULT CHARSET='utf8' comment '提现表';



# #DBCC CHECKIDENT(N'CashRecord', RESEED, 2)


-- ----------------------------
-- Records of CashRecord
-- ----------------------------
# #SET IDENTITY_INSERT CashRecord ON

INSERT INTO CashRecord (pay_record_id, userid, course_id, cash_date, pay_money, Incom_money, status, reason) VALUES (N'1', N'1', N'2', N'2017-02-23 10:36:16.833', N'0', N'0', N'1', N'0');


INSERT INTO CashRecord (pay_record_id, userid, course_id, cash_date, pay_money, Incom_money, status, reason) VALUES (N'2', N'1', N'1', N'2017-02-23 10:43:50.690', N'10', N'2', N'1', N'0');


# #SET IDENTITY_INSERT CashRecord OFF


-- ----------------------------
-- Table structure for city
-- ----------------------------
#DROP TABLE If exists city;

CREATE TABLE city (
cityId int NOT NULL primary key AUTO_INCREMENT  ,
cityName varchar(30) NOT NULL ,
provinceId int NULL
)ENGINE=INNODB DEFAULT  CHARSET ='utf8' COMMENT '城市表';



# #DBCC CHECKIDENT(N'city', RESEED, 431)


-- ----------------------------
-- Records of city
-- ----------------------------
# #SET IDENTITY_INSERT city ON

INSERT INTO city (cityId, cityName, provinceId) VALUES (N'1', N'石景山区', N'1');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'2', N'海淀区', N'1');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'3', N'门头沟区', N'1');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'4', N'房山区', N'1');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'5', N'通州区', N'1');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'6', N'顺义区', N'1');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'7', N'东城区', N'1');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'8', N'西城区', N'1');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'9', N'崇文区', N'1');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'10', N'宣武区', N'1');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'11', N'朝阳区', N'1');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'12', N'丰台区', N'1');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'13', N'昌平区', N'1');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'14', N'大兴区', N'1');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'15', N'平谷区', N'1');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'16', N'怀柔区', N'1');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'17', N'东丽区', N'2');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'18', N'西青区', N'2');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'19', N'津南区', N'2');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'20', N'北辰区', N'2');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'21', N'武清区', N'2');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'22', N'宝坻区', N'2');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'23', N'和平区', N'2');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'24', N'河东区', N'2');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'25', N'河西区', N'2');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'26', N'南开区', N'2');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'27', N'河北区', N'2');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'28', N'红桥区', N'2');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'29', N'塘沽区', N'2');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'30', N'汉沽区', N'2');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'31', N'大港区', N'2');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'32', N'石家庄市', N'3');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'33', N'邯郸市', N'3');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'34', N'唐山市', N'3');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'35', N'秦皇岛', N'3');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'36', N'邢台市', N'3');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'37', N'保定市', N'3');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'38', N'张家口', N'3');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'39', N'承德市', N'3');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'40', N'沧州市', N'3');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'41', N'衡水市', N'3');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'42', N'廊坊市', N'3');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'43', N'大同市', N'4');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'44', N'太原市', N'4');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'45', N'阳泉市', N'4');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'46', N'长治市', N'4');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'47', N'晋城市', N'4');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'48', N'朔州市', N'4');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'49', N'忻州市', N'4');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'50', N'吕梁市', N'4');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'51', N'晋中市', N'4');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'52', N'临汾市', N'4');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'53', N'运城市', N'4');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'54', N'呼和浩特市', N'5');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'55', N'包头市', N'5');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'56', N'乌海市', N'5');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'57', N'赤峰市', N'5');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'58', N'呼伦贝尔市', N'5');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'59', N'兴安盟', N'5');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'60', N'通辽市', N'5');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'61', N'锡林郭勒盟', N'5');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'62', N'乌兰察布盟', N'5');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'63', N'伊克昭盟', N'5');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'64', N'巴彦淖尔盟', N'5');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'65', N'阿拉善盟', N'5');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'66', N'沈阳市', N'6');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'67', N'大连市', N'6');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'68', N'鞍山市', N'6');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'69', N'抚顺市', N'6');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'70', N'本溪市', N'6');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'71', N'丹东市', N'6');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'72', N'锦州市', N'6');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'73', N'营口市', N'6');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'74', N'阜新市', N'6');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'75', N'辽阳市', N'6');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'76', N'盘锦市', N'6');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'77', N'铁岭市', N'6');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'78', N'朝阳市', N'6');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'79', N'葫芦岛', N'6');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'80', N'四平市', N'7');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'81', N'长春市', N'7');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'82', N'辽源市', N'7');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'83', N'通化市', N'7');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'84', N'松原市', N'7');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'85', N'白城市', N'7');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'86', N'延边朝鲜族自治州', N'7');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'87', N'哈尔滨市', N'8');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'88', N'齐齐哈尔市', N'8');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'89', N'鹤岗市', N'8');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'90', N'双鸭山市', N'8');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'91', N'鸡西市', N'8');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'92', N'伊春市', N'8');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'93', N'佳木斯市', N'8');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'94', N'七台河市', N'8');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'95', N'绥化市', N'8');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'96', N'大兴安岭市', N'8');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'97', N'黄浦区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'98', N'卢湾区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'99', N'徐汇区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'100', N'长宁区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'101', N'静安区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'102', N'普陀区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'103', N'闸北区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'104', N'虹口区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'105', N'杨浦区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'106', N'宝山区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'107', N'闵行区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'108', N'嘉定区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'109', N'松江区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'110', N'金山区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'111', N'青浦区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'112', N'南汇区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'113', N'奉贤区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'114', N'浦东新区', N'9');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'115', N'南京市', N'10');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'116', N'苏州市', N'10');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'117', N'无锡市', N'10');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'118', N'常州市', N'10');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'119', N'镇江市', N'10');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'120', N'南通市', N'10');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'121', N'泰州市', N'10');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'122', N'扬州市', N'10');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'123', N'盐城市', N'10');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'124', N'连云港市', N'10');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'125', N'徐州市', N'10');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'126', N'淮安市', N'10');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'127', N'宿迁市', N'10');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'128', N'杭州市', N'11');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'129', N'宁波市', N'11');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'130', N'温州市', N'11');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'131', N'嘉兴市', N'11');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'132', N'湖州市', N'11');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'133', N'绍兴市', N'11');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'134', N'金华市', N'11');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'135', N'衢州市', N'11');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'136', N'舟山市', N'11');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'137', N'台州市', N'11');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'138', N'丽水市', N'11');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'139', N'合肥市', N'12');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'140', N'芜湖市', N'12');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'141', N'蚌埠市', N'12');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'142', N'淮南市', N'12');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'143', N'马鞍山', N'12');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'144', N'淮北市', N'12');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'145', N'铜陵市', N'12');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'146', N'安庆市', N'12');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'147', N'黄山市', N'12');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'148', N'滁州市', N'12');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'149', N'阜阳山', N'12');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'150', N'宿州市', N'12');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'151', N'宣城市', N'12');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'152', N'池州市', N'12');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'153', N'亳州市', N'12');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'154', N'六安山', N'12');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'155', N'巢湖市', N'12');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'156', N'福州市', N'13');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'157', N'厦门市', N'13');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'158', N'莆田市', N'13');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'159', N'三明市', N'13');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'160', N'泉州市', N'13');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'161', N'漳州市', N'13');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'162', N'南平市', N'13');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'163', N'龙岩市', N'13');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'164', N'宁德市', N'13');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'165', N'南昌市', N'14');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'166', N'景德镇', N'14');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'167', N'萍乡市', N'14');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'168', N'九江市', N'14');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'169', N'鹰潭市', N'14');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'170', N'赣州市', N'14');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'171', N'吉安市', N'14');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'172', N'宜春市', N'14');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'173', N'抚州市', N'14');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'174', N'上饶市', N'14');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'175', N'济南市', N'15');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'176', N'青岛市', N'15');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'177', N'淄博市', N'15');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'178', N'枣庄市', N'15');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'179', N'东营市', N'15');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'180', N'烟台市', N'15');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'181', N'潍坊市', N'15');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'182', N'济宁市', N'15');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'183', N'泰安市', N'15');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'184', N'威海市', N'15');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'185', N'日照市', N'15');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'186', N'莱芜市', N'15');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'187', N'临沂市', N'15');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'188', N'德州市', N'15');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'189', N'聊城市', N'15');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'190', N'滨州市', N'15');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'191', N'菏泽市', N'15');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'192', N'郑州市', N'16');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'193', N'开封市', N'16');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'194', N'洛阳市', N'16');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'195', N'平顶山', N'16');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'196', N'安阳市', N'16');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'197', N'鹤壁市', N'16');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'198', N'新乡市', N'16');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'199', N'焦作市', N'16');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'200', N'濮阳市', N'16');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'201', N'许昌市', N'16');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'202', N'漯河市', N'16');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'203', N'三门峡', N'16');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'204', N'南阳市', N'16');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'205', N'商丘市', N'16');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'206', N'信阳市', N'16');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'207', N'周口店', N'16');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'208', N'武汉市', N'17');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'209', N'黄石市', N'17');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'210', N'十堰市', N'17');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'211', N'荆州市', N'17');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'212', N'宜昌市', N'17');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'213', N'襄樊市', N'17');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'214', N'鄂州市', N'17');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'215', N'荆门市', N'17');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'216', N'孝感市', N'17');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'217', N'黄冈市', N'17');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'218', N'咸宁市', N'17');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'219', N'随州市', N'17');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'220', N'恩施市', N'17');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'221', N'仙桃市', N'17');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'222', N'天门市', N'17');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'223', N'潜江市', N'17');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'224', N'神农架林区', N'17');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'225', N'长沙市', N'18');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'226', N'株洲市', N'18');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'227', N'湘潭市', N'18');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'228', N'衡阳市', N'18');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'229', N'邵阳市', N'18');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'230', N'岳阳市', N'18');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'231', N'常德市', N'18');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'232', N'张家市', N'18');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'233', N'益阳市', N'18');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'234', N'郴州市', N'18');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'235', N'永州市', N'18');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'236', N'怀化市', N'18');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'237', N'娄底市', N'18');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'238', N'湘西市', N'18');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'239', N'广州市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'240', N'深圳市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'241', N'东莞市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'242', N'潮州市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'243', N'揭阳市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'244', N'云浮市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'245', N'珠海市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'246', N'汕头市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'247', N'韶关市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'248', N'佛山市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'249', N'江门市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'250', N'湛江市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'251', N'茂名市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'252', N'肇庆市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'253', N'惠州市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'254', N'梅州市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'255', N'汕尾市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'256', N'河源市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'257', N'阳江市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'258', N'清远市', N'19');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'259', N'南宁市', N'20');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'260', N'柳州市', N'20');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'261', N'桂林市', N'20');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'262', N'梧州市', N'20');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'263', N'北海市', N'20');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'264', N'防城市', N'20');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'265', N'钦州市', N'20');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'266', N'贵港市', N'20');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'267', N'玉林市', N'20');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'268', N'百色市', N'20');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'269', N'贺州市', N'20');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'270', N'河池市', N'20');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'271', N'来宾市', N'20');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'272', N'崇左市', N'20');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'273', N'海口市', N'21');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'274', N'三亚市', N'21');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'275', N'五指山', N'21');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'276', N'琼海市', N'21');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'277', N'儋州市', N'21');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'278', N'文昌市', N'21');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'279', N'万宁市', N'21');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'280', N'东方市', N'21');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'281', N'渝中区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'282', N'大渡口区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'283', N'江北区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'284', N'南岸区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'285', N'北碚区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'286', N'渝北区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'287', N'巴南区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'288', N'长寿区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'289', N'双桥区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'290', N'沙坪坝区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'291', N'万盛区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'292', N'万州区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'293', N'涪陵区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'294', N'黔江区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'295', N'永川区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'296', N'合川区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'297', N'江津区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'298', N'九龙坡区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'299', N'南川区', N'22');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'300', N'成都市', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'301', N'自贡市', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'302', N'攀枝市', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'303', N'泸州市', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'304', N'德阳市', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'305', N'绵阳市', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'306', N'广元市', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'307', N'遂宁市', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'308', N'乐山市', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'309', N'南充市', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'310', N'眉山市', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'311', N'宜宾市', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'312', N'广安市', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'313', N'达州市', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'314', N'雅安市', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'315', N'巴中市', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'316', N'资阳市', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'317', N'阿坝藏族羌族自治州', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'318', N'甘孜藏族自治州', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'319', N'凉山彝族自治州', N'23');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'320', N'六盘山', N'24');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'321', N'贵阳市', N'24');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'322', N'安顺市', N'24');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'323', N'遵义市', N'24');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'324', N'铜仁地区', N'24');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'325', N'毕节地区', N'24');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'326', N'黔西南布依族苗族自治州', N'24');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'327', N'黔东南苗族侗族自治州', N'24');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'328', N'黔南布依族苗族自治州', N'24');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'329', N'昆明市', N'25');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'330', N'曲靖市', N'25');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'331', N'玉溪市', N'25');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'332', N'保山市', N'25');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'333', N'昭通市', N'25');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'334', N'丽江市', N'25');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'335', N'普洱市', N'25');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'336', N'临沧市', N'25');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'337', N'德宏傣族景颇族自治州', N'25');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'338', N'怒江傈僳族自治州', N'25');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'339', N'迪庆藏族自治州', N'25');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'340', N'大理白族自治州', N'25');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'341', N'楚雄彝族自治州', N'25');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'342', N'红河哈尼族彝族自治州', N'25');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'343', N'文山壮族苗族自治州', N'25');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'344', N'西双版纳傣族自治州', N'25');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'345', N'拉萨市', N'26');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'346', N'那曲地区', N'26');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'347', N'林芝地区', N'26');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'348', N'昌都地区', N'26');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'349', N'山南地区', N'26');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'350', N'日喀则地区', N'26');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'351', N'阿里地区', N'26');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'352', N'西安市', N'27');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'353', N'铜川市', N'27');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'354', N'宝鸡市', N'27');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'355', N'咸阳市', N'27');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'356', N'渭南市', N'27');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'357', N'延安市', N'27');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'358', N'汉中市', N'27');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'359', N'榆林市', N'27');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'360', N'安康市', N'27');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'361', N'商洛市', N'27');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'362', N'兰州市', N'28');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'363', N'嘉峪关', N'28');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'364', N'金昌市', N'28');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'365', N'白银市', N'28');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'366', N'天水市', N'28');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'367', N'武威市', N'28');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'368', N'酒泉市', N'28');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'369', N'张掖市', N'28');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'370', N'庆阳市', N'28');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'371', N'平凉市', N'28');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'372', N'定西市', N'28');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'373', N'陇南市', N'28');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'374', N'临夏回族自治州', N'28');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'375', N'甘南藏族自治州', N'28');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'376', N'西宁市', N'29');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'377', N'海东地区', N'29');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'378', N'海北藏族自治州', N'29');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'379', N'海南藏族自治州', N'29');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'380', N'黄南藏族自治州', N'29');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'381', N'果洛藏族自治州', N'29');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'382', N'玉树藏族自治州', N'29');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'383', N'海西蒙古族藏族自治州', N'29');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'384', N'银川市', N'30');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'385', N'石嘴山', N'30');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'386', N'吴忠市', N'30');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'387', N'固原市', N'30');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'388', N'中卫市', N'30');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'389', N'乌鲁木齐市', N'31');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'390', N'克拉玛依市', N'31');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'391', N'吐鲁番地区', N'31');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'392', N'哈密地区', N'31');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'393', N'和田地区', N'31');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'394', N'阿克苏地区', N'31');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'395', N'喀什地区', N'31');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'396', N'克孜勒苏柯尔克孜自治州', N'31');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'397', N'巴音郭楞蒙古自治州', N'31');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'398', N'昌吉回族自治州', N'31');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'399', N'博尔塔拉蒙古自治州', N'31');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'400', N'石河子市', N'31');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'401', N'阿拉尔市', N'31');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'402', N'图木舒克市', N'31');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'403', N'五家渠市', N'31');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'404', N'伊犁哈萨克自治州', N'31');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'405', N'台北市', N'32');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'406', N'高雄市', N'32');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'407', N'基隆市', N'32');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'408', N'新竹市', N'32');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'409', N'台中市', N'32');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'410', N'嘉义市', N'32');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'411', N'台南市', N'32');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'412', N'花地玛堂区', N'33');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'413', N'圣安多尼堂区', N'33');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'414', N'大堂区', N'33');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'415', N'望德堂区', N'33');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'416', N'风顺堂区', N'33');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'417', N'嘉模堂区', N'33');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'418', N'圣方济各堂区', N'33');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'419', N'路凼区', N'33');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'420', N'中西区', N'34');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'421', N'湾仔区', N'34');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'422', N'东区', N'34');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'423', N'南区', N'34');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'424', N'深水埗区', N'34');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'425', N'油尖旺区', N'34');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'426', N'九龙城区', N'34');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'427', N'黄大仙区', N'34');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'428', N'观塘区', N'34');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'429', N'北区', N'34');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'430', N'大埔区', N'34');


INSERT INTO city (cityId, cityName, provinceId) VALUES (N'431', N'沙田区', N'34');


# #SET IDENTITY_INSERT city OFF


-- ----------------------------
-- Table structure for CouponCode
-- ----------------------------
#DROP TABLE If exists CouponCode;

CREATE TABLE CouponCode (
couponCodeId int NOT NULL primary key AUTO_INCREMENT  ,
couponRecordId int NULL ,
userid int NULL ,
code varchar(100) NULL ,
couponMoney int NULL ,
status int NULL ,
validDay int NULL ,
useDate datetime NULL
)ENGINE =INNODB DEFAULT  CHARSET ='utf8' COMMENT '优惠券表';


# #DBCC CHECKIDENT(N'CouponCode', RESEED, 10)


-- ----------------------------
-- Records of CouponCode
-- ----------------------------
# #SET IDENTITY_INSERT CouponCode ON

INSERT INTO CouponCode (couponCodeId, couponRecordId, userid, code, couponMoney, status, validDay, useDate) VALUES (N'5', N'1', N'2', N'170216403934', N'15', N'1', N'5', N'2017-02-21 09:44:09.887');


INSERT INTO CouponCode (couponCodeId, couponRecordId, userid, code, couponMoney, status, validDay, useDate) VALUES (N'6', N'1', N'1', N'170525399391', N'5', N'1', N'2', N'2017-05-25 14:48:40.130');


INSERT INTO CouponCode (couponCodeId, couponRecordId, userid, code, couponMoney, status, validDay, useDate) VALUES (N'7', N'1', null, N'170525246034', N'5', N'0', N'2', null);


INSERT INTO CouponCode (couponCodeId, couponRecordId, userid, code, couponMoney, status, validDay, useDate) VALUES (N'8', N'1', null, N'170525455739', N'5', N'0', N'2', null);


INSERT INTO CouponCode (couponCodeId, couponRecordId, userid, code, couponMoney, status, validDay, useDate) VALUES (N'9', N'1', null, N'170525605822', N'5', N'0', N'2', null);


INSERT INTO CouponCode (couponCodeId, couponRecordId, userid, code, couponMoney, status, validDay, useDate) VALUES (N'10', N'1', null, N'170525423433', N'5', N'0', N'2', null);


# #SET IDENTITY_INSERT CouponCode OFF


-- ----------------------------
-- Table structure for CouponRecord
-- ----------------------------
#DROP TABLE If exists CouponRecord;

CREATE TABLE CouponRecord (
couponRecordId int NOT NULL primary key AUTO_INCREMENT  ,
activityName varchar(500) NULL ,
activityDesc varchar(2000) NULL ,
userid int NULL ,
createDate datetime NULL
)ENGINE =INNODB DEFAULT  CHARSET ='utf8' COMMENT '活动记录表';



# #DBCC CHECKIDENT(N'CouponRecord', RESEED, 2)


-- ----------------------------
-- Records of CouponRecord
-- ----------------------------
# #SET IDENTITY_INSERT CouponRecord ON

INSERT INTO CouponRecord (couponRecordId, activityName, activityDesc, userid, createDate) VALUES (N'1', N'在线视频教学平台上线了，新课全部3折起，数量有限，快来抢购吧！', N'大家快来体验吧！', N'2', N'2017-02-17 09:40:19.570');


# #SET IDENTITY_INSERT CouponRecord OFF


-- ----------------------------
-- Table structure for Course
-- ----------------------------
#DROP TABLE If exists Course;

CREATE TABLE Course (
course_id int NOT NULL primary key AUTO_INCREMENT  ,
course_name varchar(500) NOT NULL ,
picture_url varchar(500) NOT NULL ,
one_word varchar(500) NULL ,
introduce varchar(2000) NULL ,
course_count int NULL ,
price float(53) NULL ,
discount float(53) NULL ,
effective int NULL ,
replay_date datetime NULL ,
user_name varchar(50) NULL ,
seq int NULL ,
charge_type int NULL ,
status int NOT NULL ,
reason varchar(500) NOT NULL ,
userid int NULL
)ENGINE =INNODB DEFAULT  CHARSET ='utf8' COMMENT '课程表';



# #DBCC CHECKIDENT(N'Course', RESEED, 9);


-- ----------------------------
-- Records of Course
-- ----------------------------
# #SET IDENTITY_INSERT Course ON

INSERT INTO Course (course_id, course_name, picture_url, one_word, introduce, course_count, price, discount, effective, replay_date, user_name, seq, charge_type, status, reason, userid) VALUES (N'1', N'MySql', N'attached/news/16.jpg', N'MySql从入门到精通', N'程序员必备课程', N'30', N'40', N'37', N'1', N'2017-02-13 11:19:51.000', N'曾志湖', N'4', N'1', N'1', N'0', N'2');


INSERT INTO Course (course_id, course_name, picture_url, one_word, introduce, course_count, price, discount, effective, replay_date, user_name, seq, charge_type, status, reason, userid) VALUES (N'2', N'JSP', N'attached/news/11.jpg', N'JSPweb网站开发技术', N'程序员必备的网站开发技术', N'20', N'30', N'25', N'1', N'2017-02-13 10:17:22.000', N'曾志湖', N'2', N'0', N'1', N'0', N'2');


INSERT INTO Course (course_id, course_name, picture_url, one_word, introduce, course_count, price, discount, effective, replay_date, user_name, seq, charge_type, status, reason, userid) VALUES (N'4', N'javascript', N'attached/news/15.jpg', N'java从入门到精通', N'javascript程序员必备课程', N'40', N'300', N'295', N'1', N'2017-02-15 14:18:03.000', N'曾志湖', N'3', N'0', N'1', N'0', N'2');


INSERT INTO Course (course_id, course_name, picture_url, one_word, introduce, course_count, price, discount, effective, replay_date, user_name, seq, charge_type, status, reason, userid) VALUES (N'5', N'java', N'attached/news/12.jpg', N'java从入门到精通', N'Java程序员必备课程', N'40', N'300', N'296', N'1', N'2017-02-15 14:20:04.000', N'曾志湖', N'3', N'1', N'1', N'0', N'2');


INSERT INTO Course (course_id, course_name, picture_url, one_word, introduce, course_count, price, discount, effective, replay_date, user_name, seq, charge_type, status, reason, userid) VALUES (N'6', N'html', N'attached/news/201702190941308067.jpg', N'html从入门到精通', N'适用于编程爱好者', N'20', N'40', N'36', N'1', N'2017-02-19 09:41:30.000', N'陈飞龙', N'5', N'1', N'1', N'0', N'3');


INSERT INTO Course (course_id, course_name, picture_url, one_word, introduce, course_count, price, discount, effective, replay_date, user_name, seq, charge_type, status, reason, userid) VALUES (N'7', N'c++', N'attached/news/201702190945014320.jpg', N'c++从入门到精通', N'程序员必备的技术', N'20', N'30', N'28', N'1', N'2017-02-19 09:45:01.000', N'伍群斌', N'6', N'1', N'1', N'0', N'3');


INSERT INTO Course (course_id, course_name, picture_url, one_word, introduce, course_count, price, discount, effective, replay_date, user_name, seq, charge_type, status, reason, userid) VALUES (N'8', N'Hibernate', N'attached/news/201702221025123846.jpg', N'Hibernate网站开发技术', N'程序员必备的网站开发技术', N'20', N'30', N'0', N'1', N'2017-02-22 10:25:12.000', N'曾志湖', N'7', N'1', N'1', N'0', N'2');


# #SET IDENTITY_INSERT Course OFF


-- ----------------------------
-- Table structure for Forum
-- ----------------------------
#DROP TABLE If exists Forum;

CREATE TABLE Forum (
forum_id int NOT NULL primary key AUTO_INCREMENT  ,
userid int NULL ,
ReplayUserId int NULL ,
fourm_type int NULL ,
Content varchar(1000) NULL ,
forum_date datetime NULL
)ENGINE =INNODB DEFAULT  CHARSET ='utf8' COMMENT '论坛表';



# #DBCC CHECKIDENT(N'Forum', RESEED, 18);


-- ----------------------------
-- Records of Forum
-- ----------------------------
# #SET IDENTITY_INSERT Forum ON

INSERT INTO Forum (forum_id, userid, ReplayUserId, fourm_type, Content, forum_date) VALUES (N'2', N'1', N'1', N'2', N'您好，请问您有什么问题？', N'2017-02-22 19:11:00.683');


INSERT INTO Forum (forum_id, userid, ReplayUserId, fourm_type, Content, forum_date) VALUES (N'8', N'1', N'1', N'2', N'我爱你', N'2017-02-22 19:43:59.593');


INSERT INTO Forum (forum_id, userid, ReplayUserId, fourm_type, Content, forum_date) VALUES (N'11', N'1', N'1', N'2', N'付费', N'2017-02-22 19:58:34.337');


INSERT INTO Forum (forum_id, userid, ReplayUserId, fourm_type, Content, forum_date) VALUES (N'12', N'1', N'1', N'2', N'我无法', N'2017-02-22 19:58:50.690');


INSERT INTO Forum (forum_id, userid, ReplayUserId, fourm_type, Content, forum_date) VALUES (N'13', N'1', N'1', N'2', N'付费', N'2017-02-22 19:58:59.707');


INSERT INTO Forum (forum_id, userid, ReplayUserId, fourm_type, Content, forum_date) VALUES (N'14', N'1', N'1', N'2', N'我无法', N'2017-02-22 19:59:05.823');


INSERT INTO Forum (forum_id, userid, ReplayUserId, fourm_type, Content, forum_date) VALUES (N'15', N'1', N'1', N'2', N'是的v', N'2017-02-23 22:09:13.030');


INSERT INTO Forum (forum_id, userid, ReplayUserId, fourm_type, Content, forum_date) VALUES (N'16', N'1', N'1', N'2', N'null', N'2017-02-24 09:17:41.480');


INSERT INTO Forum (forum_id, userid, ReplayUserId, fourm_type, Content, forum_date) VALUES (N'17', N'1', N'1', N'2', N'null', N'2017-02-24 16:27:34.380');


INSERT INTO Forum (forum_id, userid, ReplayUserId, fourm_type, Content, forum_date) VALUES (N'18', N'1', N'1', N'2', N'null', N'2017-05-26 14:28:58.550');


# #SET IDENTITY_INSERT Forum OFF


-- ----------------------------
-- Table structure for Manager
-- ----------------------------
#DROP TABLE If exists Manager;

CREATE TABLE Manager (
manager_id int NOT NULL primary key AUTO_INCREMENT  ,
manager_account varchar(50) NOT NULL ,
manager_password varchar(100) NOT NULL ,
manager_name varchar(50) NULL ,
sex int NULL ,
contact varchar(50) NULL ,
status int NULL
)ENGINE =INNODB DEFAULT  CHARSET ='utf8' COMMENT '管理员表';;



# #DBCC CHECKIDENT(N'Manager', RESEED, 4)


-- ----------------------------
-- Records of Manager
-- ----------------------------
# #SET IDENTITY_INSERT Manager ON

INSERT INTO Manager (manager_id, manager_account, manager_password, manager_name, sex, contact, status) VALUES (N'1', N'胡歌', N'4B904BD246C63FE9309EAF09C63E1516', N'胡歌', N'0', N'18720865791', N'1');


INSERT INTO Manager (manager_id, manager_account, manager_password, manager_name, sex, contact, status) VALUES (N'2', N'赖勇建', N'4B904BD246C63FE9309EAF09C63E1516', N'赖勇建', N'0', N'18370676182', N'1');


INSERT INTO Manager (manager_id, manager_account, manager_password, manager_name, sex, contact, status) VALUES (N'4', N'小智', N'4B904BD246C63FE9309EAF09C63E1516', N'小智', N'0', N'12345678901', N'1');


# #SET IDENTITY_INSERT Manager OFF


-- ----------------------------
-- Table structure for moneyRecord
-- ----------------------------
#DROP TABLE If exists moneyRecord;

CREATE TABLE moneyRecord (
record_id int NOT NULL primary key AUTO_INCREMENT  ,
userid int NULL ,
pay_date datetime NULL ,
pay_money float(53) NULL
)ENGINE =INNODB DEFAULT  CHARSET ='utf8' COMMENT '钱记录表';



# #DBCC CHECKIDENT(N'moneyRecord', RESEED, 3)


-- ----------------------------
-- Records of moneyRecord
-- ----------------------------
# #SET IDENTITY_INSERT moneyRecord ON

INSERT INTO moneyRecord (record_id, userid, pay_date, pay_money) VALUES (N'1', N'1', N'2017-06-04 19:15:15.667', N'255');


INSERT INTO moneyRecord (record_id, userid, pay_date, pay_money) VALUES (N'2', N'2', N'2017-02-21 09:46:22.130', N'59');


INSERT INTO moneyRecord (record_id, userid, pay_date, pay_money) VALUES (N'3', N'4', N'2017-02-21 09:26:44.033', N'35');


# #SET IDENTITY_INSERT moneyRecord OFF


-- ----------------------------
-- Table structure for NewMsg
-- ----------------------------
#DROP TABLE If exists NewMsg;

CREATE TABLE NewMsg (
new_msg_id int NOT NULL primary key AUTO_INCREMENT  ,
msg_name varchar(500) NOT NULL ,
one_word varchar(500) NULL ,
msg_content text NULL ,
msg_content_url varchar(500) NULL ,
publish_date datetime NULL ,
publish_username varchar(50) NULL ,
effective int NULL ,
seq int NULL ,
newsType int NULL ,
Image_Url varchar(500) NULL
)ENGINE =INNODB DEFAULT  CHARSET ='utf8' COMMENT '新闻表';



# #DBCC CHECKIDENT(N'NewMsg', RESEED, 2)


-- ----------------------------
-- Records of NewMsg
-- ----------------------------
# #SET IDENTITY_INSERT NewMsg ON

INSERT INTO NewMsg (new_msg_id, msg_name, one_word, msg_content, msg_content_url, publish_date, publish_username, effective, seq, newsType, Image_Url) VALUES (N'1', N'在线教学平台支持QQ登录，大家速来登录吧', N'请速来抢购吧', N'<div style="text-align:center;">
	计算出来是卡车纳斯里拿出
</div>', N'attached/news/20170209154301.html', N'2017-02-09 15:43:01.000', N'胡歌', N'1', N'2', N'0', N'attached/news/201702090343015006.png');


INSERT INTO NewMsg (new_msg_id, msg_name, one_word, msg_content, msg_content_url, publish_date, publish_username, effective, seq, newsType, Image_Url) VALUES (N'2', N'元宵节大酬宾', N'快来学习吧', N'<div style="text-align:center;">
	爱上哈数据库陈丽娜数控机床
</div>', N'attached/news/20170209153801.html', N'2017-02-09 15:38:01.000', N'胡歌', N'1', N'1', N'0', N'attached/news/201702090337283529.png');


# #SET IDENTITY_INSERT NewMsg OFF


-- ----------------------------
-- Table structure for PayRecord
-- ----------------------------
#DROP TABLE If exists PayRecord;

CREATE TABLE PayRecord (
pay_record_id int NOT NULL primary key AUTO_INCREMENT  ,
userid int NULL ,
courseid int NULL ,
pay_or_return int NULL ,
pay_date datetime NULL ,
pay_money float(53) NULL ,
discount_money float(53) NULL ,
pay_type int NULL ,
card_num varchar(100) NULL ,
payer varchar(50) NULL ,
order_number varchar(500) NULL ,
pay_status int NULL ,
isCash int NULL
)ENGINE =INNODB DEFAULT  CHARSET ='utf8' COMMENT '支付记录表';



# #DBCC CHECKIDENT(N'PayRecord', RESEED, 4)


-- ----------------------------
-- Records of PayRecord
-- ----------------------------
#SET IDENTITY_INSERT PayRecord ON

INSERT INTO PayRecord (pay_record_id, userid, courseid, pay_or_return, pay_date, pay_money, discount_money, pay_type, card_num, payer, order_number, pay_status, isCash) VALUES (N'1', N'1', N'2', N'0', N'2017-02-20 15:35:32.047', N'15', N'15', N'0', N'支付宝', N'赖勇建', N'0076975', N'1', N'1');


INSERT INTO PayRecord (pay_record_id, userid, courseid, pay_or_return, pay_date, pay_money, discount_money, pay_type, card_num, payer, order_number, pay_status, isCash) VALUES (N'2', N'1', N'1', N'0', N'2017-02-20 19:19:39.050', N'25', N'15', N'0', N'支付宝', N'赖勇建', N'0079107', N'1', N'1');


INSERT INTO PayRecord (pay_record_id, userid, courseid, pay_or_return, pay_date, pay_money, discount_money, pay_type, card_num, payer, order_number, pay_status, isCash) VALUES (N'3', N'1', N'6', N'0', N'2017-02-21 20:36:35.573', N'25', N'15', N'0', N'支付宝', N'赖勇建', N'0074060', N'1', N'0');


#SET IDENTITY_INSERT PayRecord OFF


-- ----------------------------
-- Table structure for province
-- ----------------------------
#DROP TABLE If exists province;

CREATE TABLE province (
provinceId int NOT NULL primary key AUTO_INCREMENT  ,
provinceName varchar(20) NOT NULL
)ENGINE =INNODB DEFAULT  CHARSET ='utf8' COMMENT '省份表';;



# #DBCC CHECKIDENT(N'province', RESEED, 34)


-- ----------------------------
-- Records of province
-- ----------------------------
# #SET IDENTITY_INSERT province ON

INSERT INTO province (provinceId, provinceName) VALUES (N'12', N'安徽省');


INSERT INTO province (provinceId, provinceName) VALUES (N'34', N'澳门港特别行政区');


INSERT INTO province (provinceId, provinceName) VALUES (N'1', N'北京市');


INSERT INTO province (provinceId, provinceName) VALUES (N'13', N'福建省');


INSERT INTO province (provinceId, provinceName) VALUES (N'28', N'甘肃省');


INSERT INTO province (provinceId, provinceName) VALUES (N'19', N'广东省');


INSERT INTO province (provinceId, provinceName) VALUES (N'20', N'广西省');


INSERT INTO province (provinceId, provinceName) VALUES (N'24', N'贵州省');


INSERT INTO province (provinceId, provinceName) VALUES (N'21', N'海南省');


INSERT INTO province (provinceId, provinceName) VALUES (N'3', N'河北省');


INSERT INTO province (provinceId, provinceName) VALUES (N'16', N'河南省');


INSERT INTO province (provinceId, provinceName) VALUES (N'8', N'黑龙江省');


INSERT INTO province (provinceId, provinceName) VALUES (N'17', N'湖北省');


INSERT INTO province (provinceId, provinceName) VALUES (N'18', N'湖南省');


INSERT INTO province (provinceId, provinceName) VALUES (N'7', N'吉林省');


INSERT INTO province (provinceId, provinceName) VALUES (N'10', N'江苏省');


INSERT INTO province (provinceId, provinceName) VALUES (N'14', N'江西省');


INSERT INTO province (provinceId, provinceName) VALUES (N'6', N'辽宁省');


INSERT INTO province (provinceId, provinceName) VALUES (N'5', N'内蒙古自治区');


INSERT INTO province (provinceId, provinceName) VALUES (N'30', N'宁夏回族自治区');


INSERT INTO province (provinceId, provinceName) VALUES (N'29', N'青海省');


INSERT INTO province (provinceId, provinceName) VALUES (N'15', N'山东省');


INSERT INTO province (provinceId, provinceName) VALUES (N'4', N'山西省');


INSERT INTO province (provinceId, provinceName) VALUES (N'27', N'陕西省');


INSERT INTO province (provinceId, provinceName) VALUES (N'9', N'上海市');


INSERT INTO province (provinceId, provinceName) VALUES (N'23', N'四川省');


INSERT INTO province (provinceId, provinceName) VALUES (N'32', N'台湾省');


INSERT INTO province (provinceId, provinceName) VALUES (N'2', N'天津市');


INSERT INTO province (provinceId, provinceName) VALUES (N'26', N'西藏自治区');


INSERT INTO province (provinceId, provinceName) VALUES (N'33', N'香港特别行政区');


INSERT INTO province (provinceId, provinceName) VALUES (N'31', N'新疆维吾尔族自治区');


INSERT INTO province (provinceId, provinceName) VALUES (N'25', N'云南省');


INSERT INTO province (provinceId, provinceName) VALUES (N'11', N'浙江省');


INSERT INTO province (provinceId, provinceName) VALUES (N'22', N'重庆市');


#SET IDENTITY_INSERT province OFF


-- ----------------------------
-- Table structure for Section
-- ----------------------------
#DROP TABLE If exists Section;

CREATE TABLE Section (
section_id int NOT NULL primary key AUTO_INCREMENT  ,
course_id int NULL ,
section_name varchar(100) NOT NULL ,
section_url varchar(500) NULL ,
section_content text NULL ,
remark varchar(1000) NULL ,
free int NULL ,
seq int NULL ,
status int NOT NULL ,
reason varchar(500) NOT NULL ,
timelength int NULL
)ENGINE =INNODB DEFAULT  CHARSET ='utf8' COMMENT '章节表';;



# #DBCC CHECKIDENT(N'Section', RESEED, 8)


-- ----------------------------
-- Records of Section
-- ----------------------------
# #SET IDENTITY_INSERT Section ON

INSERT INTO Section (section_id, course_id, section_name, section_url, section_content, remark, free, seq, status, reason, timelength) VALUES (N'1', N'2', N'第一章 JSP的入门体验', N'attached/section/201702140849577587.swf', N'掌握JSP的基础知识', N'0', N'0', N'1', N'1', N'0', N'0');


INSERT INTO Section (section_id, course_id, section_name, section_url, section_content, remark, free, seq, status, reason, timelength) VALUES (N'2', N'1', N'第2章 Ajax的基础知识', N'attached/section/201702151140126517.swf', N'掌握Ajax的基础知识', N'0', N'0', N'0', N'1', N'0', N'0');


INSERT INTO Section (section_id, course_id, section_name, section_url, section_content, remark, free, seq, status, reason, timelength) VALUES (N'3', N'4', N'第一节 javascript的入门', N'attached/section/201702170809174528.swf', N'掌握JavaScript的基本知识', N'0', N'1', N'0', N'1', N'0', N'0');


INSERT INTO Section (section_id, course_id, section_name, section_url, section_content, remark, free, seq, status, reason, timelength) VALUES (N'4', N'4', N'第二章 javascript基本知识', N'attached/section/201702170809174528.swf', N'JavaScript的基本知识', N'0', N'1', N'0', N'1', N'0', N'0');


INSERT INTO Section (section_id, course_id, section_name, section_url, section_content, remark, free, seq, status, reason, timelength) VALUES (N'5', N'7', N'第一章 C++算法初步', N'attached/section/201702191004251773.swf', N'掌握C++的基本知识，熟悉算法原理', N'1', N'1', N'0', N'1', N'0', N'0');


INSERT INTO Section (section_id, course_id, section_name, section_url, section_content, remark, free, seq, status, reason, timelength) VALUES (N'6', N'6', N'第一章 HTML标签', N'attached/section/201702191005278802.swf', N'掌握HTML标签如何使用', N'1', N'1', N'0', N'1', N'0', N'0');


INSERT INTO Section (section_id, course_id, section_name, section_url, section_content, remark, free, seq, status, reason, timelength) VALUES (N'7', N'5', N'第一章 JDK的基本配置', N'attached/section/201702191006252340.swf', N'掌握如何配置jdk 1.6', N'0', N'1', N'0', N'1', N'0', N'0');


INSERT INTO Section (section_id, course_id, section_name, section_url, section_content, remark, free, seq, status, reason, timelength) VALUES (N'8', N'8', N'第一章 Hibernate入门体验', N'attached/section/201702221028088685.swf', N'掌握Hibernate的基础知识', N'0', N'1', N'0', N'1', N'0', N'0');


#SET IDENTITY_INSERT Section OFF


-- ----------------------------
-- Table structure for SysLog
-- ----------------------------
#DROP TABLE If exists SysLog;

CREATE TABLE SysLog (
  sys_log_id int NOT NULL primary key AUTO_INCREMENT  ,
  manager_id int NULL ,
  Type int NULL ,
  Content varchar(500) NULL ,
  create_date datetime NULL ,
  ip_address varchar(50) NULL
)ENGINE =INNODB DEFAULT  CHARSET ='utf8' COMMENT '系统日志表';




-- ----------------------------
-- Records of SysLog
-- ----------------------------
#SET IDENTITY_INSERT SysLog ON

#SET IDENTITY_INSERT SysLog OFF


-- ----------------------------
-- Table structure for Teacher
-- ----------------------------
#DROP TABLE If exists Teacher;

CREATE TABLE Teacher (
userid int NULL ,
teacher_introduce varchar(1000) NULL ,
teacher_special varchar(500) NULL ,
teacher_length varchar(50) NULL ,
education varchar(50) NULL ,
head_picture_url varchar(500) NOT NULL ,
bank int NULL ,
accountNo varchar(30) NULL ,
accountName varchar(30) NULL ,
grade_id int NULL ,
status int NULL ,
reason varchar(50) NOT NULL
)ENGINE =INNODB DEFAULT  CHARSET ='utf8' COMMENT '讲师表';




-- ----------------------------
-- Records of Teacher
-- ----------------------------
INSERT INTO Teacher (userid, teacher_introduce, teacher_special, teacher_length, education, head_picture_url, bank, accountNo, accountName, grade_id, status, reason) VALUES (N'1', N' 勤奋认真，工作刻苦', N'Java语言', N'10年', N'博士', N'attached/news/3.jpg', N'1', N'中国银行', N'赖勇建', N'3', N'2', N'0');


INSERT INTO Teacher (userid, teacher_introduce, teacher_special, teacher_length, education, head_picture_url, bank, accountNo, accountName, grade_id, status, reason) VALUES (N'2', N' 诚实', N'JSPweb网站开发', N'5年', N'本科', N'attached/news/2.jpg', N'1', N'中国银行', N'曾志湖', N'4', N'1', N'0');


INSERT INTO Teacher (userid, teacher_introduce, teacher_special, teacher_length, education, head_picture_url, bank, accountNo, accountName, grade_id, status, reason) VALUES (N'3', N'刻苦', N'structs', N'19年', N'博士', N'attached/news/1.jpg', N'1', N'中国银行', N'赖国荣', N'5', N'1', N'0');



-- ----------------------------
-- Table structure for teacherGrade
-- ----------------------------
#DROP TABLE If exists teacherGrade;

CREATE TABLE teacherGrade (
grade_id int NOT NULL primary key AUTO_INCREMENT  ,
Grade_name varchar(100) NOT NULL ,
Grade_Percent decimal(18,2) NULL
)ENGINE =INNODB DEFAULT  CHARSET ='utf8' COMMENT '讲师等级表';



#DBCC CHECKIDENT(N'teacherGrade', RESEED, 5)


-- ----------------------------
-- Records of teacherGrade
-- ----------------------------
#SET IDENTITY_INSERT teacherGrade ON

INSERT INTO teacherGrade (grade_id, Grade_name, Grade_Percent) VALUES (N'1', N'认证讲师', N'.50');


INSERT INTO teacherGrade (grade_id, Grade_name, Grade_Percent) VALUES (N'2', N'中级讲师', N'.60');


INSERT INTO teacherGrade (grade_id, Grade_name, Grade_Percent) VALUES (N'3', N'高级讲师', N'.70');


INSERT INTO teacherGrade (grade_id, Grade_name, Grade_Percent) VALUES (N'4', N'特级讲师', N'.80');


INSERT INTO teacherGrade (grade_id, Grade_name, Grade_Percent) VALUES (N'5', N'金牌讲师', N'.90');


#SET IDENTITY_INSERT teacherGrade OFF


-- ----------------------------
-- Table structure for UserCourseEval
-- ----------------------------
#DROP TABLE If exists UserCourseEval;

CREATE TABLE UserCourseEval (
user_course_eval_id int NOT NULL primary key AUTO_INCREMENT  ,
userid int NULL ,
course_id int NULL ,
eval_level int NULL ,
eval_content varchar(2000) NOT NULL ,
eval_date datetime NULL ,
user_name varchar(50) NULL
)ENGINE =INNODB DEFAULT  CHARSET ='utf8' COMMENT '用户课程记录表';



#DBCC CHECKIDENT(N'UserCourseEval', RESEED, 4)


-- ----------------------------
-- Records of UserCourseEval
-- ----------------------------
#SET IDENTITY_INSERT UserCourseEval ON

INSERT INTO UserCourseEval (user_course_eval_id, userid, course_id, eval_level, eval_content, eval_date, user_name) VALUES (N'3', N'1', N'2', N'1', N'安慰刀锋战士', N'2017-02-21 19:25:19.977', N'赖勇建');


INSERT INTO UserCourseEval (user_course_eval_id, userid, course_id, eval_level, eval_content, eval_date, user_name) VALUES (N'4', N'1', N'1', N'1', N'非常好', N'2017-02-21 19:32:54.677', N'赖勇建');


#SET IDENTITY_INSERT UserCourseEval OFF


-- ----------------------------
-- Table structure for users
-- ----------------------------
#DROP TABLE If exists users;

CREATE TABLE users (
userid int NOT NULL primary key AUTO_INCREMENT ,
mobile varchar(20) NOT NULL ,
password varchar(50) NOT NULL ,
user_name varchar(50) NOT NULL ,
sex int NULL ,
home_address varchar(500) NULL ,
email varchar(100) NULL ,
register_date datetime NULL DEFAULT now() ,
provinceId int NOT NULL ,
cityId int NOT NULL ,
user_type int NULL ,
remainMoney float(53) NOT NULL
)ENGINE =INNODB DEFAULT  CHARSET ='utf8' COMMENT '用户表';



#DBCC CHECKIDENT(N'users', RESEED, 8)


-- ----------------------------
-- Records of users
-- ----------------------------
#SET IDENTITY_INSERT users ON

INSERT INTO users (userid, mobile, password, user_name, sex, home_address, email, register_date, provinceId, cityId, user_type, remainMoney) VALUES (N'1', N'12345678901', N'4B904BD246C63FE9309EAF09C63E1516', N'赖勇建', N'0', N'赣州市', N'139邮箱', N'2017-01-23 09:30:04.707', N'14', N'171', N'1', N'255');


INSERT INTO users (userid, mobile, password, user_name, sex, home_address, email, register_date, provinceId, cityId, user_type, remainMoney) VALUES (N'2', N'18720865791', N'4B904BD246C63FE9309EAF09C63E1516', N'曾志湖', N'0', N'吉安市', N'139邮箱', N'2017-01-23 09:31:03.747', N'14', N'171', N'2', N'59');


INSERT INTO users (userid, mobile, password, user_name, sex, home_address, email, register_date, provinceId, cityId, user_type, remainMoney) VALUES (N'3', N'18370676182', N'4B904BD246C63FE9309EAF09C63E1516', N'赖国荣', N'0', N'赣州市', N'123', N'2017-02-06 08:36:06.297', N'34', N'420', N'2', N'0');


INSERT INTO users (userid, mobile, password, user_name, sex, home_address, email, register_date, provinceId, cityId, user_type, remainMoney) VALUES (N'4', N'18370676183', N'4B904BD246C63FE9309EAF09C63E1516', N'伍群斌', N'0', N'赣州市', N'123', N'2017-02-06 08:45:52.457', N'34', N'420', N'1', N'35');


INSERT INTO users (userid, mobile, password, user_name, sex, home_address, email, register_date, provinceId, cityId, user_type, remainMoney) VALUES (N'5', N'18370676184', N'4B904BD246C63FE9309EAF09C63E1516', N'小芳', N'0', N'赣州市', N'123', N'2017-02-06 08:49:49.573', N'34', N'420', N'1', N'0');


INSERT INTO users (userid, mobile, password, user_name, sex, home_address, email, register_date, provinceId, cityId, user_type, remainMoney) VALUES (N'7', N'12345678900', N'4B904BD246C63FE9309EAF09C63E1516', N'赖国荣', N'0', N'赣州市', N'135', N'2017-02-19 11:48:11.000', N'14', N'170', N'2', N'0');


INSERT INTO users (userid, mobile, password, user_name, sex, home_address, email, register_date, provinceId, cityId, user_type, remainMoney) VALUES (N'8', N'', N'8A8EF22B0D9E28201D6EF996C8D0C0C3', N'', N'0', N'', N'', N'2017-05-21 20:12:46.000', N'1', N'1', N'1', N'0');


#SET IDENTITY_INSERT users OFF


-- ----------------------------
-- Indexes structure for table bank
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table bank
-- ----------------------------
ALTER TABLE bank ADD PRIMARY KEY (bank);


-- ----------------------------
-- Indexes structure for table CashRecord
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table CashRecord
-- ----------------------------
ALTER TABLE CashRecord ADD PRIMARY KEY (pay_record_id);


-- ----------------------------
-- Checks structure for table CashRecord
-- ----------------------------
ALTER TABLE CashRecord ADD CHECK ((status=(0) OR status=(1) OR status=(2) OR status=(3)));


-- ----------------------------
-- Indexes structure for table city
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table city
-- ----------------------------
ALTER TABLE city ADD PRIMARY KEY (cityId);


-- ----------------------------
-- Indexes structure for table CouponCode
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table CouponCode
-- ----------------------------
ALTER TABLE CouponCode ADD PRIMARY KEY (couponCodeId);


-- ----------------------------
-- Checks structure for table CouponCode
-- ----------------------------
ALTER TABLE CouponCode ADD CHECK ((status=(0) OR status=(1) OR status=(2)));


-- ----------------------------
-- Indexes structure for table CouponRecord
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table CouponRecord
-- ----------------------------
ALTER TABLE CouponRecord ADD PRIMARY KEY (couponRecordId);


-- ----------------------------
-- Indexes structure for table Course
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Course
-- ----------------------------
ALTER TABLE Course ADD PRIMARY KEY (course_id);


-- ----------------------------
-- Checks structure for table Course
-- ----------------------------
ALTER TABLE Course ADD CHECK ((charge_type=(0) OR charge_type=(1)));

ALTER TABLE Course ADD CHECK ((effective=(0) OR effective=(1)));

ALTER TABLE Course ADD CHECK ((status=(0) OR status=(1) OR status=(2)));

ALTER TABLE Course ADD CHECK ((effective=(0) OR effective=(1) OR effective=(2)));


-- ----------------------------
-- Indexes structure for table Forum
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Forum
-- ----------------------------
ALTER TABLE Forum ADD PRIMARY KEY (forum_id);


-- ----------------------------
-- Checks structure for table Forum
-- ----------------------------
ALTER TABLE Forum ADD CHECK ((fourm_type=(1) OR fourm_type=(2)));


-- ----------------------------
-- Indexes structure for table Manager
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Manager
-- ----------------------------
ALTER TABLE Manager ADD PRIMARY KEY (manager_id);


-- ----------------------------
-- Checks structure for table Manager
-- ----------------------------
ALTER TABLE Manager ADD CHECK ((sex=(0) OR sex=(1)));

ALTER TABLE Manager ADD CHECK ((status=(1) OR status=(0)));


-- ----------------------------
-- Indexes structure for table moneyRecord
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table moneyRecord
-- ----------------------------
ALTER TABLE moneyRecord ADD PRIMARY KEY (record_id);


-- ----------------------------
-- Indexes structure for table NewMsg
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table NewMsg
-- ----------------------------
ALTER TABLE NewMsg ADD PRIMARY KEY (new_msg_id);


-- ----------------------------
-- Checks structure for table NewMsg
-- ----------------------------
ALTER TABLE NewMsg ADD CHECK ((effective=(0) OR effective=(1)));

ALTER TABLE NewMsg ADD CHECK ((newsType=(0) OR newsType=(1)));


-- ----------------------------
-- Indexes structure for table PayRecord
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table PayRecord
-- ----------------------------
ALTER TABLE PayRecord ADD PRIMARY KEY (pay_record_id);


-- ----------------------------
-- Checks structure for table PayRecord
-- ----------------------------
ALTER TABLE PayRecord ADD CHECK ((isCash=(0) OR isCash=(1)));

ALTER TABLE PayRecord ADD CHECK ((pay_or_return=(0) OR pay_or_return=(1)));

ALTER TABLE PayRecord ADD CHECK ((pay_status=(0) OR pay_status=(1)));

ALTER TABLE PayRecord ADD CHECK ((pay_type=(0) OR pay_type=(1)));


-- ----------------------------
-- Indexes structure for table province
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table province
-- ----------------------------
ALTER TABLE province ADD PRIMARY KEY (provinceId);


-- ----------------------------
-- Uniques structure for table province
-- ----------------------------
ALTER TABLE province ADD UNIQUE (provinceName ASC);


-- ----------------------------
-- Indexes structure for table Section
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Section
-- ----------------------------
ALTER TABLE Section ADD PRIMARY KEY (section_id);


-- ----------------------------
-- Checks structure for table Section
-- ----------------------------
ALTER TABLE Section ADD CHECK ((free=(0) OR free=(1)));

ALTER TABLE Section ADD CHECK ((status=(0) OR status=(1) OR status=(2)));


-- ----------------------------
-- Indexes structure for table SysLog
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SysLog
-- ----------------------------
ALTER TABLE SysLog ADD PRIMARY KEY (sys_log_id);


-- ----------------------------
-- Indexes structure for table Teacher
-- ----------------------------

-- ----------------------------
-- Uniques structure for table Teacher
-- ----------------------------
ALTER TABLE Teacher ADD UNIQUE (userid ASC);


-- ----------------------------
-- Checks structure for table Teacher
-- ----------------------------
ALTER TABLE Teacher ADD CHECK ((status=(0) OR status=(1) OR status=(2) OR status=(3)));


-- ----------------------------
-- Indexes structure for table teacherGrade
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table teacherGrade
-- ----------------------------
ALTER TABLE teacherGrade ADD PRIMARY KEY (grade_id);


-- ----------------------------
-- Indexes structure for table UserCourseEval
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table UserCourseEval
-- ----------------------------
ALTER TABLE UserCourseEval ADD PRIMARY KEY (user_course_eval_id);


-- ----------------------------
-- Indexes structure for table users
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE users ADD PRIMARY KEY (userid);


-- ----------------------------
-- Uniques structure for table users
-- ----------------------------
ALTER TABLE users ADD UNIQUE (mobile ASC);


-- ----------------------------
-- Checks structure for table users
-- ----------------------------
ALTER TABLE users ADD CHECK ((sex=(0) OR sex=(1)));

ALTER TABLE users ADD CHECK ((user_type=(1) OR user_type=(2)));


-- ----------------------------
-- Foreign Key structure for table city
-- ----------------------------
ALTER TABLE city ADD FOREIGN KEY (provinceId) REFERENCES province (provinceId) ON DELETE NO ACTION ON UPDATE NO ACTION;


-- ----------------------------
-- Foreign Key structure for table CouponCode
-- ----------------------------
ALTER TABLE CouponCode ADD FOREIGN KEY (couponRecordId) REFERENCES CouponRecord (couponRecordId) ON DELETE NO ACTION ON UPDATE NO ACTION;


-- ----------------------------
-- Foreign Key structure for table moneyRecord
-- ----------------------------
ALTER TABLE moneyRecord ADD FOREIGN KEY (userid) REFERENCES users (userid) ON DELETE NO ACTION ON UPDATE NO ACTION;


-- ----------------------------
-- Foreign Key structure for table Section
-- ----------------------------
ALTER TABLE Section ADD FOREIGN KEY (course_id) REFERENCES Course (course_id) ON DELETE NO ACTION ON UPDATE NO ACTION;


-- ----------------------------
-- Foreign Key structure for table SysLog
-- ----------------------------
ALTER TABLE SysLog ADD FOREIGN KEY (manager_id) REFERENCES Manager (manager_id) ON DELETE NO ACTION ON UPDATE NO ACTION;


-- ----------------------------
-- Foreign Key structure for table Teacher
-- ----------------------------
ALTER TABLE Teacher ADD FOREIGN KEY (bank) REFERENCES bank (bank) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE Teacher ADD FOREIGN KEY (grade_id) REFERENCES teacherGrade (grade_id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE Teacher ADD FOREIGN KEY (userid) REFERENCES users (userid) ON DELETE NO ACTION ON UPDATE NO ACTION;


-- ----------------------------
-- Foreign Key structure for table UserCourseEval
-- ----------------------------
ALTER TABLE UserCourseEval ADD FOREIGN KEY (course_id) REFERENCES Course (course_id) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE UserCourseEval ADD FOREIGN KEY (userid) REFERENCES users (userid) ON DELETE NO ACTION ON UPDATE NO ACTION;

