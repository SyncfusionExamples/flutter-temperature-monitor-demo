import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      //  brightness: Brightness.dark,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SfRadialGauge(
            axes: <RadialAxis>[
              RadialAxis(
                backgroundImage:const AssetImage('images/light_frame.png'),
                minimum: -50,
                maximum: 50,
                interval: 10,
                radiusFactor: 0.5,
                showAxisLine: false,
                labelOffset: 5,
                useRangeColorForAxis: true,
                axisLabelStyle: GaugeTextStyle(fontWeight: FontWeight.bold),
                ranges: <GaugeRange>[
                  GaugeRange(
                      startValue: -50,
                      endValue: -20,
                      sizeUnit: GaugeSizeUnit.factor,
                      color: Colors.green,
                      endWidth: 0.03,
                      startWidth: 0.03),
                  GaugeRange(
                      startValue: -20,
                      endValue: 20,
                      sizeUnit: GaugeSizeUnit.factor,
                      color: Colors.yellow,
                      endWidth: 0.03,
                      startWidth: 0.03),
                  GaugeRange(
                      startValue: 20,
                      endValue: 50,
                      sizeUnit: GaugeSizeUnit.factor,
                      color: Colors.red,
                      endWidth: 0.03,
                      startWidth: 0.03),
                ],
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                      widget: Text(
                        '°C',
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      positionFactor: 0.8,
                      angle: 90)
                ],
              ),
              RadialAxis(

                ticksPosition: ElementsPosition.outside,
                labelsPosition: ElementsPosition.outside,
                minorTicksPerInterval: 5,
                axisLineStyle: AxisLineStyle(
                  thicknessUnit: GaugeSizeUnit.factor,
                  thickness: 0.1,
                ),
                axisLabelStyle: GaugeTextStyle(

                    fontWeight: FontWeight.bold,
                    fontSize: 16),
                radiusFactor: 0.97,
                majorTickStyle: MajorTickStyle(
                    length: 0.1,
                    thickness: 2,

                    lengthUnit: GaugeSizeUnit.factor),
                minorTickStyle: MinorTickStyle(
                    length: 0.05,
                    thickness: 1.5,

                    lengthUnit: GaugeSizeUnit.factor),
                minimum: -60,
                maximum: 120,
                interval: 20,
                startAngle: 115,
                endAngle: 65,
                ranges: <GaugeRange>[
                  GaugeRange(
                      startValue: -60,
                      endValue: 120,
                      startWidth: 0.1,
                      sizeUnit: GaugeSizeUnit.factor,
                      endWidth: 0.1,
                      gradient: SweepGradient(stops: <double>[
                        0.2,
                        0.5,
                        0.75
                      ], colors: <Color>[
                        Colors.green,
                        Colors.yellow,
                        Colors.red
                      ]))
                ],
                pointers: <GaugePointer>[
                  NeedlePointer(
                      value: 60, needleColor: Colors.black,
                      tailStyle: TailStyle(length: 0.18, width: 8,
                          color: Colors.black,
                          lengthUnit: GaugeSizeUnit.factor),
                      needleLength: 0.68,
                      needleStartWidth: 1,
                      needleEndWidth: 8,
                      knobStyle: KnobStyle(knobRadius: 0.07,
                          color: Colors.white, borderWidth: 0.05,
                          borderColor: Colors.black),
                      lengthUnit: GaugeSizeUnit.factor)
                ],
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                      widget: Text(
                        '°F',
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      positionFactor: 0.8,
                      angle: 90)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
