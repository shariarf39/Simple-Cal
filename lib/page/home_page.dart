import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:number_to_character/number_to_character.dart';


const List<Widget> fruits = <Widget>[
  Text('Pick 3'),
  Text('Pick 3 Lines'),
  Text('Pick 4'),

];

NumberFormat my = NumberFormat.decimalPattern('en_us');
var converter = NumberToCharacterConverter('en');


List<Widget> local = <Widget>
[
  Text("Store")
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {



  static const String _title = 'ToggleButtons Sample';
  final List<bool> _selectedFruits = <bool>[false, false, false];
  final List<bool> _selectedLocal = <bool>[false];
  bool vertical = false;

  final payout = TextEditingController();
  final betamount = TextEditingController();

  final _formkey2 = GlobalKey<FormState>();
  final _formkey = GlobalKey<FormState>();
  int payouts = 00;
  int val1 = 1;
  int val2 = 1;
  int val3 = 1;
  int bet = 00;
  int result = 00;
  bool check1 = false;
  bool isChecked = false;
  String pick = "";

  

  int remove = 0;
  int add = 0;

  int count = 1;

  void a(){

   setState(() {
     if(_formkey2.currentState!.validate() && _formkey.currentState!.validate()) {
       payouts = int.parse(payout.text) * 7 * 3 * 2;
       val1 = int.parse(payout.text) * 7 * 3 * 2;
       bet = int.parse(betamount.text) * 150;
       val2 = int.parse(betamount.text) * 150;
       result = bet - payouts;
       val3 = bet - payouts;
       count =0;
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
                SizedBox(height: 10,),
                Container(
                  alignment: Alignment.topRight,

                  child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        betamount.clear();
                        payout.clear();
                        payouts =0;
                        bet =0;
                        result = 0;
                      });

                    },
                    child: Text('Reset'),
                  ),

                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text('Select',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 20,),

                Container(
                  child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15
                        ),
                        child: Checkbox(
                          checkColor: Colors.white,
                         // fillColor: MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            if(isChecked == false){
                              if(_selectedFruits[0]== true) {
                                payouts = int.parse(payout.text) * 7 * 3 * 2;
                                val1 = int.parse(payout.text) * 7 * 3 * 2;
                                bet = int.parse(betamount.text) * 150;
                                val2 = int.parse(betamount.text) * 150;
                                result = bet - payouts;
                                val3 = bet - payouts;
                                count = 0;
                                remove = 0;
                                add = 0;
                                pick = "Pick 3 Values:";}
                                 else if(_selectedFruits[1]== true) {
                                payouts = int.parse(payout.text) * 4 * 3 * 2;
                                val1 = int.parse(payout.text) * 4 * 3 * 2;
                                bet = int.parse(betamount.text) * 150;
                                val2 = int.parse(betamount.text) * 150;
                                result = bet - payouts;
                                val3 = bet - payouts;
                                count = 0;
                                remove = 0;
                                add = 0;
                                pick = "Pick 3 Lines Values:";
                              }else if(_selectedFruits[2]== true){
                                payouts = int.parse(payout.text) * 7 * 3 * 2;
                                val1 = int.parse(payout.text) * 7 * 3 * 2;
                                bet = int.parse(betamount.text) * 375;
                                val2 = int.parse(betamount.text) * 375;
                                result = bet - payouts;
                                val3 = bet - payouts;
                                count = 0;
                                remove = 0;
                                add = 0;
                                pick = "Pick 4 Values:";
                              }

                              }
                            else  if(_selectedFruits[0]== true){
                                payouts = int.parse(payout.text) * 7 * 3 * 2;
                                val1 = int.parse(payout.text) * 7 * 3 * 2;
                                bet = int.parse(betamount.text) * 80;
                                val2 = int.parse(betamount.text) * 80;
                                result = bet - payouts;
                                val3 = bet - payouts;
                                count =0;
                                remove = 0;
                                add = 0;
                                pick = "Pick 3 Values with Local Store: ";

                              }
                            else  if(_selectedFruits[1]== true){
                                payouts = int.parse(payout.text) * 4 * 3 * 2;
                                val1 = int.parse(payout.text) * 4 * 3 * 2;
                                bet = int.parse(betamount.text) * 80;
                                val2 = int.parse(betamount.text) * 80;
                                result = bet - payouts;
                                val3 = bet - payouts;
                                count =0;
                                remove = 0;
                                add = 0;
                                pick = "Pick 3 Lines Values with Local Store: ";

                              }
                             else if(_selectedFruits[2]== true){
                             payouts = int.parse(payout.text) * 7 * 3 * 2;
                             val1 = int.parse(payout.text) * 7 * 3 * 2;
                             bet = int.parse(betamount.text) * 200;
                             val2 = int.parse(betamount.text) * 200;
                             result = bet - payouts;
                             val3 = bet - payouts;
                             count = 0;
                             remove = 0;
                             add = 0;
                             pick = "Pick 4 Values with Local Store:";
                             }



                            });
                          },
                        ),
                      ),
                      Text('Local Store'),
                    ],
                  )
                ),

                SizedBox(height: 10,),


                Container(
                  child:  ToggleButtons(

                    direction: vertical ? Axis.vertical : Axis.horizontal,

                    onPressed: (int index) {
                      setState(() {
                        // The button that is tapped is set to true, and the others to false.
                        for (int i = 0; i < _selectedFruits.length; i++) {
                          _selectedFruits[i] = i == index;


                        }



                         if(_selectedFruits[0]== true){

                          setState(() {
                            if(isChecked==true){
                              payouts = int.parse(payout.text) * 7 * 3 * 2;
                              val1 = int.parse(payout.text) * 7 * 3 * 2;
                              bet = int.parse(betamount.text) * 80;
                              val2 = int.parse(betamount.text) * 80;
                              result = bet - payouts;
                              val3 = bet - payouts;
                              count =0;
                              remove = 0;
                              add = 0;
                              pick = "Pick 3 Values with Local Store: ";

                            }else{

                            payouts = int.parse(payout.text) * 7 * 3 * 2;
                            val1 = int.parse(payout.text) * 7 * 3 * 2;
                            bet = int.parse(betamount.text) * 150;
                            val2 = int.parse(betamount.text) * 150;
                            result = bet - payouts;
                            val3 = bet - payouts;
                            count =0;
                            remove = 0;
                            add = 0;
                            pick = "Pick 3 Values:";

                            }

                          });

                        }
                         if(_selectedFruits[1]== true){

                          setState(() {
                            if(isChecked==true){
                              payouts = int.parse(payout.text) * 4 * 3 * 2;
                              val1 = int.parse(payout.text) * 4 * 3 * 2;
                              bet = int.parse(betamount.text) * 80;
                              val2 = int.parse(betamount.text) * 80;
                              result = bet - payouts;
                              val3 = bet - payouts;
                              count =0;
                              remove = 0;
                              add = 0;
                              pick = "Pick 3 Lines Values with Local Store: ";

                            }else{

                            payouts = int.parse(payout.text) * 4 * 3 * 2;
                            val1 = int.parse(payout.text) * 4 * 3 * 2;
                            bet = int.parse(betamount.text) * 150;
                            val2 = int.parse(betamount.text) * 150;
                            result = bet - payouts;
                            val3 = bet - payouts;
                            count =0;
                            remove = 0;
                            add = 0;
                            pick = "Pick 3 Lines Values:";

                            }

                          });

                        }
                        if(_selectedFruits[2]== true){
                          setState(() {

                            if(isChecked==true){
                              payouts = int.parse(payout.text) * 7 * 3 * 2;
                              val1 = int.parse(payout.text) * 7 * 3 * 2;
                              bet = int.parse(betamount.text) * 200;
                              val2 = int.parse(betamount.text) * 200;
                              result = bet - payouts;
                              val3 = bet - payouts;
                              count = 0;
                              remove = 0;
                              add = 0;
                              pick = "Pick 4 Values with Local Store:";

                            }else {
                              payouts = int.parse(payout.text) * 7 * 3 * 2;
                              val1 = int.parse(payout.text) * 7 * 3 * 2;
                              bet = int.parse(betamount.text) * 375;
                              val2 = int.parse(betamount.text) * 375;
                              result = bet - payouts;
                              val3 = bet - payouts;
                              count = 0;
                              remove = 0;
                              add = 0;
                              pick = "Pick 4 Values:";
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
                SizedBox(height: 30,),


                Container(
                  alignment: Alignment.center,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all()

                          ),
                          child: Text('$remove'),
                        ),
                     SizedBox(width: 10,),
                     InkWell(
                       onTap: (){
                         setState(() {
                           --count;
                           payouts = val1 * count;
                           bet = val2 *count;
                           result = val3* count;
                           remove++;
                           add=0;
                         });

                       },
                       child: Container(
                         height: 50,
                         width: 50,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                           border: Border.all()
                         ),
                         child:  Icon(

                             Icons.remove,
                           color: Colors.blue,
                         ),
                       ),
                     ),

                      SizedBox(width: 20,),
                      InkWell(
                        onTap: (){
                          setState(() {
                            ++count;
                            payouts = val1 * count;
                            bet = val2 *count;
                            result = val3* count;
                            add++;
                            remove = 0;
                          });

                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all()
                          ),
                          height: 50,
                         width: 50,
                         child:  Icon(
                             Icons.add,
                           color: Colors.blue,
                         ),
                     ),
                      ),
                        SizedBox(width: 10,),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all()

                          ),
                          child: Text('$add'),
                        ),
                    ],
                  ),
                ),


                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text('Show Here: ', style: TextStyle(fontSize: 15),),
                ),
                SizedBox(height: 5,),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text('$pick', style: TextStyle(fontSize: 15),),
                ),
                SizedBox(height: 20,),
                Container(
                  child: Column(
                    children: [
                      Text('${my.format(bet)} Payout', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold), ),
                    SizedBox(height: 10,),
                    Text('-${my.format(payouts)} Bet amount', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text('= ${my.format(result)} Profit', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text('= ${converter.convertInt(result)} dollars', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),

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
