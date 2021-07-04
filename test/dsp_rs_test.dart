import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dsp_rs/dsp_rs.dart';

void main() {
  const MethodChannel channel = MethodChannel('dsp_rs');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await DspRs.platformVersion, '42');
  });
}
