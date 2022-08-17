// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:nomady_design_system/nomady_design_system.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
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
          width: size.height,
          child: SafeArea(
              child: Column(
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
                      const DsCustomTextField(
                        icon: Icons.email,
                        label: 'Email',
                      ),
                      const DsCustomTextField(
                        icon: Icons.lock,
                        label: 'Password',
                        isSecret: true,
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
                          child: const Text('Entrar',
                              style: TextStyle(fontSize: 18)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text('Esqueceu sua senha?',
                              style: TextStyle(color: Colors.red)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.grey.withAlpha(90),
                                thickness: 2,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text('Ou'),
                            ),
                            Expanded(
                              child: Divider(
                                color: Colors.grey.withAlpha(90),
                                thickness: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: Colors.green,
                              width: 2,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          child: const Text('Criar Conta',
                              style: TextStyle(fontSize: 18)),
                        ),
                      ),
                    ],
                  )),
            ],
          )),
        ),
      ),
    );
  }
}
