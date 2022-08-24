import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 36,
        width: 36,
        child: Center(
          child: CircularProgressIndicator(
            color: Colors.blueAccent,
            strokeWidth: 2,
          ),
        ),
      ),
    );
  }
}
