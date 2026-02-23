import 'package:flutter/material.dart';

// --- SEGUNDA PÁGINA ---
class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda página", style: TextStyle(color: Color.fromARGB(255, 1, 17, 0))),
        backgroundColor: const Color.fromARGB(255, 155, 223, 153), // Morado pastel
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://raw.githubusercontent.com/RolandoLimones/misimagenesflutter/refs/heads/main/bosque.jpg',
                height: 200,
                // The `placeholder` parameter is not defined for Image.network.
                // Use `loadingBuilder` to show a loading indicator.
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child; // Image is loaded, show the image
                  }
                  return const Center(
                    child: CircularProgressIndicator(), // Show a loading indicator
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/tercera'),
              child: const Text("Ir a la Tercera Página"),
            ),
          ],
        ),
      ),
    );
  }
}
