
import 'package:science_hall/domain/entity/show_room_entity.dart';

abstract class MockRepository {
  Future<List<ShowRoomEntity>> fetchShowRoom(String floor);
}