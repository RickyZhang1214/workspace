
-- Table structure for sc_landscaping_type
-- ----------------------------
DROP TABLE IF EXISTS `sc_landscaping_type`;
CREATE TABLE `sc_landscaping_type`  (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '绿化类型编号',
  `type_code_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号描述',
  `type_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型图标',
  `longitude` double(11, 7) NULL DEFAULT NULL COMMENT '经度',
  `latitude` double(11, 7) NULL DEFAULT NULL COMMENT '纬度',
  `section_id` int(11) NULL DEFAULT NULL COMMENT '作业单位',
  `curing_objectid` int(11) NULL DEFAULT NULL COMMENT '路段标识',
  `ext01` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  `ext02` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 579 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '绿化类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sc_landscaping_type_log
-- ----------------------------
DROP TABLE IF EXISTS `sc_landscaping_type_log`;
CREATE TABLE `sc_landscaping_type_log`  (
  `work_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NULL DEFAULT NULL COMMENT '绿化类型id',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位置',
  `work_length` double NULL DEFAULT NULL COMMENT '作业长度',
  `work_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业内容',
  `work_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业类型',
  `work_date` datetime(0) NULL DEFAULT NULL COMMENT '作业时间',
  `work_id` int(11) NULL DEFAULT NULL COMMENT '作业单位',
  `ext01` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  `ext02` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  PRIMARY KEY (`work_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1001 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '绿化类型工作日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sc_landscaping_type_logBak
-- ----------------------------
DROP TABLE IF EXISTS `sc_landscaping_type_logBak`;
CREATE TABLE `sc_landscaping_type_logBak`  (
  `work_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NULL DEFAULT NULL COMMENT '绿化类型id',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '位置',
  `work_length` double NULL DEFAULT NULL COMMENT '作业长度',
  `work_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业内容',
  `work_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作业类型',
  `work_date` datetime(0) NULL DEFAULT NULL COMMENT '作业时间',
  `work_id` int(11) NULL DEFAULT NULL COMMENT '作业单位',
  `ext01` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  `ext02` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  PRIMARY KEY (`work_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3024 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '绿化类型工作日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sc_landscaping_typeBak
-- ----------------------------
DROP TABLE IF EXISTS `sc_landscaping_typeBak`;
CREATE TABLE `sc_landscaping_typeBak`  (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '绿化类型编号',
  `type_code_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号描述',
  `type_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型图标',
  `longitude` double(11, 7) NULL DEFAULT NULL COMMENT '经度',
  `latitude` double(11, 7) NULL DEFAULT NULL COMMENT '纬度',
  `section_id` int(11) NULL DEFAULT NULL COMMENT '作业单位',
  `curing_objectid` int(11) NULL DEFAULT NULL COMMENT '路段标识',
  `ext01` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  `ext02` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 579 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '绿化类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sc_landscaping_work_car_num_daily
-- ----------------------------
DROP TABLE IF EXISTS `sc_landscaping_work_car_num_daily`;
CREATE TABLE `sc_landscaping_work_car_num_daily`  (
  `table_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NULL DEFAULT NULL,
  `section_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `water_car_num` int(11) NULL DEFAULT NULL,
  `water_work_num` int(11) NULL DEFAULT NULL,
  `patrol_car_num` int(11) NULL DEFAULT NULL,
  `patrol_work_num` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `ext01` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ext02` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 729 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sc_landscaping_work_unit
-- ----------------------------
DROP TABLE IF EXISTS `sc_landscaping_work_unit`;
CREATE TABLE `sc_landscaping_work_unit`  (
  `work_id` int(11) NOT NULL AUTO_INCREMENT,
  `work_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作单位名称',
  `work_area` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '工作单位区域',
  `watering_car` int(11) NULL DEFAULT NULL COMMENT '洒水车个数',
  `patrol_car` int(11) NULL DEFAULT NULL COMMENT '巡逻车个数',
  `row_tree` int(11) NULL DEFAULT NULL COMMENT '行树个数',
  `park_num` int(11) NULL DEFAULT NULL COMMENT '公园个数',
  `protection_forest` int(11) NULL DEFAULT NULL COMMENT '防护林个数',
  `green_belt` int(11) NULL DEFAULT NULL COMMENT '绿化带',
  `greenland_area` double(11, 2) NULL DEFAULT NULL COMMENT '绿地面积',
  `createtime` date NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` date NULL DEFAULT NULL COMMENT '更新时间',
  `ext01` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  `ext02` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  PRIMARY KEY (`work_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '绿化作业单位表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sc_landscapting_data
-- ----------------------------
DROP TABLE IF EXISTS `sc_landscapting_data`;
CREATE TABLE `sc_landscapting_data`  (
  `data_id` int(11) NOT NULL AUTO_INCREMENT,
  `work_id` int(11) NULL DEFAULT NULL COMMENT '作业单位',
  `work_quality` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '养护质量',
  `deduction_attendance` int(3) NULL DEFAULT NULL COMMENT '考勤扣分',
  `deduction_workcar` int(3) NULL DEFAULT NULL COMMENT '车辆作业扣分',
  `deduction_artificial` int(3) NULL DEFAULT NULL COMMENT '人工扣分',
  `deduction_deal_case` int(3) NULL DEFAULT NULL COMMENT '处理案件扣分',
  `deduction_work_log` int(3) NULL DEFAULT NULL COMMENT '日志扣分',
  `score` int(3) NULL DEFAULT NULL COMMENT '得分',
  `work_car_num` int(3) NULL DEFAULT NULL COMMENT '车辆作业次数',
  `case_num` int(3) NULL DEFAULT NULL COMMENT '案件发生次数',
  `work_artificial_num` int(3) NULL DEFAULT NULL COMMENT '人工作业次数',
  `create_time` date NULL DEFAULT NULL COMMENT '创建日期',
  `ext01` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  `ext02` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  PRIMARY KEY (`data_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2455 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '绿化大数据分析表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sc_landscapting_waters_log
-- ----------------------------
DROP TABLE IF EXISTS `sc_landscapting_waters_log`;
CREATE TABLE `sc_landscapting_waters_log`  (
  `station_id` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_id` int(11) NULL DEFAULT NULL COMMENT '传感器id',
  `license` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车牌号',
  `water` double(6, 2) NULL DEFAULT NULL COMMENT '水量',
  `acquisition_time` datetime(0) NULL DEFAULT NULL COMMENT '采集时间',
  `ext01` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  `ext02` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  PRIMARY KEY (`station_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19954 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '绿化水站传感器日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sc_landscapting_waters_log_bak
-- ----------------------------
DROP TABLE IF EXISTS `sc_landscapting_waters_log_bak`;
CREATE TABLE `sc_landscapting_waters_log_bak`  (
  `station_id` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_id` int(11) NULL DEFAULT NULL COMMENT '传感器id',
  `license` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车牌号',
  `water` double(6, 2) NULL DEFAULT NULL COMMENT '水量',
  `acquisition_time` datetime(0) NULL DEFAULT NULL COMMENT '采集时间',
  `ext01` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  `ext02` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  PRIMARY KEY (`station_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2344 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '绿化水站传感器日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sc_landscapting_ws_log
-- ----------------------------
DROP TABLE IF EXISTS `sc_landscapting_ws_log`;
CREATE TABLE `sc_landscapting_ws_log`  (
  `ws_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `sensor_id` int(11) NULL DEFAULT NULL COMMENT '传感器id',
  `acquisition_time` datetime(0) NULL DEFAULT NULL COMMENT '采集时间',
  `salt` double(5, 2) NULL DEFAULT NULL COMMENT '含盐量',
  `salt_flag` int(2) NULL DEFAULT NULL COMMENT '含盐量状态--0：正常  1：过低  2：过高',
  `water` int(5) NULL DEFAULT NULL COMMENT '含水量',
  `water_flag` int(2) NULL DEFAULT NULL COMMENT '含水量状态 0：正常  1：过低  2：过高',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ext01` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  `ext02` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拓展字段',
  PRIMARY KEY (`ws_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '绿化水盐传感器记录表' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
