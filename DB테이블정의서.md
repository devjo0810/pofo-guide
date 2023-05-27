# POFO 테이블 정의서

### ERD link
https://www.erdcloud.com/d/crz6QDfjFSSDtjz9u

## User 테이블
- user_id (PK, BIGINT): 유저 ID
- username (VARCHAR(255)): 유저명
- email (VARCHAR(255)): 이메일
- password (VARCHAR(255)): 비밀번호
- status (VARCHAR(10)): 사용자 상태 (정상, 휴먼, 정지, 탈퇴)
- rcnt_lgn_at (DATETIME): 최근접속일시
- pwd_fail_cnt (INT(2)): 비밀번호실패 횟수
- created_by (BIGINT, FK(User.user_id)): 생성자 ID
- created_at (DATETIME): 생성일시
- modified_by (BIGINT, FK(User.user_id)): 수정자 ID
- modified_at (DATETIME): 수정일시

## Artwork 테이블
- artwork_id (PK, BIGINT): 작품 ID
- title (VARCHAR(255)): 제목
- description (TEXT): 설명
- category (VARCHAR(10)): 카테고리
- view_cnt (BIGINT): 조회수
- view_yn (TINYINT(4)): 공개여부
- created_by (BIGINT, FK(User.user_id)): 생성자 ID
- created_at (DATETIME): 생성일시
- modified_by (BIGINT, FK(User.user_id)): 수정자 ID
- modified_at (DATETIME): 수정일시

## Artwork 상세 테이블
- artwork_detail_id (PK, BIGINT): 작품 상세 ID
- sort_sqnc (INT(2)): 정렬순서
- file_path (VARCHAR(255)): 파일경로
- origin_file_name (VARCHAR(255)): 원본 파일명
- created_by (BIGINT, FK(User.user_id)): 생성자 ID
- created_at (DATETIME): 생성일시
- modified_by (BIGINT, FK(User.user_id)): 수정자 ID
- modified_at (DATETIME): 수정일시
- artwork_id (BIGINT, FK(Artwork.artwork_id)): 작품 ID

## Comment 테이블
- comment_id (PK, BIGINT): 댓글 ID
- content (TEXT): 내용
- created_by (BIGINT, FK(User.user_id)): 생성자 ID
- created_at (DATETIME): 생성일시
- modified_by (BIGINT, FK(User.user_id)): 수정자 ID
- modified_at (DATETIME): 수정일시
- user_id (BIGINT, FK(User.user_id)): 유저 ID
- artwork_id (BIGINT, FK(Artwork.artwork_id)): 작품 ID

## Like 테이블
- like_id (PK, BIGINT): 평가 ID
- liked_at (DATETIME): 평가일시
- user_id (BIGINT, FK(User.user_id)): 유저 ID
- artwork_id (BIGINT, FK(Artwork.artwork_id)): 작품 ID

## Follow 테이블
- follow_id (PK, BIGINT): 팔로우 ID
- followed_at (DATETIME): 팔로우일시
- follower_id (BIGINT, FK(User.user_id)): 팔로워 ID
- followee_id (BIGINT, FK(User.user_id)): 팔로이 ID

## Bookmark 테이블
- bookmark_id (PK, BIGINT): 북마크 ID
- bookmarked_at (DATETIME): 북마크일시
- user_id (BIGINT, FK(User.user_id)): 유저 ID
- artwork_id (BIGINT, FK(Artwork.artwork_id)): 작품 ID

## Notification 테이블
- notification_id (PK, BIGINT): 알림 ID
- user_id (BIGINT, FK(User.user_id)): 유저 ID
- content (TEXT): 내용
- created_by (BIGINT, FK(User.user_id)): 생성자 ID
- created_at (DATETIME): 생성일시
- modified_by (BIGINT, FK(User.user_id)): 수정자 ID
- modified_at (DATETIME): 수정일시

