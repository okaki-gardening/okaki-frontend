import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/sensors_provider.dart';

class SensorenPage extends ConsumerWidget {
  const SensorenPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final sensorState = ref.watch(sensorsListProvider);

    return sensorState.when(
        error: (err, s) => Text(err.toString()),
        loading: () => const Center(child: CircularProgressIndicator()),
        data: (sensorState) {
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: () async {
                        ref.invalidate(sensorsListProvider);
                      },
                      child: ListView.builder(
                          itemCount: sensorState.length,
                          itemBuilder: (_, index) {
                            return Card(
                              color: Theme.of(context).colorScheme.secondary,
                              elevation: 4,
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: ListTile(
                                title: Text(
                                  sensorState[index].name,
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary),
                                ),
                                subtitle: Text(sensorState[index].currentValue!,
                                    style:
                                        const TextStyle(color: Colors.white)),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ));
        });
  }
}
