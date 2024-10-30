import 'package:unit7_assignment_navarra/components/tab_widget_1.dart';
import 'package:unit7_assignment_navarra/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  @override
  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView

    // This DefaultTabController uses the TabBar, Tab and TabBarView which contains
    // the components which are the TabWidget1 and TabWidget2 from the components folder.
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'About Me',
              style: TextStyle(color: Colors.white),
            ),
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: (const Color.fromARGB(255, 19, 152, 181)),
            // The TabBar utilizes icons and texts with two tabs, the 'Contacts' and 'About Me'.
            bottom: TabBar(indicatorColor: Colors.white, tabs: const <Widget>[
              Tab(
                  icon: Icon(Icons.contacts, color: Colors.white),
                  child:
                      Text('Contacts', style: TextStyle(color: Colors.white))),
              Tab(
                  icon: Icon(Icons.person, color: Colors.white),
                  child:
                      Text('About Me', style: TextStyle(color: Colors.white))),
            ]),
          ),
          // The TabBarView shows the content that was chosen or clicked by the user from the tab.
          // Visibly, there are two widgets which are the TabWidget1 and TabWidget2.
          body: TabBarView(
            children: <Widget>[
              TabWidget1(),
              TabWidget2(),
            ],
          ),
          backgroundColor: (const Color.fromARGB(255, 255, 255, 255)),
        ));
  }
}
