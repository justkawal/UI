class SalesReportModel {
  final List<Sales> sales;

  const SalesReportModel({
    required this.sales,
  });

  static const dummySalesReportModel = SalesReportModel(
    sales: [
      Sales(
        productName: 'Product Launched',
        quantity: 303,
      ),
      Sales(
        productName: 'Ongoing Product',
        quantity: 200,
      ),
      Sales(
        productName: 'Product Sold',
        quantity: 340,
      ),
    ],
  );
}

class Sales {
  final String productName;
  final int quantity;

  const Sales({
    required this.productName,
    required this.quantity,
  });
}
