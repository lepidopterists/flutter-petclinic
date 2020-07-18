import 'package:flutterpetclinic/owner.dart';
import 'package:flutterpetclinic/owner_provider.dart';
import 'package:test/test.dart';

void main() {
  group('Owner Provider tests', () {
    test('Owner list from test database', () async {
      OwnerProvider provider = OwnerProvider();
      List<Owner> owners = await provider.fetchAllOwners();
      expect(owners.length, 10);
      Owner first = owners.elementAt(0);
      expect(first.firstName, 'George');
    });
  });
}
