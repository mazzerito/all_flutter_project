import 'package:flutter/material.dart';
import 'package:food_app/model/food.dart';
import 'package:food_app/screen/home_screen.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  ColorCard? selectedCard;

  // Variable for save data
  final _keyForm = GlobalKey<FormState>();
  String _name='';
  String _price='';
  ColorCard _color= ColorCard.cardColor1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Menu form"),
        backgroundColor: Colors.teal[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _keyForm,
          child: Column(
            children: [
              TextFormField(
                maxLength: 30,
                decoration: const InputDecoration(
                  label: Text('Menu name')
                ),
                validator: (value){
                  if(value==null || value.isEmpty ){
                    return "Please fill menu name";
                  }
                  return null;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Price')
                ),
                validator: (value){
                  if(value==null || value.isEmpty ){
                    return "Please fill price";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20,),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  label: Text('Color')
                ),
                items: ColorCard.values.map((key){
                    return DropdownMenuItem(
                      value: key,
                      child: Text(key.colorName)
                      );
              }).toList(), 
              onChanged: (value){
                setState(() {
              selectedCard = value;
            });
                print(value?.color);
              }
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  _keyForm.currentState!.validate();
                  //Missing data saving code

                  _keyForm.currentState!.reset();
                //   Navigator.pushReplacement(context,
                //         MaterialPageRoute(builder: (ctx) => const HomeScreen()));
                  
                }, 
                child: Text("Save"),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.teal), // Add background color
                  foregroundColor: WidgetStateProperty.all(Colors.white), 
                ),
                ),
            ],
          )),
        ),

    );
  }
}