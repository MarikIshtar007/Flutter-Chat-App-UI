import 'package:chat_app/models/message_model.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Favorite Contacts',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                  ),
                  onPressed: () {},
                  iconSize: 30.0,
                  color: Colors.blueGrey,
                )
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: favorites.length,
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage(favorites[index].imageUrl),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        favorites[index].name,
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
