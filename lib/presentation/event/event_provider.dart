import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:science_hall/di_container.dart';
import 'package:science_hall/domain/entity/event_entity.dart';
import 'package:science_hall/domain/repository/science_repository.dart';
import 'package:science_hall/util/dev_log.dart';

part 'event_provider.freezed.dart';

final eventListStateProvider =
    StateNotifierProvider.autoDispose<EventListStateNotifier, EventListState>(
  (ref) {
    final repository = ref.watch(scienceRepositoryProvider);
    final sateNotifiler = EventListStateNotifier(
      scienceRepository: repository,
    );
    sateNotifiler.fetchEvents();
    return sateNotifiler;
  },
);

class EventListStateNotifier extends StateNotifier<EventListState> {
  EventListStateNotifier({
    required this.scienceRepository,
  }) : super(EventListState(isLoading: true, events: []));

  final ScienceRepository scienceRepository;

  Future<void> fetchEvents() async {
    try {
      final response = await scienceRepository.fetchEvents();
      state = state.copyWith(events: []);
      state = state.copyWith(
        isLoading: false,
        events: [
          ...state.events,
          ...response,
        ],
        error: null,
      );
    } catch (e,stack) {
      Log.d(":::::e $stack");
      state = state.copyWith(error: e, isLoading: false);
    }
  }
}

@freezed
class EventListState with _$EventListState {
  factory EventListState({
    required bool isLoading,
    required List<EventEntity> events,
    dynamic error,
  }) = _EventListState;
}
