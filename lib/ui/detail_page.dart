import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:testordo/ui/checkout_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int index = -1;
  int currentIndex = 0;
  List _image = [
    "assets/image(7).png",
    "assets/image(7).png",
    "assets/image(7).png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              width: 5,
              child: Image.asset(
                "assets/Frame 15.png",
                scale: 2,
              )),
        ),
        elevation: 0,
        backgroundColor: Color(0xffFEF9F9),
        title: Text(
          "PRODUK DETAIL",
          style: TextStyle(color: Color(0xff64A1F4)),
        ),
        actions: [
          Container(width: 20, child: Image.asset("assets/Vector(1).png")),
          SizedBox(
            width: 10,
          ),
          Container(width: 20, child: Image.asset("assets/Vector(2).png")),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckoutPage()));
              },
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 30),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          "Tas Gucci",
                          style: TextStyle(
                              color: Color(0xff47623F),
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        )),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "Barang Bekas",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xffDFAE1D),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "Stok 100",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xff64A1F4),
                              borderRadius: BorderRadius.circular(10)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Rp. 6000",
                              style: TextStyle(
                                  color: Color(0xff64a1f4),
                                  decoration: TextDecoration.lineThrough),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Rp. 4500",
                              style: TextStyle(
                                  color: Color(0xff64a1f4),
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                          child: Text(
                            "Diskon 10%",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xff3c7dd9),
                              borderRadius: BorderRadius.circular(10)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Vendor",
                      style: TextStyle(color: Color(0xff47623F), fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/Mask Group.png",
                          width: 50,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "Eiger Store",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Image.asset(
                          "assets/Star 1.png",
                          width: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "5.0 | 200 terjual",
                          style: TextStyle(
                              color: Color(0xff3C7DD9),
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Deskripsi",
                      style: TextStyle(color: Color(0xff47623F), fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Deskripsi In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
                      style: TextStyle(color: Color(0xff47623F), fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Ulasan dan Penilaian",
                      style: TextStyle(color: Color(0xff47623F), fontSize: 16),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/Ellipse 2.png",
                                width: 55,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Maude Hall",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "14 min",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w100),
                                    )
                                  ],
                                ),
                              ),
                              Image.asset(
                                "assets/Star 1(1).png",
                                width: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "5.0",
                                style: TextStyle(
                                    color: Color(0xff000000), fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.",
                            style:
                                TextStyle(color: Color(0xff47623F), fontSize: 14),
                          ),
                        ],
                      ),
                    ),
            
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/Ellipse 3.png",
                                width: 55,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ester Howard",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "14 min",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w100),
                                    )
                                  ],
                                ),
                              ),
                              Image.asset(
                                "assets/Star 1(1).png",
                                width: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "5.0",
                                style: TextStyle(
                                    color: Color(0xff000000), fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.",
                            style:
                                TextStyle(color: Color(0xff47623F), fontSize: 14),
                          ),
                          
                        ],
                      ),
                    ),
                  
                  ],
                ),
              ),
            )
          ],
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
    int index = -1;
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
        SizedBox(
          height: 15,
        ),
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
