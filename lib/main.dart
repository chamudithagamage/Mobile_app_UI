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



            SizedBox(height: 10.0,),
            Text(
              'Jane Doe',
              style:TextStyle(
                fontFamily: 'Times New Roman',
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10.0,),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontFamily: 'Poppins',

                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Divider( //straight line under the pic
              height:20.0,
              indent: 40.0,
              endIndent: 40.0,
              color: Colors.white,
              thickness: 1,
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
                  '+94 76 145 8744',
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
                  'jane.doe@esoft.org',
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


