import 'package:appwrite/appwrite.dart';
import 'package:okaki/models/sensor_model.dart';

class SensorsService {
  final Client client;
  late Databases databases;

  SensorsService(this.client) {
    databases = Databases(client);
  }

  Future<List<SensorModel>> getSensorsList() async {
    final List<SensorModel> sensors = [];

    try {
      final response = await databases.listDocuments(
          databaseId: 'testing', collectionId: 'sensors');

      final tempList = response.documents;
      if (tempList.isEmpty) {
        return sensors;
      }

      for (var element in tempList) {
        sensors.add(SensorModel.fromMap(element.data));
      }
    } on AppwriteException {
      rethrow;
    }
    return sensors;
  }
}
