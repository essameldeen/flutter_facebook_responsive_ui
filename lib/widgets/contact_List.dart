import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/user_card.dart';

class ContactList extends StatelessWidget {
  final List<User> users;

  const ContactList({Key key, this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Contacts',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey[600],
              ),
              const SizedBox(
                width: 8.0,
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.grey[600],
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 10),
                itemCount: users.length,
                itemBuilder: (ctx, index) {
                  final user = users[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: UserCard(
                      user: user,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
