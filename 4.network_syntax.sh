# 프로세스 목록조회
ps -ef
ps -ef | grep "찾을 프로세스"

# 패키지 관련
# yum : 레드햇 계열 패키지 관리도구
# apt 또는 apr-get : 데비안 계열 패키지 관리도구

# 패키지 목록 최신화
sudo apt update

# nginx 설치
sudo apt install nginx

# 프로그램 실행관리 도구: systemctl
sudo systemctl start nginx
sudo systemctl stop nginx

# 프로세스 강제 종료
kill -9 프로세스ID

# 네트워크 관련
# ip 주소 조회
ifconfig

# 특정 도메인 ip 주소 조회 : DNS서버에 문의
nslookup 도메인명

# 네트워크 연결상태 조회
# 일반적으로 ping은 보안상 막아두고 있음
ping 조회할 ip주소

# 특정 프로그램 사용가능여부 조회
# 일반적으로 telnet은 막혀있거나, 사용하기를 권장하지 않음 / nc -zv 많이 사용
telnet ip주소 port번호
nc -zv ip주소(또는 도메인) port번호

# 원격접속 : 22번 port
ssh 계정명@도메인주소(또는 ip주소)

# 원격 파일 전송 : 22번 port
scp 전송하고자하는파일 원격지ip주소