import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home:  MyHomePage(title: 'Yemek Tarifi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYukseligi=ekranBilgisi.size.height;
    final double ekranGenisligi=ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
           children: [
           SizedBox(
              width: ekranGenisligi/1,
               child: Image.asset("resimler/baikk.jpg")
           ),
             Padding(
               padding: EdgeInsets.symmetric(horizontal: 16.0),
               child: Row(
                 children: [
                   Expanded(
                     child: SizedBox(
                       height: ekranGenisligi/8,
                       child: TextButton(
                         style: TextButton.styleFrom(
                           foregroundColor: Colors.black,
                           backgroundColor: Colors.orange,
                         ),
                         child: Yazi("Beğen", ekranGenisligi/25),
                         onPressed: (){
                           print("Beğenildi");
                         }
                       ),
                     ),
                   ),
                   SizedBox(width:16),
                   Expanded(
                     child: SizedBox(
                       height: ekranGenisligi/8,
                       child: TextButton(
                         style: TextButton.styleFrom(
                           textStyle: TextStyle(fontSize:60),
                           foregroundColor: Colors.black,
                           backgroundColor: Colors.deepOrange,
                         ),
                         child: Yazi("Yorum Yap",ekranGenisligi/25),
                         onPressed: (){
                           print("Yorum Yapıldı");
                         },
                       ),
                     ),
                   ),
                 ],
               ),
             ),
             Padding(
               padding:EdgeInsets.all(ekranYukseligi/100),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Balık",style:TextStyle(
                     fontSize: ekranGenisligi/15,
                     color: Colors.deepOrange,
                     fontWeight: FontWeight.bold,
                   ),
                   ),
                   Row(
                     children: [
                       Yazi("Izgara Üzerinde Pişrime Uygun", ekranGenisligi/22),
                       Spacer(),
                       Yazi("15 Mayıs", ekranGenisligi/22),

                     ],
                   ),
                 ],
               ),
             ),
             Padding(
               padding: EdgeInsets.all(ekranYukseligi/100),
               child: Yazi("Önce balığı kağıt havlu ile kurulayın. "
                   "Sonrasında bir kap içine tuz, karabiber, zeytinyağı, limon suyundan oluşan bir karışım hazırlayın. "
                   "Balığı bu karışımda biraz dinlendirin ve sonrasında süzerek ızgaraya alın."
                   " Balık böylelikle ızgara tellerine yapışmayacak, hem de daha iyi kızarıp daha lezzetli olacak.Önce balığı kağıt havlu ile kurulayın.Sonrasında bir kap içine tuz, karabiber, zeytinyağı, limon suyundan oluşan bir karışım hazırlayın.Sonrasında bir kap içine tuz, karabiber, zeytinyağı, limon suyundan oluşan bir karışım hazırlayın.Sonrasında bir kap içine tuz, karabiber, zeytinyağı, limon suyundan oluşan bir karışım hazırlayın.",
                   ekranGenisligi/22),
             ),
           ],
        ),
      ),
    );
  }
}
class Yazi extends StatelessWidget {
  String icerik;
  double yaziBoyutu;
 Yazi(this.icerik,this.yaziBoyutu);

  @override
  Widget build(BuildContext context) {
    return Text(icerik,
    style:TextStyle(
    fontSize: yaziBoyutu
   ),
   );
  }
}

