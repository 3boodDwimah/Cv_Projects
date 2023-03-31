//import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class name extends StatefulWidget {
  const name({Key? key}) : super(key: key);

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  String? selectedValue;
  List<String> items = [
    'أول ',
    'تاني',
    'Item3',
    'Item4',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Widget ")),
        body: SafeArea(
          child:
          Container(
            width: 230,
            height: 100,

            child:
            DropdownButton(


              focusColor: Colors.white,
              iconDisabledColor: Colors.yellow,
              iconEnabledColor: Colors.black,
              dropdownColor:Colors.white ,
              alignment: Alignment.centerLeft,
              isExpanded: true,

              underline: Divider(
                thickness: 0,
                color: Colors.white,
              ),
              hint: Container(width: double.infinity,
                child: Text(
                  'المنطقة ',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ),
              items: items
                  .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Container(
                  color:Colors.white ,
                  child: Text(
                    item,
                    textDirection: TextDirection.rtl,

                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ))
                  .toList(),
              value: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value as String;
                });
              },
            ),
          ),
        ));
  }
}

// import 'package:flutter/material.dart';
//
// class name extends StatefulWidget {
//   const name({Key? key}) : super(key: key);
//
//   @override
//   State<name> createState() => _nameState();
// }
//
// class _nameState extends State<name> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Widget")),
//       body: SafeArea(child: Text("")),
//     );
//   }
// }
