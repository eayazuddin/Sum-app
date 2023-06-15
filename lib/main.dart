import 'package:flutter/material.dart';
import 'package:sum_app/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sum app',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyHomePageUI();
  }
}

class MyHomePageUI  extends State<MyHomePage> {
  Map<String,double> formValue = {"Num1":0,"Num2":0,"Num3":0};
  double SUM = 0;

  @override
  Widget build(BuildContext context) {

    MyInputChange(InputKey,InputValue){
        setState(() {
          formValue.update(InputKey, (value) => double.parse(InputValue));
        });
    }
    AddAllNumber(){
       setState(() {
         SUM=formValue['Num1']! + formValue['Num2']! + formValue['Num3']!;
       });
    }

    return Scaffold(
        appBar: AppBar(title: Text('Add')
        ),
        body: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(SUM.toString(),style: HeadTextStyle(),),
              SizedBox(height: 20,),
              TextFormField(onChanged: (value){
                //Set value to num1
                MyInputChange("Num1",value);

              } ,decoration: AppInputStyle("First Number"),),
              SizedBox(height: 20,),
              TextFormField(onChanged: (value){
                //Set value to num2
                MyInputChange("Num2",value);

              } ,decoration: AppInputStyle("Second Number"),),
              SizedBox(height: 20,),
              TextFormField(onChanged: (value){
                //Set value to num3
                MyInputChange("Num3",value);

              } ,decoration: AppInputStyle("Third Number"),),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                style: AppButtonstyle(),
                child: Text('Add'),
             onPressed: (){
               AddAllNumber();
             },
             ),
             )
            ],
          ),
        )
    );
  }
}
