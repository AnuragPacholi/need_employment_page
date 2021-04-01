import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class JobPage extends StatefulWidget {
  @override
  _JobPageState createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.red600,
      appBar: new AppBar(
        leading: VStack([
          VxBox().size(20, 2).white.make(),
          5.heightBox,
          VxBox().size(28, 2).white.make(),
          5.heightBox,
          VxBox().size(15, 2).white.make(),
        ]).pOnly(left: 16, top: 16),
        backgroundColor: Vx.red600,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search_outlined),
              color: Colors.white,
              onPressed: () => debugPrint("Hey"))
        ],
      ),
      body: VStack([
        VxBox(
                child: [
          Row(
            children: [
              VxBox()
                  .size(250, 120)
                  // .neumorphic(
                  //     color: Vx.gray100, elevation: 0) // Comment this line.
                  .bgImage(DecorationImage(
                    image: AssetImage('assets/images/hiring.png'),
                  ))
                  .alignCenter
                  .make()
                  .pOnly(top: 10, bottom: 3),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          "\t\tIf, "
              .richText
              .withTextSpanChildren([
                "Oppurtunity ".textSpan.white.bold.make(),
                "doesn't ".textSpan.white.make(),
                "Knock, ".textSpan.white.bold.italic.make(),
                "\n \t\t\t\t\t\t\t\t\t\t Build ".textSpan.white.bold.make(),
                "the ".textSpan.white.make(),
                "Door !".textSpan.white.bold.italic.make(),
              ])
              .white
              .size(20)
              .make()
              .p0(),
        ].column())
            .padding(Vx.mV0)
            .alignTopCenter
            .makeCentered()
            .h(192),
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: VxBox(
              child: VStack([
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Vx.red600,
              unselectedLabelColor: Vx.red300,
              labelStyle: TextStyle(
                  fontFamily: GoogleFonts.lobster().fontFamily, fontSize: 20),
              tabs: [
                Tab(
                  text: "We are Hiring",
                ),
                Tab(
                  text: "Upload Jobs",
                ),
              ],
            ),
            TabBarView(controller: _tabController, children: [
              // First Tab Agriculture.
              VStack([
                "Apply for a Job!"
                    .richText
                    .red400
                    .bold
                    .size(15)
                    .make()
                    .pOnly(top: 5)
                    .centered(),
                Productcard(
                  title: "Farm Manager",
                  subtitle: "Gujarat, India",
                  imageadd: "assets/images/manager.png",
                  vaca: "1",
                ),
                Productcard(
                  title: "Agriculture Engineer",
                  subtitle: "Madhya Pradesh, India",
                  imageadd: "assets/images/engg.jpg",
                  vaca: "2",
                ),
                Productcard(
                  title: "Farm Worker",
                  subtitle: "Uttar Pradesh, India",
                  imageadd: "assets/images/worker.jpg",
                  vaca: "4",
                ),
                Productcard(
                  title: "Farm Consultant",
                  subtitle: "West Bengal, India",
                  imageadd: "assets/images/consultant.jpg",
                  vaca: "2",
                ),
              ]).scrollVertical().px12().py(5),

              // Second Tab Handicrafts.
              VStack([
                "Add a Job!!"
                    .richText
                    .red400
                    .bold
                    .size(18)
                    .make()
                    .pLTRB(0, 5, 0, 10)
                    .centered(),

                // Enter Product Name.
                Container(
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                      Text(
                        'Job Title:',
                        style: TextStyle(
                            fontFamily: GoogleFonts.merienda().fontFamily,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Vx.red600),
                      ),
                    ],
                  ),
                ),

                // Product name text field.
                Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 20, 20),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        padding: EdgeInsets.only(left: 10, bottom: 2),
                        decoration: BoxDecoration(
                            color: Vx.gray100,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Vx.gray300,
                                  blurRadius: 15,
                                  offset: Offset(0, 6))
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Job Title',
                              hintStyle: TextStyle(color: Vx.red400)),
                        ),
                      ),
                    ],
                  ),
                ),

                // Enter Product ID.

                Container(
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                      Text(
                        'Company Name:',
                        style: TextStyle(
                            fontFamily: GoogleFonts.merienda().fontFamily,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Vx.red600),
                      ),
                    ],
                  ),
                ),

                // Enter Product ID Text Field.
                Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 20, 20),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        padding: EdgeInsets.only(left: 10, bottom: 2),
                        decoration: BoxDecoration(
                            color: Vx.gray100,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Vx.gray300,
                                  blurRadius: 15,
                                  offset: Offset(0, 6))
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Company Name',
                              hintStyle: TextStyle(color: Vx.red400)),
                        ),
                      ),
                    ],
                  ),
                ),

                // Enter Quantity Required.
                Container(
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                      Text(
                        'Vacancies Available:',
                        style: TextStyle(
                            fontFamily: GoogleFonts.merienda().fontFamily,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Vx.red600),
                      ),
                    ],
                  ),
                ),

                // Enter Quantity Required Text Field.
                Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 20, 20),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        padding: EdgeInsets.only(left: 10, bottom: 2),
                        decoration: BoxDecoration(
                            color: Vx.gray100,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Vx.gray300,
                                  blurRadius: 15,
                                  offset: Offset(0, 6))
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Vacancies Available',
                              hintStyle: TextStyle(color: Vx.red400)),
                        ),
                      ),
                    ],
                  ),
                ),

                // Any extra information you want to mention to the seller.
                Container(
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                      Flexible(
                        child: Text(
                          'Prerequisites:',
                          style: TextStyle(
                              fontFamily: GoogleFonts.merienda().fontFamily,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Vx.red600),
                        ),
                      )
                    ],
                  ),
                ),

                // Text Field of extra mentions.
                Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 20, 20),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        padding: EdgeInsets.only(left: 10, bottom: 2),
                        decoration: BoxDecoration(
                            color: Vx.gray100,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Vx.gray300,
                                  blurRadius: 15,
                                  offset: Offset(0, 6))
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Prerequisites for the Job',
                              hintStyle: TextStyle(color: Vx.red400)),
                        ),
                      ),
                    ],
                  ),
                ),
                // Order Button
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 180.0,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Vx.gray300,
                                  blurRadius: 15,
                                  offset: Offset(0, 4))
                            ],
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(220, 54, 54, 1),
                              Color.fromRGBO(220, 54, 54, .7),
                            ])),
                        child: Center(
                          child: Text(
                            "Add Job",
                            style: TextStyle(
                                color: Vx.gray100,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.sahitya().fontFamily),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]).scrollVertical().px12().py(5),
            ]).expand()
          ])).gray100.make(),
        ).expand()
      ]),
    );
  }
}

// Product Cards.
class Productcard extends StatelessWidget {
  final String title, subtitle, imageadd, vaca;

  Productcard({Key key, this.title, this.subtitle, this.imageadd, this.vaca})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HStack([
      Image.asset(imageadd).wh(context.percentWidth * 35, 90).cornerRadius(20),
      20.widthBox,
      VStack(
        [
          title.text.size(16).bold.red600.make(),
          3.heightBox,
          subtitle.text.make(),
          3.heightBox,
          [
            'Vacancies: '.text.black.make(),
            5.widthBox,
            vaca.text.size(15).red400.make(),
          ].row()
        ],
        crossAlignment: CrossAxisAlignment.start,
      ).expand()
    ]).backgroundColor(Vx.gray200).cornerRadius(20).py(10);
  }
}
