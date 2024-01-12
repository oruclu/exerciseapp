import 'package:exerciseapp/constants.dart';
import 'package:exerciseapp/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                  height: 32,
                  decoration: const BoxDecoration(
                      color: primary,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(26))),
                ),
                Positioned.fill(
                  bottom: -28,
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

            ///--------       DAYS OF WEEK      ----------//////////////
            ///
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DaysWidget(day: '12', dayOfWeek: 'Mon'),
                      DaysWidget(day: '13', dayOfWeek: 'Tue'),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 24,
                            backgroundColor: primary,
                            child: Text(
                              '14',
                              style: TextStyle(color: onPrimary),
                            ),
                          ),
                          boxHeigth16,
                          Text(
                            'Wed',
                            style: TextStyle(
                                color: primary, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      DaysWidget(day: '15', dayOfWeek: 'Thu'),
                      DaysWidget(day: '16', dayOfWeek: 'Fri'),
                    ],
                  ),
                  boxHeigth24,

                  ///--------       EXERCISE CARD LIST      ----------//////////////
                  ///
                  ExerciseCard(
                    time: '08:45',
                    exercise: 'Pistol Squat',
                    minute: '20 min',
                    kcal: '330 Kcal',
                    asset: 'asset/1.png',
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondPage(),
                        )),
                  ),
                  const ExerciseCard(
                      time: '10:25',
                      exercise: 'L-Sit',
                      minute: '20 min',
                      kcal: '570 Kcal',
                      asset: 'asset/2.png'),
                  const ExerciseCard(
                      time: '11:05',
                      exercise: 'Frog Press',
                      minute: '25 min',
                      kcal: '380 Kcal',
                      asset: 'asset/3.png'),
                  Chip(
                    elevation: 0,
                    side: BorderSide.none,
                    backgroundColor: Colors.grey.shade200,
                    shape: const StadiumBorder(),
                    label: const Text('+ Add'),
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExerciseCard extends StatelessWidget {
  const ExerciseCard(
      {super.key,
      required this.time,
      required this.exercise,
      required this.minute,
      required this.kcal,
      required this.asset,
      this.onTap});

  final String time;
  final String exercise;
  final String minute;
  final String kcal;
  final String asset;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(24),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Chip(
                        elevation: 0,
                        side: BorderSide.none,
                        backgroundColor: Colors.grey.shade200,
                        shape: const StadiumBorder(),
                        label: Text(time),
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                      ),
                      boxHeigth8,
                      Text(
                        exercise,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      boxHeigth8,
                      Row(
                        children: [
                          const Icon(
                            Icons.schedule,
                            color: Color.fromARGB(255, 11, 157, 173),
                          ),
                          boxWidth8,
                          Text(
                            minute,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 11, 157, 173)),
                          ),
                          boxWidth16,
                          const Icon(
                            Icons.local_fire_department,
                            color: Colors.grey,
                          ),
                          boxWidth8,
                          Text(
                            kcal,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  asset,
                  width: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DaysWidget extends StatelessWidget {
  const DaysWidget({super.key, required this.day, required this.dayOfWeek});
  final String day;
  final String dayOfWeek;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.grey.shade100,
          child: Text(
            day,
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ),
        boxHeigth16,
        Text(
          dayOfWeek,
          style: TextStyle(color: Colors.grey.shade600),
        ),
      ],
    );
  }
}
