class Income {
  final int id;
  final String title;
  final double amount;
  final DateTime date;

  Income({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });

  Map<String, dynamic> toMap() => {
    'id': id,
    'title': title,
    'amount': amount.toString(),
    'date': date.toString(),
  };

  factory Income.fromString(Map<String, dynamic> value) => Income(
    id: value['id'],
    title: value['title'],
    amount: double.parse(value['amount']),
    date: DateTime.parse(value['date']),
  );
}
