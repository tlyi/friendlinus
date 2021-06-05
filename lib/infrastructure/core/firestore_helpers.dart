import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:friendlinus/domain/auth/i_auth_facade.dart';
import 'package:friendlinus/domain/core/errors.dart';
import 'package:friendlinus/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> usersDocument() async {
        final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance.collection('users').doc(user.id.toString());
;
  }
}
