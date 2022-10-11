import 'package:flutter/material.dart';
import 'package:storeweb/screen/home/widgets/cards/card_app.dart';
import 'package:storeweb/screen/home/widgets/cards/first_card.dart';
import 'package:storeweb/screen/home/widgets/cards/second_card.dart';
import 'package:storeweb/screen/home/widgets/cards/third_card.dart';


class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  const PageViewApp({ Key? key, 
    required this.top, 
    required this.onChanged, 
    required this.onPanUpdate, 
    required this.showMenu }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeOut,
            top: top,
            height: MediaQuery.of(context).size.height * .45,
            left: 0,
            right: 0,
            //width:  MediaQuery.of(context).size.width,
              child: GestureDetector(
                onPanUpdate: onPanUpdate,
                child: PageView(
                  onPageChanged: onChanged,
                  physics: showMenu ? const NeverScrollableScrollPhysics() : const BouncingScrollPhysics(),
                  children: const <Widget>[
                    CardApp(child: FirstCard(),),
                    CardApp(child: SecondCard(),),
                    CardApp(child: ThirdCard(),),
                  ],
                ),
              ),
            );
  }
}