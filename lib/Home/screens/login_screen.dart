import 'package:brand_fest/App/router.dart';
import 'package:brand_fest/Utels/media_query.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _obsecuretext = true;
  late TextEditingController idcontrolar;
  late TextEditingController passwordcontrolar;

  @override
  void initState() {
    idcontrolar = TextEditingController();
    passwordcontrolar = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    idcontrolar.dispose();
    passwordcontrolar.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Center(
          child: SizedBox(
            height: screenHeight(context) * 0.4,
            width: screenWidth(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: screenHeight(context) * 0.07,
                  width: screenWidth(context),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/3.png"))),
                ),
                TextFormField(
                  controller: idcontrolar,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Login ID",
                      labelText: "Login ID",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey),
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 11, 101, 173),
                      ),
                      fillColor: const Color.fromARGB(255, 11, 101, 173),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                TextFormField(
                  controller: passwordcontrolar,
                  obscureText: _obsecuretext,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 2, color: Colors.grey),
                      ),
                      suffixIcon: IconButton(
                          color: const Color.fromARGB(255, 11, 101, 173),
                          onPressed: () {
                            setState(() {
                              _obsecuretext = !_obsecuretext;
                            });
                          },
                          icon: _obsecuretext
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility)),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 11, 101, 173),
                      ),
                      fillColor: const Color.fromARGB(255, 11, 101, 173),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                SizedBox(
                  width: screenHeight(context),
                  height: screenHeight(context) * 0.06,
                  child: InkWell(
                    splashColor: const Color.fromARGB(255, 72, 134, 185),
                    onTap: () {
                      Navigator.pushNamed(context, Approuter.home);
                    },
                    child: Ink(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 11, 101, 173),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
