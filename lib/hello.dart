import 'dart:io';
import 'Game.dart';
void main() {
  bool active = true;
  List<int>mylist = [];

  do {
    var g;
    var sum=0;
    stdout.write('Enter a maximum number to random: ');
    var max = stdin.readLineSync();
    var maximum = int.tryParse(max!);
      if(maximum==null)
      {
        maximum=100;
       g = new Game();
      }else
      {
       g = new Game(max:maximum);
      }
    print('╔═════════════════════════════════════════════');
    print('║\t\t\t\tGUESS THE NUMBER');
    print("╟═════════════════════════════════════════════");

    for (;;) {

      stdout.write('║\tGuess the number between 1 and $maximum : ');
      var input = stdin.readLineSync();
      var o = int.tryParse(input!);

      if (o == null) {
        continue;
      }
      sum++; //นับรอบที่เล่น
      if (g.Check(o)) {
        print('║\t\t\t\tTHE END');
        print('╚═════════════════════════════════════════════');
        mylist.add(sum);
        break;
      }
    }

    stdout.write('Play again (y/n)?: ');
    var ch = stdin.readLineSync();

    if(ch=='n'||ch=='N'){
      active = false;
    }
  } while (active);
  print("");
  print("");
  print("You've played ${mylist.length} games");
  for(int i=0;i<mylist.length;i++){
    print('🚀 Game #${i+1}: ${mylist[i]} guesses');
  }

}
