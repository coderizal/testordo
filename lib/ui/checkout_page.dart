import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
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
          "Checkout",
          style: TextStyle(color: Color(0xff64A1F4)),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.only(
                  top: 30,
                ),
                padding:
                    EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 30),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/image(5).png",
                          width: 70,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tas Gucci",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Rp. 75.000",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xff64A1F4)),
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: Color(0xff3C7DD9),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            " -  2  +",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: Color(0xff64A1F4),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "Catatan",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                  padding:
                      EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Catatan Item",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "ketik disini",
                          style: TextStyle(color: Colors.black38),
                        ),
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  )),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                  padding:
                      EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Catatan Pesanan",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "ketik disini",
                          style: TextStyle(color: Colors.black38),
                        ),
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                "Detail Pembayaran",
                style: TextStyle(
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tas Gucci",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Text(
                          "(Qty 1)",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Rp. 75.000",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ],
              ),
        
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Text(
                          "Ongkos Kirim",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                  ),Text(
                          "Rp. 10.000",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,),
              SizedBox(height: 10,),

              Row(
                children: [
                  Expanded(
                    child: Text(
                          "Subtotal",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        ),
                  ),Text(
                          "Rp. 85.000",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        ),
                ],
              ),
              SizedBox(height: 10,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xff3C7DD9),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Expanded(child: Text("Waktu Pengantaran",style: TextStyle(
                      color: Colors.white
                    ),)),
                    Icon(Icons.chevron_right_outlined,color: Colors.white,)
                  ],
                ),
              ),
              SizedBox(height: 10,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xff3C7DD9),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Expanded(child: Text("Alamat Pengiriman",style: TextStyle(
                      color: Colors.white
                    ),)),
                    Icon(Icons.chevron_right_outlined,color: Colors.white,)
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  padding:
                      EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tolong pastikan semua pesanan anda sudah benar dan tidak kurang.",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                     
                    ],
                  )),

              SizedBox(height: 30,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xff3C7DD9),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Bayar Sekarang",style: TextStyle(
                      color: Colors.white
                    ),),
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
