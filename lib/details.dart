import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Details extends StatelessWidget {
  TextEditingController mname=TextEditingController();
  TextEditingController mact=TextEditingController();
  TextEditingController mactr=TextEditingController();
  TextEditingController mdir=TextEditingController();
  TextEditingController mcam=TextEditingController();
  TextEditingController mpro=TextEditingController();
  TextEditingController mart=TextEditingController();
  TextEditingController medi=TextEditingController();
  TextEditingController myor=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextField(
              controller: mname,
              decoration: InputDecoration(
                prefix: CircularProgressIndicator(),
                prefixIcon: Icon(Icons.airplay,color: Colors.green,size: 40,),
                labelText: "Movie name",
                hintText: "Movie name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: mact,
              decoration: InputDecoration(
                prefix: CircularProgressIndicator(),
                prefixIcon: Icon(Icons.account_box_sharp,color: Colors.limeAccent,size: 40,),
                labelText: "Actor",
                hintText: "Actor",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: mactr,
              decoration:InputDecoration(
                prefix: CircularProgressIndicator(),
                prefixIcon: Icon(Icons.account_circle_outlined,color: Colors.greenAccent,size: 40,),
                labelText: "Actress",
                hintText: "Actress",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ) ,
            ),
            SizedBox(height: 10,),
            TextField(
              controller: mdir,
              decoration: InputDecoration(
                  prefix: CircularProgressIndicator(),
                  prefixIcon: Icon(Icons.assignment,color: Colors.brown,size: 40,),
                  labelText: "Director",
                  hintText: "Director",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: mcam,
              decoration: InputDecoration(
                  prefix: CircularProgressIndicator(),
                  prefixIcon: Icon(Icons.add_a_photo_sharp,color: Colors.lime,size: 40,),
                  labelText: "Camera",
                  hintText: "Camera",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: mpro,
              decoration: InputDecoration(
                prefix: CircularProgressIndicator(),
                prefixIcon: Icon(Icons.admin_panel_settings_outlined,color: Colors.pink,size: 40,),
                labelText: "Producer",
                hintText: "Producer",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                ),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: mart,
              decoration: InputDecoration(
                prefix: CircularProgressIndicator(),
                prefixIcon: Icon(Icons.add_a_photo,color: Colors.red,size: 40,),
                labelText: "Art director",
                hintText: "Art director",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: medi,
              decoration: InputDecoration(
                prefix: CircularProgressIndicator(),
                prefixIcon: Icon(Icons.adjust,color: Colors.lime,size: 40,),
                labelText: "Editor",
                hintText: "Editor",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: myor,
              decoration: InputDecoration(
                prefix: CircularProgressIndicator(),
                prefixIcon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.indigo,size: 40,),
                labelText: "Year of release",
                hintText: "Year of release",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child:  RaisedButton(
                color: Colors.pinkAccent,
                onPressed: (){
                  var getMoviename=mname.text;
                  var getActor=mact.text;
                  var getActress=mactr.text;
                  var getDirector=mdir.text;
                  var getCamera=mcam.text;
                  var getProducer=mpro.text;
                  var getArtdirector=mdir.text;
                  var getEditor=medi.text;
                  var getYearofrelease=myor.text;
                  print(getMoviename);
                  print(getActor);
                  print(getActress);
                  print(getDirector);
                  print(getCamera);
                  print(getProducer);
                  print(getArtdirector);
                  print(getEditor);
                  print(getYearofrelease);

                  print("hello");

                },
                child: Text("SUBMIT",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],//children
        ),
      ),
    );
  }
}
