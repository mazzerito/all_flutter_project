import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

  // print('Flutter is Fun!');

  //----------------  Dynamic, Var, Int, Double, String Variable
  /*
        dynamic a =29;
        print(a);
        a = 'eating';
        print(a);

        int b = 12;
        print(b);

        double c=12.22;
        print(c);

        var d = 12.333;
        print(d);
        
        String e= 'Uh Heyo';
        print(e);
  
  */
  //-------------- Using method
//   var x = -2;
//   print(x.abs());

//   var y = 2.4; 
// print("The ceiling value of 2.4 = ${y.ceil()}");

// var a = 2.4; 
// print(a.compareTo(12)); 
// print(a.compareTo(2.4)); 
// print(a.compareTo(0));

// var a = 2.9; 
// print("The floor value of 2.9 = ${a.floor()}");

// int n1 = 2; 
// var value = n1.toDouble(); 
// print("Output = ${value}");

// double n1 = 2.8; 
// var value = n1.toInt(); 
// print("Output = ${value}"); 

//======================== Exercise CONVERT FOR LOOP TO WHILE LOOOP ==========================

/*
1.for (int i = 1; i <= 10; i++) {
  print(i);
}
*/
//============= ANSWER 1
// var i= 1;
// while (i<=10 ){
//   print(i);
//   i++;
// }

/*
2. List<int> numbers = [1, 2, 3, 4, 5];
int sum = 0;

for (int i = 0; i < numbers.length; i++) {
  sum += numbers[i];
}

print('Sum: $sum');

*/ 
//================ANSWER 2

// List<int>  numbers =[1,2,3,4,5];
// int sum=0;
// int i= 0;
// while(i <numbers.length){
//   sum +=numbers[i];
//   i++;
// }
// print('Sum: $sum');

/*
3. String input = "Flutter";
String reversed = "";

for (int i = input.length - 1; i >= 0; i--) {
  reversed += input[i];
}

print('Reversed: $reversed');

*/

//============ ANSWER 3
// String input =  "Flutter";
// String reversed = "";
// int i =  input.length -1;

// while (i>=0){
//   reversed += input[i];
//   i--;
// }
// print('Reversed: $reversed');

/*
int number = 5;
int factorial = 1;

for (int i = 1; i <= number; i++) {
  factorial *= i;
}

print('Factorial: $factorial');

*/ 
//============= ANSWER 4

//   int number =5;
//   int factorial =1;
//   int i=1;

// while(i<= number){
//   factorial *= i;
//   i++;
// }
// print('Factoria: $factorial');

/* 
5. String input = "Hello Flutter";
int vowelCount = 0;

for (int i = 0; i < input.length; i++) {
  if ("aeiouAEIOU".contains(input[i])) {
    vowelCount++;
  }
}

print('Vowels: $vowelCount');

 */

//================= Answer 5

// String input = 'Hello Flutter';
// int vowelCount=0;
// int i=0;

// while (i< input.length){
//   if ('aeiouAEIOU'.contains(input[i])){
//     vowelCount++;
//   }
//   i++;

// }
// print('Vowels: $vowelCount');

//============================== C O N V E R T WHILE LOOP TO FOR LOOP===========================

//============1\

// for (int i=2; i<=20; i+=2){
//   print(i);
// }

//===========2/

// List<int> numbers = [1,2,3,4,5];
// int product =1;

// for(int i=0; i< numbers.length; i++){
//   product *= numbers[i];
//   print("Product ${product}");
// }

//============3/
// List<int> numbers =[12,45,23,89,7];
// int max = numbers[0];

// for(int i=1; i< numbers.length; i++){
//   if (numbers[i]>max){
//     max = numbers[i];

//   }
//   print('Max: ${max}');
// }

//============4/

// for(int number = 10; number>0; number--){
//   print(number);
// }

//===============5/

// int a =0,b=1,n=12;

// for(int i=0; i<n; i++){
//   print(a);
//   int next =a+b;
//   a=b;
//   b=next;
// }

//=================== COVERT WHILE LOOP TO DO WHILE LOOP

//----------------------------------1

// int count =5;
// do {
//   print('Count: $count');
//   count--;
// } while (count>0);

//--------------------------------2

// String input = '';
// do {
//   print('Type "exit" to quit: ' );
//   input = stdin.readLinSync()!;

// } while(input !='exit');

//----------------------------------3

// List <int> numbers = [1,3,7,8,5];
// int i = 0;

// do {
//   if (i >= numbers.length) {
//     break;
//   }
//   i++;
// } while(i< numbers.length && numbers[i] % 2 !=0);

// if (i< numbers.length){
//   print('First even number: ${numbers[i]}');
// }else{
//   print('No eveen number found');
// }

//-------------4

// List<int> num = [1,2,3,4,5];
// int i = 0, j = num.length -1;

// do {
//   int temp = num[i];
//   num[i] = num[j];
//   num[j] = temp;
//   i++;
//   j--;
// } while(i<j);
// print('Reversed List: $num');

//-----------------5

// int sum =0;
// int number = -1;

// do {
//   print('Enter a positive number (0 to stop):');
//   number = int.parse(stdin.readLineSync()!);
  
//   if (number > 0) {
//     sum += number;
//   }
// } while( number !=0);
// print('Total sum: $sum');

//================= CONVERT FOR LOOP TO DO WHILE LOOP =============

//---------------1

// int i =10;
// do {
//   print('Countdown: $i');
//   i-=2;
// } while (i >=1);

//------------------2

// List<int> numbers = [34,15,88,2,19];
// int min = numbers[0];
// int i = 1;
// do {
//   if (numbers[i] <min){
//     min = numbers[i];
//   }
//   i++;

// }while(i < numbers.length);
// print('Smallest number: $min');

//------------------------3

// int i =0;
// do {
//   print('Enter your name:');
//   String name = stdin.readLineSync()!;
//   print('Hello, $name!');
// }while( i<5);

//=============== CONVERT DO WHILE LOOP TO FOR LOOP ===============

//------------------------1

// int power = 1;
// int maxPower =16;
// for (int i =0; power <=maxPower; i++ ){
//   print('2^$i = $power');
//   power *= 2;
// }

//----------------2
// int number = 50;
// for(; number<=100;){
//   number*=2;
// }
// print('First number greater than 100: ${number} ');

//---------------3

// int limit =5;
// for(int i = 1; i<=limit; i++){
//   print(i);
//   i++;
// }

//======================== CONVERT FROM DO WHILE TO WHILE LOOP ====================

//-----------------------1
// int num =2;
// int i= 1;

// while(i<=10){
//   print('$num x $i = ${num*i}');
//   i++;
// }

//-------------------------------2
// List<int> numbers = [3,7,10,12,15];
// int target = 12;
// int index =0;
// bool found = false;

// while (index < numbers.length && !found){
//   if (numbers[index] == target) {
//     found = true;
//   }
//   index++;
// }
// print(found ? 'Value found' : 'Value not found');

//-----------------------3
// int total = 0;
// int count = 0;
// int input =-1;
// while(input !=0){
//   print('Enter a number (0 to stop):');
//   input = int.parse(stdin.readLineSync()!);
  
//   if (input != 0) {
//     total += input;
//     count++;
//   }
// }
// double average = count > 0 ? total / count : 0;
// print('Average: $average');






}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
