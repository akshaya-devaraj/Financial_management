import 'package:flutter/material.dart';
import 'success.dart'; // import your separate success page

void main() {
  runApp(BankFundTransferApp());
}

class BankFundTransferApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FundTransferPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FundTransferPage extends StatefulWidget {
  @override
  _FundTransferPageState createState() => _FundTransferPageState();
}

class _FundTransferPageState extends State<FundTransferPage> {
  bool isWithinCanara = true;

  final _accountController = TextEditingController();
  final _reEnterAccountController = TextEditingController();
  final _beneficiaryNameController = TextEditingController();
  final _nickNameController = TextEditingController();
  final _ifscController = TextEditingController();

  final List<String> _banks = [
    'HDFC Bank',
    'ICICI Bank',
    'State Bank of India',
    'Axis Bank',
    'Kotak Mahindra Bank',
    'Punjab National Bank',
    'Yes Bank',
    'Bank of Baroda',
    'IDFC First Bank',
  ];

  String? _selectedBank;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Send Money"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blueAccent, Colors.indigo]),
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),

          // Custom Toggle Tabs
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  buildTab("Within Canara", isWithinCanara, () {
                    setState(() => isWithinCanara = true);
                  }),
                  buildTab("Other Bank", !isWithinCanara, () {
                    setState(() => isWithinCanara = false);
                  }),
                ],
              ),
            ),
          ),

          SizedBox(height: 15),

          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      buildInputField("Account Number", _accountController, Icons.account_balance_wallet),
                      buildInputField("Re-enter Account Number", _reEnterAccountController, Icons.repeat),

                      if (!isWithinCanara) ...[
                        buildBankDropdown(),
                        buildInputField("IFSC Code", _ifscController, Icons.qr_code),
                      ],

                      buildInputField("Beneficiary Name", _beneficiaryNameController, Icons.person),
                      buildInputField("Nick Name", _nickNameController, Icons.edit_note),

                      SizedBox(height: 30),

                      ElevatedButton(
                        onPressed: () {
                          if (_validateInputs()) {
                            // If valid → Go to Success Page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => TransferSuccessPage(
                                  amount: '1000', // You can make this dynamic later
                                  beneficiary: _beneficiaryNameController.text.trim(),
                                ),
                              ),
                            );
                          } else {
                            // Show error
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Please fill all required fields correctly."),
                                backgroundColor: Colors.redAccent,
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo,
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        ),
                        child: Text("Confirm", style: TextStyle(fontSize: 18, color: Colors.white)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Improved Input validation function
  bool _validateInputs() {
    // Check basic fields
    if (_accountController.text.trim().isEmpty ||
        _reEnterAccountController.text.trim().isEmpty ||
        _beneficiaryNameController.text.trim().isEmpty ||
        _nickNameController.text.trim().isEmpty) {
      return false;
    }

    // Check account number match
    if (_accountController.text.trim() != _reEnterAccountController.text.trim()) {
      return false;
    }

    // If Other Bank selected → IFSC and Bank must be selected
    if (!isWithinCanara) {
      if (_ifscController.text.trim().isEmpty || _selectedBank == null) {
        return false;
      }
    }

    return true;
  }

  Widget buildInputField(String label, TextEditingController controller, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.indigo),
          labelText: label,
          filled: true,
          fillColor: Colors.grey.shade100,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }

  Widget buildBankDropdown() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_balance, color: Colors.indigo),
          labelText: "Select Bank",
          filled: true,
          fillColor: Colors.grey.shade100,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
        value: _selectedBank,
        items: _banks.map((bank) {
          return DropdownMenuItem<String>(
            value: bank,
            child: Text(bank),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            _selectedBank = value;
          });
        },
      ),
    );
  }

  Widget buildTab(String label, bool isSelected, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(30),
            boxShadow: isSelected
                ? [BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2))]
                : [],
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.indigo : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
