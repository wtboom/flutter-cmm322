import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme buildTextTHI(TextTheme base) {
  return base.copyWith(
    headlineLarge: GoogleFonts.ibmPlexSansThaiTextTheme(base).headlineLarge!.copyWith(
        fontSize: 28.0, fontWeight: FontWeight.w700),
    headlineMedium: GoogleFonts.ibmPlexSansThaiTextTheme(base).headlineMedium!.copyWith(
        fontSize: 24.0, fontWeight: FontWeight.w700),
    headlineSmall: GoogleFonts.ibmPlexSansThaiTextTheme(base).headlineSmall!.copyWith(
        fontSize: 20.0, fontWeight: FontWeight.w700),
    titleLarge: GoogleFonts.ibmPlexSansThaiTextTheme(base).titleLarge!.copyWith(
        fontSize: 18.0, fontWeight: FontWeight.w500),
    titleMedium: GoogleFonts.ibmPlexSansThaiTextTheme(base).titleMedium!.copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w500),
    titleSmall: GoogleFonts.ibmPlexSansThaiTextTheme(base).titleSmall!.copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w500),
    bodyLarge: GoogleFonts.ibmPlexSansThaiTextTheme(base).bodyLarge!.copyWith(
        fontSize: 12.0, fontWeight: FontWeight.w300),
    bodyMedium: GoogleFonts.ibmPlexSansThaiTextTheme(base).bodyMedium!.copyWith(
        fontSize: 10.0, fontWeight: FontWeight.w300),
    bodySmall: GoogleFonts.ibmPlexSansThaiTextTheme(base).bodySmall!.copyWith(
        fontSize: 8.0, fontWeight: FontWeight.w300),
  );
}

TextTheme buildTextENG(TextTheme base) {
  return base.copyWith(
    headlineLarge: GoogleFonts.interTextTheme(base).headlineLarge!.copyWith(
        fontSize: 28.0, fontWeight: FontWeight.w700),
    headlineMedium: GoogleFonts.interTextTheme(base).headlineMedium!.copyWith(
        fontSize: 24.0, fontWeight: FontWeight.w700),
    headlineSmall: GoogleFonts.interTextTheme(base).headlineSmall!.copyWith(
        fontSize: 20.0, fontWeight: FontWeight.w700),
    titleLarge: GoogleFonts.interTextTheme(base).titleLarge!.copyWith(
        fontSize: 18.0, fontWeight: FontWeight.w500),
    titleMedium: GoogleFonts.interTextTheme(base).titleMedium!.copyWith(
        fontSize: 16.0, fontWeight: FontWeight.w500),
    titleSmall: GoogleFonts.interTextTheme(base).titleSmall!.copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w500),
    bodyLarge: GoogleFonts.interTextTheme(base).bodyLarge!.copyWith(
        fontSize: 12.0, fontWeight: FontWeight.w300),
    bodyMedium: GoogleFonts.interTextTheme(base).bodyMedium!.copyWith(
        fontSize: 10.0, fontWeight: FontWeight.w300),
    bodySmall: GoogleFonts.interTextTheme(base).bodySmall!.copyWith(
        fontSize: 8.0, fontWeight: FontWeight.w300),
  );
}