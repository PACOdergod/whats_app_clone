import 'package:flutter/material.dart';

class Whatsapp extends StatefulWidget {
  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Whatsapp'),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.camera,
                ),
              ),
              Tab(
                child: Text('chats'),
              ),
              Tab(
                child: Text('status'),
              ),
              Tab(
                child: Text('calls'),
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.ac_unit),
      ),
    );
  }
}
