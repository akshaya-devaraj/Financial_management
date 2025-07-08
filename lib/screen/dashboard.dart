import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void toggleTheme(bool isDark) {
    setState(() {
      _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blueGrey,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
      ),
      home: DashboardScreen(
        isDarkMode: _themeMode == ThemeMode.dark,
        onToggleTheme: toggleTheme,
      ),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  final bool isDarkMode;
  final Function(bool) onToggleTheme;

  const DashboardScreen({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Transaction> transactions = [];

  double get income =>
      transactions.where((t) => t.type == 'Income').fold(0.0, (sum, t) => sum + t.amount);

  double get expense =>
      transactions.where((t) => t.type == 'Expense').fold(0.0, (sum, t) => sum + t.amount);

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
        title: const Text("Dashboard", style: TextStyle(fontSize: 28)),
        actions: [
          Row(
            children: [
              const Icon(Icons.light_mode),
              Switch(
                value: widget.isDarkMode,
                onChanged: widget.onToggleTheme,
              ),
              const Icon(Icons.dark_mode),
              const SizedBox(width: 10),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Summary Cards Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SummaryCard(title: 'Income', amount: income, color: Colors.green),
                SummaryCard(title: 'Expense', amount: expense, color: Colors.red),
                SummaryCard(title: 'Balance', amount: balance, color: Colors.blueGrey),
              ],
            ),
            const SizedBox(height: 12),

            // Pie Chart
            SizedBox(height: 180, child: PieChartWidget(income: income, expense: expense)),
            const SizedBox(height: 12),

            // Add Transaction Form
            AddTransactionForm(onAdd: addTransaction),
            const Divider(height: 30),

            // Transactions List
            const Text('Transactions',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 8),
            Expanded(child: TransactionList(transactions: transactions)),
          ],
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
    return Card(
      color: color.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Text(title, style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 4),
            Text('\$${amount.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 18)),
          ],
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

  final List<String> _accountTypes = ['Cash', 'Bank', 'Credit'];
  final List<String> _transactionTypes = ['Income', 'Expense'];

  void _submit() {
    if (_formKey.currentState!.validate()) {
      final txn = Transaction(
        type: _type,
        accountType: _account,
        category: _categoryController.text,
        amount: double.parse(_amountController.text),
      );
      widget.onAdd(txn);
      _amountController.clear();
      _categoryController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        Row(children: [
          Expanded(
            child: DropdownButtonFormField<String>(
              value: _type,
              onChanged: (value) => setState(() => _type = value!),
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
        TextFormField(
          controller: _categoryController,
          decoration: const InputDecoration(labelText: 'Category'),
          validator: (value) => value == null || value.isEmpty ? 'Enter category' : null,
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: _amountController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Amount'),
          validator: (value) => value == null || value.isEmpty ? 'Enter amount' : null,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: _submit,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
          child: const Text('Add Transaction'),
        ),
      ]),
    );
  }
}

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList({required this.transactions});

  @override
  Widget build(BuildContext context) {
    if (transactions.isEmpty) {
      return const Center(
        child: Text('No transactions yet'),
      );
    }

    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final txn = transactions[index];
        return ListTile(
          leading: Icon(
            txn.type == 'Income' ? Icons.arrow_downward : Icons.arrow_upward,
            color: txn.type == 'Income' ? Colors.green : Colors.red,
          ),
          title: Text('\$${txn.amount.toStringAsFixed(2)} - ${txn.category}'),
          subtitle: Text('${txn.type} | ${txn.accountType}'),
        );
      },
    );
  }
}

class Transaction {
  final String type;
  final String accountType;
  final String category;
  final double amount;

  Transaction({
    required this.type,
    required this.accountType,
    required this.category,
    required this.amount,
  });
}
