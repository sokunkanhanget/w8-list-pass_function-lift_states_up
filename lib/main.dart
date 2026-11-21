import 'ex1/ex_1_start.dart' as ex1;
import 'ex2/main.dart' as ex2;
import 'ex3/main.dart' as ex3;
import 'ex4/main.dart' as ex4;

// Which exercise to show: change the number, then press R (hot restart).
const exercise = 1;

void main() {
  switch (exercise) {
    case 1:
      ex1.main();
    case 2:
      ex2.main();
    case 3:
      ex3.main();
    case 4:
      ex4.main();
  }
}
