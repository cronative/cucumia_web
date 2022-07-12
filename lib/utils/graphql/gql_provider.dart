part of '../../main.dart';

// class _ClientProvider extends StatelessWidget {
//   _ClientProvider({
//     Key? key,
//     required this.child,
//   })  : client = GqlHelper.clientWrapper(),
//         super(key: key);

//   final Widget child;
//   final ValueNotifier<GraphQLClient> client;

//   @override
//   Widget build(BuildContext context) {
//     return GraphQLProvider(
//       client: client,
//       child: child,
//     );
//   }
// }

class GqlHelper {
  static String? uuidFromObject(Object object) {
    if (object is Map<String, Object>) {
      final String? typeName = object['__typename'].toString();
      final String? id = object['id'].toString();
      if (typeName != null && id != null) {
        return <String>[typeName, id].join('/');
      }
    }
    return null;
  }

  static ValueNotifier<GraphQLClient> clientWrapper() {
    _getClient();
    return ValueNotifier<GraphQLClient>(_getClient() as GraphQLClient);
  }

  static dynamic _getClient() async {
    return await getClient();
  }

  static Future<GraphQLClient> getClient() async {
    // final httpBody = {
    //   "host": _graphqlEndpoint,
    //   "x-api-key": _apiKey,
    // };
    // const dynamic headers = {
    //   "headers": {"host": _graphqlEndpoint, "x-api-key": _apiKey}
    // };
    // try {
    //   await http
    //       .post(
    //     Uri.parse(_graphqlEndpoint),
    //     headers: {
    //       'x-api-key': _apiKey,
    //     },
    //     body: httpBody,
    //   )
    //       .then((_response) {
    //     print(_response.body);
    //   });
    // } catch (e) {
    //   print(e);
    // }

    // const sClient =
    //     SocketClientConfig(autoReconnect: true, initialPayload: headers);

    final AuthLink apiTokenLink = AuthLink(
      headerKey: 'x-api-key',
      getToken: () async => apiKey,
    );

    // String _subscriptionEndpoint =
    //     "wss://hlydvknd4fesldsvwxeas272wi.appsync-realtime-api.us-east-2.amazonaws.com/graphql?header=${base64Encode(_apiKey)}";

    Link _httpLink = HttpLink(graphqlEndpoint);

    // final WebSocketLink _websocketLink = WebSocketLink(
    //   _subscriptionEndpoint,
    // );

    // Link _webSocketLink = Link.split(
    //   (request) => request.isSubscription,
    //   _websocketLink,
    //   _httpLink,
    // );

    final Link _link = apiTokenLink.concat(_httpLink);

    return GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      link: _link,
      alwaysRebroadcast: true,
    );
  }
}
