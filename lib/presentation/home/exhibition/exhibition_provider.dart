import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:science_hall/data/datasource/repositoryimpl/mock_repository_impl.dart';
import 'package:science_hall/domain/entity/show_room_entity.dart';
import 'package:science_hall/domain/repository/mock_repository.dart';


final mockRepositoryProvider = Provider<MockRepository>((ref) {
  return MockRepositoryImpl();
});

final exhibitionProvider = FutureProvider.autoDispose.family<List<ShowRoomEntity>,String>((ref,floorId) async {
  final mockRepository = ref.watch(mockRepositoryProvider);
  return await mockRepository.fetchShowRoom(floorId);
});
