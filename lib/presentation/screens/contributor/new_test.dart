import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class NewTest extends StatefulWidget {
  NewTest({Key key}) : super(key: key);

  @override
  _NewTestState createState() => _NewTestState();
}

class _NewTestState extends State<NewTest> {
  var _value = "1";

  DropdownButton _selectDomain() => DropdownButton<String>(
        icon: Icon(Icons.keyboard_arrow_down),
        items: [
          DropdownMenuItem(
            value: "1",
            child: Text(
              "Digital Marketing",
            ),
          ),
          DropdownMenuItem(
            value: "2",
            child: Text(
              "Programming",
            ),
          ),
          DropdownMenuItem(
            value: "3",
            child: Text(
              "Fund Raising",
            ),
          ),
          DropdownMenuItem(
            value: "4",
            child: Text(
              "Data Analytics",
            ),
          ),
        ],
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
        value: _value,
      );

  DropdownButton _selectCatagories() => DropdownButton<String>(
        icon: Icon(Icons.keyboard_arrow_down),
        items: [
          DropdownMenuItem(
            value: "1",
            child: Text(
              "Front end",
            ),
          ),
          DropdownMenuItem(
            value: "2",
            child: Text(
              "Back end",
            ),
          ),
          DropdownMenuItem(
            value: "3",
            child: Text(
              "Full stack",
            ),
          ),
          DropdownMenuItem(
            value: "4",
            child: Text(
              "UX design",
            ),
          ),
        ],
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
        value: _value,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpskillAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: width * 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Container(
                  height: height * 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(cover3), fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height * 2),
                child: Text(
                  'Create a new test',
                  style: headline_2,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height),
                child: Text(
                  'Test title',
                  style: normalText_4,
                ),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Vue',
                  fillColor: Colors.black.withOpacity(0.05),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height),
                child: Text(
                  'Domain',
                  style: normalText_4,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 6),
                child: DropdownButtonHideUnderline(child: _selectDomain()),
                height: height * 7,
                width: width * 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(0.05),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height),
                child: Text(
                  'Categories',
                  style: normalText_4,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 6),
                child: DropdownButtonHideUnderline(child: _selectCatagories()),
                height: height * 7,
                width: width * 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(0.05),
                ),
              ),
              SizedBox(
                height: height * 4,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: width * 50,
                  child: BlueButton(
                    buttonText: 'Save and go next',
                    action: () {
                      Navigator.pushNamed(context, '/testDetails');
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
