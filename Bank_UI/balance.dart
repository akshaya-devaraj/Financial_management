// account_page.dart

import 'package:flutter/material.dart';
import 'package:project3/Bank_UI/transactions_history.dart';
import 'transaction_analysis.dart'; // For View Analysis button
import 'transactions.dart'; // For View Transactions button

void main() {
  runApp(AccountOverviewApp());
}

class AccountOverviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AccountPage extends StatelessWidget {
  final String accountNumber = "123456789012";
  final String branchName = "MG Road Branch";
  final String accountHolder = "Dharshini V";
  final double balance = 54239.75;

  String getMaskedAccount() {
    return "XXXXXX" + accountNumber.substring(accountNumber.length - 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECEFF1),
      appBar: AppBar(
        title: Text("My Account"),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade700,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Account Card
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  colors: [Colors.indigo.shade700, Colors.deepPurple.shade400],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 12,
                    offset: Offset(4, 6),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Holder Name + Icon
                    Row(
                      children: [
                        Icon(Icons.account_circle, color: Colors.white, size: 28),
                        SizedBox(width: 8),
                        Text(
                          accountHolder,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text("Available Balance",
                        style: TextStyle(color: Colors.white70, fontSize: 15)),
                    SizedBox(height: 6),
                    Text(
                      "₹ ${balance.toStringAsFixed(2)}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Account Number
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("A/C Number", style: TextStyle(color: Colors.white70)),
                            SizedBox(height: 4),
                            Text(getMaskedAccount(),
                                style: TextStyle(color: Colors.white, fontSize: 16)),
                          ],
                        ),
                        // Branch Name
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Branch", style: TextStyle(color: Colors.white70)),
                            SizedBox(height: 4),
                            Text(branchName,
                                style: TextStyle(color: Colors.white, fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 40),

            // Buttons
            buildStylishButton(
              context,
              label: "View Transactions",
              icon: Icons.receipt_long,
              color: Colors.deepPurpleAccent,
              targetPage: const TransactionPage(), // From transactions.dart
            ),
            SizedBox(height: 20),
            buildStylishButton(
              context,
              label: "View Analysis",
              icon: Icons.bar_chart,
              color: Colors.teal,
              targetPage: const TransactionAnalysisPage(), // From transaction_analysis.dart
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStylishButton(BuildContext context,
      {required String label,
        required IconData icon,
        required Color color,
        required Widget targetPage}) {
    return ElevatedButton.icon(
      icon: Icon(icon, size: 22),
      label: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0),
        child: Text(label, style: TextStyle(fontSize: 16)),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => targetPage));
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: color,
        minimumSize: Size(double.infinity, 50),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
