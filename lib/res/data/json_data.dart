List<Map<String, dynamic>> ticketList = [
  {
    'from': {'code': 'CGK', 'name': 'Jakarta'},
    'to': {'code': 'DPS', 'name': 'Bali'},
    'flying_time': '1H 50M',
    'date': '10 Feb',
    'departure_time': '07:30 AM',
    'number': '101'
  },
  {
    'from': {'code': 'DPS', 'name': 'Bali'},
    'to': {'code': 'SUB', 'name': 'Surabaya'},
    'flying_time': '1H 5M',
    'date': '12 Feb',
    'departure_time': '09:45 AM',
    'number': '102'
  },
  {
    'from': {'code': 'SUB', 'name': 'Surabaya'},
    'to': {'code': 'UPG', 'name': 'Makassar'},
    'flying_time': '2H 15M',
    'date': '15 Feb',
    'departure_time': '11:00 AM',
    'number': '103'
  },
  {
    'from': {'code': 'UPG', 'name': 'Makassar'},
    'to': {'code': 'PKU', 'name': 'Pekanbaru'},
    'flying_time': '2H 35M',
    'date': '18 Feb',
    'departure_time': '02:15 PM',
    'number': '104'
  },
  {
    'from': {'code': 'PKU', 'name': 'Pekanbaru'},
    'to': {'code': 'PLM', 'name': 'Palembang'},
    'flying_time': '1H 20M',
    'date': '21 Feb',
    'departure_time': '04:50 PM',
    'number': '105'
  },
  {
    'from': {'code': 'PLM', 'name': 'Palembang'},
    'to': {'code': 'PDG', 'name': 'Padang'},
    'flying_time': '1H 10M',
    'date': '24 Feb',
    'departure_time': '06:10 AM',
    'number': '106'
  },
  {
    'from': {'code': 'PDG', 'name': 'Padang'},
    'to': {'code': 'SRG', 'name': 'Semarang'},
    'flying_time': '1H 40M',
    'date': '27 Feb',
    'departure_time': '08:30 AM',
    'number': '107'
  },
  {
    'from': {'code': 'SRG', 'name': 'Semarang'},
    'to': {'code': 'YIA', 'name': 'Yogyakarta'},
    'flying_time': '45M',
    'date': '2 Mar',
    'departure_time': '10:00 AM',
    'number': '108'
  },
  {
    'from': {'code': 'YIA', 'name': 'Yogyakarta'},
    'to': {'code': 'BPN', 'name': 'Balikpapan'},
    'flying_time': '2H 5M',
    'date': '5 Mar',
    'departure_time': '12:15 PM',
    'number': '109'
  },
  {
    'from': {'code': 'BPN', 'name': 'Balikpapan'},
    'to': {'code': 'LOP', 'name': 'Lombok'},
    'flying_time': '2H 10M',
    'date': '8 Mar',
    'departure_time': '03:30 PM',
    'number': '110'
  },
  {
    'from': {'code': 'LOP', 'name': 'Lombok'},
    'to': {'code': 'BTJ', 'name': 'Banda Aceh'},
    'flying_time': '3H 45M',
    'date': '11 Mar',
    'departure_time': '06:20 AM',
    'number': '111'
  },
  {
    'from': {'code': 'BTJ', 'name': 'Banda Aceh'},
    'to': {'code': 'SOC', 'name': 'Solo'},
    'flying_time': '2H 55M',
    'date': '14 Mar',
    'departure_time': '09:00 AM',
    'number': '112'
  },
  {
    'from': {'code': 'SOC', 'name': 'Solo'},
    'to': {'code': 'PNK', 'name': 'Pontianak'},
    'flying_time': '2H 20M',
    'date': '17 Mar',
    'departure_time': '11:30 AM',
    'number': '113'
  },
  {
    'from': {'code': 'PNK', 'name': 'Pontianak'},
    'to': {'code': 'AMI', 'name': 'Mataram'},
    'flying_time': '3H 10M',
    'date': '20 Mar',
    'departure_time': '02:45 PM',
    'number': '114'
  },
  {
    'from': {'code': 'AMI', 'name': 'Mataram'},
    'to': {'code': 'GTO', 'name': 'Gorontalo'},
    'flying_time': '3H 30M',
    'date': '23 Mar',
    'departure_time': '05:15 PM',
    'number': '115'
  },
  {
    'from': {'code': 'GTO', 'name': 'Gorontalo'},
    'to': {'code': 'TTE', 'name': 'Ternate'},
    'flying_time': '1H 15M',
    'date': '26 Mar',
    'departure_time': '07:50 AM',
    'number': '116'
  },
  {
    'from': {'code': 'TTE', 'name': 'Ternate'},
    'to': {'code': 'LUW', 'name': 'Luwuk'},
    'flying_time': '1H 40M',
    'date': '29 Mar',
    'departure_time': '10:10 AM',
    'number': '117'
  },
  {
    'from': {'code': 'LUW', 'name': 'Luwuk'},
    'to': {'code': 'MDC', 'name': 'Manado'},
    'flying_time': '1H 20M',
    'date': '1 Apr',
    'departure_time': '12:30 PM',
    'number': '118'
  },
  {
    'from': {'code': 'MDC', 'name': 'Manado'},
    'to': {'code': 'JOG', 'name': 'Yogyakarta'},
    'flying_time': '2H 40M',
    'date': '4 Apr',
    'departure_time': '03:45 PM',
    'number': '119'
  },
  {
    'from': {'code': 'JOG', 'name': 'Yogyakarta'},
    'to': {'code': 'CGK', 'name': 'Jakarta'},
    'flying_time': '1H 10M',
    'date': '7 Apr',
    'departure_time': '06:00 PM',
    'number': '120'
  }
];

List<Map<String, dynamic>> hotelList = [
  {
    "image": "hotel1.png",
    "place": "Luxury Suite",
    "location": "Bali",
    "price": 1500000
  },
  {
    "image": "hotel2.png",
    "place": "Beach Resort",
    "location": "Lombok",
    "price": 1200000
  },
  {
    "image": "hotel3.png",
    "place": "Mountain Lodge",
    "location": "Bandung",
    "price": 900000
  },
  {
    "image": "hotel4.png",
    "place": "City Hotel",
    "location": "Jakarta",
    "price": 750000
  },
  {
    "image": "hotel5.png",
    "place": "Lakeview Resort",
    "location": "Lake Toba",
    "price": 1100000
  }
];
