import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
   const CurrencyConverterMaterialPage({super.key});
  
  @override
  State<CurrencyConverterMaterialPage> createState() {
    return _CurrencyConverterMaterialPageState();
  }
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
   late double result;
   @override
   void initState(){
    super.initState();
    result = 0;
}
Widget build(BuildContext context) {
  print('build method called');
    final TextEditingController textEditingController = TextEditingController();
    final border = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.black, width : 2.0,
      style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(10)
    );
    return  Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
      backgroundColor: Colors.grey,
      title: const Text('Currency Converter', 
      style: TextStyle(color: Colors.white)),
      centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(result.toString(), 
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255)
                ),
                ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: textEditingController,
                    style:const TextStyle(color: Colors.black),
                  
                    decoration: InputDecoration(
                      hintText: 'Enter amount in USD', 
                      hintStyle: const TextStyle(color: Colors.black54),
                      prefixIcon: const Icon(Icons.monetization_on_outlined, 
                      color: Colors.black54),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder:border,
                      enabledBorder:border,
                        ),
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState((){
                      result = double.parse(textEditingController.text)*91;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Convert',),
        ),
        ),
            ],
            ),
                ),
                );
    }   
  }


