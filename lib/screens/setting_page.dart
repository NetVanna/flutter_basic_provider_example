import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_provider_statemanagement/provider/user_provider.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Setting",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text(
                  "Username: ",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  context.watch<UserProvider>().userName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
             TextField(
              controller: userNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                // use read because want use method
                context
                    .read<UserProvider>()
                    .changeUserName(newUserName: userNameController.text);
                FocusManager.instance.primaryFocus?.unfocus();
                userNameController.clear();
              },
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
