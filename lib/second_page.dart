import 'package:exerciseapp/constants.dart';
import 'package:exerciseapp/main.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        leadingWidth: 0,
        title: const ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('asset/pr.png'),
          ),
          title: Text(
            'Hi, Jamil',
            style: TextStyle(
                color: onPrimary, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.notifications_none_outlined, color: onPrimary),
              boxWidth8,
              RotatedBox(
                  quarterTurns: 3,
                  child: Icon(Icons.signal_cellular_alt, color: onPrimary)),
            ],
          ),
          visualDensity: VisualDensity(horizontal: 0, vertical: 2),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///--------       HEADER DRAG WIDGET      ----------//////////////
            ///
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                      color: primary,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(26))),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: SizedBox(
                          height: 16,
                          child: VerticalDivider(),
                        ),
                      ),
                      const Row(
                        children: [
                          SizedBox(width: 22),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: onPrimary,
                          ),
                          boxWidth8,
                          Text(
                            'Today\'s steps are almost achieved',
                            style: TextStyle(color: onPrimary),
                          ),
                        ],
                      ),
                      Divider(
                        height: 48,
                        color: Colors.grey.shade700,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 16,
                                  backgroundColor: onPrimary,
                                  child: Icon(Icons.directions_run),
                                ),
                                boxWidth8,
                                Text(
                                  '9858',
                                  style:
                                      TextStyle(color: onPrimary, fontSize: 18),
                                ),
                                Text(
                                  ' / 10000 Steps',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text(
                              '58 min',
                              style: TextStyle(color: onPrimary),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 48),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StatisticsWidget(
                              edgeInsets: EdgeInsets.fromLTRB(4, 48, 4, 0)),
                          StatisticsWidget(
                              edgeInsets: EdgeInsets.fromLTRB(4, 12, 4, 0)),
                          StatisticsWidget(
                              edgeInsets: EdgeInsets.fromLTRB(4, 66, 4, 0)),
                          StatisticsWidget(
                              edgeInsets: EdgeInsets.fromLTRB(4, 52, 4, 0)),
                          StatisticsWidget(
                            edgeInsets: EdgeInsets.fromLTRB(4, 24, 4, 0),
                            color: Color.fromARGB(255, 220, 252, 255),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                  bottom: -282,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 12),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(244, 106, 240, 255),
                          borderRadius: BorderRadius.circular(32)),
                      child: const Icon(Icons.drag_handle),
                    ),
                  ),
                )
              ],
            ),
            boxHeigth16,

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  boxHeigth8,
                  Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 220, 252, 255),
                        borderRadius: BorderRadius.circular(24)),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Workout Progress',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              boxHeigth8,
                              Text('6 Exercise left')
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            SizedBox.square(
                              dimension: 44,
                              child: CircularProgressIndicator(
                                value: 0.77,
                                backgroundColor: Colors.grey.shade300,
                                strokeWidth: 3,
                              ),
                            ),
                            const Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '77%',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Next Activity',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                  boxHeigth16,

                  ///--------       EXERCISE CARD LIST      ----------//////////////
                  ///
                  const ExerciseCard(
                      time: '08:45',
                      exercise: 'Pistol Squat',
                      minute: '20 min',
                      kcal: '330 Kcal',
                      asset: 'asset/1.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StatisticsWidget extends StatelessWidget {
  const StatisticsWidget({super.key, required this.edgeInsets, this.color});

  final EdgeInsets edgeInsets;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 120,
      clipBehavior: Clip.none,
      padding: edgeInsets,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade700),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(32))),
      child: Container(
        constraints: const BoxConstraints(),
        decoration: BoxDecoration(
            color: color ?? Colors.grey,
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(32))),
      ),
    );
  }
}
