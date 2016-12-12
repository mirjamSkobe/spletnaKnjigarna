CREATE TABLE zanr (
    ID   INTEGER PRIMARY KEY AUTOINCREMENT,
    zanr TEXT
);

CREATE TABLE format (
    ID     INTEGER PRIMARY KEY AUTOINCREMENT,
    format TEXT
);

INSERT INTO zanr (
                     zanr
                 )
                 VALUES (
                     'kriminalni roman'
                 ),
                 (
                     'biografski roman'
                 ),
                 (
                     'druzbeni roman'
                 ),
                 (
                     'potopisni roman'
                 ),
                 (
                     'zgodovinski roman'
                 );

INSERT INTO format (
                       format
                   )
                   VALUES (
                       'e-knjiga'
                   ),
                   (
                       'mehka vezava'
                   ),
                   (
                       'trda vezava'
                   );

INSERT INTO knjiga (
                       avtor,
                       naslov,
                       opis,
                       zanr,
                       leto_izdaje,
                       st_dniZaDobavo,
                       st_naZalogi,
                       cena,
                       format
                   )
                   VALUES (
                       'Maurice Druon',
                       'Prekleti kralji',
                       'Zajema precej široko obdobje zanimive francoske zgodovine, od kraljevanja Filipa Lepega in “pokola” templjarjev ter s tem pridobljenega 13 letnega prekletstva nad dinastijo Valois. (zadnja izmed teh - 13 rod je bila Margot Valoiška - Film: Kraljica Margot). Serija se konča s stoletno vojno med Francijo in Anglijo ki jo je povzročila Elizabeta (Valoiška poročena s homoseksualnim angleškim kraljem Henrikom) zaradi francoskega prestola, potem ko so umrli vsi njeni bratje. Spletke, zastrupljanje, zakoni, umori, prekletstva, pokvarjeni papeži, manipulativni kralji, vse prepleteno v življenjske zgodbe mnogo posameznikov, ki so pisali zgodovino.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Karl Bruckner',
                       'Zlati faraon',
                       'Angleški arheolog Carter je po dolgem iskanju odkril pri Tebah ob Nilu grobnico faraona Tutankamona in v njej neprecenljive zaklade. Zakladi, po egipčanskem običaju priloženi balzamiranemu kraljevemu truplu, pa niso bili nedotaknjeni. Že v faraonskih časih so tatovi odnesli številne dragocenosti. Kdo so bili tatovi, iz kakšnih nagibov so se lotili tveganega dejanja, in ali niso morda vdrli v grobnico po kakem naročilu? Ta vprašanja so nagnila pisatelja, da je zgodovinska dejstva, ki so prišla na dan ob arheološki najdbi, dopolnil z dobršno mero lastne fantazije, predvsem pa z nespornim pripovednim darom in ustvaril delo, ki priteguje ne samo mladega, marveč tudi odraslega bralca. Zgodba se začne pred 33oo leti in sicer z roparskim podvigom skupinice egipčanskih….',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Ivo Andrić',
                       'Most na Drini; Travniška kronika',
                       'Zgodba se začne pred skoraj 500-timi leti v mestecu ob reki Drini na meji med Bosno in Srbijo. Takrat so bili te kraji pod turško vladavino. Takrat so turki nasilno ugrabljali dečke stare od 10 do 15 let in jih vodili v Turčijo, kjer so jih prevzgojili v janičarje. Med njimi je bil tudi deček iz vasi Sokolovići, ki so mu kasneje dali ime Mehmed paša Sokolović. Mehmed paša Sokololović se je kasneje povzpel do turškega generala in velikega vezirja turškega cesarstva.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Tony Sloane',
                       'Goli vojščak',
                       'Osemnajst letni naiven fant se zaradi razbitega otroštva in pustolovskega duha pridružil francoski tujski legiji. Tako se že v rani mladosti sreča s krutim režimom, polnim nasilja, nevarnosti in kriminala. Odpove se materialnim dobrinam in družini. Ostane mu legija, za katero velja: ko si enkrat notri, lahko pozabiš na ostali svet. V resnični zgodbi spremljamo, kako se človek v nekaj letih osebnostno popolnoma spremeni.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Sa Shan',
                       'Cesarica',
                       'Zgodovinski roman o kontroverzni kitajski cesarici Vu je njen drugi roman in se spušča v zgodovino starodavne dinastije, ki se je na prestolu obdržala od 7. do 10. Stoletja. Zgodovinarji ga opisujejo kot zlato obdobje kozmopolitanske kulture na Kitajskem. Spremljamo usodo glavne junakinje, ki z pogumom ter odločnostjo postane cesarjeva žena in po njegovi smrti prva kitajska cesarica.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Mario Puzo',
                       'Družina: nepozabni Borgijci',
                       'V romanu avtor bralca popelje v 15. stoletje, v Rim, in z enako neposrednostjo, s kakršno je nekoč razodel skrivnosti mafije, razkrije samopašnost ter spletkarstvo Vatikana tiste dobe. Središče pripovedi je Rodrigo Borgia oziroma papež Aleksander VI., moški, s čigar nenasitno slo po moči, razkošju in ženskah, se je lahko merila edino njegova strastna ljubezen do lastne družine. Obkrožajo ga njegovi izjemni otroci: preprosti, premalo ljubljeni Jofre; razdražljivi, brezsrčni Juan; lepa, odločna Lucrezia; in seveda vročekrvni vojskovodja Cesare, ki je bil Machiavellijev prijatelj ter obenem njegov navdih.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Victor Hugo',
                       'Notredamski zvonar',
                       'Roman pripoveduje o grbavem zvonarju Quasimodu v znameniti pariški katedrali Notre Dame in o njegovi tragični ljubezni do lepe ciganke Esmeralde. Govori tudi o odnosih med ljudmi iz različnih družbenih slojev; tisti iz dna družbe, ki se uprejo avtoriteti, večkrat premorejo več srca in razumevanja kot tisti, ki vodijo številne institucije. Govori tudi o nesprejemanju drugačnosti ter o drobnih malenkostih, ki nekatere odnose naredijo pristne.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Nikolaj Vasilevič Gogolj',
                       'Taras Bulba',
                       'Prikazuje večne ruske in poljske spore za Ukrajino. Glavni junaki so Kozak Taras Bulba in njegova sinova. Roman opisuje junaštva, bitke, izdajstvo… Ni samo najbolj znana povest temveč je obenem Iliada Ukrajine…, omamne pesmi o junaštvu in svobodi.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   );

INSERT INTO knjiga (
                       avtor,
                       naslov,
                       opis,
                       zanr,
                       leto_izdaje,
                       st_dniZaDobavo,
                       st_naZalogi,
                       cena,
                       format
                   )
                   VALUES (
                       'Jason Goodwin',
                       'Drevo janičarjev',
                       'Zgodovinski detektivski roman o odkrivanju zarote v Istanbulu 19. stoletja. Iz romana veje vonj po začimbah z velikega bazarja, ki se meša z omamnimi dišavami harema v palači Topkapi. A iz oblaka opojnih dišav se že na prvih straneh izvije tudi rezek in manj prijeten vonj po truplu vojščaka, ki ga najdejo zveriženega v velikanskem kotlu. Vrhovni poveljnik oboroženih sil zasluti zaroto širših razsežnosti, katere cilj je zamajati temelje Osmanskega cesarstva. Klobčič spletk je zmožen razplesti samo en človek: Yashim, detektiv v službi njegovega veličanstva. Možak poznih tridesetih let se ponaša s številnimi darovi, od znanja tujih jezikov do vrhunskih kulinaričnih sposobnosti, vprašljiva je le njegova moškost, saj je Yashim v resnici – evnuh.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Mika Waltari',
                       'Egipčan Sinuhe',
                       'Sinuhe je faraonov zdravnik, ki opisuje Egipt v času prvega monoteističnega vladarja. Padci in vzponi so neizbežni.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Bogdan Novak',
                       'Lipa zelenela je',
                       'Saga v dvanajstih knjigah skozi kroniko dveh družin, ki se na koncu združita, portretira življenje vsega slovenskega naroda od leta 1879 do danes. Je napeta pripoved, polna nenavadnih, a resničnih zapletov na zgodovinskem ozadju, zanimivih dvogovorov in sproščujočega humorja. Je roman človeških poti in iskanj, veselih in tragičnih, o miru, ki ga prekinjajo vojne…..V ozadju pa so ves čas slovenske sanje o svobodi in samostojnosti, ki se na koncu uresničijo, a družini pripeljejo v svet hitrih družbenih sprememb.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Valerion Massimo Manfredi',
                       'Aleksander Veliki, Sin sanj',
                       'Spremljamo Aleksandrovo otroštvo in mladost, strogo, s vsestransko vzgojo, ki mu jo odredi oče Filip, drzen in ambiciozen vojskovodja. Le ta v skrivnostnih okoliščinah umre, ko je Aleksander še fant. Spoznamo tudi mamo Olimpiado in Aleksandrove mladostne prijatelje, ki so vsi po vrsti pripravljeni umreti zanj. In tako se za Aleksandra bliža čas prvih pohodov in bitk.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Marjan Tomšič',
                       'Grenko morje',
                       'Grenko morje je zgodovinski roman, posvečen vsem ženskam, ki so v drugi polovici 19. stoletja, še zlasti pa v obdobju fašizma, odhajale služit denar v Egipt. Gre za t.i. aleksandrinke oziroma šandrinke, kakor so si same pravile v narečnem jeziku. Nadaljevanje: knjiga Južni veter',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Lawrence Durrell',
                       'Aleksandrijski kvartet',
                       'Skupina, ki križari po Sredozemlju, se med postankom na Kreti odpravi v labirint, toda podor kamenja zasuje izhod. Lokalni vodič umre, popotniki pa so v iskanju izhoda in rešitve prepuščeni sami sebi. Že se zdi, da bo pot mimo strašnega »minotavra« pripeljala do rešitve, ko se zgodijo nepredvidljivi obrati. Kaj je torej res in kaj ne, kaj je »minotaver« in kaj, nenazadnje, sam labirint ter kako najti pot iz njega? V pustolovskih zametkih zgodbe se tako skriva vznemirljiva duhovna igra, ki se steka v misel: človek vedno odkrije le tisto, kar je iskal, išče pa le to, kar lahko dobi.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Miljenko Jergović',
                       'Sarajevski Marlboro',
                       'Knjiga zgodb o majhnih ljudeh in stvareh, ki se izrišejo v senci smrti okupiranega Sarajeva. Vse se začne sredi varnega mitološkega otroštva in sindikalnega izleta v Jajce, konča pa z gorečimi sarajevskimi knjižnicami. Je izjemno močan, pretresljiv katalog malih, navadnih ljudi in vsakdanjih dogodkov in navad, ki so v nekem trenutku podvrženi silni eroziji t. i. velike zgodovine in vojne, ki je tragično in neizbrisno zaznamovala vse, prav vse, česar se je dotaknila – tako ljudi kot predmete.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Mineko Iwasaki',
                       'Jaz, Gejša',
                       'Jaz, gejša je osebna izpoved Mineko Iwasaki, ene najbolj cenjenih gejš v zgodovini Japonske in ene od zadnjih mojstric danes izumirajoče umetniške oblike, ki odstira tančico s skrivnostnega poklica. Pri rosnih petih letih se je z rodnega doma podala v svet gejš in naslednjih petindvajset let živela življenje, polno neverjetnih zahtev poklica in bogatih plačil.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Valerija Skrinjar – Tvrz',
                       'Zmajeva kri (Mohor -1. del, Anuška - 2. del, Razhajanja - 3. del)',
                       'S trilogijo Zmajeva kri je pisateljica prikazala zgodovino premogovništva v zagorskem rudniškem bazenu in svoje delo zasnovala tako obširno, da zasluži podnaslov “knapovska saga”, saj sega njegov pripovedni lok od začetka 18. stoletja do 2.svetovne vojne in še čez do zaprtja rudnika. Gre za zgodovinski spomin na prvi zagorsko-zasavsko-slovenski energetski izvir, ki je sprožil prometno in industrijsko revolucijo na Slovenskem v 18. stoletju.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Erich Maria Remarque',
                       'Noč v Lizboni',
                       'Obupan nemški begunec se na začetku druge svetovne vojne potika po lizbonskem pristanišču, ko mu drugi nemški begunec ponudi vozovnico v svobodno Ameriko. V zameno prosi, da z njim preživi noč in prisluhne njegovi zgodbi.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Lian Hearn',
                       'Saga o Otorjih (Meč v tišini, Sledovi v snegu, Sijaj mesečine)',
                       'Spoznamo mladega Takea, ki pred vojsko krvoločnega Sadamuja pobegne iz gorske vasi miroljubnega ljudstva Skritih in se s pomočjo viteza Otorija Šigeruja zateče v njegovo utrdbo. Tam se razkrije Takeovo resnično poreklo, gostitelj mu zagotovi dobro oskrbo, odlične učitelje in vaditelje borilnih veščin. Takeo odkriva svoje čudežne sposobnosti, s katerimi si bo moral izboriti nekdanjo veljavo svojega ljudstva, kar pa mu sovražniki hočejo na vsak način preprečiti.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Thomas Wiseman',
                       'Dan pred sončnim vzhodom',
                       'Knjiga govori o poteku bitk druge svetovne vojne. Govori o letu 1945, ko je Nemčija izgubljala bitko za bitko..... Opisani vodje obveščevalnih služb se ne zmenijo za nikakršna načela, temveč se zelo »elastično« prilagajajo trenutnim potrebam »višje politike«. Kadar obrnejo plašč po vetru, pa znajo kar iz rokava potegniti primerno »utemeljitev«. V tem smislu je knjiga ne samo napeta, temveč tudi poučna.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Peter Townsend',
                       'Dvoboj orlov',
                       'Knjiga opisuje začetek in nadaljevanje zračnih spopadov za Veliko Britanijo. Je dokumentaren oris dogodkov na nebu nad Anglijo v poletju in zgodnji jeseni leta 1940, vojnega obdobja, ki je v novinarski in zgodovinarski obdelavi dobilo naziv »bitka za Anglijo«. Pravzaprav je knjiga več kot le oris ključnih dogajanj v nemški zračni ofenzivi proti Angliji, ker poskuša razložiti tudi vzroke, ki so pripeljali do tega spopada in do totalne zračne vojne. Korenine tega spopada išče že sredi prve svetovne vojne, ko so prvi nemški cepelini in bombniki gotha začeli strahovati angleška mesta in še posebno London…. Primerna za ljubitelje in preučevalce ter modelarje.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Mihail Aleksandrovič Šolohov',
                       'Tihi Don',
                       'Opisuje prvo svetovno vojno, revolucijo in državljansko vojno, zlasti pa tragični kozaški upor. Knjiga z veličastnim realizmom slika edinstveni značaj kozakov …katerih narodi so, kakor se kaže, v nasprotju z vsem in z vsakim, pa vendarle… predstavljajo trdno usklajeno celoto…',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Konstantin Simonov',
                       'Poslednje poletje',
                       'Knjiga govori o drugi svetovni vojni, človeka, ki opisuje, mu je bil v romanu najljubši, je moral umreti, da bi lahko poetično izrazil, kaj pomeni dvajset milijonov žrtev - od katerih je bil sleherni posameznik nekomu najdražji - da bi ponazoril vso veličino te tragedije. Tedaj čuti tudi bralec, koliko nas je veljala vojna.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Cornelius Ryan',
                       'Najdaljši dan',
                       'Knjiga govori o prvem dnevu zavezniške invazije v Normandijo, v kateri je sodelovalo 18.000 padalcev, po morju pa je skoraj 5000 ladij prepeljalo čez Kanal nad 200.000 vojakov, mornarjev in pomorske pehote z vso pripadajočo motorizacijo. Operacijo je ščitilo več tisoč letal in 702 vojni ladji. V treh letih je zbral pričevanja kakih tisoč neposrednih udeležencev dneva D, preživelih zavezniških in nemških vojakov in oficirjev, članov francoskega odporniškega gibanja in prebivalcev normandijskih vasi.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Sandra Paretti',
                       'Maria Canossa; Zima, ki je bila poletje',
                       'Roman slika dogodke poletja 1943 v Rimu. 50 km SV od Rima, Tiburtinških hribih, kraj Saracinesco… Spodaj tečeta Aniene in Fiumicino… V Saracinescu ni nič drugega kot kamen, širni pogled na pokrajino, veter, ki le poredko spi, in nebo, ki je zelo blizu. Da bi pokopali svoje mrtve – za to primanjkuje prebivalcem tako prostora kot zemlje. Pokopališče je na spodnjem koncu ob cesti…, nekaj zveriženih oljk in grbastih trsov dela senco. V najvišji vrsti stoji že ves preperel nagrobnik iz lehnjaka, na katerem piše: MARCO VARELLI, NATUS 1900 – OBIIT 1943. Ta kraj skoraj vedno krasi sveže cvetje. Le malo pa je ljudi, ki vedo, da je grob v beli zemlji prazen…',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Donald James',
                       'Kremeljski naklepi',
                       'Je tipičen politični triler, napisan dobro, akcijsko, z dobrim poznavanjem razmer in okoliščin, z nekaj redkimi izjemami tudi zelo inteligentno. Temelji na opisu resničnih dogodkov in osebnosti; opisi so stvarni, v skladu z zgodovinskimi dejstvi, razen seveda samega umora Stalina, ki pa je logično vtkan v zgodbo.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Robert Graves',
                       'Jaz, Klavdij',
                       'S poznavanjem zgodovine, z domišljijo, duhovito in pronicljivo odstira eno najnasilnejših in najsramotnejših obdobij zgodovine starega Rima – čas vladarjev Cezarja Avgusta, sprijenega pohotneža Tiberija, najslabšega med Klavdijci, razuzdanega in blaznega Kaligule do najboljšega vladarja tega rodu Klavdija. Ta zapostavljeni in odrinjeni jecljavec, prepričan republikanec in izredno načitani modrec je pripovedovalec dogajanja, pošteni kronist dobe in svojih vladarskih predhodnikov.',
                       5,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   );

INSERT INTO knjiga (
                       avtor,
                       naslov,
                       opis,
                       zanr,
                       leto_izdaje,
                       st_dniZaDobavo,
                       st_naZalogi,
                       cena,
                       format
                   )
                   VALUES (
                       'Boris Pahor',
                       'Knjiga o Radi',
                       'V burnem in obenem bridkem obdobju se je v pisateljevem življenju in delovanju prepletla neverjetna množina stvari, rdečo nit pa riše bolezen in slovo njegove življenjske sopotnice Rade Premrl. Ob premišljevanjih in tehtanjih o njej in o njunem odnosu se nizajo številni Pahorjevi nastopi pred domačo in tujo publiko, to je čas njegove nove aktualnosti, evropskega, da ne rečemo svetovnega vzpona v zrelem obdobju, ko s svojim delom in osebno držo postane moralna avtoriteta in simbol in upravičenost te častne vloge vedno znova potrjuje z odzivi na sprotno dogajanje.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'James Joyce',
                       'Pisma Nori',
                       'Ko je dvaindvajsetletni James Joyce, Dublinčan, spoznal tri leta mlajšo rdečelasko iz Galwaya Noro Barnacle, se je začela ena najpomembnejših in najbolj naelektrenih resničnih in literarnih ljubezenskih zvez 20. stoletja. Nora ni postala zgolj središče pisateljevega življenja, temveč tudi navdih za njegov največji roman Ulikses, ki se dogaja 16. junija 1904, na dan njunega prvega zmenka. Zgodba o strasti, ki je poganjala njuno viharno, sedemintridesetletno skupno življenje, se razkriva v nekaj čez šestdesetih ohranjenih Joyceovih pismih Nori.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Peter Čeferin',
                       'Moje odvetniško življenje',
                       'Peter Čeferin, eden najvplivnejših slovenskih odvetnikov, je svojo pisarno odprl daljnega leta 1967. Od tedaj je zastopal in zagovarjal na tisoče klientov na skoraj vseh sodiščih nekdanje Jugoslavije in sedanje Slovenije. V teh letih je v svoji pisarni sprejel najmanj štirideset tisoč strank in spoznal njihove življenjske zgodbe: žalostne, pa tudi vesele. V knjižici Moje odvetniško življenje je avtor zbral 45 zgodb, ki jih je vsa ta leta nosil s seboj.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Jean Echenoz',
                       'Pobliski',
                       'V romanu spoznamo izumitelja, rojenega pred svojim časom, upodobljenega kot Gregorja, ki je spretno izklesan literarni portret Nikole Tesle. Nadarjeni priseljenec, ki je življenje v ZDA začel kot slabo plačan pogajalec za Thomasa Edisona, je s svojimi izjemnimi izumiteljskimi darovi postal Edisonov glavni tekmec. S poglabljanjem v zapleteno Teslovo duševnost, Echenoz osvetljuje tudi nepričakovana nasprotja v izumiteljevem življenju. Neustrašen, ko ga je obdajala strela, je Gregor trepetal pred žensko, ki jo je občudoval, sposoben prodreti v najbolj izmikajoče se skrivnosti visoke napetosti električnega toka pa je podlegel fantazijam strašnega orožja žarkov smrti.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Amos Oz',
                       'Zgodba o ljubezni in temnini',
                       'Zgodba o ljubezni in temnini je družinska kronika, pripoved o otroštvu Amosa Oza v Izraelu v burnih 40. in 50. letih 20. stoletja, kamor sta se iz vzhodne Evrope zatekla njegova zelo izobražena poliglotska starša, zakonca Klauzner. A ni le to: pisatelj sproščeno in odkrito spregovori o svojem odraščanju v intelektualnem okolju, v katerem so bile knjige in besede glavne. Še več: je globok obračun z materinim samomorom. Poleg tega so Ozovo otroštvo v Izraelu zaznamovale tudi zapletene politične okoliščine med Izraelci in Arabci.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Patti Smith',
                       'Pač mulca',
                       'Patti Smith je leta 1989 Robertu Mapplethorpu, preden je umrl zaradi aidsa, obljubila, da bo napisala njuno življenjsko zgodbo. Pač mulca je dosti več kot še ena avtobiografija umetnice in opis romantičnega boemskega življenja v mladosti, je tudi ena najboljših in najbolj berljivih knjig o tem, kako postati umetnik.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Polde Bibič',
                       'Igralec',
                       'Spominjarije so sproščeno pripovedovanje o otroštvu in zgodnji mladosti enega najvidnejših slovenskih igralcev. Polde Bibič spregovori na primer o skrivnostni očetovi smrti, materi, prvi zaljubljenosti, starodavno obarvanem življenju v Žabji vasi, strašljivem pohodu v jamo, imenovano Pekel, in o bolj strašljivih vojnih dogodkih, na primer o bombardiranju Maribora. V pripoved je vpletel tudi zanimive dogodke iz svojega poznejšega življenja, popisal pa je tudi vrstnike, ki so se pozneje s svojim ustvarjanjem zapisali v slovensko zgodovino.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Goce Smilevski',
                       'Sestra Sigmunda Freuda',
                       'Dunaj, 1938. Nacistična Nemčija je okupirala Avstrijo, doktor Sigmund Freud pa je dobil dovoljenje, da sestavi seznam ljudi, ki bodo dobili izhodno vizo in z njim iz Avstrije odpotovali v London. Freud na seznam ni napisal imen svojih štirih sester, ki so bile pozneje deportirane v koncentracijsko taborišče. Tam se ena od njih, Adolfine Freud, spominja svojega življenja in tako pred bralci oživi Dunaj druge polovice devetnajstega in prve polovice dvajsetega stoletja ter življenje Sigmunda Freuda in njegovih sester.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Dean Karnazes',
                       'Ultramaratonec',
                       'Dean Karnazes je športnik, priznan pisec in, kakor piše revija Time, 27. najvplivnejši človek na svetu. Je strasten zagovornik zdravega in aktivnega življenja. Veliko potuje po svetu in ljudem vseh starosti predava o pomenu telesne dejavnosti in zdrave prehrane. Nazadnje je v petdesetih ameriških zveznih državah v petdesetih zaporednih dneh pretekel polnih petdeset maratonov. Neverjetni podvig je okronal s tekom iz New Yorka, kjer je pretekel zadnji maraton, do St. Louisa, kjer je začel s prvim.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Etty Hillesum',
                       'Pretrgano življenje: dnevnik Etty Hillesum 1941 – 1943; Pisma iz Westerborka',
                       'To je zgodba sedemindvajsetletne ženske, živeče v južnem predelu Amsterdama, ki je v letih od 1941 do 1942 pisala dnevnik. To so bila leta, ko se je po vsej Evropi uresničeval scenarij za uničenje Judov. Etty Hillesum je bila Judinja, ki si je prizadevala, da bi ohranila zmožnost razumevanja »podivjanega sveta«. Dnevnike zaznamujejo iskrenost in sproščenost v stvareh, ki zadevajo erotiko, razpoloženja in dovzetnost za lirično izražanje, obenem pa zavedanje, da zlovešča dogajanja pričajo o »pretrganem življenju« in opustošenju sveta. V Amsterdamu je študirala pravo, kasneje pa še slovanske jezike. S psihologijo se je začela ukvarjati v času, ko se je začela druga svetovna vojna. Takrat je začelo njeno življenje dobivati razsežnosti, ki se zrcalijo v dnevnikih.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Nadine de Rothschild',
                       'Ljubezen je ženskega spola',
                       'Nadine de Rothschild ni bila zgolj gejša v senci svojega moža; uresničila je svoj življenjski cilj, srečen zakon, ki je trajal sedemintrideset let. V svoji knjigi na iskriv, zabaven in slikovit način razmišlja o slavnih ženskah, ki jih je v svojem življenju srečala ali pa so bile njene dobre prijateljice, in skuša najti odgovor na vprašanje, zakaj so bile nekatere v ljubezni uspešne, druge ne. V življenju vseh, tako slavnih kot neslavnih žensk, pa vlada isto pravilo: sreča je odvisna od naših želja in nadarjenosti.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Isaac Bashevis Singer',
                       'Ljubezen in izgnanstvo: avtobiografska trilogija',
                       'V začetni opombi nas avtor opozori, da, čeprav gre za avtobiografsko delo, ne gre za popolno zgodbo njegovega življenja, saj je le-to nemogoče napisati, in meni celo, da bi bila takšna dolgočasna. V bistvu gre za biografijo, ki se bere kot leposlovje, saj je v njej dovolj distance do samega sebe, samoironije, celo humorja, čeprav nekoliko grenkega, kakršen je, morda celo bolj kakor njegova lastna zgodba, junak (in pisatelj?) sam.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Andy Warhol',
                       'Filozofija Andyja Warhola: od A do B in spet nazaj',
                       'Filozofija Andyja Warhola, ki nosi podnaslov Od A do B in spet nazaj, se bere kot nekakšen “priročnik za vsakdanjost”, umetnik pa v njem predstavlja svoja razmišljanja tako o slavi, delu, denarju in lepoti kot tudi o ljubezni, spolnosti in celo moči spodnjega perila, ne nazadnje pa tudi o sebi.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Ingmar Bergman',
                       'Laterna magica',
                       'Avtobiografija švedskega filmskega in gledališkega režiserja ter scenarista Ingmarja Bergmana Laterna magica ostaja enako aktualna - lahko bi rekli celo izzivalna - tudi več kot dvajset let po njenem izidu. S psihološko analitičnostjo, značilno tudi za njegove filme, se skozi neposredno pripoved in reminiscence postopoma in nelinearno sestavljajo milje Bergmanovega življenja, njegovi vzponi in padci od otroštva v duhovniški družini na Švedskem naprej. Njegov osebni spomin današnjega bralca nemara ne osupne toliko s pikantnimi podrobnostmi iz življenja slavnega režiserja, njegovih bližnjih in sodelavcev kot z ugotovitvijo, kako življenje, predvsem pa medosebni odnosi ostajajo - isti.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Henri Troyat',
                       'Katarina Velika',
                       'V Franciji živeči avtor te zanimive biografije o ruski carici je bil ruskega rodu in znan kot pisec biografij ruskih in francoskih klasikov. Knjiga opisuje življenjsko pot nemške princese, ki se je leta 1745 poročila z bodočim carjem Petrom III. in po njegovi nasilni smrti postala carica. Vladala je 43 let. Bila je odločna in razgledana. Rusijo je uveljavila v mednarodni politiki, podpirala je kulturo in znanost, spodbujala razvoj mest, trgovine, gradila je ceste… Bila pa je tudi ženska. O vsem tem govori njen življenjepis, s katerim potujemo po širni Rusiji in spoznavamo rusko dušo.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Milena Mohorič',
                       'Zgodbe iz tridesetih let',
                       'Milena Mohorič je mojstrica kratke zgodbe. Ker se je vse svoje življenje ukvarjala z ‘ženskim vprašanjem’, je junak njene kratke zgodbe seveda ženska. Vendar ne katera koli; večinoma gre za meščansko žensko. In posledično se zgodi, da skoraj noben drug avtor ali avtorica kratke pripovedne proze ne zna opisati atmosfere slovenskega meščanskega življenja med vojnama tako prepričljivo kot Milena Mohorič. Če ženska v ta svet ne vstopi kot soproga, ima samo še dve možnosti: da je umetnica ali pa femme fatale, »kamen spotike vsem vrlim zakonskim ženam«.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Stephen Zweig',
                       'Novela o šahu',
                       'Na potniškem parniku iz New Yorka v Buenos Aires hoče neki milijonar za visok honorar zaigrati partijo šaha proti svetovnemu prvaku v šahu Mirku Čentoviču. Mimo pride slučajno emigrant gospod B. ter pomaga milijonarju, da proti svetovnemu prvaku doseže presenetljiv remi.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Alma Karlin',
                       'Moji zgubljeni topoli - spomini na drugo svetovno vojno',
                       'V Mojih zgubljenih topolih Alma M. Karlin ne opisuje daljnih in eksotičnih svetov, ampak domače Celje, kraje in ljudi, ki jih je srečevala na »potovanju« med drugo svetovno vojno, od mariborskega zapora, Bele krajine do Dalmacije.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Ivan Sivec',
                       'Moj ljubljeni Tartini',
                       'Neverjetno vzpodbudno je, da je pisatelj Ivan Sivec v tako kratkem času napisal pravzaprav prvi slovenski biografski roman o slavnem Pirančanu. Naslonil se je na zgodovinska dejstva in na poznavanje življenjske poti velikega “maestra” vse od rojstnega Pirana do Kopra, Padove, Assisija in Benetk ter v vseh teh krajih orisal tedanje družbene razmere in glasbeno dogajanje. Seveda pa je literarno delo umetniško oplemenitil z elementi iz svoje bujne domišljije in s smislom za privlačno, dramatično pripoved, ki bralca tako pritegne, da se povsem sproščeno prepusti življenjski zgodbi, polni bogatih naukov.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Giacomo Girolamo Casanova',
                       'Zgodba mojega življenja',
                       'S svojo lucidno ironijo je za dvesto let prehitel svoj čas. Hkrati pa je bil s svojim hedonizmom in po večini bolj mlačnimi poskusi, da bi podedovani korpus etičnih vrednot nadomestil z novim (ki ga ni našel), značilen predstavnik evropske inteligence 18. stoletja, ki se je pravkar iztrgala baročno prenapetim verskim vplivom in s polnimi pljuči zajela hladni zrak razsvetljenstva; to je obdobje, ko papež razpusti jezuitski red in se vojne nič več ne bijejo zaradi katolištva in protestantstva, temveč zaradi tako otipljivih stvari, kot sta zemljiška posest in mednarodna trgovina.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Tone Partljič',
                       'Hvala vam, bogovi, za te blodnje',
                       'Tone Partljič je dober, najboljši komediograf, ker so njegove komedije natančne študije človekovega vedenja v družbi in ker ima svoje like rad. V tej natančni študiji družbe svojega časa in svojega mesta, v njej nam avtor ničesar ne zamolči, izda nam vse pomembne skrivnosti - a brez ene same človeške izdaje.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Mira Mihelič',
                       'Ure mojih dni',
                       'Romansirana avtobiografija nam bo prikazala položaj ženske v času njenega življenja – kako iz močne, tekmovalne upornice, ki hoče prostor v družbi, postane prilagodljiva in navidezno podrejena.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Slavenka Drakulić',
                       'Frida ali o bolečini',
                       'Frida ali o bolečini je pripoved, ki se sicer opira na nekatera dejstva iz življenja mehiške slikarke Fride Kahlo, katere usodo so zaznamovale posledice v otroštvu prebolele paralize in v mladosti prestane prometne nesreče, vendar ni življenjepis slavne umetnice, pač pa svojski portret ali biografija neke emocije. Intimni opis ženske, obsojene na telo, ukleto v trpljenje. Odmev krikov s slik, porojenih iz bolečine.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Jože Urbanija',
                       'Soldat Klement',
                       'Roman je posvečen vojaku Klementu, ki ga je vojna vihra odpeljala širom po svetu. Zgodba se začenja leta 1941 v vojašnici v Tivatu in se konča z odpustitvijo iz taborišča za vojne ujetnike spomladi leta 1946. Kot vojak elitnega oddelka nemške enote na ruskih in italijanskih bojiščih se je vojskoval v Rusiji, Korziki, Italiji in v Ljubljani. Trikrat je bil hudo ranjen in za las je ušel smrti ob koncu vojne. Knjiga je napisana po resnični zgodbi in bralcem odkriva strah pred smrtjo, upanje na preživetje in iznajdljivost Klementa pri reševanje težav v odločujočih trenutkih.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Bruno Nardini Leonardo',
                       'Portret mojstra',
                       'Pričujoča biografija se osredotoča na razvoj Leonarda kot mojstra – umetnika in znanstvenika. Opisuje vse njegove večje projekte (kip konja, proučevanje leta ptic, portretiranje Mone Lise itd.) in zakaj je bilo njegovo delo tako pomembno za razvoj znanosti in umetnosti. Knjiga je sestavljena iz pričevanj njegovih sodobnikov in ohranjenih zapisov, zato dobi bralec dober pregled nad političnim in kulturnim življenjem v renesansi.',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Gereon Goldmann',
                       'Frančiškan v SS-u',
                       'Osupljiva zgodba mladega bogoslovca, ki je na pragu druge svetovne vojne vržen v temačno Hitlerjevo legijo: med esesovce. Karl Goldman (1916−2003) še ni bil star osem let, ko se je v njem porodila želja, da bi postal frančiškan in kot misijonar odšel na Japonsko. Sanje so se mu kasneje sicer uresničile, a pred tem je moral skozi pekel nacizma in druge svetovne vojne. Resnična zgodba prinaša nov pogled na obdobje, za katero se nam zdi, da ga dobro poznamo. Pripoveduje nam, kako lahko moč resnice razkrinka laž totalitarizma. Življenje, ki ga velja spoznati!',
                       2,
                       1992,
                       5,
                       2,
                       12.9,
                       2
                   );

INSERT INTO knjiga (
                       avtor,
                       naslov,
                       opis,
                       zanr,
                       leto_izdaje,
                       st_dniZaDobavo,
                       st_naZalogi,
                       cena,
                       format
                   )
                   VALUES (
                       'Juli Zeh',
                       'Tišina je hrup',
                       'Poleti 2001 se je Juli z nahrbtnikom, psom Othellom in mobijem napotila v Bosno in Hercegovino. Juli Zeh pa se je v Bosno napotila tudi z vprašanjem, ki ni zaposlovalo le njo, temveč tudi številne ljudi po svetu: Kdo je začel vojno v Bosni in zakaj? Ob tem pa njeno pisanje vodijo tudi naslednja vprašanja: Kje rastejo melone? Kako zelena je Neretva? Zakaj je bila tukaj vojna? Kdo sovraži koga in v kolikšno je to sovraštvo? Njen potopis, ki je napisan jezikovno bogato in izredno zgoščeno, ne skriva simpatij do ljudi in dežele, ki jo prevzame s svojimi številnimi lepotami in naravnimi znamenitostmi.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Geoff Dyer',
                       'Joga za ljudi, ki se jim je ne da početi',
                       'To je duhovita in pronicljiva prvoosebna, nekronološka in tudi sicer precej razvezana potopisna pripoved o avtorju oziroma njegovem alter egu na nenehnem begu z ene eksotične lokacije na drugo (iz Amsterdama v Kambodžo, iz Rima v Indonezijo, iz New Orleansa v Libijo, iz Detroita v Ko Pha-Ngan). Pisatelj nas s svojo inteligentno, razgledano, a tudi samoironično in razorožujoče odkrito držo popelje po daljnih in bližnjih prostranstvih doma in sveta, kjer ga obhajajo občutki vznesene vznemirjenosti, čudenja, pa tudi zdolgočasenosti in otopelosti.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Ann Ambrecht',
                       'Ožine',
                       'Avtorica se je podala v osamljeno vas na jugovzhodu Nepala, kjer je živela leto in pol. Sprva je nameravala proučevati zgolj lastniški odnos vaščanov do zemlje, na kateri živijo, a skozi vse tesnejšo povezanost s tamkajšnjimi ljudmi je ugotovila, da sama ni prav nič manj opazovana kot »drugi«. Vaščani so jo začeli sprejemati medse in sčasoma je doumela globlji pomen besed, ki so zaradi prepletenosti s kulturo neprevedljive. Ob vrnitvi domov je avtorica ugotovila, da je izkušnja življenja in odnosov v nepalski vasi spremenila njen dotedanji pogled na življenje, vključno z njenim zakonom.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Davor Bračko',
                       'Bračkovi na potovanju',
                       'Petletna Maša, desetletna Sara in njuna starša Sabrina in Davor, so zapustili varno zavetje doma, službe in šole ter se za leto dni podali v odkrivanje neznanega sveta. Dva velika nahrbtnika so napolnili z vsem, kar potrebuje štiričlanska družina v enem letu, in odleteli v Azijo. Potovali so prepuščeni usodi, ki jih je 374 dni vodila po šestnajstih državah okrog sveta. Pustolovščina brez potovalnega načrta, brez obveznosti, brez sponzorjev, le družina na poti spoznavanja sveta in sebe.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Ryszard Kapuscinski',
                       'Potovanja s Herodotom',
                       'Potovanja s Herodotom pripoveduje reporter v zrelih letih, ki presoja svojo življenjsko pot in poslanstvo skozi perspektivo zgodovinopisca Herodota. Znameniti Grk je imel nekaj bistvenih lastnosti dobrega novinarja: poleg predanosti svojemu poslanstvu so bile njegove značajske lastnosti odprtost, vedrost, komunikativnost ter neusahljiva radovednost in vedoželjnost. Glavna lastnost, s katero je Herodot prerasel svoj čas in sega v našega, pa je občutek za drugega, spoštovanje in sprejemanje drugačnosti pripadnikov tuje kultur in predstavnikov drugih svetov.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Christopher Marrill',
                       'Ostali bodo samo žeblji',
                       'Potopis, ki opisuje Slovenijo in je do Slovenije in Slovencev zelo neprizanesljiv. V njem najdemo veliko znanih oseb iz svojega vsakdana in vrsto navedkov iz književnosti, s katerimi pisatelj podpira svoje razmišljanje. Knjiga, ki bo Slovence dodobra posvarila, kako jih vidijo tujci.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Tatjana Gromača',
                       'Bele vrane',
                       'Pred bralcem je nova Istra, v kateri ni množičnega turizma in vsem znane prepolne obale, ampak množica privlačnih samotnih stranskih poti. Avtorica opisuje spregledane posebnosti, recimo na kavarnico v stranski ulici, v kateri streže sam lastnik, nekdanji boksarski prvak Mate Parlov, ali na družabne rituale priseljencev z različnih koncev Balkana.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Jan Morris',
                       'Trst in kaj pomeni nikjer',
                       'Mesto v zalivu, mesto pod hribom, mesto, ki je in ga ni. Trst, ki ga Slovenci pogosto občutimo kot fantomsko bolečino in poznamo predvsem kot nakupovalno središče. Jan Morris nam Trst kaže od daleč in popolnoma od blizu, skozi zgodovinski in skozi intimni spomin, kot evropsko in svojo osebno metaforo: kot mesto, ki je podoba življenja z upanji in razočaranji in spomini, predvsem pa doživljanja časa, ki mineva, in življenja, ki se izteka. Trst, mesto protislovij, je za Jan Morris »še vedno enklava sui generis, kjer se mešajo Latinci, Slovani in Tevtoni, kamor se lahko umaknejo umetniki, faliranci, odpadniki, izgnanci in emigrantski vzdrževanci in kjer so z nekaj sreče lahko celo zadovoljni«.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Dušan Jelinčič',
                       'Kam gre veter, ko ne piha',
                       'Kam gre veter, ko ne piha je pripoved o plezanju na himalajske osemtisočake, o vsem, kar stoji med in v isti sapi omogoča eno samo pot od baze do baze in skozi baze do vrha, pot, ki ni nič manj metafora življenja samega. Alpinizem je hvaležna dejavnost za tistega, ki se nahaja na razpotju. Pri njem ni potrebno iskati metafor, ker že sam predstavlja metaforo: samo s trdno voljo, odgovornim pristopom in nečloveškim naporom se prebiješ vse višje in višje – v tem primeru čisto fizično višje, brez prispodob.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Evald Flisar',
                       'Potovanje predaleč',
                       'Potovanje predaleč, v katerem se avtor, ponovno odpravi v Indijo, da bi ob svojem učitelju Joganandi opravil nedokončano delo, je knjiga o dobro znanem Flisarjevem junaku: evropskem nemirnežu, popotniku in bogoiskatelju; ubežniku iz sveta plitvih gotovosti in ustoličenih zmot; izobražencu, ki ostaja samemu sebi največja skrivnost.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Levstik',
                       'Popotovanje od Litije do Čateža',
                       'Literarni potopis v prvem delu popisuje kratko pot, ki jo je Levstik s prijateljem prehodil od Litije prek dolenjskih gozdov in vinogradov do Čateža. Govori o ljudeh, ki sta jih srečala na poti, in razmišlja o gospodarskih, družbenih in kulturnih razmerah.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Zvone Šeruga',
                       'Drugačne zvezde – z motorjem okoli sveta',
                       'Knjiga beleži potovanja od leta 1983 do 1990. Avtor, ki s partnerko potuje po petih celinah sveta, potovanje dojema kot izkušnjo dveh ljudi, ki še iščeta svoj smisel, drug drugega in sebe. Potopis opisuje poti, po katerih sta hodila, hkrati pa je tudi osebna izpoved.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Mare Cestnik',
                       'Motnje v raju',
                       'Zbirka dvajsetih popotnih pripovedi prinaša razgibana, slogovno izbrušena poročila o soočenjih in prijateljevanjih s tako otoško vabljivimi deželami, kot so na primer Cookovi otoki, Filipini ali Sri Lanka, vendar tudi s tako rekoč bolj navadnimi, kot so ZDA, Češka ali države bivše Jugoslavije.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Gregor Fodransperg Fedr',
                       'Kolo, severovzhod',
                       'V knjigi z živopisnimi fotografijami se v šestih etapah pred nami razgrnejo številne zabavne štorije pa tudi neprijetne preizkušnje dveh popotnikov. Z njima se tako prebijamo po vročem poletnem asfaltu, preganjamo trume komarjev, hladimo izmučene mišice, spoznavamo nove ljudi, krpamo zračnice, popravljamo okvare in zraven mimogrede načrtujemo še svoja potovanja. Zakaj sploh potujemo? Da vidimo, doživimo in začutimo svet nekoliko drugače.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Jian Ma',
                       'Rdeči prah',
                       'Ma Jian avtobiografsko opisuje svoje triletno popotovanje po Kitajski, na katerega se je odpravil, ko je prišel v nemilost pri oblasti in mu je grozil zapor zaradi »duhovnega onesnaževanja«, hkrati doživel razočaranje v ljubezni in izgubil vero vase. Prične iskanje izgubljene identitete moža, ljubimca, očeta, umetnika, budista in Kitajca, in se po celotnem krogu potovanja kot duhovnega romanja v Tibet vrne na izhodišče.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Michael Palin',
                       'V 80 dneh okoli sveta',
                       'Avtor obnavlja znamenito potovanje, ki ga je v istoimenski knjigi opisal Jules Verne. Vendar je potovanje okoli sveta sto let kasneje pravzaprav bolj zapleteno. Svet je namreč prilagojen potovanju z letali in težko je najti ladje, ki bi prevažale potnike, zato se Palin in njegovi spremljevalci velikokrat zatečejo na ladje, ki gostom niso prilagojene. Duhoviti opisi krajev in ur čakanja se pomešajo v zabavno branje o dandanes zelo posebnem načinu potovanja.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Miran Tepeš',
                       'Z vetrom',
                       'Gre za potopis o potovanju z jadrnico okoli sveta, ki ga je izvedel v več etapah med letoma 2006 in 2008 in na katerem je z 12-metrsko jadrnico preplul 26.541 navtičnih milj. Na svoji poti okoli sveta je avtor spoznal zanimive dežele in ljudi. 300 dni je jadral v družbi prijateljev, včasih tudi sam. Od tega je 192 dni prejadral, 77 dni je preživel na otokih, v zalivih in različnih pristaniščih, 17 dni na letalih in letališčih, 14 dni pa je porabil za vzdrževanje in popravila jadrnice Skokice.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Alexander Frate',
                       'Na lovu za monsunom',
                       'Ko pride monsun, vsi bežijo. Narobe. Nikdar ni svet lepši kot tik pred katastrofo. Na lovu za monsunom, »sodobno romanje po Indiji«, prepleta zgodovino, etnografijo in osebno izkušnjo v enkraten portret indijske podceline. Alexander Frater se premika tako kot deževje in opazuje ljudi na preizkušnji. Polja poplavlja, ceste odplavlja, promet izgine, voda zastaja, le birokracija ostaja, kakršna je bila. Zelo malo popotnikov je pripravljeno na take preizkušnje, vendar se v težkih razmerah razkriva posebna lepota bivanja in potovanja.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Redmond O’Hanlon',
                       'V osrčje Bornea',
                       'Redmond, depresiven po pisanju doktorata o Charlesu Darwinu, in njegov prijatelj pesnik se odločita, da se bosta s čolnom podala v osrčje Bornea. Na letališču se, da bi se zavarovala pred vsemi stiki z okolico, saj je vsak zelo nevaren, pojavita s kupi odvečne prtljage, po Borneu pa je treba potovati s kanujem, česar nista ravno vajena. Dodatno preizkušnjo predstavljajo srečanja z domorodci in njihovimi običaji.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Olga Paušič',
                       'Z nahrbtnikom, s kamero in peresom po svetu',
                       'Avtorica podoživi popotovanja po enaindvajsetih deželah sveta. Gre pravzaprav za zbirko potopisnih člankov, osebnoizpovednih popotniških pripovedi in dnevniških zapisov s potovanj, ki nam pričarajo zelo raznolike dežele sveta od Južne in Srednje Amerike, preko Osrednje Azije vse do Kitajske in Maroka. Knjiga s svojo osebno noto, zanimivo izpovednostjo in poljudnim slogom z lahkoto pritegne bralca, ne da bi ga obremenjevala s kopico strokovnih razlag.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Alma Karlin',
                       'Urok južnega morja',
                       'Alma se je po prvi svetovni vojni podala na študijsko potovanje okoli sveta, na katerem je preučevala tuje dežele, tamkajšnje prebivalce in njihove navade, običaje, verovanja, rastlinstvo in živalstvo. Urok je nadaljevanje knjige Samotno potovanje in nas ponese v južni del Tihega oceana, v Singapur, Malezijo, Tajsko, majnmar, Indijo, preko Rdečega morja, skozi Sueški prekop, v Benetke in domov.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Brian Thacker',
                       'Coach surfing - od kavča do kavča okoli sveta',
                       'Ena od možnosti avanturističnega raziskovanja sveta je Couch Surfing – kavčanje ali prenočevanje pri neznancih, ki ti prek spletnega omrežja za prenočitev ponudijo svoj kavč, morda še kavo in seveda lokalno obarvano raziskovanje dežele. Avtor pričujočega potopisa, avstralski avanturist, se je odločil na ta način prepotovati svet od Južne Amerike čez Kanado, Islandijo ter prek Evrope v Afriko, Indijo in do Filipinov. In če sami nimate poguma, da bi se lotili kavčanja, potem vzemite v roke vsaj ta potopis.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Uroš Ravbar',
                       'Študent na poti okoli sveta',
                       'Avtor se v knjigi srečuje s svetom, polnim presenetljivih drugačnosti. Na poti se srečuje z ljudmi, ki po vedenju sodijo v davnino, in z njimi doživi preprosto spoštovanje vsega njihovega. Hkrati pa se sreča tudi z drvečo množico sodobnega sveta, ki ga utesnjuje.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Staša Lepej Bašel',
                       'Camino - moja samotna pot',
                       'Ko se romar odpravi na pot z imenom Camino, ga čaka približno mesec dni telesnih naporov in bolečin, pa tudi čedalje jasnejših misli in premaganega strahu. Takšne izkušnje je razbrati iz pričevanj ljudi, ki so doslej prehodili slovito romarsko pot med Francijo in Španijo s ciljem v Santiagu de Compostela.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Matjaž Trontelj',
                       'Belo jajce na Tibetu',
                       'Avtor nas humorno, doživljajsko bogato in brez ovinkarjenja popelje po Tibetu, kjer je spoznal, kako je surovi vsakdan prežet z duhovnostjo, izkusil življenje pri domačinih v vaseh in pri menihih v samostanih.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Anunciada Fernandez De Cordova',
                       'Letijo dnevi',
                       'Knjiga domiselno združuje najprivlačnejše značilnosti potopisa in spominov. Avtorica svoje številne poti opisuje razmišljujoče, hkrati pa subjektivno in doživeto kot življenjsko izkušnjo. Opisuje glasbo z ulic New Yorka in Brazilije, puste južnoameriške in kantabrijske obale, nadležnost aseptičnih potovanj v letalih, poezijo in slikarstvo sodobnih avtorjev, kotičke Berlina, Luksemburga, Maroka, Malte, Gruzije, Sirije, Buenos Airesa, Toskane, Montevidea, Casablance, Kenije in tudi Slovenije, kjer trenutno živi.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Osip Emilevič Mandelštam',
                       'Potovanje v Armenijo',
                       'Mandelštama, dotlej zapriseženega Moskovčana, gani velikodušnost podeželanov, ki jih srečuje, in pretrese dežela, ki se ji pozna dediščina zgodnjega krščanstva. Nagle menjave prizorišč in sogovornikov ne zaustavljajo tenkočutnosti. Knjiga pa ni le eden redkih odsevov porevolucijskega časa na Kavkazu, zaradi česar je ob objavi sprožila številne polemike, temveč s svojo poetičnostjo tudi brezčasna pesnitev o večnem nasprotju med mestom in deželo.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   ),
                   (
                       'Uroš Blažko',
                       'Pot v večno poletje',
                       'Potovanje v večno poletje je trajalo dvakrat po eno leto. Tri knjige Uroša Bračka opisujejo potovanje z motorjem okoli sveta. Tretja nas popelje na popotovanje skozi Iran, Pakistan, Indijo, dežele Indokine, Indonezijo in Avstralijo.',
                       4,
                       2000,
                       5,
                       2,
                       12.9,
                       2
                   );

INSERT INTO knjiga (
                       avtor,
                       naslov,
                       opis,
                       zanr,
                       leto_izdaje,
                       st_dniZaDobavo,
                       st_naZalogi,
                       cena,
                       format
                   )
                   VALUES (
                       'Erskine Caldwell',
                       'Vroč dan',
                       'Delo obravnava problem divje pravice in linčanja. Zmešan babji fanatik si je izmislil, da je mlad črnec posili belo dekle in čeprav vsi vedo, da je črnec nedolžen kot otrok in belka znana nimfomanka, se takoj dvigne divji lov. Edina rešitev za črnca je, če ga okrožni šerif kot predstavnik zakona ulovi pred drugimi gonjači in ga pravočasno skrije pred njimi v zaporu.',
                       1,
                       1973,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Josephine Tey',
                       'Gospodična Pym',
                       'Prvi dve tretjini romana sta s stališča detektivke skoraj nedolžni, ker pisateljica živo, neposredno in ironično opisuje življenje v zaprtem krogu visokošolskega dekliškega internata. Tekst je prepleten s pretanjenimi opisi drobnih prepirov in trenj, komičnih vsakdanjih nadlog in dogodkov. V to idilično okolje pa nenadoma trešči umor, osovraženi učenki je nekdo spodžagal telovadno orodje, tako, da se med treningom v telovadnici ubije. Tudi razplet zgodbe je zelo neobičajen in nepričakovan. Skratka roman je vrhunski vzgled angleške šole detektivskega romana, zgodbe, ki se ne izteče v prazno logiko, marveč izpolni pripovedno ogrodje s prizanesljivo ironijo živega okolja, polnega vsakdanjih skrbi in veselih trenutkov.',
                       1,
                       1983,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Ira Levin',
                       'Fantje iz Brazilije',
                       'Avtorja so k pisanju romana nedvomno spodbudili znaki, ki so desetletja po drugi svetovni vojni, na najrazličnejše načine opozarjali na ponovno prebujanje nacizma. Levin je te vzgibe ujel v razgibano in napeto zgodbo o ubijanju možakarjev, ki v mirnih družinskih okoljih preživljajo pozna srednja leta. Kar štiriindevetdeset naj bi jih »za dokončno zmago arijske rase« moralo umreti pod morilskimi rokami članov nacistične organizacije v Južni Ameriki. Peklenski načrt Josefa Mengeleja, ki je s pomočjo štiriindevetdesetih žensk v svojih laboratorijih spočel ravno toliko genetskih dvojnikov Adolfa Hitlerja, ki je nekoč dovolil, da mu je Mengele vzel pol litra krvi in košček tkiva.',
                       1,
                       1978,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Robert Ludlum',
                       'Ostermanov vikend',
                       'Robert Ludlum je sila spreten in zato slaven pisec kriminalno vohunskih romanov, takšnih, v katerih bralec drhteč spoznava različne obveščevalne službe in se trudi verjeti, da je vse skupaj le pisateljeva zamisel, a si mora naposled priznati, da bi bilo vse, kar opisuje avtor, čisto mogoče res. Tudi Ostermanov vikend v vrsti Ludlumovih romanov ni izjema. V njem moramo skupaj z osrednjim junakom, urednikom pomembnega televizijskega programa, doživeti mnoge preizkušnje in strese. Vse namreč kaže na to, da je trojica njegovih najbližjih prijateljev do vratu zapletena v obveščevalno mrežo sovražne sile in on naj bi jih pomagal razkrinkati.',
                       1,
                       1989,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Tomo Rebolj',
                       'Vražji glas',
                       'Zagonetni pripovedovalec napete zgodbe v prvi osebi je nekakšna različica večnega Juda, brezdomnega marginalca na poteh evropskega sveta. Obsojen je, na popotovanje, ki ne vodi nikamor. Prav v tej nerešljivi junakovi poziciji pa je temeljni suspenz pričajoče kriminalke.',
                       1,
                       1989,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Erle Stanley Gardner',
                       'Krivoprisežna papiga',
                       'Popolnoma čista kriminalka z dobrimi in slabimi stvarmi. Nenavaden je začetek, ki nas takoj potegne v dogajanje, z zapletom, polnim nepredvidljivih obratov in z logičnim razpletom, ki je dejansko vreden tega imena.',
                       1,
                       1983,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Nicholas Meyer',
                       'Sedemodstotna raztopina',
                       'Sedemodstotna raztopina, ki je v letu izida (1974) dobila nagrado ameriških piscev detektivk za najboljši roman leta. Dr. Watson je že obupan nad svojim prijateljem Holmesom, ki se vse bolj predaja mamilom in vidi v svojem nekdanjem profesorju matematike sovražnika in preganjalca. Holmesa zato s prevaro zvabijo na Dunaj k Sigmundu Freudu, ki menda uspešno uporablja neko povsem novo metodo pri zdravljenju psihičnih bolezni.. Dr. Freud sprejme Holmesa v analizo in njuno sodelovanje se izkaže za obojestransko koristno.',
                       1,
                       1983,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Morris West',
                       'Salamander',
                       'Ta zelo verodostojni in prepričljivi politični roman sodobne Italije je za branje izredno privlačen, osupljiv po zgodbi in dejanjih, tudi srhljiv. Dogajanje se dramatično razplete, bralcu pa ostane grenko spoznanje, kako nemočni sta poštenost in zvestoba idealom spričo korupcije in kriminala. Salamander je delo, ki kar primora bralca, da se globoko zamisli ob tej mračni podobi brezobzirnih bojev za oblast in denar, prav kot se zamisli ob nekaterih svetlih likih, ki pogumno in vztrajno, čeprav na videz brezupno, stojijo v obrambi pravice, reda in poštenosti.',
                       1,
                       1976,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'James M. Cain',
                       'Poštar pozvoni vedno dvakrat',
                       'Velja za eno največjih mojstrovin na področju žanrske literature. V pripovedi spoznamo Franka Chambersa, klateža, ki se znajde v enem izmed številnih obcestnih lokalov v Kaliforniji. Lastnik mu ponudi delo in ko Frank zagleda njegovo privlačno ženo Coro, se nemudoma odloči, da bo ostal. Zapeljiva Cora v mlademu Franku hitro vidi priložnost, da se reši dolgočasnega življenja in ga zlahka zvabi v svoje mreže. Cain je tako v Poštarju ne le do potankosti izdelal svoj prvoosebni »tabloidni« glas, ampak tudi do konca razvil svojo obsedensko temo o brezobzirnem, čustveno defektnem moškem, ki je iz poželenja do ženske pripravljen prekršiti moralne norme, in o ženski, ki ga je pripravljena k temu spodbuditi, skupni zločin pa ju potem pritira do medsebojnega izdajstva in pogube.',
                       1,
                       1983,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Süskind Patrick',
                       'Parfum',
                       'Pariz, 18. stoletje; čas neznosnega mestnega smradu. Ulice smrdijo po gnoju, dvorišča po urinu, stopnišča po podganjih iztrebkih, kuhinje po pokvarjenem zelju in spalnice po umazanih rjuhah. Sredi teh vonjav se nekega vročega poletnega dne rodi Jean-Baptiste Grenouille – otrok brez lastnega vonja, a s čudežno občutljivim vohom. Prične se ena najbolj nenavadnih in osupljivih zgodb v sodobni literaturi.',
                       1,
                       1987,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Stephen King',
                       'Mačje pokopališče',
                       'Kdo si ob smrti ljubljene osebe ne želi, da bi poznal moč, ki bi jo priklicala nazaj? Louis Creed se z družino preseli v novo hišo. Idilo ob robu gozda pa že od začetka spremljajo nenavadni dogodki. Ko umre njihov maček, ostareli sosed Louisa pelje na starodavni kraj, imenovan Mačje pokopališče. Tako obudita srhljivo skrivnost, njena moč začne naraščati, Louisa vse bolj obvladuje ... posledice so pogubne. V Mačjem pokopališču se ob junakovem spopadu z nadnaravnimi silami ter prizadevanju, da bi se v njegovo družino ponovno vrnila sreča, razkriva človekovo kljubovanje smrti in njegova nemoč. King se ob genialnem zapletu izkaže tudi kot izvrsten pripovedovalec. Leta 1989 so po romanu posneli film.',
                       1,
                       1989,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Vandergriff Aola',
                       'Wyndspelle, Wyndspelski otrok, Wynspelski zvon',
                       'Posvojeno dekle puritancev obtožijo čarovništva. V strahu pred smrtjo zbeži v prekleto hišo v kateri naj bi živel sam hudič. Tam jo omamijo in poročijo z njim. Skozi življenje na Wyndspellu (hiša) spoznava pravo naravo žalosti hiše in resnico o njenih prebivalcih. Njen slepi mož jo hkrati privlači a si o njem ne more ustvariti pravega mnenja. Ko pride na obisk njegova bivša ljubezen se stvari še bolj zapletejo... Dramatičen konec.',
                       1,
                       1978,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Martin Cruz Smith',
                       'Park Gorkega',
                       'Park Gorkega ni samo detektivski roman, zato je zanimiv tako za bralca, ki mu je do napete zgodbe, kot za tistega, ki tudi od tovrstnega branja pričakuje večjo tehtnost v vsebinskem smislu. Kraj dogajanja je sprva Moskva in na koncu New York.',
                       1,
                       1983,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Robin Cook',
                       'Koma',
                       'Napeta kriminalna pripoved iz zdravniškega življenja, polna skrivnosti. Dogaja se v bolnici v Bostonu, kjer mlada in privlačna študentka medicine vbrizga bolniku napačno injekcijo in ta pade v komo, iz katere se ne zbudi več. Ko začne raziskovati vzrok temu, ugotovi, da je v tej bolnici veliko takih primerov. Zakaj in kdo ima korist od tega?',
                       1,
                       1988,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Etienne Bolo',
                       'Škorpijon',
                       'Vohunski roman o podtalnem in vohunskem delovanju različnih političnih in tajnih policijskih enot in gospodarskih lobijev. Dogaja se konec leta 1975, ko operacija ŠKORPIJON skuša s terorističnimi akcijami in sabotažami destabilizirati Alžirijo, nekdanjo francosko kolonijo, s pomočjo različnih plačancev, skrajnimi desničarji, najemnimi vojaki, pa tudi s posredovanjem visokih vladnih in diplomatskih osebnosti.',
                       1,
                       1984,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Hans Habe',
                       'Mreža',
                       'Kriminalno vohunski roman v katerem je med glavnimi osebami romana dvakratni seksualni morilec, nasprotni lik pa je kriminalist, ki lovi morilca. Razen njiju je v romanu še več pomembnih oseb vpleteno v napeto dogajanje, med njimi novinar in založnik revij, ki morilca prva odkrijeta, vendar tega ne prijavita policiji. Z njim se namreč pogodita, da prej napiše spomine za velik honorar.',
                       1,
                       1989,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Dashiell Hammet',
                       'Malteški sokol',
                       'O vsebini romana samo na kratko, grobi detektiv proti nadišavljenemu lopovu, pohlepni debeluh in lepa ampak zahrbtna ženska, ki išče zgodovinski zaklad.. Lahko bi rekli tipična zgodba za kriminalni roman, vendar verjemite napisana povsem netipično dobro.',
                       1,
                       1983,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Mario Puzo',
                       'Boter',
                       'Boter ni le napeta mafijska oziroma kriminalna zgodba, temveč tudi mogočna družinska saga. Zgodba, ki govori o zapeljivi privlačnosti moči in oblasti, o pasteh pohlepa in trdni zavezanosti družini. Roman je ponudil drugačno vizijo življenja onstran zakona. S svojo družinsko pripadnostjo in izkoriščanjem birokratskih vrzeli je družina Corleone ponudila zapeljivo alternativo zakoniti, a majavi in neučinkoviti oblasti. Ti ljudje so bili sposobni uresničiti svoje sanje, sposobni spraviti stvari ‘v red’, kar voditeljem tedanjega časa ni uspevalo. Družina svojih članov in prijateljev ni nikdar pustila na cedilu.',
                       1,
                       1973,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Georges Simenon',
                       'Rumeni pes',
                       'Rumeni pes je eden izmed najboljšimi Simenonovimi romani, v katerih je glavna oseba komisar Maigret. Rumeni pes ni izvrsten samo po zapletu, temveč tudi po razpletu, saj je le ta presenetljiva maigretovska metoda raziskovanja zločina in odkrivanje zločinca, pri čemer ima posebno vlogo tudi rumeni pes.',
                       1,
                       1976,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'John Le Carre',
                       'Mala bobnarka',
                       'Tema tega aktualnega vohunskega, političnega in kriminalnega romana, popestrenega še z ljubezensko zgodbo je obračunavanje med Izraelci in Palestinci.',
                       1,
                       1987,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Jurgen Thorwald',
                       'Moški s čeri',
                       'Visoko nad morjem, na čereh obale, poseda dan za dnem belolas moški in čaka le na to, da bo Atlantik vrnil truplo ženske, ki je pred dvajsetimi leti izginila v morju. Kaj se je resnično zgodilo v noči od 24. na 25.maj 1952 na ladji, ali je kriv strežaj na ladji kot mislijo vsi, ali pa je bila Sally resnično od spolnosti obsedena nimfomanka in je umrla kot žrtev svoje nravi, preberite v avtorjevi prvi kriminalki, kjer mojstrsko vodi pripoved do dramatične rešitve problema.',
                       1,
                       1983,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Alan Alexander Milne',
                       'Skrivnost rdeče hiše',
                       'Ta mojstrsko napisana detektivska povest priljubljenega avtorja, nosi v sebi očarljivost časov pred grozotami novejše dobe. Čeprav se zgodba zapleta okrog skrivnostnega umora v podeželskem dvorcu, je branje lahkotno, igrivo in celo oplemeniteno z nekakšno moralo. Od poglavja do poglavja lahko sledimo zasukom detektivske misli. Avtor nas nikoli predolgo ne drži v golem pričakovanju razpleta, tako, da je roman vseskozi napeto branje.',
                       1,
                       1979,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Truman Capote',
                       'Hladnokrvno',
                       'Zgodba nadvse krvoločnega umora, kakršnih je zelo malo v zgodovini ameriške kriminalistike tega stoletja. Zgodba je dramatična in živa, ker sploh ni izmišljena, saj opisuje dogodke, ki so se v resnici primerili, ljudi, ki so v resnici živeli. Vsebina je neka čisto nova zvrst romana, ki se od začetka do konca opira na resnične dogodke, na tisto, kar so ljudje sami pravili o sebi in svojih doživetjih, srečanjih in čustvih. In roka pisatelja je povezala vse to gradivo , ki bi drugače polnilo samo policijske in sodne akte.',
                       1,
                       1967,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Raymond Chandler',
                       'Sestrica',
                       'Privatnega detektiva, ki nima ne razkošne detektivske pisarne, ne bogate klientele zmoti sredi brezdelja dekliški glasek. Ne sluti v kakšne nezaslišane težave in zaplete ga bo pripeljala na videz nepomembna zadeva - za ubogih dvajset dolarjev naj bi plašni, neprivlačni in okorno napravljeni deklici poiskal brata, ki se je izgubil v neznanem svetu. Na zadnjem fantovem naslovu detektiv naleti na prvo truplo, nato čez čas na drugo in kasneje še več. Trupel in skrivnosti ne manjka, napeta in razburljiva zgodba je napisana v jedkem in sarkastičnem tonu tega znanega pisca kriminalk, po čigar delih so posneli vrsto znanih filmov.',
                       1,
                       1987,
                       10,
                       4,
                       9.99,
                       2
                   ),
                   (
                       'Narcejac Boileau',
                       'Gostišče Hibiscus',
                       'Izredno zanimiv roman, ki je hkrati z mučnim vzdušjem starosti in zločinske dejavnosti poln globoke človeške modrosti in topline. V tem gostišču Hibiscus nekje na Azurni obali preživljajo svoja zadnja leta bogati upokojenci v vsej udobnosti, ki jo lahko nudi denar. In v tej sredini se nenadoma začnejo kriminalna dejanja. Zgodbo ustvarja glavni junak, ki bralcu s svojimi meditacijami o življenju in starosti in o čudnem dogajanju v Hibiscusu ustvarja vedno večjo napetost do prav presenetljivega konca. Čudne in nenadne smrti, ki si sledijo imajo, kot se pokaže na koncu prav banalen vzrok: kakšen je ta, pa preberite sami.',
                       1,
                       1982,
                       10,
                       4,
                       9.99,
                       2
                   );

INSERT INTO knjiga (
                       avtor,
                       naslov,
                       opis,
                       zanr,
                       leto_izdaje,
                       st_dniZaDobavo,
                       st_naZalogi,
                       cena,
                       format
                   )
                   VALUES (
                       'Rabindranath Tagore',
                       'Gora',
                       'Vrhunski roman, ki je v izvirniku izšel leta 1999, bralca odpelje na zgodovinsko potovanje v slikovito družbeno, politično in versko okolje indijskega mesta Bengal ob koncu 19. stoletja. Tagoreju je svetovno slavo prineslo tudi odločno nasprotovanje militarizmu in nacionalizmu. Nasproti temu postavlja strpno človeško družbo, utemeljeno na duhovnih vrednotah.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Zuya Pirzad',
                       'Trpek okus kakijev',
                       'Trpek okus kakijev je zbirka kratkih zgodb. S prodorno ostjo, a hkrati nežno silo (in odtenkom domotožnega hrepenenja) pisateljica odstira tančice parov in posameznikov, trka ob udarce nezvestobe, neutolažljivo željo (in še bolj, potrebo) po emancipiranem obstoju, ljubezen, stkano iz povsem prvega srečanja, in razhode, ki žuljavo krenejo v dalj.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Michel Houellebecq',
                       'Osnovni delci',
                       'Knjiga se loteva problematičnih tem, ki so danes v središču javnih razpravljanj: vedno večji odstotek samskega prebivalstva, obremenjenost s spolnostjo, poveličevanje individualizma, genetske raziskave…, zato dobiva poteze sociološkega romana in filozofske disertacije. Obe plasti romana tečeta vzporedno s fikcijsko zgodbo dveh polbratov, ki se jima nekje na polovici življenja zastavlja vprašanje o možnosti sreče ali kakršnegakoli osvobajajočega dejanja.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Chinua Achebe',
                       'Razpad',
                       'Razpad je najuspešnejše nigerijsko in afriško literarno delo 20.stoletja. Kjer koli v Afriki seje Achebe ustavil, se je okrog njega zbrala množica, ki je hitela pozdravljat avtorja Razpada. Delo je vključeno v številne šolske in univerzitetne programe po svetu, poznavanje tega dela pa je temelj kulturne in svetovljanske izobrazbe.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Mór Jókai',
                       'Ubogi bogataši',
                       'Roman je zgodba o neminljivem ljubezenskem hrepenenju dveh vzvišenih duš, o njuni boleči, prepovedani in zatajevani ljubezni. Je tudi zgodba o pohlepu po veljavi, slavi in bogastvu, ki se mu zoperstavi ponosni mladenič, ko se da razglasiti za mrtvega, in tako kljub skromnim življenjskim razmeram v popotni igralski skupini zadiha svobodno, ko mu uspe za vselej prekiniti stike s svojim na koristoljubnih ozirih uspevajočim sorodstvom.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Julia Franck',
                       'Oslepelo srce',
                       'Po očetovi smrti se sestri iz podeželskega Bautzna v zlatih dvajsetih preselita k teti v velemestni vrvež Berlina, središče kulture in razvratnih zabav. Medtem ko Martha zaživi s prijateljico Leontine, pa se Helene v spletu nesrečnih okoliščin znajde v objemu moškega, ki ji v nevarnih časih sicer omogoči novo identiteto, a jo hkrati pahne v samotno životarjenje.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Julian Barnes',
                       'Smisel konca',
                       'V zgodbi upokojeni Tony Webster sreča svojo preteklost v dnevniku šolskega prijatelja. Sooči se s svojim življenjem in ne nazadnje tudi smrtjo. Virtuozno napisan roman o sleherniku.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'John Irving',
                       'Eno leto vdova',
                       'Zgodba se začne, ko Ruth kot majhna deklica pride ponoči v sobo k mami in jo najde v postelji s šestnajstletnim Eddiejem. Tisto noč pa Ruth doživi še drugo bolečino; ureže se v steklo, ko se razbije slika, ki jo hoče imeti ob sebi. V hiši so namreč po vseh stenah obešene fotografije njenih dveh starejših bratov, ki sta se ponesrečila kot najstnika.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Aravind Adiga',
                       'Beli Tiger',
                       'Beli tiger je najredkejša žival v džungli, tako redka kot glavni junak Balram, ki mu je uspelo spremeniti svojo usodo in iz reveža postati milijonar. Svojo življenjsko zgodbo podaja v dolgem pismu kitajskemu predsedniku vlade, ki prihaja na obisk v Indijo. V sedmih nočeh pripoveduje o sebi in hkrati razmišlja o svetu, ki ga obdaja. Ker je doživel Indijo z različnih vidikov, spoznavamo vse njene plasti: revno podeželje, kjer so neizobraženi ljudje ujeti v tradicionalne oblike družbenih odnosov; mestni vrvež, v katerem so na eni strani bogataši, na drugi njihovi služabniki in najrevnejši ljudje, ki živijo na ulicah; politično življenje, ki se od uradne parlamentarne demokracije odmika v korupcijo.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Kazuo Ishiguro',
                       'Ne zapusti me nikdar',
                       'Hailsham je na prvi pogled videti prikupna elitna šola na angleškem podeželju, umaknjena od mesta, ljudi in drugih zunanjih vplivov. Učenci so deležni najboljše vzgoje, učitelji skrbijo za njihovo izobrazbo, prav poseben poudarek pa je namenjen razvoju umetniških talentov posameznika. Skratka šola, ki “producira” natanko take ljudi, kot jih zunanji svet želi. Pa vendar se zdi nenavadno, da so učenci tako izolirani; da ne vedo ničesar o zunanjem svetu, da nikoli ne pridejo v stik z njim in da do svojega šestnajstega leta nikoli ne zapustijo zunanjih meja hailskamskega posestva. Kaj se skriva za ograjo? Kaj jih čaka po tem? In kje so njihovi starši?',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Nicolo Ammaniti',
                       'Jaz in ti, Kakor Bog ukazuje',
                       'Življenje šestnajstletnega Cristiana je daleč od idiličnega. Ko se njegov oče odloči, da bo skupaj s svojima prijateljema, zapitim Danilom in čudaškim norčkom Quattro Formaggijem, oropal bankomat, je njegovega otroštva nepreklicno konec ...',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Arundhati Roy',
                       'Bog majhnih stvari',
                       'Bog majhnih stvari je zgodba o dvojčkih in njuni materi, ki ju razdruži in čez mnogo let znova združi usoda. S posebno melodijo jezika in prepletanjem preteklih in sedanjih dogodkov prikazuje indijsko družbeno ureditev. Kastni sistem sicer ne velja več, a njegova moč je še vedno prisotna in vpliva na ljudi, vpete med podnebje, vero, tradicionalne običaje. Še posebno, ko se zaljubita pripadnica višje kaste in moški »nižjega« rodu.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Per Petterson',
                       'Konje krast',
                       'Morda res ne neha boleti samo zato, ker smo se tako odločili, nam sporoča Norvežan Per Petterson, a odločitev vseeno pomaga, da bolečina življenja ne uniči, temveč ga razvije v nove smeri, ki si jih morda niti nismo predstavljali in za katere morda ne bomo nikoli čisto prepričani, da so nam všeč.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Stephen Zweig',
                       'Strah',
                       'Dražljivost ljubezenske afere je za Irene Wagner sprva nekakšno gonilo, duševni ventil v zdolgočasenem vsakdanu ob prezaposlenem možu in dveh otrocih, s katerima se povečini ukvarjajo služabniki. Toda ko jo začne zalezovati ženska, ki se izdaja za partnerico njenega ljubimca, se položaj zaplete. Irene se pretreseno zave, kaj vse z razkritjem afere tvega – izgubo časti, družine, družbenega položaja. Izsiljevalki plačuje za molk, dokler njene zahteve ne presežejo meja sprejemljivega.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Paul Torday',
                       'Muharjenje v Jemnu',
                       'To je zgodba o dr. Alfredu Jonesu, ki se nekako nehote vplete v projekt naselitve lososov v jemensko višavje in ki bo za vedno spremenil njegovo življenje in tok britanske politične zgodovine. Z zlobno čudovitimi junaki, med katerimi so vizionarski šejk, podlasičje pristranski tiskovni predstavnik, Fredova peklenska žena in nekaj tisoč preseljenih lososov, je Muharjenje v Jemnu roman o hinavščini in birokraciji, sanjah in zanikovanju ter veri in ljubezni, ki imata moč preobraziti življenje.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Christopher Moore',
                       'Jagnje',
                       'Mislite, da veste vse o življenju Jezusa Kristusa? Poznate celo zgodbo? Jagnje: evangelij po Focnu, Kristusovem prijatelju iz otroštva. Zgodbe o Jezusovem rojstvu in smrti so dobro dokumentirane, prav tako njegova učenja in čudeži po 30. letu. Nihče pa ne ve ničesar o njegovem otroštvu ... razen Focn, Jezusov najboljši prijatelj iz otroštva. Focn brez dlake na jeziku pove, kako je Jezusu pomagal, da bi spoznal, kaj mu je početi kot Božjemu sinu. Ko skupaj premagujeta nevarnosti in doživljata preizkušnje, se plete zgodba o iskrenem prijateljstvu.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Bernhard Schlink',
                       'Bralec',
                       'Zgodba, ki ponovno obudi strahote druge svetovne vojne, tokrat na drugačen način, skozi ljubezensko zgodbo zrele ženske in fanta, ki zgrožen prepozna v bivši ljubici vojno “zločinko”, pa čeprav je bila na nek način v taborišču smrti v službi. Vendar je fokus pozornosti naravnan na dejstvo, da je ženska nepismena, zato so ji že v taborišču brale žrtve, bral ji je on kot ljubimec, bere ji, ko prestaja zaporno kazen in ji pošilja posnetke svojega branja svetovne literature.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Roald Dahl',
                       'Moj striček Oswald',
                       'Skrajna zabava vrvečih vrstic, ki si drznejo humor, žgečkljivo spogledljivost, fantastične prekuce in mojstrsko pisateljsko izgradnjo. Fantastičen snovalec knjig za otroke, gospod Roald Dahl, je gojil ne tako malo strasti. Izza oken ustvarjalnosti za rosne poganjke je na pisateljskem humusu strastno dozorevala kratka zgodba, s katero bi se docela neomahljivo odpravili naravnost v dnevno sobo, koder bi sedli na kavč, ne da bi slekli plašč. Z divjim, sijočim žarom v očeh bi sledili opojni niti s cerebrospinalno tekočino najboljše sorte prepojene, do ultimativnega užitka napete zgodbe, ki s čarobnim miselnim vijuganjem izzove nebrzdano željo po več ...',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Milan Kundera',
                       'Neznosna lahkost bivanja',
                       'Mojstrovina o protislovju med minljivostjo in večnostjo. Tomaža, uspešnega kirurga, je strah pred vsako obliko ljubezni, čeprav si tega ne prizna. Občuti strah pred odgovornostjo in pasivno sprejema naključja v svojem življenju. Spozna Terezo, do katere čuti sočutje, po vsej verjetnosti pa tudi potrebuje nekoga, ki se odloča zanj … Hkrati z ljubezensko zgodbo spoznavamo tudi zgodovinsko dogajanje na Češkem leta 1968. V romanu so ljudje razpeti, tako politično kot v zasebnem življenju, med lahkostjo in težo, dušo in telesom, umetnostjo in kičem, zvestobo in izdajo, sanjami in resničnostjo.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Drago Jančar',
                       'To noč sem jo videl',
                       'Govori o nekaj letih življenja mlade bogate in ekscentrične meščanke Veronike Zarnik, ki so jo zaradi domnevne kolaboracije z nacisti ubili partizani. Glavna oseba romana je meščanska žena Veronika Zarnik, ki nikoli ne stopi neposredno pred bralca, ampak o njeni usodi pripoveduje pet oseb, ljubimec, njena mati, nemški zdravnik, hišna gospodinja in ostareli partizan. Vsak od pripovedovalcev ponudi novo perspektivo in drugačne podrobnosti iste zgodbe o Veroniki in dopolni prejšnjega, na koncu pa se vse zgodbe sestavijo v celoto.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Alice Walker',
                       'Nekaj vijoličastega',
                       'Nekaj vijoličastega je knjiga, ki pripoveduje o surovem življenju črncev na ameriškem jugu v začetku prejšnjega stoletja. Glavna junakinja v svojem življenju okuša vsake vrste nasilja in dolgo časa pristaja nanj, proti koncu besedila pa se ji posreči, tudi s pomočjo lezbičnega prijateljstva, zaživeti samostojno in dosti bolj pristno.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Carlos Ruiz Zafon',
                       'Senca vetra',
                       'Je pripoved o romanu, ki ga leta 1945 na »Pokopališču pozabljenih knjig« odkrije deček in še ne ve, da mu bo korenito spremenil življenje. Na sledi za skrivnostnim avtorjem se zapleta v vsakršne prigode in preizkušnje in njegovi dojemljivosti in domišljiji se razkriva osupla preteklost, tako živa, da je nevarna za njegovo življenje in srce.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Mark Haddon',
                       'Skrivnostni primer ali kdo je umoril psa',
                       'Glavni junak Christopher za spopadanje z vsakodnevnim življenjem potrebuje več poguma kot morda večina, saj ima Aspergerjev sindrom. Gre za vrsto avtizma, med posledicami katere so, na primer, težave pri socialnem vedenju, pri prepoznavanju čustev, v tujih okoljih, nepoznanih okoliščinah in razmerah.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Aleksandar Hemon',
                       'Projekt Lazar',
                       'Knjiga med seboj povezuje dve enakovredni zgodbi. Nosilec prve je Lazar Averbuch, devetnajstletni judovski priseljenec, ki iz vzhodne Evrope pobegne v Ameriko in izgubi življenje v bizarnem incidentu. Nosilec druge zgodbe je hemonovski bosansko-ameriški pisatelj, prostodušni, skorajda naivni lik, ki niha med eksistencialno razdvojenostjo in dokazovanjem pred svojo ameriško ženo. S prijateljem iz otroških let, balkansko ekscentričnim fotografom Roro, se poda po sledeh Lazarjevega življenja.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Nenad Veličković',
                       'Sahib',
                       'Nenad Veličković je opravil v enem delu z veliko tabuji, od homoseksualnosti do političnih perverzij oz. “perverzne politike velikih”. Brez milosti. Brez slepomišenj. Kruto, polno sarkazma, cinizma in balkanskega humorja. Najbrž je humor tisti, ki je pomagal prebivalcem Sarajeva preživeti pekel.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Markus Zusak',
                       'Kradljivka knjig',
                       'Roman Kradljivka knjig, ki je postavljen v čas druge svetovne vojne, skozi oči smrti pripoveduje zgodbo o Liesel Meminger, ki živi v rejniški družini v bližini Münchna. Tam se znajde zato, ker njeno mater, komunistko, transportirajo v Dachau. Čeprav Liesel ne zna brati, na pogrebu svojega brata prvič ukrade knjigo – precej srhljivi priročnik za grobarje. Ko se s pomočjo svojega rejniškega očeta nauči brati, knjige postanejo njena strast. Drugi kradejo hrano za preživetje, ona pa krade knjige, ki jih nato med bombnimi napadi deli z drugimi. Tako ona kot okoliški prebivalci se vse bolj spreminjajo, tako zaradi vsebine knjig kot tudi grozot, ki se dogajajo okrog njih.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'James Frey',
                       'Milijon majhnih koščkov',
                       'Milijon majhnih koščkov je resnična zgodba kokainskega odvisnika in alkoholika, ki mu pri 23 letih napovejo, da lahko njegovo telo dekadentno življenje prenaša še največ nekaj tednov. Pusti se torej zapreti v eno najdražjih in najuglednejših klinik v ZDA, ki se ponaša tudi z najvišjim odstotkom ozdravljenih odvisnikov na svetu – ki je, mimogrede, 17 od vsakih 100 pacientov.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Bret Easton Ellis',
                       'Manj kot nič',
                       'Kokain, alkohol in zabave so stvari, okrog katerih se vrti Clayev svet sredi 80. let prejšnjega stoletja. Snifa kokain, uživa v “praznem” seksu z obema spoloma in cinično razmišlja o razsipnih hollywoodskih zabavah in svojem odtujenem, praznem obstoju.',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   ),
                   (
                       'Zadie Smith',
                       'O lepoti',
                       'Howard Belsey, v Ameriko preseljeni Anglež, je liberalen univerzitetni profesor umetnostne zgodovine in velik preučevalec Rembrandta. Pa tudi oče treh otrok, mož nekoliko manj izobražene in temnopolte Kiki in človek, ki ga muči kriza srednjih let. Otopelost njegove vsakdanjosti razburka prihod gostujočega profesorja Montaguea Kippsa in njegove družine. Kipps je konzervativen torijec in umetnostni zgodovinar, ki se po čudnem naključju prav tako ukvarja s preučevanjem Rembrandta. Konflikt se zdi neizogiben ...',
                       3,
                       1999,
                       3,
                       3,
                       15.99,
                       3
                   );