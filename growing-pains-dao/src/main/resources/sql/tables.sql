CREATE SCHEMA `blog` DEFAULT CHARACTER SET utf8mb4;

use blog;

CREATE TABLE `admin_user` (
    `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增长主键id',
    `user_name` VARCHAR(50) NOT NULL COMMENT '用户名',
    `password` VARCHAR(50) NOT NULL COMMENT '用户密码',
    `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
    PRIMARY KEY (`id`),
    UNIQUE KEY `unique_idx_user_name` (`user_name`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COMMENT='用户表';

CREATE TABLE `blog_content` (
    `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增长主键id',
    `title` VARCHAR(100) NOT NULL DEFAULT '' COMMENT '博文标题',
    `content` TEXT(50000) NOT NULL COMMENT '博文内容',
    `user_id` INT(11) NOT NULL COMMENT '博客所属用户id',
    `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
    PRIMARY KEY (`id`),
    KEY `idx_user_id` (`user_id`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COMMENT='博客博文表';

CREATE TABLE `blog_tag` (
    `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增长主键id',
    `name` VARCHAR(100) NOT NULL DEFAULT '' COMMENT '标签内容',
    `desc` VARCHAR(200) NOT NULL DEFAULT '' COMMENT '标签描述',
    `user_id` INT(11) NOT NULL COMMENT '标签所属用户id',
    `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
    PRIMARY KEY (`id`),
    KEY `idx_user_id` (`user_id`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COMMENT='博客标签表';

CREATE TABLE `blog_content_tag` (
    `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增长主键id',
    `blog_tag_id` INT(11) NOT NULL COMMENT '博客标签id',
    `blog_content_id` INT(11) NOT NULL COMMENT '博客博文id',
    `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (`id`),
    KEY `idx_blog_tag_id` (`blog_tag_id`),
    KEY `idx_blog_content_id` (`blog_content_id`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COMMENT='博客博文标签关系表';

CREATE TABLE `blog_comment` (
    `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增长主键id',
    `content` VARCHAR(1000) NOT NULL DEFAULT '' COMMENT '评论内容',
    `user_name` VARCHAR(50) NOT NULL DEFAULT '' COMMENT '评论人',
    `blog_content_id` INT(11) NOT NULL COMMENT '博客博文id',
    `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (`id`),
    KEY `idx_blog_content_id` (`blog_content_id`),
    KEY `idx_user_name` (`user_name`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COMMENT='博客评论表';