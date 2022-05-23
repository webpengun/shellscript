基本コマンド----------------------------------------------------------
A
mkdir A

mv A B
 
touch ファイル作成




フォルダ作成----------------------------------------------------------

B
A=(
)


mkdir "${A[@]}"


cd /Users/cips/Desktop/shellscript/データ

A=()
B=()

cd /Users/cips/Desktop/shellscript/データ２

mkdir "${A[0]}"




--------------------------------------------------------------------
Zshエラー/Bash対応

A=(
)

B=(
)

C=(
)


mkdir 新規 継続

for i in 0 `seq 200`
do

for F in *; do mv $F ${F/"${A[i]}"/"${B[i]}"};done; mv "${B[i]*}" "${C[i]}"

done

--------------------------------------------------------------------


配列要素数

${#A[*]}



--------------------------------------------------------------------
for F in *; do mv $F ${F/"${A[i]}"/"${B[i]}"};done;


for i in 1 2 3 4 5
do

for F in *; do mv $F ${F/"${A[i]}"/"${B[i]}"};done;

done


--------------------------------------------------------------------

for 変数 in 値リスト
do
  処理
done


--------------------------------------------------------------------





week=(Sun Mon Tues Wed Thur Fri Sat)
echo ${week[0]}


week=(Sun Mon Tues Wed Thur Fri Sat)
echo ${week[1]}
echo ${week[6]}
echo ${week[@]}	


for F in $A*; do mv $F ${F/$A[0]/$B[0]};done;

for F in "${A*}"; do mv $F ${F/"${A[0]}"/"${B[0]}"};done;

for F in ${A[0]*}; do mv $F ${F/${F[0]}/${B[0]}};done;




for F in $A*; do mv $F ${F/$A/$B};done;

for F in "${A[@]*}"; do mv $F ${F/${A[@]}/${B[@]}};done;

for F in "${A[1]*}"; do mv $F ${F/"${A[1]}"/"${B[1]}"};done;

for F in "${A[0]*}"; do mv $F ${F/"${A[0]}"/"${B[0]}"};done;
for F in $A*; do mv $F ${F/$A/$B};done;


for F in $A[0]*; do mv $F ${F/$A[0]/$B[0]};done;



--------------------------------------------------------------------


mkdir テスト

mv　1216028*　テスト


--------------------------------------------------------------------




リスト参照ーーーーーーーーーーーーーーーーーー

A=(
`ls`
)


mkdir "01-${A[@]}"




リスト参照2ーーーーーーーーーーーーーーーーーー


cd /Users/cips/Desktop/ターミナルテスト/データ

A=(
`ls`
)

cd /Users/cips/Desktop/ターミナルテスト/作業用フォルダ


mkdir "${A[@]}"



関数ーーーーーーーーーーーーーーーーーーーーーーーーーー


function hello(){
  echo "こんにちは $2 と $1"
}

hello taro mako



function cips(){
  mkdir "$1$2"
}

cips 01 999999



変数つなぎーーーーーーーーーーーーーーーーーーーーーーーーーー



X=シェイプライン ; mkdir $X ; mv 1039808* $X 




mv $X　01$X



連番つける

ls | nl | awk '{ printf("%s %02d_%s\n", $2, $1, $2) }' | xargs -n 2 mv
