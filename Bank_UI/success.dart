// transfer_success_page.dart

import 'package:flutter/material.dart';

class TransferSuccessPage extends StatelessWidget {
  final String amount;
  final String beneficiary;

  const TransferSuccessPage({
    Key? key,
    required this.amount,
    required this.beneficiary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Success Image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Image.asset(
                'assets/transfer_success/transaction_successfull.png', // ✅ put your image here in assets/images
                height: 200,
              ),
            ),

            SizedBox(height: 30),

            // Success Text
            Text(
              "Transfer successful!",
              style: TextStyle(
                fontSize: 24,
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 15),

            // Subtitle Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                  children: [
                    TextSpan(text: "You have successfully transferred "),
                    TextSpan(
                      text: "\$$amount ",
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: "to "),
                    TextSpan(
                      text: beneficiary,
                      style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 40),

            // Action Icons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {
                    // Implement share logic
                  },
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(Icons.download),
                  onPressed: () {
                    // Implement download logic
                  },
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
