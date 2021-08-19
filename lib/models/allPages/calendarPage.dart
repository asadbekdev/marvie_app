import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 73, 83, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                child: Row(
                  children: [
                    InkWell(
                        child: Icon(
                          CupertinoIcons.back,
                          color: Colors.white54,
                        ),
                        onTap: () => Navigator.pop(context)),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: Text(
                        "Back",
                        style: TextStyle(
                            fontWeight: FontWeight.w900, color: Colors.white54),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        CupertinoIcons.search,
                        color: Colors.white54,
                        size: 24.0,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 8.0),
                    Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: Color(0xff13d38e),
                      ),
                      child: Icon(CupertinoIcons.add, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white12,
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Selected range: ' + _range,
                      style: TextStyle(color: Colors.white),
                    ),
                    Divider(color: Colors.white),
                    SfDateRangePicker(
                      headerStyle: DateRangePickerHeaderStyle(
                          textStyle: TextStyle(color: Colors.white)),
                      yearCellStyle: DateRangePickerYearCellStyle(
                          textStyle: TextStyle(color: Colors.white)),
                      monthCellStyle: DateRangePickerMonthCellStyle(
                          textStyle: TextStyle(color: Colors.white)),
                      rangeTextStyle: TextStyle(color: Colors.white),
                      onSelectionChanged: _onSelectionChanged,
                      selectionMode: DateRangePickerSelectionMode.range,
                      initialSelectedRange: PickerDateRange(
                          DateTime.now().subtract(const Duration(days: 4)),
                          DateTime.now().add(const Duration(days: 3))),
                    ),
                    listTiles(Colors.redAccent.shade200, "1st"),
                    Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Divider(color: Colors.white)),
                    listTiles(Color(0xfff8b250), "2nd"),
                    Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Divider(color: Colors.white)),
                    listTiles(Color(0xff13d38e), "3rd")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget listTiles(Color colorF, String orn) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: colorF,
        ),
        child: Icon(
          CupertinoIcons.time_solid,
          color: Colors.white,
          size: 16.0,
        ),
      ),
      title: Text(
        "$orn Event",
        style: TextStyle(color: Colors.white, fontSize: 18.0),
      ),
      trailing: Icon(
        CupertinoIcons.forward,
        color: Colors.white,
      ),
      onTap: () {},
    );
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    /// The argument value will return the changed date as [DateTime] when the
    /// widget [SfDateRangeSelectionMode] set as single.
    ///
    /// The argument value will return the changed dates as [List<DateTime>]
    /// when the widget [SfDateRangeSelectionMode] set as multiple.
    ///
    /// The argument value will return the changed range as [PickerDateRange]
    /// when the widget [SfDateRangeSelectionMode] set as range.
    ///
    /// The argument value will return the changed ranges as
    /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
    /// multi range.
    setState(() {
      if (args.value is PickerDateRange) {
        _range =
            DateFormat('dd/MM/yyyy').format(args.value.startDate).toString() +
                ' - ' +
                DateFormat('dd/MM/yyyy')
                    .format(args.value.endDate ?? args.value.startDate)
                    .toString();
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }
}
