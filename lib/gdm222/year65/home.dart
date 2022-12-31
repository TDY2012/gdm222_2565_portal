import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import '../../constants.dart';
import 'package:url_launcher/url_launcher.dart';

class GDM222Year65Screen extends StatelessWidget {
  const GDM222Year65Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GDM 222 (2/2565)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(DefaultPadding.GENERAL),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ประกาศ',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text(
                    '1. เราจะใช้เว็บไซต์นี้เป็นช่องทางหลัก ที่รวบรวมประกาศที่สำคัญ เอกสารประกอบการเรียน การบ้าน เฉลย และทรัพยากรอื่นที่ใช้ประกอบการเรียนไว้',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  dense: true,
                ),
                // ListTile(
                //   title: RichText(
                //     text: TextSpan(
                //       children: [
                //         TextSpan(
                //           text: '2. กรุณาเข้าไปตอบแบบสำรวจก่อนเรียนได้',
                //           style: Theme.of(context).textTheme.titleMedium,
                //         ),
                //         TextSpan(
                //           text: 'ที่นี่',
                //           style: Theme.of(context).textTheme.titleMedium!.copyWith(
                //             color: Theme.of(context).primaryColor
                //           ),
                //           recognizer: TapGestureRecognizer() .. onTap = () {
                //             launchUrl(
                //               Uri.parse('https://docs.flutter.io/flutter/services/UrlLauncher-class.html')
                //             );
                //           },
                //         ),
                //       ]
                //     )
                //   ),
                //   dense: true,
                // ),
                ListTile(
                  title: Text(
                    '2. กรุณาเข้าไปตอบ "แบบสำรวจก่อนเรียน" ได้ที่ลิ้งในหัวข้อด้านล่างนี้',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  dense: true,
                ),
              ],
            ),
            const Divider(),
            Text(
              'ทรัพยากร',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '1. แบบสำรวจก่อนเรียน: ',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        TextSpan(
                          text: 'ลิ้ง',
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Theme.of(context).primaryColor
                          ),
                          recognizer: TapGestureRecognizer() .. onTap = () {
                            Navigator.pushNamed(context, '/gdm222/year65/questionnaire_before_class');
                          },
                        ),
                      ]
                    )
                  ),
                  dense: true,
                ),
              ],
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('ย้อนกลับ'),
            )
          ].map(
            (e) => Padding(
              padding: const EdgeInsets.all(DefaultPadding.HALF),
              child: e,
            )
          ).toList(),
        ),
      )
    );
  }
}