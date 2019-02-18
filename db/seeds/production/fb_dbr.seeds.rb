#DBR-Fragebogen
# Dieses Array wird in folgernder Reihenfolge geordnet:
# itemtext 			Abkurzung			Kategorie? (Kein Item wird hier umcodiert. Deswegen ist das Difficulty gleich 0)

categories = [
	"Schulbezogenes Verhalten (SV)",
	"Trotzverhalten (TV)",
	"Unaufmerksamkeit (U)",
	"Impulsivität (I)",
	"Emotionalität (E)",
	"Probleme in der Gruppe (PG)"
]

items = [
	["Meldet sich im Unterricht", 																	"Meldet",0],
	["Hält sich an Gesprächsregeln", 														"Gesprächsregeln",0],
	["Richtet die Konzentration auf die Bearbeitung der Aufgabe", 								"Konzentriert",0],
	["Arbeitet ruhig am Platz", 																	"Ruhig",0],
	["Arbeitet mit", 																			"Mitarbeit",0],
	["Lässt sich leicht ärgern ", 															"Ärgern lassen",1],
	["Weigert sich, Regeln zu befolgen ", 												     		"Regeln",1],
	["Widersetzt sich den Anweisungen von Autoritätspersonen ", 							  "Widersetzen",1],
	["Ärgert andere absichtlich ", 																	"Ärgern",1],
	["Macht Flüchtigkeitsfehler bei den Schularbeiten. ", 											"Fehler",2],
	["Hat Schwierigkeiten, längere Zeit die Aufmerksamkeit bei Aufgaben aufrechtzuerhalten. ", "Aufmerksamkeit",2],
	["Scheint nicht zuzuhören, wenn andere ihn bzw. sie ansprechen ", 								"Zuhören",2],
	["Bringt Schularbeiten nicht zu Ende ", 													"Schularbeit",2],
	["Hat Schwierigkeiten sich zu organisieren ", 												"Organisation",2],
	["Lässt sich durch äußere Reize ablenken ", 													"Ablenkung",2],
	["Zappelt mit Händen und Füßen ", 																"Zappeln",3],
	["Steht in Situationen auf, in denen Sitzenbleiben erwartet wird ", 							"Aufstehen",3],
	["Handelt, als wäre er bzw. sie \"getrieben\". ", 											"\"Getrieben\"",3],
	["Redet viel. ", 																				"Redet",3],
	["Kann in Unterhaltungen nur schwer warten, bis er bzw. sie an der Reihe ist ", 				"Warten",3],
	["Bringt Schularbeiten nicht zu Ende ", 													"Schularbeit",3],
	["Wirkt oft traurig. ", 																	"Traurig",4],
	["Zeigt vermindertes Interesse an Aktivitäten ", 											"Interesse",4],
	["Kann sich nur schwer entscheiden. ",														 "Entscheidung",4],
	["Hat Angst vor sozialen Situationen (soziale Angststörung) ", 									"Angst",4],
	["Klagt über körperliche Beschwerden", 														"Beschwerden",4],
	["Arbeitet lieber alleine", 															"Arbeitet Allein",5],
	["Spielt lieber alleine", 																"Spielt Allein",5],
	["Wird von Mitschüler_innen gehänselt oder geärgert", 										"Hänseln",5]
]

# DBR questionnaire
t = Fragebogen.create(name:'Fragebogen Verhaltensmessung', student_access: false, archive: false, info: "", len: 20, shorthand: "FB", subject: "Fragebogen", 
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