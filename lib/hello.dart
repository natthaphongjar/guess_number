import 'dart:io';
import 'Game.dart';
void main() {
  bool active = true;

  print('╔═════════════════════════════════════════════');
  print('║\t\t\t\tGUESS THE NUMBER');
  print("╟═════════════════════════════════════════════");

  do {
    var g = new Game();
    for (;;) {

      stdout.write('║\tGuess the number between 1 and 100 : ');
      var input = stdin.readLineSync();
      var o = int.tryParse(input!);

      if (o == null) {
        continue;
      }
      if (g.Check(o)) {
        print('║\t\t\t\tTHE END');
        print('╚═════════════════════════════════════════════');
        break;
      }
    }
    print('╔═════════════════════════════════════════════');
    stdout.write('║ ➜ Play again (y/n)?: ');
    var ch = stdin.readLineSync();
    if(ch=='n'||ch=='N'){
      active = false;
    }
  } while (active);
}
