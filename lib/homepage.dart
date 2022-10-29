import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/detail_page.dart';
import 'package:instagram/followers_page.dart';
import 'package:instagram/widget/widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width / 3;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Icon(
                Icons.https_outlined,
                size: 20,
                color: Colors.black,
              ),
            ),
            Text('Febriang',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black))
          ],
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.add_box_outlined,
                size: 30,
                color: Colors.black,
              )),
          Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.dehaze_outlined,
                size: 30,
                color: Colors.black,
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        backgroundColor: Colors.white,
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Align(
              alignment: Alignment.bottomCenter,
              child: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
              color: Colors.black,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_creation_outlined,
              color: Colors.black,
            ),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircularProfile(
                      outline: 100,
                      size: 90,
                      image: 'images/profile.jpeg',
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Followers(),
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '6',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    'Posts',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '10.812',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    'Followers',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '9',
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    'Following',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "febriang",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "MAPPA",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const Text(
                  "myanimelist.net/Chainsaw_Man",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(7)),
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(7)),
                  child: Icon(Icons.expand_more_outlined),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.grid_on,
                  size: 33,
                ),
                Icon(
                  Icons.live_tv_rounded,
                  size: 35,
                  color: Colors.grey.shade400,
                ),
                Icon(
                  Icons.assignment_ind_outlined,
                  size: 35,
                  color: Colors.grey.shade400,
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailPage()),
              );
            },
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: size,
                      width: size,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Image.asset(
                        'images/1.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Image.asset(
                        'images/2.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Image.asset(
                        'images/3.jpeg',
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: size,
                      width: size,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Image.asset(
                        'images/4.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Image.asset(
                        'images/5.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: size,
                      width: size,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Image.asset(
                        'images/6.jpeg',
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
