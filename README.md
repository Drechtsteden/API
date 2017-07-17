# API-Drechtsteden
Conform het advies Eindproductstandaarden ter vervanging van StUF-BG en StUF-ZKN wordt binnen Gemeenschappelijke Regeling Drechtsteden samen met software-leveranciers gewerkt aan nieuwe standaard voor Berichtuitwisseling gebaseerd op YAML/JSON.

# YAML-specificatie en toepassing
YAML is ontwikkeld vanuit oogpunt van menselijke leesbaarheid en uitbreidbaarheid. YAML is dan ook goed voor mensen leesbaar, mede door de verplichte witruimtes in regels om structuur aan te geven. YAML ondersteund default object referenties en relationele structuren. Dit maakt het mogelijk om in YAML net als in XML eenvoudig cyclische datastructuren met diepe hiërarchie vast te leggen. YAML is geen XML, maar kent door de efficiëntere structuur wel een aantal grote voordelen boven XML. 
Met een YAML specificatie is het mogelijk om JSON webservices te genereren. Deze moeten dan nog wel in de software worden geplaatst. Dit kost zeker ook nog wel ontwikkeltijd, maar het is veel efficiënter en laat minder ruimte voor misinterpretatie dan de wijze waarop momenteel StUF wordt ingepast in de software. Precies op dit punt kan de inzet van YAML dus meerwaarde opleveren. Het is dus niet het idee dat JSON services dan alsnog handmatig worden gerealiseerd.
 
# Aanvulling Marcel Slingerland (Green Valley):
·         YAML-specificatie gemaakt op basis van openAPI Specification (OAS) (https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md), voorheen de swagger specificatie genoemd. Deze specificatie wordt nationaal en internationaal breed gedragen en ingezet om Restful Api’s  te specificeren en te documenteren.
·         Als je de YAML-specificatie bijvoorbeeld in http://editor.swagger.io/#/  kopieert, dan zie je direct een JSON response voorbeeld. Er kan ook direct code worden gegenereerd voor allerlei talen voor zowel de client als de server kant.
·         Een YAML-specificatie kan ook eenvoudig gemaakt worden via de tool ‘Restlet Studio’. Handmatig moeten eenmalig de definities in de specificatie gezet worden.
·         In het kort een beschrijving hoe wij bij Green Valley omgaan met code generatie vanuit een swagger definitie bestand (YAML-specificatie).
1. De meest eenvoudige manier is naar https://swagger.io/ gaan het YAML bestand hier in openen en kiezen bij Generate Server voor het juiste platform.  Dit lijkt tot een skeleton voor de implementatie van de webservice.  Hoe dit kan worden ingepast in jullie code zullen jullie moeten uitdokteren.
2. Het kan zijn dat de code generatie van deze site niet de meest actuele is. Het onderstaande java project bevat altijd de meest actuele versie van de code.  Je moet dan wel java hebben om de code ook voor andere platformen (zoals .NET) te genereren. 
- https://github.com/swagger-api/swagger-codegen
- https://github.com/swagger-api/swagger-codegen/wiki/Server-stub-generator-HOWTO
