import 'package:anti_ui/features/home/widgets/row_section.dart';
import 'package:anti_ui/theme/theme.dart';
import 'package:flutter/material.dart';

import '../../../core/commons/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text(
          'Creed AntiVirus',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          CustomButton(onPressed: () {}, text: 'Upgrade'),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 400,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  radius: 100,
                  child: const Text(
                    'Scan',
                    style: TextStyle(
                      color: Pallete.whiteColor,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Scan to detect threats')
              ],
            ),
          ),
          Container(
            height: 400,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              color: Theme.of(context).primaryColor,
            ),
            child: Column(
              children: [
                const RowSection(
                  text1: 'Clean RAM',
                  text2: 'Junk Files',
                  icon1: Icons.bookmark,
                  icon2: Icons.speed,
                ),
                const SizedBox(height: 20),
                const RowSection(
                  text1: 'Anti Virus Scan',
                  text2: 'File Detection',
                  icon1: Icons.analytics,
                  icon2: Icons.file_copy,
                ),
                const SizedBox(height: 20),
                Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Pallete.whiteColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    title: Column(
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.group_add),
                            SizedBox(width: 20),
                            Text('Security Tip of the Day')
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 200,
                          child: const Text(
                            'Hey guys, if you love this video, please give it a thumbs up and please subscribe',
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
