import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';

void main() {
  runApp(
      const MaterialApp(
        home: EsoftCard(),
  ));
}

class EsoftCard extends StatefulWidget{
  const EsoftCard({super.key});

  @override
  State<EsoftCard> createState() => _EsoftCardState();
}

class _EsoftCardState extends State<EsoftCard> {

  static const String currentYear = 'Final Year';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.cyan[800],
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page',
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        centerTitle:true,
        backgroundColor: Colors.blue[800],
        elevation: 0.1,
      ),
      body:const Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/id_pic.jpg"),
              radius: 70.0,
              ),
            ),
            Divider( //straight line under the pic
              height:60.0,
              color: Colors.white,
            ),

            Text('Name',
              style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              letterSpacing: 2.0,
            ),),
            SizedBox(height: 10.0,),
            Text(
              'Jane Doe',
              style:TextStyle(
                  color: Colors.yellow,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0,),
            Text(
              'Education Level',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Undergraduate',
              style: TextStyle(
                color: Colors.yellow,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height:30.0,),
            Text(
              'Current Year',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize:18.0,
                ),
              ),
            SizedBox(height:10.0,),
            Text(
              '$currentYear',
                style: TextStyle(
                color: Colors.yellow,
                letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0,),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  color:Colors.white,
                ),
                SizedBox(width:10.0,),
                Text(
                  '+94 77 203 9411',
                  style: TextStyle(
                    fontSize: 18.0,
                    color:Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height:30.0,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color:Colors.white,
                ),
                SizedBox(width:10.0,),
                Text(
                  'nimesh.kasun@edvicon.org',
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        )
      )
    );
  }
}


