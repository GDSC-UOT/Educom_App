import 'package:ed_community/features/home/ui/widgets/paper_card.dart';
import 'package:flutter/material.dart';

class PapersList extends StatelessWidget {
  final List<Widget> papers = [
    const PaperCard(),
    const PaperCard(),
    const PaperCard(),
    const PaperCard(),
  ];
  PapersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: ListView.builder(
          itemCount: papers.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: papers[index],
            );
          }),
    );
  }
}
