import 'package:flutter/material.dart';
import 'package:cadastro/components/user_tile.dart';
import 'package:cadastro/data/dummy_user.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
      ),
    );
  }
}
