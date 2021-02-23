import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.red600,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: VStack([
          VxBox().size(20, 2).white.make(),
          5.heightBox,
          VxBox().size(28, 2).white.make(),
          5.heightBox,
          VxBox().size(15, 2).white.make(),
        ]).pOnly(left: 16, top: 16),
      ),
      body: VStack([
        VxBox(
                child: [
          Row(
            children: [
              VxBox()
                  .size(115, 100)
                  // .neumorphic(
                  //     color: Vx.gray100, elevation: 0) // Comment this line.
                  .bgImage(DecorationImage(
                    image: AssetImage('assets/images/sellerboy.png'),
                  ))
                  .alignCenterRight
                  .make()
                  .py0(),
              VxBox()
                  .size(90, 100)
                  // .neumorphic(
                  //     color: Vx.gray100, elevation: 0) // Comment this line.
                  .bgImage(DecorationImage(
                    image: AssetImage('assets/images/sellers.png'),
                  ))
                  .alignCenterLeft
                  .make()
                  .py0(),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          "Buy, "
              .richText
              .withTextSpanChildren([
                "Whatever ".textSpan.white.bold.make(),
                'You Need!'.textSpan.white.make()
              ])
              .white
              .xl2
              .make()
              .p0(),
          VxTextField(
            borderType: VxTextFieldBorderType.none,
            borderRadius: 18,
            hint: "Search",
            fillColor: Vx.gray100.withOpacity(0.3),
            contentPaddingTop: 13,
            autofocus: false,
            prefixIcon: Icon(Icons.search_outlined, color: Colors.white),
          )
              .customTheme(themeData: ThemeData(brightness: Brightness.dark))
              .cornerRadius(10)
              .py(8)
              .px(14)
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
              isScrollable: true,
              labelPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              indicatorPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Vx.red600,
              unselectedLabelColor: Vx.red300,
              labelStyle: TextStyle(
                  fontFamily: GoogleFonts.lobster().fontFamily, fontSize: 20),
              tabs: [
                Tab(
                  text: "Agriculture",
                ),
                Tab(
                  text: "Handicrafts",
                ),
                Tab(
                  text: "Custom Orders",
                )
              ],
            ),
            TabBarView(controller: _tabController, children: [
              // First Tab Agriculture.
              VStack([
                "Buy Agriculture Products!"
                    .richText
                    .red400
                    .bold
                    .size(15)
                    .make()
                    .centered(),
                Productcard(
                  title: "Fresh Bananas",
                  subtitle: "Seller from Gujarat, India",
                  imageadd: "assets/images/banana.png",
                ),
                Productcard(
                  title: "Wheat 100kgs",
                  subtitle: "Seller from Madhya Pradesh, India",
                  imageadd: "assets/images/wheat.jpg",
                ),
                Productcard(
                  title: "Fresh Mangoes",
                  subtitle: "Seller from Uttar Pradesh, India",
                  imageadd: "assets/images/mango.jpg",
                ),
                Productcard(
                  title: "Rice",
                  subtitle: "Seller from West Bengal, India",
                  imageadd: "assets/images/rice.jpg",
                ),
                Productcard(
                  title: "Fresh Strawberries",
                  subtitle: "Seller from Himachal, India",
                  imageadd: "assets/images/strawberry.jpg",
                ),
                Productcard(
                  title: "Pigeon Peas Lentils (Toor Dal)",
                  subtitle: "Seller from Maharashtra, India",
                  imageadd: "assets/images/pulses.jpg",
                ),
                Productcard(
                  title: "Fresh Tomatos",
                  subtitle: "Seller from Andhra Pradesh, India",
                  imageadd: "assets/images/tomato.jpeg",
                )
              ]).scrollVertical().px12().py(5),

              // Second Tab Handicrafts.
              VStack([
                "Buy Handicrafts!"
                    .richText
                    .red400
                    .bold
                    .size(15)
                    .make()
                    .centered(),
                Productcard(
                  title: "Handmade Handbags",
                  subtitle: "Seller from Rajasthan, India",
                  imageadd: "assets/images/handicrafts/handbag.jpg",
                ),
                Productcard(
                  title: "Wooden Dolls",
                  subtitle: "Seller from Gujarat, India",
                  imageadd: "assets/images/handicrafts/dolls.jpg",
                ),
                Productcard(
                  title: "Marble Bowls and Vass",
                  subtitle: "Seller from Rajasthan, India",
                  imageadd: "assets/images/handicrafts/marblebowlsvass.jpg",
                ),
                Productcard(
                  title: "Oil Lamps",
                  subtitle: "Seller from Madhya Pradesh, India",
                  imageadd: "assets/images/handicrafts/oillamps.jpeg",
                ),
                Productcard(
                  title: "Wooden Statues",
                  subtitle: "Seller from West Bengal, India",
                  imageadd: "assets/images/handicrafts/statues.png",
                ),
                Productcard(
                  title: "Wooden Elephant",
                  subtitle: "Seller from Gujarat, India",
                  imageadd: "assets/images/handicrafts/woodenelephant.jpg",
                )
              ]).scrollVertical().px12().py(5),

              VStack([
                "Give Your Custom Order!!"
                    .richText
                    .red400
                    .bold
                    .size(18)
                    .make()
                    .pLTRB(0, 0, 0, 15)
                    .centered(),

                // Enter Product Name.
                Container(
                  child: Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                      Text(
                        'Enter Product Name:',
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
                                  color: Vx.red400,
                                  blurRadius: 15,
                                  offset: Offset(0, 6))
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Product Name',
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
                        'Enter Product ID:',
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
                                  color: Vx.red400,
                                  blurRadius: 15,
                                  offset: Offset(0, 6))
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Product ID',
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
                        'Enter Quantity Required:',
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
                                  color: Vx.red400,
                                  blurRadius: 15,
                                  offset: Offset(0, 6))
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  'Enter Quantity in Kg, Litres, Nos, etc. ',
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
                          'Any extra information you want to mention to the seller:',
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
                                  color: Vx.red400,
                                  blurRadius: 15,
                                  offset: Offset(0, 6))
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Write any extra info (optional)',
                              hintStyle: TextStyle(color: Vx.red400)),
                        ),
                      ),
                    ],
                  ),
                ),
                // Order Button
                Container(
                  padding: EdgeInsets.fromLTRB(2, 5, 2, 25),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Vx.red400,
                                  blurRadius: 10,
                                  offset: Offset(0, 10))
                            ],
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(220, 54, 54, 1),
                              Color.fromRGBO(220, 54, 54, .7),
                            ])),
                        child: Center(
                          child: Text(
                            "Place Custom Order",
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
              ]).scrollVertical().px12().py(5)
            ]).expand()
          ])).gray100.make(),
        ).expand()
      ]),
    );
  }
}

// Product Cards.
class Productcard extends StatelessWidget {
  final String title, subtitle, imageadd;

  Productcard({Key key, this.title, this.subtitle, this.imageadd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HStack([
      Image.asset(imageadd).wh(context.percentWidth * 35, 90).cornerRadius(20),
      20.widthBox,
      VStack(
        [
          title.text.bold.red600.make(),
          3.heightBox,
          subtitle.text.make().shimmer(),
          5.heightBox,
          [
            VxRating(
              size: 13,
              onRatingUpdate: (value) {},
            ),
            5.widthBox,
            "(100)".text.xs.red400.make(),
          ].row()
        ],
        crossAlignment: CrossAxisAlignment.start,
      ).expand()
    ]).backgroundColor(Vx.gray200).cornerRadius(20).py(10);
  }
}
