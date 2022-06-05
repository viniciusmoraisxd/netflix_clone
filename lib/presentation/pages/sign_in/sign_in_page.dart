import 'package:flutter/material.dart';
import 'package:netflix_clone/shared/themes/app_color.dart';
import 'package:netflix_clone/shared/themes/app_images.dart';
import 'package:netflix_clone/shared/widgets/widgets.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        elevation: 0,
        title: Image.asset(
          AppImages.nfLogo,
          height: 58,
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ListView(children: [
            Container(
              constraints: BoxConstraints(maxHeight: constraints.maxHeight),
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomTextFormField(
                    autoFocus: true,
                    label: "Email ou número de telefone",
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const CustomTextFormField(
                    label: "Senha",
                    obscureText: true,
                    suffix: Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Text(
                        "MOSTRAR",
                        style: TextStyle(height: 3),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 24),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Entrar"),
                    ),
                  ),
                  const Text(
                    "Precisa de ajuda?",
                    style: TextStyle(color: AppColors.white),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: const Text("Novo por aqui? Inscreva-se agora.",
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ],
              ),
            ),
          ]);
        },
      ),
    );
  }
}
