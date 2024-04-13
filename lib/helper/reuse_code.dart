import 'package:aotsum_assignment/component/size_config.dart';
import 'package:aotsum_assignment/helper/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget brandsContainer(
    {required String imageUrl, required EdgeInsetsGeometry? margin}) {
  return Container(
      width: SizeConfig.blockWidth * 22,
      height: SizeConfig.blockHeight * 12,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 2),
        color: COLORS.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            spreadRadius: 3,
            blurRadius: 1,
            offset: Offset(0.5, 0.1),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Container(
        width: SizeConfig.blockWidth * 16,
        height: SizeConfig.blockHeight * 8,
        child: Image.asset(
          imageUrl,
        ),
      ));
}

Widget textHeader({required String text, required VoidCallback onPressed}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(text,
          style: TextStyle(
            fontSize: SizeConfig.blockWidth * 4.3,
            color: COLORS.blueDark,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
          )),
      InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: SizeConfig.blockHeight * 1,
              horizontal: SizeConfig.blockWidth * 4.3),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 5),
              color: COLORS.viewAll),
          child: Text("View all",
              style: TextStyle(
                fontSize: SizeConfig.blockWidth * 3.3,
                color: COLORS.blueDark,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              )),
        ),
      )
    ],
  );
}

Widget categoriesCard(
    {required String imageUrl,
    required String type,
    required EdgeInsetsGeometry? margin}) {
  return Container(
    width: SizeConfig.blockWidth * 25,
    height: SizeConfig.blockHeight * 23,
    margin: margin,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: SizeConfig.blockWidth * 25,
          height: SizeConfig.blockHeight * 15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 2),
          ),
          child: Image.asset(
            imageUrl,
          ),
        ),
        SizedBox(
          height: SizeConfig.blockHeight * 0.5,
        ),
        Text(type,
            style: TextStyle(
              fontSize: SizeConfig.blockWidth * 3.5,
              color: COLORS.blueDark,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
            )),
      ],
    ),
  );
}

Widget productCards({
  required VoidCallback onTap,
  required Color? color,
  required String imageUrl,
  required EdgeInsetsGeometry? margin,
  required IconData? icon
}) {
  return Container(
    width: SizeConfig.blockWidth * 38,
    margin: margin,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 3),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.05),
          spreadRadius: 0.5,
          blurRadius: 0.1,
          offset: Offset(0.5, 0.1),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              width: SizeConfig.blockWidth * 38,
              height: SizeConfig.blockHeight * 19,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(SizeConfig.blockWidth * 4),
                    topLeft: Radius.circular(SizeConfig.blockWidth * 4)),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: SizeConfig.blockHeight*1.5,
                right: SizeConfig.blockWidth*3,
                child: InkWell(
                  onTap: onTap,
                  child: Container(
                    alignment: Alignment.center,
                    width: SizeConfig.blockWidth * 6,
                    height: SizeConfig.blockWidth * 6,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: COLORS.white,
                    ),
                    child: Icon(
                      icon,
                      color: color,
                      size: SizeConfig.blockWidth*4,
                    ),
                  ),
                )
            )
          ],
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: SizeConfig.blockWidth * 2.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("₹ 750",
                  style: TextStyle(
                    fontSize: SizeConfig.blockWidth * 3.4,
                    color: COLORS.priceColors,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                  )),
              Container(
                width: SizeConfig.blockWidth * 17,
                height: SizeConfig.blockHeight * 5,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: COLORS.yellowDark,
                    size: SizeConfig.blockWidth * 3,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.blockHeight * 5,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(SizeConfig.blockWidth * 4),
                bottomRight: Radius.circular(SizeConfig.blockWidth * 4)),
            color: COLORS.blueDark,
          ),
          child: Text("Add to Cart",
              style: TextStyle(
                fontSize: SizeConfig.blockWidth * 3.2,
                color: COLORS.white,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
              )),
        )
      ],
    ),
  );
}
