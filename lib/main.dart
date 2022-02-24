

import 'package:flutter/material.dart';
import 'Questions.dart';

void main() {
  runApp(const TeoaCheck());
}

class TeoaCheck extends StatelessWidget {
  const TeoaCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Das ist Mein Hauspaust",
        theme: ThemeData(primarySwatch: Colors.purple),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle meinbut = ElevatedButton.styleFrom(
        primary: Colors.blueAccent,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 10.0);
    const TextStyle titleTextStyle = TextStyle(
        color: Colors.amber,
        letterSpacing: 2.0,
        fontSize: 24.0,
        fontWeight: FontWeight.bold);
    return Scaffold(
        appBar: AppBar(
            title: const Text("MinisTalk"),
            centerTitle: true,
            backgroundColor: Colors.purpleAccent,
            elevation: 1.0),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("신학적 요소 분석기", style: titleTextStyle),
                const SizedBox(height: 10.0),
                const Text(
                    "이 설문조사는 개신교인의 여러 가치를 4 가지의 신학적 경향으로 측정해, 어떤 성향을 가지고 있는지 진단합니다. 이 설문조사를 통해 어떤 교단 어떤 교회에 소속될 것인지, 또는 어떤 가치에 대해 고려를 해 볼 것인지, 더 깊은 탐구의 기회를 가질 수 있습니다."),
                const Divider(
                    height: 60.0,
                    color: Colors.grey,
                    thickness: 0.5,
                    endIndent: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    CircleAvatar(
                        backgroundImage: AssetImage("aaa/Presbyterian.jpg"),
                        radius: 15.0),
                    Text("전통주의 척도"),
                    Text("자유주의 척도"),
                    CircleAvatar(
                        backgroundImage: AssetImage("aaa/Liberian.jpg"),
                        radius: 15.0),
                    //SizedBox(width: 15.0), // cf) padding
                  ],
                ),
                const SizedBox(height: 10.0),
                ButtonTheme(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const Questions()));
                      },
                      child: const Text(
                        "시작하기",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      style: meinbut),
                  minWidth: 100,
                  height: 50,
                )
                /*
            ButtonTheme(
                child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Questions(
                    quests: await initfunc()
                  )));
                },
                child: const Text(
                  "시작하기",
                  style: TextStyle(
                      fontSize: 20.0
                  ),
                ),
                style: meinbut
              ),
              minWidth: 100,
              height: 50,
            ),*/
              ],
            )));
  }
}
