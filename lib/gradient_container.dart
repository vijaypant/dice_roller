import 'package:hello_flutter/dice_roller.dart';
import 'package:material_ui/material_ui.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {

  const GradientContainer(this.colors, {super.key});

  GradientContainer.purple({super.key}) : colors = [Colors.deepPurple,Colors.indigo];
  GradientContainer.green({super.key}) : colors = [const Color.fromARGB(255, 123, 199, 0),Color.fromARGB(255, 139, 187, 62)];

  final List<Color> colors;

  @override
  Widget build(BuildContext ctx) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),        
      ),
      child: Center(
        child: DiceRoller(),
      )
    );
  }

}