for i in ../getfem/doc/sphinx/source/locale/ja/LC_MESSAGES/userdoc/*.po
do
  echo ${i}
  python3 po-en2txt-en.py ${i} ${i}-en.txt
  cat ${i}-en.txt | trans en:ja -b  > ${i}-ja.txt
  python3 txt-ja2po-ja.py ${i}-ja.txt ${i}
done
