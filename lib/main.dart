import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Calculater());
class Calculater extends StatefulWidget {
  @override
  _CalculaterState createState() => _CalculaterState();
}

class _CalculaterState extends State<Calculater> {
  double result = 0;
  CustomStk obj = CustomStk();
  String _string;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text('CALCULATER',style: TextStyle(fontSize: 30,color: Colors.white),),
              centerTitle: true,
            ),
         body: SafeArea(
            child: Column(
              children: <Widget>[
               Flexible(
                   flex: 3,
                   child:  Container(
                     alignment: Alignment.bottomRight,
                     decoration: BoxDecoration(color: Colors.grey),
                     child: Column(
                       mainAxisSize: MainAxisSize.max,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         buildText(result.toString(), 45.0, Colors.white),
                         buildText(obj.getExpr(), 30.0, Colors.white54),
                       ],
                     ),
                   ),),
                Flexible(
                    flex: 7,
                    child: Wrap(
                    direction: Axis.horizontal,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color: Colors.cyan,
                          shape: BoxShape.circle),
                          child: FlatButton( onPressed: () {
                            setState(() {
                                obj.clear();
                                result = 0.0;
                            });
                          },
                            child: Text('AC',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 30,color: Colors.black),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          height: 80,
                          width: 80,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color: Colors.cyan,
                              shape: BoxShape.circle),
                          child: FlatButton(onPressed: (){ setState(() {
                            result = obj.pop();
                          });},
                            child: Text('C',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 30,color: Colors.black),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          height: 80,
                          width: 80,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(color: Colors.cyan,
                              shape: BoxShape.circle),
                          child: FlatButton(onPressed: (){setState(() {
                            String t="%";
                            result = obj.push(t);
                          });},
                            child: Text('%',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 40,color: Colors.black),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.indigo,
                              shape: BoxShape.circle),
                          child: FlatButton( onPressed: (){setState(() {
                            String t="/";
                            result = obj.push(t);
                          });},
                            child: Text('/',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 50,color: Colors.white),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.black12,
                              shape: BoxShape.circle),
                          child: FlatButton(onPressed: (){setState(() {
                            String t="1";
                            result = obj.push(t);
                          });},
                            child: Text('1',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 50,color: Colors.brown),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.black12,
                              shape: BoxShape.circle),
                          child: FlatButton(onPressed: (){setState(() {
                            String t="2";
                            result = obj.push(t);
                          });},
                            child: Text('2',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 50,color: Colors.brown),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.black12,
                              shape: BoxShape.circle),
                          child: FlatButton(onPressed: (){setState(() {
                            String t="3";
                            result = obj.push(t);
                          });},
                            child: Text('3',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 50,color: Colors.brown),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.indigo,
                              shape: BoxShape.circle),
                          child: FlatButton(onPressed: (){setState(() {
                            String t="*";
                            result = obj.push(t);
                          });},
                            child: Text('X',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 50,color: Colors.white),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.black12,
                              shape: BoxShape.circle),
                          child: FlatButton(onPressed: (){setState(() {
                            String t="4";
                            result = obj.push(t);
                          });},
                            child: Text('4',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 50,color: Colors.brown),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.black12,
                              shape: BoxShape.circle),
                          child: FlatButton(onPressed: (){setState(() {
                            String t="5";
                            result = obj.push(t);
                          });},
                            child: Text('5',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 50,color: Colors.brown),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.black12,
                              shape: BoxShape.circle),
                          child: FlatButton(onPressed: (){setState(() {
                            String t="6";
                            result = obj.push(t);
                          });},
                            child: Text('6',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 50,color: Colors.brown),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.indigo,
                              shape: BoxShape.circle),
                          child: FlatButton(onPressed: (){setState(() {
                            String t="-";
                            result = obj.push(t);
                          });},
                            child: Text('-',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 65,color: Colors.white),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.black12,
                              shape: BoxShape.circle),
                          child: FlatButton(onPressed: (){setState(() {
                            String t="7";
                            result = obj.push(t);
                          });},
                            child: Text('7',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 50,color: Colors.brown),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.black12,
                              shape: BoxShape.circle),
                          child: FlatButton(onPressed: (){setState(() {
                            String t="8";
                            result = obj.push(t);
                          });},
                            child: Text('8',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 50,color: Colors.brown),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.black12,
                              shape: BoxShape.circle),
                          child: FlatButton(onPressed: (){setState(() {
                            String t="9";
                            result = obj.push(t);
                          });},
                            child: Text('9',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 50,color: Colors.brown),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.indigo,
                              shape: BoxShape.circle),
                          child: FlatButton(onPressed: (){setState(() {
                            String t="+";
                            result = obj.push(t);
                          });},
                            child: Text('+',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 60,color: Colors.white),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 80,
                          width: 170,
                          decoration: BoxDecoration(color: Colors.black12,
                             borderRadius: BorderRadius.circular(50)),
                          child: FlatButton(onPressed: (){setState(() {
                            String t="0";
                            result = obj.push(t);
                          });},
                            child: Text('0',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 50,color: Colors.brown),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.black12,
                              shape: BoxShape.circle),
                          child: FlatButton(onPressed: (){setState(() {
                            String t=".";
                            result = obj.push(t);
                          });},
                            child: Text('.',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 50,color: Colors.brown),textAlign: TextAlign.center,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.indigo,
                              shape: BoxShape.circle),
                          child: FlatButton(onPressed: (){
                            setState(() {
                              result = obj.result;
                              obj.clear();
                              obj.cstStk.add(result.toString());
                            });
                          },
                            child: Text('=',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 50,color: Colors.white),textAlign: TextAlign.center,),),
                        ),
                      ],
                ))
              ],
            ),
         ),
      ),
    );
  }
  buildText(text, size, color) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
      ),
    );
  }
}
class CustomStk {
  String num1 = "";
  double result = 0;
  int i;
  List oprs = ["+","*","-","/","%"];
  List nmbrs = List.generate(11, (n) => (n == 10) ? "." : n.toString());
  List cstStk = [];
  List opnStk = [];
  List oprStk = [];
  List rstStk = [];

  double push(t) {
    if (oprs.contains(t)) {
      (cstStk.isEmpty) ? cstStk.add("0") : 0;
      cstStk.add(t);
      num1 = "";
    } else if (nmbrs.contains(t)) {
      num1 += t;
      if (cstStk.isNotEmpty && !oprs.contains(cstStk.last)) cstStk.removeLast();
      cstStk.add(num1);
    }
    result = recalc();
    return result;
  }

  double recalc() {
    String t = "";
    oprStk.clear();
    opnStk.clear();
    rstStk.clear();
    for (i = 0; i < cstStk.length; i++) {
      t = cstStk[i];
      if (oprs.contains(t)) {
        while (oprStk.isNotEmpty && highP(t, oprStk.last)) {
          opnStk.add(oprStk.last);
          oprStk.removeLast();
        }
        oprStk.add(t);
      } else
        opnStk.add(t);
    }
    while (oprStk.isNotEmpty) {
      opnStk.add(oprStk.last);
      oprStk.removeLast();
    }
    for (i = 0; i < opnStk.length; i++) {
      t = opnStk[i];
      if (oprs.contains(t)) doOp(t);
      else rstStk.add(double.parse(t));
    }
    if (rstStk.isEmpty) return 0;
    else return rstStk[0];
  }

  bool highP(t, topOfStk) {
    int currentP = getP(t);
    int tosP = getP(topOfStk);

    if (t == topOfStk) return false;
    if (tosP >= currentP) return true;
    else return false;
  }

  int getP(t) {
    if (t == "*" || t == "/") return 2;
    else return 1;
  }

  doOp(symbol) {
    double num1, num2;

    if (rstStk.length == 1) return rstStk[0];
    num1 = rstStk.last;
    rstStk.removeLast();
    num2 = rstStk.last;
    rstStk.removeLast();
    if (symbol == "+") rstStk.add(num1 + num2);
    else if (symbol =="-") rstStk.add(num2 - num1);
    else if (symbol == "*") rstStk.add(num1 * num2);
    else if (symbol == "/") rstStk.add(num2 / num1);
    else if (symbol == "%") rstStk.add(num2 % num1);
  }

  pop() {
    num1 = "";
    if (cstStk.isNotEmpty) {
      String tmp = cstStk.last;
      if (tmp.length == 1) cstStk.removeLast();
      else {
        tmp = tmp.substring(0, tmp.length - 1);
        cstStk.removeLast();
        cstStk.add(tmp);
      }
    }
    return recalc();
  }

  clear() {
    if(rstStk.isNotEmpty) result = rstStk[0];
    num1 = "";
    cstStk.clear();
    opnStk.clear();
    oprStk.clear();
    rstStk.clear();
    return result;
  }

  getExpr() {
    String temp = "";
    for (i = 0; i < cstStk.length; i++) temp += cstStk[i];
    return temp;
  }
}

