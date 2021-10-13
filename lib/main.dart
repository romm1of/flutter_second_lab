import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 140.0),
                    ...List<Widget>.generate(
                      30,
                      (index) => _ChatListTile(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 140.0,
              color: Color(0xFFF6F6F6),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 15.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Edit',
                            style: GoogleFonts.montserrat(
                              color: Color(0xFF037EE5),
                              fontSize: 17.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Chats',
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/icons/edit.svg',
                            color: Color(0xFF037EE5),
                            height: 20.0,
                            width: 20.0,
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        height: 36.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFF767680).withOpacity(0.12),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.asset(
                              'assets/icons/search.svg',
                              color: Color(0xFF3C3C43),
                              height: 15.0,
                              width: 15.0,
                            ),
                            SizedBox(width: 2.0),
                            Text(
                              'Search for messeges or users',
                              style: GoogleFonts.montserrat(
                                color: Color(0xFF3C3C43),
                                fontSize: 17.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 55.0,
              color: Color(0xFFF6F6F6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset('assets/icons/contact.svg'),
                        SizedBox(height: 2.0),
                        Text(
                          'Contacts',
                          style: GoogleFonts.montserrat(
                            color: Color(0xFF545458),
                            fontSize: 10.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset('assets/icons/phone.svg'),
                        SizedBox(height: 2.0),
                        Text(
                          'Calls',
                          style: GoogleFonts.montserrat(
                            color: Color(0xFF545458),
                            fontSize: 10.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset('assets/icons/chats.svg'),
                        SizedBox(height: 2.0),
                        Text(
                          'Chats',
                          style: GoogleFonts.montserrat(
                            color: Color(0xFF545458),
                            fontSize: 10.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset('assets/icons/contact.svg'),
                        SizedBox(height: 2.0),
                        Text(
                          'Settings',
                          style: GoogleFonts.montserrat(
                            color: Color(0xFF545458),
                            fontSize: 10.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ChatListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/saved.png'),
              ),
            ),
          ),
          SizedBox(width: 15.0),
          Container(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Saved messages',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'image.jpeg',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.montserrat(
                    color: Color(0xFF8E8E93),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
