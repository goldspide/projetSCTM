import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _size = Size(120, 120);
    return Scaffold(
      body: Center(
        child: Container(
          child: AnimatedCircularChart(
            size: _size,
            initialChartData: const <CircularStackEntry>[
              CircularStackEntry(
                <CircularSegmentEntry>[
                  CircularSegmentEntry(20.00, Color(0xFFC41A3B),
                      rankKey: 'completed'),
                  CircularSegmentEntry(80.00, Color(0xFF181F32),
                      rankKey: 'Remaining'),
                ],
                rankKey: 'progress',
              ),
            ],
            chartType: CircularChartType.Radial,
            percentageValues: true,
            holeLabel: '  200 \nTotal',
            labelStyle: GoogleFonts.ubuntu(
              color: const Color(0xFFC41A38),
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
