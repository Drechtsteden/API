# Ambitie Gemeenschappelijke Regeling Drechtsteden

### Probleemstelling

De doelstelling van Gemeenschappelijk Regeling Drechtsteden (GRD) is om 100% digitaal te werken. Dit traject zal op de huidige manier nog maanden/jaren in beslag nemen. De snelheid waarmee gemiddeld genomen huidige StUF-koppelvlakken gerealiseerd worden laat te wensen over, mede veroorzaakt door de complexiteit van StUF. Dit vraagt om een andere aanpak. 

### Initiatief

Vanuit het CIO-office van de Gemeenschappelijke Regeling
Drechtsteden is het initiatief gekomen tot het omarmen van een andere aanpak om
de ambitie te kunnen realiseren.

### Samenwerking

In samenwerking met softwareleveranciers Vicrea en Green Valley is er gewerkt aan een oplossing binnen Gemeenschappelijke Regeling
Drechtsteden, waarbij Drechtsteden zelf een belangrijke rol heeft gespeeld in het inhoudelijk
aansturen van het traject.


# Context

De aanpak die Drechtsteden in 2017 heeft gekozen is in lijn met het toenmalige advies
dat Solventa in opdracht van KING in 2017 heeft uitgebracht over het opstellen van (destijds nog)
Eindproductstandaarden ter vervanging van StUF-BG en StUF-ZKN. Inmiddels zijn er op landelijk niveau onder aanvoering van het API Kennisplatform richtlijnen opgesteld voor het opstellen van API's. De huidige richtlijnen zijn te vinden op https://geonovum.github.io/KP-APIs/. 

Hieronder een opsomming van de voordelen van API's:

- API's kunnen in hoger tempo worden
gerealiseerd.

- Aanbieders van applicaties kunnen eenvoudiger/goedkoper aan
API's voldoen aangezien deze minder complex zijn.

- API's zijn toegesneden op ketens en/of
afgebakend op een domein en daarmee specifieker.

- API's reduceren de ruimte voor
interpretatieverschillen tot nihil.

- VNG Realisatie kan de conformiteit aan API's eenvoudiger
toetsen.

- Door de inzet van API's is de rolverdeling
tussen applicaties scherp gedefinieerd. 

Het advies is omarmd door de StUF Regiegroep en wordt als
leidraad gehanteerd voor de opzet van de 'nieuwe StUF'. De nieuwe StUF is niet
radicaal anders, het borduurt zo veel mogelijk voort op de goede aspecten van StUF
en andere vastgestelde specificaties zoals LO GBA, RSGB en RGBZ.

### Aansluitkeuze 

Drechtsteden hanteert een afwegingskader om een keuze te maken in de manier van aansluiten. Dit kader is in de volgende plaat gevisualiseerd. 

![alt text](https://github.com/Drechtsteden/API/blob/master/aansluitkeuze.png
"Aansluitkeuze")
 
# Oplossingsrichting

De oplossing voor Drechtsteden is geënt op principes die zijn afgeleid uit het advies Eindproductstandaarden van Solenvta. Specifiek voor Drechtsteden zijn de principes uit dit advies aangescherpt en gelden als leidraad voor het tot stand komen van de oplossing (zie [Principes API's](https://github.com/Drechtsteden/API/blob/master/Principes%20API's.docx)).  
Drechtsteden kiest ervoor om voor Vraag/Antwoord-constructies
de andere aanpak te gaan hanteren, en dan specifiek voor afnemende applicaties
die de bevraging van Basis- en Kernregistraties en Zaken/Documenten momenteel
met StUF niet (correct) ondersteunen. 

### Vraag/Antwoord mechanisme

De vraag is standaard en simpel, bevat enkel de aanduiding van de vraag en de zoekcriteria. Door de opzet van vraag/antwoord in elementaire bevragingen bevatten antwoorden geen overbodige gegevens. Is er op basis van een antwoord nog behoefte om verder te vragen, bijvoorbeeld om de gegevens van een gerelateerde persoon, dan dient een nieuwe vraag te worden gesteld. 

Met de vragende partij (de afnemer) is een Gegevensleveringsovereenkomst (GLO) overeengekomen. Dit betekent dat het vastligt welke gegevens (tot op attribuutniveau) maximaal afgenomen mogen worden. Het vraagbericht dat de afnemer stuurt naar de CDV specificeert deze maximale gegevensset niet. De vragen zijn gespecificeerd in de YAML-specificatie, de vragen zijn voor iedere afnemer identiek.  

Nadat de vraag m.b.v. CDV beantwoord is (CDV moet hiervoor een of meerdere bronnen aanwenden) wordt het antwoordbericht gefilterd op basis van de geldende autorisaties voor die afnemer (conform GLO). Het gefilterde antwoordbericht wordt teruggestuurd naar de afnemer.

*Visualisatie*

![alt text](https://github.com/Drechtsteden/API/blob/master/vraag-antwoord.png
"Vraag/Antwoord")

### Technologie

In maart 2016 heeft het Forum Standaardisatie een discussiedocument opgesteld waarin wordt uitgelegd wat API's zijn, hoe ze werken en wat de betekenis is voor standaarden. In deze discussie worden ook achtergronden en trends besproken die de gekozen richting in dit document ondersteunen. Zie voor meer achtergrond informatie: https://www.forumstandaardisatie.nl/thema/application-programming-interfaces-api 

Voor het opstellen van de API's voor Drechtsteden wordt aangesloten op de API- en URI-strategie die is opgesteld door het deelprogramma Digitaal Stelsel Omgevingswet (DsO), zie [DsO](https://aandeslagmetdeomgevingswet.nl/digitaal-stelsel/documenten/documenten/api-uri-strategie/).

API's worden op basis van JSON webservices aangeboden. 

Om tussen softwareleveranciers misinterpretatie te voorkomen wordt via YAML een specificatie opgesteld. Met een YAML specificatie is het mogelijk om JSON webservices te genereren.

##### JSON

JSON is een gestandaardiseerd gegevensformaat. JSON maakt
gebruik van voor de mens leesbare tekst in de vorm van data-objecten die
bestaan uit een of meer attributen met bijbehorende waarde. Het wordt
hoofdzakelijk gebruikt voor uitwisseling van data tussen server en
webapplicatie, als een alternatief voor xml. Daarmee is een JSON API uitermate
geschikt voor de communicatie met mobiele devices en IoT toepassingen van
afnemers.  

##### YAML

YAML is ontwikkeld vanuit oogpunt van menselijke leesbaarheid
en uitbreidbaarheid. YAML is dan ook goed voor mensen leesbaar, mede door de
verplichte witruimtes in regels om structuur aan te geven. YAML ondersteunt
default object referenties en relationele structuren. Dit maakt het mogelijk om
in YAML net als in XML eenvoudig cyclische datastructuren met diepe hiërarchie
vast te leggen. YAML is geen XML, maar kent door de efficiëntere structuur wel
een aantal grote voordelen boven XML. Op basis van YAML gegenereerde JSON, moet
dan nog wel in de software worden geplaatst door de leverancier. Dit kost zeker
ook nog wel ontwikkeltijd, maar het is veel efficiënter en laat minder ruimte
voor misinterpretatie dan de wijze waarop momenteel StUF wordt ingepast in de
software. Precies op dit punt kan de inzet van YAML dus meerwaarde opleveren.
Het is dus niet het idee dat JSON services dan alsnog handmatig worden
gerealiseerd.

Zie document [YAML specificatie](https://github.com/Drechtsteden/API/blob/master/YAML%20specificatie.docx)
voor verdere uitleg over het creeren van YAML-specificaties en het genereren van code vanuit YAML.

### Werkwijze

- Functionele specificatie wordt opgesteld door Drechtsteden
(per EPS), gereviewd door leveranciers en na overeenstemming op Github
geplaatst.

- YAML specificitie wordt opgesteld door Vicrea (per
entiteit), gereviewd door Drechtsteden en Green Valley en na overeenstemming op
Github geplaatst.

- Vicrea en Green Valley zorgen op basis van YAML
specificatie voor het opnemen van de functionaliteit in de software (conform de

beschrijving op Github).

- Voorbeeldberichten worden op Github geplaatst.

### Documentatie

Opgeleverde specificaties

- [SPEC] Functionele specificatie Opvragen BRP-gegevens

- [SPEC] Functionele specificatie Opvragen HR-gegevens 

- [SPEC] Functionele specificatie Opvragen MDW-gegevens 

- [SPEC] Functionele specificatie Opvragen BAG-gegevens 

- [SPEC] Functionele specificatie Opvragen BRK-gegevens 

- [SPEC] Functionele specificatie Opvragen WIJK/BRT-gegevens 

- [SPEC] Functionele specificatie Zaak-Documentservices 

- [YAML] Opvragen BRP-gegevens

- [YAML] Opvragen HR-gegevens 

- [YAML] Opvragen MDW-gegevens 

- Best practices
 
---

Heb je vragen of opmerkingen over dit traject: neem contact op met
Reinier Vaneker (RAL.Vaneker@drechtsteden.nl).

 

 

 

 

 

 

 

