import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
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
      body: SingleChildScrollView(
        child: Padding(
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
                      '2. แบบสำรวจก่อนเรียนปิดรับคำตอบแล้ว',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: Text(
                      '3. สัปดาห์ที่ 1 (วันที่ 2023-01-18) กรุณานำเครื่องเขียนมาด้วย ยังไม่จำเป็นต้องนำคอมพิวเตอร์มา และในวันเดียวกันนี้ช่วงบ่าย จะเป็นสัปดาห์ที่ 1 ของรายวิชา MDT 112 เซค 2 นักศึกษาที่สนใจสามารถติดต่อ อ.กิตตินันท์ เพื่อขอเข้าร่วมชั้นเรียนด้วย (sit-in) ได้',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: Text(
                      '4. การบ้านครั้งที่ 1 กำหนดปิดรับคำตอบวันที่ 2023-02-07 เวลา 23.59 น. (ปิดรับคำตอบแล้ว)',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: Text(
                      '5. สัปดาห์ที่ 5 (วันที่ 2023-02-15) มี Quiz ครั้งที่ 1 สามารถทำได้ทั้งผ่านแบบกรอกคำตอบ (กระดาษ) ในห้องเรียนและผ่านช่องทางออนไลน์ สำหรับนักศึกษาคนใดที่ต้องการทำ Quiz ผ่านแบบกรอกคำตอบในห้องเรียน กรุณานำเครื่องเขียนมาด้วย สำหรับช่องทางออนไลน์ จะประกาศลิ้งแบบกรอกคำตอบออนไลน์ให้ทราบในวันดังกล่าวผ่านกลุ่ม Facebook',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: Text(
                      '6. การบ้านครั้งที่ 2 กำหนดปิดรับคำตอบวันที่ 2023-02-28 เวลา 23.59 น.',
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
                  ListTile(
                    title: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '3. รายละเอียดโครงงานรายวิชา: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://docs.google.com/document/d/1xfVSk-Fy7iqGB8A-bLQw2j44xKbjrTCT3QDexYxA2Ug/edit?usp=share_link')
                              );
                            },
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
                            text: '4. สไลด์สัปดาห์ที่ 1: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://docs.google.com/presentation/d/1MSOIngGz-shLqziTfq2YwvPPHvJc2d6ZMmhM8ugKphw/edit?usp=share_link')
                              );
                            },
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
                            text: '5. บันทึกการสอนย้อนหลังสัปดาห์ที่ 1: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง ',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://kmutt-ac-th.zoom.us/rec/share/JnDm5udhfRgzG09urxYxOCtEiKg1yfiIQ7zQGC0_g9JQqism6aTDdNCfen_4fTM9.rT5oheZ6z4XlqjRX?startTime=1674013933000')
                              );
                            },
                          ),
                        ]
                      )
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: Wrap(
                      spacing: DefaultPadding.GENERAL,
                      children: [
                          RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'รหัสผ่าน: Kw3iDD%u',
                                style: Theme.of(context).textTheme.titleMedium!
                              ),
                            ]
                          )
                        ),
                        IconButton(
                          onPressed: () {
                            Clipboard.setData(
                              const ClipboardData(text: 'Kw3iDD%u')
                            ).then((_){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      "คัดลอกรหัสผ่าน Kw3iDD%u"
                                    )
                                  )
                                );
                            });
                          },
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: const Icon(
                            Icons.content_copy,
                          )
                        ),
                      ]
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '6. สไลด์สัปดาห์ที่ 2: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://docs.google.com/presentation/d/1_n-y24gOtA3KvD2Hrsv_qOo45McYiM__7dDdsci0RTM/edit?usp=share_link')
                              );
                            },
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
                            text: '7. บันทึกการสอนย้อนหลังสัปดาห์ที่ 2: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง ',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://kmutt-ac-th.zoom.us/rec/share/G5HMXCu0KcHjU57KTCmelEX-8BKBX7KjR07sAc4gUmGzrTZk5q_QfkvLG93EIV0f.ylzFBQcSkHSHS00t?startTime=1674615491000')
                              );
                            },
                          ),
                        ]
                      )
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: Wrap(
                      spacing: DefaultPadding.GENERAL,
                      children: [
                          RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'รหัสผ่าน: r&!C9y8s',
                                style: Theme.of(context).textTheme.titleMedium!
                              ),
                            ]
                          )
                        ),
                        IconButton(
                          onPressed: () {
                            Clipboard.setData(
                              const ClipboardData(text: 'r&!C9y8s')
                            ).then((_){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      "คัดลอกรหัสผ่าน r&!C9y8s"
                                    )
                                  )
                                );
                            });
                          },
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: const Icon(
                            Icons.content_copy,
                          )
                        ),
                      ]
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '8. ตัวอย่างสัปดาห์ที่ 2 โปรแกรม Pythagorean tree: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://github.com/TDY2012/gdm222_2565_week1_pythagorean_tree')
                              );
                            },
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
                            text: '9. สไลด์สัปดาห์ที่ 3: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://docs.google.com/presentation/d/1XEp8Ahij_xry8WPWCmZ0nIBuU5kzqSopgoaJoMpxv-U/edit?usp=sharing')
                              );
                            },
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
                            text: '10. บันทึกการสอนย้อนหลังสัปดาห์ที่ 3: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง ',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://kmutt-ac-th.zoom.us/rec/share/PbO711DF-5nvWqmfq_SJ30tPuPjRPAF0jZCTUMwqJcK08vJ95Kty2QFSi2Yl06Bi.t5_tCC2EAGcxD_Jv?startTime=1675218449000')
                              );
                            },
                          ),
                        ]
                      )
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: Wrap(
                      spacing: DefaultPadding.GENERAL,
                      children: [
                          RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'รหัสผ่าน: X5MB7Sv&',
                                style: Theme.of(context).textTheme.titleMedium!
                              ),
                            ]
                          )
                        ),
                        IconButton(
                          onPressed: () {
                            Clipboard.setData(
                              const ClipboardData(text: 'X5MB7Sv&')
                            ).then((_){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      "คัดลอกรหัสผ่าน X5MB7Sv&"
                                    )
                                  )
                                );
                            });
                          },
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: const Icon(
                            Icons.content_copy,
                          )
                        ),
                      ]
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '11. การบ้านครั้งที่ 1: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://docs.google.com/document/d/1Fy1vFDcB1bgbK5LewJ2Q8o_13H9TjrWbfv736bbD8c0/edit?usp=sharing')
                              );
                            },
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
                            text: '12. แบบกรอกคำตอบการบ้านครั้งที่ 1: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ปิดรับคำตอบแล้ว',
                            style: Theme.of(context).textTheme.titleMedium
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
                            text: '13. เฉลยการบ้านครั้งที่ 1: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://docs.google.com/document/d/13o8XhaOSdel8ld2ypdks5t8vGV2DxM2JbyuXANHdSkw/edit?usp=sharing')
                              );
                            },
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
                            text: '14. สไลด์สัปดาห์ที่ 4: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://docs.google.com/presentation/d/1SdEATRoP6ECMwN2WlROpB4Vnx1b0zqQQOt8ivl0bXGY/edit?usp=sharing')
                              );
                            },
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
                            text: '15. บันทึกการสอนย้อนหลังสัปดาห์ที่ 4: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง ',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://kmutt-ac-th.zoom.us/rec/share/74mvUy4q8iEC2_HhSvuCSwJgIPZB2UZhbOcJGL0vVXuid7sy7mpnUbDpVtPJeEYh.o3q_jJ1FQ77ze2Aj?startTime=1675824031000')
                              );
                            },
                          ),
                        ]
                      )
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: Wrap(
                      spacing: DefaultPadding.GENERAL,
                      children: [
                          RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'รหัสผ่าน: !@?3lCTm',
                                style: Theme.of(context).textTheme.titleMedium!
                              ),
                            ]
                          )
                        ),
                        IconButton(
                          onPressed: () {
                            Clipboard.setData(
                              const ClipboardData(text: '!@?3lCTm')
                            ).then((_){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      "คัดลอกรหัสผ่าน !@?3lCTm"
                                    )
                                  )
                                );
                            });
                          },
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: const Icon(
                            Icons.content_copy,
                          )
                        ),
                      ]
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '16. เฉลยแบบฝึกสัปดาห์ที่ 4: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://github.com/TDY2012/gdm222_2565_week4_exercise')
                              );
                            },
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
                            text: '17. สไลด์สัปดาห์ที่ 5: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://docs.google.com/presentation/d/1xVKh5cinynkdeDysKh4n4mesFZb6FEcFwKMvRv_3rqg/edit?usp=sharing')
                              );
                            },
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
                            text: '18. บันทึกการสอนย้อนหลังสัปดาห์ที่ 5: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง ',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://kmutt-ac-th.zoom.us/rec/share/Ekbic-biUO-OZl5gCAOlcEehCflzNjLF-W4Bj36Jhj2gBmENJAU6rqgK-I0aMtJU.7poAwVBMJ5Y9nZtE')
                              );
                            },
                          ),
                        ]
                      )
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: Wrap(
                      spacing: DefaultPadding.GENERAL,
                      children: [
                          RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: r'รหัสผ่าน: s7wqP*$%',
                                style: Theme.of(context).textTheme.titleMedium!
                              ),
                            ]
                          )
                        ),
                        IconButton(
                          onPressed: () {
                            Clipboard.setData(
                              const ClipboardData(text: r's7wqP*$%')
                            ).then((_){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      r"คัดลอกรหัสผ่าน s7wqP*$%"
                                    )
                                  )
                                );
                            });
                          },
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: const Icon(
                            Icons.content_copy,
                          )
                        ),
                      ]
                    ),
                    dense: true,
                  ),
                  ListTile(
                    title: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '19. ตัวอย่างสัปดาห์ที่ 5 โปรแกรม Gachapon: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://github.com/TDY2012/gdm222_2565_week5_gachapon')
                              );
                            },
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
                            text: '20. สไลด์สัปดาห์ที่ 6: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://docs.google.com/presentation/d/1d8legM-inAp3IgVFpKusfocxeaIhlOzSWXlL0rloDPM/edit?usp=sharing')
                              );
                            },
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
                            text: '21. บันทึกการสอนย้อนหลังสัปดาห์ที่ 6: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'อยู่ระหว่างการดำเนินการ',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              // color: Theme.of(context).primaryColor
                            ),
                            // recognizer: TapGestureRecognizer() .. onTap = () {
                            //   launchUrl(
                            //     Uri.parse('https://kmutt-ac-th.zoom.us/rec/share/Ekbic-biUO-OZl5gCAOlcEehCflzNjLF-W4Bj36Jhj2gBmENJAU6rqgK-I0aMtJU.7poAwVBMJ5Y9nZtE')
                            //   );
                            // },
                          ),
                        ]
                      )
                    ),
                    dense: true,
                  ),
                  // ListTile(
                  //   title: Wrap(
                  //     spacing: DefaultPadding.GENERAL,
                  //     children: [
                  //         RichText(
                  //         text: TextSpan(
                  //           children: [
                  //             TextSpan(
                  //               text: r'รหัสผ่าน: s7wqP*$%',
                  //               style: Theme.of(context).textTheme.titleMedium!
                  //             ),
                  //           ]
                  //         )
                  //       ),
                  //       IconButton(
                  //         onPressed: () {
                  //           Clipboard.setData(
                  //             const ClipboardData(text: r's7wqP*$%')
                  //           ).then((_){
                  //               ScaffoldMessenger.of(context).showSnackBar(
                  //                 const SnackBar(
                  //                   content: Text(
                  //                     r"คัดลอกรหัสผ่าน s7wqP*$%"
                  //                   )
                  //                 )
                  //               );
                  //           });
                  //         },
                  //         padding: EdgeInsets.zero,
                  //         constraints: const BoxConstraints(),
                  //         icon: const Icon(
                  //           Icons.content_copy,
                  //         )
                  //       ),
                  //     ]
                  //   ),
                  //   dense: true,
                  // ),
                  ListTile(
                    title: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '22. เฉลยแบบฝึกสัปดาห์ที่ 6: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://github.com/TDY2012/gdm222_2565_week6_exercise')
                              );
                            },
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
                            text: '23. การบ้านครั้งที่ 2: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://docs.google.com/document/d/1TVGs3o89a4hNU3POp-UcPCtUnhUe8YM2-628CD0E1H8/edit?usp=sharing')
                              );
                            },
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
                            text: '24. แบบกรอกคำตอบการบ้านครั้งที่ 2: ',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          TextSpan(
                            text: 'ลิ้ง',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: Theme.of(context).primaryColor
                            ),
                            recognizer: TapGestureRecognizer() .. onTap = () {
                              launchUrl(
                                Uri.parse('https://docs.google.com/forms/d/e/1FAIpQLSen9h7kxbn1QU2OLq2XFvijrjxBf-WU0vMfZqD-4swp_l8ARA/viewform?usp=sf_link')
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
      )
    );
  }
}