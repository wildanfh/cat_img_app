import 'package:flutter/material.dart';
import 'package:myget_it/presentation/notifier/cat_notifier.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer<CatNotifier>(
          builder: (context, notifier, _) {
            final catImage = notifier.image;
            return Center(
              child: catImage != null
                  ? Image.network(catImage.url)
                  : const Text('Image not loaded yet'),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () async {
          Provider.of<CatNotifier>(context, listen: false).getCatImage();
        },
      ),
    );
  }
}
