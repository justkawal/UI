class MessageModel {
  final String id;
  final String userId;
  final String name;
  final String message;
  final MessageType type;
  final DonationModel? donation;

  const MessageModel({
    required this.id,
    required this.userId,
    required this.name,
    this.message = '',
    required this.type,
    this.donation,
  });

  static final dummyList = [
    MessageModel(
      id: '4',
      userId: '1',
      name: 'Ella Doe',
      type: MessageType.received,
      donation: DonationModel(
        amount: '100',
        currency: '\$',
        donatedCount: 1,
        totalDonation: '1,111.11',
      ),
    ),
    MessageModel(
      id: '3',
      userId: '2',
      name: 'Kawal Singh',
      message: 'Yes, put my name down in that list of the donations.',
      type: MessageType.sent,
    ),
    MessageModel(
      id: '2',
      userId: '1',
      name: 'Ella Doe',
      message: 'Will you help us?',
      type: MessageType.received,
    ),
    MessageModel(
      id: '1',
      userId: '1',
      name: 'Ella Doe',
      message: 'My friends and I are raising money to help Mirela.',
      type: MessageType.received,
    ),
  ];
}

class DonationModel {
  final String amount;
  final String currency;
  final String totalDonation;
  final int donatedCount;

  const DonationModel({
    required this.amount,
    required this.currency,
    required this.donatedCount,
    required this.totalDonation,
  });
}

enum MessageType {
  sent,
  received,
}
