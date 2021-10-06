import 'package:find_job_app/mock/jobs.dart';
import 'package:flutter/material.dart';

import 'component.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({Key? key}) : super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.arrow_back),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              'My Favorites',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ListView.builder(
                itemCount: jobItems.length,
                itemBuilder: (context, index) {
                  return Component(job: jobItems[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
