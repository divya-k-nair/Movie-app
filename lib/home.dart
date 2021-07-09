import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/details.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: RaisedButton(
                color: Colors.redAccent,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));

              },
                child: Text("MOVIE",
                  style: TextStyle(
                    color: Colors.black,
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
