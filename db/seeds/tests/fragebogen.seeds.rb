# Dieses Array wird in folgernder Reihenfolge geordnet:
# itemtext 			Kategorie-Nummer			Decode? (diese Wahl ist nur für negative Fragen, die decodiert werden müssen. Alos 1 decode, 0 nicht)
items = [
	["Verhält sich wütend und aufbrausend", 														0,1],
	["Missachtet Regeln und hört nicht auf die Lehrkraft",											0,1],
	["Streitet sich mit Mitschüler_innen/provoziert durch eigenes Verhalten seine Mitschüler_innen",0,1],
	["Zappelt, ist (motorisch) unruhig/ überaktiv", 												1,1],
	["Bricht Aufgaben häufig früh ab", 																1,1],
	["Lässt sich schnell und leicht ablenken",														1,1],
	["Wirkt besorgt, betrübt oder bedrückt",														2,1],
	["Wirkt ängstlich/ fürchtet sich",																2,1],
	["Wirkt nervös (sucht Nähe zu Erwachsenen)",													2,1],
	["Arbeitet/spielt meist alleine",																3,1],
	["Wird von Mitschüler_innen gehänselt oder geärgert, lässt sich provozieren",					3,1],
	["Arbeitet/spielt häufiger mit Erwachsenen als mit Mitschüler_innen",							3,1],
	["Meldet sich im Unterricht",																	4,0],
	["hält sich an Gesprächsregeln",																4,0],
	["Richtet Aufmerksamkeit/Konzentration auf die Bearbeitung der Aufgabe",						4,0],
	["Arbeitet ruhig am Platz und verweigert nicht die Mitarbeit",									4,0],
	["Verhält sich anderen gegenüber rücksichtsvoll",												5,0],
	["Verhält sich anderen gegenüber hilfsbereit",													5,0],
	["Verhält sich in Partner- und Gruppensituationen kooperativ",									5,0]
]

items_abbrev = [
	"Wut", 
	"Klassen- regeln", 
	"Streit- lust", 
	
	"Motor- ische Unruhe", 
	"Durch- halte- vermögen", 
	"Ab- lenkung", 
	
	"Sorgen", 
	"Ängst- lich- keit", 
	"Nervös- ität",

	"Einzel- gänger", 
	"Mobb- ing", 
	"Kontakt- wahl", 
	
	"Be- teiligung", 
	"Gesprächs- regeln", 
	"Konzent- ration", 
	"Mit- arbeit", 
	
	"Rüch- sichts- nahme", 
	"Hilfs- bereit- schaft",
	"koo- perativ- ität"
]

categories = [
	"Störendes und auflehnendes Verhalten (SAV)",
	"Probleme im lernbezogenen Verhalten (PLV)",
	"Depressives und ängstliches Verhalten (DAV)",
	"Probleme in sozialen Interaktionen (PSI)",
	"Schulbezogenes Verhalten (SV)",
	"Prosoziales Verhalten (PS)"
]


t = Fragebogen.create(name:'Fragebogen Verhaltensmessung', student_access: false, archive: false, info: "", len: 20, shorthand: "FB", subject: "Fragebogen", 
	construct: "Fragebogen", level:"Schule")

it = t.items.build(itemtext:'hallo', itemtype: -1, itemview: 'items/userbased/fragebogen_void', difficulty: 0)
it.save

i = 0
while i < items.length do 
	it = t.items.build(itemtext: items[i][0] + ";" + categories[items[i][1]] + ";" + items[i][2].to_s	 , shorthand: items_abbrev[i], itemtype: 0, itemview: "items/userbased/fragebogen_void")
	it.save
	i = i+1
end
t.save