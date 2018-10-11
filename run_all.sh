for i in ../getfem/doc/sphinx/source/locale/ja/LC_MESSAGES/userdoc/xfem.po
do
  echo ${i}
  python3 po-en2txt-en.py ${i} ${i}-en.txt

  rm ${i}-ja.txt
  cat ${i}-en.txt | while read line
  do
    echo $line | sed -e "s/`//g" | trans en:ja -b  >> ${i}-ja.txt
  done

  python3 txt-ja2po-ja.py ${i}-ja.txt ${i}
done
