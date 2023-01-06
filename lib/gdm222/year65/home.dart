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
                ListTile(
                  title: Text(
                    '2. "แบบสำรวจก่อนเรียน" ปิดรับคำตอบแล้ว',
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
                          text: 'ปิดรับคำตอบแล้ว',
                          style: Theme.of(context).textTheme.titleMedium,
                          // style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          //   color: Theme.of(context).primaryColor
                          // ),
                          // recognizer: TapGestureRecognizer() .. onTap = () {
                          //   Navigator.pushNamed(context, '/gdm222/year65/questionnaire_before_class');
                          // },
                        ),
                      ]
                    )
                  ),
                  dense: true,
                ),
                ListTile(
                  title: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '2. คำอธิบายรายวิชา: ',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        TextSpan(
                          text: 'ลิ้ง',
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Theme.of(context).primaryColor
                          ),
                          recognizer: TapGestureRecognizer() .. onTap = () {
                            launchUrl(
                              Uri.parse('https://drive.google.com/file/d/1-gY19DkXdAT2iI4ABL5l8GUA1qE1vtGx/view?usp=sharing')
                            );
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