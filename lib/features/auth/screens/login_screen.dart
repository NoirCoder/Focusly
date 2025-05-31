import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../widgets/frosted_card.dart';
import '../widgets/input_field.dart';
import '../widgets/primary_button.dart';
import '../widgets/terms_text.dart';
import '../widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.network(
            'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80',
            fit: BoxFit.cover,
          ),

          // Semi-transparent dark overlay
          Container(color: AppColors.backgroundOverlay),

          // Content
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // App Title
                Text(
                  'Focusly',
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Focus. Track. Improve.',
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 40),

                // Frosted glass card with inputs only
                FrostedCard(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        InputField(
                          hintText: 'Email',
                          prefixIcon: Icons.email_outlined,
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
                        ),
                        SizedBox(height: 20),
                        InputField(
                          hintText: 'Password',
                          prefixIcon: Icons.lock_outline,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                // Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // TODO: Forgot password
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: AppColors.accentBlue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Sign In Button
                PrimaryButton(
                  buttonText: 'Sign In',
                  onPressed: () {
                    // TODO: Login logic
                  },
                ),

                const SizedBox(height: 24),

                // Terms and Privacy
                const SizedBox(height: 24),

                // Social Buttons
                SocialButton(
                  iconPath: 'assets/icons/google.png',
                  text: 'Continue with Google',
                  onTap: () {
                    // handle google sign-in
                  },
                ),
                SocialButton(
                  iconPath: 'assets/icons/apple.png',
                  text: 'Continue with Apple',
                  onTap: () {
                    // handle apple sign-in
                  },
                ),

                const SizedBox(height: 16),

                // Sign Up Prompt
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(color: AppColors.textSecondary),
                    ),
                    GestureDetector(
                      onTap: () {
                        // TODO: Navigate to sign up
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: AppColors.accentBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 200),
                // Terms and Privacy Text
                const TermsText(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
