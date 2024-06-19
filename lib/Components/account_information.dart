import 'package:flutter/material.dart';
import 'package:watermark/main.dart';

class AccountInformation extends StatelessWidget {
  const AccountInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
    
        builder: (BuildContext context, BoxConstraints constraints) {
      double height = constraints.maxHeight;
      double width = constraints.maxWidth;
      //print('height is =>' + height.toString());
      int noOfWatermarks = 0;
      noOfWatermarks = getNoOfWatermarks(height);

      return Watermark(
        height: height,
        width: width,
        numberOfWatermarks: noOfWatermarks,
        multipleWatermarks: true,
        watermarkText: '23456',
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Account Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Account Number:           334444442',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Account holder name:       Karunakar',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Email:              karunakar@mail.com',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Address:new street, anna nagar, chennai',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'ICICI Ofice:              Bangalore',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Phone Number:         +91 1234567788',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Phone Number:          +91 1234567788',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Phone Number:           +91 1234567788',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Constitution code:          R1',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'FATCA:                              NA',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'MF Online Active:            View status',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Customer Profile:             View status',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Phone Number:         +91 1234567788',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Phone Number:          +91 1234567788',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Phone Number:           +91 1234567788',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Constitution code:          R1',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'FATCA:                              NA',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'MF Online Active:            View status',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Customer Profile:             View status',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      );
    });
  }
}
