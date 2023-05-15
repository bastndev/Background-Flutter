import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);
// === === === General === === ===
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2512ce),
        body:PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            Page1(),
            Page2(),
          ],
        )
      );
    }
}

// === === === Sub General === === ===
class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        // Background Image
        background1(),

        // number and Title
        number()
      ],
    );
  }
}

// --- --- --- --- -- --- --- first page background
// ignore: camel_case_types
class background1 extends StatelessWidget {
  const background1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff2512ce),
      height: double.infinity,
      child: const Image(
        alignment: Alignment.center,
        image: AssetImage('assets/img/backg.png'),
      ),
    );
  }
}

// --- --- --- --- -- --- --- Number and title
// ignore: camel_case_types
class number extends StatelessWidget {
  const number({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 75, color: Colors.white);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),
          const Text(
            '11°',
            style: textStyle,
          ),
          const Text(
            'wednesday',
            style: textStyle,
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down_sharp,
            size: 100,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

// --- --- --- --- -- --- === Second Page
class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff2512ce),
      child: Center(
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xff1b1c23),
              shape: const StadiumBorder()),

          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Welcome',
              style: TextStyle(color: Colors.white, fontSize: 45),
            ),
          ),
        ),
      ),
    );
  }
}
