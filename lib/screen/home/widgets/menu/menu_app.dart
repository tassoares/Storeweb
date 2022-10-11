import 'package:flutter/material.dart';
import 'package:storeweb/screen/home/widgets/menu/item_menu.dart';
import 'package:storeweb/screen/login/login_screen.dart';

class MenuApp extends StatelessWidget {

  final double top;
  final bool showMenu;

  const MenuApp({ Key? key, required this.top, required this.showMenu }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 100),
        opacity: showMenu ? 1 : 0,
        // ignore: sized_box_for_whitespace
        child: Container(
          //color: Colors.red,
          height: MediaQuery.of(context).size.height * 0.55,
          // ignore: prefer_const_literals_to_create_immutables
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(children: <Widget>[
                /*Image.network(
                    'https://webmobtuts.com/wp-content/uploads/2019/02/QR_code_for_mobile_English_Wikipedia.svg_.png',
                    height: 100,
                    color: Colors.white,
                  ),*/
                const Text.rich(
                    TextSpan(
                      /*text: 'Social Media QR Code',
                      children: [
                        TextSpan(
                            text: 'Social Media QR Code',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],*/
                    ),
                    style: TextStyle(fontSize: 10),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text.rich(
                    TextSpan(
                      //text: 'Menu',
                      children: [
                        TextSpan(
                            text: 'Menu',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    style: TextStyle(fontSize: 16),
                  ),
                  /*const SizedBox(
                    height: 5,
                  ),
                  const Text.rich(
                    TextSpan(
                      //text: 'Conta ',
                      children: [
                        TextSpan(
                            text: 'Meus pedidos',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'Notificações',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    style: TextStyle(fontSize: 16),
                  ),*/
                  const SizedBox(
                    height: 25,
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column (children: <Widget>[
                       
                        const ItemMenu(icon: Icons.person, text: 'Perfil',),
                        const ItemMenu(icon: Icons.settings, text: 'Configurações',),
                        const ItemMenu(icon: Icons.credit_card, text: 'Formas de pagamento',),
                        const ItemMenu(icon: Icons.notifications, text: 'Notificações',),
                        const ItemMenu(icon: Icons.shopping_bag, text: 'Meus Pedidos',),
                        const ItemMenu(icon: Icons.info_outline, text: 'Ajuda e Feedback',),
          
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.7, color: Colors.black38)),
                          child: RaisedButton(
                            color: Colors.grey[100],
                            highlightColor: Colors.transparent,
                            elevation: 0,
                            disabledElevation: 0,
                            focusElevation: 0,
                            highlightElevation: 0,
                            hoverElevation: 0,
                            splashColor: Colors.black38,
                            child: const Text(
                              'SAIR DO APP',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),),);
                            },
                          ),),
                        ],
                      ),
                    ),
                  ),  
            ],),
          ),
        ),
      ),
    );
  }
}