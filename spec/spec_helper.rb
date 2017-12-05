require "bundler/setup"
require "boogle"

def test_bookshelf_list
  '{
 "kind": "books#bookshelves",
 "items": [
  {
   "kind": "books#bookshelf",
   "id": 0,
   "selfLink": "https://www.googleapis.com/books/v1/users/1112223334445556677/bookshelves/0",
   "title": "Favorites",
   "access": "PRIVATE",
   "updated": "2011-04-22T04:03:15.416Z",
   "created": "2011-04-22T04:03:15.416Z",
   "volumeCount": 0,
   "volumesLastUpdated": "2011-04-22T04:03:17.000Z"
  },
  {
   "kind": "books#bookshelf",
   "id": 3,
   "selfLink": "https://www.googleapis.com/books/v1/users/1112223334445556677/bookshelves/3",
   "title": "Reading now",
   "access": "PUBLIC",
   "updated": "2010-11-11T19:44:22.377Z",
   "created": "2010-11-11T19:44:22.377Z",
   "volumeCount": 1,
   "volumesLastUpdated": "2010-11-11T19:44:22.341Z"
  }
 ]
}'
end

def test_bookshelf
  '{
 "kind": "books#bookshelves",
 "items": [
  {
   "kind": "books#bookshelf",
   "id": 0,
   "selfLink": "https://www.googleapis.com/books/v1/users/1112223334445556677/bookshelves/0",
   "title": "Favorites",
   "access": "PRIVATE",
   "updated": "2011-04-22T04:03:15.416Z",
   "created": "2011-04-22T04:03:15.416Z",
   "volumeCount": 0,
   "volumesLastUpdated": "2011-04-22T04:03:17.000Z"
  },
  {
   "kind": "books#bookshelf",
   "id": 3,
   "selfLink": "https://www.googleapis.com/books/v1/users/1112223334445556677/bookshelves/3",
   "title": "Reading now",
   "access": "PUBLIC",
   "updated": "2010-11-11T19:44:22.377Z",
   "created": "2010-11-11T19:44:22.377Z",
   "volumeCount": 1,
   "volumesLastUpdated": "2010-11-11T19:44:22.341Z"
  }
 ]
}'
end
def test_book
  '{
 "kind": "books#volume",
 "id": "_oG_iTxP1pIC",
 "etag": "Y09RQgj9FHU",
 "selfLink": "https://www.googleapis.com/books/v1/volumes/_oG_iTxP1pIC",
 "volumeInfo": {
  "title": "Flowers for Algernon",
  "authors": [
   "Daniel Keyes"
  ],
  "publisher": "Houghton Mifflin Harcourt",
  "publishedDate": "2007-12-01",
  "description": "Oscar-winning film Charly starring Cliff Robertson and Claire Bloom-a mentally challenged man receives an operation that turns him into a genius...and introduces him to heartache.\u003cbr\u003e",
  "industryIdentifiers": [
   {
    "type": "ISBN_13",
    "identifier": "9780547539638"
   },
   {
    "type": "ISBN_10",
    "identifier": "0547539630"
   }
  ],
  "readingModes": {
   "text": true,
   "image": true
  },
  "pageCount": 304,
  "printedPageCount": 321,
  "printType": "BOOK",
  "categories": [
   "Fiction / Literary"
  ],
  "averageRating": 4.5,
  "ratingsCount": 16,
  "maturityRating": "NOT_MATURE",
  "allowAnonLogging": true,
  "contentVersion": "1.11.9.0.preview.3",
  "panelizationSummary": {
   "containsEpubBubbles": false,
   "containsImageBubbles": false
  },
  "imageLinks": {
   "smallThumbnail": "http://books.google.com/books/content?id=_oG_iTxP1pIC&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE73AJHvtZuF7MRj4x2mFXBtdx5EPChk3yicVqCIQBE5xr_HaO5bseeDjR6_N90Z2n6VPksdoAyqnbAO4G64PBo_Bza_P6YIwVMDFcUiipNEArULvEN3x-Qkxml8bwsGRnETYPFSt&source=gbs_api",
   "thumbnail": "http://books.google.com/books/content?id=_oG_iTxP1pIC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73IYc5njktaiqaYW-hhR-mMo6dl2jFdURz5ZYofAHBtgUrZNkWFZNPRd96AJOdhVa9djAUnvSqfjt9n71tXdQX7rZssCfu1QD-xfkSrD4kbpxJL-q_qw4MPH6pG2k8h9RHYPTJ-&source=gbs_api",
   "small": "http://books.google.com/books/content?id=_oG_iTxP1pIC&printsec=frontcover&img=1&zoom=2&edge=curl&imgtk=AFLRE73-pf4zEisVtC32eT7qRRTExSy2tPaHpbyODD_JymhoFFSX6UaHxI34rOTwtaIh4ybsX3lMuYdki0tp6W6XU_RT7GpVVwlnx7XUK1-Cws5DVgA_ZDsvtCAZJ38U1FNIdyCf1Ljv&source=gbs_api",
   "medium": "http://books.google.com/books/content?id=_oG_iTxP1pIC&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73QCbEn4HWDhny7td3q04dQeThxTe86oISgZbsFXbcS5XilM7CLJbHRru-W_D9EKhSVfAow91DSJRSuh-NGvphWObcyxqrDFnhsTK4Tg4u2K0xeJ9MYgTfvyKtbiZK0CNU14sUO&source=gbs_api",
   "large": "http://books.google.com/books/content?id=_oG_iTxP1pIC&printsec=frontcover&img=1&zoom=4&edge=curl&imgtk=AFLRE738V4YY8z3P51gLx-hvl5Uk4Vidt4WG2vg7bu9bNIiJ8VAXKbKXztwcXLd6Dxp9yQbVskoHeE-bhFeH5Axm36rDFp0JI-M1Hrm5FUBQW639czqnfaj6IU2Qol6WMD2jd1fzSins&source=gbs_api",
   "extraLarge": "http://books.google.com/books/content?id=_oG_iTxP1pIC&printsec=frontcover&img=1&zoom=6&edge=curl&imgtk=AFLRE72nqOtXzD2s9N61ouZfP3shVqSkgg_WdbENeSAUvt43Cm2NijpABapsuLMfp-8CmaDK2fkv8G0qV7pBC7ltuC8icbPFqigyxSeJnu3lkHn1IK-FbgxflZoXU5s0x2w-lGRlNtxq&source=gbs_api"
  },
  "language": "en",
  "previewLink": "http://books.google.com.eg/books?id=_oG_iTxP1pIC&hl=&source=gbs_api",
  "infoLink": "https://play.google.com/store/books/details?id=_oG_iTxP1pIC&source=gbs_api",
  "canonicalVolumeLink": "https://market.android.com/details?id=book-_oG_iTxP1pIC"
 },
 "layerInfo": {
  "layers": [
   {
    "layerId": "geo",
    "volumeAnnotationsVersion": "11"
   }
  ]
 },
 "saleInfo": {
  "country": "EG",
  "saleability": "FOR_SALE",
  "isEbook": true,
  "listPrice": {
   "amount": 90.58,
   "currencyCode": "EGP"
  },
  "retailPrice": {
   "amount": 90.58,
   "currencyCode": "EGP"
  },
  "buyLink": "https://play.google.com/store/books/details?id=_oG_iTxP1pIC&rdid=book-_oG_iTxP1pIC&rdot=1&source=gbs_api",
  "offers": [
   {
    "finskyOfferType": 1,
    "listPrice": {
     "amountInMicros": 9.058E7,
     "currencyCode": "EGP"
    },
    "retailPrice": {
     "amountInMicros": 9.058E7,
     "currencyCode": "EGP"
    }
   }
  ]
 },
 "accessInfo": {
  "country": "EG",
  "viewability": "PARTIAL",
  "embeddable": true,
  "publicDomain": false,
  "textToSpeechPermission": "ALLOWED",
  "epub": {
   "isAvailable": true,
   "acsTokenLink": "http://books.google.com.eg/books/download/Flowers_for_Algernon-sample-epub.acsm?id=_oG_iTxP1pIC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
  },
  "pdf": {
   "isAvailable": true,
   "acsTokenLink": "http://books.google.com.eg/books/download/Flowers_for_Algernon-sample-pdf.acsm?id=_oG_iTxP1pIC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
  },
  "webReaderLink": "http://play.google.com/books/reader?id=_oG_iTxP1pIC&hl=&printsec=frontcover&source=gbs_api",
  "accessViewStatus": "SAMPLE",
  "quoteSharingAllowed": false
 }
}'
end

def test_search_book
  '{
 "kind": "books#volumes",
 "totalItems": 125,
 "items": [
  {
   "kind": "books#volume",
   "id": "_oG_iTxP1pIC",
   "etag": "Bkg0Inuy4Vo",
   "selfLink": "https://www.googleapis.com/books/v1/volumes/_oG_iTxP1pIC",
   "volumeInfo": {
    "title": "Flowers for Algernon",
    "authors": [
     "Daniel Keyes"
    ],
    "publisher": "Houghton Mifflin Harcourt",
    "publishedDate": "2007-12-01",
    "description": "The beloved, classic story of a mentally disabled man whose experimental quest for intelligence mirrors that of Algernon, an extraordinary lab mouse.",
    "industryIdentifiers": [
     {
      "type": "ISBN_10",
      "identifier": "0547539630"
     },
     {
      "type": "ISBN_13",
      "identifier": "9780547539638"
     }
    ],
    "readingModes": {
     "text": true,
     "image": true
    },
    "pageCount": 304,
    "printType": "BOOK",
    "categories": [
     "Fiction"
    ],
    "averageRating": 4.0,
    "ratingsCount": 146,
    "maturityRating": "NOT_MATURE",
    "allowAnonLogging": true,
    "contentVersion": "1.11.9.0.preview.3",
    "panelizationSummary": {
     "containsEpubBubbles": false,
     "containsImageBubbles": false
    },
    "imageLinks": {
     "smallThumbnail": "http://books.google.com/books/content?id=_oG_iTxP1pIC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
     "thumbnail": "http://books.google.com/books/content?id=_oG_iTxP1pIC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
    },
    "language": "en",
    "previewLink": "http://books.google.com.eg/books?id=_oG_iTxP1pIC&pg=PA225&dq=flowers+inauthor:keyes&hl=&cd=1&source=gbs_api",
    "infoLink": "https://play.google.com/store/books/details?id=_oG_iTxP1pIC&source=gbs_api",
    "canonicalVolumeLink": "https://market.android.com/details?id=book-_oG_iTxP1pIC"
   },
   "saleInfo": {
    "country": "EG",
    "saleability": "FOR_SALE",
    "isEbook": true,
    "listPrice": {
     "amount": 90.58,
     "currencyCode": "EGP"
    },
    "retailPrice": {
     "amount": 90.58,
     "currencyCode": "EGP"
    },
    "buyLink": "https://play.google.com/store/books/details?id=_oG_iTxP1pIC&rdid=book-_oG_iTxP1pIC&rdot=1&source=gbs_api",
    "offers": [
     {
      "finskyOfferType": 1,
      "listPrice": {
       "amountInMicros": 9.058E7,
       "currencyCode": "EGP"
      },
      "retailPrice": {
       "amountInMicros": 9.058E7,
       "currencyCode": "EGP"
      }
     }
    ]
   },
   "accessInfo": {
    "country": "EG",
    "viewability": "PARTIAL",
    "embeddable": true,
    "publicDomain": false,
    "textToSpeechPermission": "ALLOWED",
    "epub": {
     "isAvailable": true,
     "acsTokenLink": "http://books.google.com.eg/books/download/Flowers_for_Algernon-sample-epub.acsm?id=_oG_iTxP1pIC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
    },
    "pdf": {
     "isAvailable": true,
     "acsTokenLink": "http://books.google.com.eg/books/download/Flowers_for_Algernon-sample-pdf.acsm?id=_oG_iTxP1pIC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
    },
    "webReaderLink": "http://play.google.com/books/reader?id=_oG_iTxP1pIC&hl=&printsec=frontcover&source=gbs_api",
    "accessViewStatus": "SAMPLE",
    "quoteSharingAllowed": false
   }
  },
  {
   "kind": "books#volume",
   "id": "F1wgqlNi8AMC",
   "etag": "y9Un30QUAC4",
   "selfLink": "https://www.googleapis.com/books/v1/volumes/F1wgqlNi8AMC",
   "volumeInfo": {
    "title": "Flowers for Algernon",
    "subtitle": "Full",
    "authors": [
     "David Rogers",
     "Daniel Keyes"
    ],
    "publisher": "Dramatic Publishing",
    "publishedDate": "1969",
    "description": "The compelling story of Charlie Gordon, willing victim of a strange experiment - a moron, a genius, a man in search of himself. Poignant, funny, tragic, but with a hope for the indomitable spirit of man, this unusual play tells a story you will long remember. It also offers a magnificent role.",
    "industryIdentifiers": [
     {
      "type": "ISBN_10",
      "identifier": "0871295377"
     },
     {
      "type": "ISBN_13",
      "identifier": "9780871295378"
     }
    ],
    "readingModes": {
     "text": false,
     "image": true
    },
    "pageCount": 117,
    "printType": "BOOK",
    "averageRating": 5.0,
    "ratingsCount": 1,
    "maturityRating": "NOT_MATURE",
    "allowAnonLogging": false,
    "contentVersion": "0.0.1.0.preview.1",
    "imageLinks": {
     "smallThumbnail": "http://books.google.com/books/content?id=F1wgqlNi8AMC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
     "thumbnail": "http://books.google.com/books/content?id=F1wgqlNi8AMC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
    },
    "language": "en",
    "previewLink": "http://books.google.com.eg/books?id=F1wgqlNi8AMC&pg=PA3&dq=flowers+inauthor:keyes&hl=&cd=2&source=gbs_api",
    "infoLink": "http://books.google.com.eg/books?id=F1wgqlNi8AMC&dq=flowers+inauthor:keyes&hl=&source=gbs_api",
    "canonicalVolumeLink": "https://books.google.com/books/about/Flowers_for_Algernon.html?hl=&id=F1wgqlNi8AMC"
   },
   "saleInfo": {
    "country": "EG",
    "saleability": "NOT_FOR_SALE",
    "isEbook": false
   },
   "accessInfo": {
    "country": "EG",
    "viewability": "PARTIAL",
    "embeddable": true,
    "publicDomain": false,
    "textToSpeechPermission": "ALLOWED",
    "epub": {
     "isAvailable": false
    },
    "pdf": {
     "isAvailable": false
    },
    "webReaderLink": "http://play.google.com/books/reader?id=F1wgqlNi8AMC&hl=&printsec=frontcover&source=gbs_api",
    "accessViewStatus": "SAMPLE",
    "quoteSharingAllowed": false
   },
   "searchInfo": {
    "textSnippet": "... New York City and Chicago. There is one intermission. *Doubling: Doris - \u003cbr\u003e\nNorma; Ellen - Nurse - Mrs. Mooney; Bernice-Mrs. Nemur; Mrs. Feldman- Connie \u003cbr\u003e\n- Jackie Welber g; Gina - Chair lady -Anne Welberg; Joe-Mr. Harvey; Frank-Teen \u003cbr\u003e\nAge Charlie. (These are just suggestions; parts can be divided many ways, \u003cbr\u003e\npossibly making the cast smaller. Some very small parts can be eliminated.) \u003cbr\u003e\nSETTING &quot;\u003cb\u003eFlowers\u003c/b\u003e for Algernon&quot; is played in drapes, with certain \u003cb\u003eFLOWERS\u003c/b\u003e FOR \u003cbr\u003e\nALGERNON."
   }
  },
  {
   "kind": "books#volume",
   "id": "Co89jQRg4_oC",
   "etag": "kwIHSQN3cbY",
   "selfLink": "https://www.googleapis.com/books/v1/volumes/Co89jQRg4_oC",
   "volumeInfo": {
    "title": "The Other Side of the Story",
    "authors": [
     "Marian Keyes"
    ],
    "publisher": "Penguin UK",
    "publishedDate": "2005-03-10",
    "description": "The lives of three women collide when a highflying literary agent finds herself representing two women who were once best friends . . . There are three sides to every story. Your side, their side, and the truth . . . Sharkish literary agent Jojo has just made a very bad career move - shes slept with her married boss Mark . . . Lily - Jojos bestselling author - has just blown her advance on a house with new boyfriend Anton, only to come down with writers block . . . Gemma used to be Lilys best friend until Lily ran off with Anton. Now shes pouring her heart out and a certain literary agent likes her style . . . Soon the fortunes of Jojo, Lily and Gemma are horribly entangled. But each is about to discover that theres more than one side to every story . . . It had me in tears . . . and, barking with laughter Daily Telegraph A wonderful, subtle, hilarious and highly sophisticated novel. You cant stop reading Evening Standard Packed with sound writing, wit and common sense Guardian",
    "industryIdentifiers": [
     {
      "type": "ISBN_13",
      "identifier": "9780141909653"
     },
     {
      "type": "ISBN_10",
      "identifier": "014190965X"
     }
    ],
    "readingModes": {
     "text": true,
     "image": false
    },
    "pageCount": 656,
    "printType": "BOOK",
    "categories": [
     "Fiction"
    ],
    "averageRating": 4.0,
    "ratingsCount": 13,
    "maturityRating": "NOT_MATURE",
    "allowAnonLogging": true,
    "contentVersion": "1.25.19.0.preview.2",
    "panelizationSummary": {
     "containsEpubBubbles": false,
     "containsImageBubbles": false
    },
    "imageLinks": {
     "smallThumbnail": "http://books.google.com/books/content?id=Co89jQRg4_oC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
     "thumbnail": "http://books.google.com/books/content?id=Co89jQRg4_oC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
    },
    "language": "en",
    "previewLink": "http://books.google.com.eg/books?id=Co89jQRg4_oC&pg=PT129&dq=flowers+inauthor:keyes&hl=&cd=3&source=gbs_api",
    "infoLink": "https://play.google.com/store/books/details?id=Co89jQRg4_oC&source=gbs_api",
    "canonicalVolumeLink": "https://market.android.com/details?id=book-Co89jQRg4_oC"
   },
   "saleInfo": {
    "country": "EG",
    "saleability": "FOR_SALE",
    "isEbook": true,
    "listPrice": {
     "amount": 86.77,
     "currencyCode": "EGP"
    },
    "retailPrice": {
     "amount": 86.77,
     "currencyCode": "EGP"
    },
    "buyLink": "https://play.google.com/store/books/details?id=Co89jQRg4_oC&rdid=book-Co89jQRg4_oC&rdot=1&source=gbs_api",
    "offers": [
     {
      "finskyOfferType": 1,
      "listPrice": {
       "amountInMicros": 8.677E7,
       "currencyCode": "EGP"
      },
      "retailPrice": {
       "amountInMicros": 8.677E7,
       "currencyCode": "EGP"
      }
     }
    ]
   },
   "accessInfo": {
    "country": "EG",
    "viewability": "PARTIAL",
    "embeddable": true,
    "publicDomain": false,
    "textToSpeechPermission": "ALLOWED_FOR_ACCESSIBILITY",
    "epub": {
     "isAvailable": true,
     "acsTokenLink": "http://books.google.com.eg/books/download/The_Other_Side_of_the_Story-sample-epub.acsm?id=Co89jQRg4_oC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
    },
    "pdf": {
     "isAvailable": false
    },
    "webReaderLink": "http://play.google.com/books/reader?id=Co89jQRg4_oC&hl=&printsec=frontcover&source=gbs_api",
    "accessViewStatus": "SAMPLE",
    "quoteSharingAllowed": false
   },
   "searchInfo": {
    "textSnippet": "\u003cb\u003eFlowers\u003c/b\u003e. Since she&#39;d begun this thing with Mark she&#39;d never got so many \u003cb\u003eflowers\u003c/b\u003e \u003cbr\u003e\nin her life and she&#39;d kind of gone off them; they represented broken dates, bikini \u003cbr\u003e\nlines which had been waxed for no reason, punnets of strawberries which she \u003cbr\u003e\nhad to eat all on her own, so many that they gave her hives. In her long T-shirt, \u003cbr\u003e\nshe stood at the door, waiting for the \u003cb\u003eflower\u003c/b\u003e man to come up the stairs. She lived \u003cbr\u003e\nin a fifth-floor flat in Maida Vale, in one of the redbrick apartment blocks which \u003cbr\u003e\nhad&nbsp;..."
   }
  },
  {
   "kind": "books#volume",
   "id": "qCEe-2bRJXAC",
   "etag": "kJ3FepWqnOg",
   "selfLink": "https://www.googleapis.com/books/v1/volumes/qCEe-2bRJXAC",
   "volumeInfo": {
    "title": "Last Chance Saloon",
    "authors": [
     "Marian Keyes"
    ],
    "publisher": "Penguin UK",
    "publishedDate": "2005-07-07",
    "description": "Last Chance Saloon is a witty, charming and uplifting story about modern love and discovering what really matters in life, by bestselling author Marian Keyes Love is blind, there was no doubt about it. In Taras case it was also deaf, dumb, dyslexic, had a bad hip and the beginnings of Alzheimers . . . Tara, Katherine and Fintan have been best friends since they were teenagers. Now in their early thirties, theyve been living it up in London for ten years. But what have they to show for a decade of hedonism? Sure, Taras got a boyfriend - but only because shes terrified of spending five minutes alone. Katherine, on the other hand, has a neatness fetish that wont let anyone too close to mess up her life. And Fintan? Well, he has everything. Until he learns that without your health, youve got nothing . . . All three are drinking in the last chance saloon and theyre about to discover that if you dont change your life, life has a way of changing you . . . An outstanding writer and chronicler of our times Independent on Sunday Her writing is of the highest order. Someone should give this woman a Booker Sunday Tribune",
    "industryIdentifiers": [
     {
      "type": "ISBN_13",
      "identifier": "9780141909820"
     },
     {
      "type": "ISBN_10",
      "identifier": "014190982X"
     }
    ],
    "readingModes": {
     "text": true,
     "image": false
    },
    "pageCount": 640,
    "printType": "BOOK",
    "categories": [
     "Fiction"
    ],
    "averageRating": 3.0,
    "ratingsCount": 17,
    "maturityRating": "NOT_MATURE",
    "allowAnonLogging": true,
    "contentVersion": "2.21.17.0.preview.2",
    "panelizationSummary": {
     "containsEpubBubbles": false,
     "containsImageBubbles": false
    },
    "imageLinks": {
     "smallThumbnail": "http://books.google.com/books/content?id=qCEe-2bRJXAC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
     "thumbnail": "http://books.google.com/books/content?id=qCEe-2bRJXAC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
    },
    "language": "en",
    "previewLink": "http://books.google.com.eg/books?id=qCEe-2bRJXAC&pg=PT315&dq=flowers+inauthor:keyes&hl=&cd=4&source=gbs_api",
    "infoLink": "https://play.google.com/store/books/details?id=qCEe-2bRJXAC&source=gbs_api",
    "canonicalVolumeLink": "https://market.android.com/details?id=book-qCEe-2bRJXAC"
   },
   "saleInfo": {
    "country": "EG",
    "saleability": "FOR_SALE",
    "isEbook": true,
    "listPrice": {
     "amount": 86.77,
     "currencyCode": "EGP"
    },
    "retailPrice": {
     "amount": 86.77,
     "currencyCode": "EGP"
    },
    "buyLink": "https://play.google.com/store/books/details?id=qCEe-2bRJXAC&rdid=book-qCEe-2bRJXAC&rdot=1&source=gbs_api",
    "offers": [
     {
      "finskyOfferType": 1,
      "listPrice": {
       "amountInMicros": 8.677E7,
       "currencyCode": "EGP"
      },
      "retailPrice": {
       "amountInMicros": 8.677E7,
       "currencyCode": "EGP"
      }
     }
    ]
   },
   "accessInfo": {
    "country": "EG",
    "viewability": "PARTIAL",
    "embeddable": true,
    "publicDomain": false,
    "textToSpeechPermission": "ALLOWED_FOR_ACCESSIBILITY",
    "epub": {
     "isAvailable": true,
     "acsTokenLink": "http://books.google.com.eg/books/download/Last_Chance_Saloon-sample-epub.acsm?id=qCEe-2bRJXAC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
    },
    "pdf": {
     "isAvailable": false
    },
    "webReaderLink": "http://play.google.com/books/reader?id=qCEe-2bRJXAC&hl=&printsec=frontcover&source=gbs_api",
    "accessViewStatus": "SAMPLE",
    "quoteSharingAllowed": false
   },
   "searchInfo": {
    "textSnippet": "Balloons and paper streamers were Sellotaped to original paintings, Japanese \u003cbr\u003e\nlamps and the industrial-style tallboy. Get well cards lined the Philippe Starck \u003cbr\u003e\nshelves. There were fresh \u003cb\u003eflowers\u003c/b\u003e in every room. Dazed, Fintan sat on the tan \u003cbr\u003e\nleather sofa they&#39;d had specially made and imported from New York, while \u003cbr\u003e\nSandro fussed around like an old woman, fiddling with the \u003cb\u003eflowers\u003c/b\u003e, plumping \u003cbr\u003e\nleather cushions, straightening the original seventies Formica coffee table. He \u003cbr\u003e\napproached with a&nbsp;..."
   }
  },
  {
   "kind": "books#volume",
   "id": "uCqioAEACAAJ",
   "etag": "Rbl52tKw2PM",
   "selfLink": "https://www.googleapis.com/books/v1/volumes/uCqioAEACAAJ",
   "volumeInfo": {
    "title": "Flowers for Algernon - Downloadable Multiple Critical Perspectives",
    "authors": [
     "Daniel Keyes"
    ],
    "publishedDate": "2011-01-01",
    "description": "Probe the depth and richness of your favorite titles and usher your students into an understanding of what really made us want to teach literature in the first place. Each guide offers clear and concise explanations of three different critical perspectives.",
    "industryIdentifiers": [
     {
      "type": "ISBN_10",
      "identifier": "1935467972"
     },
     {
      "type": "ISBN_13",
      "identifier": "9781935467977"
     }
    ],
    "readingModes": {
     "text": false,
     "image": false
    },
    "printType": "BOOK",
    "maturityRating": "NOT_MATURE",
    "allowAnonLogging": false,
    "contentVersion": "preview-1.0.0",
    "language": "en",
    "previewLink": "http://books.google.com.eg/books?id=uCqioAEACAAJ&dq=flowers+inauthor:keyes&hl=&cd=5&source=gbs_api",
    "infoLink": "http://books.google.com.eg/books?id=uCqioAEACAAJ&dq=flowers+inauthor:keyes&hl=&source=gbs_api",
    "canonicalVolumeLink": "https://books.google.com/books/about/Flowers_for_Algernon_Downloadable_Multip.html?hl=&id=uCqioAEACAAJ"
   },
   "saleInfo": {
    "country": "EG",
    "saleability": "NOT_FOR_SALE",
    "isEbook": false
   },
   "accessInfo": {
    "country": "EG",
    "viewability": "NO_PAGES",
    "embeddable": false,
    "publicDomain": false,
    "textToSpeechPermission": "ALLOWED",
    "epub": {
     "isAvailable": false
    },
    "pdf": {
     "isAvailable": false
    },
    "webReaderLink": "http://play.google.com/books/reader?id=uCqioAEACAAJ&hl=&printsec=frontcover&source=gbs_api",
    "accessViewStatus": "NONE",
    "quoteSharingAllowed": false
   },
   "searchInfo": {
    "textSnippet": "Probe the depth and richness of your favorite titles and usher your students into an understanding of what really made us want to teach literature in the first place."
   }
  },
  {
   "kind": "books#volume",
   "id": "VsfUAAAAMAAJ",
   "etag": "ypZAujuyklU",
   "selfLink": "https://www.googleapis.com/books/v1/volumes/VsfUAAAAMAAJ",
   "volumeInfo": {
    "title": "Written in Heaven",
    "subtitle": "The Life on Earth of the Little Flower of Lisieux",
    "authors": [
     "Frances Parkinson Keyes"
    ],
    "publishedDate": "1937",
    "industryIdentifiers": [
     {
      "type": "OTHER",
      "identifier": "PSU:000004872986"
     }
    ],
    "readingModes": {
     "text": false,
     "image": false
    },
    "pageCount": 201,
    "printType": "BOOK",
    "maturityRating": "NOT_MATURE",
    "allowAnonLogging": false,
    "contentVersion": "1.1.1.0.preview.0",
    "imageLinks": {
     "smallThumbnail": "http://books.google.com/books/content?id=VsfUAAAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api",
     "thumbnail": "http://books.google.com/books/content?id=VsfUAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"
    },
    "language": "en",
    "previewLink": "http://books.google.com.eg/books?id=VsfUAAAAMAAJ&q=flowers+inauthor:keyes&dq=flowers+inauthor:keyes&hl=&cd=6&source=gbs_api",
    "infoLink": "http://books.google.com.eg/books?id=VsfUAAAAMAAJ&dq=flowers+inauthor:keyes&hl=&source=gbs_api",
    "canonicalVolumeLink": "https://books.google.com/books/about/Written_in_Heaven.html?hl=&id=VsfUAAAAMAAJ"
   },
   "saleInfo": {
    "country": "EG",
    "saleability": "NOT_FOR_SALE",
    "isEbook": false
   },
   "accessInfo": {
    "country": "EG",
    "viewability": "NO_PAGES",
    "embeddable": false,
    "publicDomain": false,
    "textToSpeechPermission": "ALLOWED",
    "epub": {
     "isAvailable": false
    },
    "pdf": {
     "isAvailable": false
    },
    "webReaderLink": "http://play.google.com/books/reader?id=VsfUAAAAMAAJ&hl=&printsec=frontcover&source=gbs_api",
    "accessViewStatus": "NONE",
    "quoteSharingAllowed": false
   }
  },
  {
   "kind": "books#volume",
   "id": "PDTD2hPNcjAC",
   "etag": "ZX6TAZQKFk0",
   "selfLink": "https://www.googleapis.com/books/v1/volumes/PDTD2hPNcjAC",
   "volumeInfo": {
    "title": "Algernon, Charlie, and I",
    "subtitle": "A Writers Journey",
    "authors": [
     "Daniel Keyes"
    ],
    "publisher": "Houghton Mifflin Harcourt",
    "publishedDate": "2004-09-01",
    "description": "In Flowers for Algernon, Daniel Keyes created an unlikely duo-a laboratory mouse and a man-who captured the hearts of millions of readers around the world. Now, in Algernon, Charlie, and I, Keyes reveals his methods of creating fiction as well as the heartbreaks and joys of being published. With admirable insight he shares with readers, writers, teachers, and students the creative life behind his classic novel, included here in its original short-story form. All those who love stories, storytelling, and the remarkable characters of Charlie and Algernon will delight in accompanying their creator on this inspirational voyage of discovery.",
    "industryIdentifiers": [
     {
      "type": "ISBN_13",
      "identifier": "9780547564081"
     },
     {
      "type": "ISBN_10",
      "identifier": "0547564082"
     }
    ],
    "readingModes": {
     "text": true,
     "image": true
    },
    "pageCount": 228,
    "printType": "BOOK",
    "categories": [
     "Biography & Autobiography"
    ],
    "averageRating": 4.0,
    "ratingsCount": 3,
    "maturityRating": "NOT_MATURE",
    "allowAnonLogging": true,
    "contentVersion": "1.7.7.0.preview.3",
    "panelizationSummary": {
     "containsEpubBubbles": false,
     "containsImageBubbles": false
    },
    "imageLinks": {
     "smallThumbnail": "http://books.google.com/books/content?id=PDTD2hPNcjAC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
     "thumbnail": "http://books.google.com/books/content?id=PDTD2hPNcjAC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
    },
    "language": "en",
    "previewLink": "http://books.google.com.eg/books?id=PDTD2hPNcjAC&printsec=frontcover&dq=flowers+inauthor:keyes&hl=&cd=7&source=gbs_api",
    "infoLink": "https://play.google.com/store/books/details?id=PDTD2hPNcjAC&source=gbs_api",
    "canonicalVolumeLink": "https://market.android.com/details?id=book-PDTD2hPNcjAC"
   },
   "saleInfo": {
    "country": "EG",
    "saleability": "FOR_SALE",
    "isEbook": true,
    "listPrice": {
     "amount": 104.18,
     "currencyCode": "EGP"
    },
    "retailPrice": {
     "amount": 104.18,
     "currencyCode": "EGP"
    },
    "buyLink": "https://play.google.com/store/books/details?id=PDTD2hPNcjAC&rdid=book-PDTD2hPNcjAC&rdot=1&source=gbs_api",
    "offers": [
     {
      "finskyOfferType": 1,
      "listPrice": {
       "amountInMicros": 1.0418E8,
       "currencyCode": "EGP"
      },
      "retailPrice": {
       "amountInMicros": 1.0418E8,
       "currencyCode": "EGP"
      }
     }
    ]
   },
   "accessInfo": {
    "country": "EG",
    "viewability": "PARTIAL",
    "embeddable": true,
    "publicDomain": false,
    "textToSpeechPermission": "ALLOWED",
    "epub": {
     "isAvailable": true,
     "acsTokenLink": "http://books.google.com.eg/books/download/Algernon_Charlie_and_I-sample-epub.acsm?id=PDTD2hPNcjAC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
    },
    "pdf": {
     "isAvailable": true,
     "acsTokenLink": "http://books.google.com.eg/books/download/Algernon_Charlie_and_I-sample-pdf.acsm?id=PDTD2hPNcjAC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
    },
    "webReaderLink": "http://play.google.com/books/reader?id=PDTD2hPNcjAC&hl=&printsec=frontcover&source=gbs_api",
    "accessViewStatus": "SAMPLE",
    "quoteSharingAllowed": false
   },
   "searchInfo": {
    "textSnippet": "Now, in Algernon, Charlie, and I, Keyes reveals his methods of creating fiction as well as the heartbreaks and joys of being published."
   }
  },
  {
   "kind": "books#volume",
   "id": "OQUrbQ_CoAMC",
   "etag": "iQ3TUgGCNmk",
   "selfLink": "https://www.googleapis.com/books/v1/volumes/OQUrbQ_CoAMC",
   "volumeInfo": {
    "title": "The Mystery of Sex",
    "subtitle": "A Book about Love",
    "authors": [
     "Elizabeth Keyes"
    ],
    "publisher": "Gentle Living Publications",
    "publishedDate": "1975",
    "description": "What causes men and women to have almost opposite concepts of the word ?love?? Why do men feel superior to women? Why do women find it easier to use intuition than logic? Why can men fight, shake hands and forget it, but women who fight never forget it? Why the importance given virginity in women but not in men? Why have women revolted against their natural role of motherhood? Why homosexuality? Are we missing greater experiences by confining sex to a physical level?These and other questions are answered in this book, from sources of ancient and modern wisdom, gathered by the author over many years of study and research.Sex is one of the most dominating subjects of our time. It is substituted for love; it is used with love and without love. People are confused about it. Some do not know which sex they are. It is the most misunderstood, misused and commercialized force in our culture. Polarity exists on every level, and is essential to the creation of all life. An understanding of this principle brings harmony out of conflict; cooperation instead of competition.",
    "industryIdentifiers": [
     {
      "type": "ISBN_10",
      "identifier": "0979039169"
     },
     {
      "type": "ISBN_13",
      "identifier": "9780979039164"
     }
    ],
    "readingModes": {
     "text": false,
     "image": true
    },
    "pageCount": 115,
    "printType": "BOOK",
    "categories": [
     "Love"
    ],
    "maturityRating": "NOT_MATURE",
    "allowAnonLogging": false,
    "contentVersion": "preview-1.0.0",
    "imageLinks": {
     "smallThumbnail": "http://books.google.com/books/content?id=OQUrbQ_CoAMC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
     "thumbnail": "http://books.google.com/books/content?id=OQUrbQ_CoAMC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
    },
    "language": "en",
    "previewLink": "http://books.google.com.eg/books?id=OQUrbQ_CoAMC&pg=PA51&dq=flowers+inauthor:keyes&hl=&cd=8&source=gbs_api",
    "infoLink": "http://books.google.com.eg/books?id=OQUrbQ_CoAMC&dq=flowers+inauthor:keyes&hl=&source=gbs_api",
    "canonicalVolumeLink": "https://books.google.com/books/about/The_Mystery_of_Sex.html?hl=&id=OQUrbQ_CoAMC"
   },
   "saleInfo": {
    "country": "EG",
    "saleability": "NOT_FOR_SALE",
    "isEbook": false
   },
   "accessInfo": {
    "country": "EG",
    "viewability": "PARTIAL",
    "embeddable": true,
    "publicDomain": false,
    "textToSpeechPermission": "ALLOWED",
    "epub": {
     "isAvailable": false
    },
    "pdf": {
     "isAvailable": false
    },
    "webReaderLink": "http://play.google.com/books/reader?id=OQUrbQ_CoAMC&hl=&printsec=frontcover&source=gbs_api",
    "accessViewStatus": "SAMPLE",
    "quoteSharingAllowed": false
   },
   "searchInfo": {
    "textSnippet": "art, cooking, sewing, \u003cb\u003eflowers\u003c/b\u003e, making roses out of radishes, rearranging furniture, \u003cbr\u003e\nand redecorating the house — anything which they can change or improve by \u003cbr\u003e\nreleasing their creative energy upon it. Love is an attitude to women. It is the \u003cbr\u003e\naccumulation of many little things that makes her feel a part of something \u003cbr\u003e\nimportant and provides a sense of safe belonging. When I have asked women to \u003cbr\u003e\ndescribe the feeling of love, their response is generally, &quot;It&#39;s wanting to give, to do \u003cbr\u003e\nthings for&nbsp;..."
   }
  },
  {
   "kind": "books#volume",
   "id": "TkxNSot3eMEC",
   "etag": "KUTOyExmldA",
   "selfLink": "https://www.googleapis.com/books/v1/volumes/TkxNSot3eMEC",
   "volumeInfo": {
    "title": "Anybody Out There",
    "authors": [
     "Marian Keyes"
    ],
    "publisher": "Penguin UK",
    "publishedDate": "2007-02-08",
    "description": "** Sharply funny and deeply moving, Anybody Out There is the fourth novel in the bestselling Walsh Sisters series and winner of the 2007 Popular Fiction Prize ** Id lost my place in the universe. It had closed up and there was nowhere for me to be. I was more lost than I had known it was possible for any human being to be . . . Anna Walsh is covered in bandages and lying in her parents Good Front Room. Shes dreaming of leaving Dublin and returning to New York. To her home. To her job. And most of all to her husband Aiden. Unfortunately, her family have other ideas. Shes staying put. And Aiden? Well hes refusing to even take her calls. What has pushed Anna so far from everything that she loves? Is she the only one who can put it all right? And if not, who is? A rare blend of genres, a richly enjoyable satire and an inspirational tale of one womans triumph over despair Daily Telegraph Keyes writes brilliantly, as always, about love, grief, jealousy and friendship Daily Mail High quality entertainment Marie Claire",
    "industryIdentifiers": [
     {
      "type": "ISBN_13",
      "identifier": "9780141904757"
     },
     {
      "type": "ISBN_10",
      "identifier": "0141904755"
     }
    ],
    "readingModes": {
     "text": true,
     "image": false
    },
    "pageCount": 624,
    "printType": "BOOK",
    "categories": [
     "Fiction"
    ],
    "averageRating": 4.0,
    "ratingsCount": 36,
    "maturityRating": "NOT_MATURE",
    "allowAnonLogging": true,
    "contentVersion": "1.20.21.0.preview.2",
    "panelizationSummary": {
     "containsEpubBubbles": false,
     "containsImageBubbles": false
    },
    "imageLinks": {
     "smallThumbnail": "http://books.google.com/books/content?id=TkxNSot3eMEC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
     "thumbnail": "http://books.google.com/books/content?id=TkxNSot3eMEC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
    },
    "language": "en",
    "previewLink": "http://books.google.com.eg/books?id=TkxNSot3eMEC&pg=PT258&dq=flowers+inauthor:keyes&hl=&cd=9&source=gbs_api",
    "infoLink": "https://play.google.com/store/books/details?id=TkxNSot3eMEC&source=gbs_api",
    "canonicalVolumeLink": "https://market.android.com/details?id=book-TkxNSot3eMEC"
   },
   "saleInfo": {
    "country": "EG",
    "saleability": "FOR_SALE",
    "isEbook": true,
    "listPrice": {
     "amount": 86.77,
     "currencyCode": "EGP"
    },
    "retailPrice": {
     "amount": 86.77,
     "currencyCode": "EGP"
    },
    "buyLink": "https://play.google.com/store/books/details?id=TkxNSot3eMEC&rdid=book-TkxNSot3eMEC&rdot=1&source=gbs_api",
    "offers": [
     {
      "finskyOfferType": 1,
      "listPrice": {
       "amountInMicros": 8.677E7,
       "currencyCode": "EGP"
      },
      "retailPrice": {
       "amountInMicros": 8.677E7,
       "currencyCode": "EGP"
      }
     }
    ]
   },
   "accessInfo": {
    "country": "EG",
    "viewability": "PARTIAL",
    "embeddable": true,
    "publicDomain": false,
    "textToSpeechPermission": "ALLOWED_FOR_ACCESSIBILITY",
    "epub": {
     "isAvailable": true,
     "acsTokenLink": "http://books.google.com.eg/books/download/Anybody_Out_There-sample-epub.acsm?id=TkxNSot3eMEC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
    },
    "pdf": {
     "isAvailable": false
    },
    "webReaderLink": "http://play.google.com/books/reader?id=TkxNSot3eMEC&hl=&printsec=frontcover&source=gbs_api",
    "accessViewStatus": "SAMPLE",
    "quoteSharingAllowed": false
   },
   "searchInfo": {
    "textSnippet": "Actually, I was still in my work clothes (pink ballerina-style skirt, pink vest, fishnet \u003cbr\u003e\ncut-offs and ballet slippers embroidered with \u003cb\u003eflowers\u003c/b\u003e) but as my work clothes \u003cbr\u003e\nlooked more like party clothes than most people&#39;s party clothes, I decided I&#39;d do. \u003cbr\u003e\nAs the cab moved through the Friday-night traffic, I thought only of Aidan. I&#39;m on \u003cbr\u003e\nmy way to meet you. You&#39;ll be here tonight, you&#39;ll have come straight from work to \u003cbr\u003e\nthe restaurant. You&#39;ll be wearing your blue suit and you&#39;ll have taken off your tie \u003cbr\u003e\nand&nbsp;..."
   }
  },
  {
   "kind": "books#volume",
   "id": "vD83VP8MZvcC",
   "etag": "N8tAbYr2fpU",
   "selfLink": "https://www.googleapis.com/books/v1/volumes/vD83VP8MZvcC",
   "volumeInfo": {
    "title": "Apollo Beyond the Universe",
    "authors": [
     "Chuck Keyes"
    ],
    "publisher": "Larry Larson",
    "publishedDate": "2011-06-01",
    "industryIdentifiers": [
     {
      "type": "ISBN_13",
      "identifier": "9781452493084"
     },
     {
      "type": "ISBN_10",
      "identifier": "1452493081"
     }
    ],
    "readingModes": {
     "text": true,
     "image": true
    },
    "printType": "BOOK",
    "categories": [
     "Fiction"
    ],
    "averageRating": 5.0,
    "ratingsCount": 1,
    "maturityRating": "NOT_MATURE",
    "allowAnonLogging": false,
    "contentVersion": "0.0.2.0.preview.3",
    "panelizationSummary": {
     "containsEpubBubbles": false,
     "containsImageBubbles": false
    },
    "imageLinks": {
     "smallThumbnail": "http://books.google.com/books/content?id=vD83VP8MZvcC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api",
     "thumbnail": "http://books.google.com/books/content?id=vD83VP8MZvcC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"
    },
    "language": "en",
    "previewLink": "http://books.google.com.eg/books?id=vD83VP8MZvcC&pg=PA96&dq=flowers+inauthor:keyes&hl=&cd=10&source=gbs_api",
    "infoLink": "http://books.google.com.eg/books?id=vD83VP8MZvcC&dq=flowers+inauthor:keyes&hl=&source=gbs_api",
    "canonicalVolumeLink": "https://books.google.com/books/about/Apollo_Beyond_the_Universe.html?hl=&id=vD83VP8MZvcC"
   },
   "saleInfo": {
    "country": "EG",
    "saleability": "NOT_FOR_SALE",
    "isEbook": false
   },
   "accessInfo": {
    "country": "EG",
    "viewability": "PARTIAL",
    "embeddable": true,
    "publicDomain": false,
    "textToSpeechPermission": "ALLOWED",
    "epub": {
     "isAvailable": true,
     "acsTokenLink": "http://books.google.com.eg/books/download/Apollo_Beyond_the_Universe-sample-epub.acsm?id=vD83VP8MZvcC&format=epub&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
    },
    "pdf": {
     "isAvailable": true,
     "acsTokenLink": "http://books.google.com.eg/books/download/Apollo_Beyond_the_Universe-sample-pdf.acsm?id=vD83VP8MZvcC&format=pdf&output=acs4_fulfillment_token&dl_type=sample&source=gbs_api"
    },
    "webReaderLink": "http://play.google.com/books/reader?id=vD83VP8MZvcC&hl=&printsec=frontcover&source=gbs_api",
    "accessViewStatus": "SAMPLE",
    "quoteSharingAllowed": false
   },
   "searchInfo": {
    "textSnippet": "I need to find some clues, evidence, pieces to this puzzling puzzle, Morgan \u003cbr\u003e\nthought as he walked through the garden&#39;s multicolored foliage. The sweet smell \u003cbr\u003e\nof all the blooming \u003cb\u003eflowers\u003c/b\u003e was making him nauseous, reminding him of the room \u003cbr\u003e\ndeodorizers Addison likes to buy, and for her enjoyment, he tolerates the awful \u003cbr\u003e\nfragrances. He scanned the ground as he slowly strolled up the grassy knoll. He \u003cbr\u003e\nwas near the top when he noticed a spot just beyond the crest where the tall \u003cbr\u003e\ngrass has&nbsp;..."
   }
  }
 ]
}'
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
