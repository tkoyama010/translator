for i in ../for_translation_getfem-53-1_install--install_linux_ja.po
do
  echo ${i}
  python3 po-en2txt-en.py ${i} ${i}-en.txt

  trans en:ja -b -i ${i}-en.txt ${i}-ja.txt

  python3 txt-ja2po-ja.py ${i}-ja.txt ${i}
done
