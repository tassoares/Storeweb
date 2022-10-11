import 'package:flutter/material.dart';
import 'package:storeweb/screen/home/home_page.dart';

class LoginScreen extends StatelessWidget {
  //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

   const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 24, 
            bottom: 32, 
            left: 16, 
            right: 16,
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("images/image.png", height: 100,),
                /*Flexible(
                  flex: 100,
                  child: Image.network('https://cdn-icons-png.flaticon.com/512/2649/2649383.png',
                  height: 100,
                  ),
                ),*/
                const SizedBox(
                  height: 16,
                ),
                const Text("Store Web", style: TextStyle(
                  color: Colors.black, 
                  fontSize: 24, 
                  fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 24,
                ),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      left: 8.0, 
                      right: 8.0, 
                      bottom: 8.0,
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .85,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            obscureText: false, 
                            decoration: InputDecoration(
                            hintText: 'E-mail',
                            labelStyle: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 1, 
                                color: Colors.grey),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: const OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  width: 1.5,
                                  color: Colors.black,
                                ),),),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .85,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            obscureText: false, 
                            decoration: InputDecoration(
                            hintText: 'Senha',
                            labelStyle: const TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 1, 
                                color: Colors.grey),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: const OutlineInputBorder(
                            // borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  width: 1.5,
                                  color: Colors.black,
                                ),),),
                          ),
                        ),
                       /* TextFormField(
                          keyboardType: TextInputType.emailAddress, 
                          decoration: const InputDecoration(
                          hintText: 'Senha',
                          ),
                        ),*/
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .82,
                          child: ElevatedButton(
                            onPressed: () async {
                              /*if (_formKey.currentState!.validate()){
                                _formKey.currentState!.save();
                              }*/
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => const HomePage (),
                                ),
                              );
                            }, 
                            child: const Text('Entrar'),
                          ),
                        ),
                        /*ElevatedButton(
                          onPressed: (){}, 
                          child: const Text('Registrar-se'),
                        ),*/
                          ],
                        ),
                        Row(
                          
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}