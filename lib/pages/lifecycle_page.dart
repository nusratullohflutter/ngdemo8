import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:ngdemo8/pages/details_page.dart';

class LifecyclePage extends StatefulWidget {
  const LifecyclePage({super.key});

  @override
  State<LifecyclePage> createState() => _LifecyclePageState();
}

class _LifecyclePageState extends State<LifecyclePage>
    with WidgetsBindingObserver {
  var logger = Logger();

  _openDeatils() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return DetailsPage();
    }));
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    switch (state) {
      case AppLifecycleState.resumed:
        logger.i("resumed");
        break;
      case AppLifecycleState.inactive:
        logger.i("inactive");
        break;
      case AppLifecycleState.paused:
        logger.i("paused");
        break;
      case AppLifecycleState.detached:
        logger.i("detached");
        break;
      case AppLifecycleState.hidden:
        logger.i("hidden");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("App Lifecycle"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            _openDeatils();
          },
          color: Colors.blue,
          child: Text("Open"),
        ),
      ),
    );
  }
}
