import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // name for UI
  String time = ""; // time at that location
  String flag; // flag of the country
  String endpoint; // url location for API endpoint

  WorldTime({required this.location, required this.flag, required this.endpoint});

  Future<void> getTime() async {
    try{
      Uri url = Uri.parse('http://worldtimeapi.org/api/timezone/$endpoint');
      Response response = await get(url);
      Map data = jsonDecode(response.body);

      // Get properties from data
      String datetime = data['datetime'];
      String offset1 = data['utc_offset'].substring(1, 3);

      // Create a DateTime object
      DateTime now = DateTime.parse(datetime);

      now = now.add(Duration(hours: int.parse(offset1))); // Convert the string to int
      // Set the time property
      time = DateFormat.jm().format(now);
    }
    catch(e){
      print('caught error $e');
      time = 'could not get time data';
    }

  }
}


