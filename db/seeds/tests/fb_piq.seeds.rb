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
t = Fragebogen.create(name: "Fragebogen zur Wahrnehmung der Inklusion in der Schule (PIQ)", student_access: false, archive: false, info: "", len: 13, shorthand:"FB-PIQ",
		subject: "Fragebogen", construct: "Selbstkonzept", level: "Schule", :generic_views => {"assessment" => 'questionnaire/assessment_overview.html.erb', "student" => 'questionnaire/student_overview.html.erb'})


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

=begin
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
	shorthand: "FB-PIQ", subject: "Fragebogen", construct: "Selbstkonzept", level: "Schule", :generic_views => {"assessment" => 'questionnaire/assessment_overview.html.erb', "student" => 'questionnaire/student_overview.html.erb'})

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