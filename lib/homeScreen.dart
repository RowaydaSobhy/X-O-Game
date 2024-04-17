import 'package:flutter/material.dart';

class home extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(),
              Container(
                width: 200,
                height: 200,
                padding: EdgeInsetsDirectional.only(top: 30.0),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),color: Colors.black,)
                ,child: Text(
                  "XO GAME",

                  textAlign: TextAlign.center, //
                  style: TextStyle(
                    color: Colors.grey,fontSize: 50,
                  ),
                ),
              ),
                SizedBox(height: 30,),
                Text("Design by"
               , style: TextStyle(color: Colors.black,)
        ),
              SizedBox(height: 10,),
                  Text("ROWAYDA SOBHY."
                 , style: TextStyle(fontWeight: FontWeight.bold,))

          ,SizedBox(height: 50,),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    onPressed: () {
                      },
                    child: Text("play"
                     ,style: TextStyle( color: Colors.grey,)
                      ))
                  ])
            ,
        )
          );
    
  }
}
