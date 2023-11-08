//ungelesen
Map<String, Map<String, String>> unreadBooks = {
  'Außerhalb der Schatten II': {
    'title': 'Außerhalb der Schatten II',
    'author': 'Mandy J. Hard',
    'year': '2021',
    'image': 'assets/images/wir-wollen.jpg',
  },
   'Bis zum hellsten Morgen': {
    'title': 'Bis zum hellsten Morgen Band 4',
    'author': 'Brittainy C. Cherry',
    'year': '2023',
    'image': 'assets/images/bis-zum-hellsten-morgen.webp', 
  },
  'Ravenhall Academy II': {
    'title': 'Ravenhall Academy II',
    'author': 'Julia Kuhn',
    'year': '2023',
    'image': 'assets/images/erwachte-magie.jpg',
  },
  'Fallen Princess I': {
    'title': 'Fallen Princess I',
    'author': 'Mona Kasten',
    'year': '2023',
    'image': 'assets/images/fallen-princes.jpeg',
  },
  'Eine Frage der Chemie': {
    'title': 'Eine Frage der Chemie',
    'author': 'Bonnie Garmus',
    'year': '2022',
    'image': 'assets/images/eine-frage-der-chemie.jpeg',
  },
  'Check & Mate': {
    'title': 'Check & Mate',
    'author': 'Ali Hazelwood',
    'year': '2023',
    'image': 'assets/images/check-mate.jpg',
  },
  'Queen of Myth and Monsters': {
    'title': 'Queen of Myth and Monsters',
    'author': 'Scarlett St. Clair',
    'year': '2023',
    'image': 'assets/images/queen-of-myth.webp',
  },
  'Easthaven': {
    'title': 'Easthaven',
    'author': 'Janette Nussbaumer ',
    'year': '2021',
    'image': 'assets/images/easthaven.jpeg',
  },
   'What if love can save us?': {
    'title': 'What if love can save us? Band 1',
    'author': 'Saskia Palla',
    'year': '2023',
    'image': 'assets/images/what-if.jpeg',
  },  
    'A Night of Shadows and Betrayals': {
    'title': 'A Night of Shadows and Betrayals',
    'author': 'Anne Pätzold',
    'year': '2023',
    'image': 'assets/images/a-night-of.webp',
  }
};

//gelesen

Map<String, Map<String, String>> readBooks = {
  'Außerhalb der Schatten I': {
    'title': 'Außerhalb der Schatten I',
    'author': 'MJ Hard',
    'year': '2020',
    'image': 'assets/images/das-ist-erst.jpg',
  },
  'Vampires of Vensaya': {
    'title': 'Vampires of Vensaya',
    'author': 'Michael Jeremy Hard',
    'year': '2020',
    'image': 'assets/images/vampires_of_vensaya.jpeg',
  },
  'Das Biest in ihm': {
    'title': 'Das Biest in ihm',
    'author': 'Serena Valentino',
    'year': '2019',
    'image': 'assets/images/das-biest.jpeg',
  },
  'Keep my silent heart': {
    'title': 'Keep my silent heart',
    'author': 'Sazou G.',
    'year': '2022',
    'image': 'assets/images/keep-my.jpg',
  },
  'Ravenhall Academy I': {
    'title': 'Ravenhall Academy I',
    'author': 'Julia Kuhn',
    'year': '2023',
    'image': 'assets/images/verborgene-magie.jpeg',
  },
};

//Profil Karusell
class BookInfo {
  final String title;
  final String author;
  final String genre;
  final String buttonLabel;

  BookInfo(this.title, this.author, this.genre, this.buttonLabel);
}

final Map<String, BookInfo> bookInfoMap = {
  'Außerhalb der Schatten I': BookInfo('Außerhalb der Schatten I', 'Mandy J. Hard', 'Fantasy', 'Jetzt Lesen'),
  'Fourth Wings I': BookInfo('Fourth Wings I', 'Rebecca Yarros', 'Fantasy', 'Jetzt Lesen'),
  'Huskyküsse': BookInfo('Huskyküsse', 'Maria Winter', 'Romantik', 'Jetzt Lesen'),
  'Keep my silent Heart': BookInfo('Keep my silent Heart', 'Sazou G.', 'Romantik', 'Jetzt Lesen'),
  'Wicca Creed I': BookInfo('Wicca Creed I', 'Marah Woolf', 'Fantasy', 'Jetzt Lesen'),
  'Ravenhall Academy II': BookInfo('Ravenhall Academy II', 'Julia Kuhn', 'Fantasy', 'Jetzt Lesen'),
  'Bad At Love': BookInfo('Bad At Love', 'Julia Kuhn', 'New Adult Roman', 'Jetzt Lesen'),
};

final List<String> bookCoverAssets = [
  'assets/images/das-ist-erst.jpg',
  'assets/images/Fourth_wings.jpg',
  'assets/images/Huskyküsse.jpg',
  'assets/images/keep-my.jpg',
  'assets/images/wiccacreed.jpeg',
  'assets/images/verborgene-magie.jpeg',
  'assets/images/bad-at-love.jpeg',
];

//wunschliste
  Map<String, Map<String, String>> wishList = {
  'Autumn & Leaf': {
    'title': 'Autumn & Leaf',
    'author': 'J. K. Bloom',
    'year': '2020',
    'image': 'assets/images/autumn-leaf.jpeg',
  },
   'Die Drachenhexe I': {
    'title': 'Die Drachenhexe I',
    'author': 'J. K. Bloom',
    'year': '2019',
    'image': 'assets/images/die-drachenhexe.jpeg', 
  },
  'On My Way': {
    'title': 'On My Way',
    'author': 'Melanie Galsheimer',
    'year': '2023',
    'image': 'assets/images/on-my-way.jpeg',
  },
  'Mister Liberty II': {
    'title': 'Mister Liberty II',
    'author': 'Levi Elliot',
    'year': '2023',
    'image': 'assets/images/mister-liberty.jpeg',
  },
  'Bullshit-Bingo': {
    'title': 'Bullshit-Bingo',
    'author': 'Ina Taus',
    'year': '2021',
    'image': 'assets/images/bullshit-bingo.jpeg',
  },
  'Homecoming: Zurück zu dir': {
    'title': 'Homecoming: Zurück zu dir',
    'author': 'Jacqueline Nikel',
    'year': '2022',
    'image': 'assets/images/Homecoming.jpeg',
  }
};

// sonderband
  Map<String, Map<String, String>> limitedEdition = {
  'Fourth Wing (Special Edition)': {
    'title': 'Fourth Wing',
    'author': 'Rebecca Yarros',
    'year': '2023',
    'image': 'assets/images/wing-special.webp',
  },
   'Wie die Ruhe vor dem Sturm: Special Edition': {
    'title': 'Wie die Ruhe vor dem Sturm',
    'author': 'Brittainy C. Cherry',
    'year': '2023',
    'image': 'assets/images/ruhe-vor-dem-sturm.jpg', 
  },
  'Harry Potter - Gesamtausgabe': {
    'title': 'Harry Potter - Gesamtausgabe',
    'author': 'J. K. Rowling',
    'year': '2023',
    'image': 'assets/images/hp-all.jpeg',
  },
  'All In - Tausend Augenblicke: Special Edition': {
    'title': 'All In - Tausend Augenblicke',
    'author': 'Emma Scott',
    'year': '2023',
    'image': 'assets/images/all-in.jpg',
  },
    'Trotze der Nacht EXKLUSIVAUSGABE': {
    'title': 'Trotze der Nacht',
    'author': 'Brigid Kemmerer',
    'year': '2023',
    'image': 'assets/images/trotze-der-nacht.png',
  },
  'Die Stadt der Freude II SPECIAL EDITION': {
    'title': 'Die Stadt der Freude II',
    'author': 'Xiaoming Taiji, Anan',
    'year': '2023',
    'image': 'assets/images/stadt-der-freude.jpg',
  },
  'Written in Blood EXKLUSIVAUSGABE': {
    'title': 'Written in Blood',
    'author': 'Andrew Shvarts',
    'year': '2023',
    'image': 'assets/images/written-in-blood.png',
  }
};

// verschenken
  Map<String, Map<String, String>> giveAway = {
  'better with someone else': {
    'title': 'better with someone else',
    'author': 'Ina Taus',
    'year': '2023',
    'image': 'assets/images/better-with.jpeg',
  },
  'Friends, Lovers and the Big Terrible Thing': {
    'title': 'Friends, Lovers and the Big Terrible Thing',
    'author': 'Matthew Perry',
    'year': '2022',
    'image': 'assets/images/matt-perry.jpeg',
  },
  'Eine letzte Chance I': {
    'title': 'Eine letzte Chance',
    'author': 'Jaliah J.',
    'year': '2021',
    'image': 'assets/images/eine.jpeg',
  }
};

//Button Zufallsgenerator
List<String> buttonTitles = [
  "Krimi",
  "Fantasy",
  "Thriller",
  "Liebesroman",
  "Science Fiction",
  "Young Adult",
  "Familienroman",
  "Reiseroman",
  "Erotik",
  "Horror",
  "New Adult",
  "Romantasy",
  "High Fantasy",
  "Ratgeber",
  "Biographie",
  "Humor",
  "Tatsachen",
  "Fanfiction",
  "Gesellschaft",
  "Historisches",
  "Sachbuch",
  "Abenteuer",
  "Gedichte",
  "Zeitgeschichte",
  "Anime",
  "Comic",
  "Fachbuch",
];

//buchvorschlag
class BookData {
  final String title;
  final String author;
  final String genre;
  final String year;
  final String image;
  final String blurb;

  BookData({
    required this.title,
    required this.author,
    required this.genre,
    required this.year,
    required this.image,
    required this.blurb,
  });
}
List<BookData> bookSuggestion = [
    BookData(
    title: 'The Princes and the Best I',
    author: 'Sally Dark',
    genre: 'Dark Romance',
    year: '2020',
    image: 'assets/images/princess-and-beast.jpeg',
    blurb: 'Um gleich eins klarzustellen. Das hier ist weder ein zuckersüßes Märchen noch eine harmlose Lovestory. Meine Geschichte ist nichts für schwache Nerven. Mein Leben besteht aus Gewalt, Tod, Drogen und Sex. Hier gibt es keine Moral. Ich bin auch kein verschissener Ritter in strahlender Rüstung. Ich bin ein Monster, das sich nimmt, was es will und tötet, wer ihm im Weg steht. Will ich dich töten oder nur mit dir spielen? Ich bin der Hunter und du meine Beute. Was auch immer ich mit dir vorhabe, ich verspreche dir, dass es dich fesseln wird. Also, traust du dich in meine Welt?',
  ),
  BookData(
    title: 'A STRANGE WORLD',
    author: 'Miamo Zesi',
    genre: 'Dark Romance',
    year: '2023',
    image: 'assets/images/miamo-zesi.webp',
    blurb: 'Glück im Job, Pech in der Liebe - eine Aussage, die für die selbstbewusste Beth vollkommen zutreffend zu sein scheint. Im Berufsleben hat sie es schnell geschafft, Fuß zu fassen, doch längere Beziehungen sind für sie ein Buch mit sieben Siegeln. Bis jetzt ist es ihr einfach nie gelungen, einen Mann kennenzulernen, der sie wirklich fasziniert. Aus einer Laune heraus meldet sie sich in einem Chatroom an, mit dem ersten Namen, der ihr in den Sinn kommt: Sklavinchen. Eine Aktion, von der Beth sich nichts verspricht, bis sie mit Steven ins Gespräch kommt. Der erfolgreiche, selbstbewusste Geschäftsmann offenbart ihr eine neue, eine dunkle Seite. Er entführt sie in eine fremde Welt, in der Beth sich ihren geheimsten Fantasien hingeben kann. Steven scheint zu wissen, was sie braucht, um endlich die Erfüllung finden zu können, nach der sie sich so lange gesehnt hat. Doch kann sich mit einem so geheimnisvollen Mann wirklich alles zum Guten wenden?',
  ),
  BookData(
    title: 'Destroyed Hearts II',
    author: 'Annie Tears',
    genre: 'Dark Romance',
    year: '2021',
    blurb: 'Kaycee - Ich bin verloren. Wir sind zerbrochen – du und ich. Dein Betrug ist mehr, als ich ertragen kann, und doch komme ich nicht von dir los. Meine Liebe kann ich nicht einfach herausreißen und kaputtmachen, so wie du es mit meinem Herz getan hast. Ich will dir aus dem Weg gehen, doch dann bist du plötzlich da ... James - Was habe ich dir angetan, Kaycee? Ich wollte dich von mir fernhalten, damit genau so etwas nicht passiert. Ich habe einen Fehler gemacht, den ich nicht mehr korrigieren kann. Wenn du nur die Wahrheit wüsstest, Kay ... Würdest du mir dann glauben? Du willst vor mir fliehen, aber ich muss in deiner Nähe bleiben. Denn ohne meinen Schutz wirst du zur Zielscheibe meiner Feinde ...',
    image: 'assets/images/destroyed-hearts.jpeg',
  ),
];