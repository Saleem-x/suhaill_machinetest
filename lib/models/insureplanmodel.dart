class InsurePlanModel {
  final String title;
  final bool isCopleted;

  InsurePlanModel({required this.title, required this.isCopleted});
}

List<InsurePlanModel> insureplaList = [
  InsurePlanModel(title: 'Personal Details', isCopleted: true),
  InsurePlanModel(title: 'Policy Details', isCopleted: true),
  InsurePlanModel(title: 'Vehicle Details', isCopleted: true),
  InsurePlanModel(title: 'Payment', isCopleted: false),
];
