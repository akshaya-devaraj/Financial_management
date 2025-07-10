import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fm/bloc/logic_bloc.dart';
import 'package:fm/bloc/logic_state.dart';
import 'package:fm/bloc/login_event.dart';
import 'package:fm/screen/dashboard.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginForm();
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      context.read<LoginBloc>().add(LoginSubmitted());
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF10002B),
      body: SafeArea(
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.isFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Invalid email or password")),
              );
            }
            if (state.isSuccess) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => DashboardApp(userName: state.username),
                ),
              );
            }
          },
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              return SingleChildScrollView(
                child: SizedBox(
                  height: height - MediaQuery.of(context).padding.top,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const Spacer(flex: 2),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Welcome Back!",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFE0AAFF),
                              ),
                            ),
                          ),
                          const SizedBox(height: 32),
                          Container(
                            padding: const EdgeInsets.all(24),
                            decoration: BoxDecoration(
                              color: const Color(0xFF240046),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                _buildInputField(
                                  label: "UserName",
                                  initialValue: state.username,
                                  onChanged: (val) => context.read<LoginBloc>().add(UserNameChange(val)),
                                  validator: (val) =>
                                  val == null || val.isEmpty ? "Enter valid username" : null,
                                ),
                                const SizedBox(height: 16),
                                _buildInputField(
                                  label: "Email",
                                  initialValue: state.email,
                                  onChanged: (val) => context.read<LoginBloc>().add(EmailChange(val)),
                                  validator: (val) =>
                                  val == null || !val.contains("@") ||!val.contains(".") ? "Enter valid email" : null,
                                ),
                                const SizedBox(height: 16),
                                _buildInputField(
                                  label: "Password",
                                  obscureText: true,
                                  onChanged: (val) => context.read<LoginBloc>().add(PasswordChange(val)),
                                  validator: (val) =>
                                  val == null || val.length < 6 ? "Password too short" : null,
                                ),
                                const SizedBox(height: 24),
                                state.isSubmitting
                                    ? const CircularProgressIndicator(color: Colors.white)
                                    : GestureDetector(
                                  onTap: _submitForm,
                                  child: Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(vertical: 14),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xFF7B2CBF),
                                          Color(0xFFC77DFF),
                                        ],
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({
    required String label,
    required String? Function(String?) validator,
    required Function(String) onChanged,
    String? initialValue,
    bool obscureText = false,
  }) {
    return TextFormField(
      initialValue: initialValue,
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Color(0xFFE0AAFF)),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFE0AAFF)),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFC77DFF), width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
