import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Me extends StatefulWidget {
  @override
  _MeState createState() => _MeState();
}

class _MeState extends State<Me> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(400), color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(400),
                    child: Image.asset(
                      'assets/profile.jpg',
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kevin Segaud',
                      style: Theme.of(context).textTheme.headline3.copyWith(color: Colors.white),
                    ),
                    Text(
                      'Developer Dart/Flutter Freelance',
                      style: Theme.of(context).textTheme.headline4.copyWith(color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              QrImage(
                                data: 'https://twitter.com/kleak_dev',
                                version: QrVersions.auto,
                                size: 200.0,
                                foregroundColor: Theme.of(context).accentColor,
                              ),
                              IconButton(
                                iconSize: 30,
                                onPressed: () {
                                  launch('https://twitter.com/kleak_dev');
                                },
                                icon: Image.asset(
                                  'assets/Twitter_Logo_Blue.png',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 200),
                            child: Column(
                              children: [
                                QrImage(
                                  data: 'https://github.com/kleak',
                                  version: QrVersions.auto,
                                  size: 200.0,
                                  foregroundColor: Theme.of(context).accentColor,
                                ),
                                IconButton(
                                  iconSize: 30,
                                  onPressed: () {
                                    launch('https://github.com/kleak');
                                  },
                                  icon: Image.asset(
                                    'assets/GitHub-Mark-120px-plus.png',
                                    color: Colors.white,
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
