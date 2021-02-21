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
    _tabController = TabController(vsync: this, length: 2);
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
              indicatorColor: Colors.redAccent,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Vx.red600,
              unselectedLabelColor: Vx.red400,
              labelStyle: TextStyle(
                  fontFamily: GoogleFonts.lobster().fontFamily, fontSize: 20),
              tabs: [
                Tab(
                  text: "Agriculture",
                ),
                Tab(
                  text: "Handicrafts",
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
              ]).scrollVertical().p12(),

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
              ]).scrollVertical().p12()
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

  // var pic1 = "assets/images/wheat.jpg";
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
