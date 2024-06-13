import 'package:flutter/material.dart';
import 'package:watermark/Components/accountinfopage_table.dart';
import 'package:watermark/Components/account_information.dart';
import 'package:watermark/Components/linkedaccount_table.dart';

void main() {
  runApp(MyApp());
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
      home: AccountPageWatermark(),
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
                  width: 370,
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
                Flexible(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: AccountInformationTable(),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ), //
              ],
            ),
            const SizedBox(
              height: 20,
            ), // Space between the first row and the second row
            Container(
              decoration: BoxDecoration(
                color: Colors.green[100],
                border: Border.all(color: Colors.black),
              ),
              child: AccountInfoPageTable(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget Watermark(
    {required Widget child,
    required String watermarkText,
    bool multipleWatermarks = false,
    int numberOfWatermarks = 1,
    double height = 100.00,
    double width = 100.00}) {
  // Calculate the dynamic height based on the number of watermarks

  return Stack(
    children: [
      child,
      if (!multipleWatermarks) MyWaterMark(text: watermarkText),
      if (multipleWatermarks)
        Align(
          alignment: Alignment.center,
          child: Container(
            width: width,
            height: height,
            //width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (var i = 0; i < numberOfWatermarks; i++)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyWaterMark(text: watermarkText),
                    ],
                  ),
              ],
            ),
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
    return Positioned.fill(
      child: Transform.rotate(
        angle: -0.785398, // 45 degrees in radians
        child: Opacity(
          opacity: 0.7,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

getNoOfWatermarks(height) {
  int no_of_watermarks = 0;
  if (height <= 200)
    no_of_watermarks = 1;
  else if (height <= 400)
    no_of_watermarks = 2;
  else if (height <= 600)
    no_of_watermarks = 3;
  else if (height <= 800)
    no_of_watermarks = 4;
  else
    no_of_watermarks = 5;
  return no_of_watermarks;
}
