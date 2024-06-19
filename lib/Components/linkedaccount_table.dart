import 'package:flutter/material.dart';
import 'package:watermark/main.dart';

class AccountInformationTable extends StatelessWidget {
  const AccountInformationTable({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
      double height = constraints.maxHeight;
      double width = constraints.maxWidth;
      int noOfWatermarks = 0;
      noOfWatermarks = getNoOfWatermarks(height);

        return Watermark(
          numberOfWatermarks: noOfWatermarks,
          horizontalMultipleWatermarks: true,
          multipleWatermarks: true,
          watermarkText: '23456',
          height: height,
          width: width,
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
                      border: TableBorder.all(),
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      children: [
                        // Header Row
                        TableRow(
                          decoration: BoxDecoration(color: Colors.grey[200]),
                          children: const [
                            TableCell(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'A/c No.',
                                  style: TextStyle(
                                    fontSize: 18,
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
                                    fontSize: 18,
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
                                    fontSize: 18,
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
                                    fontSize: 18,
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
                                    fontSize: 18,
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
                                    fontSize: 18,
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
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Data Rows
                        const TableRow(
                          decoration: BoxDecoration(color: Colors.white),
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('128004018240'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Savings'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('₹99,478.00'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('₹6,400.00'),
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
                          decoration: BoxDecoration(color: Colors.white),
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('128004018240'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Savings'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('₹99,478.00'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('₹6,400.00'),
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
                          decoration: BoxDecoration(color: Colors.white),
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('128004018240'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Savings'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('₹99,478.00'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('₹6,400.00'),
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
                          decoration: BoxDecoration(color: Colors.white),
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('128004018240'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Savings'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('₹99,478.00'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('₹6,400.00'),
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
                          decoration: BoxDecoration(color: Colors.white),
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('128004018240'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Savings'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('₹99,478.00'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('₹6,400.00'),
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
                          decoration: BoxDecoration(color: Colors.white),
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('128004018240'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Savings'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('₹99,478.00'),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('₹6,400.00'),
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
                        // Add more data rows as needed
                      ],
                    ),              ],
            ),
          ),
        );
      }
    );
  }
}
