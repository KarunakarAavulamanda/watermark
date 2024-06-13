import 'package:flutter/material.dart';
import 'package:watermark/main.dart';

class AccountInfoPageTable extends StatelessWidget {
  const AccountInfoPageTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // First Watermark
          Watermark(
            watermarkText: '23456',
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Transaction Details',
                    style: TextStyle(
                      fontSize: 24,
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
                ),
              ],
            ),
          ),
          // Second Watermark
          Watermark(
            watermarkText: '23456',
            child: ParentWidget(),
          ),
        ],
      ),
    );
  }
}

class ParentWidget extends StatelessWidget {
  const ParentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double parentHeight = constraints.maxHeight;
        double height = constraints.maxHeight;

        return Container(
          color: Colors.blueAccent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "The height of the container is $height\nHeight of parent: $parentHeight",
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text(
                  'FATCA:  NA',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                const Text(
                  'MF Online Active:            View status',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
