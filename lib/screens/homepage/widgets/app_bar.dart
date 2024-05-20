import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12)),
          child: const Icon(Icons.view_compact_rounded, size: 40),
        ),
        const Text(
          "Creative Jobs",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://t3.ftcdn.net/jpg/03/00/02/08/360_F_300020899_N275TqND1g3LDqinhrvLhDpCy4RjYG8m.jpg")),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(12)),
        )
      ],
    );
  }
}
