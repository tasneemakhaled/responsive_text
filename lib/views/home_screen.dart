import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Responsive Text Example')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Title Text',
            style: TextStyle(
              fontSize: getResponsiveFontSize(context, fontSize: 20),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'This is body text . It should be responsive to the screen size.',
            style: TextStyle(
              fontSize: getResponsiveFontSize(context, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

// scale factor
// responsive font size
//(min,max)size
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * fontSize;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
