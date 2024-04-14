import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://github.com/kyomin');

class HomeScreen extends StatelessWidget {
  // Constructor
  HomeScreen({super.key});

  // Variables
  WebViewController controller = WebViewController()..loadRequest(homeUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Web View',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
