items = [
#Schulbezogenes Verhalten (SV)
"Meldet sich im Unterricht",
"Arbeitet ruhig und konzentriert im Unterricht",
"Bleibt während des Unterrichts ruhig am Platz sitzen, wenn dies erforderlich ist",
#"Verhaltensprobleme (VP)",
"Verhält sich wütend und aufbrausend",
"Hört nicht auf die Lehrkraft und verhält sich nicht regelkonform",
"Streitet sich mit anderen Kindern/ schikaniert seine MitschülerInnen ",
#"Hyperaktivität (HY)",
"Zappelt und ist motorisch unruhig",
"Führt Aufgaben zu Ende",
"Unruhig und überaktiv",
#"Emotionale Probleme (EP)",
"Wirkt besorgt, betrübt oder bedrückt",
"Verhält sich ängstlich/ fürchtet sich",
"Verhält sich nervös und klammert sich an Erwachsenen"
]
items_abbrev = [
"Teilnahme",
"Konzentration",
"Ruhige Arbeit",

"Ruhiges Sitzen",
"Gehorsam",
"Streitet nicht",

"Ruhig",
"Endet Aufgaben",
"Normale Aktivität",

"Wirkt normal",
"Selbstbewusst",
"Nicht nervös"
]
t = Fragebogen.create(name:'DBR Fragebogen', student_access: false, archive: false, info: "", len: 13, shorthand: "FB", subject: "Fragebogen", 
	construct: "Fragebogen", level:"1")

it = t.items.build(itemtext:'hallo', itemtype: -1, itemview: 'items/userbased/fragebogen_void', difficulty: 0)
it.save

i = 0
while i < items.length do 
	it = t.items.build(itemtext: items[i], shorthand: items_abbrev[i], itemtype: 0, itemview: "items/userbased/fragebogen_void")
	it.save
	i = i+1
end
t.save