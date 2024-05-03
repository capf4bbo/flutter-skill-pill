import 'package:flutter/material.dart';

class RefreshProductButton extends StatelessWidget {
  const RefreshProductButton(
      {super.key, required this.isLoading, this.onPressed});

  final bool isLoading;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: isLoading
            ? const CircularProgressIndicator()
            : const Icon(Icons.refresh),
        onPressed: isLoading ? null : onPressed);
  }
}
