# Doelstelling Drechtsteden
De doelstelling van Gemeenschappelijk Regeling Drechtsteden (GRD) is om per 1 januari 2018 alle koppelvlakken gerealiseerd te hebben. Het realiseren van koppelvlakken betekent voor Drechtsteden dat alle applicaties gegevens uitwisselen met elkaar via de centrale servicebus van Vicrea (Neuron Integratie Platform). De centrale voorziening waar de servicebus onderdeel van uit maakt wordt binnen Drechtsteden aangeduid met determ "CDV". Met de snelheid waarmee gemiddeld genomen huidige StUF-koppelvlakken gerealiseerd worden binnen Drechtsteden wordt de datum 1 januari 2018 zeker niet gehaald. Dit vraagt om een andere aanpak.

# Aanpak
Drechtsteden kiest ervoor om voor Vraag/Antwoord-constructies de andere aanpak te gaan hanteren, en dan specifiek voor afnemende applicaties die de bevraging van Basis- en Kernregistraties en Zaken/Documenten momenteel met StUF niet (correct) ondersteunen. 
De aanpak die Drechtsteden kiest is in lijn met het advies dat Solventa in opdracht van KING begin 2017 heeft uitgebracht over het opstellen van Eindproductstandaarden ter vervanging van StUF-BG en StUF-ZKN (zie http://www.gemmaonline.nl/images/gemmaonline/0/08/Eindproductstandaarden_-_vervanging_StUF-BG_en_StUF-ZKN.pdf). Hieronder een opsomming van de voordelen van Eindproductstandaarden die in dit advies benoemd worden:

- Eindproductstandaarden kunnen in hoger tempo worden opgesteld door KING.
- Aanbieders van applicaties kunnen eenvoudiger/goedkoper aan eindproductstandaarden voldoen aangezien deze minder complex zijn.
- Eindproductstandaarden zijn toegesneden op ketens en/of afgebakend op een domein en daarmee specifieker.
- De eindproductstandaarden reduceren de ruimte voor interpretatieverschillen tot nihil.
- KING kan de conformiteit aan eindproductstandaarden eenvoudiger toetsen.
- Door de inzet van eindproductstandaarden is de rolverdeling tussen applicatiesscherp gedefinieerd. 
Het advies is omarmd door de StUF Regiegroep en wordt als leidraad gehanteerd voor de opzet van de 'nieuwe StUF'. De nieuwe StUF is niet radicaal anders, het borduurt zo veel mogelijk voort op de goede aspecten vanStUF en andere vastgestelde specificaties zoals LO GBA, RSGB en RGBZ.

##### Nieuwe StUF
Met het omarmen van het advies gaat KING koersen richting een nieuwe StUF. Veel is er onduidelijk over hoe dit traject er uit gaat zien. Een feit is dat Drechtsteden graag de nek uitsteekt en leveranciers bij elkaar brengt om conform eerder genoemd advies koppelvlakken te realiseren. Leveranciers Vicrea en Green Valley zijn inmiddels druk bezig de eerste koppelvlakken te realiseren op basis van YAML/JSON. Met deze resultaten gaat Drechtsteden bij KING aantonen dat er inderdaad vele voordelen te behalen zijn met de inzet van Eindproductstandaarden en de technische mogelijkheden van YAML/JSON. Dit soort praktijkvoorbeelden heeft KING nodig om de route naar een nieuwe StUF te concretiseren.

Drechtsteden zelf is er daarnaast van overtuigd dat op deze wijze de koppelvlakken wel op 1 januari 2018 gerealiseerd kunnen zijn.

##### Vraag/Antwoord mechanisme
Met de vragende partij (de afnemer) is een Gegevensleveringsovereenkomst (GLO) overeengekomen. Dit betekent dat het vastligt welke gegevens (tot op attribuutniveau) maximaal afgenomen mogen. Het vraagbericht dat de afnemer stuurt naar de CDV specificeert deze maximale gegevensset niet. De vraag is standaard, gespecificeerd in de YAML-specificatie en voor iedere afnemer identiek. 
Nadat de vraag binnen CDV beantwoord is door het gegevensmagazijn wordt het antwoordbericht gefilterd op basis van de geldende autorisaties voor die afnemer (conform GLO). Het gefilterde antwoordbericht wordt teruggestuurd naar de afnemer.

# JSON/YAML
Berichtenverkeer dat conform deze aanpak wordt opgezet is gebaseerd op JSON webservices. Om tussen software-leveranciers misinterpretatie te voorkomen wordt via YAML een specificatie opgesteld. Met een YAML specificatie is het mogelijk om JSON webservices te genereren.

##### JSON
JSON is een gestandaardiseerd gegevensformaat. JSON maakt gebruik van voor de mens leesbare tekst in de vorm van data-objecten die bestaan uit een of meer attributen met bijbehorende waarde. Het wordt hoofdzakelijk gebruikt voor uitwisseling van data tussen server en webapplicatie, als een alternatief voor xml. Daarmee is een JSON API uitermate geschikt voor de communicatie met mobiele devices en IoT toepassingen van afnemers.  

##### YAML
YAML is ontwikkeld vanuit oogpunt van menselijke leesbaarheid en uitbreidbaarheid. YAML is dan ook goed voor mensen leesbaar, mede door de verplichte witruimtes in regels om structuur aan tegeven. YAML ondersteunt default object referenties en relationele structuren. Dit maakt het mogelijk om in YAML net als in XML eenvoudig cyclische datastructuren met diepe hiërarchie vast te leggen. YAML is geen XML, maar kent door de efficiëntere structuur wel een aantal grote voordelen boven XML. Op basis van YAML gegenereerde JSON, moet dan nog wel in de software worden geplaatst door de leverancier. Dit kost zeker ook nog wel ontwikkeltijd, maar het is veel efficiënter en laat minder ruimte voor misinterpretatie dan de wijze waarop momenteel StUF wordt ingepast in de software. Precies op dit punt kan de inzet van YAML dus meerwaarde opleveren. Het is dus niet het idee dat JSON services dan alsnog handmatig worden gerealiseerd.

##### Creëren YAML specificaties
YAML-specificatie kunnen gemaakt worden op basis van Open API Specification (OAS) (https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md), voorheen de swagger specificatie genoemd. Deze specificatie wordt nationaal en internationaal breed gedragen en ingezet om ook Restful Api’s  te specificeren en te documenteren.
Als je de specificatie bijvoorbeeld in http://editor.swagger.io/#/  kopieert, dan zie je direct een JSON-response voorbeeld. Er kan ook direct code worden gegenereerd voor allerlei talen voor zowel de client als de server kant.

##### Code generatie vanuit YAML
De meest eenvoudige manier is om naar https://swagger.io/ te gaan en de YAML-specificatie hier in te openen en kiezen bij Generate Server voor het juiste platform. Dit lijkt tot een skeleton voor de implementatie van de webservice. Hoe dit kan worden ingepast in de code van een software-leverancier is aan de leverancier zelf.
Note: Het kan zijn dat de code generatie van deze site niet de meest actuele is. Het onderstaande java project bevat altijd de meest actuele versie van de code. Je moet dan wel java hebben om de code ook voor andere platformen (zoals .NET) te genereren. https://github.com/swagger-api/swagger-codegen https://github.com/swagger-api/swagger-codegen/wiki/Server-stub-generator-HOWTO 
Via de volgende website kun je JSON eenvoudig tegen YAML-specificaties laten valideren: http://www.jsonschemavalidator.net/ 

# Werkwijze

- Functionele specificatie wordt opgesteld door Drechtsteden (per EPS), gereviewd door leveranciers en na overeenstemming op Github geplaatst.
- YAML specificitie wordt opgesteld door Vicrea (per entiteit), gereviewd door Drechtsteden en Green Valley en na overeenstemming op Github geplaatst.
- Vicrea en Green Valley zorgen op basis van YAML specificatie voor het opnemen van de functionaliteit in de software (conform de
beschrijving op Github).
- Voorbeeldberichten worden op Github geplaatst.

# Documentatie
##### Opgeleverde specificaties
- [SPEC] Functionele specificatie Opvragen BRP-gegevens
- [SPEC] Functionele specificatie Opvragen HR-gegevens 
- [SPEC] Functionele specificatie Opvragen MDW-gegevens 
- [YAML] Opvragen BRP-gegevens (categorie 1&8)
- [YAML] Opvragen HR-gegevens 
- Best practices

##### Binnenkort op te leveren specificaties
- [YAML] Opvragen BRP-gegevens (alle overige API's binnen deze EPS) 
- [YAML] Opvragen MDW-gegevens 

##### Backlog op te leveren specificaties
- [Functionele specificatie/YAML] Opvragen BAG-gegevens
- [Functionele specificatie/YAML] Opvragen Zaak/Document

##### Documentatie die nog opgesteld moet worden
- Foutafhandeling
- Plan tot productiename

---

Heb je vragen of opmerkingen over dit traject: mail naar Dennis de Wit (d.de.wit@drechtsteden.nl).







