import 'package:flutter/material.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _usernameFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _usernameFocus.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }

  void _handleSignIn() {
    // TODO: Implement sign in logic
    print('Sign in with: ${_usernameController.text}');
  }

  void _handleCreateAccount() {
    // TODO: Implement create account logic
    print('Create account pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF02070D),
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              // Main content with form
              const _SignInForm(),
              
              // Buttons section
              _SignInButtons(
                onSignIn: _handleSignIn,
                onCreateAccount: _handleCreateAccount,
              ),
              
              // Spacer to push content up
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SignInForm extends StatelessWidget {
  const _SignInForm();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          // Header with title
          const _TableHeader(),
          
          // Username field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: _CustomTextField(
              hintText: 'Username',
              controller: TextEditingController(),
            ),
          ),
          
          // Password field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: _CustomTextField(
              hintText: 'Password',
              controller: TextEditingController(),
              isPassword: true,
            ),
          ),
        ],
      ),
    );
  }
}

class _TableHeader extends StatelessWidget {
  const _TableHeader();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            'Welcome back!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: const Color(0xFFD7DDE4),
              letterSpacing: -0.56,
              height: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}

class _CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;

  const _CustomTextField({
    required this.hintText,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xFFB8CAE0).withOpacity(0.12),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 13.5),
        child: TextField(
          controller: controller,
          obscureText: isPassword,
          style: TextStyle(
            fontFamily: 'Plus Jakarta Sans',
            fontWeight: FontWeight.normal,
            fontSize: 17,
            color: const Color(0xFFD1DDEB),
            height: 1.35,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: 'Plus Jakarta Sans',
              fontWeight: FontWeight.normal,
              fontSize: 17,
              color: const Color(0xFFD1DDEB).withOpacity(0.62),
              height: 1.35,
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
            isDense: true,
          ),
        ),
      ),
    );
  }
}

class _SignInButtons extends StatelessWidget {
  final VoidCallback onSignIn;
  final VoidCallback onCreateAccount;

  const _SignInButtons({
    required this.onSignIn,
    required this.onCreateAccount,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Primary Sign In Button
            _PrimaryButton(
              text: 'Sign In',
              onPressed: onSignIn,
            ),
            
            const SizedBox(height: 16),
            
            // Secondary Create Account Button
            _SecondaryButton(
              text: 'Create Account',
              onPressed: onCreateAccount,
            ),
          ],
        ),
      ),
    );
  }
}

class _PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const _PrimaryButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0xFF4A90E2),
          borderRadius: BorderRadius.circular(48),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(48),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14.5),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: Colors.black,
                    height: 1.35,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const _SecondaryButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48),
          border: Border.all(
            color: const Color(0xFF91A2B6).withOpacity(0.2),
            width: 0.5,
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(48),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: const Color(0xFFD7DDE4),
                    height: 1.35,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}