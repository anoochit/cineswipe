import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              // Cinematic Headline
              Text(
                'WELCOME BACK',
                style: GoogleFonts.spaceGrotesk(
                  color: colorScheme.onSurface,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.5,
                  height: 0.9,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'YOUR PRIVATE SCREENING AWAITS',
                style: textTheme.labelLarge?.copyWith(
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 64),
              // Username Input
              _CineSwipeTextField(
                controller: _usernameController,
                label: 'USERNAME',
                hint: 'Enter your alias',
              ),
              const SizedBox(height: 24),
              // Password Input
              _CineSwipeTextField(
                controller: _passwordController,
                label: 'PASSWORD',
                hint: 'Your secret key',
                obscureText: true,
              ),
              const SizedBox(height: 48),
              // Login Button with Pulse Gradient
              _CineSwipeButton(
                onPressed: () {
                  // Handle login
                },
                text: 'LOGIN',
              ),
              const Spacer(),
              // Footer link
              Center(
                child: TextButton(
                  onPressed: () {
                    // Navigate to signup
                  },
                  child: Text(
                    "DON'T HAVE AN ACCOUNT? SIGN UP",
                    style: GoogleFonts.inter(
                      color: colorScheme.primary,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.8,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class _CineSwipeTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final bool obscureText;

  const _CineSwipeTextField({
    required this.controller,
    required this.label,
    required this.hint,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final decoration = theme.inputDecorationTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: decoration.labelStyle,
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: decoration.fillColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            style: GoogleFonts.inter(color: theme.colorScheme.onSurface),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: decoration.hintStyle,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 18,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}

class _CineSwipeButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const _CineSwipeButton({
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorScheme.primary, colorScheme.primaryContainer],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(28),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.spaceGrotesk(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
