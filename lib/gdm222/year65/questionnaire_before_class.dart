import 'dart:math';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'models/questionnaire_before_class_model.dart';

class GDM222Year65QuestionnaireBeforeClassScreen extends StatefulWidget {
  const GDM222Year65QuestionnaireBeforeClassScreen({super.key});

  @override
  GDM222Year65QuestionnaireBeforeClassState createState() => GDM222Year65QuestionnaireBeforeClassState();
}

class GDM222Year65QuestionnaireBeforeClassState extends State<GDM222Year65QuestionnaireBeforeClassScreen> {
  final _formKey = GlobalKey<FormState>();
  final _answer = GDM222Year65QuestionnaireBeforeClassAnswer();
  late Future<List<GDM222Year65QuestionnaireBeforeClassResponse>> futureResponses;

  @override
  void initState() {
    super.initState();
    futureResponses = fetchResponses();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GDM 222 (2/2565) - แบบสำรวจก่อนเรียน'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(DefaultPadding.GENERAL),
        shrinkWrap: true,
        children: [
          Text(
            'คำชี้แจง',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                title: Text(
                  '1. แบบสำรวจนี้ใช้สำหรับสำรวจความต้องการของนักศึกษาที่ลงทะเบียนรายวิชา GDM 222 โครงสร้างข้อมูลและอัลกอรทึมเพื่อพัฒนาเกม (2/2565) เท่านั้น',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                dense: true,
              ),
              ListTile(
                title: Text(
                  '2. ข้อมูลที่กรอกในแบบสำรวจฉบับนี้จะไม่ถูกใช้เพื่อจุดประสงค์อื่นนอกเหนือจากการอำนวยความสะดวกในการเรียนการสอนเท่านั้น',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                dense: true,
              ),
              ListTile(
                title: Text(
                  '3. ข้อมูลที่กรอกในแบบสำรวจฉบับนี้จะถูกเก็บเป็นความลับ เว้นแต่รหัสนักศึกษาและเวลาที่ตอบแบบสำรวจ ที่อาจถูกนำมาแสดง เพื่อให้นักศึกษาทราบสถานะการตอบของแบบสำรวจ',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                dense: true,
              ),
            ],
          ),
          const Divider(),
          Text(
            'การตอบกลับ',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          FutureBuilder<List<GDM222Year65QuestionnaireBeforeClassResponse>>(
            future: futureResponses,
            builder: (context, snapshot) {
              if(snapshot.hasData) {
                return ListView(
                  shrinkWrap: true,
                  children: snapshot.data!.map(
                    (e) => ListTile(
                      title: Text(
                        'timestamp: ${e.timestamp}, student_id: ${e.student_id}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      dense: true,
                    ),
                  ).toList()
                );
              }
              else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              return const LinearProgressIndicator();
            },
          ),
          const Divider(),
          Text(
            'แบบสำรวจ',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text(
                    'ข้อ 1. รหัสนักศึกษา',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  subtitle: TextFormField(
                    decoration: const InputDecoration(
                      helperText: 'จำเป็น',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'กรุณากรอกรหัสนักศึกษาให้ถูกต้อง';
                      }
                    },
                    onChanged: (value) {
                      setState(() {
                        _answer.student_id = value;
                      });
                    },
                  ),
                  dense: true,
                ),
                const SizedBox(
                  height: DefaultPadding.DOUBLE,
                ),
                ListTile(
                  title: Text(
                    'ข้อ 2. อีเมลที่ใช้สมัครบัญชี Github เพื่อใช้ส่งงานในรายวิชา',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  subtitle: TextFormField(
                    decoration: const InputDecoration(
                      helperText: 'จำเป็น',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'กรุณากรอกอีเมลให้ถูกต้อง';
                      }
                    },
                    onChanged: (value) {
                      setState(() {
                        _answer.email = value;
                      });
                    },
                  ),
                  dense: true,
                ),
                const SizedBox(
                  height: DefaultPadding.DOUBLE,
                ),
                ListTile(
                  title: Text(
                    'ข้อ 3. นักศึกษาสะดวกนำคอมพิวเตอร์พกพามาเรียนหรือไม่',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  subtitle: Text(
                    'จำเป็น',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  dense: true,
                ),
                RadioListTile<bool>(
                  title: const Text('ไม่สะดวก'),
                  value: false,
                  groupValue: _answer.can_bring_laptop,
                  onChanged: (bool? value) {
                    setState(() {
                      _answer.can_bring_laptop = value ?? false;
                    });
                  },
                ),
                RadioListTile<bool>(
                  title: const Text('สะดวก'),
                  value: true,
                  groupValue: _answer.can_bring_laptop,
                  onChanged: (bool? value) {
                    setState(() {
                      _answer.can_bring_laptop = value ?? true;
                    });
                  },
                ),
                const SizedBox(
                  height: DefaultPadding.DOUBLE,
                ),
                ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ข้อ 4. นักศึกษาคิดว่าการแบ่งสัดส่วนคะแนนเก็บใดเหมาะสมที่สุด โดยที่',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '4.1. Quiz หมายถึง แบบทดสอบอย่างสั้นในระหว่างคาบเรียน โดยมีจุดประสงค์หลัก เพื่อทบทวนบทเรียนของคาบเรียนก่อนหน้า',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '4.2. การบ้าน หมายถึง แบบฝึกหัดนอกคาบเรียน โดยมีจุดประสงค์หลัก เพื่อฝึกให้เกิดความเชี่ยวชาญในบทเรียน หรือความชำนาญในการปฏิบัติ อีกทั้งยังเป็นการทดสอบความรู้ความเข้าใจในบทเรียนของคาบเรียนด้วย',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '4.3. ค้นคว้าวิจัย หมายถึง งานมอบหมายนอกคาบเรียน ให้นักศึกษาไปศึกษาสิ่งที่เกี่ยวข้องกับบทเรียน แต่อยู่นอกเหนือจากบทเรียน อาทิ วิธีการใหม่ที่ถูกค้นพบในปัจจุบัน ผลจากการนำไปใช้ในสถานการณ์จริง แนวคิดใหม่ที่ถูกนำเสนอขึ้นมาและมีความน่าสนใจ เป็นต้น แล้วนำมาอภิปรายผลในคาบเรียน โดยมีจุดประสงค์หลัก เพื่อฝึกให้แสวงหาความรู้นอกคาบเรียน รู้เท่าทันความเปลี่ยนแปลง และกลั่นกรององค์ความรู้ที่สำคัญออกมาเพื่อถ่ายทอดได้',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '4.4. สอบ หมายถึง แบบทดสอบกลางภาคหรือปลายภาคการศึกษา เป็นแบบทดสอบอย่างยาว ซึ่งจะมีกำหนดเวลาเฉพาะให้นอกเหนือจากคาบเรียน โดยมีจุดประสงค์หลัก เพื่อทบทวนบทเรียนของคาบเรียนก่อนหน้าทั้งหมด ตลอดครึ่งภาคการศึกษา',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '4.5. โครงงาน หมายถึง งานมอบหมายนอกคาบเรียน ให้นักศึกษานำความรู้ในคาบเรียนทั้งหมด ไปบูรณาการสร้างเป็นชิ้นงานที่สมบูรณ์ขึ้นมา พร้อมนำเสนอแนวคิด และกระบวนการทำงานด้วย โดยมีจุดประสงค์หลัก เพื่อให้ได้ทดลองประยุกต์ใช้ความรู้กับสถานการณ์จริง ฝึกความคิดสร้างสรรค์ การนำเสนอแนวคิด และการทำงานอย่างเป็นระบบ',
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ].map(
                      (e) => Padding(
                        padding: const EdgeInsets.only(
                          bottom: DefaultPadding.GENERAL
                        ),
                        child: e,
                      )
                    ).toList(),
                  ),
                  subtitle: Text(
                    'จำเป็น',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  dense: true,
                ),
                GridView.count(
                  primary: false,
                  childAspectRatio: 2,
                  crossAxisCount: max(1, (MediaQuery.of(context).size.width ~/ 420).toInt()),
                  shrinkWrap: true,
                  children: [
                    RadioListTile<ScoringCriteriaEnum>(
                      title: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(
                            DefaultPadding.GENERAL
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Quiz 4 ครั้ง ครั้งละ 2 คะแนน รวม 8 คะแนน',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'การบ้าน 6 ครั้ง ครั้งละ 6 คะแนน รวม 36 คะแนน',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'สอบกลางภาค 30 คะแนน',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'โครงงาน 30 คะแนน',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'รวม 104 คะแนน (นำมาคิดเพียง 100 คะแนน)',
                                style: Theme.of(context).textTheme.titleMedium,
                              )
                            ].map(
                              (e) => Padding(
                                padding: const EdgeInsets.all(DefaultPadding.HALF),
                                child: e,
                              )
                            ).toList(),
                          ),
                        )
                      ),
                      value: ScoringCriteriaEnum.CRITERIA_1,
                      groupValue: _answer.scoring_criteria,
                      onChanged: (ScoringCriteriaEnum? value) {
                        setState(() {
                          _answer.scoring_criteria = value ?? ScoringCriteriaEnum.CRITERIA_1;
                        });
                      },
                    ),
                    RadioListTile<ScoringCriteriaEnum>(
                      title: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(
                            DefaultPadding.GENERAL
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Quiz 4 ครั้ง ครั้งละ 2 คะแนน รวม 8 คะแนน',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'การบ้าน 6 ครั้ง ครั้งละ 6 คะแนน รวม 36 คะแนน',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'สอบกลางภาค 30 คะแนน',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'สอบปลายภาค 30 คะแนน',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'รวม 104 คะแนน (นำมาคิดเพียง 100 คะแนน)',
                                style: Theme.of(context).textTheme.titleMedium,
                              )
                            ].map(
                              (e) => Padding(
                                padding: const EdgeInsets.all(DefaultPadding.HALF),
                                child: e,
                              )
                            ).toList(),
                          ),
                        )
                      ),
                      value: ScoringCriteriaEnum.CRITERIA_2,
                      groupValue: _answer.scoring_criteria,
                      onChanged: (ScoringCriteriaEnum? value) {
                        setState(() {
                          _answer.scoring_criteria = value ?? ScoringCriteriaEnum.CRITERIA_2;
                        });
                      },
                    ),
                    RadioListTile<ScoringCriteriaEnum>(
                      title: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(
                            DefaultPadding.GENERAL
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'การบ้าน 4 ครั้ง ครั้งละ 6 คะแนน รวม 24 คะแนน',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'ค้นคว้าวิจัย 20 คะแนน',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'สอบกลางภาค 30 คะแนน',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'สอบปลายภาค 30 คะแนน',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'รวม 104 คะแนน (นำมาคิดเพียง 100 คะแนน)',
                                style: Theme.of(context).textTheme.titleMedium,
                              )
                            ].map(
                              (e) => Padding(
                                padding: const EdgeInsets.all(DefaultPadding.HALF),
                                child: e,
                              )
                            ).toList(),
                          ),
                        )
                      ),
                      value: ScoringCriteriaEnum.CRITERIA_3,
                      groupValue: _answer.scoring_criteria,
                      onChanged: (ScoringCriteriaEnum? value) {
                        setState(() {
                          _answer.scoring_criteria = value ?? ScoringCriteriaEnum.CRITERIA_3;
                        });
                      },
                    ),
                    RadioListTile<ScoringCriteriaEnum>(
                      title: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(
                            DefaultPadding.GENERAL
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'การบ้าน 4 ครั้ง ครั้งละ 6 คะแนน รวม 24 คะแนน',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'ค้นคว้าวิจัย 20 คะแนน',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'สอบกลางภาค 30 คะแนน',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'โครงงาน 30 คะแนน',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'รวม 104 คะแนน (นำมาคิดเพียง 100 คะแนน)',
                                style: Theme.of(context).textTheme.titleMedium,
                              )
                            ].map(
                              (e) => Padding(
                                padding: const EdgeInsets.all(DefaultPadding.HALF),
                                child: e,
                              )
                            ).toList(),
                          ),
                        )
                      ),
                      value: ScoringCriteriaEnum.CRITERIA_4,
                      groupValue: _answer.scoring_criteria,
                      onChanged: (ScoringCriteriaEnum? value) {
                        setState(() {
                          _answer.scoring_criteria = value ?? ScoringCriteriaEnum.CRITERIA_4;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: DefaultPadding.DOUBLE,
                ),
                ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ข้อ 5. นักศึกษาคิดว่าเกณฑ์คะแนนเก็บที่เหมาะสมสำหรับการตัดเกรด F และ A ควรเป็นเท่าใด โดยที่',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '5.1. เกณฑ์คะแนนเก็บสำหรับเกรด F จะต้องไม่น้อยกว่า ${GDM222Year65QuestionnaireBeforeClassAnswer.MIN_SCORE} คะแนน และไม่มากกว่าเกณฑ์คะแนนเก็บสำหรับเกรด A',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '5.2. เกณฑ์คะแนนเก็บสำหรับเกรด A จะต้องไม่มากกว่า ${GDM222Year65QuestionnaireBeforeClassAnswer.MAX_SCORE} คะแนน และไม่น้อยกว่าเกณฑ์คะแนนเก็บสำหรับเกรด F',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        '5.3. เกณฑ์คะแนนเก็บสำหรับเกรด F และ A จะต้องมีค่าต่างกันไม่น้อยกว่า ${GDM222Year65QuestionnaireBeforeClassAnswer.MIN_SCORE_DIFF} คะแนน',
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ].map(
                      (e) => Padding(
                        padding: const EdgeInsets.only(
                          bottom: DefaultPadding.GENERAL
                        ),
                        child: e,
                      )
                    ).toList(),
                  ),
                  subtitle: Text(
                    'จำเป็น',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  dense: true,
                ),
                FormField<RangeValues>(
                  initialValue: _answer.score_range,
                  builder: (FormFieldState<RangeValues> state) {
                    return Column(
                      children: [
                        RangeSlider(
                          values: _answer.score_range,
                          min: GDM222Year65QuestionnaireBeforeClassAnswer.MIN_SCORE,
                          max: GDM222Year65QuestionnaireBeforeClassAnswer.MAX_SCORE,
                          divisions: (GDM222Year65QuestionnaireBeforeClassAnswer.MAX_SCORE - GDM222Year65QuestionnaireBeforeClassAnswer.MIN_SCORE).toInt(),
                          labels: RangeLabels(
                            _answer.score_range.start.round().toString(),
                            _answer.score_range.end.round().toString(),
                          ),
                          onChanged: (RangeValues value) {
                            setState(() {
                              _answer.score_range = value;
                              state.didChange(value);
                            });
                          }
                        ),
                        state.errorText == null ? const Text('') : Text(state.errorText!, style: const TextStyle(color: Colors.red)),
                      ],
                    );
                  },
                  validator: (RangeValues? value) {
                    if(value == null)
                    {
                      return 'ค่านี้ไม่สามารถเป็น null ได้';
                    }
                    if(value.end - value.start < GDM222Year65QuestionnaireBeforeClassAnswer.MIN_SCORE_DIFF)
                    {
                      return 'เกณฑ์คะแนนเก็บสำหรับเกรด F และ A จะต้องมีค่าต่างกันไม่น้อยกว่า ${GDM222Year65QuestionnaireBeforeClassAnswer.MIN_SCORE_DIFF} คะแนน';
                    }
                    return null;
                  },
                ),
                ListTile(
                  title: Text(
                    'ข้อ 6. นักศึกษามีความสนใจแขนงใดของการพัฒนาซอฟต์แวร์เกมเป็นพิเศษหรือไม่',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  subtitle: Text(
                    'สามารถตอบได้มากกว่า 1 คำตอบ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  dense: true,
                ),
                CheckboxListTile(
                  title: Text(
                    'ส่วนต่อประสานกับฮาร์ดแวร์ (${GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_HARDWARE_INTERFACING})',
                    style: Theme.of(context).textTheme.titleMedium,
                  ), 
                  value: _answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_HARDWARE_INTERFACING],
                  onChanged: (value) {
                    setState(() {
                      _answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_HARDWARE_INTERFACING] = value;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text(
                    'กราฟฟิคและเชดเดอร์ (${GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_GRAPHICS_AND_SHADER})',
                    style: Theme.of(context).textTheme.titleMedium,
                  ), 
                  value: _answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_GRAPHICS_AND_SHADER],
                  onChanged: (value) {
                    setState(() {
                      _answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_GRAPHICS_AND_SHADER] = value;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text(
                    'การเชื่อมต่อกับเครือข่าย (${GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_NETWORKING})',
                    style: Theme.of(context).textTheme.titleMedium,
                  ), 
                  value: _answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_NETWORKING],
                  onChanged: (value) {
                    setState(() {
                      _answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_NETWORKING] = value;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text(
                    'ระบบปัญญาประดิษฐ์ (${GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_MACHINE_LEARNING_AND_AI})',
                    style: Theme.of(context).textTheme.titleMedium,
                  ), 
                  value: _answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_MACHINE_LEARNING_AND_AI],
                  onChanged: (value) {
                    setState(() {
                      _answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_MACHINE_LEARNING_AND_AI] = value;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text(
                    'การจำลองทางฟิสิกส์ (${GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_PHYSICS_SIMULATION})',
                    style: Theme.of(context).textTheme.titleMedium,
                  ), 
                  value: _answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_PHYSICS_SIMULATION],
                  onChanged: (value) {
                    setState(() {
                      _answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_PHYSICS_SIMULATION] = value;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text(
                    'การพัฒนาวิธีการดำเนินงานและเครื่องมือสำหรับผู้พัฒนา (${GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_PIPELINE_ADVANCEMENT_DEVELOPMENT})',
                    style: Theme.of(context).textTheme.titleMedium,
                  ), 
                  value: _answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_PIPELINE_ADVANCEMENT_DEVELOPMENT],
                  onChanged: (value) {
                    setState(() {
                      _answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_PIPELINE_ADVANCEMENT_DEVELOPMENT] = value;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text(
                    'เกมเพลย์ (${GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_CORE_GAMEPLAY})',
                    style: Theme.of(context).textTheme.titleMedium,
                  ), 
                  value: _answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_CORE_GAMEPLAY],
                  onChanged: (value) {
                    setState(() {
                      _answer.passion_map[GDM222Year65QuestionnaireBeforeClassAnswer.PASSION_CORE_GAMEPLAY] = value;
                    });
                  },
                )
              ],
            )
          ),
          const Divider(),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  submitResponse(_answer);
                  Navigator.pop(context);
                },
                child: const Text('ส่ง'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('ย้อนกลับ'),
              )
            ].map(
              (e) => Padding(
                padding: const EdgeInsets.only(
                  right: DefaultPadding.HALF
                ),
                child: e,
              )
            ).toList(),
          )
        ].map(
          (e) => Padding(
            padding: const EdgeInsets.all(DefaultPadding.HALF),
            child: e,
          )
        ).toList(),
      )
    );
  }
}