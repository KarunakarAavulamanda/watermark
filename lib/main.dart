import 'package:flutter/material.dart';
import 'package:watermark/Components/accountinfopage_table.dart';
import 'package:watermark/Components/account_information.dart';
import 'package:watermark/Components/linkedaccount_table.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'watermark Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AccountPageWatermark(),
    );
  }
}

class AccountPageWatermark extends StatelessWidget {
  const AccountPageWatermark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ICICI Sample CR_Demo for watermark'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // First Row for Account Information Details and Table
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 40% Account Information Details
                Container(
                  width: (MediaQuery.of(context).size.width * 30) / 100,
                  height: 780,
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    border: Border.all(color: Colors.black),
                  ),
                  child: const AccountInformation(),
                ),
                const SizedBox(
                  width: 10,
                ), // Space between Account Information Details and Table
                Container(
                  height: 400,
                  width: (MediaQuery.of(context).size.width * 68) / 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: const LinkedAccountTable(),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ), // Space between the first row and the second row
            Container(
              height: 350,
              width: (MediaQuery.of(context).size.width * 100) / 100,
              decoration: BoxDecoration(
                color: Colors.green[100],
                border: Border.all(color: Colors.black),
              ),
              child: const AccountInfoPageTable(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget Watermark({
  required Widget child,
  required String watermarkText,
  bool multipleWatermarks = false,
  int numberOfWatermarks = 1,
  double height = 100.00,
  double width = 100.00,
  horizontalMultipleWatermarks = false,
}) {
  // Calculate the dynamic height based on the number of watermarks

  return Stack(
    children: [
      child,
      if (!multipleWatermarks) MyWaterMark(text: watermarkText),
      if (multipleWatermarks)
        SizedBox(
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var i = 0; i < numberOfWatermarks; i++)
                Row(
                  mainAxisAlignment: horizontalMultipleWatermarks
                      ? MainAxisAlignment.spaceEvenly
                      : MainAxisAlignment.center,
                  children: [
                    MyWaterMark(text: watermarkText),
                    if (horizontalMultipleWatermarks)
                      MyWaterMark(text: watermarkText),
                  ],
                ),
            ],
          ),
        ),
    ],
  );
}

class MyWaterMark extends StatelessWidget {
  final String text;
  const MyWaterMark({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.785398, // 45 degrees in radians
      child: Opacity(
        opacity: 0.1,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

getNoOfWatermarks(height) {
  int noOfWatermarks = 0;
  if (height <= 200) {
    noOfWatermarks = 1;
  } else if (height <= 400)
    noOfWatermarks = 2;
  else if (height <= 600)
    noOfWatermarks = 3;
  else if (height <= 800)
    noOfWatermarks = 4;
  else
    noOfWatermarks = 5;
  return noOfWatermarks;
}
