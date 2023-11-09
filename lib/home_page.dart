import 'package:flutter/material.dart';
import 'sidebar.dart';
import 'Addition/constants.dart';
import 'calculator_page.dart';
import 'bmi_calculator.dart';
import 'biodata_page.dart';
import 'graph_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

  List<String> scheduleDays = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];

  @override
  Widget build(BuildContext context) {
    double buttonHeight = MediaQuery.of(context).size.height * 0.25 / 2;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: primaryButtonColor,
      ),
      drawer: SideBar(),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            child: PageView(
              controller: _pageController,
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: buttonHeight,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => CalculatorPage()),
                                );
                              },
                              icon: Icon(
                                Icons.calculate,
                                size: 60,
                              ),
                              label: Text('Calculator'),
                              style: ElevatedButton.styleFrom(
                                primary: primaryButtonColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: buttonHeight,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => BMICalculatorPage()),
                                );
                              },
                              icon: Icon(
                                Icons.accessibility,
                                size: 60,
                              ),
                              label: Text('BMI Calculator'),
                              style: ElevatedButton.styleFrom(
                                primary: primaryButtonColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: buttonHeight,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => GraphPage()),
                                );
                              },
                              icon: Icon(
                                Icons.insert_chart,
                                size: 60,
                              ),
                              label: Text('Graph'),
                              style: ElevatedButton.styleFrom(
                                primary: primaryButtonColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: buttonHeight,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => BiodataPage()),
                                );
                              },
                              icon: Icon(
                                Icons.person,
                                size: 60,
                              ),
                              label: Text('Biodata'),
                              style: ElevatedButton.styleFrom(
                                primary: primaryButtonColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      color: secondaryButtonColor,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              scheduleDays[index],
                              style: secondaryTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      color: secondaryButtonColor,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Example Class",
                              style: secondaryTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
