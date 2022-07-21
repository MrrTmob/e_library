import 'package:flutter/material.dart';

class ShadowDecoration extends BoxDecoration{
  const ShadowDecoration._();
  static ShadowDecoration? _decoration;

  static BoxDecoration get instance{
    if(_decoration == null){
      return _decoration = const ShadowDecoration._();
    }else{
      return _decoration!;
    }
  }

  @override
  // TODO: implement borderRadius
  BorderRadiusGeometry? get borderRadius => BorderRadius.circular(12.0);
  @override
  // TODO: implement color
  Color? get color => Colors.white;

  @override
  // TODO: implement boxShadow
  List<BoxShadow>? get boxShadow => [
    BoxShadow(color: Colors.black.withAlpha(24), blurRadius: 12.0)
  ];


  // @override
  // BoxPainter createBoxPainter([VoidCallback? onChanged]) {
  //   // TODO: implement createBoxPainter
  //   return _ShadowPainter.instance;
  // }
}

// class _ShadowPainter extends BoxPainter{
//
//   const _ShadowPainter._();
//   static _ShadowPainter? _painter;
//
//   static _ShadowPainter get instance{
//     if(_painter == null){
//       return _painter = const _ShadowPainter._();
//     }else{
//       return _painter!;
//     }
//   }
//
//   @override
//   void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
//     // TODO: implement paint
//     final width = configuration.size!.width;
//     final height = configuration.size!.height;
//     final path = Path()
//       ..moveTo(0, 0)
//       ..addRRect(RRect.fromRectAndRadius(Rect.fromLTWH(0, 0, width, height), const Radius.circular(12.0)));
//     canvas.drawShadow(path, Colors.black.withAlpha(55), 55.0, true);
//     canvas.drawPath(path, Paint()..color = Colors.white);
//   }
// }