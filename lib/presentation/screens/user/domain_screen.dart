import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class DomainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: UpskillAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: width*4),
          child: Column(
            children: <Widget>[
              Padding(
                padding:  EdgeInsets.symmetric(vertical:height*2),
                child: Text('Please select your domain',
                style: headline_2,),
              ),
            GridView.count(
              childAspectRatio: 1/1.1,
                shrinkWrap: true,
                crossAxisCount: 2,
                children: <Widget>[
                  Domain(
                    domainText: 'Digital Marketing',
                    image: domain_1,
                    action: (){
                      Navigator.pushNamed(context, '/subdomain');
                    },
                  ),
                  Domain(
                    domainText: 'Programming',
                    image: domain_2,
                    action: (){
                      Navigator.pushNamed(context, '/subdomain');
                    },
                  ),
                  Domain(
                    domainText: 'Fund Raising',
                    image: domain_3,
                    action: (){
                      Navigator.pushNamed(context, '/subdomain');
                    },
                  ),
                  Domain(
                    domainText: 'Data Analysis',
                    image: domain_4,
                    action: (){
                      Navigator.pushNamed(context, '/subdomain');
                    },
                  ),
                ],
            ),
              SizedBox(height:height *10,),
              Container(
                width: width*100,
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: height*2,horizontal: width*8),
                  child: Text('Skip now',
                    style: smallBlueBold,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.withOpacity(0.15)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
