# 사용자 추가 및 비밀번호 지정(사용자의 비밀번호 필요)
sudo useradd 사용자명
sudo passwd 사용자명

# 사용자 변경
su - 사용자명       # 변경하려는 계정의 비밀번호 필요
su -               # root로 변경, root 비밀번호 필요

# 권한 변경: r(4), w(2), x(1), User Group Others 로 구성
chmod xxx 파일/디렉토리
chmod u+x 파일/디렉토리
chmod u-x 파일/디렉토리
chmod u=r 파일/디렉토리     # User에게 r 권한만 부여여 

# 소유자 <-> 그룹 변경
chown newuser1:newuser1 파일명
