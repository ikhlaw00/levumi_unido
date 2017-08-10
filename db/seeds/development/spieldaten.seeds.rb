# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.create(name: "Herr Soundso", email: "test@test.com", password: "123", password_confirmation: "123", capabilities: "admin")
g = u.groups.build(name: "10a")
g.save
s = g.students.build(name: "Adam")
s.save
s = g.students.build(name: "Eva")
s.save

t = TestSpeed.create(name: "Lesetest", len: 4, info: "Lesetest für die Grundschule, 1. Klasse", short_info:  "Lesetest für die Grundschule, 1. Klasse",
                     subject: "Deutsch", construct: "Lesen", archive: false, level: "Level 0", time: 60, student_access: false)
it = t.items.build(itemtext: "Preparation", difficulty: 0, itemtype:-1, itemview:"
<div class='modal-content'>
  <div class='modal-header'>
    <button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
    <h4 class='modal-title' id='mainModalHeader'></h4>
  </div>
  <div class='modal-body' id='modalBody'>
    <br/>
    <br/>
    <br/>
    <p style='font-family: fibel_nordregular; font-size:96px' id='itemText' class='text-center'>
      Test
    </p>
    <br/>
    <br/>
    <br/>
  </div>
  <div class='modal-footer' style='text-align: center'>
    <button id='cButton' type='button' class='btn btn-default btn-lg' onclick='cButtonClick()'>Schrift größer</button>
    <button id='sButton' type='button' class='btn btn-success' onclick='sButtonClick()'>Test starten</button>
    <button id='iButton' type='button' class='btn btn-default btn-lg' onclick='iButtonClick()'>Schrift kleiner</button>
  </div>
</div>


<script>
    var tempText = (document.getElementById('itemText'));
    function cButtonClick() {
        curSize=parseInt(tempText.style.fontSize) + 10;
        tempText.style.fontSize = curSize + 'px';
    }

    function iButtonClick() {
        curSize = parseInt(tempText.style.fontSize) - 10;
        tempText.style.fontSize = curSize + 'px';
    }

    function sButtonClick() {
        timeoutId = window.setTimeout(timedOut, workTime +500, true);
        currentResult = currentResult + '0,';
        nextItem();
    }

</script>")
it.save

items = %w{
haha
hoha
huho
laho
}
i=0
while i<items.size do
  it = t.items.build(itemtext: items[i] , difficulty: 0.4, itemtype:0, itemview:"
<div class='modal-content'>
  <div class='modal-header'>
    <button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
    <h4 class='modal-title' id='mainModalHeader'></h4>
  </div>
  <div class='modal-body' id='modalBody'>
    <br/>
    <br/>
    <br/>
    <p style='font-family: fibel_nordregular; font-size:96px' id='itemText' class='text-center'>"+
      items[i] +
    "</p>
    <br/>
    <br/>
    <br/>
  </div>
  <div class='modal-footer' style='text-align: center'>
    <button id='cButton' type='button' class='btn btn-success btn-lg' onclick='cButtonClick()'>Richtig (Taste: 1)</button>
    <button id='sButton' type='button' class='btn btn-default disabled'>Test starten</button>
    <button id='iButton' type='button' class='btn btn-danger btn-lg' onclick='iButtonClick()'>Falsch (Taste: 0)</button>
  </div>
</div>


<script>
    $(window).keydown(function(event) {
        switch (event.keyCode) {
            case 49:
            case 97:
                $(window).unbind('keydown');
                cButtonClick();
                break;
            case 48:
            case 96:
                $(window).unbind('keydown');
                iButtonClick();
                break;

        }
    });

    var tempText = (document.getElementById('itemText'));
    tempText.style.fontSize = curSize + 'px';

    function cButtonClick() {
        stopwatch = new Date() - stopwatch;
        currentTimes = currentTimes + stopwatch + ',';
        currentResult = currentResult + '1,';
        $(window).unbind('keydown');
        nextItem();
    }

    function iButtonClick() {
        stopwatch = new Date() - stopwatch;
        currentTimes = currentTimes + stopwatch + ',';
        currentResult = currentResult + '0,';
        $(window).unbind('keydown');
        nextItem();
    }

</script>")
  it.save
  i= i+1
end

it = t.items.build(itemtext: "Ende", difficulty: 0, itemtype:1, itemview:"
<div class='modal-content'>
  <div class='modal-header'>
    <button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
    <h4 class='modal-title' id='mainModalHeader'></h4>
  </div>
  <div class='modal-body' id='modalBody'>
    <br/>
    <br/>
    <br/>
    <p class='text-center'>
      <img id='pic' style='width: 250px;'/>
      <br/>
      <br/>
      <br/>
    </p>
    <p class='text-center' style='font-size: 24px' id='status'>
      <br/>
      <br/>
      <br/>
    </p>
    <br/>
    <br/>
    <br/>
  </div>
  <div class='modal-footer' style='text-align: center'>
    <button id='cButton' type='button' class='btn btn-default btn-lg disabled'>Richtig (Taste: 1)</button>
    <button id='sButton' type='button' class='btn btn-default disabled'>Test starten</button>
    <button id='iButton' type='button' class='btn btn-default btn-lg disabled'>Falsch (Taste: 0)</button>
  </div>
</div>


<script>
    var tempPic = (document.getElementById('pic'));
    var tempStatus = (document.getElementById('status'));
    var tempStudentButton = (document.getElementById('btn'+ currentStudent));

    if (lastResults[currentStudent] >= 0 && lastResults[currentStudent] < currentResult.split('1').length)
        tempPic.src = '/images/Levumi-jubelt.gif';
    else if(lastResults[currentStudent] == -1)
        tempPic.src = '/images/Levumi-normal-blau.jpg';
    else
        tempPic.src = '/images/Levumi-weiterlesen.gif';

    if (timedout)
        tempStatus.innerHTML = 'Zeit abgelaufen.<br/>Die Testergebnisse wurden gespeichert!<br/>Sie können das Testfenster nun schließen.';
    else
        tempStatus.innerHTML = 'Alle Items beantwortet.<br/>Die Testergebnisse wurden gespeichert!<br/>Sie können das Testfenster nun schließen.';

    tempStudentButton.classList.add('btn-success')
</script>")
it.save

a = g.assessments.build(test_id: t.id)
a.save

m = a.measurements.build(date: Date.yesterday)
m.save


m = a.measurements.build(date: Date.today)
m.save


m = a.measurements.build(date: Date.tomorrow)
m.save

t = TestScreening.create(name: "Mathetest", len: 4, info: "Mathetest für die Grundschule, 1. Klasse", short_info:  "Mathetest für die Grundschule, 1. Klasse",
                     subject: "Mathematik", construct: "Lesen", archive: false, level: "Level 0", student_access: false)
it = t.items.build(itemtext: "Preparation", difficulty: 0, itemtype:-1, itemview:"
<div class='modal-content'>
  <div class='modal-header'>
    <button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
    <h4 class='modal-title' id='mainModalHeader'></h4>
  </div>
  <div class='modal-body' id='modalBody'>
    <br/>
    <br/>
    <br/>
    <p style='font-family: fibel_nordregular; font-size:96px' id='itemText' class='text-center'>
      Test
    </p>
    <br/>
    <br/>
    <br/>
  </div>
  <div class='modal-footer' style='text-align: center'>
    <button id='cButton' type='button' class='btn btn-default btn-lg' onclick='cButtonClick()'>Schrift größer</button>
    <button id='sButton' type='button' class='btn btn-success' onclick='sButtonClick()'>Test starten</button>
    <button id='iButton' type='button' class='btn btn-default btn-lg' onclick='iButtonClick()'>Schrift kleiner</button>
  </div>
</div>


<script>
    var tempText = (document.getElementById('itemText'));
    function cButtonClick() {
        curSize=parseInt(tempText.style.fontSize) + 10;
        tempText.style.fontSize = curSize + 'px';
    }

    function iButtonClick() {
        curSize = parseInt(tempText.style.fontSize) - 10;
        tempText.style.fontSize = curSize + 'px';
    }

    function sButtonClick() {
        currentResult = currentResult + '0,';
        nextItem();
    }

</script>")
it.save

items = %w{
1
2
3
4
}
i=0
while i<items.size do
  it = t.items.build(itemtext: items[i] , difficulty: 0.4, itemtype:0, itemview:"
<div class='modal-content'>
  <div class='modal-header'>
    <button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
    <h4 class='modal-title' id='mainModalHeader'></h4>
  </div>
  <div class='modal-body' id='modalBody'>
    <br/>
    <br/>
    <br/>
    <p style='font-family: fibel_nordregular; font-size:96px' id='itemText' class='text-center'>"+
      items[i] +
      "</p>
    <br/>
    <br/>
    <br/>
  </div>
  <div class='modal-footer' style='text-align: center'>
    <button id='cButton' type='button' class='btn btn-success btn-lg' onclick='cButtonClick()'>Richtig (Taste: 1)</button>
    <button id='sButton' type='button' class='btn btn-default disabled' onclick='sButtonClick()'>Test starten</button>
    <button id='iButton' type='button' class='btn btn-danger btn-lg' onclick='iButtonClick()'>Falsch (Taste: 0)</button>
  </div>
</div>


<script>
    $(window).keydown(function(event) {
        switch (event.keyCode) {
            case 49:
            case 97:
                $(window).unbind('keydown');
                cButtonClick();
                break;
            case 48:
            case 96:
                $(window).unbind('keydown');
                iButtonClick();
                break;

        }
    });

    var tempText = (document.getElementById('itemText'));
    tempText.style.fontSize = curSize + 'px';

    function cButtonClick() {
        stopwatch = new Date() - stopwatch;
        currentTimes = currentTimes + stopwatch + ',';
        currentResult = currentResult + '1,';
        $(window).unbind('keydown');
        nextItem();
    }

    function iButtonClick() {
        stopwatch = new Date() - stopwatch;
        currentTimes = currentTimes + stopwatch + ',';
        currentResult = currentResult + '0,';
        $(window).unbind('keydown');
        nextItem();
    }

</script>")
  it.save
  i= i+1
end

it = t.items.build(itemtext: "Ende", difficulty: 0, itemtype:1, itemview:"
<div class='modal-content'>
  <div class='modal-header'>
    <button type='button' class='close' data-dismiss='modal' aria-label='Close'><span aria-hidden='true'>&times;</span></button>
    <h4 class='modal-title' id='mainModalHeader'></h4>
  </div>
  <div class='modal-body' id='modalBody'>
    <br/>
    <br/>
    <br/>
    <p class='text-center'>
      <img id='pic' style='width: 250px;'/>
      <br/>
      <br/>
      <br/>
    </p>
    <p class='text-center' style='font-size: 24px' id='status'>
      <br/>
      <br/>
      <br/>
    </p>
    <br/>
    <br/>
    <br/>
  </div>
  <div class='modal-footer' style='text-align: center'>
    <button id='cButton' type='button' class='btn btn-default btn-lg disabled'>Richtig (Taste: 1)</button>
    <button id='sButton' type='button' class='btn btn-default disabled'>Test starten</button>
    <button id='iButton' type='button' class='btn btn-default btn-lg disabled'>Falsch (Taste: 0)</button>
  </div>
</div>


<script>
    var tempPic = (document.getElementById('pic'));
    var tempStatus = (document.getElementById('status'));
    var tempStudentButton = (document.getElementById('btn'+ currentStudent));

    if (lastResults[currentStudent] >= 0 && lastResults[currentStudent] < currentResult.split('1').length)
        tempPic.src = '/images/Levumi-jubelt.gif';
    else if(lastResults[currentStudent] == -1)
        tempPic.src = '/images/Levumi-normal-blau.jpg';
    else
        tempPic.src = '/images/Levumi-weiterlesen.gif';

    if (timedout)
        tempStatus.innerHTML = 'Zeit abgelaufen.<br/>Die Testergebnisse wurden gespeichert!<br/>Sie können das Testfenster nun schließen.';
    else
        tempStatus.innerHTML = 'Alle Items beantwortet.<br/>Die Testergebnisse wurden gespeichert!<br/>Sie können das Testfenster nun schließen.';

    tempStudentButton.classList.add('btn-success')
</script>")
it.save

a = g.assessments.build(test_id: t.id)
a.save

m = a.measurements.build(date: Date.yesterday)
m.save

t = TestKeyboard.create(name: "Tastaturschulung",len: 1, info: "Einführung in die Tastatur", short_info:
    "", subject: "Deutsch", construct: "Rechtschreibung", archive: false, level: "Level 0", student_access:true)
i = t.items.build(itemtext: "Hallo", difficulty: 0, itemtype:-31, mediapath: "/audio/Anweisungen/1_Hallo_ich_bin_Levumi.mp3", itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„Hallo ich bin Levumi. Ich möchte heute mit dir üben, auf der Tastatur von einem Computer zu schreiben. Bitte höre mir ganz genau zu, damit du weisst, was du tun sollst. Bitte drücke jetzt irgendeine Taste auf der Tastatur, damit wir beginnen können.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/></p><br /><br /><br /><footer><div align='center' style='font-family: fibel_nordregular;font-size:60px'>Weiter: Irgendeine Taste</div></footer><script>var tempAudio = (document.getElementById('audioItem'));tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); $(window).keyup(function (event) {$(window).unbind('keyup'); nextItem();})</script>")
i.save
i = t.items.build(itemtext: "Eingabetaste", difficulty: 0, itemtype:-30, mediapath: "/audio/Anweisungen/1_Eingabetaste.mp3",itemview:"<audio id='audioItem' ></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„Um zur nächsten Aufgabe zu kommen, drücke die Eingabetaste. Auf dem Bild siehst du, wo sie zu finden ist. Probiere sie jetzt aus.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='width: 650px;margin-left: 125px' src='/images/Tastatur_Eingabetaste.png'/></p><br /><br /><footer><table align='center'><tr>><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play();  $(window).keyup(function (event) {if(event.keyCode == 13) {$(window).unbind('keyup'); nextItem();}})</script>")
i.save
i = t.items.build(itemtext: "Super", difficulty: 0, itemtype:-28, mediapath: "/audio/Anweisungen/3_Super_Taste_gefunden.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„Hier siehst du auf dem Bild einen Kopfhörer. Immer, wenn du den Kopfhörer siehst, musst du gut zuhören, damit du genau weißt, was du tun sollst.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='width: 150px;margin-left: 125px' src='/images/headphones.png'/></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); window.setTimeout(nextItem, 2500, true)</script>")
i.save
i = t.items.build(itemtext: "Kopfhörer", difficulty: 0, itemtype:-27, mediapath: "/audio/Anweisungen/2a_Kopfhörer.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„Hier siehst du auf dem Bild einen Kopfhörer. Immer, wenn du den Kopfhörer siehst, musst du gut zuhören, damit du genau weißt, was du tun sollst.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='width: 150px;margin-left: 125px' src='/images/headphones.png'/></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play();  $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause(); tempAudio.currentTime = 0; tempAudio.play();}else if(event.keyCode == 13) {$(window).unbind('keyup'); nextItem(); }})</script>")
i.save
i = t.items.build(itemtext: "Tastatur", difficulty: 0, itemtype:-26, mediapath: "/audio/Anweisungen/3_Tastatur.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„Das Bild mit der Tastatur zeigt dir, wann du etwas mit der Tastatur eingeben sollst.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='width: 150px;margin-left: 125px' src='/images/tastartur.png'/></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play();$(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause(); tempAudio.currentTime = 0; tempAudio.play();}else if(event.keyCode == 13) {$(window).unbind('keyup'); nextItem(); }})</script>")
i.save
i = t.items.build(itemtext: "Ton wiederholen", difficulty: 0, itemtype:-29, mediapath: "/audio/Anweisungen/2_Pfeiltaste.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„Wenn du noch einmal hören möchtest, was du tun sollst, drücke die linke Pfeiltaste. Sieh mal, diese Taste ist unten rechts auf der Tastatur. Bitte drücke jetzt die linke Peiltaste.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='width: 650px;margin-left: 125px' src='/images/Tastatur_Pfeil.png'/></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); $(window).keyup(function (event) {if(event.keyCode==37){$(window).unbind('keyup'); nextItem(); }})</script>")
i.save
i = t.items.build(itemtext: "Löschtaste", difficulty: 0, itemtype:-25, mediapath: "/audio/Anweisungen/7_Löschtaste.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„Bestimmt hast du schon einmal an einem Computer etwas geschrieben, das du wieder löschen wolltest. Dafür benutzt man die Löschtaste. Auf dem Bild kannst du erkennen, wo du die Taste findest. Bitte drücke jetzt die Löschtaste auf der Tastatur.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='width: 650px;margin-left: 125px' src='/images/Tastatur_Backspace.png'/></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 100px' src='/images/Tastatur_BackspaceAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause(); tempAudio.currentTime = 0; tempAudio.play();}else if(event.keyCode == 8) {$(window).unbind('keyup'); nextItem(); }})</script>")
i.save
i = t.items.build(itemtext: "Löschaufgabe", difficulty: 0, itemtype:-24, mediapath: "/audio/Anweisungen/12_Löschaufgabe.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„Jetzt brauche ich deine Hilfe. Ich habe einen Satz geschrieben und möchte diesen wieder löschen. Bitte benutze die Löschtaste und lösche alle Buchstaben für mich.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/><br /><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/tastartur.png'/><input style='font-family: fibel_nordregular; font-size:96px;margin-right:250px' id='answer' type='text' class='text-center' align='middle'></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]];tempAudio.play();var tempAnswer = (document.getElementById('answer'));tempAnswer.focus();$(tempAnswer).css('border','0px').css('border-bottom', 'black solid 1px').attr('maxlength', '28').attr('size','28').val('Bitte lösche alle Buchstaben'); $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause();tempAudio.currentTime = 0;tempAudio.play();} else if(event.keyCode == 13 && tempAnswer.value == '') {$(window).unbind('keyup');nextItem();}}); $(tempAnswer).keydown(function (event) {var key = event.charCode || event.keyCode;if (key == 37||key == 38||key == 39||key == 40||key == 32||key ==27) {event.preventDefault();}})</script>");
i.save
i = t.items.build(itemtext: "Gut gemacht", difficulty: 0, itemtype:-23, mediapath: "/audio/Anweisungen/5_Gut_gemacht.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„ä, ü, ö sind Umlaute, bestimmt kennst du diese Buchstaben. Auf der Tastatur findest du sie auf der rechten Seite. Auf dem Bild siehst du, wo die Buchstaben auf der Tastatur sind. <br />Bitte drücke jetzt das ä, ü oder ö.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='width: 650px;margin-left: 125px' src='/images/Tastatur_Umlaute.png'/></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 100px' src='/images/Tastatur_UmlauteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); window.setTimeout(nextItem, 1500, true)</script>")
i.save
i = t.items.build(itemtext: "Umlaute", difficulty: 0, itemtype:-22, mediapath: "/audio/Anweisungen/5a_Umlaute_erklaerung.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„ä, ü, ö sind Umlaute, bestimmt kennst du diese Buchstaben. Auf der Tastatur findest du sie auf der rechten Seite. Auf dem Bild siehst du, wo die Buchstaben auf der Tastatur sind. <br />Bitte drücke jetzt das ä, ü oder ö.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='width: 650px;margin-left: 125px' src='/images/Tastatur_Umlaute.png'/></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 100px' src='/images/Tastatur_UmlauteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause(); tempAudio.currentTime = 0; tempAudio.play();}else if(event.keyCode == 0||event.keyCode == 186||event.keyCode == 192||event.keyCode == 222) {$(window).unbind('keyup'); nextItem(); }})</script>")
i.save
i = t.items.build(itemtext: "Toll", difficulty: 0, itemtype:-21, mediapath: "/audio/Anweisungen/6_Toll.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„In den folgenden Wörtern fehlen die Umlaute. Kannst du mir bitte helfen, diese wieder einzufügen? Bitte ergänze jetzt für mich die fehlenden Umlaute.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); window.setTimeout(nextItem, 1500, true)</script>")
i.save
i = t.items.build(itemtext: "Umlaute Aufgabenstellung", difficulty: 0, itemtype:-20, mediapath: "/audio/Anweisungen/6a_Umlaute3.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„In den folgenden Wörtern fehlen die Umlaute. Kannst du mir bitte helfen, diese wieder einzufügen? Bitte ergänze jetzt für mich die fehlenden Umlaute.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause(); tempAudio.currentTime = 0; tempAudio.play();}else if(event.keyCode == 13) {$(window).unbind('keyup'); nextItem(); }})</script>")
i.save
i = t.items.build(itemtext: "Umlaute Aufgabe1", difficulty: 0, itemtype:-19, mediapath: "/audio/Anweisungen/18_Baeume.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/><br /><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/tastartur.png'/></p><p style='font-family: fibel_nordregular; font-size:96px;margin-right:280px' type='text' class='text-center' align='middle'>B<span style='background-color:#FFFF00'>ä</span>ume</p><p style='font-family: fibel_nordregular; font-size:96px' type='text' class='text-center' align='middle'>B<input style='font-family: fibel_nordregular;padding-bottom: 10px; line-height: 50px; width: 50px; font-size:96px' id='answer' type='text' class='text-center' align='middle'>ume</p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); var tempAnswer = (document.getElementById('answer'));tempAnswer.focus();$(tempAnswer).css('border','0px').css('border-bottom', 'black solid 1px').attr('maxlength', '1').attr('size','1').val(''); $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause();tempAudio.currentTime = 0;tempAudio.play();} else if(event.keyCode == 13 && tempAnswer.value == 'ä') {$(window).unbind('keyup');nextItem();}}); $(tempAnswer).keydown(function (event) {var key = event.charCode || event.keyCode;if (key == 37||key == 38||key == 39||key == 40||key == 32||key ==27) {event.preventDefault();}})</script>");
i.save
i = t.items.build(itemtext: "Umlaute Aufgabe2", difficulty: 0, itemtype:-18, mediapath: "/audio/Anweisungen/19_Schloesser.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/><br /><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/tastartur.png'/></p><p style='font-family: fibel_nordregular; font-size:96px;margin-right:280px' type='text' class='text-center' align='middle'>Schl<span style='background-color:#FFFF00'>ö</span>sser</p><p style='font-family: fibel_nordregular; font-size:96px' type='text' class='text-center' align='middle'>Schl<input style='font-family: fibel_nordregular;padding-bottom: 10px; line-height: 50px; width: 50px; font-size:96px' id='answer' type='text' class='text-center' align='middle'>sser</p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); var tempAnswer = (document.getElementById('answer'));tempAnswer.focus();$(tempAnswer).css('border','0px').css('border-bottom', 'black solid 1px').attr('maxlength', '1').attr('size','1').val(''); $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause();tempAudio.currentTime = 0;tempAudio.play();} else if(event.keyCode == 13 && tempAnswer.value == 'ö') {$(window).unbind('keyup');nextItem();}}); $(tempAnswer).keydown(function (event) {var key = event.charCode || event.keyCode;if (key == 37||key == 38||key == 39||key == 40||key == 32||key ==27) {event.preventDefault();}})</script>");
i.save
i = t.items.build(itemtext: "Umlaute Aufgabe3", difficulty: 0, itemtype:-17, mediapath: "/audio/Anweisungen/20_suesz.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/><br /><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/tastartur.png'/></p><p style='font-family: fibel_nordregular; font-size:96px;margin-right:280px' type='text' class='text-center' align='middle'>s<span style='background-color:#FFFF00'>ü</span>ß</p><p style='font-family: fibel_nordregular; font-size:96px' type='text' class='text-center' align='middle'>s<input style='font-family: fibel_nordregular;padding-bottom: 10px; line-height: 50px; width: 50px; font-size:96px' id='answer' type='text' class='text-center' align='middle'>ß</p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); var tempAnswer = (document.getElementById('answer'));tempAnswer.focus();$(tempAnswer).css('border','0px').css('border-bottom', 'black solid 1px').attr('maxlength', '1').attr('size','1').val(''); $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause();tempAudio.currentTime = 0;tempAudio.play();} else if(event.keyCode == 13 && tempAnswer.value == 'ü') {$(window).unbind('keyup');nextItem();}}); $(tempAnswer).keydown(function (event) {var key = event.charCode || event.keyCode;if (key == 37||key == 38||key == 39||key == 40||key == 32||key ==27) {event.preventDefault();}})</script>");
i.save
i = t.items.build(itemtext: "Umlaute Lob", difficulty: 0, itemtype:-16, mediapath: "/audio/Anweisungen/8_Super_Umlaute_richtig.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„Super! <br />Du hast alle Umlaute richtig eingefügt.“<br/><img style='width: 250px ' src='/images/Levumi-jubelt.gif'/></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause(); tempAudio.currentTime = 0; tempAudio.play();}else if(event.keyCode == 13) {$(window).unbind('keyup'); nextItem(); }})</script>")
i.save
i = t.items.build(itemtext: "ß", difficulty: 0, itemtype:-15, mediapath: "/audio/Anweisungen/9_ß.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„Nun geht es um einen Buchstaben, den es nur im Deutschen gibt, das ß. Es hat sich oben rechts versteckt. Drücke bitte die Taste für das ß auf der Tastatur.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='width: 650px;margin-left: 125px' src='/images/Tastatur_ß.png'/></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_ßAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause(); tempAudio.currentTime = 0; tempAudio.play();}else if(event.keyCode == 63) {$(window).unbind('keyup'); nextItem(); }})</script>")
i.save
i = t.items.build(itemtext: "ß Aufgabenstellung", difficulty: 0, itemtype:-14, mediapath: "/audio/Anweisungen/9_Ergaenze_sz.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„In den folgenden Wörtern fehlt das ß. Bitte ergänze jetzt für mich das fehlende ß.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause(); tempAudio.currentTime = 0; tempAudio.play();}else if(event.keyCode == 13) {$(window).unbind('keyup'); nextItem(); }})</script>")
i.save
i = t.items.build(itemtext: "ß Aufgabe1", difficulty: 0, itemtype:-13, mediapath: "/audio/Anweisungen/21_spasz.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/><br /><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/tastartur.png'/></p><p style='font-family: fibel_nordregular; font-size:96px;margin-right:280px' type='text' class='text-center' align='middle'>Spa<span style='background-color:#FFFF00'>ß</span></p><p style='font-family: fibel_nordregular; font-size:96px' type='text' class='text-center' align='middle'>Spa<input style='font-family: fibel_nordregular;padding-bottom: 10px; line-height: 50px; width: 50px; font-size:96px' id='answer' type='text' class='text-center' align='middle'></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); var tempAnswer = (document.getElementById('answer'));tempAnswer.focus();$(tempAnswer).css('border','0px').css('border-bottom', 'black solid 1px').attr('maxlength', '1').attr('size','1').val('');$(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause();tempAudio.currentTime = 0;tempAudio.play();} else if(event.keyCode == 13 && tempAnswer.value == 'ß') {$(window).unbind('keyup');nextItem();}}); $(tempAnswer).keydown(function (event) {var key = event.charCode || event.keyCode;if (key == 37||key == 38||key == 39||key == 40||key == 32||key ==27) {event.preventDefault();}})</script>");
i.save
i = t.items.build(itemtext: "ß Aufgabe2", difficulty: 0, itemtype:-12, mediapath: "/audio/Anweisungen/20_suesz.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/><br /><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/tastartur.png'/></p><p style='font-family: fibel_nordregular; font-size:96px;margin-right:280px' type='text' class='text-center' align='middle'>sü<span style='background-color:#FFFF00'>ß</span></p><p style='font-family: fibel_nordregular; font-size:96px' type='text' class='text-center' align='middle'>sü<input style='font-family: fibel_nordregular;padding-bottom: 10px; line-height: 50px; width: 50px; font-size:96px' id='answer' type='text' class='text-center' align='middle'></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); var tempAnswer = (document.getElementById('answer'));tempAnswer.focus();$(tempAnswer).css('border','0px').css('border-bottom', 'black solid 1px').attr('maxlength', '1').attr('size','1').val('');$(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause();tempAudio.currentTime = 0;tempAudio.play();} else if(event.keyCode == 13 && tempAnswer.value == 'ß') {$(window).unbind('keyup');nextItem();}}); $(tempAnswer).keydown(function (event) {var key = event.charCode || event.keyCode;if (key == 37||key == 38||key == 39||key == 40||key == 32||key ==27) {event.preventDefault();}})</script>");
i.save
i = t.items.build(itemtext: "ß Aufgabe3", difficulty: 0, itemtype:-11, mediapath: "/audio/Anweisungen/22_Fusz.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/><br /><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/tastartur.png'/></p><p style='font-family: fibel_nordregular; font-size:96px;margin-right:280px' type='text' class='text-center' align='middle'>Fu<span style='background-color:#FFFF00'>ß</span></p><p style='font-family: fibel_nordregular; font-size:96px' type='text' class='text-center' align='middle'>Fu<input style='font-family: fibel_nordregular;padding-bottom: 10px; line-height: 50px; width: 50px; font-size:96px' id='answer' type='text' class='text-center' align='middle'></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); var tempAnswer = (document.getElementById('answer'));tempAnswer.focus();$(tempAnswer).css('border','0px').css('border-bottom', 'black solid 1px').attr('maxlength', '1').attr('size','1').val('');$(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause();tempAudio.currentTime = 0;tempAudio.play();} else if(event.keyCode == 13 && tempAnswer.value == 'ß') {$(window).unbind('keyup');nextItem();}}); $(tempAnswer).keydown(function (event) {var key = event.charCode || event.keyCode;if (key == 37||key == 38||key == 39||key == 40||key == 32||key ==27) {event.preventDefault();}})</script>");
i.save
i = t.items.build(itemtext: "Großschreibung", difficulty: 0, itemtype:-10, mediapath: "/audio/Anweisungen/14_Groszschreibung.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„Um ein Wort großzuschreiben, muss man zwei Tasten gleichzeitig drücken: Den Pfeil, der nach oben zeigt, ganz links auf der Tastatur und eine Buchstabentaste. Am besten benutzt du dafür deine beiden Zeigefinger.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='width: 650px;margin-left: 125px' src='/images/Tastatur_Großschreiben.png'/></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); var shiftKey = false; $(window).keydown(function (event) { if (event.keyCode == 16) {shiftKey = true; }}); $(window).keyup(function (event) { if(event.keyCode==37){ tempAudio.pause(); tempAudio.currentTime = 0; tempAudio.play();} else if(event.keyCode == 16) {shiftKey = false; } else if(shiftKey&&event.keyCode>= 65 && event.keyCode<=90) { $(window).unbind('keyup'); $(window).unbind('keydown'); nextItem();}});</script>;");
i.save
i = t.items.build(itemtext: "Großschreibung Aufgabenstellung", difficulty: 0, itemtype:-9, mediapath: "/audio/Anweisungen/13_Groszbuchstaben.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„In den folgenden Wörtern fehlen die Großbuchstaben. Bitte ergänze jetzt für mich die fehlenden Großbuchstaben.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause(); tempAudio.currentTime = 0; tempAudio.play();}else if(event.keyCode == 13) {$(window).unbind('keyup'); nextItem(); }})</script>")
i.save
i = t.items.build(itemtext: "Großschreibung Aufgabe1", difficulty: 0, itemtype:-8, mediapath: "/audio/Anweisungen/23_Haus.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/><br /><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/tastartur.png'/></p><p style='font-family: fibel_nordregular; font-size:96px;margin-right:280px' type='text' class='text-center' align='middle'><span style='background-color:#FFFF00'>H</span>aus</p><p style='font-family: fibel_nordregular; font-size:96px' type='text' class='text-center' align='middle'><input style='font-family: fibel_nordregular;padding-bottom: 10px; line-height: 50px; width: 50px; font-size:96px' id='answer' type='text' class='text-center' align='middle'>aus</p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); var tempAnswer = (document.getElementById('answer'));tempAnswer.focus();$(tempAnswer).css('border','0px').css('border-bottom', 'black solid 1px').attr('maxlength', '1').attr('size','1').val('');$(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause();tempAudio.currentTime = 0;tempAudio.play();} else if(event.keyCode == 13 && tempAnswer.value == 'H') {$(window).unbind('keyup');nextItem();}}); $(tempAnswer).keydown(function (event) {var key = event.charCode || event.keyCode;if (key == 37||key == 38||key == 39||key == 40||key == 32||key ==27) {event.preventDefault();}})</script>");
i.save
i = t.items.build(itemtext: "Großschreibung Aufgabe2", difficulty: 0, itemtype:-7, mediapath: "/audio/Anweisungen/24_Garten.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/><br /><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/tastartur.png'/></p><p style='font-family: fibel_nordregular; font-size:96px;margin-right:280px' type='text' class='text-center' align='middle'><span style='background-color:#FFFF00'>G</span>arten</p><p style='font-family: fibel_nordregular; font-size:96px' type='text' class='text-center' align='middle'><input style='font-family: fibel_nordregular;padding-bottom: 10px; line-height: 50px; width: 50px; font-size:96px' id='answer' type='text' class='text-center' align='middle'>arten</p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); var tempAnswer = (document.getElementById('answer'));tempAnswer.focus();$(tempAnswer).css('border','0px').css('border-bottom', 'black solid 1px').attr('maxlength', '1').attr('size','1').val('');$(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause();tempAudio.currentTime = 0;tempAudio.play();} else if(event.keyCode == 13 && tempAnswer.value == 'G') {$(window).unbind('keyup');nextItem();}}); $(tempAnswer).keydown(function (event) {var key = event.charCode || event.keyCode;if (key == 37||key == 38||key == 39||key == 40||key == 32||key ==27) {event.preventDefault();}})</script>");
i.save
i = t.items.build(itemtext: "Großschreibung Aufgabe3", difficulty: 0, itemtype:-6, mediapath: "/audio/Anweisungen/25_Sonne.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/><br /><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/tastartur.png'/></p><p style='font-family: fibel_nordregular; font-size:96px;margin-right:280px' type='text' class='text-center' align='middle'><span style='background-color:#FFFF00'>S</span>onne</p><p style='font-family: fibel_nordregular; font-size:96px' type='text' class='text-center' align='middle'><input style='font-family: fibel_nordregular;padding-bottom: 10px; line-height: 50px; width: 50px; font-size:96px' id='answer' type='text' class='text-center' align='middle'>onne</p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); var tempAnswer = (document.getElementById('answer'));tempAnswer.focus();$(tempAnswer).css('border','0px').css('border-bottom', 'black solid 1px').attr('maxlength', '1').attr('size','1').val('');$(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause();tempAudio.currentTime = 0;tempAudio.play();} else if(event.keyCode == 13 && tempAnswer.value == 'S') {$(window).unbind('keyup');nextItem();}}); $(tempAnswer).keydown(function (event) {var key = event.charCode || event.keyCode;if (key == 37||key == 38||key == 39||key == 40||key == 32||key ==27) {event.preventDefault();}})</script>");
i.save
i = t.items.build(itemtext: "Danke", difficulty: 0, itemtype:-5, mediapath: "/audio/Anweisungen/13_AbtippaufgabeDanke.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„Danke, dass du so gut mitmachst!“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause(); tempAudio.currentTime = 0; tempAudio.play();}else if(event.keyCode == 13) {$(window).unbind('keyup'); nextItem(); }})</script>")
i.save
i = t.items.build(itemtext: "Abtippaufgabe", difficulty: 0, itemtype:-4, mediapath: "/audio/Anweisungen/8_Abtippaufgabe.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„Jetzt hast du schon gut geübt, auf der Tastatur zu schreiben. Nun lese ich dir einen Satz vor. Die Wörter, die du schreiben sollst, sind gelb makiert. Wenn du das Wort geschrieben hast, drücke die Eingabetaste, damit du zum nächsten Wort gelangst.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause(); tempAudio.currentTime = 0; tempAudio.play();}else if(event.keyCode == 13) {$(window).unbind('keyup'); nextItem(); }})</script>")
i.save
i = t.items.build(itemtext: "Abtippaufgabe Levumi", difficulty: 0, itemtype:-3, mediapath: "/audio/Anweisungen/15_LEVUMI_pflueckt.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„<span style='background-color:#FFFF00'>Levumi</span> pflückt Quitten von den Bäumen.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/><br /><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/tastartur.png'/><input style='font-family: fibel_nordregular; font-size:96px;margin-right:250px' id='answer' type='text' class='text-center' align='middle'></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]];tempAudio.play();var tempAnswer = (document.getElementById('answer'));tempAnswer.focus();$(tempAnswer).css('border','0px').css('border-bottom', 'black solid 1px').attr('maxlength', '16').attr('size','16'); $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause();tempAudio.currentTime = 0;tempAudio.play();} else if(event.keyCode == 13 && tempAnswer.value == 'Levumi') {$(window).unbind('keyup');nextItem();}}); $(tempAnswer).keydown(function (event) {var key = event.charCode || event.keyCode;if (key == 37||key == 38||key == 39||key == 40||key == 32||key ==27) {event.preventDefault();}})</script>");
i.save
i = t.items.build(itemtext: "Abtippaufgabe Quitten", difficulty: 0, itemtype:-2, mediapath: "/audio/Anweisungen/15_LEVUMI_pflueckt.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„Levumi pflückt <span style='background-color:#FFFF00'>Quitten</span> von den Bäumen.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/><br /><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/tastartur.png'/><input style='font-family: fibel_nordregular; font-size:96px;margin-right:250px' id='answer' type='text' class='text-center' align='middle'></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]];tempAudio.play();var tempAnswer = (document.getElementById('answer'));tempAnswer.focus();$(tempAnswer).css('border','0px').css('border-bottom', 'black solid 1px').attr('maxlength', '16').attr('size','16'); $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause();tempAudio.currentTime = 0;tempAudio.play();} else if(event.keyCode == 13 && tempAnswer.value == 'Quitten') {$(window).unbind('keyup');nextItem();}}); $(tempAnswer).keydown(function (event) {var key = event.charCode || event.keyCode;if (key == 37||key == 38||key == 39||key == 40||key == 32||key ==27) {event.preventDefault();}})</script>");
i.save
i = t.items.build(itemtext: "Abtippaufgabe Bäume", difficulty: 0, itemtype:-1, mediapath: "/audio/Anweisungen/15_LEVUMI_pflueckt.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„Levumi plückt Quitten von den <span style='background-color:#FFFF00'>Bäumen</span>.“<img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/headphones.png'/><br /><br /><img style='float: left; width: 150px;margin-left: 125px' src='/images/tastartur.png'/><input style='font-family: fibel_nordregular; font-size:96px;margin-right:250px' id='answer' type='text' class='text-center' align='middle'></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]];tempAudio.play();var tempAnswer = (document.getElementById('answer'));tempAnswer.focus();$(tempAnswer).css('border','0px').css('border-bottom', 'black solid 1px').attr('maxlength', '16').attr('size','16'); $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause();tempAudio.currentTime = 0;tempAudio.play();} else if(event.keyCode == 13 && tempAnswer.value == 'Bäumen') {$(window).unbind('keyup');nextItem();}}); $(tempAnswer).keydown(function (event) {var key = event.charCode || event.keyCode;if (key == 37||key == 38||key == 39||key == 40||key == 32||key ==27) {event.preventDefault();}})</script>");
i.save
i = t.items.build(itemtext: "Geschafft", difficulty: 0, itemtype:0, mediapath: "/audio/Anweisungen/16_Fertig.mp3",itemview:"<audio id='audioItem'></audio><p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>„Nun bist du fertig, drücke zum Schluss die Eingabetaste.“<br /><img style='width: 250px ' src='/images/Levumi-jubelt.gif'/></p><br /><br /><footer><table align='center'><tr><th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th><th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th></tr></table></footer><script>var tempAudio = (document.getElementById('audioItem')); tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]]; tempAudio.play(); currentResult = currentResult + '1,'; $(window).keyup(function (event) {if(event.keyCode==37){tempAudio.pause(); tempAudio.currentTime = 0; tempAudio.play();}else if(event.keyCode == 13) {$(window).unbind('keydown');$(window).unbind('keyup');window.location.replace(pathMainPage);}})</script>")
i.save

a = g.assessments.build(test_id: t.id)
a.save


m = a.measurements.build(date: Date.today)
m.save


m = a.measurements.build(date: Date.tomorrow)
m.save


items = %w{
Leine
Keller
winzig
Korb
sind

}

audios = %w{
Woerter/1_Leine.mp3
Woerter/33_Keller.mp3
Woerter/42_winzig.mp3
Woerter/43_Korb.mp3
Woerter/53_sind.mp3
}

dicN1 = TestDictation.create(name: "Wörter schreiben", info: "Diktiertest für die Grundschule", short_info: "Diktiertest für die Grundschule", len: items.size, time: 60, subject: "Deutsch", construct: "Rechtschreibung",
                             archive: false, student_access:true, level:"Level 0")

it = dicN1.items.build(itemtext: "Hallo", difficulty: 0, mediapath: "/audio/Anweisungen/15_Hallo.mp3", itemtype:-4, itemview:"
<audio id='audioItem'></audio>
<p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>
  „Hallo, ich bin Levumi, heute möchte ich gerne wissen, wie gut du schon schreiben kannst.
  Einige Wörter sind leicht, andere Wörter sind schwer. Bitte konzentriere dich und schreibe so gut,
  wie du kannst! Bitte drücke jetzt die Eingabetaste, damit du beginnen kannst.“
  <img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/>
</p>
<br />
<br />
<br />
<footer>
  <table align='center'>
    <tr>
      <th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th>
      <th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th>
    </tr>
  </table>
</footer>
<script>
    var tempAudio = (document.getElementById('audioItem'));
    tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]];
    tempAudio.play();
    $(window).keyup(function (event) {
        if(event.keyCode==37){
            tempAudio.pause();
            tempAudio.currentTime = 0;
            tempAudio.play();
        }
        else {
            $(window).unbind('keyup');
            nextItem();
        }})
</script>")
it.save
it = dicN1.items.build(itemtext: "Erklärung", difficulty: 0, mediapath: "/audio/Anweisungen/15_Erklaerung.mp3", itemtype:-3,itemview:"
<audio id='audioItem'></audio>
<p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>
  „Zuerst lese ich dir einen Satz vor. Danach diktiere ich dir das Wort aus dem Satz,
  dass du schreiben sollst. Dann schreibst du das Wort auf der Tastatur.“
  <img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/>
</p>
<br />
<br />
<footer>
  <table align='center'>
    <tr>
      <th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th>
      <th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th>
    </tr>
  </table>
</footer>
<script>
    var tempAudio = (document.getElementById('audioItem'));
    tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]];
    tempAudio.play();
    $(window).keyup(function (event) {
        if(event.keyCode==37){
            tempAudio.pause();
            tempAudio.currentTime = 0;
            tempAudio.play();
        }else if(event.keyCode == 13) {
            $(window).unbind('keyup');
            nextItem();
        }})
</script>")
it.save
it = dicN1.items.build(itemtext: "Löschen und Audio", difficulty: 0, mediapath: "/audio/Anweisungen/16_ErklaerungTeilB.mp3", itemtype:-2,  itemview:"
<audio id='audioItem'></audio>
<p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>
  „Wenn du ein Wort falsch geschrieben hast, kannst du die Löschtaste benutzen und die Buchstaben löschen,
  damit du das Wort noch einmal schreiben kannst. Wenn du das Wort nicht verstanden hast, drücke die linke Pfeiltaste,
  dann lese ich dir noch einmal vor, was du schreiben sollst. Achte ganz genau darauf, ob ein Wort groß oder klein geschrieben wird.“
  <img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/>
</p>
<br />
<br />
<br />
<footer>
  <table align='center'>
    <tr>
      <th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th>
      <th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th>
    </tr>
  </table>
</footer>
<script>
    var tempAudio = (document.getElementById('audioItem'));
    tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]];
    tempAudio.play();
    $(window).keyup(function (event) {
        if(event.keyCode==37){
            tempAudio.pause();
            tempAudio.currentTime = 0;
            tempAudio.play();
        }else if(event.keyCode == 13) {
            $(window).unbind('keyup');
            nextItem();
        }})
</script>")
it.save
it = dicN1.items.build(itemtext: "Ich beginne", difficulty: 0, mediapath: "/audio/Anweisungen/19_ich_beginne.mp3", itemtype:-1, itemview:"
<audio id='audioItem'></audio>
<p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>
  „Ich beginne nun dir die Wörter zu diktieren.“
  <img style='float: right; width: 250px ' src='/images/Levumi-normal-blau.jpg'/>
</p>
<br />
<br />
<br />
<footer>
  <table align='center'>
    <tr>
      <th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th>
      <th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th>
    </tr>
  </table>
</footer>
<script>
    var tempAudio = (document.getElementById('audioItem'));
    tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]];
    tempAudio.play();
    $(window).keyup(function (event) {
        if(event.keyCode==37){tempAudio.pause();
        tempAudio.currentTime = 0;
        tempAudio.play();
        }
        else if(event.keyCode == 13) {
            $(window).unbind('keyup');
            if (timeoutId != -1) {
                window.clearTimeout(timeoutId);
            }
            timeoutId = window.setTimeout(timedOut, workTime + 500);
            nextItem();
        }})
</script>")
it.save

i=0
while i<items.size do
  it = dicN1.items.build(itemtext: items[i], mediapath:"/audio/" + audios[i], difficulty: 0, itemtype:0, itemview:"
  <audio id='audioItem'></audio>
<p align='center'>
  <input style='font-family: fibel_nordregular; font-size:96px' id='answer' type='text' class='text-center' align='middle'>
</p>
<br />
<br />
<br />
<footer>
  <table align='center'>
    <tr>
      <th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th>
      <th><div style='font-family: fibel_nordregular;font-size:60px'>Weiter: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th>
    </tr>
  </table>
</footer>
<script>
    var tempAudio = (document.getElementById('audioItem'));
    tempAudio.src = itemDataSound[studentData[currentStudent][currentItemIndex]];
    tempAudio.play();
    var tempAnswer = (document.getElementById('answer'));
    tempAnswer.focus();
    $(window).keyup(function (event) {
        if(event.keyCode==37){
            tempAudio.pause();
            tempAudio.currentTime = 0;
            tempAudio.play();
        }
        else if(event.keyCode == 13) {
            $(window).unbind('keyup');
            actualAnswers = actualAnswers + tempAnswer.value + ',';
            if(tempAnswer.value=='"+items[i]+"'){
                currentResult = currentResult + '1,';
            }
            else {
                currentResult = currentResult + '0,';
            };
            stopwatch = new Date() - stopwatch;
            currentTimes = currentTimes + stopwatch + ',';
            nextItem();
        }});
    $(tempAnswer).keydown(function (event) {
        var key = event.charCode || event.keyCode;
        if (key == 37||key == 38||key == 39||key == 40||key == 32||key ==27) {
            event.preventDefault();
        }});
</script>"
  )
  it.save
  i= i+1
end

it = dicN1.items.build(itemtext: "Ende", difficulty: 0, mediapath: "/audio/Anweisungen/16_Fertig.mp3", itemtype:1, itemview:"
<audio id='audioItem'></audio>
<p style='font-family: fibel_nordregular; font-size:60px' class='text-center'>
  „Nun bist du fertig, drücke zum Schluss die Eingabetaste.“<br/>
  <img style='width: 250px ' src='/images/Levumi-jubelt.gif'/>
</p>
<br />
<footer>
  <table align='center'>
    <tr>
      <th><div style='font-family: fibel_nordregular;font-size:60px'>Nochmal anhören: <span><img style='width: 50px' src='/images/Tastatur_PfeilLinks.png'/></span> /&nbsp;&nbsp;</div></th>
      <th><div style='font-family: fibel_nordregular;font-size:60px'>Beenden: <span><img style='width: 50px' src='/images/Tastatur_EingabetasteAlleine.png'/></span></div></th>
    </tr>
  </table>
</footer>
<script>
    var tempAudio = (document.getElementById('audioItem'));
    tempAudio.src = itemDataSound[studentData[currentStudent][studentData[currentStudent].length-1]];
    tempAudio.play();
    $(window).keyup(function (event) {
        if(event.keyCode==37){
            tempAudio.pause();
            tempAudio.currentTime = 0;
            tempAudio.play();
        }
        else if (event.keyCode == 13) {
            $(window).unbind('keydown');
            $(window).unbind('keyup');
            window.location.replace(pathMainPage);
        }})
</script>")
it.save


a = g.assessments.build(test_id: dicN1.id)
a.save

m = a.measurements.build(date: Date.yesterday)
m.save


m = a.measurements.build(date: Date.today)
m.save


m = a.measurements.build(date: Date.tomorrow)
m.save
