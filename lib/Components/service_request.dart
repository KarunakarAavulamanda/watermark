import 'package:flutter/material.dart';

class ServiceRequest extends StatelessWidget {
  const ServiceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {

        return const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' ServiceRequest Account Information',
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
                'Address: new street, anna nagar, chennai',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'ICICI Office:              Bangalore',
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
            ],
          ),
        );
      },
    );
  }
}
