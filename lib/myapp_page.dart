import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppPage extends StatefulWidget {
  @override
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[100],
        leading: Icon(Icons.menu),
        iconTheme: IconThemeData(color: Colors.grey[800]),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.notifications_none),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[100],
        elevation: 0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home), onPressed: () {},),
            IconButton(icon: Icon(Icons.favorite,color: Colors.grey,), onPressed: () {},),
            IconButton(icon: Icon(Icons.chat_bubble,color: Colors.grey,), onPressed: () {},),
            IconButton(icon: Icon(Icons.person,color: Colors.grey,), onPressed: () {},),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Text(
                'Where are you\ngoing?',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 40,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                //margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.location_on, color: Color(0xff839398)),
                    hintText: 'E.g: New York, United States',
                    hintStyle: TextStyle(color: Color(0xff839398)),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      _cardList(
                        image: 'assets/images/1.jpg',
                        title: 'Lorem Ipsum',
                        sub: 'Gaza, Palestine',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      _cardList(
                        image: 'assets/images/2.jpg',
                        title: 'Ipsum quia',
                        sub: 'Rafah, Palestine',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      _cardList(
                        image: 'assets/images/3.jpg',
                        title: 'Neque porro',
                        sub: 'Khan Younis, Palestine',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      _cardSecond(
                        title: 'Lorem Ipsum',
                        image: 'assets/images/4.jpg',
                        sub: 'London, England',
                        price: "\$100/night"
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _cardSecond(
                          title: 'Lorem Ipsum',
                          image: 'assets/images/3.jpg',
                          sub: 'London, England',
                          price: "\$100/night"
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _cardSecond(
                          title: 'Lorem Ipsum',
                          image: 'assets/images/2.jpg',
                          sub: 'London, England',
                          price: "\$100/night"
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _cardSecond(
                          title: 'Lorem Ipsum',
                          image: 'assets/images/1.jpg',
                          sub: 'London, England',
                          price: "\$100/night"
                      ),

                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cardList({image, title, sub}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          sub,
          style: TextStyle(
            color: Color(0xff839398),
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _cardSecond({image, title, sub, price}){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(title,style: TextStyle(
                color: Colors.black87,
                fontSize: 16,fontWeight: FontWeight.w700
            ),),
            Row(
              children: <Widget>[
                Icon(Icons.location_on,size: 16,color:Color(0xff839398)),
                Text(sub,style: TextStyle(
                  color: Color(0xff839398),
                ),),
              ],
            ),
            SizedBox(height: 10,),
            Text(price,style: TextStyle(
                color: Colors.black87,
                fontSize: 16,fontWeight: FontWeight.w700
            ),),
          ],
        )
      ],
    );
  }
}
