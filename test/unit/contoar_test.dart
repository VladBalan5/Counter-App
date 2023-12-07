import 'package:flutter_test/flutter_test.dart';
import 'package:counter_app/functii/contoar.dart';

void main() {
  group('Testare contoar', () {
    test('valoarea trebuie sa porneasa 0', () {
      expect(Counter().value, 0);
    });

    test('valoarea trebuie sa fie incrementata', () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 2);
    });

    test('valoarea trebuie sa fie decrementata', () {
      final counter = Counter();
      counter.decrement();
      expect(counter.value, -1);
    });

    test('obtinerea proprietatilor', () {
      final counter = Counter();
      expect(counter.props, [0]);
    });
  });
}