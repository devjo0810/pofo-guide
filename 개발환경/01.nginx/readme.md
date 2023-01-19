# Nginx

## Local Routing 구조
```
listen 8090
server_name freepofo-local -> userui port 8071
server_name admin.freepofo-local -> adminui port 8072
API_server /api/appmgmt -> appmgmt back-end 8081
```

## Local hosts 세팅
```
127.0.0.1 freepofo-local
# adminui port is 8072
127.0.0.1 admin.freepofo-local
# End Local Dev Domain
```


### nginx-1.18.0.zip 압축해제

### conf폴더안의 nginx.conf파일 변경

### API 서버 추가시 location 추가
```
location /api/example {
    rewrite     ^/api(.*)$ $1 break;
    proxy_pass  http://localhost:80??;
}
```
å
### nginx.exe로 실행
-----
### nginx 명령어
```
nginx.exe 파일이 있는 경로에서
> nginx -s stop ( 빠른 종료 )
> nginx -s quit ( 일반 종료 )
> nginx -s reload ( 재기동 )

종료 명령어로 종료가 안될시 작업관리자로 강제 종료
```

## mac에서 세팅 방법

### 해당 파일 변경
```
/opt/homebrew/etc/nginx/nginx.conf
```

### nginx 재시작
```
brew services restart nginx
```