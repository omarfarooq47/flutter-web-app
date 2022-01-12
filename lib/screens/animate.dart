import 'package:flutter/material.dart';

class AnimateScreen extends StatefulWidget {
  const AnimateScreen({Key? key}) : super(key: key);

  @override
  State<AnimateScreen> createState() => _AnimateScreenState();
}

class _AnimateScreenState extends State<AnimateScreen> {
  double height = 200, width = 200;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Semantics(
            child: const Text(
              'Animate Screen',
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(height: 100,),
          Semantics(
            label: 'A container that will be animated',
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              color: Colors.red,
              width: width,
              height: height,
              alignment: Alignment.center,
              child: const Text(
                'Animated Container',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          ElevatedButton(
              onPressed: () {
                if(width == 200){
                  width = 400;
                  height = 400;
                }else{
                  width = 200;
                  height = 200;
                }
                setState(() {});
              },
              child: const Text('click to animate'))
        ],
      ),
    );
  }
}
