import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app/models/country.dart';

// ignore: must_be_immutable
class CountryTile extends StatelessWidget {
  Country country;
  final void Function()? onTap;
  CountryTile({super.key, required this.country, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            25,
          ),
        ),
        margin: EdgeInsets.only(left: 18),
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //images
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                country.imagePath,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(
              height: 10,
            ),
            // name
            Text(
              country.name,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
            ),

            //country + rating
            SizedBox(
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    country.conntry,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  Container(
                    height: 25,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                        ),
                        Text(
                          country.rating,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
