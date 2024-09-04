import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../widgets/app_widgets.dart';

var logger = Logger();
var appWidget = AppWidgets();

const mainPadding = 20.0;
double mainPaddingW = 20.0;
double mainPaddingH = 20.0;
double borderRadius = 10.0;

double buttonSize = 30;
const defaultBorderRadius = 8.0;
double widgetToTitlePadding = 12;

const defaultPadding = EdgeInsets.all(12);
const smallPadding = EdgeInsets.all(8);
final defaultBorder = BorderRadius.circular(12);

EdgeInsetsGeometry mainPaddingAll =
const EdgeInsets.symmetric(horizontal: mainPadding, vertical: mainPadding);

EdgeInsetsGeometry mainPaddingAllWH =
EdgeInsets.symmetric(horizontal: mainPaddingW, vertical: mainPaddingH);

EdgeInsetsGeometry mainPaddingWidthOnly =
const EdgeInsets.symmetric(horizontal: mainPadding);

EdgeInsetsGeometry mainPaddingWidthOnlyW =
EdgeInsets.symmetric(horizontal: mainPaddingW);

EdgeInsetsGeometry mainPaddingHeightOnly =
EdgeInsets.symmetric(vertical: mainPaddingH);

var borderCircular = BorderRadius.circular(borderRadius);

EdgeInsetsGeometry mainPaddingSymmetric(double amount) {
  return EdgeInsets.symmetric(horizontal: amount, vertical: amount);
}