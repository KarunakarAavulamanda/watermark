import 'package:flutter/material.dart';
import 'package:watermark/main.dart';

class AccountInformationTable extends StatelessWidget {
  const AccountInformationTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Watermark(
      numberOfWatermarks: 1,
      multipleWatermarks: true,
      watermarkText: '23456',
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
              child: Text(
                'Linked Account Table',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Table(
              // border: TableBorder.all(color: Colors.black), // Remove this line
              columnWidths: const <int, TableColumnWidth>{
                0: FixedColumnWidth(120.0),
                1: FixedColumnWidth(100.0),
                2: FixedColumnWidth(150.0),
                3: FixedColumnWidth(150.0),
                4: FixedColumnWidth(150.0),
                5: FixedColumnWidth(100.0),
                6: FixedColumnWidth(80.0),
              },
              children: [
                TableRow(
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  children: const [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'A/c No.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Type',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Eff. Available Balance',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Clear Balance',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Unclear Balance',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Lien',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Float Balance',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Data Rows
                const TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('12800401823'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Savings'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('₹999,478.00'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('₹69,400.00'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('₹0.00'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('₹0.00'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('₹0.00'),
                    ),
                  ],
                ),

                const TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('12800401823'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Savings'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('₹999,478.00'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('₹69,400.00'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('₹0.00'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('₹0.00'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('₹0.00'),
                    ),
                  ],
                ),
                const TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('12800401823'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Savings'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('₹999,478.00'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('₹69,400.00'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('₹0.00'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('₹0.00'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('₹0.00'),
                    ),
                  ],
                ), // Add more rows as needed
              ],
            ),
          ],
        ),
      ),
    );
  }
}
