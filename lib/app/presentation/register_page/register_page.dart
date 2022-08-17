import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:nomady_design_system/nomady_design_system.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final cpfFormatter = MaskTextInputFormatter(
      mask: '###.###.###-##',
      filter: {
        '#': RegExp(r'[0-9]'),
      },
    );
    final emailFormatter = MaskTextInputFormatter(
      mask: '#####@#####.####',
      filter: {
        '#': RegExp(r'[a-zA-Z0-9]'),
      },
    );
    final phoneFormatter = MaskTextInputFormatter(
      mask: '(##) # ####-####',
      filter: {
        '#': RegExp(r'[0-9]'),
      },
    );
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('Login'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
            height: size.height,
            width: size.width,
            child: SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 40,
                        ),
                        children: [
                          TextSpan(
                            text: 'Nomady',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: 'pass',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text('Qual é a sua viagem?',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ],
                )),
                Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 40,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(45),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DsCustomTextField(
                          icon: Icons.email,
                          label: 'Email',
                          inputFormatters: [emailFormatter],
                        ),
                        const DsCustomTextField(
                          icon: Icons.lock,
                          label: 'Senha',
                          isSecret: true,
                        ),
                        const DsCustomTextField(
                          icon: Icons.person,
                          label: 'Nome',
                        ),
                        DsCustomTextField(
                          icon: Icons.phone,
                          label: 'Celular',
                          inputFormatters: [phoneFormatter],
                        ),
                        DsCustomTextField(
                          icon: Icons.file_copy,
                          label: 'CPF',
                          inputFormatters: [cpfFormatter],
                        ),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('Cadastrar',
                                style: TextStyle(fontSize: 18)),
                          ),
                        ),
                      ],
                    )),
              ],
            ))),
      ),
    );
  }
}
