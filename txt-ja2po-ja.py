import sys
import polib

po = polib.pofile(sys.argv[2])

with open(sys.argv[1]) as txt:
  for entry in po.untranslated_entries():
    entry.msgid = txt.readline()

txt.close()
po.save(sys.argv[2])
