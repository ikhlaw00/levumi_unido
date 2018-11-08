# -*- encoding : utf-8 -*-

# Neue Elemente mit der festen Reihenfolge

items_n4 = %w{
	Augen
	fleißig
	Sobald
	Blumen
	schmeckt
	In
	Schere
	Haus
	wegen
	bevor
	wohne
	schnelle
	aber
	böse
	Baby
	Zwischen
	spricht
	Bett
	von
	scheint
	Nachdem
	runde
	Freunde
	gut
	Vogel
	Anstatt
	lustigen
	Durch
	Beine
	sammeln
	hungrig
	weder
	Sonne
	unter
	schläft
	Schuhe
	backt
	über
	Bilder
	Wenn
	süß
	Frösche
	Schwester
	dicke
	Biene
	Während
	für
	isst
	Enten
	Auf
	wartest
	Wasser
	neues
	außer
	spitz
	weil
	kauft
	Hase
	Tür
	mit
	Büro
}
before_gap_part_n4 = [
		"Ein Gesicht hat zwei",
		"Meine Schwester lernt immer",
		"",
		"Die",
		"Der Kuchen",
		"",
		"Die",
		"Meine Freundin zieht in ein neues",
		"Wir können",
		"Ich putze meine Zähne,",
		"Ich",
		"Das",
		"Ich habe eine gute Note,",
		"Die Polizei nimmt",
		"Das",
		"",
		"Lukas",
		"Meine Mama schläft im",
		"Diesen Stift habe ich",
		"Die Sonne",
		"",
		"Ein Apfel ist eine",
		"Die",
		"Durch meine Brille kann ich",
		"Der",
		"",
		"Lisa erzählt einen",
		"",
		"Ein Lama hat vier",
		"Im Wald",
		"Abends bin ich oft",
		"Paul hat",
		"Die",
		"Wir spielen",
		"Meine Oma",
		"Ich binde mir die",
		"Deine Freundin",
		"Du kletterst",
		"Lasse zeichnet schöne",
		"",
		"Die Limo ist",
		"Die",
		"Jutta geht mit ihrer",
		"Der",
		"Die",
		"",
		"Das Geschenk ist",
		"Das Mädchen",
		"Die",
		"",
		"Du",
		"Die Boje schwimmt auf dem",
		"Mein Papa kauft ein",
		"Jutta mag kein Obst essen,",
		"Eine Nadel ist",
		"Die Möwe kann fliegen,",
		"Paula",
		"Der",
		"Papa schließt abends die",
		"Das Auto zieht das andere Auto nur",
		"Mein Papa arbeitet in einem"
]

after_gap_part_n4 = [
		".",
		".",
		"ich fertig bin, melde ich mich bei dir.",
		"blühen auf der Wiese.",
		"uns allen gut.",
		"dem Schloss wohnt ein Geist.",
		"schneidet das Papier.",
		"um.",
		"dem schlechten Wetter nicht zu euch kommen.",
		"ich ins Bett gehe.",
		"bei meiner Familie.",
		"Auto rast die Straße entlang.",
		"Sina leider nicht.",
		"Räuber fest.",
		"schreit nach seiner Mutter.",
		"den Kissen liegt mein Heft.",
		"mit Frida über den Urlaub.",
		".",
		"meinem Opa.",
		"oft im Sommer.",
		"wir umgezogen sind, kaufen Mama und Papa neue Möbel.",
		"Frucht.",
		"machen viel Unsinn.",
		"sehen.",
		"fliegt zu seinem Nest.",
		"zu suchen, frage ich lieber meine Mama.",
		"Witz.",
		"das Fernglas sehe ich einen Turm.",
		".",
		"wir Blätter.",
		".",
		"einen Stift noch ein Heft.",
		"scheint jeden Tag.",
		"dem Tisch.",
		"samstags immer aus.",
		"zu.",
		"ein großes Brot.",
		"den Stamm.",
		".",
		"Wasser friert, wird es zu Eis.",
		".",
		"springen über die Straße.",
		"einkaufen.",
		"Mann schimpft laut.",
		"sitzt auf einer Blüte.",
		"meine Mama den Zaun streicht, spiele ich im Garten.",
		"meine Schwester.",
		"die Suppe.",
		"quaken auf dem See.",
		"dem Platz sitzen viele Leute.",
		"noch das Gewitter ab.",
		".",
		"Auto.",
		"Kirschen.",
		".",
		"sie ein Vogel ist.",
		"mir ein Geschenk.",
		"rennt über das Feld.",
		"ab.",
		"Mühe.",
		"."
]

item_alternatives_n4 = [
		%w{ Augen  Bücher  Autos  Finger  },
		%w{ dünn  grün  flach  fleißig  },
		%w{ Und  Doch  Sobald  Darum  },
		%w{ Jungen  Vögel  Stühle  Blumen  },
		%w{ riecht  trinkt  wählt  schmeckt  },
		%w{ Aus  Im  Durch  In  },
		%w{ Schere  Stirn  Pizza  Zwiebel  },
		%w{ Haus  Hemd  Beet  Heft  },
		%w{ wegen  hinter  über  für  },
		%w{ bald  davon  bevor  nachdem  },
		%w{ will  wohne  lasse  weiß  },
		%w{ frische  satte  schnelle  nahe  },
		%w{ dass  aber  weil  oder  },
		%w{ heiße  böse  flache  eckige  },
		%w{ Päckchen  Baby  Radio  Rätsel  },
		%w{ Vom  Aus  Zwischen  Im  },
		%w{ packt  backt  spricht  öffnet  },
		%w{ Tisch  Bett  Käfig  Bild  },
		%w{ hinter  mit  von  über  },
		%w{ regnet  schreit  schmilzt  scheint  },
		%w{ Als\ ob  Weder  Nachdem  Sondern  },
		%w{ warme  runde  lange  blaue  },
		%w{ Schuhe  Stifte  Freunde  Lichter  },
		%w{ frisch  laut  jung  gut  },
		%w{ Hund  Vater  Vogel  Verein  },
		%w{ Demnächst  Anstatt  Weil  Davon  },
		%w{ tiefen  lustigen  nassen  späten  },
		%w{ Im  Zu  Über  Durch  },
		%w{ Daumen  Bücher  Kamele  Beine  },
		%w{ schließen  sammeln  rechnen  stellen  },
		%w{ weit  hungrig  groß  nah  },
		%w{ obwohl  wegen  weder  dass  },
		%w{ Sonne  Wiese  Uhr  Puppe  },
		%w{ unter  drin  durch  von  },
		%w{ blickt  schläft  spült  schlägt  },
		%w{ Natur  Truhe  Schuhe  Schlüssel  },
		%w{ baut  backt  fragt  lernt  },
		%w{ zu  mitten  vom  über  },
		%w{ Bilder  Luft  Bisse  Kälte  },
		%w{ Wenn  Anstatt  Als  Bevor  },
		%w{ sandig  reich  leise  süß  },
		%w{ Pilze  Früchte  Frösche  Zähne  },
		%w{ Qual  Dusche  Schwester  Hütte  },
		%w{ eckige  runde  hohe  dicke  },
		%w{ Rinde  Blume  Biene  Nase  },
		%w{ Dafür  Während  Weder  Außer  },
		%w{ neben  unter  für  auf  },
		%w{ fährt  dreht  isst  läuft  },
		%w{ Häuser  Bären  Enten  Haare  },
		%w{ Durch  Drin  Auf  Aus  },
		%w{ triffst  wartest  liebst  entfernst  },
		%w{ Wasser  Bett  Löwen  Tuch  },
		%w{ kaltes  rundes  hohes  neues  },
		%w{ wegen  davon  damit  außer  },
		%w{ schuldig  spitz  lieb  laut  },
		%w{ außer  bevor  weil  davon  },
		%w{ rennt  kaut  kauft  brät  },
		%w{ Hase  Zahn  Rock  Sand  },
		%w{ Flasche  Tafel  Tür  Brücke  },
		%w{ mit  zu  zwischen  für  },
		%w{ Büro  Juni  Spaß  Maß  }
]
categories_n4 = %W{
	1
	2
	3
	1
	2
	3
	1
	1
	3
	3
	2
	2
	3
	2
	1
	3
	2
	1
	3
	2
	3
	1
	1
	2
	1
	3
	2
	3
	1
	2
	2
	3
	1
	3
	2
	1
	2
	3
	1
	3
	2
	1
	1
	2
	1
	3
	3
	2
	1
	3
	2
	1
	2
	3
	2
	3
	2
	1
	1
	3
	1
}

t = TestSEL.create(name: "Sinnentnehmendes Lesen",  info: "Sinnentnehmendes Lesen N4", shorthand: "SEL4",len: 63, time: 480, subject: "Deutsch", construct: "Sinnentnehmendes Lesen", student_access:true, archive: false, level: "N4")

i = t.items.build(itemtext: "Hallo", difficulty: 0, itemtype:-1, itemview: "items/studentbased/sinnentnehmender_lesetest/1hallo")
i.save

i = 0
while i<items_n4.size do
	it = t.items.build(itemtext: before_gap_part_n4[i] + "{" + item_alternatives_n4[i].join(",") + "}" + after_gap_part_n4[i], shorthand: items_n4[i], difficulty: categories_n4[i], itemtype: 0, itemview: "items/studentbased/sinnentnehmender_lesetest/2testItemStudent")
	it.save
	i = i+1
end

it = t.items.build(itemtext: "Ende", difficulty: 1, itemtype:1, itemview:"items/studentbased/sinnentnehmender_lesetest/3ende")
it.save
t.save




# Für die feste Reihenfolge
items_n2 = %w{
	lerne
	hell
	Ende
	Bruder
	hell
	Kuchen
	Fibel
	Schule
	leben
	Dose
	male
	schnell
	Bein
	laufen
	schweren
	Wasser
	Abend
	Keks
	Lieder
	kalt
	Eier
	besucht
	Brot
	Namen
	scharfe
	Fahrrad
	wartet
	kleinen
	Berg
	bade
	Pause
	faul
	Schweine
	baden
	Taschen
	blau
	Ausflug
	reiten
	heimlich
	Buch
	Mofas
	Abfall
	tief
	Boden
	sieht
	allein
	Traktor
	schlaue
	trinkt
	Kinder
	Film
	tollen
	Ampel
	Kater
	lange
	Weg
	hebt
	Milch
	ruft
	Opa
	leere
	Wand
	Auto
	Sofa
	schwimmen
	Seife
}

item_alternatives_n2 = [
		%w{ liege  tauche  lerne  reise  },
		%w{ tief  eng  hell  langsam  },
		%w{ Ende  Anfang  Plan  Kamm  },
		%w{ Bruder  Kopf  Sinn  Schatten  },
		%w{ lila  dunkel  hell  traurig  },
		%w{ Kuli  Kater  Kuchen  Uli  },
		%w{ Feder  Fibel  Leiter  Lupe  },
		%w{ Bibel  Schule  Schafe  Schuhe  },
		%w{ rutschen  leben  arbeiten  legen  },
		%w{ Dose  Lawine  Rose  Nadel  },
		%w{ lache  sehe  tobe  male  },
		%w{ schnell  weich  rosa  dumm  },
		%w{ Tal  Meer  Geschenk  Bein  },
		%w{ baden  leiden  laufen  klauen  },
		%w{ runden  breiten  schweren  dunklen  },
		%w{ Wal  Weg  Wasser  Wagen  },
		%w{ Baum  Abend  Mann  Boden  },
		%w{ Karo  Keks  Tag  Reis  },
		%w{ Berge  Lieder  Schatten  Ideen  },
		%w{ lang  warm  blau  kalt  },
		%w{ Eier  Essen  Fische  Wunden  },
		%w{ kauft  macht  rennt  besucht  },
		%w{ Bisons  Brot  Butter  Schatten  },
		%w{ Reifen  Samen  Ofen  Namen  },
		%w{ tiefe  scharfe  weiche  schlaue  },
		%w{ Ball  Ufer  Fahrrad  Kegel  },
		%w{ hebt  rennt  wartet  wirft  },
		%w{ kleinen  schlauen  klugen  faulen  },
		%w{ Bus  Berg  Baum  Fluss  },
		%w{ bade  dusche  finde  lese  },
		%w{ Pause  Leiter  Raupe  Woche  },
		%w{ faul  falsch  sicher  kalt  },
		%w{ Schweine  Leben  Schriften  Augen  },
		%w{ fallen  baden  bitten  glauben  },
		%w{ Leben  Taucher  Taschen  Daumen  },
		%w{ lau  blau  bitter  leicht  },
		%w{ Ausflug  Abfluss  Fisch  Hafer  },
		%w{ reisen  reiten  werfen  freuen  },
		%w{ heimlich  wund  langsam  lieb  },
		%w{ Bein  Eis  Buch  Auge  },
		%w{ Blumen  Sofas  Mofas  Flaschen  },
		%w{ Abfall  Sinn  Bau  Abend  },
		%w{ schwer  falsch  gelb  tief  },
		%w{ Mut  Kanal  Boden  Fisch  },
		%w{ freut  singt  sieht  weint  },
		%w{ rosa  allein  hell  leer  },
		%w{ Traktor  Salat  Reiter  Tuch  },
		%w{ harte  schlaue  giftige  graue  },
		%w{ trinkt  glaubt  taucht  sucht  },
		%w{ Hosen  Wege  Tische  Kinder  },
		%w{ Igel  Maler  Berg  Film  },
		%w{ runden  nassen  kalten  tollen  },
		%w{ Tafel  Gabel  Ampel  Ruhe  },
		%w{ Kater  Finger  Bauch  Tod  },
		%w{ lange  kluge  kranke  liebe  },
		%w{ Pudel  Wurm  Ofen  Weg  },
		%w{ leiht  heilt  feilt  hebt  },
		%w{ Milch  Mutter  Watte  Tasse  },
		%w{ fegt  schwimmt  geht  ruft  },
		%w{ Opa  Sonntag  Baum  Ofen  },
		%w{ leere  blinde  arme  schwache  },
		%w{ Kabel  Wand  Welt  Gabel  },
		%w{ Haus  Auto  Auge  Hund  },
		%w{ Tor  Sofa  Mond  Wasser  },
		%w{ grillen  schwimmen  wohnen  rennen  },
		%w{ Kuchen  Sand  Taler  Seife  }
]


before_gap_part_n2 = [
    "Ich",
    "Die Sonne scheint",
    "Am",
    "Mama holt meinen",
    "Morgens wird es",
    "Wir essen den",
    "In meiner",
    "Lisa geht in die",
    "Im Wald",
    "In der",
    "Ich",
    "Leon rennt",
    "Eine Frau gewinnt ein",
    "Wir",
    "Mein Papa hat einen",
    "Das Kanu schwimmt auf dem",
    "Am",
    "Ich gebe ihr einen",
    "Die",
    "Im Winter sind die Tage",
    "Ein Huhn legt",
    "Meine Oma",
    "Enten essen gerne",
    "",
    "Der Wolf hat",
    "Ich fahre auf einem",
    "Anna",
    "Wir reisen mit einer",
    "Eine Frau rodelt den",
    "Ich",
    "Wir machen eine",
    "Oft sind Esel",
    "Der Bauer hat drei",
    "Sonntags muss Bello immer",
    "Die Kinder legen ihre",
    "Der Kuli schreibt",
    "Sie kommt auf den",
    "Lina und Frida",
    "In der Klasse kichern wir",
    "Wir lesen ein",
    "Die",
    "Susi wirft den",
    "Meere sind",
    "Ich laufe auf dem",
    "Tom",
    "Ali sucht",
    "Wir fahren auf dem",
    "Lea und Lara sind",
    "Lino",
    "Die",
    "Ich schaue einen",
    "Marie hat einen",
    "Die",
    "Peter findet seinen",
    "Ich trage eine",
    "Wir laufen den",
    "Lisa",
    "Ich trinke meine",
    "Anton",
    "Ich warte auf meinen",
    "Tina gibt mir eine",
    "Der Mann rennt gegen die",
    "Ein",
    "Olaf liegt auf dem",
    "Die Kinder",
    "Ich wasche mich mit",
]
after_gap_part_n2 = [
    "in der Schule.",
    ".",
    "sind wir fertig",
    "ab.",
    ".",
    "auf.",
    "sind bunte Bilder.",
    ".",
    "Tiere.",
    "sind Kekse.",
    "Mama ein Bild.",
    ".",
    ".",
    "zu dem Lager.",
    "Tag.",
    ".",
    "gehe ich ins Bett.",
    "ab.",
    "sind laut.",
    ".",
    ".",
    "mich immer sonntags.",
    ".",
    "sind an jedem Auto.",
    "Krallen.",
    ".",
    "an der roten Ampel.",
    "Bahn.",
    "hinunter.",
    "gerne im See.",
    ".",
    ".",
    ".",
    ".",
    "ab.",
    ".",
    "nach",
    "im Wald.",
    ".",
    ".",
    "fahren langsam.",
    "weg.",
    ".",
    ".",
    "traurig aus.",
    ".",
    ".",
    "Kinder.",
    "eine Limo.",
    "schauen ein Bild an.",
    ".",
    "Traum.",
    "blinkt gelb.",
    "wieder.",
    "Hose.",
    "ab.",
    "eine Lupe auf.",
    ".",
    "Ina.",
    ".",
    "Tasse.",
    ".",
    "hat eine Hupe.",
    ".",
    "im Wasser.",
    "."
]

categories_n2 = %w{
	2
	2
	1
	1
	2
	1
	1
	1
	2
	1
	2
	2
	1
	2
	2
	1
	1
	1
	1
	2
	1
	2
	1
	1
	2
	1
	2
	2
	1
	2
	1
	2
	1
	2
	1
	2
	1
	2
	2
	1
	1
	1
	2
	1
	2
	2
	1
	2
	2
	1
	1
	2
	1
	1
	2
	1
	2
	1
	2
	1
	2
	1
	1
	1
	2
	1
}



tN2 = TestSEL.create(name: "Sinnentnehmendes Lesen", len: 68, info: "Sinnentnehmendes Lesen N2", shorthand: "SEL2",
										 subject: "Deutsch", construct: "Sinnentnehmendes Lesen", student_access:true, archive: false, level: "N2", time: 480)
i = tN2.items.build(itemtext: "Hallo", difficulty: 0, itemtype:-1, itemview: "items/studentbased/sinnentnehmender_lesetest/1hallo")
i.save

i = 0
while i<items_n2.size do
	it = tN2.items.build(itemtext: before_gap_part_n2[i] + "{" + item_alternatives_n2[i].join(",") + "}" + after_gap_part_n2[i], shorthand: items_n2[i], difficulty: categories_n2[i], itemtype: 0, itemview: "items/studentbased/sinnentnehmender_lesetest/2testItemStudent")
	it.save
	i = i+1
end
it = tN2.items.build(itemtext: "Ende", difficulty: 1, itemtype:1, itemview:"items/studentbased/sinnentnehmender_lesetest/3ende")
it.save
tN2.save





before_gap_part_n6 = [
	"Die meisten Schülerinnen und Schüler, die fleißig lernen, schreiben" ,
	"Er versicherte mir, dass er mir das Geld zurückzahlt, sobald sich seine Lage",
	"Ole, der mit seinem neuen Ball kickt, verbietet Jan mit ihm zusammen zu",
	"Lars, der seinen Geldbeutel auf dem Weg zum Laden verloren hat, wird viel Ärger wegen des" ,
	"Ich hoffe, dass du nichts dagegen hast, wenn ich mir das Buch" ,
	"Da eine Party eine gute Gelegenheit ist um sich kennenzulernen, möchte ich meine Nachbarn" ,
	"Da Paul mehr Geld benötigt, versucht er es zu" ,
	"Als ich klein war, wollte ich immer auf den Spielplatz um zu" ,
	"Pauls Freundin, die ihn sehr" ,
	"Das teure Baumaterial, was beim Einkauf sehr teuer war, ist sehr" ,
	"Das Rohr ist, nachdem es vom Balkon gefallen war, völlig",
	"Uwes Witz, der sehr lustig war, hat" ,
	"Am Strand, dort wo der Horizont gut zu sehen ist, sieht man wunderschöne" ,
	"Das Licht erhellt, obwohl die Vorhänge zugezogen sind, den Raum" ,
	"Obwohl Peter keine Vögel mag," ,
	"Selbst wenn wir rennen,",
	"Selbst wenn es schneit," ,
	"Auch wenn wir früher losfahren, werden wir" ,
	"Der Student ist durch die Prüfung gefallen, obwohl er" ,
	"Mama geht heute arbeiten, obwohl sie" ,
	"Zwar ist die Aufgabe einfach, aber ich verstehe sie trotzdem" ,
	"Trotz der langen Reise waren wir" ,
	"Pia isst jeden Tag im Restaurant, obwohl sie" ,
	"Trotz der Warnung seiner Freunde machte sich Benjamin auf die" ,
	"Obwohl der Schauspieler sehr" ,
	"Der Angestellte geht nicht zur Arbeit, obwohl er" ,
	"Auch wenn das Wetter gut wäre, würden wir" ,
	"Obwohl Pia großen Hunger hat, isst sie",
	"Um 23:33 Uhr kamt ihr am Bahnhof an. Sophia war dort, um",
	"Claudia muss heute als Hausaufgabe eine lange Geschichte lesen.",
	"Mama und ich machen einen gemeinsamen Ausflug in den Zoo.",
	"Auf der Party lernte Thomas Nele kennen. Sein bester Freund hatte ihm schon von",
	"Kühe legen keine Eier, sondern bringen ihre Jungen lebend zur Welt. Nach der Geburt trinken",
	"Anna ist mit ihren Eltern in den Ferien ans Meer gefahren.",
	"Die Eltern verbieten Marie und Paul bei dem kalten Wetter draußen zu spielen. Sie helfen",
	"Jens fragt: „Kennst du den neuen Mitschüler in unserer Klasse?“. „",
	"Ich mag meine Großeltern sehr. Bei",
	"Der Schiedsrichter erteilt dem fremden Zuschauer einen Platzverweis.",
	"Thorsten fragt: „Hast du meine Brille gesehen?“. Seine Mama vermutet, dass",
	"Jonathan hat sich ein neues Motorrad gekauft.",
	"Ben ist in Anna verliebt. Er schenkt",
	"Der Lehrer fragt den Schüler nach der richtigen Antwort. Aber",
	"Mit der Familie sind wir an Meer gefahren.",
	"Mein bester Freund hat mich gefragt: „Hast du eine neue Hose?“. Da ich mit meinem Papa shoppen war, habe ich geantwortet: „",
	"Max hat das Spielzeugauto seines kleinen Bruders Liam ausversehen heruntergeschmissen. Liam schreit: „Ich sage Mama, dass",
	"Mein Chirurg wurde wütend, weil ich nach der Operation alleine nach Hause gefahren bin. Nach meiner zweiten Operation bestand mein",
	"Der Polizist verteilt in der Nachbarschaft Strafzettel. Ein Mann wurde wütend, als der",
	"Im Krankenhaus bringen die Krankenschwestern meinen Papa das Essen. Die" ,
	"Papa ist sauer, weil unser Wagen in die Werkstatt muss. Das" ,
	"Weil es am Wochenende warm werden soll, gehe ich mit meinen Freunden ins Freibad. Das" ,
	"Peter und Anna sehen sich zusammen einen Film im Kino an. Gerade wird auf der großen",
	"Der Autofahrer hupt, weil die Frau das Auto nicht bemerkt. Die",
	"Für unser Essen heute Abend müssen wir noch einkaufen gehen. Eine Liste der benötigten",
	"In ihrem Urlaub sind Tom und Lisa ans Meer gefahren. Sie sind oft im",
	"Das Gemälde im Museum, das von einem berühmten Künstler gemalt wurde, ist sehr teuer. Yannick findet das",
	"Das blaue Haus, das alleine auf der Wiese steht, ist schon sehr alt. Das kann man daran erkennen, dass die Farbe an dem" ,
	"Hans, der gerne liest, geht häufig in die Bücherei, um sich Bücher auszuleihen. Dort in der" ,
	"Ein Fahrer steigt in sein Auto und gibt das Ziel in das Navigationsgerät ein. Er findet den richtigen" ,
	"Lukas kauft neue Blumen für den Garten. Zuhause gräbt er die",
	"Alle Schüler holen ihre Mappen heraus. Sie",
	"In der Europäischen Union kann man in fast alle Länder mit dem Euro bezahlen. Das" ,
	"Lars hat zu seinem Geburtstag viele Kinder eingeladen. Sie",
	"Es wird ziemlich kalt im Zimmer. Ole fragt Peter, ob er das Fenster" ,
	"Lisa und Jonathan möchten beide vorne im Auto sitzen. Sie" ,
	"Das Orchester beginnt mit dem Konzert. Die Zuhörer",
	"Als die Vorstellung zu Ende ist, gibt es viel Applaus. Wir",
	"Bernhardt verletzte sich beim Fußball. George",
	"Pia und Jonas warten auf den Zug. Endlich",
	"Tom schießt beim Fußball sein erstes Tor. Die Zuschauer",
	"Mama kauft im Supermarkt Lebensmittel ein. Sie",
	"Papa fährt immer mit dem Auto zur Arbeit. Auf dem Rückweg muss er manchmal",
	"Mein Bruder ist mit dem Auto gegen eine Laterne gefahren. Mama und Papa sind deshalb sehr",
	"Plötzlich fängt es stark an zu regnen. Daher bittet mich Annette schnell die Fenster zu",
	"Vögel schlucken ihre Nahrung im Ganzen herunter. Mein Wellensichtig",
	"Heute war ich mit meinem Skateboard auf der Halfpipe. Ich habe das erste Mal meinen neuen",
	"Die Stunde begann. Ein paar",
	"Schade, dass der Sommer schon wieder vorbei ist. In ein paar",
	"Ich habe vergessen vor dem Urlaub die Blumen zu gießen. Wenn ich in ein paar",
	"Heute genießen wir den letzten Tag des Wochenendes.",
	"Max feiert heute im Kindergarten seinen 5. Geburtstag. Nächstes",
	"Mira ist gerade in den Zug nach Hause gestiegen. Sie wird",
	"Moritz und Max laufen in der großen Pause um die Wette. Max ist zehn",
	"Viele unserer Bäume verlieren einmal im Jahr ihre Blätter. Nur Nadelbäume sind auch im",
	"In den letzten Jahrzehnten wurde sehr viel Müll in die Meere gekippt. An den Folgen sterben",
	"Im Mittelalter wurden Hexen verbrannt.",
	"Die Sekretärin lachte laut im Vorzimmer. Frau Schmidt machte ihre",
	"Als die Schulglocke ein zweites Mal ertönt, laufen alle Kinder schnell in ihr",
	"Heute ist schönes Wetter, da die Sonne die ganze Zeit scheint. Deshalb verbringen wir den Tag",
	"Viele Kinder möchten heute Schaukeln. Es bildet sich eine lange Schlange auf dem"	,
	"Lisa möchte mit ihren Hausaufgaben beginnen. Dafür setzt sie sich an ihren",
	"Jeden Samstag ist in der Stadt Wochenmarkt. An vielen",
	"An der Bahnstation steht immer eine Anzeigetafel mit den Abfahrtszeiten. Deswegen"	,
	"Im Park spielt Jannis mit seinen Freunden Fußball auf dem Rasenplatz. Die",
	"Viele Schiffen sind heute aus dem Hafen ausgelaufen. Deswegen sind viele"
]

after_gap_part_n6 = [
	"Noten." ,
	"hat.",
	".",
	"Geldes bekommen.",
	".",
	".",
	", indem er Zeitungen austrägt.",
	".",
	", möchte ihn trotzdem nicht heiraten." ,
	".",
	".",
	"zum Lachen gebracht.",
	".",
	".",
	"er den Vogelpark." ,
	"wir den Zug." ,
	"Lisa die weite Strecke zur Arbeit. ",
	"einen Parkplatz finden.",
	"gelernt hat." ,
	"krank ist." ,
	".",
	".",
	"Geld verdient." ,
	"Reise." ,
	"ist, bekommt er keine Rollen angeboten. ",
	"zu erledigen hat.",
	"Ausflüge machen." ,
	".",
	"zu begrüßen.",
	"hat keine Lust ihre Hausaufgaben zu machen. ",
	"sehen viele Tiere, die ich noch nicht kannte." ,
	"erzählt.",
	"bei ihrer Mutter Milch." ,
	"ist türkis und die Wellen sind hoch.",
	"beim Kuchen backen." ,
	"habe ich noch nie gesehen“, antwortet Ahmet.",
	"war ich neulich zu Besuch. " ,
	"muss nun den Platz verlassen. ",
	"auf dem Küchentisch liegt.",
	"soll sehr schnell fahren können.",
	"oft Blumen. ",
	"antwortet ihm nicht.",
	"hat der Urlaub gut gefallen. " ,
	"habe ich mir gestern gekauft. ",
	"es kaputt gemacht hast.“ " ,
	"darauf, dass ich abgeholt werde.",
	"auch ihm einen Strafzettel an sein falsch geparktes Auto heftet. " ,
	"können nicht verstehen, dass er das Essen nicht mag. " ,
	"ist schon wieder kaputt, da es nicht angesprungen ist. " ,
	"tut bestimmt gut bei der Hitze. ",
	"die Werbung, die immer vor dem Film gezeigt wird, abgespielt." ,
	"erschreckt sich sehr, so dass sie stehen bleibt. " ,
	"hat Mama schon geschrieben. ",
	"gesurft, da es viele Wellen gab. " ,
	"trotzdem hässlich.",
	"schon verblasst ist. " ,
	"sind sowohl neue als auch alte Bücher zu finden. " ,
	"zum Zielort.",
	"direkt in die Erde ein. ",
	"die Arbeitsblätter ein um Ordnung zu schaffen.",
	"muss für Reisen in andere Länder nicht umgetauscht werden.",
	"im Garten.",
	"kann." ,
	"sich um den Platz.",
	"." ,
	"laut mit." ,
	"den Arzt.",
	"er in den Bahnhof ein. ",
	"vor Freude.",
	"viel Geld an der Kasse.",
	", damit er immer gut nach Hause kommt.",
	"auf ihn.",
	".",
	"seine Nahrung auch nicht.",
	"geschafft." ,
	"später war ich eingeschlafen.",
	"ist schon Winter.",
	"nach Hause komme, sind sie bestimmt verwelkt.",
	"ist schon wieder Montag und wir müssen zur Schule gehen.",
	", wenn er sechs wird, wird er eingeschult. ",
	"am Bahnhof ankommen.",
	"schneller ins Ziel gelaufen als Moritz.",
	"grün.",
	"immer noch viele Meerestiere.",
	"glaubten die Menschen auch noch an Zauberei." ,
	"zu.",
	".",
	"." ,
	".",
	".",
	"wird Obst und Gemüse verkauft.",
	"ich die Züge nie." ,
	"ist noch leicht nass vom Regen.",
	"frei." 
]

categories_n6 = %w{
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	1
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	2
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
	3
}

item_alternatives_n6 = [
	%w{	gute	 schlechte	 graue	 viele 	},
	%w{	    verbessert 	 verschlechtert 	 verloren 	 verbrennt 	},
	%w{	     spielen 	 gehen 	 spannen 	 lernen	},
	%w{	    verschwundenen 	 gefundenen 	 verstecktem 	 wiederbekommenen 	},
	%w{	    ausleihe 	 auslege 	 gebe 	 schreibe	},
	%w{	    einladen 	 ausladen 	 einfordern 	 umziehen	},
	%w{	    verdienen 	 stehlen 	 kaufen 	 drehen	},
	%w{	    rutschen 	 schwimmen 	 rascheln 	 platzen	},
	%w{	    liebt 	 hasst 	 lehrt 	 trägt	},
	%w{	    hochwertig 	 langweilig 	 billig 	 hoch	},
	%w{	    verbogen 	 neu 	 rund 	 verrostet	},
	%w{	    Heinrich 	 niemanden 	 Hühner 	 Haufen 	},
	%w{	    Sonnenuntergänge 	 Hochhäuser 	 Sand 	 Sonnenstühle	},
	%w{	    etwas 	 dunkel	 nicht 	 eckig	},
	%w{	    besucht	 verachtet	 verlässt	 bestreut 	},
	%w{	    verpassen 	 bekommen 	 verlieren 	 fahren 	},
	%w{	    läuft 	 setzt 	 schweigt 	 lernst 	},
	%w{	    nie 	 neulich 	 immer 	 lange 	},
	%w{	    viel 	 wenig 	 weich 	 schlecht 	},
	%w{	    sehr 	 nicht 	 neulich 	 fleißig 	},
	%w{	    nicht 	 gut 	 nachts 	 dumm	},
	%w{	    nicht 	 bereits 	 sehr 	 berühmt müde	},
	%w{	    wenig 	 viel 	 arm 	 weit 	},
	%w{	    gefährliche 	 grüne 	 kurze 	 sichere	},
	%w{	    berühmt 	 unbekannt 	 bemalt 	 bedeutungslos 	},
	%w{	    reichlich 	 nichts 	 stark 	 blau 	},
	%w{	    niemals 	 besagte 	 blinde 	 grüne 	},
	%w{	    nichts 	 viel 	 Abendessen 	 Nudeln	},
	%w{	euch 	 uns 	 ihnen 	 sich 	},
	%w{	Sie 	 Er 	 Du 	 Ihr 	},
	%w{	Wir 	 Sie 	 Unser 	 Euch 	},
	%w{	ihr 	 uns 	 ihnen 	 euch 	},
	%w{	sie 	 er 	 ihr 	 wir 	},
	%w{	Es 	 Sie 	 Unser 	 Ihr 	},
	%w{	ihnen 	 euch 	 uns 	 dir 	},
	%w{	Ihn 	 Euch 	 Sie 	 Seiner 	},
	%w{	ihnen 	 sie 	 euch 	 meiner 	},
	%w{	Dieser 	 Sie 	 Ihn 	 Uns 	},
	%w{	sie 	 ihr	 wir	 du 	},
	%w{	Es 	 Seiner 	 Ihm 	 Sie 	},
	%w{	ihr 	 mir 	 uns 	 dir 	},
	%w{	dieser 	 es 	 ihn	 dir 	},
	%w{	Uns 	 Wir 	 Dir 	 Ihm	},
	%w{	Diese 	 Wir 	 Es 	 Du 	},
	%w{	du	 dir 	 er	 ihm	},
	%w{	Arzt 	 Krankenpfleger 	 Therapeut 	 Arbeiter	},
	%w{	Ordnungshüter 	 Verbrecher 	 König 	 Optiker	},
	%w{	Pflegerinnen 	 Feuerwehrmänner 	 Polizistinnen 	 Freundinnen 	},
	%w{	Auto 	 Fahrrad 	 Armband 	 Werkzeug 	},
	%w{	Schwimmen 	 Rennen 	 Schwitzen 	 Schweben 	},
	%w{	Leinwand 	 Decke 	 Latzhose 	 Tür 	},
	%w{	Dame 	 Dose 	 Autotür 	 Giraffe 	},
	%w{	Lebensmittel 	 Kleider 	 Leistungen 	 Geschäfte 	},
	%w{	Ozean 	 Osten 	 Auto 	 Fluss 	},
	%w{	Bild 	 Glas 	 Band 	 Buch 	},
	%w{	Gebäude 	 Fahrzeug 	 Gras 	 Fundort 	},
	%w{	Bibliothek 	 Buchhandlung 	 Apotheke 	 Hundehütte 	},
	%w{	Weg 	 Hügel 	 Flug 	 Knopf 	},
	%w{	Pflanzen 	 Bäume 	 Blüten 	 Pfanne 	},
	%w{	heften 	 schmeißen 	 hoffen 	 schreiben 	},
	%w{	Geld 	 Papier 	 Grab 	 Mitbringsel 	},
	%w{	feiern 	 frieren 	 weinen 	 pflanzen 	},
	%w{	schließen 	 öffnen 	 schrumpfen 	 putzen 	},
	%w{	streiten 	 vertragen 	 verfolgen 	 setzen 	},
	%w{	verstummen 	 plappern 	 vermuten 	 singen direkt	},
	%w{	klatschen 	 schweigen 	 kleben 	 schlagen	},
	%w{	rief 	 flüsterte 	 lief 	 hasste 	},
	%w{	fährt 	 verabschiedet 	 rennt 	 friert 	},
	%w{	jubeln 	 laufen 	 joggen 	 treten 	},
	%w{	bezahlt 	 bezaubert 	 nimmt 	 kauft 	},
	%w{	tanken 	 laufen 	 trinken 	 fahren	},
	%w{	sauer 	 süß 	 neidisch 	 schnell 	},
	%w{	schließen 	 putzen 	 schleifen 	 öffnen	},
	%w{	kaut 	 schluckt 	 kauft 	 fliegt 	},
	%w{	Trick 	 Kuchen 	 Torschuss 	 Helm 	},
	%w{	Minuten 	 Mauern 	 Jahre 	 Folgen 	},
	%w{	Monaten 	 Sekunden 	 Jahreszeiten 	 Monden 	},
	%w{	Tagen 	 Jahren 	 Taufen 	 Ländern 	},
	%w{	Morgen 	 Gestern 	 Mittag 	 Abend 	},
	%w{	Jahr 	 Leben 	 Lachen 	 Jahrtausend	},
	%w{	bald 	 damals 	 fahrend 	 bellend 	},
	%w{	Sekunden 	 Jahre 	 Kilometer 	 Sachen 	},
	%w{	Winter	 Sommer	 Wachstum 	 Juli 	},
	%w{	heutzutage 	 gestern 	 nass 	 grau 	},
	%w{	Damals 	 Bald 	 Übermorgen 	 Dackel 	},
	%w{	Bürotür 	 Gartentür 	 Bücher 	 Schnürsenkel 	},
	%w{	Klassenzimmer 	 Bett 	 Kino 	 Schwimmbad	},
	%w{	draußen 	 drinnen 	 warm 	 versteinert	},
	%w{	Spielplatz 	 Sportplatz 	 Beet 	 See	},
	%w{	Schreibtisch 	 Schrank 	 Drucker 	 Baum	},
	%w{	Ständen 	 Bänken 	 Stunden 	 Feldern 	},
	%w{	verpasse 	 bekomme 	 bemale 	 nehme 	},
	%w{	Wiese 	 Asche 	 Lampe 	 Weide 	},
	%w{	Anlegeplätze 	 Garagen 	 Angler 	 Netze 	}
]

items_n6 = %w{
	gute
	verbessert
	spielen
	verschwundenen
	ausleihe
	einladen
	verdienen
	rutschen
	liebt
	hochwertig
	verbogen
	niemanden
	Sonnenuntergänge
	etwas
	besucht
	verpassen
	läuft
	nie
	viel
	sehr
	nicht
	nicht
	wenig
	gefährliche
	berühmt
	reichlich
	niemals
	nichts
	euch
	Sie
	Wir
	ihr
	sie
	Es
	ihnen
	Ihn
	ihnen
	Dieser
	sie
	Es
	ihr
	dieser
	Uns
	Diese
	du
	Arzt
	Ordnungshüter
	Pflegerinnen
	Auto
	Schwimmen
	Leinwand
	Dame
	Lebensmittel
	Ozean
	Bild
	Gebäude
	Bibliothek
	Weg
	Pflanzen
	heften
	Geld
	feiern
	schließen
	streiten
	verstummen
	klatschen
	rief
	fährt
	jubeln
	bezahlt
	tanken
	sauer
	schließen
	kaut
	Trick
	Minuten
	Monaten
	Tagen
	Morgen
	Jahr
	bald
	Sekunden
	Winter
	heutzutage
	Damals
	Bürotür
	Klassenzimmer
	draußen
	Spielplatz
	Schreibtisch
	Ständen
	verpasse
	Wiese
	Anlegeplätze
}


tN6 = TestSEL.create(name: "Sinnentnehmendes Lesen", len: 96, info: "Sinnentnehmendes Lesen N6", shorthand: "SEL6",
										 subject: "Deutsch", construct: "Sinnentnehmendes Lesen", student_access:true, archive: false, level: "N6", time: 480)
i = tN6.items.build(itemtext: "Hallo", difficulty: 0, itemtype:-1, itemview: "items/studentbased/sinnentnehmender_lesetest/1hallo")
i.save

i = 0
while i<items_n6.size do
	it = tN6.items.build(itemtext: before_gap_part_n6[i] + "{" + item_alternatives_n6[i].join(",") + "}" + after_gap_part_n6[i], 
		shorthand: items_n6[i], difficulty: categories_n6[i], itemtype: 0, itemview: "items/studentbased/sinnentnehmender_lesetest/2testItemStudent")
	it.save
	i = i+1
end
it = tN6.items.build(itemtext: "Ende", difficulty: 1, itemtype:1, itemview:"items/studentbased/sinnentnehmender_lesetest/3ende")
it.save
tN6.save