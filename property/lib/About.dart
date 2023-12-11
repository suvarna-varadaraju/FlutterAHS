import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:property/Colours.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:video_player/video_player.dart';

class About extends StatefulWidget {
  About({super.key});

  @override
  State<About> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<About> {
  late VideoPlayerController _controller;
  Color _containerColor2017 = ColorConstants.kPrimaryColor;
  Color _containerColor2018 = ColorConstants.lite_gold;
  Color _containerColor2019 = ColorConstants.lite_gold;
  Color _containerColor2020 = ColorConstants.lite_gold;
  Color _containerColor2021 = ColorConstants.lite_gold;
  Color _containerColor2022 = ColorConstants.lite_gold;
  Color _containerColor2023 = ColorConstants.lite_gold;
  String _currentImage = 'assets/image/history_2017.jpg';
  String _currentText = "AHS Group was established in 2017 with a clear vision for making a positive impact on residential communities.\n\n" +
      "The founder, Mr. Abbas Sajwani, lead the company with a passion for enriching people's lives.\n\n" +
      "AHS Group sought to inspire and empower individuals through its innovative solutions and services.";

  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/video/histroy.mp4")
    ..initialize().then((value) => {setState(() {})});
    _controller.setLooping(true);
    _controller.setVolume(0.0);
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'About Us',
            style: TextStyle(
              color: ColorConstants.kPrimaryColor,
              fontFamily: 'Montserrat',// Text color
              fontSize: 24, // Font size
              fontWeight: FontWeight.bold, // Font weight
            ),
          ),
          centerTitle: true, // Center the title horizontally
          backgroundColor: Colors.white, // AppBar background color
        ),
        body: SingleChildScrollView(
          child : Column(
            children: [
              Container(
                width: double.infinity,
                height: getVideoHeight(context), // Set the height as needed
                child: VideoPlayer(_controller),
              ),
              Container(
                  width: double.infinity,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.white, // Container background color
                    image: DecorationImage(
                      image: AssetImage('assets/image/band.jpg'), // Replace with your image asset path
                      fit: BoxFit.cover, // Adjust how the image fits the container
                    ),
                  ),
                  // You can add other child widgets here if needed
                  child: Center(child: Text(
                    "INSPIRING THROUGH INNOVATION AND \nGRANDEUR".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: ColorConstants.kLiteBlack,
                      fontFamily: 'Montserrat',// Text color
                      fontSize: 16, // Font size
                      fontWeight: FontWeight.bold, // Font weight
                    ),
                  ),
                  )
              ),

              Container(
                width: double.infinity,
                height: getVideoHeight(context),
                decoration: const BoxDecoration(
                  color: Colors.white, // Container background color
                  image: DecorationImage(
                    image: AssetImage('assets/image/about_1.jpg'), // Replace with your image asset path
                    fit: BoxFit.cover, // Adjust how the image fits the container
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              Container(
                child: Column(
                    children: [
                      Text("AHS VENTURES", style: const TextStyle(fontSize: 16,fontFamily: 'Montserrat',fontWeight: FontWeight.bold,color: ColorConstants.kLiteBlack)),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.all(15), //apply padding to all four sides
                        child: Text("Born from the visionary mind of Mr. Abbas Sajwani in 2017, AHS Group stands as a global powerhouse in real estate and investment. Within this dynamic conglomerate, AHS Ventures emerged in 2018 with a singular mission: to spearhead a range of diverse and triumphant ventures, all with the shared goal of elevating residential communities on a global scale. As a torchbearer of innovation and excellence, AHS Ventures is committed to shaping a brighter, more prosperous future for communities worldwide.",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14,fontFamily: 'Montserrat',fontWeight: FontWeight.w300,color: Colors.black)),
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              Container(
                width: double.infinity,
                height: getVideoHeight(context),
                decoration: const BoxDecoration(
                  color: Colors.white, // Container background color
                  image: DecorationImage(
                    image: AssetImage('assets/image/about_ahs.jpg'), // Replace with your image asset path
                    fit: BoxFit.cover, // Adjust how the image fits the container
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              Container(
                child: Column(
                    children: [
                      Text("AHS INVESTMENTS", style: const TextStyle(fontSize: 16,fontFamily: 'Montserrat',fontWeight: FontWeight.bold,color: ColorConstants.kLiteBlack)),
                      SizedBox(height:10),
                      Padding(
                        padding: EdgeInsets.all(15), //apply padding to all four sides
                        child: Text("Founded in 2020, AHS Investments strives to create wealth and value through diverse investments in private and public equities. With a portfolio exceeding \$150 million, they exemplify commitment to innovation and expansion across various businesses and corporate entities.",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14,fontFamily: 'Montserrat',fontWeight: FontWeight.w300,color: Colors.black)),
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              Container(
                width: double.infinity,
                height: getVideoHeight(context),
                decoration: const BoxDecoration(
                  color: Colors.white, // Container background color
                  image: DecorationImage(
                    image: AssetImage('assets/image/about_ash1.jpg'), // Replace with your image asset path
                    fit: BoxFit.cover, // Adjust how the image fits the container
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              Container(
                child: Column(
                    children: [
                      Text("AHS PROPERTIES", style: TextStyle(fontSize: 16,fontFamily: 'Montserrat',fontWeight: FontWeight.bold,color: ColorConstants.kLiteBlack)),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.all(15), //apply padding to all four sides
                        child: Text("AHS Properties has redefined luxury living with a gross development value of \$1.65 billion. Within a year, they achieved remarkable milestones, including selling three villas in Palm Jumeirah for \$75 million and launching another for \$45 million. They now lead the future of ultra-luxury market with new projects in Dubai Water Canal and Palm Jumeirah, totaling a gross development value of over \$1.65 billion.",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14,fontFamily: 'Montserrat',fontWeight: FontWeight.w300,color: Colors.black)),
                      ),
                    ]),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0,10.0,20.0,10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Divider(
                              color: ColorConstants.kPrimaryColor
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10.0,10.0,20.0,10.0),
                child: Column(
                    children: [
                      Text("THE HISTROY OF AHS", style: const TextStyle(fontSize: 16,fontFamily: 'Montserrat',fontWeight: FontWeight.bold,color: ColorConstants.kLiteBlack)),
                      SizedBox(height:10),
                      Padding(
                        padding: EdgeInsets.all(15), //apply padding to all four sides
                        child: Text("AHS Group excels in real estate, prioritizing excellence, innovation, and service. A leading player, it provides remarkable value to stakeholders and clients.",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14,fontFamily: 'Montserrat',fontWeight: FontWeight.w300,color: Colors.black)),
                      ),
                    ]),
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 120.0,
                        child: progressBar()
                    ),
                    Column(
                      children: <Widget>[
                        cardWidget(image: "assets/image/history_2017.jpg"),
                        Container(
                          width: getVideoHeight(context),
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            _currentText,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'montserrat',
                              fontWeight: FontWeight.w300,
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
        )
    );
  }

  double getVideoHeight(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    if (screenSize.shortestSide < 600) {
      // This is a phone (iPhone or similar)
      return 300.0; // Adjust the margin for iPhones
    } else {
      // This is a tablet (iPad or similar)
      return 600.0; // Adjust the margin for iPads
    }
  }

  double getImageHeight(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    if (screenSize.shortestSide < 600) {
      // This is a phone (iPhone or similar)
      return 240.0; // Adjust the margin for iPhones
    } else {
      // This is a tablet (iPad or similar)
      return 480.0; // Adjust the margin for iPads
    }
  }

  double getImageWidth(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    if (screenSize.shortestSide < 600) {
      // This is a phone (iPhone or similar)
      return 260.0; // Adjust the margin for iPhones
    } else {
      // This is a tablet (iPad or similar)
      return 520.0; // Adjust the margin for iPads
    }
  }

  Widget cardWidget({
    required String image,
  }) {
    return Card(
      elevation: 4, // Adjust elevation as needed
      margin: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
      child: Column(
        children: [
          Image.asset(
            _currentImage, // Replace with your image asset
            width: getImageWidth(context),
            height: getImageHeight(context),
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  Widget progressBar(){
    return Container(
      padding: EdgeInsets.fromLTRB(15.0,0.0,10.0,0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          InkWell(
              onTap: () => {
                _changeImageAndText2017()
              },
              child: TimelineTile(
                alignment: TimelineAlign.start,
                lineXY: 0.7, // Adjust the position of the line if needed
                afterLineStyle: const LineStyle(
                  color: ColorConstants.kPrimaryColor, // Change the line color here
                  thickness: 2, // Adjust the line thickness
                ),
                isFirst: true,
                indicatorStyle: IndicatorStyle(
                  width: 22,
                  color: _containerColor2017,
                ),
                endChild: Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    "2017",
                    style: TextStyle(
                      color: ColorConstants.kPrimaryColor,
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
                ),
              )
          ),
         /* InkWell(
            onTap: (){
              _changeImageAndText2018();
            },
            child: TimelineTile(
              alignment: TimelineAlign.start,
              lineXY: 0.7,
              beforeLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              afterLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              indicatorStyle: IndicatorStyle(
                width: 22,
                color: _containerColor2018,
              ),
              endChild: Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  "2018",
                  style: TextStyle(
                    color: ColorConstants.kPrimaryColor,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
              ),
            ),
          ),*/
         /* InkWell(
            onTap: (){
              _changeImageAndText2019();
            },
            child:  TimelineTile(
              alignment: TimelineAlign.start,
              lineXY: 0.7,
              beforeLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              afterLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              indicatorStyle: IndicatorStyle(
                width: 22,
                color: _containerColor2019,
              ),
              endChild: Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  "2019",
                  style: TextStyle(
                    color: ColorConstants.kPrimaryColor,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
              ),
            ),
          ),*/
          InkWell(
            onTap: (){
              _changeImageAndText2020();
            },
            child: TimelineTile(
              alignment: TimelineAlign.start,
              lineXY: 0.7,
              beforeLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              afterLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              indicatorStyle: IndicatorStyle(
                width: 22,
                color: _containerColor2020,
              ),
              endChild: Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  "2020",
                  style: TextStyle(
                    color: ColorConstants.kPrimaryColor,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              _changeImageAndText2021();
            },
            child: TimelineTile(
              alignment: TimelineAlign.start,
              lineXY: 0.7,
              beforeLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              afterLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              indicatorStyle: IndicatorStyle(
                width: 22,
                color: _containerColor2021,
              ),
              endChild: Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  "2021",
                  style: TextStyle(
                    color: ColorConstants.kPrimaryColor,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              _changeImageAndText2022();
            },
            child: TimelineTile(
              alignment: TimelineAlign.start,
              lineXY: 0.7,
              beforeLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              afterLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              indicatorStyle: IndicatorStyle(
                width: 22,
                color: _containerColor2022,
              ),
              endChild: Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  "2022",
                  style: TextStyle(
                    color: ColorConstants.kPrimaryColor,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              _changeImageAndText2023();
            },
            child:  TimelineTile(
              alignment: TimelineAlign.start,
              lineXY: 0.7,
              beforeLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              afterLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              isLast: true,
              indicatorStyle: IndicatorStyle(
                width: 22,
                color: _containerColor2023,
              ),
              endChild: Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  "2023",
                  style: TextStyle(
                    color: ColorConstants.kPrimaryColor,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _changeImageAndText2017() {
    setState(() {
      _containerColor2017 = ColorConstants.kPrimaryColor;
      _containerColor2018 = ColorConstants.lite_gold;
      _containerColor2019 = ColorConstants.lite_gold;
      _containerColor2020 = ColorConstants.lite_gold;
      _containerColor2021 = ColorConstants.lite_gold;
      _containerColor2022 = ColorConstants.lite_gold;
      _containerColor2023 = ColorConstants.lite_gold;
      _currentImage = 'assets/image/history_2017.jpg';
      _currentText = "AHS Group was established in 2017 with a clear vision for making a positive impact on residential communities.\n\n" +
      "The founder, Mr. Abbas Sajwani, lead the company with a passion for enriching people's lives.\n\n" +
      "AHS Group sought to inspire and empower individuals through its innovative solutions and services.";
    });
  }

  void _changeImageAndText2018() {
    setState(() {
      _containerColor2017 = ColorConstants.lite_gold;
      _containerColor2018 = ColorConstants.kPrimaryColor;
      _containerColor2019 = ColorConstants.lite_gold;
      _containerColor2020 = ColorConstants.lite_gold;
      _containerColor2021 = ColorConstants.lite_gold;
      _containerColor2022 = ColorConstants.lite_gold;
      _containerColor2023 = ColorConstants.lite_gold;
      _currentImage = 'assets/image/history_2018.jpg';
      _currentText = "AHS Ventures was established in 2018 with a mission to transform the industry through innovation and excellence. \n\n" +
          "The company quickly achieved success in this area and expanded its focus to explore new opportunities for growth and impact.\n\n" +
          "AHS Ventures was and is driven by a relentless pursuit of excellence and a passion for creating positive change in the communities it serves.\n";
    });
  }

  void _changeImageAndText2019() {
    setState(() {
      _containerColor2017 = ColorConstants.lite_gold;
      _containerColor2018 = ColorConstants.lite_gold;
      _containerColor2019 = ColorConstants.kPrimaryColor;
      _containerColor2020 = ColorConstants.lite_gold;
      _containerColor2021 = ColorConstants.lite_gold;
      _containerColor2022 = ColorConstants.lite_gold;
      _containerColor2023 = ColorConstants.lite_gold;
      _currentImage = 'assets/image/history_2019.jpg';
      _currentText = "AHS embarked on a journey of global expansion, marking a major milestone in its history.\n\n" +
          "The company's unwavering commitment to excellence and customer satisfaction enabled it to successfully establish branches and corporate offices across the entire GCC region.\n\n" +
          "AHS continues to push the boundaries of what is possible, inspiring its employees and customers to reach new heights of success and growth.\n";
    });
  }

  void _changeImageAndText2020() {
    setState(() {
      _containerColor2017 = ColorConstants.lite_gold;
      _containerColor2018 = ColorConstants.lite_gold;
      _containerColor2019 = ColorConstants.lite_gold;
      _containerColor2020 = ColorConstants.kPrimaryColor;
      _containerColor2021 = ColorConstants.lite_gold;
      _containerColor2022 = ColorConstants.lite_gold;
      _containerColor2023 = ColorConstants.lite_gold;
      _currentImage = 'assets/image/history_2020.jpg';
      _currentText =  "AHS Investments was established in 2020 with a clear vision for creating long-term value with a focus on a diversified portfolio of private and public equity investments.\n\n" +
          "AHS Investments reached an impressive asset base of over \$150 million.\n\n" +
          "The company is dedicated to identifying and supporting innovative companies and corporate entities.\n\n" +
          "AHS Investments goal is to transform industries and create meaningful change for society.\n";
    });
  }

  void _changeImageAndText2021() {
    setState(() {
      _containerColor2017 = ColorConstants.lite_gold;
      _containerColor2018 = ColorConstants.lite_gold;
      _containerColor2019 = ColorConstants.lite_gold;
      _containerColor2020 = ColorConstants.lite_gold;
      _containerColor2021 = ColorConstants.kPrimaryColor;
      _containerColor2022 = ColorConstants.lite_gold;
      _containerColor2023 = ColorConstants.lite_gold;
      _currentImage = 'assets/image/history_2021.jpg';
      _currentText = "AHS Properties was founded in 2021 by Mr. Abbas Sajwani.\n\n" +
          "Focusing on exceptional real estate developments. First projects include 3 Villas in Palm Jumeirah and 1 Villa in Emirates Hills.\n\n" +
          "The company quickly emerged as a leader in the industry, setting high bar for quality, innovation, and design.\n\n" +
          "AHS Properties achieved numerous milestones and accolades in first year of operations.\n";
    });
  }

  void _changeImageAndText2022() {
    setState(() {
      _containerColor2017 = ColorConstants.lite_gold;
      _containerColor2018 = ColorConstants.lite_gold;
      _containerColor2019 = ColorConstants.lite_gold;
      _containerColor2020 = ColorConstants.lite_gold;
      _containerColor2021 = ColorConstants.lite_gold;
      _containerColor2022 = ColorConstants.kPrimaryColor;
      _containerColor2023 = ColorConstants.lite_gold;
      _currentImage = 'assets/image/historu_2022.jpg';
      _currentText = "AHS Properties sold three Palm villas for \$75 million.\n\n" +
          "AHS launched a new ultra-luxury villa in Palm Jumeirah for \$45 million.\n\n" +
          "AHS announced two new projects in Dubai Water Canal and Palm Jumeirah. \n\n"+
          "The company's Gross Development Value (GDV) has reached over \$1.5 billion.\n";
    });
  }

  void _changeImageAndText2023() {
    setState(() {
      _containerColor2017 = ColorConstants.lite_gold;
      _containerColor2018 = ColorConstants.lite_gold;
      _containerColor2019 = ColorConstants.lite_gold;
      _containerColor2020 = ColorConstants.lite_gold;
      _containerColor2021 = ColorConstants.lite_gold;
      _containerColor2022 = ColorConstants.lite_gold;
      _containerColor2023 = ColorConstants.kPrimaryColor;
      _currentImage = 'assets/image/casacanal_10.jpg';
      _currentText = "AHS Properties launched Casa Canal in 2023, a groundbreaking architectural project.\n\n" +
          "Exclusive interiors by Fendi Casa.\n" +
          "AHS Properties continues to meticulously craft residences with spacious layouts and state-of-the-art amenities with breathtaking views to enhance the living experience for residents.\n\n" +
          "AHS Properties sells Dubai ultra-luxury penthouse for \$50m. \n\n" +
          "The company's Gross Development Value (GDV) has reached over \$1.65 billion.\n";
    });
  }
}

/*
class ProgressIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0,0.0,10.0,0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          InkWell(
              onTap: () => {
                print("Container clicked"),
                CardWidget(image: "assets/image/history_2018.jpg")
                },
              child: TimelineTile(
                alignment: TimelineAlign.start,
                lineXY: 0.7, // Adjust the position of the line if needed
                afterLineStyle: const LineStyle(
                  color: ColorConstants.kPrimaryColor, // Change the line color here
                  thickness: 2, // Adjust the line thickness
                ),
                isFirst: true,
                indicatorStyle: IndicatorStyle(
                  width: 22,
                  color: ColorConstants.kPrimaryColor,
                ),
                endChild: Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    "2017",
                    style: TextStyle(
                      color: ColorConstants.kPrimaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
                ),
              )
          ),
          InkWell(
              onTap: (){
                print("Container clicked");
              },
              child: TimelineTile(
                alignment: TimelineAlign.start,
                lineXY: 0.7,
                beforeLineStyle: const LineStyle(
                  color: ColorConstants.kPrimaryColor, // Change the line color here
                  thickness: 2, // Adjust the line thickness
                ),
                afterLineStyle: const LineStyle(
                  color: ColorConstants.kPrimaryColor, // Change the line color here
                  thickness: 2, // Adjust the line thickness
                ),
                indicatorStyle: IndicatorStyle(
                  width: 22,
                  color: ColorConstants.lite_gold,
                ),
                endChild: Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    "2018",
                    style: TextStyle(
                      color: ColorConstants.kPrimaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
                ),
              ),
          ),
          InkWell(
              onTap: (){
                print("Container clicked");
              },
              child:  TimelineTile(
                alignment: TimelineAlign.start,
                lineXY: 0.7,
                beforeLineStyle: const LineStyle(
                  color: ColorConstants.kPrimaryColor, // Change the line color here
                  thickness: 2, // Adjust the line thickness
                ),
                afterLineStyle: const LineStyle(
                  color: ColorConstants.kPrimaryColor, // Change the line color here
                  thickness: 2, // Adjust the line thickness
                ),
                indicatorStyle: IndicatorStyle(
                  width: 22,
                  color: ColorConstants.lite_gold,
                ),
                endChild: Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    "2019",
                    style: TextStyle(
                      color: ColorConstants.kPrimaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
                ),
              ),
          ),
          InkWell(
              onTap: (){
                print("Container clicked");
              },
              child: TimelineTile(
                alignment: TimelineAlign.start,
                lineXY: 0.7,
                beforeLineStyle: const LineStyle(
                  color: ColorConstants.kPrimaryColor, // Change the line color here
                  thickness: 2, // Adjust the line thickness
                ),
                afterLineStyle: const LineStyle(
                  color: ColorConstants.kPrimaryColor, // Change the line color here
                  thickness: 2, // Adjust the line thickness
                ),
                indicatorStyle: IndicatorStyle(
                  width: 22,
                  color: ColorConstants.lite_gold,
                ),
                endChild: Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    "2020",
                    style: TextStyle(
                      color: ColorConstants.kPrimaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
                ),
              ),
          ),
          InkWell(
            onTap: (){
              print("Container clicked");
            },
            child: TimelineTile(
              alignment: TimelineAlign.start,
              lineXY: 0.7,
              beforeLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              afterLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              indicatorStyle: IndicatorStyle(
                width: 22,
                color: ColorConstants.lite_gold,
              ),
              endChild: Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  "2021",
                  style: TextStyle(
                    color: ColorConstants.kPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              print("Container clicked");
            },
            child: TimelineTile(
              alignment: TimelineAlign.start,
              lineXY: 0.7,
              beforeLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              afterLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              indicatorStyle: IndicatorStyle(
                width: 22,
                color: ColorConstants.lite_gold,
              ),
              endChild: Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  "2022",
                  style: TextStyle(
                    color: ColorConstants.kPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              print("Container clicked");
            },
            child:  TimelineTile(
              alignment: TimelineAlign.start,
              lineXY: 0.7,
              beforeLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              afterLineStyle: const LineStyle(
                color: ColorConstants.kPrimaryColor, // Change the line color here
                thickness: 2, // Adjust the line thickness
              ),
              isLast: true,
              indicatorStyle: IndicatorStyle(
                width: 22,
                color: ColorConstants.lite_gold,
              ),
              endChild: Container(
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  "2023",
                  style: TextStyle(
                    color: ColorConstants.kPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 1.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  late final String image;
  CardWidget({required this.image});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Adjust elevation as needed
      margin: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
      child: Column(
        children: [
          Image.asset(
            image, // Replace with your image asset
            width: 260,
            height: 240,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}*/
