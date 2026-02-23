import 'package:flutter/material.dart';

// --- PRIMERA PÁGINA ---
class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página inicial ", style: TextStyle(color: Color.fromARGB(255, 6, 139, 248))),
        backgroundColor: const Color(0xFFFFB3B3), // Rojo pastel
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "¡Bienvenido a la App Contreras 6I!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/segunda'),
              icon: const Icon(Icons.arrow_forward),
              label: const Text("Ir a la Segunda Página"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[100]),
            ),
          ],
        ),
      ),
    );
  }
}