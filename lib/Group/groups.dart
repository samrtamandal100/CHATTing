import 'package:chater/Group/tabs_of_group/allgroups.dart';
import 'package:chater/Group/tabs_of_group/created.dart';
import 'package:chater/Group/tabs_of_group/joined.dart';
import 'package:flutter/material.dart';

class GroupHome extends StatefulWidget {
  const GroupHome({super.key});

  @override
  State<GroupHome> createState() => _GroupHomeState();
}

class _GroupHomeState extends State<GroupHome> with TickerProviderStateMixin {
    // late final TabController _tabController;
    final List<Widget> pagesgroup =const [
    AllGroups(),
    GroupsJoined(),
    GroupsCreated()
  ];
  final List<Widget> tabsofGroup = const [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Tab(
        text: 'All Groups',
      ),
    ),
    Padding(
       padding: EdgeInsets.symmetric(horizontal: 5),
      child: Tab(
        text: 'Joined',
      ),
    ),
    Padding(
       padding: EdgeInsets.symmetric(horizontal: 5),
      child: Tab(
        text: 'Created',
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.menu_open_rounded)),
        title: const Text(
          'Vicharr',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'Alice'),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: Container(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Groups",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showSearch(
                            context: context, delegate: CustomSearchDeligate());
                      },
                      child: Container(
                        // margin: const EdgeInsets.only(
                        //     top: 15, left: 5, bottom: 15),
                        height: 30,
                        width: MediaQuery.of(context).size.width * 0.5,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 1,
                                color: Theme.of(context).indicatorColor)),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.search_rounded,
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Search",
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TabBar(
                  physics: const ClampingScrollPhysics(),
                  tabs: tabsofGroup,
                  isScrollable: false,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    // controller: _tabController,
                    children: pagesgroup
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// color: Theme.of(context).primaryColor,

class CustomSearchDeligate extends SearchDelegate {
  List<String> searchItems = [
    'Ankit Magru',
    'Samrat Magru',
    'Suman Magru',
    "Sayan Bhodro",
    "Aman Bsdk",
    "Chiranjit Maggie",
    "Deba Nangta",
    "Beddyuti Nangta Magi",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(
            Icons.clear_rounded,
          ))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> mathQuery = [];
    for (var player in searchItems) {
      if (player.toLowerCase().contains(query.toLowerCase())) {
        mathQuery.add(player);
      }
    }
    return ListView.builder(
        itemCount: mathQuery.length,
        itemBuilder: (context, index) {
          var result = mathQuery[index];
          return ListTile(
            title: Text(
              result,
              style: const TextStyle(fontWeight: FontWeight.w400),
            ),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> mathQuery = [];
    for (var player in searchItems) {
      if (player.toLowerCase().contains(query.toLowerCase())) {
        mathQuery.add(player);
      }
    }
    return ListView.builder(
        itemCount: mathQuery.length,
        itemBuilder: (context, index) {
          var result = mathQuery[index];
          return ListTile(
            title: Text(
              result,
              style: const TextStyle(fontWeight: FontWeight.w400),
            ),
          );
        });
  }
}


//f6f6f6 bg
//ffffff