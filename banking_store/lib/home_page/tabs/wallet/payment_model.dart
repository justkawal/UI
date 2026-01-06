class PaymentModel {
  final String id;
  final String name;
  final Authorization authorization;
  final double price;
  final String dateTime;

  const PaymentModel({
    required this.id,
    required this.name,
    required this.authorization,
    required this.price,
    required this.dateTime,
  });

  static List<PaymentModel> dummy() {
    return [
      PaymentModel(
        id: '1',
        name: 'Down Payments',
        authorization: Authorization.automatic,
        price: 50100,
        dateTime: 'Sep 19, 2020',
      ),
      PaymentModel(
        id: '2',
        name: 'UA Stocks',
        authorization: Authorization.self,
        price: 4352,
        dateTime: 'Oct 29, 2021',
      ),
      PaymentModel(
        id: '3',
        name: 'Credit Transfer',
        authorization: Authorization.self,
        price: 230,
        dateTime: 'Apr 09, 2017',
      ),
      PaymentModel(
        id: '3',
        name: 'Dummy 3rd',
        authorization: Authorization.self,
        price: 230,
        dateTime: 'Apr 09, 2017',
      ),
    ];
  }
}

class Authorization {
  final String value;
  const Authorization._(this.value);

  static const Authorization automatic = Authorization._('Automatic');
  static const Authorization manual = Authorization._('Manual');
  static const Authorization self = Authorization._('Self-Invested');
}
