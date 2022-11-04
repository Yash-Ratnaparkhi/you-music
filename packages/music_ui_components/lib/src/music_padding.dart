import 'package:flutter/material.dart';

class MusicPad {
/////////////////// * main padding * ///////////////////

  static Widget paddingAll(double pad, Widget child) {
    return Padding(
      padding: EdgeInsets.all(pad),
      child: child,
    );
  }

  static Widget paddingVertical(double pad, Widget child) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: pad),
      child: child,
    );
  }

  static Widget paddingHorizontal(double pad, Widget child) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: pad),
      child: child,
    );
  }

  static Widget paddingTop(double pad, Widget child) {
    return Padding(
      padding: EdgeInsets.only(top: pad),
      child: child,
    );
  }

  static Widget paddingBottom(double pad, Widget child) {
    return Padding(
      padding: EdgeInsets.only(bottom: pad),
      child: child,
    );
  }

  static Widget paddingRight(double pad, Widget child) {
    return Padding(
      padding: EdgeInsets.only(right: pad),
      child: child,
    );
  }

  static Widget paddingLeft(double pad, Widget child) {
    return Padding(
      padding: EdgeInsets.only(left: pad),
      child: child,
    );
  }

/////////////////// * all padding * ///////////////////

  static Widget pad4All({required Widget child}) {
    return paddingAll(4, child);
  }

  static Widget pad8All({required Widget child}) {
    return paddingAll(8, child);
  }

  static Widget pad12All({required Widget child}) {
    return paddingAll(12, child);
  }

  static Widget pad16All({required Widget child}) {
    return paddingAll(16, child);
  }

  static Widget pad20All({required Widget child}) {
    return paddingAll(20, child);
  }

  static Widget pad24All({required Widget child}) {
    return paddingAll(24, child);
  }

  static Widget pad28All({required Widget child}) {
    return paddingAll(28, child);
  }

  static Widget pad32All({required Widget child}) {
    return paddingAll(32, child);
  }

  static Widget pad36All({required Widget child}) {
    return paddingAll(36, child);
  }

  static Widget pad40All({required Widget child}) {
    return paddingAll(40, child);
  }

/////////////////// * vertical padding * ///////////////////

  static Widget pad4Vertical({required Widget child}) {
    return paddingVertical(4, child);
  }

  static Widget pad8Vertical({required Widget child}) {
    return paddingVertical(8, child);
  }

  static Widget pad12Vertical({required Widget child}) {
    return paddingVertical(12, child);
  }

  static Widget pad16Vertical({required Widget child}) {
    return paddingVertical(16, child);
  }

  static Widget pad20Vertical({required Widget child}) {
    return paddingVertical(20, child);
  }

  static Widget pad24Vertical({required Widget child}) {
    return paddingVertical(24, child);
  }

  static Widget pad28Vertical({required Widget child}) {
    return paddingVertical(28, child);
  }

  static Widget pad32Vertical({required Widget child}) {
    return paddingVertical(32, child);
  }

  static Widget pad36Vertical({required Widget child}) {
    return paddingVertical(36, child);
  }

  static Widget pad40Vertical({required Widget child}) {
    return paddingVertical(40, child);
  }

/////////////////// * Horizontal padding * ///////////////////

  static Widget pad4Horizontal({required Widget child}) {
    return paddingHorizontal(4, child);
  }

  static Widget pad8Horizontal({required Widget child}) {
    return paddingHorizontal(8, child);
  }

  static Widget pad12Horizontal({required Widget child}) {
    return paddingHorizontal(12, child);
  }

  static Widget pad16Horizontal({required Widget child}) {
    return paddingHorizontal(16, child);
  }

  static Widget pad20Horizontal({required Widget child}) {
    return paddingHorizontal(20, child);
  }

  static Widget pad24Horizontal({required Widget child}) {
    return paddingHorizontal(24, child);
  }

  static Widget pad28Horizontal({required Widget child}) {
    return paddingHorizontal(28, child);
  }

  static Widget pad32Horizontal({required Widget child}) {
    return paddingHorizontal(32, child);
  }

  static Widget pad36Horizontal({required Widget child}) {
    return paddingHorizontal(36, child);
  }

  static Widget pad40Horizontal({required Widget child}) {
    return paddingHorizontal(40, child);
  }

/////////////////// * Top padding * ///////////////////

  static Widget pad4Top({required Widget child}) {
    return paddingTop(4, child);
  }

  static Widget pad8Top({required Widget child}) {
    return paddingTop(8, child);
  }

  static Widget pad12Top({required Widget child}) {
    return paddingTop(12, child);
  }

  static Widget pad16Top({required Widget child}) {
    return paddingTop(16, child);
  }

  static Widget pad20Top({required Widget child}) {
    return paddingTop(20, child);
  }

  static Widget pad24Top({required Widget child}) {
    return paddingTop(24, child);
  }

  static Widget pad28Top({required Widget child}) {
    return paddingTop(28, child);
  }

  static Widget pad32Top({required Widget child}) {
    return paddingTop(32, child);
  }

  static Widget pad36Top({required Widget child}) {
    return paddingTop(36, child);
  }

  static Widget pad40Top({required Widget child}) {
    return paddingTop(40, child);
  }

/////////////////// * Bottom padding * ///////////////////

  static Widget pad4Bottom({required Widget child}) {
    return paddingBottom(4, child);
  }

  static Widget pad8Bottom({required Widget child}) {
    return paddingBottom(8, child);
  }

  static Widget pad12Bottom({required Widget child}) {
    return paddingBottom(12, child);
  }

  static Widget pad16Bottom({required Widget child}) {
    return paddingBottom(16, child);
  }

  static Widget pad20Bottom({required Widget child}) {
    return paddingBottom(20, child);
  }

  static Widget pad24Bottom({required Widget child}) {
    return paddingBottom(24, child);
  }

  static Widget pad28Bottom({required Widget child}) {
    return paddingBottom(28, child);
  }

  static Widget pad32Bottom({required Widget child}) {
    return paddingBottom(32, child);
  }

  static Widget pad36Bottom({required Widget child}) {
    return paddingBottom(36, child);
  }

  static Widget pad40Bottom({required Widget child}) {
    return paddingBottom(40, child);
  }

/////////////////// * Left padding * ///////////////////

  static Widget pad4Left({required Widget child}) {
    return paddingLeft(4, child);
  }

  static Widget pad8Left({required Widget child}) {
    return paddingLeft(8, child);
  }

  static Widget pad12Left({required Widget child}) {
    return paddingLeft(12, child);
  }

  static Widget pad16Left({required Widget child}) {
    return paddingLeft(16, child);
  }

  static Widget pad20Left({required Widget child}) {
    return paddingLeft(20, child);
  }

  static Widget pad24Left({required Widget child}) {
    return paddingLeft(24, child);
  }

  static Widget pad28Left({required Widget child}) {
    return paddingLeft(28, child);
  }

  static Widget pad32Left({required Widget child}) {
    return paddingLeft(32, child);
  }

  static Widget pad36Left({required Widget child}) {
    return paddingLeft(36, child);
  }

  static Widget pad40Left({required Widget child}) {
    return paddingLeft(40, child);
  }

/////////////////// * Right padding * ///////////////////

  static Widget pad4Right({required Widget child}) {
    return paddingRight(4, child);
  }

  static Widget pad8Right({required Widget child}) {
    return paddingRight(8, child);
  }

  static Widget pad12Right({required Widget child}) {
    return paddingRight(12, child);
  }

  static Widget pad16Right({required Widget child}) {
    return paddingRight(16, child);
  }

  static Widget pad20Right({required Widget child}) {
    return paddingRight(20, child);
  }

  static Widget pad24Right({required Widget child}) {
    return paddingRight(24, child);
  }

  static Widget pad28Right({required Widget child}) {
    return paddingRight(28, child);
  }

  static Widget pad32Right({required Widget child}) {
    return paddingRight(32, child);
  }

  static Widget pad36Right({required Widget child}) {
    return paddingRight(36, child);
  }

  static Widget pad40Right({required Widget child}) {
    return paddingRight(40, child);
  }
}
