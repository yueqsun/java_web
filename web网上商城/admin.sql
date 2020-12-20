/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : laptopmall
Target Host     : localhost:3306
Target Database : laptopmall
Date: 2020-12-19 22:44:42
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` varchar(50) NOT NULL,
  `username` varchar(50) default NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123456');
INSERT INTO `admin` VALUES ('2', 'luzhibin', '764323221');
INSERT INTO `admin` VALUES ('3', 'guanliyuan', '123456');

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `id` int(11) NOT NULL auto_increment COMMENT '品类(品牌)id',
  `name` varchar(20) default NULL COMMENT '品类(品牌)名',
  PRIMARY KEY  USING BTREE (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', '华为');
INSERT INTO `brand` VALUES ('2', '荣耀');
INSERT INTO `brand` VALUES ('3', '联想');
INSERT INTO `brand` VALUES ('4', 'Apple');
INSERT INTO `brand` VALUES ('5', '小米');
INSERT INTO `brand` VALUES ('6', '戴尔');
INSERT INTO `brand` VALUES ('7', '华硕');
INSERT INTO `brand` VALUES ('8', '惠普');
INSERT INTO `brand` VALUES ('9', '宏碁');
INSERT INTO `brand` VALUES ('12', '三星');
INSERT INTO `brand` VALUES ('13', '神舟');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) default NULL COMMENT '商品id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `quantity` int(11) default NULL COMMENT '购买商品数量',
  PRIMARY KEY  USING BTREE (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(50) NOT NULL auto_increment,
  `cname` varchar(50) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '电脑办公');
INSERT INTO `category` VALUES ('2', '家具家居');
INSERT INTO `category` VALUES ('3', '鲜果时光');
INSERT INTO `category` VALUES ('4', '图书音像');
INSERT INTO `category` VALUES ('5', '潮流服饰');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(32) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `price` decimal(10,2) default NULL,
  `image` varchar(50) default NULL,
  `gdesc` varchar(255) default NULL,
  `is_hot` int(1) default '0',
  `cid` int(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `cid` (`cid`),
  CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '梵希曼短袖衬衣女2019新款夏季气质韩版通勤', '159.00', 'goods_001.png', null, '0', '5');
INSERT INTO `goods` VALUES ('2', '姿忆秀五分袖宽松衬衫女2019夏季新款竖条纹\r\n', '88.00', 'goods_002.png', null, '0', '5');
INSERT INTO `goods` VALUES ('3', '梵希曼短袖雪纺衬衫短款2019夏季新款女装韩\r\n', '176.00', 'goods_003.png', null, '0', '5');
INSERT INTO `goods` VALUES ('4', '2019夏季新款雪纺衬衫女上衣职业OL短袖衬衣韩版修身休闲', '159.00', 'goods_004.png', null, '0', '5');
INSERT INTO `goods` VALUES ('5', '电脑椅家用电竞椅 人体工学椅子座椅可躺老板椅办公椅', '269.00', 'goods_005.png', null, '0', '2');
INSERT INTO `goods` VALUES ('6', '电脑椅家用座椅办公椅主播椅游戏椅网吧电竞椅可躺午休', '699.00', 'goods_006.png', null, '0', '2');
INSERT INTO `goods` VALUES ('7', '白图 李玲条纹衬衫女套头短袖百搭雪纺衫上\r\n', '179.15', 'goods_007.png', null, '0', '5');
INSERT INTO `goods` VALUES ('8', '不锈钢卫浴室柜组合小户型挂墙式洗手洗脸盆卫生间厕所洗漱盆', '305.00', 'goods_008.png', null, '0', '2');
INSERT INTO `goods` VALUES ('9', '北欧双盆浴室柜组合简约卫浴柜镜柜卫生间洗手盆洗脸洗漱台盆', '900.00', 'goods_009.png', null, '0', '2');
INSERT INTO `goods` VALUES ('10', '简约现代浴室柜洗手盆柜组合洗脸卫生间小户型厕所洗漱台卫浴吊柜', '948.00', 'goods_010.png', null, '0', '2');
INSERT INTO `goods` VALUES ('11', '三只鸟旅行箱拉杆箱女铝制框20寸学生密码箱登机箱24寸', '268.00', 'goods_011.png', null, '0', '1');
INSERT INTO `goods` VALUES ('12', '全铝镁铝合金拉杆箱金属旅行箱子商务行李箱学生登机箱', '375.00', 'goods_012.png', null, '0', '1');
INSERT INTO `goods` VALUES ('13', '床上双人电脑桌 台式电脑桌家用笔记本电脑桌', '89.00', 'goods_013.png', null, '0', '2');
INSERT INTO `goods` VALUES ('14', '男童鞋儿童鞋运动鞋2019春秋新款夏季网面休闲透气鞋', '79.00', 'goods_014.png', null, '0', '5');
INSERT INTO `goods` VALUES ('15', '大码宽松休闲立领短袖纯棉衬衫格子上衣衬衣', '149.00', 'goods_015.png', null, '0', '5');
INSERT INTO `goods` VALUES ('24', '魏广逸的大头照 高清2K 4K', '123.00', 'goods_016.png', '可以拿来做头像', '1', '4');
INSERT INTO `goods` VALUES ('26', '测试1', '314.59', 'goods_016.png', null, '1', '1');
INSERT INTO `goods` VALUES ('35', '测试2', '899.00', 'goods_016.png', 'asd ', '1', null);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL COMMENT '用户id',
  `payment` decimal(20,2) default NULL COMMENT '付款金额',
  `pay_time` datetime default NULL COMMENT '下单时间',
  PRIMARY KEY  USING BTREE (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('10021', '2', '25796.00', '2020-12-08 21:31:08');
INSERT INTO `order` VALUES ('10022', '2', '23997.00', '2020-12-09 00:00:14');
INSERT INTO `order` VALUES ('10023', '2', '3999.00', '2020-12-09 00:09:07');
INSERT INTO `order` VALUES ('10024', '2', '4099.00', '2020-12-09 00:09:13');
INSERT INTO `order` VALUES ('10025', '2', '5299.00', '2020-12-09 00:09:17');
INSERT INTO `order` VALUES ('10026', '2', '5299.00', '2020-12-09 00:09:20');
INSERT INTO `order` VALUES ('10027', '2', '8098.00', '2020-12-09 00:10:11');
INSERT INTO `order` VALUES ('10028', '2', '11298.00', '2020-12-09 00:10:17');
INSERT INTO `order` VALUES ('10029', '2', '5999.00', '2020-12-09 00:10:21');
INSERT INTO `order` VALUES ('10030', '2', '5299.00', '2020-12-09 00:10:24');
INSERT INTO `order` VALUES ('10031', '2', '5299.00', '2020-12-09 00:10:28');
INSERT INTO `order` VALUES ('10032', '2', '17297.00', '2020-12-09 09:32:47');
INSERT INTO `order` VALUES ('10033', '2', '41691.00', '2020-12-09 10:21:33');
INSERT INTO `order` VALUES ('10034', '2', '13097.00', '2020-12-09 14:18:25');
INSERT INTO `order` VALUES ('10035', '2', '6188.00', '2020-12-09 22:21:42');
INSERT INTO `order` VALUES ('10036', '3', '7998.00', '2020-12-09 22:24:22');
INSERT INTO `order` VALUES ('10037', '3', '20095.00', '2020-12-09 22:26:14');
INSERT INTO `order` VALUES ('10038', '2', '1999800.00', '2020-12-09 22:29:43');
INSERT INTO `order` VALUES ('10039', '3', '239940.00', '2020-12-09 23:18:14');
INSERT INTO `order` VALUES ('10040', '2', '38094.00', '2020-12-10 08:28:19');
INSERT INTO `order` VALUES ('10041', '2', '45292.00', '2019-06-10 08:29:31');
INSERT INTO `order` VALUES ('10042', '2', '8098.00', '2019-06-10 08:30:43');
INSERT INTO `order` VALUES ('10043', '2', '17997.00', '2020-12-10 09:18:54');
INSERT INTO `order` VALUES ('10044', '2', '372114.00', '2020-12-11 14:51:13');
INSERT INTO `order` VALUES ('10045', '2', '40990.00', '2020-12-11 15:00:56');
INSERT INTO `order` VALUES ('10046', '2', '623048.00', '2020-12-11 15:02:34');
INSERT INTO `order` VALUES ('10047', '2', '4099.00', '2020-12-11 15:10:31');
INSERT INTO `order` VALUES ('10048', '2', '36891.00', '2020-12-11 15:12:55');
INSERT INTO `order` VALUES ('10049', '4', '11998.00', '2020-12-11 15:18:29');
INSERT INTO `order` VALUES ('10050', '5', '9999.00', '2020-12-11 15:56:42');
INSERT INTO `order` VALUES ('10051', '5', '11998.00', '2020-12-11 15:58:06');
INSERT INTO `order` VALUES ('10052', '5', '783804.00', '2020-12-11 15:58:51');
INSERT INTO `order` VALUES ('10053', '2', '5999.00', '2020-12-13 13:07:45');
INSERT INTO `order` VALUES ('10054', '2', '29997.00', '2020-12-14 07:53:46');
INSERT INTO `order` VALUES ('10055', '7', '9998.00', '2020-12-19 12:18:38');
INSERT INTO `order` VALUES ('10056', '2', '4899.00', '2020-12-19 17:21:02');

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `id` int(11) NOT NULL auto_increment COMMENT '订单项id',
  `user_id` int(11) default NULL COMMENT '用户id',
  `order_id` int(11) default NULL COMMENT '所属订单',
  `product_name` varchar(20) default NULL COMMENT '商品名',
  `product_image` varchar(100) default NULL COMMENT '商品图,图片名',
  `product_price` decimal(50,2) default NULL COMMENT '商品下单时的单价',
  `quantity` int(11) default NULL COMMENT '购买数量',
  `total_price` decimal(50,2) default NULL COMMENT '该订单项金额小计',
  PRIMARY KEY  USING BTREE (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES ('6', '2', '10021', '联想 拯救者Y7000', 'lenovo-拯救者-Y7000.jpg', '6299.00', '2', '12598.00');
INSERT INTO `order_item` VALUES ('7', '2', '10021', 'Apple MacBook Air', 'Apple-MacBook-Air.jpg', '8299.00', '1', '8299.00');
INSERT INTO `order_item` VALUES ('8', '2', '10021', '联想 小新潮7000', 'lenovo-小新-潮7000.jpg', '4899.00', '1', '4899.00');
INSERT INTO `order_item` VALUES ('9', '2', '10022', '华为 MateBook X Pro', 'huawei-matebook-x-pro.jpg', '9999.00', '2', '19998.00');
INSERT INTO `order_item` VALUES ('10', '2', '10022', '华为 MateBook E', 'huawei-matebook-e.jpg', '3999.00', '1', '3999.00');
INSERT INTO `order_item` VALUES ('11', '2', '10023', '华为 MateBook E', 'huawei-matebook-e.jpg', '3999.00', '1', '3999.00');
INSERT INTO `order_item` VALUES ('12', '2', '10024', '荣耀 MagicBook 2019', 'honor-magicbook-2019.jpg', '4099.00', '1', '4099.00');
INSERT INTO `order_item` VALUES ('13', '2', '10025', '联想 小新Air', 'lenovo-小新-air.jpg', '5299.00', '1', '5299.00');
INSERT INTO `order_item` VALUES ('14', '2', '10026', '联想 小新Air', 'lenovo-小新-air.jpg', '5299.00', '1', '5299.00');
INSERT INTO `order_item` VALUES ('15', '2', '10027', '华为 MateBook E', 'huawei-matebook-e.jpg', '3999.00', '1', '3999.00');
INSERT INTO `order_item` VALUES ('16', '2', '10027', '荣耀 MagicBook 2019', 'honor-magicbook-2019.jpg', '4099.00', '1', '4099.00');
INSERT INTO `order_item` VALUES ('17', '2', '10028', '华为 MateBook 14', 'huawei-matebook14.jpg', '5999.00', '1', '5999.00');
INSERT INTO `order_item` VALUES ('18', '2', '10028', '联想 小新Air', 'lenovo-小新-air.jpg', '5299.00', '1', '5299.00');
INSERT INTO `order_item` VALUES ('19', '2', '10029', '华为 MateBook 14', 'huawei-matebook14.jpg', '5999.00', '1', '5999.00');
INSERT INTO `order_item` VALUES ('20', '2', '10030', '联想 小新Air', 'lenovo-小新-air.jpg', '5299.00', '1', '5299.00');
INSERT INTO `order_item` VALUES ('21', '2', '10031', '联想 小新Air', 'lenovo-小新-air.jpg', '5299.00', '1', '5299.00');
INSERT INTO `order_item` VALUES ('22', '2', '10032', 'Apple MacBook Air', 'Apple-MacBook-Air.jpg', '8299.00', '1', '8299.00');
INSERT INTO `order_item` VALUES ('23', '2', '10032', '荣耀 MagicBook 2019', 'honor-magicbook-2019.jpg', '4099.00', '1', '4099.00');
INSERT INTO `order_item` VALUES ('24', '2', '10032', '联想 小新潮7000', 'lenovo-小新-潮7000.jpg', '4899.00', '1', '4899.00');
INSERT INTO `order_item` VALUES ('25', '2', '10033', '荣耀 MagicBook 2019', 'honor-magicbook-2019.jpg', '4099.00', '5', '20495.00');
INSERT INTO `order_item` VALUES ('26', '2', '10033', '联想 小新Air', 'lenovo-小新-air.jpg', '5299.00', '4', '21196.00');
INSERT INTO `order_item` VALUES ('27', '2', '10034', '荣耀 MagicBook 2019', 'honor-magicbook-2019.jpg', '4099.00', '2', '8198.00');
INSERT INTO `order_item` VALUES ('28', '2', '10034', '联想 小新潮7000', 'lenovo-小新-潮7000.jpg', '4899.00', '1', '4899.00');
INSERT INTO `order_item` VALUES ('29', '2', '10035', '华硕 灵耀S 2代', '3ec5b854-09e9-4a93-a089-0cb3ff31d015.jpg', '6188.00', '1', '6188.00');
INSERT INTO `order_item` VALUES ('30', '3', '10036', '华为 MateBook E', 'huawei-matebook-e.jpg', '3999.00', '2', '7998.00');
INSERT INTO `order_item` VALUES ('31', '3', '10037', '华为 MateBook E', 'huawei-matebook-e.jpg', '3999.00', '4', '15996.00');
INSERT INTO `order_item` VALUES ('32', '3', '10037', '荣耀 MagicBook 2019', 'honor-magicbook-2019.jpg', '4099.00', '1', '4099.00');
INSERT INTO `order_item` VALUES ('33', '2', '10038', '华为 MateBook X Pro', 'huawei-matebook-x-pro.jpg', '9999.00', '200', '1999800.00');
INSERT INTO `order_item` VALUES ('34', '3', '10039', '华为 MateBook E', 'huawei-matebook-e.jpg', '3999.00', '60', '239940.00');
INSERT INTO `order_item` VALUES ('35', '2', '10040', '华为 MateBook 14', 'huawei-matebook14.jpg', '5999.00', '1', '5999.00');
INSERT INTO `order_item` VALUES ('36', '2', '10040', '华为 MateBook X Pro', 'huawei-matebook-x-pro.jpg', '9999.00', '2', '19998.00');
INSERT INTO `order_item` VALUES ('37', '2', '10040', '华为 MateBook E', 'huawei-matebook-e.jpg', '3999.00', '2', '7998.00');
INSERT INTO `order_item` VALUES ('38', '2', '10040', '荣耀 MagicBook 2019', 'honor-magicbook-2019.jpg', '4099.00', '1', '4099.00');
INSERT INTO `order_item` VALUES ('39', '2', '10041', '华为 MateBook E', 'huawei-matebook-e.jpg', '3999.00', '1', '3999.00');
INSERT INTO `order_item` VALUES ('40', '2', '10041', '荣耀 MagicBook 2019', 'honor-magicbook-2019.jpg', '4099.00', '4', '16396.00');
INSERT INTO `order_item` VALUES ('41', '2', '10041', 'Apple MacBook Air', 'Apple-MacBook-Air.jpg', '8299.00', '3', '24897.00');
INSERT INTO `order_item` VALUES ('42', '2', '10042', '华为 MateBook E', 'huawei-matebook-e.jpg', '3999.00', '1', '3999.00');
INSERT INTO `order_item` VALUES ('43', '2', '10042', '荣耀 MagicBook 2019', 'honor-magicbook-2019.jpg', '4099.00', '1', '4099.00');
INSERT INTO `order_item` VALUES ('44', '2', '10043', '华为 MateBook 14', 'huawei-matebook14.jpg', '5999.00', '3', '17997.00');
INSERT INTO `order_item` VALUES ('45', '2', '10044', '华为 MateBook 14', 'huawei-matebook14.jpg', '5999.00', '1', '5999.00');
INSERT INTO `order_item` VALUES ('46', '2', '10044', '华为 MateBook X Pro', 'huawei-matebook-x-pro.jpg', '9999.00', '3', '29997.00');
INSERT INTO `order_item` VALUES ('47', '2', '10044', '荣耀 MagicBook 2019', 'honor-magicbook-2019.jpg', '4099.00', '82', '336118.00');
INSERT INTO `order_item` VALUES ('48', '2', '10045', '荣耀 MagicBook 2019', 'honor-magicbook-2019.jpg', '4099.00', '10', '40990.00');
INSERT INTO `order_item` VALUES ('49', '2', '10046', '荣耀 MagicBook 2019', 'honor-magicbook-2019.jpg', '4099.00', '152', '623048.00');
INSERT INTO `order_item` VALUES ('50', '2', '10047', '荣耀 MagicBook 2019', 'honor-magicbook-2019.jpg', '4099.00', '1', '4099.00');
INSERT INTO `order_item` VALUES ('51', '2', '10048', '荣耀 MagicBook 2019', 'honor-magicbook-2019.jpg', '4099.00', '9', '36891.00');
INSERT INTO `order_item` VALUES ('52', '4', '10049', '华为 MateBook 14', 'huawei-matebook14.jpg', '5999.00', '2', '11998.00');
INSERT INTO `order_item` VALUES ('53', '5', '10050', '华为 MateBook X Pro', 'huawei-matebook-x-pro.jpg', '9999.00', '1', '9999.00');
INSERT INTO `order_item` VALUES ('54', '5', '10051', '华为 MateBook 14', 'huawei-matebook14.jpg', '5999.00', '2', '11998.00');
INSERT INTO `order_item` VALUES ('55', '5', '10052', '华为 MateBook E', 'huawei-matebook-e.jpg', '3999.00', '196', '783804.00');
INSERT INTO `order_item` VALUES ('56', '2', '10053', '华为 MateBook 14', 'huawei-matebook14.jpg', '5999.00', '1', '5999.00');
INSERT INTO `order_item` VALUES ('57', '2', '10054', '华为 MateBook X Pro', 'huawei-matebook-x-pro.jpg', '9999.00', '3', '29997.00');
INSERT INTO `order_item` VALUES ('58', '7', '10055', '华为 MateBook 14', 'huawei-matebook14.jpg', '5999.00', '1', '5999.00');
INSERT INTO `order_item` VALUES ('59', '7', '10055', '华为 MateBook E', 'huawei-matebook-e.jpg', '3999.00', '1', '3999.00');
INSERT INTO `order_item` VALUES ('60', '2', '10056', '联想 小新潮7000', 'lenovo-小新-潮7000.jpg', '4899.00', '1', '4899.00');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL auto_increment COMMENT '商品id',
  `brand_id` int(11) default NULL COMMENT '品类id',
  `name` varchar(20) default NULL COMMENT '商品名',
  `image` varchar(50) default NULL COMMENT '商品图,图片名',
  `detail` varchar(100) default NULL COMMENT '商品详情',
  `stock` int(11) default NULL COMMENT '商品库存',
  `price` decimal(50,2) default NULL COMMENT '商品单价',
  PRIMARY KEY  USING BTREE (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('10001', '7', 'ROG玩家国度', '3f7858c8-78c6-4a29-96d3-00ff345fabd0.jpg', 'ROG/玩家国度 幻15 十代8核i7 设计师商务本轻薄笔记本电脑4K屏', '8', '6999.00');
INSERT INTO `product` VALUES ('10003', '1', '华为 MateBook X Pro', 'huawei-matebook-x-pro.jpg', '2019款 英特尔酷睿i7 13.9英寸全面屏轻薄笔记本(i7 8G 512G MX250 3K触控) 灰', '191', '9999.00');
INSERT INTO `product` VALUES ('10004', '2', '荣耀 MagicBook 2019', 'honor-magicbook-2019.jpg', '14英寸轻薄窄边框笔记本电脑（AMD锐龙5 3500U 8G 512G FHD IPS 指纹解锁）冰河银 非常棒', '10', '4099.00');
INSERT INTO `product` VALUES ('10006', '3', '联想 小新潮7000', 'lenovo-小新-潮7000.jpg', '英特尔酷睿i5 14英寸轻薄笔记本电脑(I5-8250U 8G 512G PCIE SSD R535独显 )银', '95', '4899.00');
INSERT INTO `product` VALUES ('10008', '4', 'Apple Macbook Pro', 'Apple-Macbook-Pro.jpg', '13.3 带触控栏 Core i5 8G 256G SSD 银色 苹果笔记本电脑 轻薄本 MR9U2CH/A', '93', '12299.00');
INSERT INTO `product` VALUES ('10009', '4', 'Apple MacBook Air', 'Apple-MacBook-Air.jpg', '13.3 | 2018款Retina Core i5 8G 128G SSD 深空灰 苹果笔记本电脑 轻薄本 MRE82CH/A', '94', '8299.00');
INSERT INTO `product` VALUES ('10011', '1', '华硕 灵耀S 2代', '92765e17-1e4e-4fc9-9469-f8583e9575ef.jpg', '英特尔酷睿i7 15.6英寸微边轻薄笔记本电脑(i7-8565U 8G 512GSSD MX150 2G IPS)冰钻金', '10', '5599.00');
INSERT INTO `product` VALUES ('10012', '3', '商品', 'b74df887-b33a-4072-a27e-c54878554ce0.jpg', '好', '10', '10000.00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `login_name` varchar(20) default NULL COMMENT '登录名',
  `password` varchar(20) default NULL COMMENT '登录密码',
  `role` int(4) default NULL COMMENT '角色,0-普通用户,1-管理员',
  `real_name` varchar(20) default NULL COMMENT '真实姓名',
  `phone` varchar(11) default NULL COMMENT '联系电话',
  `address` varchar(50) default NULL COMMENT '收货地址',
  PRIMARY KEY  USING BTREE (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '1', '管理员', '888888', '东北林业大学');
INSERT INTO `user` VALUES ('2', 'user1', '1234', '0', '殷世杰', '0000000', '东北林业大学');
INSERT INTO `user` VALUES ('3', '11', '11', '0', null, null, null);
INSERT INTO `user` VALUES ('4', 'user2', '1234', '0', null, null, null);
INSERT INTO `user` VALUES ('5', '222', '222', '0', null, null, null);
INSERT INTO `user` VALUES ('6', 'user3', '1234', '0', null, null, null);
INSERT INTO `user` VALUES ('7', '123456', '654321', '0', null, null, null);
