import 'package:flutter/material.dart';
import 'package:dinelah_vendor/data/models/intro.dart';

class IntroItemWidget extends StatelessWidget {
  final IntroModel? intro;
  const IntroItemWidget({Key? key, this.intro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("${intro?.image}"),
            const SizedBox(height: 25),
            Text(
              '${intro?.title}',
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 15),
            Text(
              '${intro?.description}',
              style: const TextStyle(height: 1.5),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
