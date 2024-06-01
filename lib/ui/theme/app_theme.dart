import 'package:flutter/material.dart';
import 'package:task_track/ui/ui.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme => ThemeData(
        fontFamily: FontNames.proximaNova,
        visualDensity: VisualDensity.standard,
        scaffoldBackgroundColor: Palette.background,
        splashColor: Palette.dark,
        floatingActionButtonTheme: _floatingActionButtonTheme,
        dialogTheme: _dialogTheme,
        bottomSheetTheme: _bottomSheetTheme,
        elevatedButtonTheme: _elevatedButtonTheme,
        checkboxTheme: _checkboxTheme,
        appBarTheme: _appBarTheme,
        iconTheme: _iconTheme,
        cardTheme: _cardTheme,
        tabBarTheme: _tabBarTheme,
        inputDecorationTheme: _inputDecorationTheme,
        dividerTheme: _dividerTheme,
      );
  static CardTheme get _cardTheme => CardTheme(
        elevation: 0.0,
        color: Palette.light,
        margin: EdgeInsets.zero,
        shape: _circularBorderRadius,
      );

  static DividerThemeData get _dividerTheme => const DividerThemeData(
        space: 1.0,
        thickness: 1.0,
        color: Palette.textDisabled,
      );

  static InputDecorationTheme get _inputDecorationTheme => InputDecorationTheme(
        prefixIconColor: Palette.primary,
        suffixIconColor: Palette.primary,
        filled: true,
        isDense: true,
        errorMaxLines: 2,
        alignLabelWithHint: true,
        fillColor: Palette.light,
        contentPadding: const EdgeInsets.all(12.0),
        border: outlinedInputBorder(Palette.textDisabled),
        enabledBorder: outlinedInputBorder(Palette.textDisabled),
        disabledBorder: outlinedInputBorder(Palette.textDisabled),
        focusedBorder: outlinedInputBorder(Palette.primary),
        errorBorder: outlinedInputBorder(Palette.error),
        focusedErrorBorder: outlinedInputBorder(Palette.error),
        labelStyle: TextStyles.bodyLarge.withColor(Palette.textDisabled),
        errorStyle: TextStyles.bodySmall.withColor(Palette.error),
        floatingLabelStyle: TextStyles.bodyRegular.withColor(Palette.primary),
      );

  static OutlineInputBorder outlinedInputBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.circular(8.0),
    );
  }

  static TabBarTheme get _tabBarTheme => TabBarTheme(
        dividerHeight: 0.0,
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle: TextStyles.bodyRegular.semibold,
        unselectedLabelStyle: TextStyles.bodyRegular.semibold,
        labelColor: Palette.primary,
        unselectedLabelColor: Palette.textDisabled,
        labelPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      );

  static FloatingActionButtonThemeData get _floatingActionButtonTheme =>
      FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(64.0),
        ),
      );

  static DialogTheme get _dialogTheme => const DialogTheme(
        elevation: 4.0,
        backgroundColor: Palette.light,
        surfaceTintColor: Palette.light,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      );

  static BottomSheetThemeData get _bottomSheetTheme =>
      const BottomSheetThemeData(
        elevation: 4.0,
        clipBehavior: Clip.antiAlias,
        backgroundColor: Palette.light,
        surfaceTintColor: Palette.light,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
        ),
      );

  static ElevatedButtonThemeData get _elevatedButtonTheme =>
      ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(0.0),
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
          ),
          shape: WidgetStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          ),
          foregroundColor: WidgetStateProperty.all(Palette.light),
          backgroundColor: WidgetStateProperty.resolveWith(
            (state) => state.contains(WidgetState.disabled)
                ? Palette.textSecondary
                : Palette.primary,
          ),
        ),
      );

  static CheckboxThemeData get _checkboxTheme => CheckboxThemeData(
        shape: _circularBorderRadius,
        side: const BorderSide(color: Palette.textDisabled),
        fillColor:
            WidgetStateProperty.resolveWith((state) => Palette.textDisabled),
        checkColor: WidgetStateProperty.resolveWith(
          (state) => state.contains(WidgetState.selected)
              ? Palette.primary
              : Palette.textDisabled,
        ),
      );

  static RoundedRectangleBorder get _circularBorderRadius =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      );

  static AppBarTheme get _appBarTheme => AppBarTheme(
        elevation: 0.0,
        centerTitle: false,
        titleSpacing: 0.0,
        iconTheme: _iconTheme,
        actionsIconTheme: _iconTheme,
        backgroundColor: Palette.light,
        surfaceTintColor: Palette.light,
        titleTextStyle: TextStyles.bodyLarge.semibold,
      );

  static IconThemeData get _iconTheme => const IconThemeData(
        size: 20.0,
        color: Palette.primary,
      );
}
