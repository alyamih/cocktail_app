import 'package:cocktail_app/model/cocktail.dart';
import 'package:cocktail_app/model/ingredient.dart';

List<Cocktail> cocktails = [
  Cocktail(
    name: 'Negroni',
    compound1: '1 unità\n1 unità\n1 unità',
    compoundText1: 'Rocсe\nJigger\nCucchiaio da cocktail',
    compoundText2:
        'Gin secco di Londra\nVermouth rosso\nAmaro rosso\nAnni in cubi',
    compound2: '30 ml\n30 ml\n1 unità\n120 grammi',
    description1:
        'Il Negroni è un classico cocktail italiano composto da parti uguali di gin, vermouth rosso e Bitter Campari. Una miscela aromatica e amara ideale per gli intenditori di superalcolici.',
    description2:
        '1. Riempi le rocce con cubetti di ghiaccio fino in cima\n2. Versare il vermouth rosso 30 ml e l\'amaro rosso 30 ml in un bicchiere\n3. Aggiungi 30 ml di gin e mescola con un cucchiaio da cocktail \n4. Guarnire con scorza d\'arancia',
    description3: '20-25% duro/amaro/sul gin/classico/Negron',
    photo: 'assets/negroni.png',
  ),
  Cocktail(
    name: 'Bourbon su albicocche secche',
    compound1: '1 unità\n1 unità\n1 unità',
    compoundText1: 'Barattolo con coperchio\nPila\nFiltro',
    compoundText2: 'Bourbon\nZucchero granulare\nAlbicocche secche',
    compound2: '1 l\n200 grammi\n700 grammi',
    description1:
        'Bourbon su albikokke sexe è un cocktail composto da Bourbon e albicocche secche. Ha un sapore ricco e un aroma dolce di albicocche che si abbina perfettamente al sapore pungente del bourbon.',
    description2:
        '1. Riempire un barattolo da due litri con albicocche secche senza compattare\n2. Aggiungere 200 g di zucchero semolato e completare con il bourbon\n3. Chiudete il barattolo con un coperchio e lasciate riposare per 4 giorni in un luogo buio e caldo',
    description3: '20-30% forte/dolce/fruttato/sul Borbone/per azienda',
    photo: 'assets/bourbon.png',
  ),
  Cocktail(
    name: 'Sangria dell\'Egeo',
    compound1: '1 unità\n1 unità\n1 unità',
    compoundText1: 'Bicchiere di vino\nJigger\ncucchiaio da cocktail',
    compoundText2:
        'Vodka Zarskaja\nSciroppo di vino fatto in casa\nFiori viola\nCubetto di ghiaccio',
    compound2: '100 ml\n20 ml\n1 unità\n1 unità',
    description1:
        'La Sangria Dell\'Egeo è un cocktail rinfrescante e fruttato con una leggera acidità e un tocco dolciastro. È perfetto per feste all\'aperto, picnic o semplicemente per divertirsi in una calda giornata estiva.',
    description2:
        '1. Versare 20 ml di sciroppo di vino fatto in casa in un bicchiere\n2.Metti un cubetto di ghiaccio in un bicchiere\n3. Usando un cucchiaio da cocktail, versare 100 ml di vodka\n4. Decorare con un fiore viola',
    description3: '10-15% forte/Asciutto/sulla vodka/miscele/semplice',
    photo: 'assets/sangria.png',
  ),
  Cocktail(
    name: 'Americano',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità\n1 unità\n1 unità',
    compoundText1:
        'Flauto\nFiltro\ncucchiaio da cocktail\nBicchiere da miscelazione\nSpremiagrumi\nJigger',
    compoundText2:
        'Media\nSciroppo di zucchero\nSucco di limone\nPurea di pesche\nPesca\nGhiaccio a cubetti',
    compound2: '100 ml\n10 ml\n10 ml\n20 grammi\n15 grammi\n300 grammi',
    description1:
        'L\'americano è una combinazione fresca e rinfrescante di vermouth rosso amaro, acqua minerale frizzante e aperitivo Campari. La forza moderata e il sapore amaro delicato lo rendono un\'ottima scelta per le serate estive.',
    description2:
        '1. Metti 4 cucchiaini di purea di pesca in un mixing glass\n2.Aggiungere 10 ml di succo di limone, 10 ml di sciroppo di zucchero e 50 ml di prosecco\n3. Riempire un bicchiere con cubetti di ghiaccio e mescolare delicatamente con un cucchiaio da cocktail\n4. Versare attraverso un colino e un colino in un bicchiere flute\n5. Completare con prosecco\n6. Decorare con una fetta di pesca',
    description3:
        '20-16% basso contenuto di alcol/erbaceo/amaro/di vermut/classico',
    photo: 'assets/americano.png',
  ),
  Cocktail(
    name: 'Daiquiri con miele e basilico',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità\n1 unità\n1 unità\n2 unità',
    compoundText1:
        'Piattino di champagne\nSpremiagrumi\nMadler\nShaker\nFiltro\nJigger\nFiltro',
    compoundText2:
        'Rum bianco\nSciroppo di miele\nSucco di lime\nBasilico rosso\nGhiaccio a cubetti',
    compound2: '60 ml\n30 ml\n15 ml\n5 grammi\n200 grammi',
    description1:
        'Il Daiquiri al miele e basilico è un cocktail rinfrescante composto da rum, succo di limone, miele e basilico fresco. Ha un sapore equilibrato della dolcezza del miele, dell\'acido del limone e dell\'aroma del basilico',
    description2:
        '1. Mettere 6 foglie di basilico rosso in uno shaker e pestare\n2. Versare 15 ml di succo di lime, 30 ml di sciroppo di miele e 60 ml di rum bianco.\n3. Riempi uno shaker con cubetti di ghiaccio e agita\n4. Versare attraverso un colino e un colino in un piattino da champagne ghiacciato\n5. Decorare con foglie di basilico rosso',
    description3: '15-20% forte/erbace/dolce/al rum/colpi di scena',
    photo: 'assets/Daiquiri.png',
  ),
  Cocktail(
    name: 'Jack Rose',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità\n1 unità',
    compoundText1:
        'Bicchiere da cocktail\nSpremiagrumi\nShaker\nFiltro\nJigger',
    compoundText2:
        'Calvados\nGranatina\nSucco di lime\nScorza di limone\nGhiaccio a cubetti',
    compound2: '50 ml\n25 ml\n15 ml\n1 unità\n200 grammi',
    description1:
        'Jack Rose è un cocktail classico composto da alcol operativo (di solito brandy di mele o Calvados), succo di lime o limone fresco e granatina. Ha un sapore rinfrescante e dolciastro, con acido dal succo degli agrumi e dolcezza dalla granatina.',
    description2:
        '1.Versare 15 ml di succo di lime, 25 ml di granatina e 50 ml di Calvados in uno shaker\n2. Riempi uno shaker con cubetti di ghiaccio e agita\n3. Versare attraverso un colino in una coppetta da cocktail ghiacciata.\n4. Guarnire con scorza di limone',
    description3: '30-40% forte/dolce/sul Calvados/classico/rosso',
    photo: 'assets/Jack_Rose.png',
  ),
  Cocktail(
    name: 'Aperol Spritz',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità',
    compoundText1: 'Bicchiere di vino\ncucchiaio da cocktail\nTubi\nJigger',
    compoundText2: 'Aperol\nProsecco\nBibita\nArancia\nGhiaccio a cubetti',
    compound2: '100 ml\n100 ml\n20 ml\n40 grammi\n60 grammi',
    description1:
        'Aperol squirt è un cocktail succoso e rinfrescante con password, prosecco e soda. Perfetto per le calde giornate estive.',
    description2:
        '1.Riempi un bicchiere di vino con ghiaccio\n2. Versare in un bicchiere 100 ml di Prosecco e 100 ml di Aperol\n3. Aggiungi una spruzzata di soda e mescola con un cucchiaio da cocktail\n4. Guarnire con una fetta d\'arancia',
    description3:
        '11-15% basso contenuto di alcol/dolce/sullo scintillante/semplice/frizzante',
    photo: 'assets/aperol.png',
  ),
  Cocktail(
    name: 'Tundra Libera',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità\n2 unità',
    compoundText1:
        'Highball\nSpremiagrumi\ncucchiaio da cocktail\nJigger\nTubi',
    compoundText2:
        'Whiskey irlandese\nSucco di lime\nBirra allo zenzero\nLime\nGhiaccio a cubetti',
    compound2: '50 ml\n10 ml\n140 ml\n20 grammi\n180 grammi',
    description1:
        'La birra irlandese allo zenzero è un cocktail che combina birra irlandese e bevanda allo zenzero.',
    description2:
        '1. Riempire fino all\'orlo un bicchiere highball con cubetti di ghiaccio\n2. Versare 10 ml di succo di lime e 50 ml di whisky irlandese\n3. Completare con ginger beer e mescolare delicatamente con un cucchiaio da cocktail\n4. Guarnire con uno spicchio di lime',
    description3:
        '4-6% basso contenuto di alcol/acido/agrumi/per il whisky/semplice',
    photo: 'assets/tundra.png',
  ),
  Cocktail(
    name: 'Portami a casa',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità\n2 unità',
    compoundText1:
        'Bicchiere di plastica\nSpremiagrumi\ncucchiaio da cocktail\nJigger\nMiscelatore\nTubi',
    compoundText2:
        'Vodka Zarskaja\nSucco di lime\nBirra allo zenzero\nLatte\nLime\nLime\nLime\nLime\nGhiaccio a cubetti',
    compound2:
        '40 ml\n20 ml\n200 ml\n30 ml\n15 grammi\n3 grammi\n2 grammi\n2 grammi\n200 grammi',
    description1:
        'Portami a casa è un cocktail forte con sapori di menta e agrumi. Gli ingredienti principali del cocktail sono solitamente vodka, liquore Cointreau, succo di limone fresco, ghiaccio e menta fresca per guarnire.',
    description2:
        '1. Riempire il bicchiere fino all\'orlo con cubetti di ghiaccio\n2. Versare 20 ml di succo di lime e 40 ml di vodka\n3. Aggiungi 3 cucchiaini di purea di lamponi e completa con la birra allo zenzero\n4. Mescolare delicatamente con un cucchiaio da cocktail\n5. Mettete in un frullatore 5 foglie verdi di basilico, un pizzico di lecitina e 30 ml di latte\n6. Sbattere fino a quando non diventa schiumoso\n7. Guarnire il cocktail con la schiuma risultante e le foglie di menta',
    description3:
        '20-35% basso contenuto di alcol/dolce/sulla vodka/frizzante/anela',
    photo: 'assets/portami.png',
  ),
  Cocktail(
    name: 'Bellini',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità\n1 unità\n1 unità\n1 unità',
    compoundText1:
        'Flauto\nFiltro\nFiltro\nBicchiere da miscelazione\ncucchiaio da cocktail\nSpremiagrumi\nJigger',
    compoundText2:
        'Prosecco\nSciroppo di zucchero\nSucco di limone\nPurea di pesche\nPesca\nGhiaccio a cubetti',
    compound2: '100 ml\n10 ml\n10 ml\n20 grammi\n15 grammi\n300 grammi',
    description1:
        'Bellini è un classico italiano composto da purea di pesche e prosecco. Ottima scelta per Brunch o eventi speciali.',
    description2:
        '1. Metti 4 cucchiaini di purea di pesca in un mixing glass\n2. Aggiungere 10 ml di succo di limone, 10 ml di sciroppo di zucchero e 50 ml di prosecco\n3. Riempire un bicchiere con cubetti di ghiaccio e mescolare delicatamente con un cucchiaio da cocktail\n4. Versare attraverso un colino e un colino in un bicchiere flute\n5. Completare con prosecco\n6. Decorare con una fetta di pesca',
    description3:
        '5.5% basso contenuto di alcol/dolce/sullo scintillante/fruttato/classico',
    photo: 'assets/bellini.png',
  ),
  Cocktail(
    name: 'Montpensier',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità\n2 unità',
    compoundText1: 'Highball\nShaker\nMadler\nJigger\nTubi',
    compoundText2:
        'Vodka al pompelmo Tsarskaya\nSciroppo di cannella\nLecca-lecca\nArancia\nLime\nGhiaccio a cubetti\nghiaccio tritato',
    compound2:
        '40 ml\n20 ml\n10 unità\n150 grammi\n40 grammi\n200 grammi\n60 grammi',
    description1:
        'Il cocktail "Montpensier" è un cocktail francese composto da vermouth, liquore al maraschino, amaro e succo di limone. Questo cocktail viene solitamente servito in un bicchiere freddo e guarnito con una fetta di limone o arancia.',
    description2:
        '1. Mettere il lime tritato e le metà dell\'arancia in uno shaker e pestare\n2. Versare 20 ml di sciroppo alla cannella e 40 ml di vodka al pompelmo\n3. Riempi uno shaker con cubetti di ghiaccio e agita\n4. Versare in un bicchiere highball con ghiaccio.\n5. Aggiungere un po\' di ghiaccio tritato sopra\n6. Decorare con bastoncini di zucchero',
    description3: '15-20% forte/speziato/agrumi/dolce/sulla vodka',
    photo: 'assets/Montpensier.png',
  ),
  Cocktail(
    name: 'Vin brulè 5 stelle',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità\n1 unità\n1 unità',
    compoundText1:
        'Teiera\nTazza da tè\nBrocca\nJigger\nColtello Zester\ncucchiaio da cocktail',
    compoundText2:
        'Porto Tonino\nVino rosso secco\nSciroppo di miele\nsucco di mela\nscorza d\'arancia\nMela\nFragola\nAnice stellato\nBastoncini di cannella\nGarofano',
    compound2:
        '50 ml\n200 ml\n50 ml\n50 ml\n1 unità\n20 grammi\n20 grammi\n80 grammi\n5 grammi\n1 grammi',
    description1:
        '"Vin brulè 5 stelle" è una bevanda tradizionale italiana a base di vino rosso, spezie (di solito cannella, chiodi di garofano, scorza d\'arancia), miele e zucchero.',
    description2:
        '1. Metti una mela verde a fette e una fragola grande nella brocca\n2. Aggiungere un paio di strisce di scorza d\'arancia e una di anice stellato, chiodi di garofano e bastoncini di cannella\n3. Versare 50 ml di succo di mela, 50 ml di sciroppo di miele, 50 ml di porto tony e 200 ml di vino rosso secco.\n4. Mescolando, scaldare senza far bollire\n5. Versare nella teiera\n6.Servire su un piedistallo con una candela per mantenere caldo il cocktail e con anice stellato per esaltarne il sapore.',
    description3:
        '9-12% basso contenuto di alcol/speziato/bacca/fruttato/dolce',
    photo: 'assets/vinbrule.png',
  ),
  Cocktail(
    name: 'Rossini',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità\n1 unità',
    compoundText1:
        'Flauto\nFiltro\nBicchiere da miscelazione\ncucchiaio da cocktail\nJigger',
    compoundText2: 'Jigger\nPurea di fragole\nGhiaccio a cubetti',
    compound2: '120 ml\n30 grammi\n300 grammi',
    description1:
        'Rossini è un cocktail di purea di fragole e prosecco. Una deliziosa alternativa ai Bellini.',
    description2:
        '1. Metti 6 cucchiaini di purea di fragole in un mixing glass\n2. Versare 120 ml di prosecco\n3. Riempire un bicchiere con cubetti di ghiaccio e mescolare delicatamente con un cucchiaio da cocktail\n4.Versare attraverso un colino in una flute ghiacciata',
    description3:
        '5% basso contenuto di alcol/dolce/sullo scintillante/bacca/frizzante',
    photo: 'assets/rossini.png',
  ),
  Cocktail(
    name: 'Pungiglione',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità\n2 unità',
    compoundText1: 'Rocce\nShaker\nFiltro\nJigger\nTubi',
    compoundText2:
        'Cognac Hennessy\nLiquore leggero alla menta De Kuyper\nmenta\nghiaccio tritato\nGhiaccio a cubetti',
    compound2: '50 ml\n20 ml\n1 grammi\n150 grammi\n200 grammi',
    description1:
        'Il cocktail "Pungiglione" è un cocktail esotico a base di tequila, liquore di Curaçao, succo di lime e spicchi di peperoncino fresco.',
    description2:
        '1. Riempire fino all\'orlo un bicchiere rock con ghiaccio tritato.\n2. Versare in uno shaker 25 ml di liquore leggero alla menta e 50 ml di cognac\n3. Riempi uno shaker con cubetti di ghiaccio e agita\n4. Versare attraverso un colino in un bicchiere rock\n5. Guarnire con un rametto di menta',
    description3: '20-25% forte/menta/dolce/sul cognac/classico',
    photo: 'assets/pungiglione.png',
  ),
  Cocktail(
    name: 'Colpo caldo di Galliano',
    compound1: '1 unità\n1 unità\n1 unità',
    compoundText1: 'Pila\ncucchiaio da cocktail\nMacchina per il caffè',
    compoundText2: 'Galliano l\'autentico\nCaffè espresso\nCrema pesante',
    compound2: '20 ml\n10 ml\n10 ml',
    description1:
        'Il "Colpo caldo di Galliano" è un cocktail caldo che ha un sapore e un aroma ricchi grazie al Galliano L\'Autentico.',
    description2:
        '1. Versare nel bicchiere 20 ml di Galliano Authentico\n2.Utilizzando un cucchiaio da cocktail, versare uno strato di 10 ml di caffè espresso caldo e 10 ml di panna',
    description3:
        '30-42% basso contenuto di alcol/speziato/cremoso/caffè/sul liquore',
    photo: 'assets/colpo.png',
  ),
  Cocktail(
    name: 'Bianco Arancio',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità\n2 unità',
    compoundText1:
        'Highball\nColtello Zester\ncucchiaio da cocktail\nJigger\nTubi',
    compoundText2:
        'Vermouth bianco\nsucco d\'arancia\nscorza d\'arancia\nGhiaccio a cubetti',
    compound2: '50 ml\n150 ml\n1 unità\n180 grammi',
    description1:
        'Il Bianco Arancio è un cocktail italiano rinfrescante che combina vermouth bianco e succo d\'arancia. Ha un sapore dolce e fruttato, con lievi note agrumate.',
    description2:
        '1. Riempire fino all\'orlo un bicchiere highball con cubetti di ghiaccio\n2. Versare 50 ml di vermut bianco\n3. Aggiungere il succo d\'arancia in superficie e mescolare delicatamente con un cucchiaio da cocktail\n4. Decorare con scorza d\'arancia',
    description3:
        '6% basso contenuto di alcol/dolce/agrumi/sul vermut/semplice',
    photo: 'assets/bianco.png',
  ),
  Cocktail(
    name: 'Arancia Calda',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità',
    compoundText1:
        'Bicchiere da caffè irlandese\nBrocca\ncucchiaio da cocktail\nJigger',
    compoundText2:
        'Rum bianco\nSciroppo di fragole\nscorza d\'arancia\nFragola\nPurea di fragole',
    compound2: '50 ml\n30 ml\n100 ml\n20 grammi\n50 grammi',
    description1:
        'Il cocktail Arancia Calda è noto per il suo vibrante sapore di arancia, l\'aroma speziato e il calore accogliente. È perfetto da consumare nella stagione fredda per riscaldarsi e rilassarsi.',
    description2:
        '1. Versare in uno shaker 3 cl di panna magra, 3 cl di liquore alla menta verde e 3 cl di liquore leggero al cacao.\n2. Riempi uno shaker con cubetti di ghiaccio e agita\n3. Versare attraverso un colino in una coppetta da cocktail ghiacciata.\n4. Decorare con due foglioline di menta',
    description3:
        '15-20% basso contenuto di alcol/cremoso/cioccolato/menta/dolce',
    photo: 'assets/arancia.png',
  ),
  Cocktail(
    name: 'Cavalletta',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità',
    compoundText1: 'Bicchiere da cocktail\nShaker\nFiltro\nJigger',
    compoundText2:
        'Liquore al cacao leggero Fruko Schulz\nLiquore alla menta verde Fruko Schulz\nCrema a basso contenuto di grassi\nmenta\nGhiaccio a cubetti',
    compound2: '30 ml\n30 ml\n30 ml\n1 grammi\n200 grammi',
    description1:
        '"Il" cavaliere " è un cocktail rinfrescante che di solito è fatto con succo di melograno, vermouth e un liquore alle erbe come il Chartreuse. Questo cocktail è ricco di sapore e aroma.',
    description2:
        '1. Metti 10 cucchiaini di purea di fragole nella brocca\n2. Aggiungere 30 ml di sciroppo di fragole, 100 ml di succo d\'arancia e 50 ml di rum bianco\n3. Mescolando, scaldare senza far bollire\n4. Versare in un bicchiere da Irish coffee\n5. Guarnire con fragole a fette',
    description3: '20-35% basso contenuto di alcol/bacca/dolce/al rum',
    photo: 'assets/Cavalletta.png',
  ),
  Cocktail(
    name: 'Negroni Bianco',
    compound1: '1 unità\n1 unità\n1 unità\n1 unitànm1 unità',
    compoundText1:
        'Rocce\nBicchiere da miscelazione\ncucchiaio da cocktail\nJigger\nFiltro',
    compoundText2:
        'London Dry Gin\nVermouth bianco\nGenziana\nGhiaccio a cubetti',
    compound2: '30 ml\n30 ml\n30 ml\n180 grammi',
    description1:
        'Bianco Negroni è una variazione del classico Negroni che utilizza il vermouth bianco. Ha un sapore più morbido e fresco.',
    description2:
        '1. Versare 30 ml di vermouth bianco, 30 ml di genziana e 30 ml di London dry gin in un mixing glass.\n2. Riempire un bicchiere con cubetti di ghiaccio e mescolare con un cucchiaio da cocktail\n3. Versare attraverso un colino in un bicchiere ghiacciato.',
    description3: '20-25% forte/erbaceo/Asciutto/sul gin/colpi di scena',
    photo: 'assets/negroni_bianco.png',
  ),
  Cocktail(
    name: 'Nuvole',
    compound1: '1 unità\n1 unità\n1 unità',
    compoundText1: 'Pila\ncucchiaio da cocktail\nTubi',
    compoundText2:
        'Sambuca classica\nTequila d\'argento\nAssenzio\nLiquore Blue Curaçao Fruko Schulz\nLiquore Blue Curaçao Fruko Schulz',
    compound2: '20 ml\n20 ml\n10 ml\n3 ml\n\n3 ml',
    description1:
        'La Nuvola è un cocktail delicato e rinfrescante che di solito consiste in succhi di frutta, soda club ed erbe fresche o bacche per guarnire. Ricorda le nuvole di un giorno d\'estate: leggero, arioso e rinfrescante.',
    description2:
        '1. Versare 20 ml di sambuca nel bicchierino e aggiungere 20 ml di tequila argentata\n2. Versare con attenzione 3 gocce di Irish Cream e di liquore Blue Curacao da una cannuccia.\n3. Usando un cucchiaio da cocktail, versare uno strato di 10 ml di assenzio',
    description3: '20-35% forte/erbaceo/speziato/sulla tequila/sulla sambuca',
    photo: 'assets/nuvole.png',
  ),
  Cocktail(
    name: 'Daiquiri alla fragola',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità\n1 unità',
    compoundText1:
        'Piattino di champagne\nSpremiagrumi\nJigger\nShaker\nFiltro',
    compoundText2:
        'Rum bianco\nSciroppo di fragole\nSucco di lime\nGhiaccio a cubetti',
    compound2: '75 ml\n25 ml\n25 ml\n200 grammi',
    description1:
        '"Daiquiri alla fragola" è un ottimo cocktail estivo che delizierà sicuramente gli amanti del gusto dolce e fruttato. È fatto con fragole fresche, succo di limone, sciroppo di zucchero e rum bianco.',
    description2:
        '1. Versare 25 ml di succo di lime e 25 ml di sciroppo di fragole in uno shaker\n2. Aggiungere rum bianco 75 ml\n3. Riempire uno shaker con cubetti di ghiaccio e agitare bene\n4. Versare attraverso un colino in un piattino da champagne',
    description3: '15-20% forte/bacca/acido/dolce/al rum',
    photo: 'assets/daiquiri_alla_fragola.png',
  ),
  Cocktail(
    name: 'Mimosa',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità',
    compoundText1: 'Flauto\nColtello Zester\ncucchiaio da cocktail\nJigger',
    compoundText2: 'Prosecco\nsucco d\'arancia',
    compound2: '90 ml\n90 ml',
    description1:
        'La Mimosa è un cocktail classico con succo d\'arancia appena spremuto e prosecco. Una scelta perfetta per un brunch o una colazione festiva.',
    description2:
        '1. Versare 90 ml di succo d\'arancia in un bicchiere flute ghiacciato\n2. Completare con il prosecco e mescolare delicatamente con un cucchiaio da cocktail',
    description3:
        '6% basso contenuto di alcol/agrum/acido/sullo scintillante/classico',
    photo: 'assets/mimosa.png',
  ),
  Cocktail(
    name: 'Tiglio con timo',
    compound1: '1 unità\n1 unità\n1 unità',
    compoundText1:
        'Bicchiere da caffè irlandese\ncucchiaio da cocktail\nJigger',
    compoundText2: 'succo d\'arancia\nTè al lime\nMela\nTimo',
    compound2: '15 ml\n150 ml\n30 grammi\n1 grammi',
    description1:
        'ignio com timo è un cocktail raffinato e saporito che include liquore al Limoncello, timo, succo di limone e sciroppo. Il liquore al Limoncello conferisce alla bevanda un brillante sapore agrumato, il timo aggiunge note speziate, il succo di limone aggiunge freschezza e lo sciroppo ammorbidisce l\'acido della bevanda.',
    description2:
        '1. Versare 15 ml di sciroppo d\'acero in un bicchiere da Irish coffee\n2. Aggiungi il tè caldo al tiglio sopra e mescola delicatamente con un cucchiaio da cocktail\n3. Guarnire con un rametto di timo e 3 fettine di mela',
    description3: '15-20% analcolico/dolce/speziato/floreal/semplice',
    photo: 'assets/tiglio.png',
  ),
  Cocktail(
    name: 'Mulo alla cannella',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità\n1 unità\n1 unità\n2 unità',
    compoundText1:
        'Palla alta\nBicchiere da miscelazione\nSpremiagrumi\nJigger\nFiltro\ncucchiaio da cocktail\nTubi',
    compoundText2:
        'Vodka Zarskaja\nSucco di lime\nBirra allo zenzero\nPurea di litchi\nLyme\nBastoncini di cannella\nGhiaccio a cubetti',
    compound2:
        '50 ml\n10 ml\n100 ml\n40 grammi\n20 grammi\n5 grammi\n480 grammi',
    description1:
        'Il cocktail mulo alla cannella è una combinazione sofisticata di birra allo zenzero rinfrescante, succo di lime saporito e sciroppo di cannella dolce.',
    description2:
        '1. Riempire fino all\'orlo un bicchiere highball con cubetti di ghiaccio\n2. Metti 8 cucchiaini di purea di litchi in un mixing glass\n3. Versare 10 ml di succo di lime e 50 ml di vodka\n4. Riempire un bicchiere con cubetti di ghiaccio e mescolare con un cucchiaio da cocktail\n5. Versare attraverso un colino in un bicchiere highball\n6. Completare con ginger beer e mescolare delicatamente con un cucchiaio da cocktail\n7. Decorare con una stecca di cannella e uno spicchio di lime',
    description3:
        '5-8% basso contenuto di alcol dolce tropicale sulla vodka longi',
    photo: 'assets/mulo.png',
  ),
  Cocktail(
    name: 'Tundra Libera',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità\n1 unità\n2 unità',
    compoundText1:
        'Highball\nSpremiagrumi\nMadler\ncucchiaio da cocktail\nJigger\nTubi',
    compoundText2:
        'Rum bianco\nSciroppo di litchi\nSucco di mirtillo\nSucco di lime\nFragola\nGhiaccio a cubetti',
    compound2: '50 ml\n20 ml\n60 ml\n7 ml\n80 grammi\n180 grammi  ',
    description1:
        'La Tundra Libera è un cocktail rinfrescante e fresco che prende il nome dai paesaggi aspri e freddi della tundra.',
    description2:
        '1. Metti 4 fragole in un tumbler alto e pestale\n2. Riempire fino all\'orlo un bicchiere highball con cubetti di ghiaccio\n3. Versare 7,5 ml di succo di lime, 20 ml di sciroppo di litchi e 50 ml di rum bianco. \n4. Aggiungi il succo di mirtillo rosso in superficie e mescola delicatamente con un cucchiaio da cocktail',
    description3: '20-35% forte/tropicale/bacca/dolce/al rum',
    photo: 'assets/tundra_libera.png',
  ),
  Cocktail(
    name: 'Caipirinha',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità\n2 unità',
    compoundText1: 'Rocce\nMadler\ncucchiaio da cocktail\nJigger\nTubi',
    compoundText2: 'Cachasa\nSciroppo di zucchero\nLime\nGhiaccio a cubetti',
    compound2: '50 ml\n10 ml\n40 grammi\n150 grammi',
    description1:
        'Caipirinha è un popolare cocktail Brasiliano a base di cachaça, lime, zucchero e ghiaccio. La cachaça è una bevanda alcolica brasiliana a base di canna da zucchero.',
    description2:
        '1. Mettere in un bicchiere rock mezzo lime tagliato a cubetti e pestare  \n2. Versare 10 ml di sciroppo di zucchero e 50 ml di cachaca\n3. Riempire un bicchiere rock con ghiaccio tritato e mescolare con un cucchiaio da cocktail \n4. Aggiungi un po\' di ghiaccio tritato',
    description3: '15-35% forte/acido/agrumi/sulla cachaç/classico',
    photo: 'assets/Caipirinha.png',
  ),
  Cocktail(
    name: 'Maria Amore',
    compound1:
        '1 unità\n1 unità\n1 unità\n1 unità\n1 unità\n1 unità\n1 unità\n2 unità\n2 unità',
    compoundText1:
        'Piattino di champagne\nShaker\nFiltro\nMadler\ncucchiaio da cocktail\nJigger\nFiltro\nSpremiagrumi\nSpiedino da cocktail',
    compoundText2:
        'Genever\nLiquore al frutto della passione Fruko Schulz\nSciroppo di zucchero\nSciroppo di lampone\nSucco di limone\nLamponi\nmenta\nMarmellata di arance\nZucchero a velo\nCocktail rosso ciliegia\nGhiaccio a cubetti',
    compound2:
        '50 ml\n10 ml\n10 ml\n10 ml\n10 ml\n30 grammi\n2 grammi\n10 grammi\n1 grammi\n15 grammi\n200 grammi',
    description1:
        'Il cocktail "Maria Amore " (O" Mary Love") è una bevanda aromatica e rinfrescante a base di vodka e succo di frutta.',
    description2:
        '1. Realizzare un bordo di zucchero a velo su un piattino da champagne\n2. Metti 2 cucchiai di marmellata di arance in uno shaker\n3. Aggiungere 6 lamponi, 5 foglie di menta e pestare\n4. Versare 15 ml di succo di limone, 10 ml di sciroppo di zucchero, 10 ml di sciroppo di lamponi, 30 ml di liquore al frutto della passione e 50 ml di jenever\n5. Riempi uno shaker con cubetti di ghiaccio e agita\n 6. Versare attraverso un colino e un colino in un bicchiere refrigerato.\n7. Guarnire con tre ciliegie da cocktail e foglie di menta su uno spiedino',
    description3: '15-20% forte/agrumi/menta/bacca/tropicale',
    photo: 'assets/maria.png',
  ),
  Cocktail(
    name: 'Fiume',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità\n1 unità\n2 unità',
    compoundText1:
        'Rocce\nSpremiagrumi\nMadler\ncucchiaio da cocktail\nJigger\nTubi',
    compoundText2:
        'Vodka Zarskaja\nSciroppo di zucchero\nSucco di limone\nMandarino\nGhiaccio a cubetti',
    compound2: '50 ml\n20 ml\n15 ml\n125 grammi\n150 grammi',
    description1:
        'Il Fiume è un cocktail che di solito contiene circa 25-30 gradi di forza. Questo cocktail è una combinazione di liquore alla menta, vermouth e soda club.',
    description2:
        '1. Disporre il mandarino tagliato a fette in un bicchiere rock e pestare\n2. Riempire fino all\'orlo un bicchiere rock con ghiaccio tritato.\n3. Versare 15 ml di succo di limone e 20 ml di sciroppo di zucchero\n4. Aggiungere 50 ml di vodka e mescolare con un cucchiaio da cocktail\n5. Guarnire con un quarto di mandarino',
    description3: '20-30% forte/agrumi/sulla vodka/dolce/pantaloncini da bere',
    photo: 'assets/Fiume.png',
  ),
  Cocktail(
    name: 'Grog',
    compound1: '1 unità\n1 unità\n1 unità\n1 unità',
    compoundText1:
        'Bicchiere da caffè irlandese\nSpremiagrumi\ncucchiaio da cocktail\nJigger',
    compoundText2:
        'Rum bianco\nSciroppo di zucchero\nSucco di limone\nTè nero\nLimone\nGarofano\nCardamomo',
    compound2: '40 ml\n20 ml\n15 ml\n100 ml\n40 grammi\n3 grammi\n3 grammi',
    description1:
        'Il cocktail "Grog" è una bevanda alcolica tradizionale che di solito contiene rum scuro, succo di limone, sciroppo di zucchero e acqua calda.',
    description2:
        '1. Metti 2 fette di limone e 3 chiodi di garofano in un bicchiere per Irish coffee. e cardamomo 3 grani\n2. Aggiungere 15 ml di succo di limone, 20 ml di sciroppo di zucchero e 40 ml di rum bianco\n3. Aggiungi il tè nero caldo sopra e mescola delicatamente con un cucchiaio da cocktail',
    description3: '20-40% basso contenuto di alcol/dolce/speziato/al rum/caldo',
    photo: 'assets/grog.png',
  ),
];
List<Ingredient> ingredients = [
  Ingredient(name: 'Vodka', type: EIngrType.spirits),
  Ingredient(name: 'Gin', type: EIngrType.spirits),
  Ingredient(name: 'Rum (leggero)', type: EIngrType.spirits),
  Ingredient(name: 'Rum (nero)', type: EIngrType.spirits),
  Ingredient(name: 'Tequila', type: EIngrType.spirits),
  Ingredient(name: 'Bourbon', type: EIngrType.spirits),
  Ingredient(name: 'Whiskey (Segale)', type: EIngrType.spirits),
  Ingredient(name: 'Whiskey (Scotch)', type: EIngrType.spirits),
  Ingredient(name: 'Whiskey (Irlandese)', type: EIngrType.spirits),
  Ingredient(name: 'Tripla Sec', type: EIngrType.liqueurs),
  Ingredient(name: 'Grand Marnier', type: EIngrType.liqueurs),
  Ingredient(name: 'Amaretto', type: EIngrType.liqueurs),
  Ingredient(name: 'Baileys Crema Irlandese', type: EIngrType.liqueurs),
  Ingredient(name: 'Cointreau', type: EIngrType.liqueurs),
  Ingredient(name: 'Kahlúa', type: EIngrType.liqueurs),
  Ingredient(name: 'Succo Di Lime Fresco', type: EIngrType.mixers),
  Ingredient(name: 'Succo Di Limone Fresco', type: EIngrType.mixers),
  Ingredient(name: 'Sciroppo semplice', type: EIngrType.mixers),
  Ingredient(name: 'Nettare di agave', type: EIngrType.mixers),
  Ingredient(name: 'Club Soda', type: EIngrType.mixers),
  Ingredient(name: 'Succo d\'arancia', type: EIngrType.fruitJuices),
  Ingredient(name: 'Succo di ananas', type: EIngrType.fruitJuices),
  Ingredient(name: 'Succo di mirtillo', type: EIngrType.fruitJuices),
  Ingredient(name: 'Succo di pompelmo', type: EIngrType.fruitJuices),
];
