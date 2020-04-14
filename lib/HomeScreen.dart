import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cv_app/Widgets/MyTile.dart';
import 'Widgets/SkillWidget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      minRadius: 40,
                      backgroundColor: Colors.blue,
                      backgroundImage: AssetImage("assets/images/photo.png"),
                    ),
                    Flexible(
                      flex: 10,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "PJATK student. Briefly worked as iOS Developer, currently Freelancer Flutter Developer. I am also a member of the student research group of network mobile devices.",
                          softWrap: true,
                          maxLines: 5,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.blue,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Key Skills: ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SkillWidget(
                          skill: "Flutter",
                          advancedPercentage: 0.8,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SkillWidget(
                          skill: "Swift",
                          advancedPercentage: 0.7,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SkillWidget(
                          skill: "Java",
                          advancedPercentage: 0.65,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SkillWidget(
                          skill: "HTML, CSS, JS, PHP",
                          advancedPercentage: 0.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.blue,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Languages: ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SkillWidget(
                          skill: "English",
                          advancedPercentage: 0.85,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SkillWidget(
                          skill: "German",
                          advancedPercentage: 0.6,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.blue,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Education: ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    MyTile(
                        name: "PJATK",
                        subtitle: "Computer Science 2019 - current"),
                    MyTile(
                        name: "ZS. 10 Staszic",
                        subtitle: "Computer Science 2015 - 2019"),
                  ],
                ),
              ),
              Divider(
                color: Colors.blue,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Experience: ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    MyTile(
                        name: "Flutter Developer",
                        subtitle: "Freelancer (2019 - currently)"),
                    MyTile(name: "iOS Developer", subtitle: "mPay (2019)"),
                  ],
                ),
              ),
              Divider(
                color: Colors.blue,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Hobbys: ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "In my free time I like to go to the cinema. I am also a big fan of Formula 1 and Formula E",
                        softWrap: true,
                        maxLines: 5,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.blue,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.indigo,
                      ),
                      onPressed: () {
                        _launchURL("https://github.com/Biodru");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.lightBlue,
                      ),
                      onPressed: () {
                        _launchURL("https://twitter.com/Biodru9");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.youtube,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        _launchURL(
                            "https://www.youtube.com/channel/UCPaPn74WPOhEcv79SglzNvQ?view_as=subscriber");
                      },
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 100,
                child: FlatButton(
                  onPressed: () {
                    _launchURL("mailto:piotr.brus998@gmail.com");
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.mail,
                        color: Colors.blue,
                      ),
                      Text("piotr.brus998@gmail.com"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
