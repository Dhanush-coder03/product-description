import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:firstpro/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class prodes extends StatefulWidget {
  const prodes({super.key});

  @override
  State<prodes> createState() => _prodesState();

}
TextEditingController _controller = TextEditingController();

class _prodesState extends State<prodes> {


  final PageController Pageviewdot = PageController();
  int selectedPage  = 0;
  int _currenindex = 0;
  int _selectedQuantity = 1;

  List a =[1,2,3];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: TextFormField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: "Search Amazon.in",
              prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Visit the Fashion Frill Store",style: TextStyle(color: Colors.blueGrey),),
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
        
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Fashion Frill Silver Couple Ring For Women Closed Hand Stailness Steel Promise Silver Hug Ring For Girls Women Men Boys Promise Adujstable Couple RIng Anniversary Love Gifts Jewwellery")
                ],
              ),
            ),
            Column(
              children: [
                Text("100+ bought in the past",style: TextStyle(fontWeight: FontWeight.bold,)),
              ],
            ),
                Container(
                  height: 200,
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 250,
                      aspectRatio: 16/9,
                      initialPage: 0,
                      viewportFraction: 1,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: false,
                      scrollDirection: Axis.horizontal,
                      enlargeCenterPage: true,
                      onPageChanged: (index,reason)
                      {
                      setState(() {
                        _currenindex = index;
                      });

                      }
                    ),
                    itemCount: a.length,
                    itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex){
                      return Container(
                        height: 200,
                        width: 380,
                        child: Stack(
                          children: [
                            Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/ring.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                            ),
                            Positioned(
                                top:10,
                                left: 10,
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              alignment: Alignment.center,
                              child: Text("25 % off",style: TextStyle(fontSize: 12),),
                            ),
                            ),
                          ],
                        ),

                      );
                    },
                  ),
                ),
            Center(
              child: DotsIndicator(
                dotsCount: a.length,
                position: _currenindex.toDouble(),
              ),
            ),
            Container(
              height: 130,
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Colour:Silver",style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/ring.jpg"),
                          fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(),
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/ring.jpg"),
                          fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/ring.jpg"),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("₹189.00"),
                          Column(
                            children: [
                              Text("₹189.00                   ₹189.00")
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 130,
            decoration: BoxDecoration(
              border: Border.all()
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("-81%",style: TextStyle(color: Colors.red,fontSize: 40),),
                    ),
                    Text("₹189",style: TextStyle(fontSize: 30),)
                  ],
                ),
                Column(
                  children: [
                    new RichText(
                      text: new TextSpan(
                        text: 'M.R.P.:',
                        children: <TextSpan>[
                          new TextSpan(
                            text: '₹999',
                            style: new TextStyle(
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Text("Inclusive of all taxes"),
                    )
                  ],
                )
              ],
            ),  
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.percent_rounded),
                      Text("All offers & discounts                             >",style: TextStyle(fontSize: 19),),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "₹80 delivery ",
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    )
                                  ),
                                  TextSpan(
                                    text: "Saturday, 28 June.",
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                    )
                                  ),
                                  TextSpan(
                                    text: "Order within",
                                  ),
                                  TextSpan(
                                    text: "19 hrs 26 mins.",
                                    style: TextStyle(
                                      color: Colors.green,
                                    )
                                  ),
                                  TextSpan(
                                    text: "Details",
                                    style: TextStyle(
                                      color: Colors.blueGrey
                                    )
                                  )

                                ]
                              )


                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on ),
                          Text("Deliver to Avinashi 641670",style: TextStyle(fontSize: 16,color: Colors.blueGrey),),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          child: Text("In Stock",style: TextStyle(fontSize: 18,color: Colors.green),),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          Text("Quantity: ",
                            style: TextStyle(fontSize: 18),),
                          Row(
                            children: [
                              SizedBox(
                                width: 100, // Adjust width
                                height: 50,  // Adjust height
                                child: DropdownButton<int>(
                                  value: _selectedQuantity,
                                  isExpanded: true,
                                  items: [1, 2, 3, 4, 5].map((int value) {
                                    return DropdownMenuItem<int>(
                                      value: value,
                                      child: Text("$value",
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (int? newValue) {
                                    if (newValue != null) {
                                      setState(() {
                                        _selectedQuantity = newValue;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ],




                          )

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Add to Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Buy Now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
