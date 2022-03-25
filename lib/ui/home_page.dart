import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:testordo/ui/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = -1;
  int currentIndex = 0;

  List gambar=[
    "assets/image.png",
    "assets/image(1).png",
    "assets/image(2).png",
    "assets/image(3).png",
    "assets/image(4).png",
    "assets/image(5).png",
    "assets/image(6).png",
    "assets/image(7).png",
  ];
  List _image = [
    "assets/Frame 3343.png",
    "assets/Frame 3343.png",
    "assets/Frame 3343.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcf8f8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFEF9F9),
        actions: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.only(left: 20, top: 8, bottom: 8),
              decoration: BoxDecoration(
                  color: Color(0xfff0f0f0),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Image.asset(
                    "assets/Shape.png",
                    width: 20,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(width: 32, child: Image.asset("assets/Frame 39.png")),
          Container(width: 37, child: Image.asset("assets/Frame 41.png")),
          Container(
              width: 37,
              margin: EdgeInsets.only(right: 20),
              child: Image.asset("assets/Frame 40.png")),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              SizedBox(height: 15,),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30),
              itemCount: gambar.length,
              itemBuilder: (BuildContext ctx, index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPage()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(gambar[index]),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                SizedBox(height: 5,),
                                Text("Rp. 6000",style: TextStyle(
                                  color: Color(0xff64a1f4),
                                  decoration: TextDecoration.lineThrough
                                ),),
                                SizedBox(height: 3,),
                                Text("Rp. 4500",style: TextStyle(
                                  color: Color(0xff64a1f4),
                                  fontWeight: FontWeight.w900
                                ),)
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              padding: EdgeInsets.only(top: 5,bottom: 5,left: 5),
                              child: Text("Diskon 10%",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                              ),),
                              decoration: BoxDecoration(
                                color: Color(0xff3c7dd9),
                                borderRadius: BorderRadius.circular(10)
                              ),
                            )
                          ],
                        )
                        ,
                        SizedBox(height: 10,),
                        Text("Lorem ipsum",style: TextStyle(
                          fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget indicator(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6),
      width: currentIndex == index ? 16 : 28,
      height: 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? Color(0xff3C7DD9) : Color(0xff64A1F4)),
    );
  }

  Widget header() {
    int index=-1;
    return Column(
      children: [
        CarouselSlider(
            items: _image
                .map((image) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                    print("INI INDEX " + index.toString());
                    print("INI currentIndex " + index.toString());
                  });
                })),
                SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _image.map((e) {
            index++;
            // index=currentIndex;
            return indicator(index);
          }).toList(),
        )
      ],
    );
  }
}
