import 'package:flutter/material.dart';
import 'package:sneakershop/screen/homescreen.dart';

class SlapScreen extends StatelessWidget {
  const SlapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.network(
                "https://imgs.search.brave.com/9_IDuXaDRqTbQ5wN7P4NmfVBhWDY-hm1cyR4oJYH_Kk/rs:fit:860:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi9hL2E2L0xv/Z29fTklLRS5zdmcv/NjQwcHgtTG9nb19O/SUtFLnN2Zy5wbmc",
                height: 200,
                width: 250,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Just do it",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              textAlign: TextAlign.center,
              "Brand new sneakers and customer kicks made with primium quality",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Homescreen()));
              },
              child: Container(
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: Text(
                    "Star Now",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
