import 'package:flutter/material.dart';
//import 'package:storeweb/screen/home/widgets/bottom_menu.dart';
import 'package:storeweb/screen/home/widgets/menu/menu_app.dart';
import 'package:storeweb/screen/home/widgets/my_app_bar.dart';
import 'package:storeweb/screen/home/widgets/page_view/my_dots_app.dart';
import 'package:storeweb/screen/home/widgets/page_view/page_view_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  late bool _showMenu;
  late int _currentIndex;
  double _yPosition = 0;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;
    // ignore: prefer_conditional_assignment, unnecessary_null_comparison
    if(_yPosition == null) {
      _yPosition = _screenHeigth * .24;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: (){
              setState(() {
                _showMenu = !_showMenu;
                 _yPosition =
                    _showMenu ? _screenHeigth * .75 : _screenHeigth * .24;
              });
            },
          ),
          MenuApp(
            top: _screenHeigth * .20,
            showMenu: _showMenu,
          ),
          /*BottomMenu(
            showMenu: _showMenu,
          ),*/
          MyDotsApp(
            showMenu: _showMenu,
            top: _screenHeigth * .70,
            currentIndex: _currentIndex,
          ),
          PageViewApp(
            showMenu: _showMenu,
            top: _yPosition, //!_showMenu ? _screenHeigth * .24 : _screenHeigth * .75,
            onChanged: (index){
              setState(() {
                _currentIndex = index;
              });
            }, onPanUpdate: (details) {
                double positionBottomLimit = _screenHeigth * .75;
                double positionTopLimit = _screenHeigth * .24;
                double midlePosition = positionBottomLimit - positionTopLimit;
                midlePosition = midlePosition / 2;
                
                setState(() {
                  
                    _yPosition += details.delta.dy;
                  
                  _yPosition = _yPosition < positionTopLimit 
                    ? positionTopLimit 
                    : _yPosition;

                  _yPosition = _yPosition > positionBottomLimit
                    ? positionBottomLimit 
                    : _yPosition;

                  if (_yPosition != positionBottomLimit && details.delta.dy > 0) {
                  _yPosition =
                      _yPosition > positionTopLimit + midlePosition - 50
                          ? positionBottomLimit
                          : _yPosition;
                }

                if (_yPosition != positionTopLimit && details.delta.dy < 0) {
                  _yPosition = _yPosition < positionBottomLimit - midlePosition
                      ? positionTopLimit
                      : _yPosition;
                }

                if (_yPosition == positionBottomLimit) {
                  _showMenu = true;
                } else if (_yPosition == positionTopLimit) {
                  _showMenu = false;
                }    
                });
             },
          ),     
        ],
      ),
    );
  }
}

