import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results({Key? key, required this.personalId, required this.value})
      : super(key: key);

  final String personalId;
  final List<int> value;

  @override
  Widget build(BuildContext context) {
    var mirr = MediaQuery.of(context).size.width / 240;

    const TextStyle titleTextStyle = TextStyle(
        color: Colors.amber,
        letterSpacing: 2.0,
        fontSize: 24.0,
        fontWeight: FontWeight.bold);
    const TextStyle barTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 16,
    );
    if (mirr < 320/240) {
      return MaterialApp(
          title: "Questions",
          theme: ThemeData(primarySwatch: Colors.purple),
          home: Scaffold(
              appBar: AppBar(
                  title: const Text("MinisTalk"),
                  centerTitle: true,
                  backgroundColor: Colors.purpleAccent,
                  elevation: 1.0),
              body: Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("테스트 완료", style: titleTextStyle),
                      const SizedBox(height: 30.0),
                      Text(
                          "자유 지향:" +
                              ((220 + value[0]) * 50 / 220)
                                  .toStringAsFixed(1),
                          style: barTextStyle),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: (220 + value[0]) * 120 / 220 * mirr - 30,
                            decoration: const BoxDecoration(color: Colors.lime),
                          ),
                          Container(
                            height: 40,
                            width: (220 - value[0]) * 120 / 220 * mirr - 30,
                            decoration:
                                const BoxDecoration(color: Colors.redAccent),
                          )
                        ],
                      ),
                      Text(
                          ((220 - value[0]) * 50 / 220)
                              .toStringAsFixed(1) +
                              ":전통 지향",
                          style: barTextStyle,
                          textAlign: TextAlign.end),
                      const SizedBox(height: 30.0),
                      Text(
                          "신비 지향:" +
                              ((220 + value[1]) * 50 / 220)
                                  .toStringAsFixed(1),
                          style: barTextStyle),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: (220 - value[1]) * 120 / 220 * mirr - 30,
                            decoration:
                                const BoxDecoration(color: Colors.green),
                          ),
                          Container(
                            height: 40,
                            width: (220 + value[1]) * 120 / 220 * mirr - 30,
                            decoration:
                                const BoxDecoration(color: Colors.orange),
                          )
                        ],
                      ),
                      Text(
                          ((220 - value[1]) * 50 / 220)
                              .toStringAsFixed(1) +
                              ":지식 지향",
                          style: barTextStyle,
                          textAlign: TextAlign.end),
                      //Text(value[0].toString() + "::" + value[1].toString() + "::" +  value[2].toString())
                      const Divider(
                          height: 60.0,
                          color: Colors.grey,
                          thickness: 0.5,
                          endIndent: 30),
                      Text("personal ID: " + personalId),
                    ],
                  ),
                ),
              )));
    }
    return MaterialApp(
        title: "Questions",
        theme: ThemeData(primarySwatch: Colors.purple),
        home: Scaffold(
            appBar: AppBar(
                title: const Text("MinisTalk"),
                centerTitle: true,
                backgroundColor: Colors.purpleAccent,
                elevation: 1.0),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text("테스트 완료", style: titleTextStyle),
                    const SizedBox(height: 30.0),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: (220 + value[0]) * 120 / 220 * mirr - 30,
                          decoration: const BoxDecoration(color: Colors.lime),
                          child: Text(
                              "자유 지향:" +
                                  ((220 + value[0]) * 50 / 220)
                                      .toStringAsFixed(1),
                              style: barTextStyle),
                        ),
                        Container(
                          height: 40,
                          width: (220 - value[0]) * 120 / 220 * mirr - 30,
                          decoration:
                              const BoxDecoration(color: Colors.redAccent),
                          child: Text(
                              ((220 - value[0]) * 50 / 220).toStringAsFixed(1) +
                                  ":전통 지향",
                              style: barTextStyle,
                              textAlign: TextAlign.end),
                        )
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: (220 - value[1]) * 120 / 220 * mirr - 30,
                          decoration: const BoxDecoration(color: Colors.green),
                          child: Text(
                              "신비 지향:" +
                                  ((220 + value[1]) * 50 / 220)
                                      .toStringAsFixed(1),
                              style: barTextStyle),
                        ),
                        Container(
                          height: 40,
                          width: (220 + value[1]) * 120 / 220 * mirr - 30,
                          decoration: const BoxDecoration(color: Colors.orange),
                          child: Text(
                              ((220 - value[1]) * 50 / 220).toStringAsFixed(1) +
                                  ":지식 지향",
                              style: barTextStyle,
                              textAlign: TextAlign.end),
                        )
                      ],
                    ),
                    //Text(value[0].toString() + "::" + value[1].toString() + "::" +  value[2].toString())
                    const Divider(
                        height: 60.0,
                        color: Colors.grey,
                        thickness: 0.5,
                        endIndent: 30),
                    Text("personal ID: " + personalId),
                  ],
                ),
              ),
            )));
  }
}
/*
* 점수계산
* F영역 총 22문제 FP계열 10문제 FN계열 12문제 모두 2배 가산 햇을 때 기준 440점
* 그러므로 100분율로 나타났을 때 현제 위치는 cur*100/220
* 그레픽 상으로는 디자인상 기준치인 240으로 배분하고, 현제화면비율 mirr을 곱해주면 된다.
 */
