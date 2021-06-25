import 'package:flutter/material.dart';

import 'package:payflow/modules/extract/extract_page.dart';
import 'package:payflow/modules/meus_boletos/meus_boletos_page.dart';
import 'package:payflow/shared/models/user_model.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  const HomePage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(152),
        child: Container(
          height: 152,
          decoration: BoxDecoration(
            gradient: AppColors.radialGradientHome,
          ),
          child: SafeArea(
            child: Center(
              child: ListTile(
                title: Text.rich(
                  TextSpan(
                    text: 'Olá, ',
                    style: TextStyles.titleRegular,
                    children: [
                      TextSpan(
                        text: widget.user.name,
                        style: TextStyles.titleBoldBackground,
                      )
                    ],
                  ),
                ),
                subtitle: Text(
                  'Mantenha as suas contas em dia',
                  style: TextStyles.captionShape,
                ),
                trailing: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: NetworkImage(widget.user.photoURL),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        padding: const EdgeInsets.symmetric(horizontal: 38),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                color: controller.currentPage == 0
                    ? AppColors.primary
                    : AppColors.body,
              ),
              onPressed: () {
                controller.setPage(0);
                setState(() {});
              },
            ),
            GestureDetector(
              onTap: () async {
                await Navigator.pushNamed(context, '/barcode_scanner');
                setState(() {});
              },
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(
                  Icons.add_box_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.description_outlined,
                color: controller.currentPage == 1
                    ? AppColors.primary
                    : AppColors.body,
              ),
              onPressed: () {
                controller.setPage(1);
                setState(() {});
              },
            ),
          ],
        ),
      ),
      body: [
        MeusBoletosPage(
          key: UniqueKey(),
        ),
        ExtractPage(
          key: UniqueKey(),
        ),
      ][controller.currentPage],
    );
  }
}
