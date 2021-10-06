import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:kitapal/constants/constants.dart';
import 'package:kitapal/widgets/header.dart';
import 'package:http/http.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.name}) : super(key: key);

  final String name;

  final String surname = "sdnfjinsid";

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var data;

  void getMain() async {
    var url = Uri.parse('https://kitapal.kz/api/main');

    Response response = await get(url);

    Map<String, dynamic> decodedResponse = jsonDecode(response.body);

    print(decodedResponse['banner'].length);

    setState(() {
      data = decodedResponse;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMain();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: renderAppBar(),
      body: data == null
          ? Center(
              child: CircularProgressIndicator(
                color: AppColors.primary,
              ),
            )
          : Slider(data: data),
    );
  }

  Header renderAppBar() {
    return Header(
      leading: GestureDetector(
          onTap: () {
            print('You pressed menu!');
          },
          child: AppAssets.menuIcon),
      title: AppAssets.homeHeaderLogo,
      ending: GestureDetector(
          onTap: () {
            print('You pressed search!');
          },
          child: AppAssets.searchIcon),
      headerType: 3,
    );
  }
}

class Slider extends StatelessWidget {
  const Slider({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Map data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data['banner'].length,
      itemBuilder: (BuildContext context, int index) {
        return Image(
          width: double.infinity,
          height: 170.0,
          image: NetworkImage(data['banner'][index]['slider_image']),
        );
      },
      scrollDirection: Axis.vertical,
    );
  }
}


// ListView.builder(
//       itemBuilder: (BuildContext context, int index) {
//         return Image(
//           width: double.infinity,
//           height: 170.0,
//           image: NetworkImage(data['banner'][index]['slider_image']),
//         );
//       },
//       itemCount: data['banner'].length,
//       scrollDirection: Axis.horizontal,
//     );