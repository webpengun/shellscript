
バックアップ用フルパス--------------------------------------------------------

IFS=$'\n'
ls -Rdr $(find `pwd`) 1>>backup-test.txt





バックアップ画像コピー-----------------------------------------------------------

IFS=$'\n'
cd /Volumes/backup2022/backup-txt

A=(
keisen.tif
)

for i in `seq 100`
do
cat backup-test.txt | grep ${A[i]} backup-test.txt 1>>info.txt
done

while IFS= read -r line; do    
cp -a $line /Users/cips/Desktop/練習    
done < info.txt

rm info.txt


012 2.tif
※サーバーの調子で日付変わるけど、もう一回やれば直る



テストファイル






---------------------------------------------------------------


while IFS= read -r line; do    
cp -a $line /Users/cips/Desktop/練習    
done < info.txt


テスト

cd /Volumes/backup2022/backup-txt

A=(
14522A-010-01-03_d.eps
)

for i in `seq 1`
do
cat backup-test.txt | grep "${A[i]}" backup-test.txt
done


---------------------------------------------------------------


