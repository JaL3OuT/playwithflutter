
import 'package:flutter/material.dart';

import 'dice_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: ProfileWidget(),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.orangeAccent,
          icon: Icon(Icons.games),
          label: Text("Play a Game "),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>DicePage()));

          },

        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avatar = CircleAvatar(
      backgroundImage: AssetImage("images/me.jpg")
    ,radius: 60,);

    final devName = Text (
      "Flen Ben Flen " ,
      style :
        TextStyle(color : Colors.black , fontSize: 25 , fontFamily:"Pacifico") ,
    ) ;

    final emailCard = Card (
      margin: EdgeInsets.all(16),
      child: ListTile(
        leading: Icon (
          (Icons.email) ,
        color :Colors.orangeAccent,
        )
       ,title: Text("mail.mail@test.com"),
      )
    );
    final phonecard = Card(
      margin: EdgeInsets.all(16),
      child: ListTile(
       leading: Icon (
         Icons.phone , color: Colors.orangeAccent,
       ),
        title: Text ("0000000000"),
       ),

      );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
         avatar ,
        devName,
        emailCard,
        phonecard
      ],
    );
  }
}
