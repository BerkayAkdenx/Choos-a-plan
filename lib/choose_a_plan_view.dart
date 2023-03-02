import 'package:flutter/material.dart';

class ChooseAPlanView extends StatefulWidget {
  const ChooseAPlanView({Key? key}) : super(key: key);

  @override
  State<ChooseAPlanView> createState() => _ChooseAPlanViewState();
}

class _ChooseAPlanViewState extends State<ChooseAPlanView> {
  final double height = 160;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF5b46a7), Color(0xFF272332)],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 55),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                child: WhiteText(
                  text: 'Choose a plan for after your 14-day free trial',
                  textSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: WhiteText(
                              text: '\$4.99',
                              textSize: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: WhiteText(
                              text: 'Monthly',
                              textSize: 15,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: GreyTextWidget(
                                text: 'Starter Pack pay monthly'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.white70, width: 0.8),
                      ),
                      child: Text('s'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 110),
                      child: ContainerWithIconWidget(
                          icon: Icons.person, text: 'Kişiye Özel Alıştırma'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        ContainerWithIconWidget(
                            icon: Icons.person, text: 'Sınırsız Can'),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 12),
                          child: ContainerWithIconWidget(
                              icon: Icons.book, text: 'Bilgini Kanıtla'),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 133),
                      child: ContainerWithIconWidget(
                          icon: Icons.wordpress, text: 'Reklam Yok'),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  print("tıklandı");
                },
                child: const Text(
                  "Cancel anytime in the App Store",
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      print('Buton Tıklandı');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF9650ff), // button background color
                      onPrimary: Colors.white, // text color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: WhiteText(
                      text: 'Start My Free 14 Days',
                      textSize: 17,
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class GreyTextWidget extends StatelessWidget {
  const GreyTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Color(0xFF706d79), fontSize: 13),
    );
  }
}

class ContainerWithIconWidget extends StatelessWidget {
  const ContainerWithIconWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: Colors.white70, width: 0.8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(icon, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: WhiteText(
              text: text,
            ),
          ),
        ],
      ),
    );
  }
}

class WhiteText extends StatelessWidget {
  WhiteText({
    Key? key,
    required this.text,
    this.textSize = 13,
  }) : super(key: key);

  final String text;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: const Color(0xFFffffff),
        fontWeight: FontWeight.bold,
        fontSize: textSize,
      ),
      textAlign: TextAlign.center,
    );
  }
}
