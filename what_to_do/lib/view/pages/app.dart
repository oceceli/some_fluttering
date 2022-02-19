import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:what_to_do/states/list_state.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("What to do"),
        ),
        // backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListItem();
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        foregroundColor: Colors.white,
        onPressed: () {},
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  ListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = Provider.of<ListState>(context).title;
    String subtitle = Provider.of<ListState>(context).subtitle;
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.onSurface,
            blurRadius: 10,
            // spreadRadius: 1,
            offset: const Offset(
              2.0, // Move to right 10  horizontally
              4.0, // Move to bottom 10 Vertically
            ),
          ),
        ],
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        enableFeedback: true,
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.error,
          child: Icon(Icons.ac_unit),
        ),
        trailing: InkWell(
          onTap: () {},
          child: Icon(Icons.delete),
        ),
      ),
    );
  }
}
