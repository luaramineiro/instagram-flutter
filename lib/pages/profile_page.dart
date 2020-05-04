import 'package:flutter/material.dart';
import 'package:instagram/components/circular_avatar.dart';
import 'package:instagram/components/photo_grid.dart';
import 'package:instagram/components/profile_numbers.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  TabController _tabBarController;

  String url =
      "https://instagram.fssa3-1.fna.fbcdn.net/v/t51.2885-19/s150x150/83013671_2210161439278783_793213814563667968_n.jpg?_nc_ht=instagram.fssa3-1.fna.fbcdn.net&_nc_ohc=hapBiJeOP6sAX_i4rYI&oh=696ba9dfbecf9fa1da18e1e522140bdd&oe=5ED713C9";

  final url2 =
      "https://instagram.fssa3-1.fna.fbcdn.net/v/t51.2885-15/e35/47689805_2258362521111421_2789522395471175597_n.jpg?_nc_ht=instagram.fssa3-1.fna.fbcdn.net&_nc_cat=101&_nc_ohc=SeMnRFvEOCoAX-GXfs7&oh=3210049effa866f62319466a49906443&oe=5ED82216";

  String name = "Luara Mineiro";
  String username = "luara.mineiro";
  String email = "luara.mineiro@cubos.io";

  @override
  void initState() {
    _tabBarController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          header(),
          Expanded(
            child: tabView(),
          ),
        ],
      ),
    );
  }

  Widget header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(width: 8.0),
            CircularAvatar(
              urlImage: url,
              icon: Icons.add,
            ),
            Expanded(
              child: ProfileNumbers(
                publications: 123,
                following: 134,
                followers: 566,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
              ),
              Text(email),
            ],
          ),
        ),
      ],
    );
  }

  Widget tabView() {
    return Column(
      children: [
        TabBar(
          controller: _tabBarController,
          tabs: [
            Tab(
              child: Icon(
                Icons.grid_on,
                color: Colors.grey,
              ),
            ),
            Tab(
              child: Icon(
                Icons.portrait,
                color: Colors.grey,
              ),
            )
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabBarController,
            children: [
              PhotoGrid(List.generate(10, (index) => url)),
              PhotoGrid(List.generate(5, (index) => url2)),
            ],
          ),
        )
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white10,
      title: Text(
        username,
        style: TextStyle(
          color: Colors.grey[800],
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Icon(Icons.menu, color: Colors.grey[800]),
        ),
      ],
    );
  }
}
