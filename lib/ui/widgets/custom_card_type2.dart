import 'package:fl_components/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
                "https://cdnb.artstation.com/p/assets/images/images/051/898/687/4k/luke-wells-luke-wells-landscape-midjourney.jpg?1658431517"),
            placeholder: AssetImage('assets/animation/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: const Text("un hermoso paisaje"),
          )
        ],
      ),
    );
  }
}
