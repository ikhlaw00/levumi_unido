#DBR-Fragebogen
# Dieses Array wird in folgernder Reihenfolge geordnet:
# itemtext 			Abkurzung			Kategorie? (Kein Item wird hier umcodiert. Deswegen ist das Difficulty gleich 0)

categories = [
	"Störendes und auflehnendes Verhalten (SAV)",
	"Probleme im lernbezogenen Verhalten (PLV)",
	"Depressives und ängstliches Verhalten (DAV)",
	"Probleme in sozialen Interaktionen (PSI)",
	"Schulbezogenes Verhalten (SV)",
	"Prosoziales Verhalten (PS)"
]

items = [
	["Verhält sich wütend und aufbrausend ", 																	"Wut",0],
	["Missachtet Regeln und hört nicht auf die Lehrkraft ", 														"Missachtung",0],
	["Streitet sich mit Mitschüler_innen/provoziert durch eigenes Verhalten seine Mitschüler_innen ", 								"Streit",0],

	["Zappelt, ist (motorisch) unruhig/ überaktiv ", 																	"Zappelt",1],
	["Bricht Aufgaben häufig früh ab ", 																			"Abbruch",1],
	["Lässt sich schnell und leicht ablenken ", 															"Ablenkung",1],



	["Wirkt besorgt, betrübt oder bedrückt ", 												     		"bedrückt",2],
	["Wirkt ängstlich/ fürchtet sich ", 							  "Angst",2],
	["Wirkt nervös (sucht Nähe zu Erwachsenen) ", 																	"Nervös",2],



	["Arbeitet/spielt meist alleine ", 											"Allein",3],
	["Wird von Mitschüler_innen gehänselt oder geärgert, lässt sich provozieren", "Gehänselt ",3],
	["Arbeitet/spielt häufiger mit Erwachsenen als mit Mitschüler_innen ", 								"Erwachsene",3],



	["Meldet sich im Unterricht ", 													"Meldet",4],
	["hält sich an Gesprächsregeln ", 												"Regeln",4],
	["Richtet Aufmerksamkeit/Konzentration auf die Bearbeitung der Aufgabe ", 		"Aufmerksamkeit",4],
	["Arbeitet ruhig am Platz und verweigert nicht die Mitarbeit ", 																"Ruhe",4],
	

	["Verhält sich anderen gegenüber rücksichtsvoll ", 							"Rücksicht",5],
	["Verhält sich anderen gegenüber hilfsbereit ", 											"hilfsbereit",5],
	["Verhält sich in Partner- und Gruppensituationen kooperativ ", 	"Kooperativ",5],

]

# DBR questionnaire
t = Fragebogen.create(name:'Fragebogen Verhaltensmessung - PUTSIE', student_access: false, archive: false, info: "", len: 20, shorthand: "FB", subject: "Fragebogen", 
	construct: "Verhalten", level:"Schule", :generic_views => {"assessment" => 'questionnaire/assessment_overview.html.erb', "student" => 'questionnaire/student_overview.html.erb'})

# difficulty of this item means the dimension, also the answers will be [1,7]
it = t.items.build(itemtext:'hallo', itemtype: -1, itemview: 'items/userbased/fragebogen_void', difficulty: 7) 
it.save

i = 0
while i < items.length do 
	it = t.items.build(itemtext: items[i][0] + ";" + categories[items[i][2]] + ";" + "0"	 , shorthand: items[i][1],
		 itemtype: 0, itemview: "items/userbased/fragebogen_void", difficulty: "0") #  0 means don't recode
	it.save
	i = i+1
end
t.save