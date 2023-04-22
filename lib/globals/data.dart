import '../models/AircraftClass.dart';

// Test data to display while connection to backend / Euroscope is still not done

List<Aircraft> Aircrafts = [
  Aircraft(
      callsign: 'DLH123',
      aircrafttype: 'A320',
      airportposition: "V02",
      assignedRunway: "25C",
      assignedSquawk: "1000",
      currentSquawk: "2000",
      currentTaxiway: "M",
      destination: "EDDF",
      origin: "EDDL",
      flightrule: "I",
      initialClimb: "5000",
      sid: "COL5T",
      wtc: "M"),
  Aircraft(
      callsign: 'DLH124',
      aircrafttype: 'B748',
      airportposition: "V02",
      assignedRunway: "25C",
      assignedSquawk: "1000",
      currentSquawk: "2000",
      currentTaxiway: "H",
      destination: "EDDF",
      origin: "EDDL",
      flightrule: "I",
      initialClimb: "5000",
      sid: "COL5T",
      wtc: "H"),
  Aircraft(
      callsign: 'DLH125',
      aircrafttype: 'B77L',
      airportposition: "V02",
      assignedRunway: "25C",
      assignedSquawk: "1000",
      currentSquawk: "2000",
      currentTaxiway: "M",
      destination: "EDDF",
      origin: "EDDL",
      flightrule: "I",
      initialClimb: "5000",
      sid: "COL5T",
      wtc: "H"),
];
