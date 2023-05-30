import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final clientProvider = Provider<Client>((ref) {
  return Client()
      .setEndpoint('https://appwrite.okaki.org/v1')
      .setProject('644bbba076344291f17d');
});
