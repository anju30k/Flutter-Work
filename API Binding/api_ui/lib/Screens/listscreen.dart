class ListscreenDemo {
  static Map<int, String> idToImage = {
    1: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpxTQNSMQ9KQQftCOmvWwb-oGauAQfwDD6xA&s",
    2: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSlIyjiZClIu_PaJak6qc2jF-QA02k1EM4ZA&s",
    3: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfwuTiFsjbPl1VXcBjww0R5tcR5fSIrQbr1A&s",
    4: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIKp4yR1ZmOzqYYStMtaAa6KaTqLRL1b73HA&s",
    5: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLaI6K9OZqMkqJ2-J0RtMtdr2hlqQJwCDU6A&s",
    6: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_1-RpWgSwN_rhLUssWbwVwzSJJDUR9NMqeQ&s",
    7: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgNkJ8VY8aCh55giYFrIXK3s_aWC6JGj4Ucg&s",
    8: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEFoj6UyqR9GAhUXZ2kQzl-szDf4ab3jEOpA&s",
    9: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaKO5nAd45JgcDlA5Xyw9_rKrJYpdyKoh3-A&s",
    10: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhdqqiRyZZfGJsz2xx1qlEs8HdhTDQEyvFvA&s",
    11: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN98ZOp61h3Ku_AMqUQSY87ptSFbMqJEbKVg&s",
    12: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR95UqUt88k-N8aLtZySdRIyq_qmMAG1hFWjg&s",
    13: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSewRSFCc9LGVcI6Huy4V5QRbQtNnmjYY23aw&s"
  };
  static String fetchImageById(int id) {
    return idToImage[id] ?? "";
  }
 
}
