import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartpal/core/constant/app_color.dart';
import 'package:smartpal/core/constant/app_sizes.dart';
import 'package:smartpal/core/widgets/custom_text_widget.dart';
import 'package:smartpal/features/auth/presentation/pages/login.dart';
import 'package:smartpal/features/auth/provider/auth_provider.dart';

class ProfileWidgetsTree extends ConsumerWidget {
  const ProfileWidgetsTree({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authRepositoryProvider);
    void handleLogout() async {
      await auth.logout();
      if (!context.mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    }

    return Scaffold(
      appBar: CustomPageAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black38),
            borderRadius: BorderRadius.circular(15),
          ),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 1500),
            curve: Curves.easeInOut,
            padding: EdgeInsets.all(0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SwitchListTile.adaptive(
                  value: true,
                  onChanged: (value) {},
                  title: CustomTextWidget(
                    textValue: "Dark mode",
                    size: AppSizes.fontMedium,
                    colorValue: AppColor.whiteText,
                  ),
                ),
                ListTile(onTap: () => handleLogout(), title: Text('Log out')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const CustomPageAppBar({super.key, this.height = 40});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1500),
      curve: Curves.easeInOut,
      padding: EdgeInsets.all(0),
      child: AppBar(
        toolbarHeight: height,
        backgroundColor: Colors.transparent,
        title: Text('MenuPage'),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
