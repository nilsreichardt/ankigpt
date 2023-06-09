import 'package:cloud_functions/cloud_functions.dart';

class BuyRepository {
  final FirebaseFunctions cloudFunctions;
  final String routeUrl;

  BuyRepository({
    required this.cloudFunctions,
    required this.routeUrl,
  });

  Future<String> createCheckoutSessionUrl() async {
    final respsonse = await cloudFunctions
        .httpsCallableFromUrl(routeUrl)
        .call<Map<String, dynamic>>({
      'destination': 'createCheckoutSession',
    });

    return respsonse.data['url'] as String;
  }

  Future<void> logClickedBuy() async {
    await cloudFunctions.httpsCallableFromUrl(routeUrl).call({
      'destination': 'analyticsBuy',
    });
  }
}
