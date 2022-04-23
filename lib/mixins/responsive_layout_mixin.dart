import 'package:flutter/widgets.dart';

class ResponsiveLayoutMixin {
  ResponsiveLayoutMixin._();

  static double getScreenHeight(BuildContext context) => MediaQuery.of(context).size.height;

  static double getScreenWidth(BuildContext context) => MediaQuery.of(context).size.width;

  static double getContentHeight(BuildContext context, {bool safeAreaPadding = true, bool keyboardHeight = true}) {
    double heightToReturn = getScreenHeight(context);

    if (safeAreaPadding) {
      heightToReturn - MediaQuery.of(context).padding.top;
    }

    if (keyboardHeight) {
      heightToReturn - MediaQuery.of(context).viewInsets.bottom;
    }

    return heightToReturn;
  }
}
