import 'package:flutter/material.dart';
import 'package:travel_app/models/country.dart';

class CardCountry extends StatelessWidget {
  final Country country;
  CardCountry(
      {super.key, required this.country, required void Function() onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        title: Text(
          country.name,
        ),
        subtitle: Text(country.conntry),
        leading: ClipRRect(
          child: Image.asset(country.imagePath),
          borderRadius: BorderRadius.circular(15),
        ),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}
