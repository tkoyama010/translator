for i in ../getfem/doc/sphinx/source/locale/ja/LC_MESSAGES/project/libdesc_mesh.po
do
  echo ${i}
  python3 po-en2txt-en.py ${i} ${i}-en.txt

  trans en:ja -b -i ${i}-en.txt > ${i}-ja.txt

  python3 txt-ja2po-ja.py ${i}-ja.txt ${i}
done
