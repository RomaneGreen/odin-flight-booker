Airport.create(code: 'JFK-New York City')
Airport.create(code: 'POP-PuertaPlata,DR')
Airport.create(code: 'MDE-Medellin,Columbia')
Airport.create(code: 'GIG-Rio de janiero')
Airport.create(code: 'CRK-Angeles City,Phillipines')

Flight.create(airport_id:1,flight_date:10.days.from_now,flight_duration:"2 hours")
Flight.create(airport_id:2,flight_date:20.days.from_now,flight_duration:"3 hours")
Flight.create(airport_id:3,flight_date:30.days.from_now,flight_duration:"4 hours")
