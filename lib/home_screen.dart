import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _numberoneTEcontroller = TextEditingController();
  final TextEditingController _numbertwoTEcontroller = TextEditingController();

  double _result =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue,
        title: Text("Sum Calculation" , style: TextStyle(
          color: Colors.white,
        ),),
      ),
     body: Padding(
       padding: const EdgeInsets.all(16.0),
       child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: _numberoneTEcontroller ,
              decoration: const InputDecoration(
                hintText: "Number one"
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: _numbertwoTEcontroller,
              decoration: const InputDecoration(
                  hintText: "Number two"
              ),
            ),
           const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                   Expanded(child: ElevatedButton(onPressed: () {
                     double numOne = double.tryParse(_numberoneTEcontroller.text.trim()) ?? 0;
                     double numtwo = double.tryParse(_numbertwoTEcontroller.text.trim()) ?? 0;
                     double result = add(numOne,numtwo);
                     _result = result;
                     setState(() {});
                   }, child: Text("Add"),),),
             const   SizedBox(
                  width: 16,
                ),
                    Expanded(child: ElevatedButton(onPressed: () {
                      double numOne = double.tryParse(_numberoneTEcontroller.text.trim()) ?? 0;
                      double numtwo = double.tryParse(_numbertwoTEcontroller.text.trim()) ?? 0;
                      double result = sub(numOne,numtwo);
                      _result = result;
                      setState(() {});

                    }, child: Text("sub"),),),
               const SizedBox(
                  width: 16,
                ),
                    Expanded(child: ElevatedButton(onPressed:clear, child: Text("clear"),),),


                  ],
                ),
            const SizedBox(
              width: 16,
            ),

            Text('Result : ${_result}', style: TextStyle(
              fontSize: 20,
            ),)
              ],
            )
           ),


    );
  }

  void clear() {
    _numberoneTEcontroller.clear();
    _numbertwoTEcontroller.clear();
    _result =0;
    setState(() {});

}

  double add(double numOne, double numTwo){
    return numOne+numTwo;
  }
  double sub(double numOne, double numTwo){
    return numOne-numTwo;
  }
}
