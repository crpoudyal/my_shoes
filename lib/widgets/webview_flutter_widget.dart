import 'package:flutter/material.dart';
import 'package:my_shoes/constants/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewFlutterWidget extends StatefulWidget {
  const WebviewFlutterWidget({super.key});

  @override
  State<WebviewFlutterWidget> createState() => _WebviewFlutterWidgetState();
}

class _WebviewFlutterWidgetState extends State<WebviewFlutterWidget> {
  var loadingPercentage = 0;
  bool showProgessIndicator = false;
  String errorMessage = '';

  final WebViewController controller = WebViewController();

  @override
  void initState() {
    super.initState();
    contactView();
  }

  void contactView() {
    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            setState(() {
              showProgessIndicator = true;
              loadingPercentage = 0;
              debugPrint('Page started loading: $url');
            });
          },
          onProgress: (int progress) {
            setState(() {
              showProgessIndicator = true;
              loadingPercentage = progress;
              debugPrint('WebView is loading (progress : $progress%)');
            });
          },
          onPageFinished: (String url) {
            setState(() {
              showProgessIndicator = false;
              loadingPercentage = 100;
              debugPrint('Page finished loading: $url');
            });
          },
          onWebResourceError: (WebResourceError error) {
            setState(() {
              errorMessage = 'Failed....';
            });
          },
        ),
      )
      ..loadRequest(Uri.parse(Constants.googleMapLink));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
