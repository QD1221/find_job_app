import 'package:find_job_app/components/component.dart';
import 'package:find_job_app/mock/jobs.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 16,
                width: 38,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 2,
                      color: Colors.black,
                    ),
                    Container(
                      height: 2,
                      color: Colors.black,
                    ),
                    Container(
                      height: 2,
                      width: 16,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Spacer(),
              CircleAvatar(
                radius: 16,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              height: 48,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: 'Search job here...',
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.filter_alt),
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(6),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Looking for Job Open Big\nOpportunity',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_downward_outlined,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Apply now',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jobs for you',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'See all(15)',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 48),
              child: SingleChildScrollView(
                child: Column(
                  children: jobItems
                      .map((e) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: SizedBox(
                      width: double.infinity,
                      child: Component(job: e),
                    ),
                  ))
                      .toList(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
