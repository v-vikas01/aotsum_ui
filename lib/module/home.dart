import 'package:aotsum_assignment/component/size_config.dart';
import 'package:aotsum_assignment/helper/colors.dart';
import 'package:aotsum_assignment/helper/reuse_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _current = 0;

  final List<String> itemTexts = ["Home", "Orders", "Cart", "Payment", "Menu"];
  final List<String> itemIcons = [
    "assets/images/Home.svg",
    "assets/images/order.svg",
    "assets/images/Cart.svg",
    "assets/images/Wallet.svg",
    "assets/images/More.svg"
  ];
  final List<String> slider = [
    'assets/images/slider/Banner.png',
    'assets/images/slider/Banner.png',
    'assets/images/slider/Banner.png'
  ];
  final List<String> brands = [
    'assets/images/brands/hm.png',
    'assets/images/brands/Levis.png',
    'assets/images/brands/Puma.png',
    'assets/images/brands/Deisel.png'
  ];
  final List<String> category = [
    'assets/images/categories/category1.png',
    'assets/images/categories/category2.png',
    'assets/images/categories/category3.png',
    'assets/images/categories/category4.png'
  ];
  List<Map<String, dynamic>> products = [
    {'imageUrl': 'assets/images/products/product1.png', 'isFavorite': false},
    {'imageUrl': 'assets/images/products/product2.png', 'isFavorite': true},
    {'imageUrl': 'assets/images/products/product3.png', 'isFavorite': false},
    {'imageUrl': 'assets/images/products/product4.png', 'isFavorite': false},
    {'imageUrl': 'assets/images/products/product5.png', 'isFavorite': false}
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: COLORS.white,
        appBar: AppBar(
            toolbarHeight: 0,
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: COLORS.blueDark,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.dark,
            )),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: SizeConfig.screenWidth,
                      height: SizeConfig.blockHeight * 39,
                      padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.blockHeight * 3.6,
                        horizontal: SizeConfig.blockWidth * 4.5,
                      ),
                      decoration: const BoxDecoration(
                        color: COLORS.blueDark,
                        image: DecorationImage(
                          image: AssetImage("assets/images/banner.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/Menu.png',
                                width: SizeConfig.blockWidth * 7,
                                height: SizeConfig.blockHeight * 3.5,
                              ),
                              SizedBox(width: SizeConfig.blockWidth * 5),
                              Text(
                                'BopTee',
                                style: TextStyle(
                                  color: COLORS.white,
                                  fontSize: SizeConfig.blockWidth * 4.7,
                                  fontFamily: "Poppins",
                                ),
                              ),
                              Spacer(),
                              Image.asset(
                                'assets/images/Notification.png',
                                width: SizeConfig.blockWidth * 5,
                                height: SizeConfig.blockHeight * 3,
                              ),
                            ],
                          ),
                          SizedBox(height: SizeConfig.blockHeight * 4.1),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  width: SizeConfig.blockWidth * 65,
                                  height: SizeConfig.blockHeight * 8,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText:
                                          'What are you looking for Today?',
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w300,
                                        fontSize: SizeConfig.blockWidth * 3.2,
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      helperMaxLines: 1,
                                      isDense: true,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: COLORS.white),
                                        borderRadius: BorderRadius.circular(
                                            SizeConfig.blockHeight * 0.8),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: COLORS.white),
                                        borderRadius: BorderRadius.circular(
                                            SizeConfig.blockHeight * 0.8),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: COLORS.white),
                                        borderRadius: BorderRadius.circular(
                                            SizeConfig.blockHeight * 0.8),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: COLORS.white),
                                        borderRadius: BorderRadius.circular(
                                            SizeConfig.blockHeight * 0.8),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: COLORS.white),
                                        borderRadius: BorderRadius.circular(
                                            SizeConfig.blockHeight * 0.8),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: SizeConfig.blockWidth * 5),
                              InkWell(
                                onTap: () {
                                  FocusScopeNode currentFocus =
                                      FocusScope.of(context);
                                  if (!currentFocus.hasPrimaryFocus) {
                                    currentFocus.unfocus();
                                  }
                                },
                                child: Container(
                                  width: SizeConfig.blockWidth * 20,
                                  height: SizeConfig.blockHeight * 8,
                                  color: COLORS.white,
                                  child: Center(
                                    child: SizedBox(
                                      height: SizeConfig.blockHeight * 3,
                                      width: SizeConfig.blockWidth * 6,
                                      child: SvgPicture.asset(
                                        'assets/images/Search.svg',
                                        alignment: Alignment.center,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      top: SizeConfig.blockHeight * 24.5,
                      child: SizedBox(
                        width: SizeConfig.screenWidth,
                        child: Column(
                          children: [
                            CarouselSlider(
                              options: CarouselOptions(
                                height: SizeConfig.blockHeight * 28,
                                scrollDirection: Axis.horizontal,
                                enableInfiniteScroll: false,
                                enlargeCenterPage: false,
                                viewportFraction: 0.88,
                                animateToClosest: true,
                                // autoPlay: true,
                                // pauseAutoPlayOnTouch: true,
                                pageSnapping: true, padEnds: true,
                                scrollPhysics: AlwaysScrollableScrollPhysics(),
                                initialPage: 0,
                                clipBehavior: Clip.none,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                  });
                                },
                              ),
                              items: slider.asMap().entries.map((entry) {
                                final index = entry.key;
                                final imageUrl = entry.value;
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                      width: SizeConfig.screenWidth,
                                      margin: EdgeInsets.only(
                                        left: index == 0
                                            ? 0
                                            : SizeConfig.blockWidth * 2,
                                        right: SizeConfig.blockWidth * 2,
                                      ),
                                      decoration: const BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                      child: Container(
                                        width: SizeConfig.screenWidth,
                                        height: SizeConfig.blockHeight * 27,
                                        child: Image.asset(imageUrl),
                                      ),
                                    );
                                  },
                                );
                              }).toList(),
                            ),
                            SizedBox(
                              height: 10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  slider.length,
                                  (index) => Container(
                                    width: SizeConfig.blockWidth * 5,
                                    height: SizeConfig.blockHeight * 0.6,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: SizeConfig.blockWidth * 1),
                                    decoration: BoxDecoration(
                                      color: _current == index
                                          ? COLORS.blueDark
                                          : COLORS.greeyBorder,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // Rest of the content
                            // You can add the rest of your content here as per your original code
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: SizeConfig.blockHeight * 17.5),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.blockHeight * 1,
                    horizontal: SizeConfig.blockWidth * 4.5,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Our Top Most Brands',
                            style: TextStyle(
                              fontSize: SizeConfig.blockWidth * 4.3,
                              color: COLORS.blueDark,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                3,
                                (index) => Container(
                                  width: SizeConfig.blockWidth * 2,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: SizeConfig.blockWidth * 1),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: 0 == index
                                        ? COLORS.blueDark
                                        : COLORS
                                            .greeyBorder, // Change active and inactive colors as needed
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockHeight * 3,
                      ),
                      SizedBox(
                        height: SizeConfig.blockHeight * 15,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: brands.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: SizeConfig.blockHeight * 1),
                              child: brandsContainer(
                                  imageUrl: brands[index],
                                  margin: EdgeInsets.symmetric(
                                      horizontal: index == 0
                                          ? 5
                                          : SizeConfig.blockWidth * 4)),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockHeight * 2,
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: SizeConfig.blockHeight * 0.5,
                  color: COLORS.divider,
                ),
                Container(
                  margin: EdgeInsets.only(top: SizeConfig.blockHeight * 0.8),
                  padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.blockHeight * 1,
                    horizontal: SizeConfig.blockWidth * 4.5,
                  ),
                  child: Column(
                    children: [
                      textHeader(text: "Categories", onPressed: () {})
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: SizeConfig.blockHeight * 0.5),
                  height: SizeConfig.blockHeight * 23,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: category.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: SizeConfig.blockHeight * 1),
                        child: categoriesCard(
                            imageUrl: category[index],
                            type: "Category A",
                            margin: EdgeInsets.symmetric(
                                horizontal: index == 0
                                    ? 5
                                    : SizeConfig.blockWidth * 2)),
                      );
                    },
                  ),
                ),
                Divider(
                  thickness: SizeConfig.blockHeight * 0.5,
                  color: COLORS.divider,
                ),
                Container(
                  margin: EdgeInsets.only(top: SizeConfig.blockHeight * 0.5),
                  padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.blockHeight * 1,
                    horizontal: SizeConfig.blockWidth * 4.5,
                  ),
                  child: Column(
                    children: [
                      textHeader(text: "Hot Selling Products", onPressed: () {})
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: SizeConfig.blockHeight * 0.8),
                  color: Colors.white,
                  height: SizeConfig.blockHeight * 31,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: SizeConfig.blockHeight * 1),
                        child: productCards(
                            onTap: () {
                              setState(() {
                                products[index]['isFavorite'] =
                                    !products[index]['isFavorite'];
                              });
                            },
                            icon: products[index]['isFavorite']
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: COLORS.red,
                            imageUrl: products[index]['imageUrl'],
                            margin: EdgeInsets.symmetric(
                                horizontal: index == 0
                                    ? SizeConfig.blockWidth * 3.5
                                    : SizeConfig.blockWidth * 2)),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockHeight * 2,
                ),
                Divider(
                  thickness: SizeConfig.blockHeight * 0.5,
                  color: COLORS.divider,
                ),
                SizedBox(
                  height: SizeConfig.blockHeight * 1,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.blockHeight * 1,
                    horizontal: SizeConfig.blockWidth * 4.5,
                  ),
                  child: Column(
                    children: [
                      textHeader(text: "Recently Added", onPressed: () {})
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: SizeConfig.blockHeight * 0.8),
                  color: Colors.white,
                  height: SizeConfig.blockHeight * 31,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      // Reverse the index to iterate over the list in reverse order
                      final reversedIndex = products.length - 1 - index;
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: SizeConfig.blockHeight * 1),
                        child: productCards(
                          onTap: () {
                            setState(() {
                              // Access the reversed index to toggle isFavorite
                              products[reversedIndex]['isFavorite'] =
                                  !products[reversedIndex]['isFavorite'];
                            });
                          },
                          icon: products[reversedIndex]['isFavorite']
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: COLORS.red,
                          imageUrl: products[reversedIndex]['imageUrl'],
                          margin: EdgeInsets.symmetric(
                            horizontal: reversedIndex == products.length - 1
                                ? SizeConfig.blockWidth * 3.5
                                : SizeConfig.blockWidth * 2,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedFontSize: 0,
          items: List.generate(
            itemIcons.length,
            (index) => BottomNavigationBarItem(
              icon: Container(
                width: SizeConfig.blockWidth * 23,
                height: SizeConfig.blockHeight * 5,
                decoration: BoxDecoration(
                  color: _selectedIndex == index ? COLORS.blueDark : null,
                  borderRadius:
                      BorderRadius.circular(SizeConfig.blockWidth * 5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      itemIcons[index],
                      color:
                          _selectedIndex == index ? Colors.white : Colors.grey,
                      width: _selectedIndex == index
                          ? SizeConfig.blockWidth * 4
                          : SizeConfig.blockWidth * 6.3,
                    ),
                    SizedBox(width: SizeConfig.blockWidth * 1.7),
                    if (_selectedIndex == index)
                      Text(
                        itemTexts[index],
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: SizeConfig.blockWidth * 2.6),
                      ),
                  ],
                ),
              ),
              label: '',
            ),
          ),
        ),
      ),
    );
  }
}
