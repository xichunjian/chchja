/*
 Navicat Premium Data Transfer

 Source Server         : 本机数据库
 Source Server Type    : MySQL
 Source Server Version : 50643
 Source Host           : localhost:3306
 Source Schema         : tp_shop

 Target Server Type    : MySQL
 Target Server Version : 50643
 File Encoding         : 65001

 Date: 03/02/2020 16:12:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tp_cart
-- ----------------------------
DROP TABLE IF EXISTS `tp_cart`;
CREATE TABLE `tp_cart`  (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `buyer_id` int(11) NOT NULL DEFAULT 0 COMMENT '买家id',
  `shop_id` int(11) NOT NULL DEFAULT 0 COMMENT '店铺id',
  `shop_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '店铺名称',
  `goods_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品id',
  `goods_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `sku_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品的skuid',
  `sku_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品的sku名称',
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '商品价格',
  `num` smallint(5) NOT NULL DEFAULT 1 COMMENT '购买商品数量',
  `goods_picture` int(11) NOT NULL DEFAULT 0 COMMENT '商品图片',
  `bl_id` mediumint(8) NOT NULL DEFAULT 0 COMMENT '组合套装ID',
  PRIMARY KEY (`cart_id`) USING BTREE,
  INDEX `member_id`(`buyer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 AVG_ROW_LENGTH = 1170 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_cart
-- ----------------------------
INSERT INTO `tp_cart` VALUES (1, 87, 41, '乔丹旗舰店', 385, '春季包头中粗跟尖头浅口单鞋女夏2017新款百搭韩版侧空低跟单鞋子', 1484, '', 215.20, 1, 1849, 0);
INSERT INTO `tp_cart` VALUES (2, 294, 0, 'niushop开源商城', 382, 'M Queen独立制衣 优雅V领褶皱飘带系带修身长裙A字吊带连衣裙8915', 1481, '', 369.00, 1, 1841, 0);
INSERT INTO `tp_cart` VALUES (4, 293, 0, 'niushop开源商城', 383, '单鞋细高跟防水台鱼嘴女凉鞋2017春夏季新款复古刺绣高跟鞋40-42', 1482, '', 345.00, 1, 1844, 0);
INSERT INTO `tp_cart` VALUES (11, 305, 0, '乔丹旗舰店', 383, '单鞋细高跟防水台鱼嘴女凉鞋2017春夏季新款复古刺绣高跟鞋40-42', 1482, '', 345.00, 4, 1844, 0);
INSERT INTO `tp_cart` VALUES (12, 305, 0, '乔丹旗舰店', 383, '单鞋细高跟防水台鱼嘴女凉鞋2017春夏季新款复古刺绣高跟鞋40-42', 1482, '', 345.00, 1, 1844, 0);

-- ----------------------------
-- Table structure for tp_coupon
-- ----------------------------
DROP TABLE IF EXISTS `tp_coupon`;
CREATE TABLE `tp_coupon`  (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券id',
  `coupon_type_id` int(11) NOT NULL COMMENT '优惠券类型id',
  `shop_id` int(11) NOT NULL COMMENT '店铺Id',
  `coupon_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '优惠券编码',
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '领用人',
  `use_order_id` int(11) NOT NULL DEFAULT 0 COMMENT '优惠券使用订单id',
  `create_order_id` int(11) NOT NULL DEFAULT 0 COMMENT '创建订单id(优惠券只有是完成订单发放的优惠券时才有值)',
  `money` decimal(10, 2) NOT NULL COMMENT '面额',
  `fetch_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '领取时间',
  `use_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '使用时间',
  `state` tinyint(4) NOT NULL DEFAULT 0 COMMENT '优惠券状态 0未领用 1已领用（未使用） 2已使用 3已过期',
  `start_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效期开始时间',
  `end_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效期结束时间',
  `get_type` int(11) NOT NULL DEFAULT 0 COMMENT '获取方式1订单2.首页领取',
  PRIMARY KEY (`coupon_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 AVG_ROW_LENGTH = 148 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_coupon
-- ----------------------------
INSERT INTO `tp_coupon` VALUES (1, 1, 0, '1529053912118', 305, 0, 0, 1000.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2018-06-15 17:11:36', '2018-06-29 17:11:39', 0);
INSERT INTO `tp_coupon` VALUES (2, 1, 0, '1529053912403', 305, 0, 0, 1000.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2018-06-15 17:11:36', '2018-06-29 17:11:39', 0);
INSERT INTO `tp_coupon` VALUES (3, 1, 0, '1529053912653', 305, 0, 0, 1000.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2018-06-15 17:11:36', '2018-06-29 17:11:39', 0);
INSERT INTO `tp_coupon` VALUES (4, 1, 0, '1529053912113', 305, 0, 0, 1000.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2018-06-15 17:11:36', '2018-06-29 17:11:39', 0);
INSERT INTO `tp_coupon` VALUES (5, 1, 0, '1529053912723', 305, 0, 0, 1000.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2018-06-15 17:11:36', '2018-06-29 17:11:39', 0);
INSERT INTO `tp_coupon` VALUES (6, 1, 0, '1529053912603', 305, 0, 0, 1000.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2018-06-15 17:11:36', '2018-06-29 17:11:39', 0);
INSERT INTO `tp_coupon` VALUES (7, 1, 0, '1529053912743', 305, 0, 0, 1000.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2018-06-15 17:11:36', '2018-06-29 17:11:39', 0);
INSERT INTO `tp_coupon` VALUES (8, 1, 0, '1529053912225', 305, 0, 0, 1000.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2018-06-15 17:11:36', '2018-06-29 17:11:39', 0);
INSERT INTO `tp_coupon` VALUES (9, 1, 0, '1529053912845', 305, 0, 0, 1000.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2018-06-15 17:11:36', '2018-06-29 17:11:39', 0);
INSERT INTO `tp_coupon` VALUES (10, 1, 0, '1529053912781', 305, 0, 0, 1000.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2018-06-15 17:11:36', '2018-06-29 17:11:39', 0);
INSERT INTO `tp_coupon` VALUES (11, 2, 0, '1529055029625', 305, 0, 0, 110.00, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2018-06-15 17:30:22', '2018-06-17 17:30:24', 0);

-- ----------------------------
-- Table structure for tp_coupon_goods
-- ----------------------------
DROP TABLE IF EXISTS `tp_coupon_goods`;
CREATE TABLE `tp_coupon_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_type_id` int(11) NOT NULL COMMENT '优惠券类型id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 AVG_ROW_LENGTH = 606 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券使用商品表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_coupon_goods
-- ----------------------------
INSERT INTO `tp_coupon_goods` VALUES (1, 1, 384);

-- ----------------------------
-- Table structure for tp_coupon_type
-- ----------------------------
DROP TABLE IF EXISTS `tp_coupon_type`;
CREATE TABLE `tp_coupon_type`  (
  `coupon_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券类型Id',
  `shop_id` int(11) NOT NULL DEFAULT 1 COMMENT '店铺ID',
  `coupon_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '优惠券名称',
  `money` decimal(10, 2) NOT NULL COMMENT '发放面额',
  `count` int(11) NOT NULL COMMENT '发放数量',
  `max_fetch` int(11) NOT NULL DEFAULT 0 COMMENT '每人最大领取个数 0无限制',
  `at_least` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '满多少元使用 0代表无限制',
  `need_user_level` tinyint(4) NOT NULL DEFAULT 0 COMMENT '领取人会员等级',
  `range_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '使用范围0部分产品使用 1全场产品使用',
  `start_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效日期开始时间',
  `end_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效日期结束时间',
  `create_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `is_show` int(11) NOT NULL DEFAULT 0 COMMENT '是否允许首页显示0不显示1显示',
  PRIMARY KEY (`coupon_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 AVG_ROW_LENGTH = 1365 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_coupon_type
-- ----------------------------
INSERT INTO `tp_coupon_type` VALUES (1, 0, 'test', 1000.00, 10, 10, 500.00, 0, 1, '2018-06-15 17:11:36', '2018-06-29 17:11:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);
INSERT INTO `tp_coupon_type` VALUES (2, 0, 'testegsg', 110.00, 1, 1, 30.00, 0, 1, '2018-06-15 17:30:22', '2018-06-17 17:30:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

-- ----------------------------
-- Table structure for tp_goods
-- ----------------------------
DROP TABLE IF EXISTS `tp_goods`;
CREATE TABLE `tp_goods`  (
  `goods_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品id(SKU)',
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品名称',
  `shop_id` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '店铺id',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品分类id',
  `category_id_1` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '一级分类id',
  `category_id_2` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '二级分类id',
  `category_id_3` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '三级分类id',
  `brand_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '品牌id',
  `state` tinyint(3) NOT NULL DEFAULT 1 COMMENT '商品状态 0下架，1正常，10违规（禁售）',
  `group_id_array` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '店铺分类id 首尾用,隔开',
  `promotion_type` tinyint(3) NOT NULL DEFAULT 0 COMMENT '促销类型 0无促销，1团购，2限时折扣',
  `promote_id` int(11) NOT NULL DEFAULT 0 COMMENT '促销活动ID',
  `goods_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '实物或虚拟商品标志 1实物商品 0 虚拟商品 2 F码商品',
  `market_price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '市场价',
  `price` decimal(19, 2) NOT NULL DEFAULT 0.00 COMMENT '商品原价格',
  `promotion_price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '商品促销价格',
  `cost_price` decimal(19, 2) NOT NULL DEFAULT 0.00 COMMENT '成本价',
  `point_exchange_type` tinyint(3) NOT NULL DEFAULT 0 COMMENT '积分兑换类型 0 非积分兑换 1 只能积分兑换 ',
  `point_exchange` int(11) NOT NULL DEFAULT 0 COMMENT '积分兑换',
  `give_point` int(11) NOT NULL DEFAULT 0 COMMENT '购买商品赠送积分',
  `is_member_discount` int(1) NOT NULL DEFAULT 0 COMMENT '参与会员折扣',
  `shipping_fee` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '运费 0为免运费',
  `shipping_fee_id` int(11) NOT NULL DEFAULT 0 COMMENT '售卖区域id 物流模板id  ns_order_shipping_fee 表id',
  `stock` int(10) NOT NULL DEFAULT 0 COMMENT '商品库存',
  `max_buy` int(11) NOT NULL DEFAULT 0 COMMENT '限购 0 不限购',
  `clicks` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品点击数量',
  `min_stock_alarm` int(11) NOT NULL DEFAULT 0 COMMENT '库存预警值',
  `sales` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '销售数量',
  `collects` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '收藏数量',
  `star` tinyint(3) UNSIGNED NOT NULL DEFAULT 5 COMMENT '好评星级',
  `evaluates` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评价数',
  `shares` int(11) NOT NULL DEFAULT 0 COMMENT '分享数',
  `province_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '一级地区id',
  `city_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '二级地区id',
  `picture` int(11) NOT NULL DEFAULT 0 COMMENT '商品主图',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品关键词',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品简介，促销语',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品详情',
  `QRcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品二维码',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商家编号',
  `is_stock_visible` int(1) NOT NULL DEFAULT 0 COMMENT '页面不显示库存',
  `is_hot` int(1) NOT NULL DEFAULT 0 COMMENT '是否热销商品',
  `is_recommend` int(1) NOT NULL DEFAULT 0 COMMENT '是否推荐',
  `is_new` int(1) NOT NULL DEFAULT 0 COMMENT '是否新品',
  `is_pre_sale` int(1) NOT NULL DEFAULT 0 COMMENT '是否预售',
  `is_bill` int(1) NOT NULL DEFAULT 0 COMMENT '是否开具增值税发票 1是，0否',
  `sale_date` datetime(0) NOT NULL COMMENT '上下架时间',
  `create_time` datetime(0) NOT NULL COMMENT '商品添加时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '商品编辑时间',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `img_id_array` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片序列',
  `sku_img_array` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品sku应用图片列表  属性,属性值，图片ID',
  `match_point` float(10, 2) NULL DEFAULT NULL COMMENT '实物与描述相符（根据评价计算）',
  `match_ratio` float(10, 2) NULL DEFAULT NULL COMMENT '实物与描述相符（根据评价计算）百分比',
  `real_sales` int(10) NOT NULL DEFAULT 0 COMMENT '实际销量',
  `goods_attribute_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品类型',
  `goods_spec_format` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品规格',
  `goods_weight` decimal(8, 2) NOT NULL DEFAULT 0.00 COMMENT '商品重量',
  `goods_volume` decimal(8, 2) NOT NULL DEFAULT 0.00 COMMENT '商品体积',
  `shipping_fee_type` int(11) NOT NULL DEFAULT 1 COMMENT '计价方式1.重量2.体积3.计件',
  `extend_category_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extend_category_id_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extend_category_id_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extend_category_id_3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `supplier_id` int(11) NOT NULL DEFAULT 0 COMMENT '供货商id',
  `image_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 392 AVG_ROW_LENGTH = 16554 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_goods
-- ----------------------------
INSERT INTO `tp_goods` VALUES (383, '单鞋细高跟防水台鱼嘴女凉鞋2017春夏季新款复古刺绣高跟鞋40-42', 41, 312, 312, 0, 0, 0, 0, '', 0, 0, 1, 0.00, 345.00, 345.00, 0.00, 0, 0, 0, 0, 0.00, 0, 1000, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1844, '', '', '<ul class=\"attributes-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>里料材质:&nbsp;超纤皮</p></li><li><p>鞋垫材质:&nbsp;超纤皮</p></li><li><p>品牌:&nbsp;嫚汐</p></li><li><p>货号:&nbsp;070771012470</p></li><li><p>上市年份季节:&nbsp;2017年夏季</p></li><li><p>风格:&nbsp;民族风</p></li><li><p>帮面材质:&nbsp;超细纤维</p></li><li><p>皮质特征:&nbsp;印花</p></li><li><p>鞋底材质:&nbsp;橡胶</p></li><li><p>鞋头款式:&nbsp;鱼嘴</p></li><li><p>后跟高:&nbsp;高跟(5-8cm)</p></li><li><p>跟底款式:&nbsp;细跟</p></li><li><p>鞋帮高度:&nbsp;低帮</p></li><li><p>流行元素:&nbsp;洞洞款</p></li><li><p>颜色分类:&nbsp;白色（普通版） 红色（普通版） 黑色（普通版） 白色（防滑耐磨底） 红色（防滑耐磨底） 黑色（防滑耐磨底）</p></li><li><p>尺码:&nbsp;32（定做不退换） 33（定做不退换） 40（定做不退换） 41（定做不退换） 42（定做不退换） 34 35 36 37 38 39</p></li><li><p>后帮:&nbsp;包跟</p></li><li><p>侧帮:&nbsp;满帮</p></li><li><p>闭合方式:&nbsp;套脚</p></li><li><p>图案:&nbsp;植物花卉</p></li><li><p>鞋制作工艺:&nbsp;胶粘鞋</p></li><li><p>适合场合:&nbsp;日常</p></li></ul><p><span style=\"line-height: 1.5; font-size: 18px;\"><strong>帮面材质: 超细纤维 内里材质: 超细纤维 皮质特征: 印花&nbsp;</strong></span></p><p>&nbsp;</p><p><span style=\"line-height: 1.5; font-size: 18px;\"><strong>鞋底材质: 防滑耐磨橡胶 开口深度:浅口 鞋头款式: 鱼嘴&nbsp;</strong></span></p><p>&nbsp;</p><p><span style=\"line-height: 1.5; font-size: 18px;\"><strong>跟形状: 粗跟 跟高:超高跟（大于8cm） 颜色分类: 黑色 红色 白色&nbsp;</strong></span></p><p>&nbsp;</p><p><span style=\"line-height: 1.5; font-size: 18px;\"><strong>闭合方式：套脚 制作工艺: 胶粘鞋 尺码: 32 33 34 35 36 37 38 39 40 41 42</strong></span><span style=\"line-height: 1.5; font-size: 18px;\"><strong>&nbsp; &nbsp; 大小码[订做不退换]</strong></span><span style=\"line-height: 1.5; font-size: 18px;\"></span></p><p><img src=\"https://img.alicdn.com/imgextra/i1/2638511401/TB2umgOAtFopuFjSZFHXXbSlXXa_!!2638511401.jpg\" style=\"border: 0px; vertical-align: middle;\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i3/2638511401/TB24eNIwbVkpuFjSspcXXbSMVXa_!!2638511401.jpg\" style=\"border: 0px; vertical-align: middle;\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i2/2638511401/TB2IsiIwmFjpuFjSszhXXaBuVXa_!!2638511401.jpg\" style=\"border: 0px; vertical-align: middle;\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i2/2638511401/TB2.I.xv30kpuFjSspdXXX4YXXa_!!2638511401.jpg\" style=\"border: 0px; vertical-align: middle;\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i1/2638511401/TB2kTEZAt0opuFjSZFxXXaDNVXa_!!2638511401.jpg\" class=\"\" width=\"750\" height=\"750\" style=\"border: 0px; vertical-align: middle;\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i1/2638511401/TB2IgQLv3NlpuFjy0FfXXX3CpXa_!!2638511401.jpg\" class=\"\" width=\"750\" height=\"750\" style=\"border: 0px; vertical-align: middle;\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i4/2638511401/TB27vclACVmpuFjSZFFXXcZApXa_!!2638511401.jpg\" class=\"\" width=\"750\" height=\"750\" style=\"border: 0px; vertical-align: middle;\"/></p><p><img src=\"https://img.alicdn.com/imgextra/i4/2638511401/TB2GwjTArBnpuFjSZFGXXX51pXa_!!2638511401.jpg\" class=\"\" width=\"750\" height=\"750\" style=\"border: 0px; vertical-align: middle;\"/></p><p><br/></p>', 'upload/goods_qrcode/goods_qrcode_383.png', '', 1, 0, 0, 0, 0, 0, '2017-07-21 09:40:23', '2017-07-21 09:40:23', '2018-05-23 07:47:35', 0, '1844,1845,1846', '', NULL, NULL, 0, 32, '[]', 0.00, 0.00, 3, '', '', '', '', 0, NULL);
INSERT INTO `tp_goods` VALUES (384, '【葡萄妈】studiolee 小方跟方扣单鞋4.5cm 附赠贴底', 41, 312, 312, 0, 0, 0, 1, '', 0, 0, 1, 0.00, 269.00, 269.00, 0.00, 0, 0, 0, 0, 0.00, 0, 1000, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1847, '', '', '<ul class=\"attributes-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>品牌:&nbsp;Studiolee selection</p></li><li><p>上市年份季节:&nbsp;2017年夏季</p></li><li><p>帮面材质:&nbsp;漆皮</p></li><li><p>内里材质:&nbsp;羊皮</p></li><li><p>开口深度:&nbsp;浅口</p></li><li><p>鞋头款式:&nbsp;方头</p></li><li><p>后跟高:&nbsp;中跟(3-5cm)</p></li><li><p>跟底款式:&nbsp;方跟</p></li><li><p>颜色分类:&nbsp;黑色 预售约35天发 大象灰 预售约35天发 雾霾灰 预售约35天发 波尔多红 预售约35天发</p></li><li><p>尺码:&nbsp;33 34 35 36 37 38 39 40</p></li></ul><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><img src=\"https://img.alicdn.com/imgextra/i4/2089352068/TB2W5RxwCXlpuFjy0FeXXcJbFXa_!!2089352068.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i2/2089352068/TB2zBO1AAqvpuFjSZFhXXaOgXXa_!!2089352068.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i1/2089352068/TB2XlS1AAqvpuFjSZFhXXaOgXXa_!!2089352068.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/2089352068/TB2rGwyv84lpuFjy1zjXXcAKpXa_!!2089352068.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i2/2089352068/TB2WBF3AHBnpuFjSZFGXXX51pXa_!!2089352068.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"4687\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><br/><img src=\"https://img.alicdn.com/imgextra/i2/2089352068/TB29rfdAHlmpuFjSZFlXXbdQXXa_!!2089352068.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"5906\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/></p><p><br/></p>', 'upload/goods_qrcode/goods_qrcode_384.png', '', 1, 0, 0, 0, 0, 0, '2017-07-21 09:42:00', '2017-07-21 09:42:00', NULL, 0, '1847,1848', '', NULL, NULL, 0, 32, '[]', 0.00, 0.00, 3, '', '', '', '', 0, NULL);
INSERT INTO `tp_goods` VALUES (385, '春季包头中粗跟尖头浅口单鞋女夏2017新款百搭韩版侧空低跟单鞋子', 41, 312, 312, 0, 0, 0, 1, '', 0, 0, 1, 0.00, 269.00, 269.00, 0.00, 0, 0, 0, 0, 0.00, 0, 999, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 1849, '', '', '<ul class=\"attributes-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>鞋垫材质:&nbsp;PU</p></li><li><p>品牌:&nbsp;other/其他</p></li><li><p>货号:&nbsp;新款推</p></li><li><p>上市年份季节:&nbsp;2017年夏季</p></li><li><p>风格:&nbsp;韩版</p></li><li><p>帮面材质:&nbsp;PU</p></li><li><p>内里材质:&nbsp;PU</p></li><li><p>皮质特征:&nbsp;修面</p></li><li><p>鞋底材质:&nbsp;橡胶</p></li><li><p>开口深度:&nbsp;浅口</p></li><li><p>鞋头款式:&nbsp;尖头</p></li><li><p>后跟高:&nbsp;低跟(1-3cm)</p></li><li><p>跟底款式:&nbsp;粗跟</p></li><li><p>流行元素:&nbsp;浅口 粗跟 罗马风格</p></li><li><p>闭合方式:&nbsp;一字式扣带</p></li><li><p>颜色分类:&nbsp;杏色 驼色</p></li><li><p>尺码:&nbsp;34 35 36 37 38 39</p></li><li><p>鞋制作工艺:&nbsp;胶粘鞋</p></li><li><p>图案:&nbsp;纯色</p></li></ul><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; text-align: center;\"><img src=\"https://img.alicdn.com/imgextra/i2/1604535035/TB2R26XXk7OyuJjSspbXXXZuXXa_!!1604535035.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; text-align: center;\"><img src=\"https://img.alicdn.com/imgextra/i4/1604535035/TB2mJuUwxlmpuFjSZPfXXc9iXXa_!!1604535035.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; text-align: center;\"><img src=\"https://img.alicdn.com/imgextra/i4/1604535035/TB2imRslH_0UKFjy1XaXXbKfXXa_!!1604535035.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/1604535035/TB2dFF1gZPRfKJjSZFOXXbKEVXa_!!1604535035.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i2/1604535035/TB2k12QAtRopuFjSZFtXXcanpXa_!!1604535035.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"989\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i1/1604535035/TB2SmaWAAqvpuFjSZFhXXaOgXXa_!!1604535035.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"1254\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i1/1604535035/TB2VLGkuthvOuFjSZFBXXcZgFXa_!!1604535035.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"1000\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/1604535035/TB2N3ayArBnpuFjSZFGXXX51pXa_!!1604535035.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"1014\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/></p><p><br/></p>', 'upload/goods_qrcode/goods_qrcode_385.png', '', 1, 0, 0, 0, 0, 0, '2017-07-21 09:43:19', '2017-07-21 09:43:19', NULL, 0, '1849,1850', '', NULL, NULL, 1, 32, '[]', 0.00, 0.00, 3, '', '', '', '', 0, NULL);
INSERT INTO `tp_goods` VALUES (386, 'GREFU/格莱富C141超薄笔记本电脑四核14.1寸游戏办公上网本WIFI', 1, 315, 315, 0, 0, 0, 1, '', 0, 0, 1, 0.00, 5999.00, 5999.00, 0.00, 0, 0, 0, 0, 0.00, 0, 1000, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1851, '', '', '<ul class=\"attributes-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>CC证书编号:&nbsp;<a href=\"https://baike.taobao.com/view.htm?wd=2016010902868746&ac=29\" target=\"blank\" style=\"text-decoration: none; color: rgb(51, 102, 204); outline: 0px;\">2016010902868746</a></p></li><li><p>厚度:&nbsp;10.0mm以下</p></li><li><p>屏幕类型:&nbsp;宽屏</p></li><li><p>是否PC平板二合一:&nbsp;否</p></li><li><p>机身重量（含电池）:&nbsp;1.38kg</p></li><li><p>版本类型:&nbsp;中国大陆</p></li><li><p>能效等级:&nbsp;一级</p></li><li><p>品牌:&nbsp;GREFU/格莱富</p></li><li><p>屏幕尺寸:&nbsp;14.1英寸</p></li><li><p>屏幕比例:&nbsp;16:9</p></li><li><p>CPU:&nbsp;英特尔 凌动 x5-Z8350</p></li><li><p>显卡类型:&nbsp;英特尔 HD Graphics (Bay Trail)</p></li><li><p>显存容量:&nbsp;共享内存容量</p></li><li><p>机械硬盘容量:&nbsp;无机械硬盘</p></li><li><p>固态硬盘:&nbsp;64G eMMC</p></li><li><p>内存容量:&nbsp;4G</p></li><li><p>光驱类型:&nbsp;无光驱</p></li><li><p>适用场景:&nbsp;移动工作站 家庭影音 女性定位 轻薄便携 学生 商务办公 高清游戏 尊贵旗舰 家庭娱乐</p></li><li><p>重量:&nbsp;1kg(含)-1.5kg(不含)</p></li><li><p>售后服务:&nbsp;店铺三包</p></li><li><p>颜色分类:&nbsp;羽毛白（2G+32G） 羽毛白（4G+64G）</p></li><li><p>上市时间:&nbsp;2016年8月</p></li><li><p>操作系统:&nbsp;windows 10</p></li><li><p>通信技术类型:&nbsp;无线网卡 蓝牙</p></li><li><p>输入设备:&nbsp;触摸板</p></li><li><p>套餐类型:&nbsp;官方标配</p></li><li><p>是否超极本:&nbsp;是</p></li><li><p>分辨率:&nbsp;1366x768</p></li><li><p>是否触摸屏:&nbsp;非触摸屏</p></li></ul><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><img src=\"https://img.alicdn.com/imgextra/i2/2921467918/TB23jN0tXXXXXbUXpXXXXXXXXXX_!!2921467918.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i1/2921467918/TB2YmIWiwRkpuFjy1zeXXc.6FXa_!!2921467918.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><img src=\"https://img.alicdn.com/imgextra/i3/2921467918/TB2qACUmq8lpuFjy0FpXXaGrpXa_!!2921467918.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/2921467918/TB2A6Wbmr0kpuFjy0FjXXcBbVXa_!!2921467918.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/2921467918/TB2362amCJjpuFjy0FdXXXmoFXa_!!2921467918.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"663\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i2/2921467918/TB2J3yhmxXkpuFjy0FiXXbUfFXa_!!2921467918.jpg_q90.jpg\" class=\"\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/2921467918/TB2_lGImB0kpuFjSsppXXcGTXXa_!!2921467918.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"1071\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i2/2921467918/TB24xl4mwNlpuFjy0FfXXX3CpXa_!!2921467918.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"874\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i2/2921467918/TB24KCwmwxlpuFjSszbXXcSVpXa_!!2921467918.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"1032\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/></p><p><br/></p>', 'upload/goods_qrcode/goods_qrcode_386.png', '', 1, 0, 0, 0, 0, 0, '2017-07-21 09:45:22', '2017-07-21 09:45:22', NULL, 0, '1851,1852', '', NULL, NULL, 0, 0, '[]', 0.00, 0.00, 3, '', '', '', '', 0, NULL);
INSERT INTO `tp_goods` VALUES (387, 'T-bao/天宝 R8 四核固态超极本超薄笔记本电脑15.6英寸分期包邮', 1, 315, 315, 0, 0, 0, 1, '', 0, 0, 1, 0.00, 4999.00, 4999.00, 0.00, 0, 0, 0, 0, 0.00, 0, 11000, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1853, '', '', '<ul class=\"attributes-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>CCC证书编号:&nbsp;<a href=\"https://baike.taobao.com/view.htm?wd=2017010902945753&ac=29\" target=\"blank\" style=\"text-decoration: none; color: rgb(51, 102, 204); outline: 0px;\">2017010902945753</a></p></li><li><p>厚度:&nbsp;10.0mm以下</p></li><li><p>机身重量（含电池）:&nbsp;1.87kg</p></li><li><p>版本类型:&nbsp;中国大陆</p></li><li><p>品牌:&nbsp;T-bao</p></li><li><p>屏幕尺寸:&nbsp;15.6英寸</p></li><li><p>屏幕比例:&nbsp;16:9</p></li><li><p>CPU:&nbsp;英特尔 凌动 x5-Z8350</p></li><li><p>显卡类型:&nbsp;英特尔 HD Graphics (Braswell)</p></li><li><p>显存容量:&nbsp;共享系统内存</p></li><li><p>机械硬盘容量:&nbsp;无机械硬盘</p></li><li><p>固态硬盘:&nbsp;64g</p></li><li><p>内存容量:&nbsp;4G</p></li><li><p>适用场景:&nbsp;移动工作站 家庭影音 女性定位 轻薄便携 学生 商务办公 高清游戏 家庭娱乐</p></li><li><p>售后服务:&nbsp;店铺三包</p></li><li><p>颜色分类:&nbsp;皓月白 宝蓝色</p></li><li><p>上市时间:&nbsp;2016年8月份</p></li><li><p>操作系统:&nbsp;windows 10</p></li><li><p>通信技术类型:&nbsp;无线网卡 蓝牙</p></li><li><p>套餐类型:&nbsp;官方标配</p></li><li><p>是否超极本:&nbsp;是</p></li><li><p>分辨率:&nbsp;1920x1080</p></li><li><p>是否触摸屏:&nbsp;非触摸屏</p></li></ul><table width=\"750\" height=\"370\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" background=\"https://img.alicdn.com/imgextra/i2/95723640/TB2yTc4ppXXXXcyXXXXXXXXXXXX-95723640.jpg\"><tbody><tr class=\"firstRow\"><td height=\"23\" colspan=\"5\" style=\"margin: 0px; padding: 0px;\"><br/></td></tr><tr><td width=\"14\" height=\"320\" style=\"margin: 0px; padding: 0px;\"><br/></td><td width=\"280\" valign=\"top\" style=\"margin: 0px; padding: 0px;\"><br/></td><td width=\"399\" valign=\"top\" style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;T-bao/天宝 Tbook 4 超薄14英…&nbsp;1599.00&nbsp;￥2000.008.0￥401.00&nbsp;1624&nbsp;&nbsp;</td><td width=\"17\" style=\"margin: 0px; padding: 0px;\"><br/></td><td width=\"17\" style=\"margin: 0px; padding: 0px;\"><br/></td></tr></tbody></table><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><img src=\"https://img.alicdn.com/imgextra/i2/888785548/TB2dmK6X3ojyKJjy0FaXXakspXa_!!888785548.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/888785548/TB2M8YjcbtlpuFjSspoXXbcDpXa_!!888785548.jpg\" class=\"\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/888785548/TB2RDCpawhJc1FjSZFDXXbvnFXa_!!888785548.jpg\" class=\"\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/888785548/TB2KSNdBC0mpuFjSZPiXXbssVXa_!!888785548.jpg\" class=\"\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/888785548/TB28L0ycmiK.eBjSZFsXXbxZpXa_!!888785548.jpg\" class=\"\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i2/888785548/TB23sNwcX5N.eBjSZFKXXX_QVXa_!!888785548.jpg\" class=\"\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i2/888785548/TB2ePxvcXOP.eBjSZFHXXXQnpXa_!!888785548.jpg\" class=\"\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/888785548/TB2nGJCcfSM.eBjSZFNXXbgYpXa_!!888785548.jpg\" class=\"\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/></p><p><br/></p>', 'upload/goods_qrcode/goods_qrcode_387.png', '', 1, 0, 0, 0, 0, 0, '2017-07-21 09:46:30', '2017-07-21 09:46:30', NULL, 0, '1853,1854', '', NULL, NULL, 0, 0, '[]', 0.00, 0.00, 3, '', '', '', '', 0, NULL);
INSERT INTO `tp_goods` VALUES (388, '神舟战神 T6-S5D1独显4G四核i5高清15.6英寸游戏本笔记本电脑正品', 1, 315, 315, 0, 0, 0, 1, '', 0, 0, 1, 0.00, 4700.00, 4700.00, 0.00, 0, 0, 0, 0, 0.00, 0, 999, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 1855, '', '', '<ul class=\"attributes-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>CCC证书编号:&nbsp;<a href=\"https://baike.taobao.com/view.htm?wd=2014010902694496&ac=29\" target=\"blank\" style=\"text-decoration: none; color: rgb(51, 102, 204); outline: 0px;\">2014010902694496</a></p></li><li><p>屏幕类型:&nbsp;FHD IPS LED背光显示屏</p></li><li><p>是否PC平板二合一:&nbsp;否</p></li><li><p>机身重量（含电池）:&nbsp;2.89kg</p></li><li><p>版本类型:&nbsp;中国大陆</p></li><li><p>能效等级:&nbsp;一级</p></li><li><p>品牌:&nbsp;Hasee/神舟</p></li><li><p>神舟系列型号:&nbsp;战神系列</p></li><li><p>型号:&nbsp;K650C-i7 D3</p></li><li><p>屏幕尺寸:&nbsp;15.6英寸</p></li><li><p>屏幕比例:&nbsp;16:9</p></li><li><p>CPU:&nbsp;英特尔 酷睿 i5-6440HQ</p></li><li><p>显卡类型:&nbsp;NVIDIA GeForce GTX960M</p></li><li><p>显存容量:&nbsp;4G</p></li><li><p>机械硬盘容量:&nbsp;1TB</p></li><li><p>固态硬盘:&nbsp;可定制</p></li><li><p>内存容量:&nbsp;8GB</p></li><li><p>光驱类型:&nbsp;无光驱</p></li><li><p>适用场景:&nbsp;家庭影音 轻薄便携 学生 商务办公 高清游戏 家庭娱乐</p></li><li><p>售后服务:&nbsp;全国联保</p></li><li><p>颜色分类:&nbsp;T6-S5D1（i5-6400） T6-S5D1（标配+128G固态）</p></li><li><p>上市时间:&nbsp;2016</p></li><li><p>操作系统:&nbsp;windows 10</p></li><li><p>通信技术类型:&nbsp;无线网卡</p></li><li><p>输入设备:&nbsp;触摸板</p></li><li><p>套餐类型:&nbsp;官方标配</p></li><li><p>是否超极本:&nbsp;否</p></li><li><p>分辨率:&nbsp;1920x1080</p></li><li><p>是否触摸屏:&nbsp;非触摸屏</p></li></ul><p><img src=\"https://img.alicdn.com/imgextra/i4/3002862063/TB2RZzcltBopuFjSZPcXXc9EpXa_!!3002862063.jpg\" alt=\"\" width=\"750\" height=\"999\" usemap=\"#dfdfdsfafewrewfsfwerf\" border=\"0\" style=\"border: 0px; vertical-align: middle;\"/><map name=\"dfdfdsfafewrewfsfwerf\"><area shape=\"rect\" coords=\"3,4,746,364\" href=\"https://item.taobao.com/item.htm?spm=a1z10.3-c-s.w4002-15787669131.181.bHC3pq&id=539829424991\"/><area shape=\"rect\" coords=\"9,379,231,642\" href=\"https://item.taobao.com/item.htm?spm=a1z10.3-c-s.w4002-15787669131.31.bHC3pq&id=545808502537\"/><area shape=\"rect\" coords=\"261,379,490,647\" href=\"https://item.taobao.com/item.htm?spm=a1z10.3-c-s.w4002-15787669131.81.bHC3pq&id=545173657668\"/><area shape=\"rect\" coords=\"516,379,735,641\" href=\"https://item.taobao.com/item.htm?spm=a1z10.3-c-s.w4002-15787669131.131.bHC3pq&id=547098338689\"/><area shape=\"rect\" coords=\"7,692,233,962\" href=\"https://item.taobao.com/item.htm?spm=a1z10.3-c-s.w4002-15787669131.231.bHC3pq&id=544912916925\"/><area shape=\"rect\" coords=\"260,692,489,962\" href=\"https://item.taobao.com/item.htm?spm=a1z10.3-c-s.w4002-15787669131.331.bHC3pq&id=546334390499\"/><area shape=\"rect\" coords=\"515,691,744,967\" href=\"https://item.taobao.com/item.htm?spm=a1z10.3-c-s.w4002-15787669131.581.bHC3pq&id=547184703839\"/></map></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><a href=\"https://item.taobao.com/item.htm?spm=a1z10.3-c.w4002-15204577568.359.RZzV61&id=541748021033\" target=\"_blank\" style=\"text-decoration: none; color: rgb(51, 102, 204); outline: 0px;\"><img src=\"https://img.alicdn.com/imgextra/i4/3002862063/TB2Gi2ybxtmpuFjSZFqXXbHFpXa_!!3002862063.jpg\" style=\"border: 0px; vertical-align: top;\"/></a><br/><a href=\"https://item.taobao.com/item.htm?spm=a1z10.3-c.w4002-15204577568.124.RZzV61&id=541736004575\" target=\"_blank\" style=\"text-decoration: none; color: rgb(51, 102, 204); outline: 0px;\"><img src=\"https://img.alicdn.com/imgextra/i3/3002862063/TB27gnLbxlmpuFjSZPfXXc9iXXa_!!3002862063.jpg\" style=\"border: 0px; vertical-align: top;\"/></a><br/><a href=\"https://item.taobao.com/item.htm?spm=a1z10.3-c.w4002-15204577568.218.RZzV61&id=539743901628\" target=\"_blank\" style=\"text-decoration: none; color: rgb(51, 102, 204); outline: 0px;\"><img src=\"https://img.alicdn.com/imgextra/i3/3002862063/TB2hpHJbtXnpuFjSZFoXXXLcpXa_!!3002862063.jpg\" style=\"border: 0px; vertical-align: top;\"/></a></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><img src=\"https://img.alicdn.com/imgextra/i1/3002862063/TB2c5OVexaK.eBjSZFwXXXjsFXa_!!3002862063.gif\" class=\"\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i2/3002862063/TB29ai3esCO.eBjSZFzXXaRiVXa_!!3002862063.jpg\" class=\"\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/3002862063/TB2NxL9XZoa61BjSspdXXajFVXa_!!3002862063.jpg\" class=\"\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><img src=\"https://img.alicdn.com/imgextra/i2/3002862063/TB2n_uTcKtTMeFjSZFOXXaTiVXa_!!3002862063.jpg\" class=\"\" alt=\" 未标题-2.jpg\" width=\"750\" height=\"300\" style=\"border: 0px; vertical-align: top;\"/></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><span style=\"font-size: 36px;\"><span style=\"font-family: &#39;microsoft yahei&#39;;\"><strong>神舟战神T6-S5D1参数配置（官方标配）：</strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><span style=\"font-size: 24px;\"><span style=\"font-family: &#39;microsoft yahei&#39;;\"><strong>cpu：酷睿i5-6400（桌面级处理器，主频2.7GHZ，动态加速&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><span style=\"font-size: 24px;\"><span style=\"font-family: &#39;microsoft yahei&#39;;\"><strong>3.3GHz，14nm工艺，6M缓存），</strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><span style=\"font-size: 24px;\"><span style=\"font-family: &#39;microsoft yahei&#39;;\"><strong>显卡：英伟达GTX960M 4G GDDR5 玩家级独显，</strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><span style=\"font-size: 24px;\"><span style=\"font-family: &#39;microsoft yahei&#39;;\"><strong>硬盘：1TB机械硬盘（需要加固态联系店家），</strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><span style=\"font-size: 24px;\"><span style=\"font-family: &#39;microsoft yahei&#39;;\"><strong>内存：8G DDR4 内存，</strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><span style=\"font-size: 24px;\"><span style=\"font-family: &#39;microsoft yahei&#39;;\"><strong>屏幕：15.6英寸1920*1080全高清屏幕。</strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><span style=\"font-size: 24px;\"><span style=\"font-family: &#39;microsoft yahei&#39;;\"><strong>全新未拆封，行货正品，山东总代理货源全国联保！</strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\">--------------------------------------------------------------------------------------------------------------------------------------------------------</p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\">&nbsp;</p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><span style=\"font-size: 36px;\"><span style=\"font-family: &#39;microsoft yahei&#39;;\"><strong>神舟战神T6-S5D1参数配置（荣耀版）：</strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><span style=\"font-size: 24px;\"><span style=\"font-family: &#39;microsoft yahei&#39;;\"><strong>cpu：酷睿i5-6400（桌面级处理器，主频2.7GHZ，动态加速&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><span style=\"font-size: 24px;\"><span style=\"font-family: &#39;microsoft yahei&#39;;\"><strong>3.3GHz，14nm工艺，6M缓存），</strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><span style=\"font-size: 24px;\"><span style=\"font-family: &#39;microsoft yahei&#39;;\"><strong>显卡：英伟达GTX960M 4G GDDR5 玩家级独显，</strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><span style=\"font-size: 24px;\"><span style=\"font-family: &#39;microsoft yahei&#39;;\"><strong>硬盘：120G固态硬盘+500G机械硬盘，</strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><span style=\"font-size: 24px;\"><span style=\"font-family: &#39;microsoft yahei&#39;;\"><strong>内存：8G DDR4 内存，</strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><span style=\"font-size: 24px;\"><span style=\"font-family: &#39;microsoft yahei&#39;;\"><strong>屏幕：15.6英寸1920*1080全高清屏幕。</strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><span style=\"font-size: 24px;\"><span style=\"font-family: &#39;microsoft yahei&#39;;\"><strong>全新未拆封，行货正品，山东总代理货源全国联保！</strong></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><img src=\"https://img.alicdn.com/imgextra/i3/3002862063/TB2oPvDXnAX61Bjy0FcXXaSlFXa_!!3002862063.jpg\" class=\"\" align=\"absmiddle\" width=\"748\" height=\"828\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i1/3002862063/TB2oI_CXhQa61Bjy0FhXXaalFXa_!!3002862063.jpg\" class=\"\" align=\"absmiddle\" width=\"748\" height=\"631\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/3002862063/TB2_wGXbbFlpuFjy0FgXXbRBVXa_!!3002862063.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"733\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/></p><p><br/></p>', 'upload/goods_qrcode/goods_qrcode_388.png', '', 1, 0, 0, 0, 0, 0, '2017-07-21 09:47:50', '2017-07-21 09:47:50', NULL, 0, '1855,1856', '', NULL, NULL, 1, 0, '[]', 0.00, 0.00, 3, '', '', '', '', 0, NULL);
INSERT INTO `tp_goods` VALUES (389, '小熊养生壶全自动加厚玻璃 多功能煮花茶壶正品官方煮茶器 养生杯', 42, 319, 317, 318, 319, 0, 1, '', 0, 0, 1, 0.00, 288.00, 288.00, 0.00, 0, 0, 0, 0, 0.00, 0, 1000, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1857, '', '', '<p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i2/2730531117/TB2FAElkrJmpuFjSZFwXXaE4VXa_!!2730531117.jpg\" style=\"border: 0px; vertical-align: top; float: none; margin: 0px;\"/><img usemap=\"#Map1\" src=\"https://img.alicdn.com/imgextra/i4/2730531117/TB2qOQDabBnpuFjSZFGXXX51pXa_!!2730531117.jpg\" style=\"border: 0px; vertical-align: top;\"/></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><img usemap=\"#Map2\" border=\"0\" src=\"https://img.alicdn.com/imgextra/i1/2730531117/TB2ra0IamBjpuFjSsplXXa5MVXa_!!2730531117.jpg\" style=\"border: 0px; vertical-align: top;\"/><map name=\"Map2\"><area shape=\"rect\" coords=\"12,647,375,872\" href=\"https://item.taobao.com/item.htm?spm=a1z10.1-c-s.w5003-15435154225.16.5UCzVd&id=538326187717&scene=taobao_shop\"/><area shape=\"rect\" coords=\"377,647,737,873\" href=\"https://item.taobao.com/item.htm?spm=a1z10.1-c-s.w5003-15435154225.17.5UCzVd&id=532016426337&scene=taobao_shop\"/><area shape=\"rect\" coords=\"12,873,372,1105\" href=\"https://item.taobao.com/item.htm?spm=a1z10.1-c-s.w5003-15435154225.18.5UCzVd&id=539014743268&scene=taobao_shop\"/><area shape=\"rect\" coords=\"377,875,739,1106\" href=\"https://item.taobao.com/item.htm?spm=a1z10.1-c-s.w5003-15435154225.27.5UCzVd&id=525271350941&scene=taobao_shop\"/></map></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; font-family: tahoma, arial, 宋体, sans-serif; font-size: 14px; line-height: 21px; white-space: normal; background-color: rgb(255, 255, 255);\"><img usemap=\"#Map3\" border=\"0\" src=\"https://img.alicdn.com/imgextra/i2/2730531117/TB2ChYHmYBmpuFjSZFAXXaQ0pXa_!!2730531117.jpg\" style=\"border: 0px; vertical-align: top;\"/><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i1/2730531117/TB2ZHLXxypnpuFjSZFIXXXh2VXa_!!2730531117.jpg\" class=\"\" width=\"750\" height=\"684\" style=\"border: 0px; vertical-align: top;\"/><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i2/2730531117/TB2dDrdxylnpuFjSZFgXXbi7FXa_!!2730531117.jpg\" class=\"\" width=\"750\" height=\"703\" style=\"border: 0px; vertical-align: top;\"/><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i1/2730531117/TB2pYPhxEhnpuFjSZFEXXX0PFXa_!!2730531117.jpg\" class=\"\" width=\"750\" height=\"1080\" style=\"border: 0px; vertical-align: top;\"/><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i2/2730531117/TB2tRrscRU4h1JjSZFLXXaFMpXa_!!2730531117.jpg\" class=\"\" width=\"750\" height=\"1037\" style=\"border: 0px; vertical-align: top;\"/><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i1/2730531117/TB2fn6dxylnpuFjSZFgXXbi7FXa_!!2730531117.jpg\" class=\"\" width=\"750\" height=\"760\" style=\"border: 0px; vertical-align: top;\"/><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i1/2730531117/TB27voHtChlpuFjSspkXXa1ApXa_!!2730531117.jpg\" class=\"\" width=\"750\" height=\"651\" style=\"border: 0px; vertical-align: top;\"/><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i1/2730531117/TB28p0OtR8lpuFjSspaXXXJKpXa_!!2730531117.jpg\" class=\"\" width=\"750\" height=\"611\" style=\"border: 0px; vertical-align: top;\"/></p><p><br/></p>', 'upload/goods_qrcode/goods_qrcode_389.png', '', 1, 0, 0, 0, 0, 0, '2017-07-21 09:50:05', '2017-07-21 09:50:05', NULL, 0, '1857,1858', '', NULL, NULL, 0, 0, '[]', 0.00, 0.00, 3, '', '', '', '', 0, NULL);
INSERT INTO `tp_goods` VALUES (390, '飞利浦空气炸锅HD9233家用智能无油多功能电炸锅大容量HD9627正品', 42, 319, 317, 318, 319, 0, 1, '', 0, 0, 1, 0.00, 266.00, 266.00, 0.00, 0, 0, 0, 0, 0.00, 0, 1000, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1859, '', '', '<ul class=\"attributes-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>CCC证书编号:&nbsp;<a href=\"https://baike.taobao.com/view.htm?wd=2013010712631704&ac=29\" target=\"blank\" style=\"text-decoration: none; color: rgb(51, 102, 204); outline: 0px;\">2013010712631704</a></p></li><li><p>产品名称:&nbsp;Philips/飞利浦 HD9233</p></li><li><p>品牌:&nbsp;Philips/飞利浦</p></li><li><p>型号:&nbsp;HD9233</p></li><li><p>采购地:&nbsp;中国大陆</p></li><li><p>颜色分类:&nbsp;HD9233白色</p></li><li><p>电炸锅类型:&nbsp;空气炸锅</p></li></ul><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><img src=\"https://img.alicdn.com/imgextra/i4/55859635/TB2TrPWA5pnpuFjSZFIXXXh2VXa_!!55859635.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/55859635/TB2ox0vXVgkyKJjSspoXXcOPpXa_!!55859635.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top;\"/><img src=\"https://img.alicdn.com/imgextra/i3/55859635/TB2ONuvugNlpuFjy0FfXXX3CpXa_!!55859635.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/55859635/TB2RO5Uul0kpuFjSsziXXa.oVXa_!!55859635.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i1/55859635/TB2B8bjugRkpuFjy1zeXXc.6FXa_!!55859635.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"688\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i2/55859635/TB2ks6AueJ8puFjy1XbXXagqVXa_!!55859635.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"1038\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i4/55859635/TB2Xua_ubFlpuFjy0FgXXbRBVXa_!!55859635.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"786\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i1/55859635/TB2HNeQXHXlpuFjy1zbXXb_qpXa_!!55859635.jpg\" class=\"\" alt=\" HD9233优化11_19.jpg\" width=\"750\" height=\"939\" style=\"border: 0px; vertical-align: top;\"/><img src=\"https://img.alicdn.com/imgextra/i3/55859635/TB2DZnVub8kpuFjy0FcXXaUhpXa_!!55859635.png\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"552\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/55859635/TB2_63OugxlpuFjy0FoXXa.lXXa_!!55859635.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"1288\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i1/55859635/TB2fv5Pul0lpuFjSszdXXcdxFXa_!!55859635.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"1010\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/55859635/TB21NGvugNlpuFjy0FfXXX3CpXa_!!55859635.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"981\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i2/55859635/TB27VOSubtlpuFjSspfXXXLUpXa_!!55859635.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"815\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i3/55859635/TB2TwgGmr_0UKFjy1XaXXbKfXXa_!!55859635.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"1359\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/></p><p><br/></p>', 'upload/goods_qrcode/goods_qrcode_390.png', '', 1, 0, 0, 0, 0, 0, '2017-07-21 09:51:09', '2017-07-21 09:51:09', NULL, 0, '1859,1860', '', NULL, NULL, 0, 0, '[]', 0.00, 0.00, 3, '', '', '', '', 0, NULL);
INSERT INTO `tp_goods` VALUES (391, '德国brita碧然德即热净水吧家用厨房自来水过滤壶电热直饮净水器', 42, 319, 317, 318, 319, 0, 1, '', 0, 0, 1, 0.00, 199.00, 199.00, 0.00, 0, 0, 0, 0, 0.00, 0, 2000, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1861, '', '', '<ul class=\"attributes-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p>产品名称:&nbsp;BRITA/碧然德 即热净水吧</p></li><li><p>净水器品牌:&nbsp;BRITA/碧然德</p></li><li><p>型号:&nbsp;即热净水吧</p></li><li><p>分类:&nbsp;净水壶 过滤水壶 净水杯 净水设备</p></li><li><p>智能类型:&nbsp;阿里小智</p></li><li><p>货号:&nbsp;BRD0032</p></li><li><p>颜色分类:&nbsp;即热净水吧（一机一芯）顺丰包邮 即热净水吧（一机一芯）圆通包邮</p></li><li><p>额定出水量:&nbsp;60L/h</p></li><li><p>工作原理:&nbsp;活性炭</p></li><li><p>滤芯:&nbsp;活性炭+超滤</p></li><li><p>使用位置:&nbsp;终端净水</p></li><li><p>功效:&nbsp;直饮</p></li></ul><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; text-align: center;\"><span style=\"font-size: 18px;\"><span style=\"color: rgb(255, 0, 0);\"></span></span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><span style=\"font-size: 24px;\">（可开正规机打发票，开票需联系客服，或订单留言发票抬头和税号）</span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; text-align: center;\"><span style=\"font-size: 18px; line-height: 1.5;\">&nbsp; &nbsp; &nbsp; &nbsp;备注：没有联系客服和未留言发票抬头默认不开票哦</span></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px; text-align: center;\"><strong><strong style=\"line-height: 1.5; color: rgb(0, 0, 255);\"><span style=\"font-size: 24px;\">净水吧凭发票和质保卡可享受碧然德官方一年免费质保</span></strong></strong></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><img src=\"https://img.alicdn.com/imgextra/i3/753957799/TB24pq3ct4opuFjSZFLXXX8mXXa-753957799.jpg\" alt=\" 750-500.jpg\" style=\"border: 0px; vertical-align: top;\"/></p><p><a href=\"https://item.taobao.com/item.htm?spm=a1z10.5-c-s.w4002-14464934839.27.qusgMV&id=543745667439\" target=\"_blank\" style=\"text-decoration: none; color: rgb(51, 102, 204); outline: 0px;\"><img src=\"https://img.alicdn.com/imgextra/i2/753957799/TB2LhIRgR0lpuFjSszdXXcdxFXa-753957799.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: middle;\"/></a><a href=\"https://item.taobao.com/item.htm?spm=a1z10.5-c-s.w4002-14464934839.39.qusgMV&id=543730750070\" target=\"_blank\" style=\"text-decoration: none; color: rgb(51, 102, 204); outline: 0px;\"><img src=\"https://img.alicdn.com/imgextra/i3/753957799/TB2MimKidFopuFjSZFHXXbSlXXa-753957799.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: middle;\"/></a><a href=\"https://item.taobao.com/item.htm?spm=2013.1.w5001-14464934798.2.n07e26&id=528384353675&scene=taobao_shop\" target=\"_blank\" style=\"text-decoration: none; color: rgb(51, 102, 204); outline: 0px;\"><img src=\"https://img.alicdn.com/imgextra/i1/753957799/TB2Aqe7ib4npuFjSZFmXXXl4FXa-753957799.jpg\" align=\"absmiddle\" style=\"border: 0px; vertical-align: middle;\"/><img src=\"https://img.alicdn.com/imgextra/i4/753957799/TB2c.oaxblmpuFjSZFlXXbdQXXa_!!753957799.jpg\" class=\"\" align=\"absmiddle\" width=\"375\" height=\"328\" style=\"border: 0px; vertical-align: middle;\"/></a><br/></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><img src=\"https://img.alicdn.com/imgextra/i3/753957799/TB2_wcOwbJkpuFjy1zcXXa5FFXa-753957799.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"683\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i2/753957799/TB2fP7DAItnpuFjSZFKXXalFFXa-753957799.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"908\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/></p><p style=\"margin-top: 1.12em; margin-bottom: 1.12em; padding: 0px;\"><img src=\"https://img.alicdn.com/imgextra/i2/753957799/TB2OyLvyCVmpuFjSZFFXXcZApXa_!!753957799.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"433\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i1/753957799/TB2UbkfystnpuFjSZFvXXbcTpXa_!!753957799.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"269\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i1/753957799/TB2ef.Rf9FjpuFjSspbXXXagVXa-753957799.jpg_q90.jpg\" class=\"\" style=\"border: 0px; vertical-align: top;\"/><br/><img src=\"https://img.alicdn.com/imgextra/i2/753957799/TB2UGY5yypnpuFjSZFIXXXh2VXa_!!753957799.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"250\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i1/753957799/TB2FtjsyAqvpuFjSZFhXXaOgXXa_!!753957799.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"738\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/><img src=\"https://img.alicdn.com/imgextra/i1/753957799/TB2wIGxeZPRfKJjSZFOXXbKEVXa_!!753957799.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"759\" style=\"border: 0px; vertical-align: top; max-width: 750px;\"/></p><p><a target=\"_blank\" href=\"https://purewaylife.taobao.com/category-402114160.htm?spm=a1z10.1-c.w5002-4731072012.3.bQuFzA&search=y&catName=%5B%B5%C2%5DBrita%B1%CC%C8%BB%B5%C2\" style=\"text-decoration: none; color: rgb(51, 102, 204); outline: 0px; text-align: center;\"></a></p><p><span style=\"line-height: 1.5;\"><img src=\"https://img.alicdn.com/imgextra/i2/753957799/TB2Zwoff3JkpuFjSszcXXXfsFXa-753957799.jpg\" class=\"\" align=\"absmiddle\" width=\"750\" height=\"536\" style=\"border: 0px; vertical-align: middle; max-width: 750px;\"/></span></p><p><br/></p>', 'upload/goods_qrcode/goods_qrcode_391.png', '', 1, 0, 0, 0, 0, 0, '2017-07-21 09:52:12', '2017-07-21 09:52:12', NULL, 0, '1861,1862', '', NULL, NULL, 0, 0, '[]', 0.00, 0.00, 3, '', '', '', '', 0, NULL);

-- ----------------------------
-- Table structure for tp_goods_attribute
-- ----------------------------
DROP TABLE IF EXISTS `tp_goods_attribute`;
CREATE TABLE `tp_goods_attribute`  (
  `attr_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `shop_id` int(11) NOT NULL DEFAULT 0 COMMENT '店铺ID',
  `attr_value_id` int(11) NOT NULL COMMENT '属性值id',
  `attr_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '属性值名称',
  `attr_value_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '属性值对应数据值',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `create_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`attr_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 AVG_ROW_LENGTH = 315 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品属性表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_goods_attribute
-- ----------------------------
INSERT INTO `tp_goods_attribute` VALUES (20, 383, 41, 93, '男女款式', '', 0, '2017-07-21 09:40:23');
INSERT INTO `tp_goods_attribute` VALUES (21, 383, 41, 87, '鞋跟高度', '8-10cm', 0, '2017-07-21 09:40:23');
INSERT INTO `tp_goods_attribute` VALUES (22, 383, 41, 104, '材质', '布鞋', 0, '2017-07-21 09:40:23');
INSERT INTO `tp_goods_attribute` VALUES (23, 383, 41, 96, '鞋头款式', '平头', 0, '2017-07-21 09:40:23');
INSERT INTO `tp_goods_attribute` VALUES (24, 383, 41, 96, '鞋头款式', '尖头', 0, '2017-07-21 09:40:23');
INSERT INTO `tp_goods_attribute` VALUES (25, 384, 41, 93, '男女款式', '', 0, '2017-07-21 09:42:00');
INSERT INTO `tp_goods_attribute` VALUES (26, 384, 41, 87, '鞋跟高度', '8-10cm', 0, '2017-07-21 09:42:00');
INSERT INTO `tp_goods_attribute` VALUES (27, 384, 41, 104, '材质', '皮鞋', 0, '2017-07-21 09:42:00');
INSERT INTO `tp_goods_attribute` VALUES (28, 384, 41, 96, '鞋头款式', '尖头', 0, '2017-07-21 09:42:00');
INSERT INTO `tp_goods_attribute` VALUES (29, 385, 41, 93, '男女款式', '', 0, '2017-07-21 09:43:19');
INSERT INTO `tp_goods_attribute` VALUES (30, 385, 41, 87, '鞋跟高度', '8-10cm', 0, '2017-07-21 09:43:19');
INSERT INTO `tp_goods_attribute` VALUES (31, 385, 41, 96, '鞋头款式', '尖头', 0, '2017-07-21 09:43:19');

-- ----------------------------
-- Table structure for tp_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `tp_goods_category`;
CREATE TABLE `tp_goods_category`  (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `short_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品分类简称 ',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '父级id',
  `level` tinyint(4) NOT NULL DEFAULT 0 COMMENT '分类等级',
  `is_visible` int(11) NULL DEFAULT 1 COMMENT '是否显示  1 显示 0 不显示',
  `attr_id` int(11) NOT NULL DEFAULT 0 COMMENT '关联商品类型ID',
  `attr_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关联类型名称',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '描述',
  `sort` int(11) NULL DEFAULT NULL,
  `category_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品分类图片',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 323 AVG_ROW_LENGTH = 244 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品分类表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_goods_category
-- ----------------------------
INSERT INTO `tp_goods_category` VALUES (311, '女装/男装/内衣', '女装', 0, 1, 1, 28, '衣服', '衣服', '', 12, 'upload/common/1500620933.jpg');
INSERT INTO `tp_goods_category` VALUES (312, '鞋靴/箱包/配件', '配饰', 0, 1, 1, 32, '鞋子', '鞋靴/箱包/配件', '', 55, 'upload/common/1500621005.jpg');
INSERT INTO `tp_goods_category` VALUES (313, '女装', '女装', 311, 2, 1, 28, '连衣裙', '女装', '', 0, '');
INSERT INTO `tp_goods_category` VALUES (314, '连衣裙', '连衣裙', 311, 2, 1, 28, '衣服', '连衣裙', '', 111, 'upload/goods_category/1497086116.jpg');
INSERT INTO `tp_goods_category` VALUES (315, '手机数码', '手机数码', 0, 1, 1, 30, '手机', '手机，数码，印象制品', '手机，数码，印象制品', 123, 'upload/common/1500620960.jpg');
INSERT INTO `tp_goods_category` VALUES (316, '迷你连衣裙', '连衣裙', 314, 3, 1, 28, '连衣裙', '外套', '外套', 0, '');
INSERT INTO `tp_goods_category` VALUES (317, '家用电器', '家用电器', 0, 1, 1, 0, '', '家用电器', '家用电器', 123, 'upload/common/1500620884.jpg');
INSERT INTO `tp_goods_category` VALUES (318, '小电器', '小电器', 317, 2, 1, 0, '', '小电器', '小电器', 1, '');
INSERT INTO `tp_goods_category` VALUES (319, '高压锅', '高压锅', 318, 3, 1, 0, '', '高压锅', '高压锅', 1, '');
INSERT INTO `tp_goods_category` VALUES (320, '蕾丝短袖', '短袖', 313, 3, 1, 28, '衣服', '', '', 0, '');
INSERT INTO `tp_goods_category` VALUES (322, '针织短袖', '短袖', 313, 3, 1, 28, '衣服', '短袖', '1111', 2, '');

-- ----------------------------
-- Table structure for tp_goods_group
-- ----------------------------
DROP TABLE IF EXISTS `tp_goods_group`;
CREATE TABLE `tp_goods_group`  (
  `group_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL COMMENT '店铺ID',
  `group_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '上级id 最多2级',
  `level` tinyint(4) NOT NULL DEFAULT 0 COMMENT '级别',
  `is_visible` int(1) NOT NULL DEFAULT 1 COMMENT '是否可视',
  `group_pic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `sort` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 AVG_ROW_LENGTH = 160 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品分组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_goods_group
-- ----------------------------
INSERT INTO `tp_goods_group` VALUES (107, 0, ' 女装', 0, 1, 1, '', 0);
INSERT INTO `tp_goods_group` VALUES (108, 0, '连衣裙', 107, 2, 1, '', 0);
INSERT INTO `tp_goods_group` VALUES (109, 0, '男装', 0, 1, 1, '', 0);
INSERT INTO `tp_goods_group` VALUES (110, 0, '手机', 0, 1, 1, '', 1);
INSERT INTO `tp_goods_group` VALUES (111, 0, '分组添加测试', 0, 1, 1, '', 3);

-- ----------------------------
-- Table structure for tp_goods_sku
-- ----------------------------
DROP TABLE IF EXISTS `tp_goods_sku`;
CREATE TABLE `tp_goods_sku`  (
  `sku_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表序号',
  `goods_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品编号',
  `sku_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'SKU名称',
  `attr_value_items` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '属性和属性值 id串 attribute + attribute value 表ID分号分隔',
  `attr_value_items_format` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '属性和属性值id串组合json格式',
  `market_price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '市场价',
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '价格',
  `promote_price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '促销价格',
  `cost_price` decimal(19, 2) NOT NULL DEFAULT 0.00 COMMENT '成本价',
  `stock` int(11) NOT NULL DEFAULT 0 COMMENT '库存',
  `picture` int(11) NOT NULL DEFAULT 0 COMMENT '如果是第一个sku编码, 可以加图片',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商家编码',
  `QRcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品二维码',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`sku_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1491 AVG_ROW_LENGTH = 481 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品skui规格价格库存信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_goods_sku
-- ----------------------------
INSERT INTO `tp_goods_sku` VALUES (1482, 383, '', '', '', 0.00, 345.00, 345.00, 0.00, 1000, 0, '', '', '2017-07-21 09:40:23', NULL);
INSERT INTO `tp_goods_sku` VALUES (1483, 384, '', '', '', 0.00, 269.00, 269.00, 0.00, 1000, 0, '', '', '2017-07-21 09:42:00', NULL);
INSERT INTO `tp_goods_sku` VALUES (1484, 385, '', '', '', 0.00, 269.00, 269.00, 0.00, 1000, 0, '', '', '2017-07-21 09:43:19', NULL);
INSERT INTO `tp_goods_sku` VALUES (1485, 386, '', '', '', 0.00, 5999.00, 5999.00, 0.00, 1000, 0, '', '', '2017-07-21 09:45:22', NULL);
INSERT INTO `tp_goods_sku` VALUES (1486, 387, '', '', '', 0.00, 4999.00, 4999.00, 0.00, 11000, 0, '', '', '2017-07-21 09:46:30', NULL);
INSERT INTO `tp_goods_sku` VALUES (1487, 388, '', '', '', 0.00, 4700.00, 4700.00, 0.00, 999, 0, '', '', '2017-07-21 09:47:50', NULL);
INSERT INTO `tp_goods_sku` VALUES (1488, 389, '', '', '', 0.00, 288.00, 288.00, 0.00, 1000, 0, '', '', '2017-07-21 09:50:05', NULL);
INSERT INTO `tp_goods_sku` VALUES (1489, 390, '', '', '', 0.00, 266.00, 266.00, 0.00, 1000, 0, '', '', '2017-07-21 09:51:09', NULL);
INSERT INTO `tp_goods_sku` VALUES (1490, 391, '', '', '', 0.00, 199.00, 199.00, 0.00, 2000, 0, '', '', '2017-07-21 09:52:12', NULL);

-- ----------------------------
-- Table structure for tp_order
-- ----------------------------
DROP TABLE IF EXISTS `tp_order`;
CREATE TABLE `tp_order`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '订单编号',
  `out_trade_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '外部交易号',
  `order_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '订单类型',
  `payment_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '支付类型。取值范围：\n\nWEIXIN (微信自有支付)\n\nWEIXIN_DAIXIAO (微信代销支付)\n\nALIPAY (支付宝支付)',
  `shipping_type` tinyint(4) NULL DEFAULT 1 COMMENT '订单配送方式',
  `shipping_company_id` int(11) NOT NULL DEFAULT 0 COMMENT '配送物流公司ID',
  `order_from` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单来源',
  `buyer_id` int(11) NOT NULL COMMENT '买家id',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '买家会员名称',
  `pay_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '订单付款时间',
  `buyer_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '买家ip',
  `buyer_message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '买家附言',
  `buyer_invoice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '买家发票信息',
  `shipping_time` datetime(0) NOT NULL COMMENT '买家要求配送时间',
  `sign_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '买家签收时间',
  `receiver_mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人的手机号码',
  `receiver_province` int(11) NOT NULL COMMENT '收货人所在省',
  `receiver_city` int(11) NOT NULL COMMENT '收货人所在城市',
  `receiver_district` int(11) NOT NULL COMMENT '收货人所在街道',
  `receiver_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人详细地址',
  `receiver_zip` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人邮编',
  `receiver_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `shop_id` int(11) NOT NULL COMMENT '卖家店铺id',
  `shop_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '卖家店铺名称',
  `seller_star` tinyint(4) NOT NULL DEFAULT 0 COMMENT '卖家对订单的标注星标',
  `seller_memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '卖家对订单的备注',
  `consign_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '卖家发货时间',
  `consign_time_adjust` int(11) NOT NULL DEFAULT 0 COMMENT '卖家延迟发货时间',
  `goods_money` decimal(19, 2) NOT NULL COMMENT '商品总价',
  `tax_money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '税费',
  `order_money` decimal(10, 2) NOT NULL COMMENT '订单总价',
  `point` int(11) NOT NULL COMMENT '订单消耗积分',
  `point_money` decimal(10, 2) NOT NULL COMMENT '订单消耗积分抵多少钱',
  `coupon_money` decimal(10, 2) NOT NULL COMMENT '订单代金券支付金额',
  `coupon_id` int(11) NOT NULL COMMENT '订单代金券id',
  `user_money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '订单余额支付金额',
  `user_platform_money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '用户平台余额支付',
  `promotion_money` decimal(10, 2) NOT NULL COMMENT '订单优惠活动金额',
  `shipping_money` decimal(10, 2) NOT NULL COMMENT '订单运费',
  `pay_money` decimal(10, 2) NOT NULL COMMENT '订单实付金额',
  `refund_money` decimal(10, 2) NOT NULL COMMENT '订单退款金额',
  `coin_money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '购物币金额',
  `give_point` int(11) NOT NULL COMMENT '订单赠送积分',
  `give_coin` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '订单成功之后返购物币',
  `order_status` tinyint(4) NOT NULL COMMENT '订单状态',
  `pay_status` tinyint(4) NOT NULL COMMENT '订单付款状态',
  `shipping_status` tinyint(4) NOT NULL COMMENT '订单配送状态',
  `review_status` tinyint(4) NOT NULL COMMENT '订单评价状态',
  `feedback_status` tinyint(4) NOT NULL COMMENT '订单维权状态',
  `is_evaluate` smallint(6) NOT NULL DEFAULT 0 COMMENT '是否评价 0为未评价 1为已评价 2为已追评',
  `create_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '订单创建时间',
  `finish_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '订单完成时间',
  `give_point_type` int(11) NOT NULL DEFAULT 1 COMMENT '积分返还类型 1 订单完成  2 订单收货 3  支付订单',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 AVG_ROW_LENGTH = 440 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_order
-- ----------------------------
INSERT INTO `tp_order` VALUES (1, '20170721171923000000001', '1500628762493', 1, 0, 1, 7407, '3', 305, 'lg', '0000-00-00 00:00:00', '1', '', '', '2017-07-21 17:19:22', '0000-00-00 00:00:00', '13754927904', 26, 283, 2462, '你找不到', '', '马越', 41, '乔丹旗舰店', 0, '', '0000-00-00 00:00:00', 0, 215.20, 0.00, 215.20, 0, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 215.20, 0.00, 0.00, 0, 0.00, 5, 0, 0, 0, 0, 0, '2017-07-21 17:19:23', '0000-00-00 00:00:00', 0);
INSERT INTO `tp_order` VALUES (2, '20170721172001000000001', '1500628855690', 1, 10, 1, 7408, '3', 305, 'lg', '2017-07-21 17:20:55', '1', '', '', '2017-07-21 17:20:01', '2017-07-21 17:21:47', '13754927904', 26, 283, 2462, '你找不到', '', '马越', 1, '海尔加盟店', 0, '', '2017-07-21 17:21:35', 0, 3760.00, 0.00, 3760.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 3760.00, 0.00, 0.00, 0, 0.00, 4, 2, 2, 0, 0, 0, '2017-07-21 17:20:01', '2017-08-26 17:03:46', 0);
INSERT INTO `tp_order` VALUES (3, '20180614164506000000001', '152896590620681000', 1, 0, 1, 7407, '3', 305, 'admin', '0000-00-00 00:00:00', '1', '', '', '2018-06-14 16:45:06', '0000-00-00 00:00:00', '13212341234', 19, 208, 1827, '11', '', '1', 41, '乔丹旗舰店', 0, '', '0000-00-00 00:00:00', 0, 345.00, 0.00, 345.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 345.00, 0.00, 0.00, 0, 0.00, 5, 0, 0, 0, 0, 0, '2018-06-14 16:45:06', '0000-00-00 00:00:00', 0);
INSERT INTO `tp_order` VALUES (4, '20180614164553000000002', '152896595238581000', 1, 4, 1, 7407, '3', 305, 'admin', '2018-06-14 16:45:53', '1', '', '', '2018-06-14 16:45:52', '0000-00-00 00:00:00', '13212341234', 19, 208, 1827, '11', '', '1', 41, '乔丹旗舰店', 0, '', '0000-00-00 00:00:00', 0, 345.00, 0.00, 345.00, 0, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0.00, 345.00, 0.00, 0.00, 0, 0.00, 1, 2, 0, 0, 0, 0, '2018-06-14 16:45:53', '0000-00-00 00:00:00', 0);

-- ----------------------------
-- Table structure for tp_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `tp_order_goods`;
CREATE TABLE `tp_order_goods`  (
  `order_goods_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单项ID',
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `sku_id` int(11) NOT NULL COMMENT 'skuID',
  `sku_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'sku名称',
  `price` decimal(19, 2) NOT NULL DEFAULT 0.00 COMMENT '商品价格',
  `cost_price` decimal(19, 2) NOT NULL DEFAULT 0.00 COMMENT '商品成本价',
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '购买数量',
  `adjust_money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '调整金额',
  `goods_money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '商品总价',
  `goods_picture` int(11) NOT NULL DEFAULT 0 COMMENT '商品图片',
  `shop_id` int(11) NOT NULL DEFAULT 1 COMMENT '店铺ID',
  `buyer_id` int(11) NOT NULL DEFAULT 0 COMMENT '购买人ID',
  `point_exchange_type` int(11) NOT NULL DEFAULT 0 COMMENT '积分兑换类型0.非积分兑换1.积分兑换',
  `goods_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '商品类型',
  `promotion_id` int(11) NOT NULL DEFAULT 0 COMMENT '促销ID',
  `promotion_type_id` int(11) NOT NULL DEFAULT 0 COMMENT '促销类型',
  `order_type` int(11) NOT NULL DEFAULT 1 COMMENT '订单类型',
  `order_status` int(11) NOT NULL DEFAULT 0 COMMENT '订单状态',
  `give_point` int(11) NOT NULL DEFAULT 0 COMMENT '积分数量',
  `shipping_status` int(11) NOT NULL DEFAULT 0 COMMENT '物流状态',
  `refund_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '退款时间',
  `refund_type` int(11) NOT NULL DEFAULT 1 COMMENT '退款方式',
  `refund_require_money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '退款金额',
  `refund_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '退款原因',
  `refund_shipping_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '退款物流单号',
  `refund_shipping_company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '退款物流公司名称',
  `refund_real_money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '实际退款金额',
  `refund_status` int(1) NOT NULL DEFAULT 0 COMMENT '退款状态',
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `is_evaluate` smallint(6) NOT NULL DEFAULT 0 COMMENT '是否评价 0为未评价 1为已评价 2为已追评',
  PRIMARY KEY (`order_goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 AVG_ROW_LENGTH = 289 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单商品表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_order_goods
-- ----------------------------
INSERT INTO `tp_order_goods` VALUES (1, 1, 385, '春季包头中粗跟尖头浅口单鞋女夏2017新款百搭韩版侧空低跟单鞋子', 1484, '', 215.20, 0.00, '1', 0.00, 215.20, 1849, 1, 63, 0, '1', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 0.00, '', '', '0', 0.00, 0, '', 0);
INSERT INTO `tp_order_goods` VALUES (2, 2, 388, '神舟战神 T6-S5D1独显4G四核i5高清15.6英寸游戏本笔记本电脑正品', 1487, '', 3760.00, 0.00, '1', 0.00, 3760.00, 1855, 1, 63, 0, '1', 0, 0, 1, 0, 0, 1, '0000-00-00 00:00:00', 1, 0.00, '', '', '0', 0.00, 0, '', 0);

-- ----------------------------
-- Table structure for tp_promotion_discount
-- ----------------------------
DROP TABLE IF EXISTS `tp_promotion_discount`;
CREATE TABLE `tp_promotion_discount`  (
  `discount_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` int(11) NOT NULL DEFAULT 1 COMMENT '店铺ID',
  `shop_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '店铺名称',
  `discount_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '活动名称',
  `start_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '开始时间',
  `end_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束时间',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '活动状态(0-未发布/1-正常/3-关闭/4-结束)',
  `create_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modify_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备注',
  `examine_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '审核状态(0-待审核/1-审核通过/2-审核拒绝)',
  PRIMARY KEY (`discount_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 AVG_ROW_LENGTH = 4096 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '限时折扣' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tp_promotion_mansong
-- ----------------------------
DROP TABLE IF EXISTS `tp_promotion_mansong`;
CREATE TABLE `tp_promotion_mansong`  (
  `mansong_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '满送活动编号',
  `mansong_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '活动名称',
  `start_time` datetime(0) NOT NULL COMMENT '活动开始时间',
  `end_time` datetime(0) NOT NULL COMMENT '活动结束时间',
  `shop_id` int(10) UNSIGNED NOT NULL COMMENT '店铺编号',
  `shop_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '店铺名称',
  `status` tinyint(1) UNSIGNED NOT NULL COMMENT '活动状态(0-未发布/1-正常/3-关闭/4-结束)',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备注',
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1.普通优惠  2.多级优惠',
  `range_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1全部商品 0部分商品',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `modify_time` datetime(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `examine_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '审核状态(0-待审核/1-审核通过/2-审核拒绝)',
  PRIMARY KEY (`mansong_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 AVG_ROW_LENGTH = 1638 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '满减送活动表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tp_promotion_mansong
-- ----------------------------
INSERT INTO `tp_promotion_mansong` VALUES (1, 'aaaa', '2017-07-22 11:48:51', '2017-07-31 11:48:54', 42, '苏泊尔家电', 4, '', 1, 1, '2017-07-21 11:49:23', '0000-00-00 00:00:00', 0);

-- ----------------------------
-- Table structure for tp_province
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
