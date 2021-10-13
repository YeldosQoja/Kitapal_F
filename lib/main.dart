import 'package:flutter/material.dart';
import 'package:kitapal/constants/constants.dart';
import 'package:kitapal/screens/basket.dart';
import 'package:kitapal/screens/catalog.dart';
import 'package:kitapal/screens/home.dart';
import 'package:kitapal/screens/mybooks.dart';
import 'package:kitapal/screens/profile.dart';
import 'package:kitapal/widgets/header.dart';
// import 'package:flutter_svg_provider/flutter_svg_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kitapal',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        accentColor: AppColors.secondary,
        textTheme: TextTheme(
            bodyText1: TextStyles.h1,
            bodyText2: TextStyles.h2,
            button: TextStyles.buttonText),
        buttonTheme: ButtonThemeData(
          buttonColor: AppColors.primary,
          textTheme: ButtonTextTheme.primary,
        ),
        fontFamily: 'SF Pro Display',
      ),
      home: BottomBar(),
      debugShowCheckedModeBanner: false,
      routes: {},
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _active_index = 0;

  List<Widget> screens = [
    MainPage(),
    Catalog(),
    MyBooks(),
    Basket(),
    Profile(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _active_index = index;
    });
  }

  Color getIconColor(int index) =>
      index == _active_index ? AppColors.primary : AppColors.secondary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Header(
      //   headerType: 3,
      //   leading: GestureDetector(
      //     onTap: () {
      //       print('You pressed menu!');
      //     },
      //     child: Icon(
      //       Icons.menu,
      //       color: Colors.black,
      //     ),
      //   ),
      //   title: Text("Home"),
      //   ending: GestureDetector(
      //     onTap: () {
      //       print('You pressed search!');
      //     },
      //     child: SvgPicture.asset(
      //       AppAssets.searchIcon,
      //       color: AppColors.text2,
      //     ),
      //   ),
      // ),
      body: screens[_active_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm_rounded),
            label: 'Profile',
          ),
        ],
        currentIndex: _active_index,
        selectedLabelStyle: TextStyle(),
        unselectedLabelStyle: TextStyle(),
        onTap: onItemTapped,
      ),
    );
  }
}


// [
//           BottomNavigationBarItem(
//             icon: Image(
//               image: Svg(
//                 AppAssets.main,
//                 color: getIconColor(0),
//                 size: Size(22, 22),
//               ),
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Image(
//               image: Svg(
//                 AppAssets.catalog,
//                 color: getIconColor(1),
//                 size: Size(22, 22),
//               ),
//             ),
//             label: 'Catalog',
//           ),
//           BottomNavigationBarItem(
//             icon: Image(
//               image: Svg(
//                 AppAssets.myBooks,
//                 color: getIconColor(2),
//                 size: Size(22, 22),
//               ),
//             ),
//             label: 'My books',
//           ),
//           BottomNavigationBarItem(
//             icon: Image(
//               image: Svg(
//                 AppAssets.basket,
//                 color: getIconColor(3),
//                 size: Size(22, 22),
//               ),
//             ),
//             label: 'Basket',
//           ),
//           BottomNavigationBarItem(
//             icon: Image(
//               image: Svg(
//                 AppAssets.profile,
//                 color: getIconColor(4),
//                 size: Size(22, 22),
//               ),
//             ),
//             label: 'Profile',
//           ),
//         ]