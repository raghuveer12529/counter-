import 'package:flutter/material.dart';

class NewUser extends StatelessWidget {

final Function addUser;
final usernameInput = TextEditingController();
final marksSecured = TextEditingController();

NewUser(this.addUser);

  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            child:Container(
              padding: EdgeInsets.all(10 ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText:'Username'
                    ),
                    controller: usernameInput,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText:'Secured Marks'
                    ),
                    controller: marksSecured,
                ),
                FlatButton(
                  onPressed: (){
                    print('HII');
                    addUser(usernameInput.text,marksSecured.text);
                  },
                   child: Text('Add Marks'),
                   textColor: Colors.black87,
                   )
              ],
            ),
          )
          );
  }
}
