import 'package:flutter/material.dart';
import 'hotellist.dart';

class Hotels {
  final String id;
  final String location,
      hotel,
      price,
      image,
      description,
      rating,
      taxes,
      address,
      cleaning_fee,
      total,
      greatfor,
      feature1,
      feature2,
      feature3,
      tel;

  Hotels({
    this.id,
    this.location,
    this.hotel,
    this.price,
    this.image,
    this.description,
    this.rating,
    this.address,
    this.cleaning_fee,
    this.taxes,
    this.total,
    this.greatfor,
    this.feature1,
    this.feature2,
    this.feature3,
    this.tel,
  });

  factory Hotels.fromJson(Map<String, dynamic> jsonData) {
    return Hotels(
      id: jsonData['id'],
      location: jsonData['location'],
      hotel: jsonData['hotel'],
      price: jsonData['price'],
      description: jsonData['description'],
      rating: jsonData['rating'],
      taxes: jsonData['taxes'],
      address: jsonData['address'],
      cleaning_fee: jsonData['cleaning_fee'],
      total: jsonData['total'],
      greatfor: jsonData['greatfor'],
      feature1: jsonData['feature1'],
      feature2: jsonData['feature2'],
      feature3: jsonData['feature3'],
      tel: jsonData['tel'],
      image:
          "https://jmworlds.000webhostapp.com/profilepics/" + jsonData['image'],
    );
  }
}

class CustomListView extends StatelessWidget {
  final List<Hotels> hotels;

  CustomListView(this.hotels);

  Widget build(context) {
    return ListView.builder(
      itemCount: hotels.length,
      itemBuilder: (context, int currentIndex) {
        return createViewItem(hotels[currentIndex], context);
      },
    );
  }
}
