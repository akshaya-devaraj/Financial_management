import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const DashboardApp(userName: ''));
}

class DashboardApp extends StatelessWidget {
  final String userName;

  const DashboardApp({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF410445),
        primaryColor: const Color(0xFFA5158C),
        cardColor: const Color(0xFF6E0D74),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white70),
          bodySmall: TextStyle(color: Colors.white60),
        ),
      ),
      home: DashboardScreen(userName: userName),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  final String userName;

  const DashboardScreen({super.key, required this.userName});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Transaction> transactions = [];

  double get income => transactions
      .where((t) => t.type == 'Income')
      .fold(0.0, (sum, t) => sum + t.amount);

  double get expense => transactions
      .where((t) => t.type == 'Expense')
      .fold(0.0, (sum, t) => sum + t.amount);

  double get balance => income - expense;

  void addTransaction(Transaction txn) {
    setState(() {
      transactions.add(txn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Welcome ${widget.userName}"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SummaryCard(title: 'Income', amount: income, color: Colors.green),
                  SummaryCard(title: 'Expense', amount: expense, color: Colors.red),
                  SummaryCard(title: 'Balance', amount: balance, color: Colors.cyan),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    const Text('Spending Analysis',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                    const SizedBox(height: 16),
                    SizedBox(height: 200, child: PieChartWidget(income: income, expense: expense)),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              AddTransactionForm(onAdd: addTransaction),
              const SizedBox(height: 24),
              Text('All Transactions',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  final txn = transactions[index];
                  return Card(
                    color: Theme.of(context).cardColor.withOpacity(0.8),
                    child: ListTile(
                      leading: Icon(
                        txn.type == 'Income' ? Icons.arrow_downward : Icons.arrow_upward,
                        color: txn.type == 'Income' ? Colors.green : Colors.red,
                      ),
                      title: Text('\$${txn.amount.toStringAsFixed(2)} - ${txn.category}',
                          style: const TextStyle(color: Colors.white)),
                      subtitle: Text(
                        '${txn.type} | ${txn.accountType} | ${DateFormat('yyyy-MM-dd').format(txn.date)}',
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SummaryCard extends StatelessWidget {
  final String title;
  final double amount;
  final Color color;

  const SummaryCard({required this.title, required this.amount, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Theme.of(context).cardColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Column(
            children: [
              Text(title, style: const TextStyle(color: Colors.white70)),
              const SizedBox(height: 6),
              Text(
                '\$${amount.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PieChartWidget extends StatelessWidget {
  final double income;
  final double expense;

  const PieChartWidget({required this.income, required this.expense});

  @override
  Widget build(BuildContext context) {
    final total = income + expense;
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
            color: Colors.green,
            value: income,
            title: total == 0 ? '' : '${((income / total) * 100).toStringAsFixed(1)}%',
            radius: 50,
            titleStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          PieChartSectionData(
            color: Colors.red,
            value: expense,
            title: total == 0 ? '' : '${((expense / total) * 100).toStringAsFixed(1)}%',
            radius: 50,
            titleStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
        sectionsSpace: 2,
        centerSpaceRadius: 30,
      ),
    );
  }
}

class AddTransactionForm extends StatefulWidget {
  final Function(Transaction) onAdd;

  const AddTransactionForm({required this.onAdd});

  @override
  State<AddTransactionForm> createState() => _AddTransactionFormState();
}

class _AddTransactionFormState extends State<AddTransactionForm> {
  final _formKey = GlobalKey<FormState>();
  final _amountController = TextEditingController();
  final _categoryController = TextEditingController();
  String _type = 'Income';
  String _account = 'Cash';
  DateTime _selectedDate = DateTime.now();

  final List<String> _accountTypes = ['Cash', 'Bank', 'Credit'];
  final List<String> _transactionTypes = ['Income', 'Expense'];

  List<String> _getCategoriesForType(String type) {
    return type == 'Income'
        ? ['Salary', 'Freelance', 'Investments', 'Interest', 'Refunds', 'Other']
        : ['Food', 'Transport', 'Utilities', 'Entertainment', 'Healthcare', 'Shopping', 'Rent', 'Education', 'Other'];
  }

  void _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      final txn = Transaction(
        type: _type,
        accountType: _account,
        category: _categoryController.text,
        amount: double.parse(_amountController.text),
        date: _selectedDate,
      );
      widget.onAdd(txn);
      _amountController.clear();
      _categoryController.clear();
      setState(() {
        _selectedDate = DateTime.now();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Add Transaction',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Row(children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _type,
                    onChanged: (value) => setState(() {
                      _type = value!;
                      _categoryController.clear();
                    }),
                    items: _transactionTypes.map((type) {
                      return DropdownMenuItem(value: type, child: Text(type));
                    }).toList(),
                    decoration: const InputDecoration(labelText: 'Transaction Type'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _account,
                    onChanged: (value) => setState(() => _account = value!),
                    items: _accountTypes.map((acc) {
                      return DropdownMenuItem(value: acc, child: Text(acc));
                    }).toList(),
                    decoration: const InputDecoration(labelText: 'Account Type'),
                  ),
                ),
              ]),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: _categoryController.text.isNotEmpty ? _categoryController.text : null,
                items: _getCategoriesForType(_type)
                    .map((category) => DropdownMenuItem(
                  value: category,
                  child: Text(category),
                ))
                    .toList(),
                onChanged: (value) => setState(() {
                  _categoryController.text = value!;
                }),
                decoration: const InputDecoration(labelText: 'Category'),
                validator: (value) => value == null || value.isEmpty ? 'Select category' : null,
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Amount'),
                validator: (value) => value == null || value.isEmpty ? 'Enter amount' : null,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Text("Date: ${DateFormat('yyyy-MM-dd').format(_selectedDate)}"),
                  ),
                  TextButton.icon(
                    icon: const Icon(Icons.calendar_today),
                    label: const Text('Pick Date'),
                    onPressed: _pickDate,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  onPressed: _submit,
                  style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).primaryColor),
                  child: const Text('Add'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Transaction {
  final String type;
  final String accountType;
  final String category;
  final double amount;
  final DateTime date;

  Transaction({
    required this.type,
    required this.accountType,
    required this.category,
    required this.amount,
    required this.date,
  });
}
