import 'package:flutterpetclinic/veterinarians/veterinarian.dart';
import 'package:flutterpetclinic/veterinarians/veterinarian_provider.dart';
import 'package:test/test.dart';

void main() {
  group('Veterinarian Provider tests', () {
    test('Veterinarian list from test database', () async {
      VeterinarianProvider provider = VeterinarianProvider();
      List<Veterinarian> owners = await provider.fetchAllVeterinarians();
      expect(owners.length, 6);
      Veterinarian first = owners.elementAt(0);
      expect(first.firstName, 'James');
    });
  });
}
