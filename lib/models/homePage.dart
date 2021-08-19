import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:team_application/models/allPages/calendarPage.dart';
import 'package:team_application/models/allPages/courses.dart';
import 'package:team_application/models/allPages/figma.dart';
import 'package:team_application/models/allPages/screens/comment/comment.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 1;
  var pageList = [BodyFigma(), Courses(), CommentPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 73, 83, 1),
      body: pageList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Colors.white12,
        unselectedItemColor: Colors.white38,
        selectedItemColor: Color(0xff13d38e),
        elevation: 0.0,
        items: [
          navigationBars(CupertinoIcons.suit_heart_fill, false, "Favorite"),
          navigationBars(CupertinoIcons.house_alt_fill, true, "Home"),
          navigationBars(CupertinoIcons.ellipses_bubble_fill, false, "Chat"),
        ],
        onTap: (e) {
          setState(() {
            currentIndex = e;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  BottomNavigationBarItem navigationBars(icons, circle, title) {
    if (circle) {
      return BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundColor: Color(0xff13d38e),
            child: Icon(icons, color: Colors.white),
            radius: 28.0,
          ),
          label: title);
    }
    return BottomNavigationBarItem(icon: Icon(icons), label: title);
  }
}

class HomeUI extends StatefulWidget {
  HomeUI({Key? key}) : super(key: key);
  final List<Color> availableColors = [
    Color(0xff72d8bf),
    Colors.redAccent,
  ];

  @override
  _HomeUIState createState() => _HomeUIState();
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}

class ChartData2 {
  ChartData2(this.x, this.high, this.low);
  final String x;
  final double high;
  final double low;
}

class _HomeUIState extends State<HomeUI> {
  int touchedIndex1 = -1;
  late bool isShowingMainData;
  final Duration animDuration = const Duration(milliseconds: 250);
  List<Color> gradientColors = [
    const Color(0xff13d38e).withOpacity(0.3),
    const Color(0xff13d38e),
  ];
  int touchedIndex2 = -1;
  bool showAvg = false;
  bool isPlaying = false;

  final List<ChartData> chartData = [
    ChartData('Fire', 24),
    ChartData('Broccoli', 28),
    ChartData('Grapes', 34),
    ChartData('Cheese', 38),
    ChartData('Other', 42)
  ];
  late TooltipBehavior _tooltipBehavior;

  final List<ChartData> chartData2 = <ChartData>[
    ChartData('to start working', 2000, Color.fromRGBO(255, 87, 95, 1)),
    ChartData('to start working', 3000, Color.fromRGBO(255, 197, 66, 1)),
    ChartData('to start working', 2600, Color.fromRGBO(61, 213, 152, 1)),
  ];

  @override
  void initState() {
    super.initState();
    _tooltipBehavior = TooltipBehavior(enable: true);
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 73, 83, 1),
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              title: Text(
                "Statistic",
                style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(24.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    circleChart(),
                    columnChart(),
                    uploadFile(),
                    statisticsChart(),
                    snackChart(),
                    calendarCharacter(),
                    pyramidChart(),
                    radialBarChart(),
                    rangeColumnChart(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget uploadFile() {
    return Container(
      height: 270.0,
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: Color.fromRGBO(255, 86, 94, 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              "Upload file",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
            ),
            flex: 2,
          ),
          Expanded(
            child: Text(
              "It looks like you are on track. Please continue to follow your daily plan",
              style: TextStyle(color: Colors.white),
            ),
            flex: 4,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(color: Colors.white),
              ),
              child: CircleAvatar(
                radius: 36.0,
                backgroundColor: Colors.white38,
                child: CircleAvatar(
                  radius: 32.0,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Icon(
                      CupertinoIcons.cloud_upload_fill,
                      color: Color.fromRGBO(255, 86, 94, 1),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            flex: 12,
          ),
        ],
      ),
    );
  }

  Widget rangeColumnChart() {
    return Container(
      height: 260.0,
      margin: EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: Colors.white12,
      ),
      child: SfCartesianChart(
        isTransposed: true,
        title: ChartTitle(
          text: "Statistics",
          alignment: ChartAlignment.near,
          textStyle:
              TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        primaryYAxis: CategoryAxis(labelStyle: TextStyle(color: Colors.white)),
        primaryXAxis: CategoryAxis(labelStyle: TextStyle(color: Colors.white)),
        series: <ChartSeries>[
          RangeColumnSeries<ChartData2, String>(
            borderRadius: BorderRadius.circular(16.0),
            color: Color.fromRGBO(61, 213, 152, 1),
            dataSource: <ChartData2>[
              ChartData2('Jan', 3, 35),
              ChartData2('Feb', 4, 42),
              ChartData2('Mar', 6, 54),
              ChartData2('Apr', 9, 65),
              ChartData2('May', 12, 87),
            ],
            xValueMapper: (ChartData2 sales, _) => sales.x,
            lowValueMapper: (ChartData2 sales, _) => sales.high,
            highValueMapper: (ChartData2 sales, _) => sales.low,
          ),
        ],
      ),
    );
  }

  Widget radialBarChart() {
    return Container(
      height: 160.0,
      margin: EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: Colors.white12,
      ),
      child: SfCircularChart(
        legend: Legend(
          isVisible: true,
          textStyle: TextStyle(color: Colors.white54),
          title: LegendTitle(
              text: "Weekly progress",
              //alignment: ChartAlignment.near,
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600)),
        ),
        series: <CircularSeries<ChartData, String>>[
          RadialBarSeries<ChartData, String>(
              trackColor: Color.fromRGBO(32, 73, 83, 1),
              maximumValue: 6000,
              radius: '100%',
              gap: '15%',
              innerRadius: "%15",
              dataSource: chartData2,
              cornerStyle: CornerStyle.bothCurve,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              pointColorMapper: (ChartData data, _) => data.color)
        ],
      ),
    );
  }

  Widget pyramidChart() {
    return Container(
      height: 280.0,
      margin: EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: Colors.white12,
      ),
      child: SfPyramidChart(
        palette: <Color>[
          Color.fromRGBO(62, 213, 152, 1),
          Color.fromRGBO(62, 193, 152, 1),
          Color.fromRGBO(62, 173, 152, 1),
          Color.fromRGBO(62, 163, 152, 1),
          Color.fromRGBO(62, 156, 152, 1)
        ],
        legend:
            Legend(isVisible: true, textStyle: TextStyle(color: Colors.white)),
        tooltipBehavior: _tooltipBehavior,
        title: ChartTitle(
            text: "Statistic",
            alignment: ChartAlignment.near,
            textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18.0)),
        series: PyramidSeries<ChartData, String>(
          dataSource: chartData,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          dataLabelSettings: DataLabelSettings(
            textStyle: TextStyle(color: Colors.white, fontSize: 10.0),
            isVisible: true,
            labelPosition: ChartDataLabelPosition.inside,
            connectorLineSettings:
                ConnectorLineSettings(type: ConnectorType.curve),
            showZeroValue: false,
          ),
        ),
      ),
    );
  }

  Widget calendarCharacter() {
    return Theme(
      data: ThemeData(
        accentColor: Colors.white,
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CalendarPage()));
        },
        child: Container(
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.symmetric(vertical: 16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: Colors.white12,
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.redAccent.shade200,
                    borderRadius: BorderRadius.circular(8.0)),
                padding: EdgeInsets.all(12.0),
                child: ImageIcon(
                  AssetImage("assets/images/Calendar.png"),
                  color: Colors.white,
                  size: 28.0,
                ),
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Calendar",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Icon(
                          CupertinoIcons.forward,
                          color: Colors.redAccent.shade200,
                          size: 18.0,
                        )
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Container(
                      height: 8.0,
                      decoration: BoxDecoration(
                          color: Colors.redAccent.shade200,
                          borderRadius: BorderRadius.circular(16.0)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget snackChart() {
    return Container(
      height: 240.0,
      margin: EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: Colors.white12,
      ),
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 46,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Statistic',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w900),
                      ),
                      flex: 4,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            height: 8.0,
                            width: 8.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56.0),
                              color: Colors.redAccent.shade200,
                            ),
                          ),
                          SizedBox(width: 8.0),
                          SizedBox(
                              child: Text(
                            "Bitcoin",
                            softWrap: false,
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.0),
                          )),
                        ],
                      ),
                      flex: 2,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 8.0,
                          width: 8.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(56.0),
                            color: Colors.yellow.shade600,
                          ),
                        ),
                        SizedBox(width: 8.0),
                        SizedBox(
                            child: Text(
                          "Ethereum",
                          softWrap: false,
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                child: _LineChart(isShowingMainData: isShowingMainData),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.white.withOpacity(isShowingMainData ? 1.0 : 0.5),
            ),
            onPressed: () {
              setState(() {
                isShowingMainData = !isShowingMainData;
              });
            },
          )
        ],
      ),
    );
  }

  Widget statisticsChart() {
    return Container(
      height: 240.0,
      margin: EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: Colors.white12,
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                right: 18.0, left: 12.0, top: 24, bottom: 12),
            child: LineChart(
              showAvg ? avgData() : mainData(),
            ),
          ),
          SizedBox(
            width: 60,
            height: 34,
            child: TextButton(
              onPressed: () {
                setState(() {
                  showAvg = !showAvg;
                });
              },
              child: Text(
                'avg',
                style: TextStyle(
                    fontSize: 12,
                    color:
                        showAvg ? Colors.white.withOpacity(0.5) : Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget columnChart() {
    return Container(
      height: 240.0,
      margin: EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: Colors.white12,
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const SizedBox(
                  height: 38,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: BarChart(
                      isPlaying ? randomData() : mainBarData(),
                      swapAnimationDuration: animDuration,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(
                  isPlaying ? Icons.pause : Icons.play_arrow,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    isPlaying = !isPlaying;
                    if (isPlaying) {
                      refreshState();
                    }
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget circleChart() {
    return Container(
      height: 164.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: Colors.white12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(touchCallback: (pieTouchResponse) {
                    setState(() {
                      final desiredTouch =
                          pieTouchResponse.touchInput is! PointerExitEvent &&
                              pieTouchResponse.touchInput is! PointerUpEvent;
                      if (desiredTouch &&
                          pieTouchResponse.touchedSection != null) {
                        touchedIndex1 = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      } else {
                        touchedIndex1 = -1;
                      }
                    });
                  }),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 46,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Weekly progress",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8.0),
                weeklyProgressFunk(Color(0xfff8b250)),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  child: weeklyProgressFunk(Colors.redAccent),
                ),
                weeklyProgressFunk(Color(0xff13d38e)),
              ],
            ),
          )
        ],
      ),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.white38,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: false,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => const TextStyle(
            color: Colors.white38,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '0k';
              case 2:
                return '2k';
              case 3:
                return '4k';
              case 4:
                return '6k';
              case 5:
                return '8k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true, border: Border.all(color: Colors.white38, width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 4,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
                gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: Colors.white38,
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.white38,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(showTitles: false),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => const TextStyle(
            color: Colors.white38,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '0k';
              case 2:
                return '2k';
              case 3:
                return '4k';
              case 4:
                return '6k';
              case 5:
                return '8k';
            }
            return '';
          },
          reservedSize: 22,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true, border: Border.all(color: Colors.white38, width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!,
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!,
          ],
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(show: true, colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!
                .withOpacity(0.1),
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)!
                .withOpacity(0.1),
          ]),
        ),
      ],
    );
  }

  Widget weeklyProgressFunk(Color colorF) {
    return Row(
      children: [
        Container(
          height: 8.0,
          width: 14.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(56.0),
            color: colorF,
          ),
        ),
        SizedBox(width: 8.0),
        SizedBox(
            child: Text(
          "to start working",
          softWrap: false,
          style: TextStyle(color: Colors.white54, fontSize: 10.0),
        )),
      ],
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex1;
      final fontSize = isTouched ? 20.0 : 12.0;
      final radius = isTouched ? 15.0 : 10.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.redAccent,
            value: 10,
            title: '',
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: Color(0xff13d38e),
            value: 40,
            title: '',
            radius: radius,
          );
        case 2:
          return PieChartSectionData(
            color: Color.fromRGBO(32, 73, 83, 1),
            value: 40,
            title: '',
            radius: radius,
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 60,
            title: '',
            radius: radius,
          );
        default:
          throw Error();
      }
    });
  }

  BarChartData mainBarData() {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
            tooltipBgColor: Colors.blueGrey,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              String weekDay;
              switch (group.x.toInt()) {
                case 0:
                  weekDay = 'Monday';
                  break;
                case 1:
                  weekDay = 'Tuesday';
                  break;
                case 2:
                  weekDay = 'Wednesday';
                  break;
                case 3:
                  weekDay = 'Thursday';
                  break;
                case 4:
                  weekDay = 'Friday';
                  break;
                case 5:
                  weekDay = 'Saturday';
                  break;
                case 6:
                  weekDay = 'Sunday';
                  break;
                default:
                  throw Error();
              }
              return BarTooltipItem(
                weekDay + '\n',
                TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: (rod.y - 1).toString(),
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              );
            }),
        touchCallback: (barTouchResponse) {
          setState(() {
            if (barTouchResponse.spot != null &&
                barTouchResponse.touchInput is! PointerUpEvent &&
                barTouchResponse.touchInput is! PointerExitEvent) {
              touchedIndex2 = barTouchResponse.spot!.touchedBarGroupIndex;
            } else {
              touchedIndex2 = -1;
            }
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context,value) => const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12),
          margin: 16,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'MON';
              case 1:
                return 'TUE';
              case 2:
                return 'WED';
              case 3:
                return 'THU';
              case 4:
                return 'FRI';
              case 5:
                return 'SAT';
              case 6:
                return 'SUN';
              default:
                return '';
            }
          },
        ),
        leftTitles: SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: showingGroups(),
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, 5, isTouched: i == touchedIndex2);
          case 1:
            return makeGroupData(1, 6.5, isTouched: i == touchedIndex2);
          case 2:
            return makeGroupData(2, 5, isTouched: i == touchedIndex2);
          case 3:
            return makeGroupData(3, 7.5, isTouched: i == touchedIndex2);
          case 4:
            return makeGroupData(4, 9, isTouched: i == touchedIndex2);
          case 5:
            return makeGroupData(5, 11.5, isTouched: i == touchedIndex2);
          case 6:
            return makeGroupData(6, 6.5, isTouched: i == touchedIndex2);
          default:
            return throw Error();
        }
      });

  BarChartGroupData makeGroupData(
    int x,
    double y, {
    bool isTouched = false,
    Color barColor = Colors.white,
    double width = 12,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          y: isTouched ? y + 1 : y,
          colors: isTouched ? [Colors.yellow] : [barColor],
          width: width,
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            y: 20,
            colors: [Color.fromRGBO(32, 73, 83, 1)],
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  BarChartData randomData() {
    return BarChartData(
      barTouchData: BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context,value) => const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12),
          margin: 16,
          getTitles: (double value) {
            switch (value.toInt()) {
              case 0:
                return 'MON';
              case 1:
                return 'TUE';
              case 2:
                return 'WED';
              case 3:
                return 'THU';
              case 4:
                return 'FRI';
              case 5:
                return 'SAT';
              case 6:
                return 'SUN';
              default:
                return '';
            }
          },
        ),
        leftTitles: SideTitles(
          showTitles: false,
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                    Random().nextInt(widget.availableColors.length)]);
          case 1:
            return makeGroupData(1, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                    Random().nextInt(widget.availableColors.length)]);
          case 2:
            return makeGroupData(2, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                    Random().nextInt(widget.availableColors.length)]);
          case 3:
            return makeGroupData(3, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                    Random().nextInt(widget.availableColors.length)]);
          case 4:
            return makeGroupData(4, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                    Random().nextInt(widget.availableColors.length)]);
          case 5:
            return makeGroupData(5, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                    Random().nextInt(widget.availableColors.length)]);
          case 6:
            return makeGroupData(6, Random().nextInt(15).toDouble() + 6,
                barColor: widget.availableColors[
                    Random().nextInt(widget.availableColors.length)]);
          default:
            return throw Error();
        }
      }),
    );
  }

  Future<dynamic> refreshState() async {
    setState(() {});
    await Future<dynamic>.delayed(
        animDuration + const Duration(milliseconds: 50));
    if (isPlaying) {
      await refreshState();
    }
  }
}

class _LineChart extends StatelessWidget {
  const _LineChart({required this.isShowingMainData});

  final bool isShowingMainData;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      isShowingMainData ? sampleData1 : sampleData2,
      swapAnimationDuration: const Duration(milliseconds: 250),
    );
  }

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: 14,
        maxY: 4,
        minY: 0,
      );

  LineChartData get sampleData2 => LineChartData(
        lineTouchData: lineTouchData2,
        gridData: gridData,
        titlesData: titlesData2,
        borderData: borderData,
        lineBarsData: lineBarsData2,
        minX: 0,
        maxX: 14,
        maxY: 6,
        minY: 0,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        touchCallback: (LineTouchResponse touchResponse) {},
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData1 =>
      FlTitlesData(bottomTitles: SideTitles(), leftTitles: SideTitles());

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
        lineChartBarData1_2,
      ];

  LineTouchData get lineTouchData2 => LineTouchData(
        enabled: false,
      );

  FlTitlesData get titlesData2 =>
      FlTitlesData(bottomTitles: SideTitles(), leftTitles: SideTitles());

  List<LineChartBarData> get lineBarsData2 => [
        lineChartBarData2_1,
        lineChartBarData2_2,
      ];

  FlGridData get gridData => FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: Colors.transparent),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        colors: [Colors.redAccent.shade100],
        barWidth: 3,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: [
          FlSpot(1, 1),
          FlSpot(3, 1.5),
          FlSpot(5, 1.4),
          FlSpot(7, 3.4),
          FlSpot(10, 2),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
        ],
      );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
        isCurved: true,
        colors: [Color(0xfff8b250)],
        barWidth: 3,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false, colors: [
          const Color(0x00aa4cfc),
        ]),
        spots: [
          FlSpot(1, 1),
          FlSpot(3, 2.8),
          FlSpot(7, 1.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
        ],
      );

  LineChartBarData get lineChartBarData2_1 => LineChartBarData(
        isCurved: true,
        curveSmoothness: 0,
        colors: [Colors.redAccent.withOpacity(0.4)],
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: [
          FlSpot(1, 1),
          FlSpot(3, 4),
          FlSpot(5, 1.8),
          FlSpot(7, 5),
          FlSpot(10, 2),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
        ],
      );

  LineChartBarData get lineChartBarData2_2 => LineChartBarData(
        isCurved: true,
        colors: [Color(0xfff8b250)],
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(
          show: true,
          colors: [
            Color(0xfff8b250).withOpacity(0.3),
          ],
        ),
        spots: [
          FlSpot(1, 1),
          FlSpot(3, 2.8),
          FlSpot(7, 1.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
        ],
      );
}
