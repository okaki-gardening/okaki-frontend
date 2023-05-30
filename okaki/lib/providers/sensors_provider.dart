import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:okaki/models/sensor_model.dart';
import 'package:okaki/providers/client_provider.dart';
import 'package:okaki/providers/sensors_service.dart';

final sensorsServiceProvider = Provider<SensorsService>((ref) {
  return SensorsService(ref.watch(clientProvider));
});

final sensorsListProvider = FutureProvider<List<SensorModel>>((ref) async {
  return ref.watch(sensorsServiceProvider).getSensorsList();
});
