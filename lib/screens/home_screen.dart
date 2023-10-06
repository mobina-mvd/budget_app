import 'package:budget_app/data/data.dart';
import 'package:budget_app/widgets/bar_chart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 100,
            forceElevated: true,
            // floating: true,
            pinned: true,
            leading: IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: const Icon(Icons.settings),
            ),
            // title: Text('Simple Budget'),
            // centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                iconSize: 30,
                icon: const Icon(Icons.add),
              ),
            ],
            flexibleSpace: const FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'Simple Budget',
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index == 0) {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.grey.shade200,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 2),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: BarChart(expenses: weeklySpending),
                  );
                } else {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    height: 100,
                    color: Colors.red,
                  );
                }
              },
              childCount: categories.length + 1,
            ),
          ),
        ],
      ),
    );
  }
}
