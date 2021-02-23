# Objective-C och REST-API

Det här filerna för del 1 i hur vi kan kommunicera ifrån Objective-C med ett REST-API.

I mappen rest-api finns rest servern som tar emot anrop på http://localhost:5001/vehicles.
I mappen WestCoast-Cars Part 1 hittar ni koden för iOS appen.

### Instruktioner
Ladda hem båda katalogerna och spara ner dem på disken.

### Förutsättningar
För att kunna köra REST servern behöver ni ha node installerat på er dator.
Om ni inte har det gå till https://nodejs.org/ och ladda hem den senaste LTS versionen.
Installera node med hjälp av *.pkg filen.

När installationen är klar öppna upp terminalen och kör kommandot *node -v* om ni får ett svar i fönstret så är node korrekt installerat.
Navigera till katalogen där ni har placerat rest api koden och kör följande kommande **node server.js** om markören stannar på raden under så är servern igång.
För att stoppa servern tryck ner tangent kombinationen Ctrl+c.

#### Objective-C koden

Test kör och lek med koden och se till att ni får tillbaka data som det är tänkt.
Försök att förstå koden och behöver ni hjälp med vissa av funktionerna som är använda. Framförallt NSUrlSession läs gärna om det på https://developer.apple.com/documentation/foundation/nsurlsession
