import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crear Cuenta',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins', // Tipografía elegante
      ),
      home: const CrearCuentaPage(),
    );
  }
}

class CrearCuentaPage extends StatelessWidget {
  const CrearCuentaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Título principal
              const Text(
                'Crear cuenta',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2D3436),
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 30),
              // Rectángulo grande rosa pálido
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE5E5), // Rosa pálido
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildInputField('Nombre'),
                        _buildInputField('Apellidos'),
                        _buildInputField('Correo'),
                        _buildInputField('Edad'),
                        _buildInputField('Nombre usuario'),
                        _buildInputField('Contraseña', isPassword: true),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Botón Registrarse
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFB6B6), // Rosa cálido
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Text(
                        'Registrarse',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white.withOpacity(0.9),
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                    // Dibujo del oso en la esquina inferior derecha
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: _buildCuteBear(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(String hintText, {bool isPassword = false}) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey.withOpacity(0.7),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        ),
      ),
    );
  }

  Widget _buildCuteBear() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Cabeza del oso
          Container(
            width: 35,
            height: 35,
            decoration: const BoxDecoration(
              color: Color(0xFF8B4513), // Marrón para el oso
              shape: BoxShape.circle,
            ),
          ),
          // Orejas
          Positioned(
            left: 8,
            top: 8,
            child: Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                color: Color(0xFF8B4513),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: 8,
            top: 8,
            child: Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                color: Color(0xFF8B4513),
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Ojos
          Positioned(
            left: 12,
            top: 15,
            child: Container(
              width: 4,
              height: 4,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: 12,
            top: 15,
            child: Container(
              width: 4,
              height: 4,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Nariz
          Positioned(
            bottom: 15,
            child: Container(
              width: 6,
              height: 4,
              decoration: const BoxDecoration(
                color: Color(0xFF4A2512),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}