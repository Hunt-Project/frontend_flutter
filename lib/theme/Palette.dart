import 'package:flutter/material.dart';

enum CN{
  primary,
  primary10p,
  secondary,
  accent,
  error,
  disabled,
  ok,
  warning,
  background,
  black,
  black2,
  black3,
  black4,
  grey,
}

const palette = <CN, Color>{
  CN.primary: Color(0xFF704300),
  CN.primary10p: Color.fromARGB(25, 112, 67, 0),
  CN.secondary: Color(0xFFB06A00),
  CN.accent: Color(0xFF09051B),
  CN.error: Color(0xFFA51515),
  CN.disabled: Color(0xFFD3D3D3),
  CN.ok: Color(0xFF63B224),
  CN.warning: Color(0xFFD8C30B),
  CN.background: Color(0xFFCFB997),
  CN.black: Color(0xFF000000),
  CN.black2: Color(0xFF0F0F0F),
  CN.black3: Color(0xFF1E1E1E),
  CN.black4: Color(0x88000000),
  CN.grey: Color(0xFF5A6266),
};
