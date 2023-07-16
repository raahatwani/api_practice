import 'dart:convert';

import 'package:http/http.dart' as http;

late http.Response apiRespOne;
late http.Response apiRespTwo;
late http.Response apiRespThree;
late http.Response apiRespFour;

var dataOne;
var dataTwo;
var dataThree;
var dataFour;

String urlOne = 'https://zenquotes.io/api/today';

String urlTwo = 'https://zenquotes.io/api/quotes';

String urlThree = 'https://zenquotes.io/api/random';

String urlFour = 'https://zenquotes.io/api/image ';

getOne() async {
  apiRespOne = await http.get(Uri.parse(urlOne));
  dataOne = jsonDecode(apiRespOne.body);
}

getTwo() async {
  apiRespTwo = await http.get(Uri.parse(urlTwo));
  dataTwo = jsonDecode(apiRespTwo.body);
}

getThree() async {
  apiRespThree = await http.get(Uri.parse(urlThree));
  dataThree = jsonDecode(apiRespThree.body);
}

// getFour() async {}
