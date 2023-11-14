import 'package:flutter/material.dart';

class HesapMakinesi extends StatefulWidget {
  const HesapMakinesi({super.key});

  @override
  State<HesapMakinesi> createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  var tfKontrol = TextEditingController();
  var sayilar = [];
  double toplam = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 150, right: 150, bottom: 15),
              child: TextField(
                controller: tfKontrol,
                autofocus: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        tfKontrol.clear();
                        sayilar.clear();
                        print(sayilar);
                      },
                      child: const Text("C")),
                  TextButton(
                      onPressed: () {
                        /*klavyeden 1 tuş silme */ tfKontrol.text = tfKontrol
                            .text
                            .substring(0, tfKontrol.text.length - 1);
                      },
                      child: const Icon(Icons.backspace)),
                  TextButton(
                    onPressed: () {
                      sayilar.add(double.parse(tfKontrol.text));
                      tfKontrol.clear();
                      print(sayilar);
                    },
                    child: const Icon(Icons.add),
                  ),
                  TextButton(
                      onPressed: () {
                        sayilar.add(double.parse(tfKontrol.text));
                      
                        for (var sayi in sayilar) {
                          toplam += sayi;
                        }
                        
                        tfKontrol.text = toplam.toString();
                        toplam = 0;
                        print(sayilar);
                      },
                      child: const Text("="))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        tfKontrol.text += "7";
                      },
                      child: const Text("7")),
                  TextButton(
                      onPressed: () {
                        tfKontrol.text += "8";
                      },
                      child: const Text("8")),
                  TextButton(
                    onPressed: () {
                      tfKontrol.text += "9";
                    },
                    child: const Text("9"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        tfKontrol.text += "4";
                      },
                      child: const Text("4")),
                  TextButton(
                      onPressed: () {
                        tfKontrol.text += "5";
                      },
                      child: const Text("5")),
                  TextButton(
                      onPressed: () {
                        tfKontrol.text += "6";
                      },
                      child: const Text("6")),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        tfKontrol.text += "1";
                      },
                      child: const Text("1")),
                  TextButton(
                      onPressed: () {
                        tfKontrol.text += "2";
                      },
                      child: const Text("2")),
                  TextButton(
                      onPressed: () {
                        tfKontrol.text += "3";
                      },
                      child: const Text("3")),
                  TextButton(
                      onPressed: () {
                        tfKontrol.text += ".";
                      },
                      child: const Text("."))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
