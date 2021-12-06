import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4,
      shadowColor: Colors.blue[200],
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
        leading: Icon(
          Icons.check_circle_outline,
          color: Color(0xFFEF31F3),
          size: 27.5,
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            "plan trip to finland",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20, color: Color(0xFF40586F)),
          ),
        ),
        subtitle: Text("The family trip to finland nextweek"),
        trailing: SizedBox(
          width: 100,
          child: Row(children: [
            Icon(Icons.notifications_none_outlined, color: Color(0xFFEF31F3)),
            SizedBox(width: 10),
            Text(
              "Yesterday",
              style: TextStyle(color: Color(0xFFEF31F3)),
            ),
          ]),
        ),
      ),
    );
  }
}
