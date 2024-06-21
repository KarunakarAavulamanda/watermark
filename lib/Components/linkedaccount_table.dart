import 'package:flutter/material.dart';
import 'package:watermark/Components/service_request.dart';
import 'package:watermark/main.dart';

class LinkedAccountTable extends StatelessWidget {
  const LinkedAccountTable({super.key});

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        double height = MediaQuery.of(context).size.height;
        double width = MediaQuery.of(context).size.width * 0.5;
        //double Width = 540;
        int noOfWatermarks = getNoOfWatermarks(height);

        return Dialog(
          insetPadding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.7),
          child: Watermark(
            numberOfWatermarks: noOfWatermarks,
            horizontalMultipleWatermarks: false,
            multipleWatermarks: true,
            watermarkText: '23456',
            height: height,
            width: width,
            child: Container(
              width: width,
              child: const ServiceRequest(),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double height = constraints.maxHeight;
        double width = constraints.maxWidth;
        int noOfWatermarks = getNoOfWatermarks(height);

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
                Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                  child: Column(
                    children: [
                      const Text(
                        'Linked Account Table',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () => _showPopup(context),
                          child: const Text('Service Request'),
                        ),
                      ),
                    ],
                  ),
                ),
                _buildTableContent(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildTableContent() {
    return Table(
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
      ],
    );
  }
}
