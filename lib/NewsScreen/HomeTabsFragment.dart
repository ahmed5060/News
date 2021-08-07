import 'package:flutter/material.dart';
import 'package:news_app_alex/NewsScreen/NewsListFragment.dart';
import 'package:news_app_alex/NewsScreen/TabItem.dart';
import 'package:news_app_alex/model/sources_response.dart';
class HomeTabsFragment extends StatefulWidget {
 List<Sources> sources;
 HomeTabsFragment(this.sources);
  @override
  _HomeTabsFragmentState createState() => _HomeTabsFragmentState();
}

class _HomeTabsFragmentState extends State<HomeTabsFragment> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length:widget.sources.length,
        child:Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              child: TabBar(
                onTap: (index){
                  setState(() {
                    selectedIndex =index;
                  });
                },
                indicatorColor: Colors.transparent,
                isScrollable: true ,
                  tabs: widget.sources.map((source) => TabItem(source,widget.sources.indexOf(source)==selectedIndex)).toList()
              ),

            ),
            Expanded(
                child:TabBarView(
                  children: widget.sources.map((source) =>NewsListFragment(source)).toList(),

                ) )
          ],
        ) );
  }
}
