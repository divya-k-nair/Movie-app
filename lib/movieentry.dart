import 'package:flutter/material.dart';

class Movieentry extends StatefulWidget {

  @override
  _MovieentryState createState() => _MovieentryState();
}

class _MovieentryState extends State<Movieentry> {
  TextEditingController name=TextEditingController();
  TextEditingController dir=TextEditingController();
  TextEditingController act=TextEditingController();
  TextEditingController actr=TextEditingController();
  TextEditingController pro=TextEditingController();
  List mname=[];
  List mdir=[];
  List mact=[];
  List mactr=[];
  List mpro=[];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(
          title: Text("MOVIE LIST"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 5,),
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.movie,color: Colors.pinkAccent,size: 25,),
                    labelText: "Movie name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                ),
                TextField(
                  controller: dir,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_box,color: Colors.pinkAccent,size: 25,),
                      labelText: "Director",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
                TextField(
                  controller: act,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.recent_actors,color: Colors.pinkAccent,size: 25,),
                      labelText: "Actor",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
                TextField(
                  controller: actr,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.recent_actors,color: Colors.pinkAccent,size: 25,),
                      labelText: "Actress",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
                TextField(
                  controller: pro,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.recent_actors,color: Colors.pinkAccent,size: 25,),
                      labelText: "Producer",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.pinkAccent,
                    onPressed: (){
                      var getName=name.text;
                      var getDire=dir.text;
                      var getActor=act.text;
                      var getActress=actr.text;
                      var getProd=pro.text;
                      print(getName);
                      print(getDire);
                      print(getActor);
                      print(getActress);
                      print(getProd);
                      setState(() {
                        mname.add(getName);
                        mdir.add(getDire);
                        mact.add(getActor);
                        mactr.add(getActress);
                        mpro.add(getProd);
                      });

                  },
                    child: Text("ADD",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                  ),

                ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                    itemCount: mname.length==null?0:mname.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.white,
                        child: ListTile(
                          leading: Icon(Icons.movie,color: Colors.deepOrange,size: 25,),
                          trailing: GestureDetector(
                            onTap: (){
                              print("Delete clicked"+index.toString());
                              setState(() {
                                mname.removeAt(index);
                                mdir.removeAt(index);
                                mact.removeAt(index);
                                mactr.removeAt(index);
                                mpro.removeAt(index);
                              });
                            },
                              child: Icon(Icons.delete,color: Colors.deepOrange,size: 25,)),
                          title: Text(mname[index]),
                          subtitle: Text("Director:"+mdir[index]+"\n"+"Actor:"+mact[index]+"\n"+"Actress:"+mactr[index]+"\n"+"Producer:"+mpro[index]),
                          
                        ),
                      );
                    },)

              ],//children
            ),
          ),
        ),
      ),

    );
  }
}

