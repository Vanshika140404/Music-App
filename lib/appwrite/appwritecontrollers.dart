import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

Client client = Client()
.setEndpoint('https://cloud.appwrite.io/v1')
.setProject('673030910027c1f3cb2c');

Account account=Account(client);

//create a new user
Future createUser(String name , String email , String password) async{
  try{
    await account.create(userId: ID.unique(), email: email, password: password);
    return "success";
  }
  on AppwriteException catch(e)
  {
    return e.message.toString();
  }
}

Future<String> loginUser(String email, String password) async {
  try {
    await account.createEmailPasswordSession(email: email, password: password);
    return "success";
  } on AppwriteException catch (e) {
    return e.message.toString();
  }
}

// logout the user delete the session
Future logoutUser() async {
  await account.deleteSession(sessionId: "current");
}


Future<User?> getUser() async {
  try {
    final user = await account.get();
    return user;
  } catch (e) {
    return null;
  }
}

// send verification mail to the user
// Future<bool> sendVerificationMail() async {
//   try {
//     await account.createVerification(
//         url:
//             "https://reset-password-and-verify-email-appwrite.onrender.com/verify");
//     return true;
//   } catch (e) {
//     return false;
//   }
// }

// send recovery mail to the user
Future<bool> sendRecoveryMail(String email) async {
  try {
    await account.createRecovery(
        email: email,
        url:
            "https://reset-password-and-verify-email-appwrite.onrender.com/recovery");
    return true;
  } catch (e) {
    print(e);
    return false;
  }
}

// continue with google
// Future<bool> continueWithGoogle() async {
//   try {
//     final response = await account
//         .createOAuth2Session(provider:"google", scopes: ["profile", "email"]);
//     print(response);
//     return true;
//   } catch (e) {
//     print("error : ${e.toString()}");
//     return false;
//   }
// }

// check if user session is active or not
// Future<bool> checkSessions() async {
//   try {
//     await account.getSession(sessionId: "current");
//     return true;
//   } catch (e) {
//     return false;
//   }
// }



