import 'package:flutter/material.dart';

class input extends StatefulWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const input(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  State<input> createState() => _inputState();
}

class _inputState extends State<input> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(40))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(40))),
            hintText: widget.hintText),
      ),
    );
  }
}
