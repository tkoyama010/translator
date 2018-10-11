import sys
import polib

po = polib.pofile(sys.argv[1])

with open(sys.argv[2], mode='w') as txt:
  for entry in po.untranslated_entries():
    txt.writelines(entry.msgid + '\n')

txt.close()

