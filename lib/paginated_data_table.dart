import 'dart:convert';
import 'dart:html';
import 'dart:io';
import 'dart:math';

import 'package:csv/csv.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:permission_handler/permission_handler.dart';


class PaginatedDataTablees extends StatefulWidget {
  const PaginatedDataTablees({Key? key}) : super(key: key);

  @override
  State<PaginatedDataTablees> createState() => _PaginatedDataTableesState();
}

class _PaginatedDataTableesState extends State<PaginatedDataTablees> {

  final DataTableSource _data = MyData();

  static const double topViewHeight = 50.0;
  static const double paginateDataTableHeaderRowHeight = 35.0;
  static const double pagerWidgetHeight = 56;
  static const double paginateDataTableRowHeight = kMinInteractiveDimension;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('github.com/tarikul-tuhin'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(400, 8, 400, 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),

              Container(
                //width: 600,
                //height: 800,
                color: Colors.red,
                child: PaginatedDataTable(
                  //initialFirstRowIndex: 1,

                  //minWidth: 600,



                    //dragStartBehavior: DragStartBehavior.down,
                    source: _data,
                    header: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        const Text('My Products'),
                        ElevatedButton(onPressed: () async{

                          List<List<dynamic>> rows = [];
                          for (int i = 0; i <MyData()._data.length;i++) {
//row refer to each column of a row in csv file and rows refer to each row in a file
                            List<dynamic> row = [];
                            row.add(MyData()._data[i]["id"]);
                            row.add(MyData()._data[i]["title"]);
                            row.add(MyData()._data[i]["price"]);
                            row.add(MyData()._data[i]["example1"]);
                            row.add(MyData()._data[i]["example2"]);
                            row.add(MyData()._data[i]["example3"]);
                            row.add(MyData()._data[i]["example4"]);
                            row.add(MyData()._data[i]["example5"]);
                            row.add(MyData()._data[i]["example6"]);
                            rows.add(row);
                          }
                          String csv = const ListToCsvConverter().convert(rows);

                          AnchorElement()
                            ..href = '${Uri.dataFromString(csv, mimeType: 'text/csv', encoding: utf8)}'
                            ..download = 'file.csv'
                            ..style.display = 'none'
                            ..click();






                          //print(rows)









                          // for(int i = 0; i<_data.rowCount; i++){
                          //
                          //   print(_data[i]);
                          //
                          //   _data.
                          //
                          // }

                          //print(MyData()._data[5]["title"]);


                          //_data.a;

                          // print(  MyData()._data);
                        }, child: const Text('Download CSV'))
                      ],
                    ),
                    columns: const [
                      DataColumn(label: Text('ID'),),
                      DataColumn(label: Text('Name'),  ),
                      DataColumn(label: Text('Price'),  ),
                      DataColumn(label: Text('Exapmle 1'),  ),
                      DataColumn(label: Text('Exapmle 2')),
                      DataColumn(label: Text('Exapmle 3')),
                      DataColumn(label: Text('Exapmle 4')),
                      DataColumn(label: Text('Exapmle 5')),
                      DataColumn(label: Text('Exapmle 6')),
                      DataColumn(label: Text('Exapmle 7')),
                      DataColumn(label: Text('Exapmle 8')),
                      DataColumn(label: Text('Exapmle 9')),

                    ],
                    //showFirstLastButtons: true,
                    //arrowHeadColor: Colors.indigo,
                    //checkboxHorizontalMargin: 10.0,

                    columnSpacing: 100,
                    horizontalMargin: 10,
                    rowsPerPage: 15,
                    showCheckboxColumn: false,
                  ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}

// The "soruce" of the table
class MyData extends DataTableSource {
  // Generate some made-up data
  final List<Map<String, dynamic>> _data = List.generate(
      200,
          (index) => {
        "id": index,
        "title": "Item $index",
        "price": Random().nextInt(10000),
            "example1": index,
            "example2": index,
            "example3": index,
            "example4": index,
            "example5": index,
            "example6": index,
            "example7": index,
            "example8": index,
            "example9": index,


      });

  a(){
    print(_data);
  }

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => _data.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['id'].toString())),
      DataCell(Text(_data[index]["title"])),
      DataCell(Text(_data[index]["price"].toString())),
      DataCell(Text(_data[index]["example1"].toString())),
      DataCell(Text(_data[index]['example2'].toString())),
      DataCell(Text(_data[index]["example3"].toString())),
      DataCell(Text(_data[index]["example4"].toString())),
      DataCell(Text(_data[index]["example5"].toString())),
      DataCell(Text(_data[index]['example6'].toString())),
      DataCell(Text(_data[index]["example7"].toString())),
      DataCell(Text(_data[index]["example8"].toString())),
      DataCell(Text(_data[index]["example9"].toString())),

    ]);
  }
}


class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}
