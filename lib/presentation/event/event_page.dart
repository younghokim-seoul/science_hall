import 'package:arc/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:science_hall/gen/assets.gen.dart';
import 'package:science_hall/presentation/event/event_provider.dart';
import 'package:science_hall/presentation/theme/app_text_theme.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';
import 'package:science_hall/presentation/widget/cached_image_card.dart';
import 'package:science_hall/presentation/widget/error_card.dart';
import 'package:science_hall/presentation/widget/loading_indicator.dart';
import 'package:science_hall/util/dev_log.dart';

class EventPage extends ConsumerStatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EventPageState();
}

class _EventPageState extends ConsumerState<EventPage> {
  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("이벤트", style: theme.textTheme.h40.bold()),
        backgroundColor: theme.appColors.background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                      child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xff3982AB),
                    ),
                  )),
                  Positioned(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 20, right: 20, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("선물가져가세요!",
                              style: TextStyle(color: Colors.white)),
                          Gap(10),
                          Text("국립수산과학관이 준비한\n미션이벤트!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          Gap(10),
                          Text("바로가기 >", style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    child: Assets.images.eventIcon.image(fit: BoxFit.scaleDown),
                  )
                ],
              ),
            ),
            const Expanded(child: EventList())
          ],
        ),
      ),
    );
  }
}

class EventList extends ConsumerStatefulWidget {
  const EventList({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EventListState();
}

class _EventListState extends ConsumerState<EventList> {
  final _refreshController = RefreshController(initialRefresh: false);

  void _onRefresh() async {
    Log.d(":::_onRefresh");
    await ref.watch(eventListStateProvider.notifier).fetchEvents();
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    final eventStateProvider = ref.watch(eventListStateProvider);
    final theme = ref.watch(appThemeProvider);
    if (eventStateProvider.isLoading) {
      return const LoadingIndicator();
    }

    if (eventStateProvider.error != null) {
      const ErrorCard();
    }

    return SmartRefresher(
      controller: _refreshController,
      enablePullDown: true,
      enablePullUp: false,
      onRefresh: _onRefresh,
      header: const MaterialClassicHeader(),
      child: ListView.separated(
        separatorBuilder: (context, index) =>
            const Divider(height: 1, thickness: 1),
        itemCount: eventStateProvider.events.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () => {},
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                CachedImageCard(
                    imageUrl:
                        "https://smartseas.kr${eventStateProvider.events[index].image}",
                    height: 70,
                    width: 70),
                const Gap(16),
                Expanded(
                    child: Text(
                  eventStateProvider.events[index].name,
                  style: theme.textTheme.h30.bold(),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
