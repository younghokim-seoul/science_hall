import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:science_hall/data/datasource/beacon/beacon_manager.dart';


final beaconProvider = Provider.autoDispose<BeaconManager>((ref) => BeaconManager());
