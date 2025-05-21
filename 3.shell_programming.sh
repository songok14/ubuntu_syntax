# 쉘스크립트 작성, 반드시 확장자 .sh
# 실행권한(x)이 있어야 실행 가능
touch myscript.sh
nano myscript.sh
echo "hello world"
chmod u+x myscript.sh

# 스크립트 실행
./myscript.sh

# if문
if [ 1 -gt 2 ]; then
    echo "hello world1"
else
    echo "hello world2"
fi

# 변수 선언 및 파일/디렉토리 검사
file_name=first_file.txt            # file_name: 변수명
if [ -f "$first_name" ]; then       # first_name(=first_file.txt) 파일이 있으면 참
    echo "$first_name file exists"  # $: 변수명 앞에 사용
else
    echo " $first_name file doesn't exist"
fi

# for문
for a in {1..100}                   # . 2개!!
do
    echo "hello world$a"
done

# for문과 파일/디렉토리 목록조회
for a in *
do
    echo "$a"
done

# for문의 변수값을 증가
count=100
for a in {1..100}
do
    let count=count+1
done
echo "count value is $count"

# for문 및 변수값 세팅 활용
filecount=0
dircount=0
for a in *
do
    if [ -f $a ]; then
        let filecount=filecount+1
    else
        let dircount=dircount+1
    fi
done