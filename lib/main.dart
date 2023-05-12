import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cronometro App',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor:const Color.fromRGBO(101, 45, 221, 1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/236x/e9/57/2a/e9572a70726980ed5445c02e1058760b.jpg'),
                radius: 100,
              ),
              CustomButton(
                title:'Facebook',
                icons: const Icon(Icons.facebook),
                onPressed: (){
                  final uri = Uri.parse('https://web.facebook.com');
                  launchUrl(uri);
                  
                },
              ),
              CustomButton(
                title:'WhatsApp',
                icons: const Icon(Icons.whatshot),
                onPressed: (){
                  final uri = Uri.parse('https://web.whatsapp.com/');
                  launchUrl(uri);
                },
              ),
              CustomButton(
                title:'LinkedIn',
                icons: const Icon(Icons.phone),
                onPressed: (){
                  final uri = Uri.parse('https://mx.linkedin.com/');
                  launchUrl(uri);
                },
              ),
              CustomButton(
                title: 'GitHub', 
                icons: const Icon(Icons.gite_sharp),
                onPressed: () {
                  final uri = Uri.parse('https://github.com');
                  launchUrl(uri);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
   final String title;
  final VoidCallback? onPressed;
  final Icon icons;

  const CustomButton({
    required this.title,
    required this.icons,
    required this.onPressed,
    super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16.0
      ),
      child: SizedBox(
        width: 200,
        child: ElevatedButton.icon(
          icon: icons,
          style: ElevatedButton.styleFrom(
            backgroundColor:const Color.fromRGBO(101, 45, 221, 1),
            foregroundColor: Colors.white,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side:const BorderSide(
                color: Colors.white,
                width: 2.0,
                style: BorderStyle.solid,
              )
            )
          ),
          onPressed: onPressed,
          label:Text(title,
          style:const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontFamily: 'Roboto',
            color: Colors.white
          ),
          ),
        )
      ));
  }
  
}
