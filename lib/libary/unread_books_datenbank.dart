//nur für den UI Bereich benötigt, in der fertigen App läuft alles über die Datenbank und API Abfragen

//ungelesen Screen
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
  'Destroyed Hearts II': {
    'title': 'Destroyed Hearts II',
    'author': 'Annie Tears',
    'year': '2021',
    'image': 'assets/images/destroyed-hearts.jpeg',
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
  'A STRANGE WORLD I Steven': {
    'title': 'A STRANGE WORLD',
    'author': 'Miamo Zesi',
    'year': '2023',
    'image': 'assets/images/miamo-zesi.webp',
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
  'The Princess and the Beast - Dunkles Spiel': {
    'title': 'The Princess and the Beast',
    'author': 'Sally Dark',
    'year': '2020',
    'image': 'assets/images/princess-and-beast.jpeg',
  },
  'A Night of Shadows and Betrayals': {
    'title': 'A Night of Shadows and Betrayals',
    'author': 'Anne Pätzold',
    'year': '2023',
    'image': 'assets/images/a-night-of.webp',
  }
};

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
