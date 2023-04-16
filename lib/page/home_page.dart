import 'package:flutter/material.dart';

const List<Widget> fruits = <Widget>[
  Text('Pick 3'),
  Text('Pick 4'),

];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  static const String _title = 'ToggleButtons Sample';
  final List<bool> _selectedFruits = <bool>[false, false];
  bool vertical = false;

  final payout = TextEditingController();
  final betamount = TextEditingController();

  final _formkey2 = GlobalKey<FormState>();
  final _formkey = GlobalKey<FormState>();
  int payouts = 00;
  int bet = 00;
  int result = 00;
  bool check1 = false;

  void a(){

   setState(() {
     if(_formkey2.currentState!.validate() && _formkey.currentState!.validate()) {
       payouts = int.parse(payout.text) * 7 * 3 * 2;
       bet = int.parse(betamount.text) * 150;
       result = bet - payouts;
     }
   });



  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(title: Text('Win Fall'),


        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text('Enter The First Number Below: '),
                ),
                SizedBox(height: 15,),

                Container(
                  alignment: Alignment.center,

                  child: Form(
                    key: _formkey2,
                    child: TextFormField(
                      controller: payout,

                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Enter First Value',
                        hintText: 'Enter Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                      ),
                      validator: (val){
                        if(val!.isEmpty){
                          return "Please Enter The Number";
                        }
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text('Input another number below: '),
                ),
                SizedBox(height: 15,),

                Container(

                  child: Form(
                    key: _formkey,
                    child: TextFormField(
                      controller: betamount,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Enter another Value',
                        hintText: 'Enter Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                      ),
                      validator: (val){
                        if(val!.isEmpty){
                          return "Please Enter The Number";
                        }
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text('Select',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                ),

                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: ToggleButtons(

                      direction: vertical ? Axis.vertical : Axis.horizontal,

                      onPressed: (int index) {
                        setState(() {
                          // The button that is tapped is set to true, and the others to false.
                          for (int i = 0; i < _selectedFruits.length; i++) {
                            _selectedFruits[i] = i == index;


                          }

                          if(_selectedFruits[0]== true){
                            setState(() {
    if(_formkey2.currentState!.validate() && _formkey.currentState!.validate()) {
      payouts = int.parse(payout.text) * 7 * 3 * 2;
      bet = int.parse(betamount.text) * 150;
      result = bet - payouts;
    }

                            });

                          } if(_selectedFruits[1]== true){
                            setState(() {
    if(_formkey2.currentState!.validate() && _formkey.currentState!.validate()) {
      payouts = int.parse(payout.text) * 7 * 3 * 2;
      bet = int.parse(betamount.text) * 375;
      result = bet - payouts;
    }

                            });

                          }



                        });
                      },

                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      selectedBorderColor: Colors.green,
                      selectedColor: Colors.white,
                      fillColor: Colors.lightGreen,
                      color: Colors.black,
                      constraints: const BoxConstraints(
                          minHeight: 40.0,
                          minWidth: 110

                      ),
                      isSelected: _selectedFruits,
                      children: fruits,
                    ),
                  ),


                ),

/*
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20),
                 //   border: Border.all()
                  ),
                  child: TextButton(
                    onPressed: a,

                    child: Text('Result', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  ),
                ),
                /
 */
                SizedBox(height: 10,),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text('Show Here: ', style: TextStyle(fontSize: 15),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Column(
                    children: [
                      Text('$bet Payout', style: TextStyle(fontSize: 17),),
                    SizedBox(height: 10,),
                    Text('-$payouts Bet amount', style: TextStyle(fontSize: 17),),
                      SizedBox(height: 10,),
                      Text('= $result Profit', style: TextStyle(fontSize: 17),)

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
