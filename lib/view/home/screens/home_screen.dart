import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/home/widgets/review_tab_bar.dart';
import 'package:food_delivery_app/view/home/widgets/sampl_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
              SliverAppBar(
                pinned: true,
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: const Text(
                    "VOYAGER CAFE",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  background: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          'assets/img1.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 60,
                          color: Colors.black.withOpacity(0.3),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  const TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: "Menu"),
                      Tab(text: "Review"),
                    ],
                  ),
                ),
              )
            ];
          },
          body: const TabBarView(
            children: [
              MenuScreen(),
              ReviewTabBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
