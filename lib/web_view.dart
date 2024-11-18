import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'dart:io';

class InAppWebViewFileUploadPage extends StatefulWidget {
  const InAppWebViewFileUploadPage({super.key});

  @override
  _InAppWebViewFileUploadPageState createState() =>
      _InAppWebViewFileUploadPageState();
}

class _InAppWebViewFileUploadPageState
    extends State<InAppWebViewFileUploadPage> {
  @override
  void initState() {
    super.initState();

    if (Platform.isAndroid) {
      // Enable debugging for Android
      InAppWebViewController.setWebContentsDebuggingEnabled(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("InAppWebView File Upload"),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: WebUri(
              "http://ng-app.com/DigitechAfrican/torliga-football-landing-otp-en-doi-web?trfsrc=torligaapp&trxId=Mtn-app"),
        ),
        onWebViewCreated: (controller) {},
        onLoadStop: (controller, url) {
          print("Page loaded: $url");
        },
        shouldOverrideUrlLoading: (controller, navigationAction) async {
          return null;

        },
      ),
    );
  }
}
