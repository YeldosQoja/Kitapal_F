import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:kitapal/constants/constants.dart';
import 'package:kitapal/json_serialization/main_decoding.dart';
import 'package:http/http.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var data;

  void getMain() async {
    var url = Uri.parse('https://kitapal.kz/api/main');

    Response response = await get(url);

    Map<String, dynamic> decodedResponse = jsonDecode(response.body);

    var main = Main.fromJson(decodedResponse);

    print(main.banner[0].book_image);

    setState(() {
      data = main;
      print(data);
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
    return data == null
        ? Center(
            child: CircularProgressIndicator(
              color: AppColors.primary,
            ),
          )
        : Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 180.0,
                  child: Slider(data: data.banner),
                ),
              ],
            ),
          );
  }
}

class Slider extends StatefulWidget {
  const Slider({
    Key? key,
    required this.data,
  }) : super(key: key);

  final data;

  @override
  _SliderState createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          itemCount: widget.data.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                Image(
                  width: MediaQuery.of(context).size.width,
                  height: double.infinity,
                  image: NetworkImage(widget.data[index].slider_image),
                  fit: BoxFit.cover,
                ),
                Opacity(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: double.infinity,
                    color: AppColors.primary,
                  ),
                  opacity: 0.83,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.data[index].slider_header,
                        style: TextStyles.h2,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        widget.data[index].slider_text,
                        style: TextStyle(
                          color: AppColors.backgroundColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          widget.data[index].button_text,
                          style: TextStyle(
                            color: AppColors.backgroundColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: AppColors.backgroundColor),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
        ),
        ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Container();
          },
        ),
      ],
    );
  }
}
