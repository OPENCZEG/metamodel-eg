% Dokumentace k referenčnímu metamodelu EG prvků
% zpracovává projekt #openczeg, (c) 2020 Open-source Aliance
% Verze modelu 0.7.1, verze dokumentace 0.7.1

----------

<details><summary>Technické informace o dokumentaci</summary>

URL zdroje dokumentace: [https://github.com/OPENCZEG/metamodel-eg/tree/master/Dokumentace](https://github.com/OPENCZEG/metamodel-eg/tree/master/Dokumentace)

URL public verze dokumentace: https://www.openczeg.cz/metamodel-eg

[Issue list](https://github.com/openczeg/metamodel-eg/issues)

Správce dokumentace: [Michal Rada](https://github.com/michalradacz), vydává [projekt #openczeg](http://www.openczeg.cz), (C) 2020 [Open-source Aliance](http://www.osaliance.cz)

Generováno: GitHub Markdown, generuje aplikace ArchiMrd 

</details>


----------

# Úvod

Tento dokument jednak popisuje jak se co modeluje aby to bylo v souladu jak s Národním architektonickým rámcem, tak s referenčním modeleme klíčových prvků EG, tak je zároveň dokumentací tohoto referenčního modelu.

## Historie změn

Níže je tabulka historie změn jak pro model, tak pro tuto dokumentaci. Pro větší přehlednost je ve výchozím stavu tabulka sbalená.

<details><summary>Tabulka historie změn a revizí</summary>

| Verze | Datum | Popis změn |
|-----|-----|-----|
| 0.7 | 17.6.2020 | První publikovaná verze dokumentace a release modelu. Obsahuje základní elementy a základní vazby. Další verze budou popsány v této tabulce. |
| 0.7.1 | 14.12.2020 | Opraven element Úkon a do elementů jež mají svoje určení bylo jako atribut Určuje toto doplněno. |

</details>

## Použití modelu a dokumentace

Tento model a dokumentaci lze vyuźít jako základ pro modelování architektury veřejné správy tak, aby byla v souladu s Národní architekturou ČR a se všemi výchozími modelovacími požadavky. Jedná se o referenční metamodel základních prvků pro architekturu EG.



----------


# Modelování v jazyce Archimate

Architektura veřejné správy se primárně modeluje v jazyce Archimate. Archimate je modelovací architektonický jazyk s jasnými pravidly, notací a zobrazením.

## Archimate v češtině pro nearchitekty


Pro uživatele, kteří nejsou na Archimate zvyklí jsme v rámci jiné aktivity [Archimate česky](https://github.com/openczeg/archimate-cz) na miniportálu [Otevřené metodiky](https://www.openczeg.cz/otevrene-metodiky) mimo jiné:

- [Poznáváme jazyk Archimate (česky)](https://openczeg.github.io//otevrene-metodiky/architektura/poznavame-archimate/) je část kde uceleně a jednoduše popisujeme celý koncept jazyka a jeho elementy. Je to primárně psáno a tvořeno pro nearchitekty.
- [Český popis a zobrazení elementů jazyka Archimate](http://www.openczeg.cz//otevrene-metodiky/architektura/poznavame-archimate/): Pro nearchitekty kteří musí ale umět číst a rozumnět diagramům zpracovaným v Archimate jsme připravili v češtině popis toho z čeho se jazyk skládá a hlavně ukázkové obrázky kde se kdokoliv může podívat, jak vypadá aktér, služba, schopnost či aplikace.

## Popis jednotlivých vrstev architektury v kontextu veřejné správy

### Strategická vrstva

Strategický rámec určuje strategii úřadu a jeho služeb a jeho činností. Od strategie se vše odvíjí. Strategická vrstva je tedy tou první důležitou pro celý úřad a také pro jeho interakci s ostatními úřady a klienty. Ve strategické vrstvě je nejdůležitějším elementem pro úřad [Schopnost] - tedy je pro chod úřadu a pro jeho postupnou efektivizaci nutné si udělat základní mapu všech společných schopností úřadu.

### Byznysová vrstva

"Na byznysové vrstvě architektury úřadu jsou zaznamenány všechny klíčové objekty, které se týkají samotné činnosti úřadu. Čili jakákoliv činnost úřadu může být brána jako jeho byznys, přestože se nejedná o klasickou ziskovou firmu. Ať už se jedná o činnosti související s úřední činností v rámci působnosti daného úřadu v agendách, nebo o provozně-režijní činnosti, včetně personální a ekonomické a správní politiky úřadu. Na byznysové vrstvě se znázorňuje vše, co je činnostmi úřadu jako organizace a plyne ze strategie či z předpisů. 
"Na byznysové vrstvě architektury úřadu jsou zaznamenány všechny klíčové objekty, které se týkají samotné činnosti úřadu. Čili jakákoliv činnost úřadu může být brána jako jeho byznys, přestože se nejedná o klasickou ziskovou firmu. Ať už se jedná o činnosti související s úřední činností v rámci působnosti daného úřadu v agendách, nebo o provozně-režijní činnosti, včetně personální a ekonomické a správní politiky úřadu. Na byznysové vrstvě se znázorňuje vše, co je činnostmi úřadu jako organizace a plyne ze strategie či z předpisů. 
Samotný legislativní rámec se udává v podobě elementů typu Contract, a to především [Právní předpis], [Ustanovení právního předpisu], [Vnitřní předpis] a z toho plynoucí obecné prvky jako [Povinnost] a výkon zajišťující [Právo]. Dále se na byznysové vrstvě musí definovat začlenění úřadu v rámci agendového modelu veřejné správy, a to všechny objekty [Agenda], [Agendová činnost] atd.

Po definici těchto prvků je vhodné definovat základní byznysové objekty, jako jsou [Služba], a to včetně služeb poskytovaných klientům a využívaných odjinud, a [Proces]. Subjekty (včetně sama sebe a ostatních úřadů) definujeme jako aktéry, a to zejména u [Orgán veřejné moci] a [Skupina orgánů veřejné moci], jednotlivé subjekty pak stavíme do jejich aktuální [Role] podle toho, co zrovna dělají a jakou mají v dané věci roli. Služby a procesy se neobejdou bez byznysových objektů a je možné definovat i základní byznysové události. Pro detailní popisy procesů slouží procesní modely v jazyce BPMN a architektura je pro detailní rozbor procesů spíše nevhodná, pro rozpad schopností a služeb jsou ale vhodně definované alespoň skupiny procesů nutným základem."

### Aplikační vrstva

"Na aplikační vrstvě architektury úřadu se zaznamenají klíčové elementy, které souvisí s fungováním informačních systémů a aplikací a také s vedením a správou údajů po technické stránce.

U systémů a aplikací jsou klíčovými objekty [Informační systém veřejné správy], a popřípadě další IS reprezentované jako [Informační systém] a provozní [Aplikace]. U každého systému musí být jasné, zda se jedná o vlastní IS, který je spravován právě tímto úřadem, nebo o cizí IS, který je úřadem využíván. U systémů může být pak i hlubší rozpad na objekty typu [Aplikační služba], a případně i [Aplikační funkce]. Pro uskutečňování integrací a vazeb se definují [Rozhraní aplikace] jako technická rozhraní služeb jednotlivých systémů. Tyto objekty mohou mít pak vazby na infrastrukturní a systémové objekty na technologické vrstvě.

U správy údajů je nutno si správně definovat údaje z agend zapsaných v RPP, včetně jejich zdrojů. Aby nebylo nutné definovat v EA každý údaj, lze využít objekt [Skupina údajů], který reprezentuje logický celek jednotlivých údajů. Skupiny údajů vedeme většinou v rámci souboru [Kontext], jak je definován v rámci agendového modelu a propojeného datového fondu. Údaje jsou vedeny buď v informačních systémech, pro jejich přehlednost lze ale systémy dělit ještě na [Evidence], což jsou zákonem či věcnou skupinou definované celky týkající se jednotlivých evidencí údajů a jejich skupin. Jako logický prvek, který se ovšem do architektury nezapracovává jako samostatný objekt, pak slouží [Identifikátor], a to zejména [Identifikátor subjektu] a [Identifikátor objektu], které jsou však na úrovni architektury vždy atributy daného subjektu či projektu a měly by být vedeny i jako atributy u [Evidence] a [Skupina údajů]."
### Technologická vrstva

Technologická vrstva není sice v architektuře úřadu povinná, přesto se ale doporučuje si na ní rozkreslit alespoň technologické a infrastrukturní prvky a zdroje. Jedná se o vrstvu, kde se reprezentuje technologie, infrastruktura, komunikační sítě a zařízení potřebné pro chod informačních systémů a pro zajištění byznysu (činností) úřadu.

﻿

----------

# Přehled klíčových prvků a jak je modelovat v jazyce Archimate

## Modelování agendového modelu a byznysových základů



### Právní předpis

Jeden právní předpis. Je zároveň stereotypem s danou strukturou autributů.

Příklad: Zákon č. 365/2000 Sb., o informačních systémech veřejné správy

Element typu **Contract** se stereotypem **Právní předpis**






### Ustanovení právního předpisu

Konkrétní ustanovení jednoho právního předpisu. Je zároveň stereotypem s určitými povinnými atributy, jako je odkaz na předpis a odkaz na daný fragment právního předpisu.

Příklady: § 5a, Zákona 365/2000 Sb.


Element typu **Contract** se stereotypem **Ustanovení právního předpisu**

Určuje daný právní předpis





### Vnitřní předpis

Vnitřní závazný předpis upravující nějakou oblast. Často se využívá jako element pro úpravu [Schopnost] a nebo agendové konání. Je závazným předpisem pro daného vydavatele, či i pro jeho podřízené či řízené organizace.

Příklady: Spisový řád, Spisový plán, Organizační řád, Podpisový řád, Nařízení ministra


Element typu **Contract** se stereotypem **Vnitřní předpis**

Určuje vydavatel předpisu





### Povinnost

Povinnost definovaná právním předpisem, je ve skutečnosti základem kontraktu zúčastněných stran, přičemž pro stranu poskytovatele povinnosti je povinnou.

Příklady: Zpracovat Informační koncepci ČR, Zpracovat informační koncepci, Předložit ICT projekt ke stanovisku OHA, Využívat údaje z PPDF, Vykonávat spisovou službu

Element typu **BusinessObject** se stereotypem **Povinnost**

Určuje právní předpis





### Právo

Právo definované právním předpisem či jiným předpisem. Většinou na druhé straně vztahu zakládá i související povinnost.

Příklady: Právo na poskytnutí údajů, Právo na nedokládání údajů zapsaných v ZR, Právo podat žádost či učinit podání, Právo požádat o dávku


Element typu **BusinessObject** se stereotypem **Právo**

Určuje právní předpis





### Agenda

Jedna agenda ohlášená v Registru práv a povinností. Je zároveň stereotypem s povinnými atributy, jako je kód agendy a její gestor/ohlašovatel. Zaznamenává se jako element byznys funkce, jelikož zaznamenávat jako kontrakt by bylo nepřehledné.

Příklady: Evidence obyvatel, cizinecká a ochrana hranic, sociální zabezpečení


Element typu **BusinessFunction** se stereotypem **Agenda**

Určuje ohlášení agendy v RPP





### Agendová činnost

Agendová činnost ohlášená v rámci agendy v RPP. Činnost je vždy součástí agendy a vždy je někým vykonávána v rámci jeho působnosti.

Příklad: Zápis údajů do evidence obyvatel

Element typu **BusinessProcess** se stereotypem **Agendová činnost**

Určuje ohlášení agendy v RPP





### Služba veřejné správy

Služba veřejné správy, která je ohlášená v RPP v rámci objektu \[agenda\]. Má svého poskytovatele v rámci agendy. Služba se uvnitř úřadu rozpadá na objekty \[proces\] pro její výkon a \[úkon\] pro zaznamenání formálního úkonu v dané agendě. Nezaměňovat za objekt \[agendová činnost\].

každá činnost registrovaná v RPP jako služba v rámci agendy

Element typu **BusinessService** se stereotypem **Služba**

Určuje ohlášení v katalogu služeb v RPP





### Úkon

Úkon, zejména úkon ohlášený v RPP k dané agendě. Je součástí objektu \[Služba veřejné správy\] a uvnitř úřadu je vázán na \[proces\]. Může být i \[agendová činnost\], nicméně z pohledu agendy v RPP se jedná o ohlášený úkon.

každý úkon ohlášený v RPP u agendy v Katalogu služeb

Element typu **BusinessFunction** se stereotypem **Úkon**

Určuje ohlášení v katalogu služeb v RPP



## Modelování klíčových subjektů



### Orgán veřejné moci

Subjekt, který je orgánem veřejné moci. Definuje se proto, že díky jeho OVMství má nějaké role, povinnosti a práva.

Příklady: Ministerstvo vnitra, Úřad práce, Hlavní město Praha



Element typu **BusinessActor** se stereotypem **OVM**

Určuje ohlášení v katalogu OVM





### Útvar či organizační jednotka

Uvádí konkrétní útvar v organizaci, či její organizační jednotku. Udává se pro detailnější rozpad struktury dané organizace (zejména u OVM) a pro vazbu konkrétního útvaru na jeho role či na další objekty. V detailnějších modelech úřadů může být zapsán i jako příslušný atribut u daného objektu.

Příklady: Ekonomický odbor, Odbor hlavního architekta, Krajské pracoviště Kladno, Správní oddělení


Element typu **BusinessActor** se stereotypem **Útvar**


Určuje organizační struktura





### Skupina orgánů veřejné moci

Definování skupiny orgánů veřejné moci, má odlišné atributy, než je jeden OVM, nicméně platí to samé, něco dělají a mají nějaké role a nějaké povinnosti.

Příklady: Ministerstva, Kraje, Orgány sociálního zabezpečení, Zdravotní pojišťovny

Element typu **Grouping** se stereotypem **Skupina OVM**

Určuje ohlášení v katalogu OVM v RPP





### Subjekt

Subjekt práva, typicky subjekt konkrétní fyzické osoby či subjekt konkrétní právnické osoby. Subjekt má typicky danou roli v určitém kontextu

Příklady: Fyzická osoba, právnická osoba

Element typu **BusinessActor** se stereotypem







### Role

Určitá byznysová role. Jsme vždy schopni k dané roli přiřadit někoho a role vykonává činnosti či pracuje s dalšími objekty. I role je klíčovým elementem v modelu architektury EG.

Příklady: Zaměstnavatel, Dotčený orgán, Rozhodný orgán, Původce, Subjekt veřejné správy, Zadavatel, Správce evidence


Element typu **BusinessRole** se stereotypem







### Gestor

Subjekt, který je vůči předpisu či jinému objektu v roli gestora. Vazbu gestora lze zaznamenat přímou vazbou, nebo atributem. Objekt Gestor se využívá jen v popisném modelu. Nejčastěji je gestor zapsán příslušným atributem u objektu.

Element typu **BusinessRole** se stereotypem






### Ohlašovatel

Virtuální logický objekt role. Subjekt, který je ohlašovatelem agendy. Vazbu ohlašovatele lze zaznamenat přímou vazbou, objekt Ohlašovatel se využívá zřídka, anebo v obecném referenčním modelu. U agendy je ohlašovatel zapsán příslušným atributem.

Element typu **BusinessRole** se stereotypem

Určuje ohlášení agendy v RPP



## Modelování byznysových věcí v úřadu



### Schopnost

Komplexní schopnost, zejména u schopností úřadu. Znamená společnou schopnost v úřadě, která se vykonává jednotně napříč celým úřadem a má i jednotné metodiky a jednotný rámec, ať už se dotýká jakékoliv agendy (v agendách může být pochopitelně parametricky přizpůsobena). Schopnost lze na byznysové vrstvě nejlépe rozpadnout na elementy typu \[Služba\] a \[Proces\], důležité jsou také \[Role\] zejména uvnitř úřadu. Na aplikační vrstvě se nesmí zapomínat zejména na \[Informační systém veřejné správy\] a \[Informační systém\], díky kterým můžeme schopnost realizovat. Schopnost plyne z nějakého byznysového prvku, a tedy zejména z typů \[Povinnost\].

Příklady: Spisová služba, Ekonomické řízení, Architektura, Správa majetku, Správa ICT, Tvorba legislativy


Element typu **Capability** se stereotypem

Určuje mapa schopností úřadu





### Služba

Služba z byznysového pohledu

Příklady: Dávky sociální podpory, Vedení matriky, Poskytování údajů ze základních registrů, Výpis bodů řidiče



Element typu **BusinessService** se stereotypem






### Proces

Proces

Příklady: Výběr barvy polstrování židle, Rozhodování o dávce, Přidělení a zapsání rodného čísla, Reklamování údajů v PPDF


Element typu **BusinessProcess** se stereotypem






### Evidence

Evidence skutečností či dokumentů či informací na byznysové úrovni. Shromažďují a spravují se v ní skutečnosti důležité pro rozhodování v rámci činností úřadu. Na byznysové úrovni znamená logický prvek, který na aplikační vrstvě reprezentuje kupříkladu \[evidence údajů\]. Evidence je základem pro znalosti pro výkon byznysových objektů typu \[služba veřejné správy\], \[služba\] a \[proces\]. Evidence má i své důležité \[role\], jako je editor či subjekt zodpovědný za vedení evidence.

Element typu **BusinessObject** se stereotypem




## Modelování aplikační vrstvy a IS



### Informační systém

Informační systém, který není \[informační systém veřejné správy\]. Pozor, systémy pro správu dokumentů, spisovou službu, ekonomiku a personalistiku vždy vedeme jako ISVS.

Příklady: Systém monitoringu, auditní systém, apod.

Element typu **ApplicationComponent** se stereotypem **Informační systém**






### Informační systém veřejné správy

Jeden logický ISVS jako celek ohlášený do Registru práv a povinností jako ISVS. Je zároveň stereotypem s určitými atributy, jako je kód v EISVS, nebo jeho správce.

Příklady: ISEO, ROB, ISZR, všechny ISVS, všechny ESSL, apod.

Element typu **ApplicationComponent** se stereotypem **ISVS**

Určuje ohlášení ISVS v RPP





### Komponenta systému

Fyzická komponenta systému, se kterou se na vývojové větvi pracuje či dá pracovat samostatně. Může se jednat o fyzické komponenty i s různými dodavateli, což je dobrý způsob oddělení komponent v architektuře.

Element typu **ApplicationComponent** se stereotypem **Komponenta**

Určuje aplikační dekompozice systému





### Modul informačního systému

Modul informačního systému. Jedná se o jeden logický či fyzický modul u modulárního informačního systému, zejména u informačního systému veřejné správy

Element typu **ApplicationComponent** se stereotypem **Modul**

Určuje aplikační dekompozice systému






### Provozní aplikace

Aplikace či systém, které jsou ryze provozními. Jedná se třeba o kancelářské aplikace apod. Do architektury se většinou nezaznamenávají, nicméně je nutné je vést v evidenci aplikací a systémů i z důvodu udržování povědomí o jejich licencování, využívání, aktualizacích apod. V architektuře se ale vést může, a to zejména, pokud nějaký \[Informační systém veřejné správy\] takové klientské počítačové programy využívá (třeba spisová služba využívající Word, nebo aplikaci pro podepisování).

Element typu **ApplicationComponent** se stereotypem **Provozní IS**






### Aplikační služba

Aplikační služba pro alespoň rámcový rozpis toho, co dělá aplikace či systém.

Element typu **ApplicationService** se stereotypem

Určuje aplikační dekompozice systému





### Evidence údajů

Technický prvek \[Evidence\]. Evidence jako souvislá evidence údajů či dokumentů či informací. Je technickým prvkem datové architektury s tím, že se očekává, že evidence je součástí informačního systému, má své zodpovědné subjekty a obsahuje údaje či prvky \[skupina údajů\] a identifikátor(y). Je to důležité i pro daný \[kontext\].

Element typu **DataObject** se stereotypem **Evidence údajů**

Určuje příslušná byznysová evidence





### Skupina údajů

Udává skupinu údajů vztahující se většinou k nějakému subjektu či objektu práva. Údaje jsou evidovány v rámci příslušného informačního systému či evidence apod. Tento datový objekt je datovou reprezentací jednoho či více byznysových objektů jako fyzických údajů. Mimo jiné má v popisu atributů i identifikátor, kterým lze jednoznačně identifikovat věc, ke které se údaje vztahují a jak vznikají a kdo je za ně zodpovědný. V obecných modelech (až na výjimky) není vhodné rozebírat v modelu jednotlivé údaje, proto se využije daná skupina údajů.

Element typu **DataObject** se stereotypem **Skupina údajů**






### Rozhraní mezi aplikacemi

Technické rozhraní mezi aplikacemi, či uživatelské rozhraní. Je důležitým prvkem pro modelování integrací informačních systémů zejména na sdílené služby.

Element typu **ApplicationInterface** se stereotypem

Určuje dekompozice systémů a integrací





### Kontext

Kontext, jak je definován v rámci agend a sdílení v propojeném datovém fondu. Jedná se o soubor subjektů a objektů práva a u nich vedených a spravovaných údajů a o matici využívání těchto údajů. Zaznamená se na aplikační vrstvě, mělo by být vždy jasné, jaké \[evidence\] se týká, jaký \[Informační systém veřejné správy\] je dotčen (či dotčeny) a jaké logické skupiny \[Skupina údajů\] se to týká. U kontextu a evidence a sdílení údajů je nezbytné správně vést a využívat \[Identifikátor\], a to zejména pro \[Identifikátor subjektu\] a \[Identifikátor objektu\]. Kontext se využije pro sdílení údajů mezi jednotlivými agendovými informační systémy.

Element typu **DataObject** se stereotypem **Kontext**

Určuje ohlášení kontextu









----------

# Přehled klíčových vazeb a jak je modelovat v jazyce Archimate

## Vazby pro modelování byznysu veřejné správy



**[Orgán veřejné moci] je gestorem za [Právní předpis]**

Reprezentuje, že nějaké OVM je gestorem za daný právní předpis.

Vazba typu **AssociationRelationship**





**[Orgán veřejné moci] VYDÁVÁ [Právní předpis]**

Reprezentuje vztah, kdy určitý OVM vydává právní předpis. Je zároveň i jeho gestorem.

Vazba typu **AssociationRelationship**





**[Právní předpis] obsahuje ustanovení [Ustanovení právního předpisu]**

Vazba mezi právním předpisem a jeho logickou jednotkou ustanovením.

Vazba typu **CompositionRelationship**





**[Právní předpis] definuje povinnost [Povinnost]**

Vazba pro definici povinnosti. Právní předpis určuje (definuje) nějakou povinnost

Vazba typu **AssociationRelationship**





**[Právní předpis] definuje právo [Právo]**

Vazba pro definici práva. Právní předpis dává (definuje) nějaké právo

Vazba typu **AssociationRelationship**





**[Právní předpis] definuje agendu [Agenda]**

Vazba původu agendy, kdy agendu definuje daný právní předpis.

Vazba typu **AssociationRelationship**





**[Orgán veřejné moci] ohlašuje [Agenda]**

[Orgán veřejné moci] v roli [Ohlašovatel] ohlašuje agendu do RPP

Vazba typu **AssociationRelationship**





**[Ohlašovatel] ohlašuje [Agenda]**

[Orgán veřejné moci] v roli [Ohlašovatel] ohlašuje agendu do RPP

Vazba typu **AssociationRelationship**





**[Orgán veřejné moci] vykonává působnost v agendě [Agenda]**

Daný OVM má působnost v dané agendě. Jedná se o výkon působnosti, tedy jde o vazbu mezi OVM a agendou.

Vazba typu **AssignmentRelationship**





**[Agenda] obsahuje činnost [Agendová činnost]**

Vazba mezi agendou a její agendovou činností

Vazba typu **AssociationRelationship**





**[Ustanovení právního předpisu] určuje činnost [Agendová činnost]**

Vazba mezi ustanovením právního předpisu a z něj plynoucí agendové činnosti. V praxi se příliš nepoužívá, protože to je příliš detailní pohled.

Vazba typu **AssociationRelationship**





**[Orgán veřejné moci] vykonává činnost [Agendová činnost]**

Daný OVM vykonává činnostní roli. Jde o vazbu OVM na danou činnost.

Vazba typu **AssignmentRelationship**





**[Agenda] určuje službu [Služba veřejné správy]**

Reprezentuje, že daná agenda určuje digitální službu či obecnou službu veřejné správy.

Vazba typu **AssociationRelationship**





**[Agenda] určuje úkon [Úkon]**

Reprezentuje, že daná agenda určuje digitální nebo obecný úkon. Úkon je součástí agendy.

Vazba typu **AssociationRelationship**





**[Orgán veřejné moci] VYDÁVÁ [Vnitřní předpis]**

Reprezentuje, že někdo vydává svůj závazný vnitřní předpis.

Vazba typu **AssociationRelationship**





**[Subjekt] má povinnost [Povinnost]**

Subjekt má obecně definovanou povinnost

Vazba typu **AssociationRelationship**





**[Subjekt] má právo [Právo]**

Subjekt má obecně definované právo

Vazba typu **AssociationRelationship**





**[Subjekt] může být v roli [Role]**

Vazba pro přiřazení obecného subjektu (nebo jiného aktéra) do konkrétní role.

Vazba typu **AssignmentRelationship**





**[Role] má povinnost [Povinnost]**

Subjekt v dané roli má určitou povinnost, plynoucí mu právě z jeho role

Vazba typu **AssociationRelationship**





**[Role] má právo [Právo]**

Subjekt v dané roli má určité právo, které má právě díky své roli

Vazba typu **AssociationRelationship**



## Vazby pro modelování aplikační dekompozice a vedení údajů



**[Orgán veřejné moci] je správcem systému [Informační systém veřejné správy]**

Reprezentuje, že nějaké OVM je správcem daného informačního systému.

Vazba typu **ServingRelationship**





**[Informační systém veřejné správy] je užíván OVM [Orgán veřejné moci]**

Reprezentuje, že OVM je uživatelem daného informačního systému.

Vazba typu **ServingRelationship**





**[Informační systém veřejné správy] se skládá z objektů [Modul informačního systému]**

Aplikační dekompozice jde vždy minimálně z úrovně [Informační systém veřejné správy] s dělením na logické či fyzické objekty [Modul informačního systému] a fyzické objekty typu [Komponenta systému]

Vazba typu **CompositionRelationship**





**[Informační systém veřejné správy] řeší datovou evidenci [Evidence údajů]**

Informační systém řeší evidenci údajů a spravují se v něm údaje

Vazba typu **AccessRelationship**





**[Evidence údajů] je reprezentací pro objekt [Evidence]**

Vazba mezi logickou (byznysovou) evidencí jako byznysovým objektem a evidencí v příslušném informačním systému jako technickou evidencí ve formě datového objektu

Vazba typu **RealizationRelationship**





**[Informační systém veřejné správy] eviduje údaje [Skupina údajů]**

Vazba typu **AccessRelationship**





**[Orgán veřejné moci] má provozní systém [Informační systém]**

Reprezentuje, že nějaké OVM spravuje a provozuje a užívá provozní informační systém

Vazba typu **ServingRelationship**


