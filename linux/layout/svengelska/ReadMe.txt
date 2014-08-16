
Svengelska

1) Add the contents of sve.txt to the end of the file /usr/share/X11/xkb/symbols/us

2) Then look up the following section in the file /usr/share/X11/xkb/rules/evdev.xml:
      <configItem>
        <name>us</name>
        <shortDescription>en</shortDescription>
        <description>English (US)</description>
        <languageList>
          <iso639Id>eng</iso639Id>
        </languageList>
      </configItem>
      <variantList>

Add the following variant block after the line <variantList>:
        <variant>
          <configItem>
            <name>sve</name>
            <description>Svengelska</description>
          </configItem>
        </variant>

3) Finally, after the line "! variant" in the file /usr/share/X11/xkb/rules/evdev.lst add the following line:
  sv              Svengelska (US)

4) Delete all *.xkm files in  /var/lib/xkb

5) Restart X
Ex: sudo restart lightdm 
