DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
	`user_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '유저 ID',
	`username` VARCHAR(255) NOT NULL COMMENT '유저명',
	`email` VARCHAR(255) NOT NULL COMMENT '이메일',
	`password` VARCHAR(255) NOT NULL COMMENT '비밀번호',
	`status` VARCHAR(10) NOT NULL DEFAULT 'ACTIVE' COMMENT '사용자 상태 (정상, 휴먼, 정지, 탈퇴)',
	`rcnt_lgn_at` DATETIME NULL COMMENT '최근 접속일시',
	`pwd_fail_cnt` INT(2) NOT NULL DEFAULT 0 COMMENT '비밀번호 실패 횟수',
	`created_by` BIGINT NULL COMMENT '생성자 ID',
	`created_at` DATETIME NULL DEFAULT NOW() COMMENT '생성일시',
	`modified_by` BIGINT NULL COMMENT '수정자 ID',
	`modified_at` DATETIME NULL DEFAULT NOW() COMMENT '수정일시',
	PRIMARY KEY (`user_id`)
);

DROP TABLE IF EXISTS `artwork`;

CREATE TABLE `artwork` (
	`artwork_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '작품 ID',
	`title` VARCHAR(255) NOT NULL COMMENT '제목',
	`description` TEXT NOT NULL COMMENT '설명',
	`category` VARCHAR(10) NOT NULL COMMENT '카테고리',
	`view_cnt` BIGINT NOT NULL DEFAULT 0 COMMENT '조회수',
	`view_yn` VARCHAR(2) NOT NULL DEFAULT 'Y' COMMENT '공개 여부',
	`created_by` BIGINT NULL COMMENT '생성자 ID',
	`created_at` DATETIME NULL DEFAULT NOW() COMMENT '생성일시',
	`modified_by` BIGINT NULL COMMENT '수정자 ID',
	`modified_at` DATETIME NULL DEFAULT NOW() COMMENT '수정일시',
	PRIMARY KEY (`artwork_id`)
);

DROP TABLE IF EXISTS `artwork_detail`;

CREATE TABLE `artwork_detail` (
	`artwork_detail_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '작품 상세 ID',
	`sort_sqnc` INT(2) NOT NULL DEFAULT 1 COMMENT '정렬 순서',
	`file_path` VARCHAR(255) NULL COMMENT '파일 경로',
	`origin_file_name` VARCHAR(255) NULL COMMENT '원본 파일명',
	`created_by` BIGINT NULL COMMENT '생성자 ID',
	`created_at` DATETIME NULL DEFAULT NOW() COMMENT '생성일시',
	`modified_by` BIGINT NULL COMMENT '수정자 ID',
	`modified_at` DATETIME NULL DEFAULT NOW() COMMENT '수정일시',
	`artwork_id` BIGINT NOT NULL COMMENT '작품 ID',
	PRIMARY KEY (`artwork_detail_id`)
);

DROP TABLE IF EXISTS `artwork_comment`;

CREATE TABLE `artwork_comment` (
	`comment_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '댓글 ID',
	`content` TEXT NOT NULL COMMENT '내용',
	`created_by` BIGINT NULL COMMENT '생성자 ID',
	`created_at` DATETIME NULL DEFAULT NOW() COMMENT '생성일시',
	`modified_by` BIGINT NULL COMMENT '수정자 ID',
	`modified_at` DATETIME NULL DEFAULT NOW() COMMENT '수정일시',
	`user_id` BIGINT NOT NULL COMMENT '유저 ID',
	`artwork_id` BIGINT NOT NULL COMMENT '작품 ID',
	PRIMARY KEY (`comment_id`)
);

DROP TABLE IF EXISTS `artwork_liked`;

CREATE TABLE `artwork_liked` (
	`like_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '평가 ID',
	`liked_at` DATETIME NULL DEFAULT NOW() COMMENT '평가 일시',
	`user_id` BIGINT NOT NULL COMMENT '유저 ID',
	`artwork_id` BIGINT NOT NULL COMMENT '작품 ID',
	PRIMARY KEY (`like_id`)
);

DROP TABLE IF EXISTS `follow`;

CREATE TABLE `follow` (
	`follow_id` BIGINT NULL COMMENT '팔로우 ID',
	`followed_at` DATETIME NULL DEFAULT NOW() COMMENT '팔로우 일시',
	`follower_id` BIGINT NOT NULL COMMENT '팔로워 ID',
	`followee_id` BIGINT NOT NULL COMMENT '팔로이 ID'
);

DROP TABLE IF EXISTS `artwork_bookmark`;

CREATE TABLE `artwork_bookmark` (
	`bookmark_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '북마크 ID',
	`bookmarked_at` DATETIME NULL DEFAULT NOW() COMMENT '북마크 일시',
	`user_id` BIGINT NOT NULL COMMENT '유저 ID',
	`artwork_id` BIGINT NOT NULL COMMENT '작품 ID',
	PRIMARY KEY (`bookmark_id`)
);

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
	`notification_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '알림 ID',
	`content` TEXT NULL COMMENT '내용',
	`created_by` BIGINT NULL COMMENT '생성자 ID',
	`created_at` DATETIME NULL DEFAULT NOW() COMMENT '생성일시',
	`modified_by` BIGINT NULL COMMENT '수정자 ID',
	`modified_at` DATETIME NULL DEFAULT NOW() COMMENT '수정일시',
	`user_id` BIGINT NOT NULL COMMENT '유저 ID',
	PRIMARY KEY (`notification_id`)
);

DROP TABLE IF EXISTS `user_artwork`;

CREATE TABLE `user_artwork` (
	`user_artwork_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '유저 작품 ID',
	`user_id` BIGINT NOT NULL COMMENT '유저 ID',
	`artwork_id2` BIGINT NOT NULL COMMENT '작품 ID',
	PRIMARY KEY (`user_artwork_id`)
);
