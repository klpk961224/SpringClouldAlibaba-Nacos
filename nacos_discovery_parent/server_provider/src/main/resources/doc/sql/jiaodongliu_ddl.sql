-- 基础表
DROP TABLE IF EXISTS `demo`.`tenant_entity`;
CREATE TABLE `tenant_entity` (
  `id` bigint(64) NOT NULL COMMENT ''主键id'',
  `create_user` bigint(64) DEFAULT NULL COMMENT ''创建人id'',
  `create_time` datetime DEFAULT NULL COMMENT ''创建时间'',
  `update_user` bigint(64) DEFAULT NULL COMMENT ''更新人id'',
  `update_time` datetime DEFAULT NULL COMMENT ''更新时间'',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT ''逻辑删除 0正常 1删除'',
  `remark` varchar(255) DEFAULT NULL COMMENT ''操作备注'',
  `tenant_id` bigint(64) DEFAULT NULL COMMENT ''租户id'',
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=''机构基础样例表'';
-- 人员表
DROP TABLE IF EXISTS `demo`.`sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(64) NOT NULL COMMENT ''主键id'',
  `create_user` bigint(64) DEFAULT NULL COMMENT ''创建人id'',
  `create_time` datetime DEFAULT NULL COMMENT ''创建时间'',
  `update_user` bigint(64) DEFAULT NULL COMMENT ''更新人id'',
  `update_time` datetime DEFAULT NULL COMMENT ''更新时间'',
  `del_flag` tinyint(1) DEFAULT NULL COMMENT ''逻辑删除 0正常 1删除'',
  `remark` varchar(255) DEFAULT NULL COMMENT ''操作备注'',
  `tenant_id` bigint(64) DEFAULT NULL COMMENT ''租户id'',
  `name` varchar(255) DEFAULT NULL COMMENT ''姓名'',
  `id_card` varchar(50) DEFAULT NULL COMMENT ''身份证'',
  `sex` int(1) DEFAULT NULL COMMENT ''性别'',
  `phone` varchar(50) DEFAULT NULL COMMENT ''电话'',
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=''系统人员表'';