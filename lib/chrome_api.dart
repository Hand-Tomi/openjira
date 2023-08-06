// JavaScriptのファイル名を指定
@JS()
library chrome_api;

import 'package:js/js.dart';
import 'package:js/js_util.dart';

// JavaScriptのメソッドを指定
@JS('getUrl')
external Object _getUrl();

Future<String> getUrl() async {
  // `promiseToFuture` メソッドを使い、JavaScriptのPromiseをDartのFutureに変換
  return promiseToFuture<String>(_getUrl());
}