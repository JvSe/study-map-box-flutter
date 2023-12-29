import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    required this.icon,
    required this.obscure,
    required this.label,
    this.typeInput,
    required this.controller,
  });

  final TextEditingController controller;
  final IoniconsData icon;
  final bool obscure;
  final String label;
  final TextInputType? typeInput;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          size: 20,
        ),
        // focusColor: const Color(0xffff6600),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        labelText: label,
        // floatingLabelBehavior: FloatingLabelBehavior.auto,
        floatingLabelStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
      keyboardType: typeInput ?? typeInput,
      obscureText: obscure,
    );
  }
}
