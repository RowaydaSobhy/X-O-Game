import 'package:flutter/material.dart';

class game extends StatefulWidget {
  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {
  String X = '';
  int xScore = 0;
  int oScore = 0;
  List click = ["", "", "", "", "", "", "", "", ""];
  bool isXTurn = true;
  int press = 0;
  winner() {
    if (click[0] == click[1] && click[1] == click[2] && click[0] != "") {
      click = ['', '', '', '', '', '', '', '', ''];
      isXTurn ? xScore++ : oScore++;
      press = 0;
    }else if(click[3] == click[4] && click[4] == click[5] && click[3] != ""){
      click = ['', '', '', '', '', '', '', '', ''];
      isXTurn ? xScore++ : oScore++;
      press = 0;
    }else if(click[6] == click[7] && click[7] == click[8] && click[6] != ""){
      click = ['', '', '', '', '', '', '', '', ''];
      isXTurn ? xScore++ : oScore++;
      press = 0;
    }else if(click[0] == click[4] && click[4] == click[8] && click[8] != ""){
      click = ['', '', '', '', '', '', '', '', ''];
      isXTurn ? xScore++ : oScore++;
      press = 0;
    }else if(click[2] == click[4] && click[4] == click[6] && click[2] != ""){
      click = ['', '', '', '', '', '', '', '', ''];
      isXTurn ? xScore++ : oScore++;
      press = 0;
    }else if(click[0] == click[3] && click[3] == click[6] && click[0] != ""){
      click = ['', '', '', '', '', '', '', '', ''];
      isXTurn ? xScore++ : oScore++;
      press = 0;
    }else if(click[1] == click[4] && click[4] == click[7] && click[4] != ""){
      click = ['', '', '', '', '', '', '', '', ''];
      isXTurn ? xScore++ : oScore++;
      press = 0;
    }else if(click[2] == click[5] && click[5] == click[8] && click[2] != ""){
      click = ['', '', '', '', '', '', '', '', ''];
      isXTurn ? xScore++ : oScore++;
      press = 0;
    }
    else if(press == 9){
      click = ['', '', '', '', '', '', '', '', ''];
      press = 0;
    }
    print(press);
  }
  write(int index ){
    if(click[index]=="") {
      press++;
      click [index] = isXTurn ? "X" : "O";
      isXTurn = !isXTurn;
    }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "player1 \n $xScore",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                Expanded(
                  child: Text(
                    "player2\n $oScore",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    //دا لو عاوزاه يعمل كليك
                    onTap: () {
                      write(0);
                      winner();
                      setState(() {});
                    },

                    child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(click[0],
                          style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold,)

                      ),
                    ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      write(1);
                      winner();
                      setState(() {});
                    },
                    child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(click[1],
                          style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold,)
                      ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      write(2);
                      winner();
                      setState(() {});
                    },


                    child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(click[2],
                          style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold,)
                       ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      write(3);
                      winner();
                      setState(() {});
                    },

                    child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(click[3],
                          style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold,)
                      ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      write(4);
                      winner();
                      setState(() {});
                    },

                    child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(click[4],
                          style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold,)
                      ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(

                    onTap: () {
                      write(5);
                      winner();
                      setState(() {});
                    },


                    child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(click[5],
                          style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold,)
                      ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      write(6);
                      winner();
                      setState(() {});
                    },


                    child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(click[6],
                          style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold,)
                      ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      write(7);
                      winner();
                      setState(() {});
                    },

                    child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(click[7],
                          style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold,)
                      ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(

                    onTap: () {
                      write(8);
                      winner();
                      setState(() {});
                    },


                    child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(click[8],
                          style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold,)
                      ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
