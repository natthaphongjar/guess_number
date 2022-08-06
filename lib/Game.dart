
import 'dart:math';
class Game {
  var answer;
  var total;
  Game() {
    total =0;
    var r = new Random();
    answer = r.nextInt(100) + 1;
  }
  bool Check(int n) {
    total++;
    if (n > answer) {
      print( '║ ➜ $n is too hight! ▲');
      print('╟═════════════════════════════════════════════');
    } else if (n < answer) {
      print('║ ➜ $n is too low!  ▼');
      print('╟═════════════════════════════════════════════');
    } else {
      print("║ ➜ $n is correct! ❤ , total guesses: $total");
      print('╟═════════════════════════════════════════════');
      return true;
    }
    return false;
  }
}