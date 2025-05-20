# 현재 위치경로 출력
pwd

# 현재위치에서 파일 및 폴더 조회
ls

# 목록조회 자세히
ls -l

# 목록조회 자세히 + 숨김파일
ls -al

# 목록조회 자세히 + 숨김파일 + 오래된순 정렬(최신은 alt)
ls -alrt

# 디렉토리 생성
mkdir songok_dir

# 특정 디렉토리로 이동
cd songok_dir

# 상위 디렉토리로 이동
cd ..  # 또는 cd ../

# 루트(최상위) 디렉토리로 이동
cd /

# 직전 디렉토리로 이동
cd -

# 홈경로(/home/본인계정)로 이동
cd

# 상대경로와 절대경로
# 상대경로: cd ../../
# 절대경로: cd /home

# 비어있는 파일 만들기
touch first_file.txt

# 파일내용 터미널창에 출력하기
cat first_file.txt

# 파일내용 상위 10줄 출력하기
head 파일명

# 파일내용 하위 10줄 출력하기
tail 파일명

# 파일내용 상/하위 n개 조회
head/tail -n 파일명

# 파일내용 실시간 조회
tail -f 파일명

# 파일내용 편집기: nano, vi

# 도스키 위/아래를 통해 이전 명령어 조회

# 이전 사용 명령어 모두 조회
history

# 현재 터미널창 정리
clear

# ctrl + c : 입력 명령어 취소

# 파일 삭제 / -f 옵션: 묻지않고 삭제
rm 파일명

# 디렉토리(하위 포함) 삭제
rm -r 디렉토리명

# 터미널창에 문자열 출력
echo "문자열"

# 파일에 문자열 덮어쓰기(>) / 추가(>>)
echo "문자열" > 파일명

# 파일 복사(cp 복사대상파일명 복사될파일명) / 디렉토리는 -r 옵션 필요
cp 1_file.txt 2_file.txt
cp 1_file.txt ../2_file.txt

# 파일 이동(mv 이동할파일명 이동될파일명)
mv 1_file.txt 2_file.txt    # 파일 이름바꾸기
mv 1_file.txt ../1_file.txt # 상위 디렉토리로 잘라내기/붙여넣기

# grep: 파일 내에서 문자열 찾기
# -r: 모든 디렉토리 내, n: 라인 수 출력, i: 대소문자 구분없이
grep -rni "hello"

# find: 이름으로 파일 또는 디렉토리 찾기
# find 찾을디텍토리경로 옵션(-name / ) "찾을내용"
find . -name "*.txt"
find . -type f      # 파일을 찾음, 디렉토리 제외

# 혼합 사용
find . -name "*.txt" -exec grep -rni "hello" {} \;  # -exec: 실행 / {}: find한 내용을 목록으로 잡음 / \; : 끝을 알림
find . -name "*.txt" | xargs grep -rni "hello"      # 결과는 같음 / |: 왼쪽 결과를 오른쪽으로 넘김

# 타입은 파일인 파일중에 이름은 first로 시작하고 그 파일들 안에 hello라는 키워드가 들어가 있는 문장 찾기
find . -type f -name "first*" | xargs grep -rni "hello"
find . -type f -name "first*" -exec grep -rni "hello" {} \;