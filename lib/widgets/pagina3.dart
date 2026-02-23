import 'package:flutter/material.dart';

// --- TERCERA PÁGINA ---
class TerceraPagina extends StatelessWidget {
  const TerceraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tercera página", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 136, 136, 136), // Gris oscuro para contraste
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: const Color(0xFFAEC6CF), // Azul pastel
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    // Fix: 'withOpacity' is deprecated. Use Color.fromRGBO or Color.fromARGB.
                    // Colors.black.withOpacity(0.1) is equivalent to Color.fromRGBO(0, 0, 0, 0.1)
                    color: Color.fromRGBO(0, 0, 0, 0.1), 
                    blurRadius: 10,
                    spreadRadius: 5,
                  )
                ],
              ),
              child: const Center(
                child: Text("Rolando Contreras Limones", textAlign: TextAlign.center),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Volver atrás"),
            )
          ],
        ),
      ),
    );
  }
}