# Behoefte Drechtsteden
De behoefte van Gemeenschappelijk Regeling Drechtsteden is om per 1 januari 2018alle koppelvlakken gerealiseerd te hebben. Het realiseren van koppelvlakkenbetekent voor Drechtsteden dat alle applicaties gegevens uitwisselen met elkaarvia de centrale servicebus van Vicrea. De centrale voorziening waar deservicebus onderdeel van uitmaakt wordt binnen Drechtsteden aangeduid met determ "CDV". Met de snelheid waarmee gemiddeld genomen huidigeStUF-koppelvlakken gerealiseerd worden binnen Drechtsteden wordt de datum 1januari 2018 zeker niet gehaald. Dit vraagt om een andere aanpak.

# Aanpak
De aanpak die Drechtsteden kiest is in lijn met het advies dat Solventa inopdracht van KING begin 2017 heeft uitgebracht over het opstellen vanEindproductstandaarden ter vervanging van StUF-BG en StUF-ZKN (zie http://www.gemmaonline.nl/images/gemmaonline/0/08/Eindproductstandaarden_-_vervanging_StUF-BG_en_StUF-ZKN.pdf). Hieronder een opsomming van de voordelen van Eindproductstandaarden die in ditadvies benoemd worden:

- Eindproductstandaarden kunnen in hoger tempo worden opgesteld door KING.
- Aanbieders van applicaties kunnen eenvoudiger/goedkoper aan. eindproductstandaardenvoldoen aangezien deze minder complex zijn.
- Eindproductstandaarden zijn toegesneden op ketens en/of afgebakend op een domein en daarmeespecifieker.
- De eindproductstandaarden reduceren de ruimte voor interpretatieverschillen totnihil.
- KING kan de conformiteit aan eindproductstandaarden eenvoudiger toetsen.
- Door de inzet van eindproductstandaarden is de rolverdeling tussen applicatiesscherp gedefinieerd. 
Het advies is omarmd door de StUF Regiegroep en wordt als leidraad gehanteerd voor de opzet van de 'nieuwe StUF'. De nieuwe StUF is nietradicaal anders, het borduurt zo veel mogelijk voort op de goede aspecten vanStUF en andere vastgestelde specificaties zoals LO GBA, RSGB en RGBZ.

# Nieuwe StUF
Met het omarmen van het advies gaat KING koersen richting een nieuwe StUF. Veel iser onduidelijk over hoe dit traject er uit gaat zien. Een feit is datDrechtsteden graag de nek uitsteekt en leveranciers bij elkaar brengt omconform eerder genoemd advies koppelvlakken te realiseren. Vicrea en GreenValley zijn inmiddels druk bezig de eerste koppelvlakken te realiseren op basis van YAML/JSON. Metdeze resultaten gaat Drechtsteden bij KING aantonen dat er inderdaad velevoordelen te behalen zijn met de inzet van Eindproductstandaarden en de technische mogelijkheden van YAML/JSON. Dit soortpraktijkvoorbeelden heeft KING nodig om de route naar een nieuwe StUF teconcretiseren.

Drechtsteden zelf is er daarnaast van overtuigd dat op deze wijze de koppelvlakken wel op 1januari 2018 gerealiseerd kunnen zijn.

# JSON/YAML
Berichtenverkeer dat conform deze aanpakwordt opgezet is gebaseerd op JSONwebservices. Om tussen software-leveranciers misinterpretatie te voorkomen wordtvia YAML een specificatieopgesteld. Met een YAML specificatie is het mogelijk om JSON webservices tegenereren.

JSON
Een JSON API is uitermate geschikt voorde communicatie met mobiele devices en IoT toepassingen van afnemers.  

YAML
YAML is ontwikkeld vanuit oogpunt van menselijke leesbaarheid en uitbreidbaarheid. YAML is dan ook goed voor mensenleesbaar, mede door de verplichte witruimtes in regels om structuur aan tegeven. YAML ondersteund default object referenties en relationele structuren.Dit maakt het mogelijk om in YAML net als in XML eenvoudig cyclischedatastructuren met diepe hiërarchie vast te leggen. YAML is geen XML, maar kentdoor de efficiëntere structuur wel een aantal grote voordelen boven XML. Dezemoeten dan nog wel in de software worden geplaatst. Dit kost zeker ook nog welontwikkeltijd, maar het is veel efficiënter en laat minder ruimte voormisinterpretatie dan de wijze waarop momenteel StUF wordt ingepast in desoftware. Precies op dit punt kan de inzet van YAML dus meerwaarde opleveren.Het is dus niet het idee dat JSON services dan alsnog handmatig wordengerealiseerd.

Creëren YAML specificaties
YAML-specificatie kunnen gemaakt worden op basisvan openAPI Specification (OAS) (https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md), voorheen de swagger specificatie genoemd. Dezespecificatie wordt nationaal en internationaal breed gedragen en ingezet om ookRestful Api’s  te specificeren en te documenteren.
Als je de specificatie bijvoorbeeld in http://editor.swagger.io/#/  kopieert, dan zie je direct een JSON-response voorbeeld.Er kan ook direct code worden gegenereerd voor allerlei talen voor zowel declient als de server kant.

Code generatie vanuit YAML
De meest eenvoudige manier is om naar https://swagger.io/ tegaan en de YAML-specificatie hier in te openen en kiezen bij Generate Server voor het juisteplatform.  Dit lijkt tot een skeleton voor de implementatie van dewebservice.  Hoe dit kan worden ingepast in de code van eensoftware-leverancier is aan de leverancier zelf.
Note:Het kan zijn dat de code generatie van deze site niet de meest actuele is. Hetonderstaande java project bevat altijd de meest actuele versie van decode.  Je moet dan wel java hebben om de code ook voor andere platformen(zoals .NET) te genereren.https://github.com/swagger-api/swagger-codegen https://github.com/swagger-api/swagger-codegen/wiki/Server-stub-generator-HOWTO 
Via de volgende website kun je JSON eenvoudig tegen YAML-specificaties latenvalideren: http://www.jsonschemavalidator.net/ 

# Opgeleverde YAML-specificaties
- Opvragen BRP (categorie 1&8)
- Opvragen HR 

# Binnenkort op te leveren YAML-specificaties
- Opvragen BRP (alle overige API's binnen deze EPS) 

# Backlog op te leveren YAML-specificaties
- Opvragen BAG
- Zaak-Documentservices

# Documentatie die nog opgesteld moet worden
- Foutafhandeling
- Plan tot productiename









