import 'package:flutterpetclinic/veterinarians/veterinarian.dart';
import 'package:test/test.dart';

void main() {
  group('Veterinarian tests', () {
    test('Veterinarian specification', () {
      final owner = Veterinarian(1, 'James', 'Carter');

      expect(owner.id, 1);
      expect(owner.firstName, 'James');
      expect(owner.lastName, 'Carter');

      // TODO: Test specialties
    });
  });
}
