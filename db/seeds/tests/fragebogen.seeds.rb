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

# DBR questinnaire
t = Fragebogen.create(name:'Fragebogen Verhaltensmessung', student_access: false, archive: false, info: "", len: 20, shorthand: "FB", subject: "Fragebogen", 
	construct: "Verhalten", level:"Schule")

# difficulty of this item means the dimension, also the answers will be [1,7]
it = t.items.build(itemtext:'hallo', itemtype: -1, itemview: 'items/userbased/fragebogen_void', difficulty: 7) 
it.save

i = 0
while i < items.length do 
	it = t.items.build(itemtext: items[i][0] + ";" + categories[items[i][1]] + ";" + items[i][2].to_s	 , shorthand: items_abbrev[i],
		 itemtype: 0, itemview: "items/userbased/fragebogen_void", difficulty: items[i][2]) # difficulty = 1 means recode, 0 means don't recode
	it.save
	i = i+1
end
t.save

# Die Reihenfolge wurde so geändert, dass Items aus derselben Kategorie untereinander aufgelistet werden.
items = [
	["Er/Sie geht gerne in die Schule.",												0,0],
	["Er/Sie hat keine Lust, in die Schule zu gehen.", 									0,1],
	["Ihm/Ihr gefällt es in der Schule.", 												0,0],
	["Ihm/Ihr macht die Schule Spaß.", 													0,0],
	["Er/Sie hat sehr viele Freundinnen oder Freunde in seiner/ihrer Klasse.",			1,0],
	["Er/Sie kommt mit seinen/ihren Mitschülerinnen und Mitschülern sehr gut aus.",		1,0],
	["Er/Sie fühlt sich in seiner/ihrer Klasse allein.",								1,1],
	["Er/Sie verträgt sich mit seinen/ihren Mitschülerinnen und Mitschülern sehr gut.",	1,0],
	["Er/Sie lernt schnell.",															2,0],
	["Er/Sie kann auch sehr schwierige Aufgaben lösen.",								2,0],
	["Er/Sie ist ein guter Schüler/ eine gute Schülerin.",								2,0],
	["Ihm/Ihr ist in der Schule vieles zu schwierig.",									2,1]
]

categories = [
	"Soziale Inklusion (SI)", 
	"Emotionale Inklusion (EI)", 
	"Akademisches Selbstkonzept (AS)" 
]

items_abbrev = [
	"Schulfreude",
	"Unlust",
	"Gefallen",
	"Spaß",
	"Freunde",
	"Mitschüler",
	"Allein",
	"Vertragen",
	"Schnelligkeit",
	"Leistungsstärke",
	"Gut",
	"Überforderung"
]

# Fragebogen PIQ
t = Fragebogen.create(name: "Fragebogen zum Selbstkonzept in der Schule (PIQ)", student_access: false, archive: false, info: "", len: 13, shorthand:"FB-PIQ",
		subject: "Fragebogen", construct: "Selbstkonzept", level: "Schule")


it = t.items.build(itemtext: "hallo", itemtype: -1, itemview: 'items/userbased/fragebogen_void', difficulty: 4) #difficulty: stimmt gar nicht, ..., stimmt
it.save

i = 0
while i < items.length do
	it = t.items.build(itemtext: items[i][0] + ";" + categories[items[i][1]] + ";" + items[i][2].to_s, shorthand: items_abbrev[i],
		itemtype: 0, itemview: "items/userbased/fragebogen_void", difficulty: items[i][2])
	it.save
	i = i+1
end
t.save 

items_abbrev = [
	"Schulfreude",
	"Freunde",
	"Schnelligkeit",
	"Unlust",
	"Mitschüler",
	"Leistungsstärke",
	"Gefallen",
	"Allein",
	"Gut",
	"Spaß",
	"Vertragen",
	"Überforderung"
]

items = [
	["Ich gehe gerne in die Schule.",												0,0],
	["Ich habe sehr viele Freundinnen oder Freunde in meiner Klasse.",			1,0],
	["Ich lerne schnell.",															2,0],
	["Ich habe keine Lust, in die Schule zu gehen.", 									0,1],
	["Ich komme mit meinen Mitschülerinnen und Mitschülern sehr gut aus.",		1,0],
	["Ich kann auch sehr schwierige Aufgaben lösen.",								2,0],
	["Mir gefällt es in der Schule.", 												0,0],
	["In meiner Klasse fühle ich mich allein.",								1,1],
	["Ich bin ein guter Schüler/ eine gute Schülerin.",								2,0],
	["Die Schule macht Spaß.", 													0,0],
	["Mit meinen Mitschülerinnen und Mitschülern vertrage ich mich sehr gut.",	1,0],
	["In der Schule ist mir vieles zu schwierig.",									2,1]
]

t = Fragebogen.create(name: "Fragebogen zum Selbstkonzept in der Schule (PIQ)", student_access: true, archive: false, info: "", len: 13,
	shorthand: "FB-PIQ", subject: "Fragebogen", construct: "Selbstkonzept", level: "Schule")

it = t.items.build(itemtext: "hallo", itemtype: -1, itemview: 'items/studentbased/fragebogen/hallo_piq', difficulty: 4) # difficulty stands for possible answers
it.save

i = 0
while i < items.length do
	it = t.items.build(itemtext: items[i][0] + ";" + categories[items[i][1]] + ";" + items[i][2].to_s, shorthand: items_abbrev[i],
			itemtype: 0, itemview: "items/userbased/fragebogen_void", difficulty: items[i][2])
	it.save
	i = i+1
end
t.save


# This is the right order of the PIQ-questionnaire
=begin
Er/Sie geht gerne in die Schule.
Er/Sie hat sehr viele Freundinnen oder Freunde in seiner/ihrer Klasse.
Er/Sie lernt schnell.
Er/Sie hat keine Lust, in die Schule zu gehen.
Er/Sie kommt mit seinen/ihren Mitschülerinnen und Mitschülern sehr gut aus.
Er/Sie kann auch sehr schwierige Aufgaben lösen.
Ihm/Ihr gefällt es in der Schule.
Er/Sie fühlt sich in seiner/ihrer Klasse allein.
Er/Sie ist ein guter Schüler/ eine gute Schülerin.
Ihm/Ihr macht die Schule Spaß.
Er/Sie verträgt sich mit seinen/ihren Mitschülerinnen und Mitschülern sehr gut.
Ihm/Ihr ist in der Schule vieles zu schwierig.
=end