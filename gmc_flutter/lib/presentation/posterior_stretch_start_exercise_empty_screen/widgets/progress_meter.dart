import 'package:flutter/material.dart';
import 'package:gmc_flutter/core/app_export.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ProgressMeter extends StatefulWidget {
  //TODO: construct this widget based on inputs from another class.
  final double startAngle;
  final double endAngle;
  final bool invertFill;
  final Color backgroundColor;
  final Color fillColor;

  ProgressMeter({
    required this.startAngle,
    required this.endAngle,
    required this.invertFill,
    required this.backgroundColor,
    required this.fillColor
  });

  @override
  State<StatefulWidget> createState() {
    return _Progress();
  }
}

class _Progress extends State<ProgressMeter> {
  double progress = 50;

  void _changeProgress(double progress) {
    setState(() {
      this.progress = progress;
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    // TODO: I can't align the top widget upwards
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: getSize(
                250),
            width: getSize(
                250),
            child: SfRadialGauge(
              axes: <RadialAxis> [RadialAxis(
                  showLabels: false,
                  showTicks: false,
                  isInversed: true, //flips the start point of the gauge
                  startAngle: widget.startAngle,
                  endAngle: widget.endAngle,
                  minimum: 0,
                  maximum: 100,
                  radiusFactor: 1,
                  canScaleToFit: true,
                  axisLineStyle: AxisLineStyle(
                  thickness: 0.25,
                  color: widget.backgroundColor, //this is the background
                  thicknessUnit: GaugeSizeUnit.factor,
                  cornerStyle: CornerStyle.startCurve,
                  ),
                  ranges: <GaugeRange>[
                    GaugeRange(
                      startValue: 0,
                      endValue: progress,
                      color: widget.fillColor,
                      startWidth: 20,
                      endWidth: 18,
                    )
                  ],
                ),
              ]
            )
        )
    );
  }
}