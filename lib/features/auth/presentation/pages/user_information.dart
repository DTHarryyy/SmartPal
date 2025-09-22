import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartpal/core/constant/app_color.dart';
import 'package:smartpal/core/constant/app_sizes.dart';
import 'package:smartpal/core/widgets/custom_button.dart';
import 'package:smartpal/core/widgets/custom_text_widget.dart';
import 'package:smartpal/features/auth/models/user_model.dart';
import 'package:smartpal/features/auth/presentation/pages/login.dart';
import 'package:smartpal/features/auth/presentation/widgets/input_field.dart';
import 'package:smartpal/features/auth/provider/auth_provider.dart';
import 'package:smartpal/features/auth/provider/user_information_provider.dart';
import 'package:smartpal/widgets_tree.dart';

class UserInformation extends ConsumerStatefulWidget {
  const UserInformation({super.key});

  @override
  ConsumerState<UserInformation> createState() => _UserInformationState();
}

class _UserInformationState extends ConsumerState<UserInformation> {
  final TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authRepositoryProvider);
    final userEmail = ref.watch(userEmailProvider);
    final userInfo = ref.watch(userInformationProvider);

    final authUser = auth.currentUser;
    if (authUser == null) return Login();
    final userId = authUser.uid;
    String uid = userId.toString();
    if (userEmail == null) return Login();
    String email = userEmail.toString();
    //handle storing user information in firestore
    void storeUserInformation({
      required String uid,
      required String name,
      required String age,
      required String email,
    }) async {
      final user = UserModel(uid: uid, name: name, age: age, email: email);
      await userInfo.addUserInformation(user);

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WidgetsTree()),
      );
    }

    // get user id

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(
                  textValue: "User Information",
                  size: AppSizes.fontLarge,
                  colorValue: AppColor.blackText,
                  fontWeight: FontWeight.w600,
                ),
                InputField(
                  inputController: name,
                  hintText: 'Username',
                  iconData: Icons.person_rounded,
                ),
                InputField(
                  inputController: age,
                  hintText: 'Age',
                  iconData: Icons.numbers,
                ),
                CustomButton(
                  btnLabel: 'SIGN UP',
                  onPressed: () => storeUserInformation(
                    uid: uid,
                    name: name.text,
                    age: age.text,
                    email: email,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
