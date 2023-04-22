class Aircraft {
  // aircraft
  String? callsign = "DLH123";
  String? aircrafttype = "A320";
  String? wtc = "M";
  String? currentSquawk = "2000";

  // flightplan data
  String? origin = "EDDL";
  String? destination = "EDDF";
  String? flightrule = "I";
  String? sid = "COL5T";
  String? assignedSquawk = "1000";
  String? initialClimb = "5000";

  // ground movement:
  String? airportposition = "V02";
  String? currentTaxiway = "M";

  // other:
  String? assignedRunway = "23L";

  Aircraft({
    this.callsign,
    this.aircrafttype,
    this.wtc,
    this.currentSquawk,
    this.origin,
    this.destination,
    this.flightrule,
    this.sid,
    this.assignedSquawk,
    this.initialClimb,
    this.airportposition,
    this.currentTaxiway,
    this.assignedRunway,
  });
}
