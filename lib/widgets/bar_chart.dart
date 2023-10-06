import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  final List<double> expenses;

  const BarChart({
    super.key,
    required this.expenses,
  });

  @override
  Widget build(BuildContext context) {
    double mostExpensive = 0;
    for (var price in expenses) {
      if (price > mostExpensive) {
        mostExpensive = price;
      }
    }

    return Column(
      children: [
        const Text(
          'Weekly Spending',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: const Icon(Icons.arrow_back),
            ),
            const Expanded(
              child: Text(
                'Nov 10, 2019 - Nov 16, 2019',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Bar(
              label: 'Su',
              amountSpent: expenses[0],
              mostExpensive: mostExpensive,
            ),
            Bar(
              label: 'Mo',
              amountSpent: expenses[1],
              mostExpensive: mostExpensive,
            ),
            Bar(
              label: 'Tu',
              amountSpent: expenses[2],
              mostExpensive: mostExpensive,
            ),
            Bar(
              label: 'We',
              amountSpent: expenses[3],
              mostExpensive: mostExpensive,
            ),
            Bar(
              label: 'Th',
              amountSpent: expenses[4],
              mostExpensive: mostExpensive,
            ),
            Bar(
              label: 'Fr',
              amountSpent: expenses[5],
              mostExpensive: mostExpensive,
            ),
            Bar(
              label: 'Sa',
              amountSpent: expenses[6],
              mostExpensive: mostExpensive,
            ),
          ],
        ),
      ],
    );
  }
}

class Bar extends StatelessWidget {
  final String label;
  final double amountSpent;
  final double mostExpensive;
  final double _maxBarHeight = 150;

  const Bar({
    super.key,
    required this.label,
    required this.amountSpent,
    required this.mostExpensive,
  });

  @override
  Widget build(BuildContext context) {
    final barHeight = amountSpent / mostExpensive * _maxBarHeight;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          '\$${amountSpent.toStringAsFixed(2)}',
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 6),
        Container(
          height: barHeight,
          width: 18,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
