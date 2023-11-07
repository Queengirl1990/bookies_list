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
