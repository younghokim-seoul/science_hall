//
// import 'package:arc/arc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:science_hall/di_container.dart';
// import 'package:science_hall/presentation/main/main_view_model.dart';
//
//
// class MainPage extends ConsumerWidget {
//   const MainPage({Key? key}) : super(key: key);
//
//   @override
//   State<MainPage> createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//
//   var homeViewModel = it<MainViewModel>();
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       extendBody: true,
//       key: _scaffoldKey,
//       body: buildScaffoldBody(),
//       bottomNavigationBar: buildBottomNavigationBar(),
//     );
//   }
//
//   Container buildScaffoldBody() {
//     return Container(
//       child: homeViewModel.tabState.ui(builder: (context, tab) {
//         if (!tab.hasData || tab.data.isNullOrEmpty) return Container();
//         switch (tab.data) {
//           case BottomTabViewState.home:
//             return Container();
//           case BottomTabViewState.event:
//           default:
//             return Container();
//         }
//       }),
//     );
//   }
//
//   BottomAppBar buildBottomNavigationBar() {
//     return  BottomAppBar(
//       color: Colors.white,
//       notchMargin: 10,
//       elevation: 0,
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(30), topLeft: Radius.circular(30)),
//           boxShadow: [
//             BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
//           ],
//         ),
//         height: 60,
//         child: ClipRRect(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(30.0),
//             topRight: Radius.circular(30.0),
//           ),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               // section: home
//               Expanded(
//                 child: InkWell(
//                     onTap: (){
//
//                     },
//                     child: const Center(
//                       child: Text("HOME"),
//                     )),
//               ),
//               Container(
//                 width: 1,
//                 color: const Color(0xffaaaaaa),
//               ),
//               // section: my
//               Expanded(
//                 child: InkWell(
//                   onTap: (){
//
//                   },
//                   child: const Center(
//                     child: Text("MY"),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         )
//       ),
//     );
//   }
// }

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:science_hall/gen/assets.gen.dart';
import 'package:science_hall/presentation/theme/app_theme.dart';
import 'package:science_hall/route/app_route.dart';

class MainPage extends ConsumerWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        LocationRoute(),
        PreViewRoute(),
        EventRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: theme.appColors.accent,
          currentIndex: tabsRouter.activeIndex,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              icon: Assets.svgs.nav01.svg(
                width: 28,
                color: tabsRouter.current.name == HomeRoute.name
                    ? theme.appColors.accent
                    : theme.appColors.disabled,
              ),
              label: "홈",
            ),
            BottomNavigationBarItem(
              icon: Assets.svgs.nav02.svg(
                width: 28,
                color: tabsRouter.current.name == LocationRoute.name
                    ? theme.appColors.accent
                    : theme.appColors.disabled,
              ),
              label: "현재위치",
            ),
            BottomNavigationBarItem(
              icon: Assets.svgs.nav03.svg(
                width: 28,
                color: tabsRouter.current.name == PreViewRoute.name
                    ? theme.appColors.accent
                    : theme.appColors.disabled,
              ),
              label: "관람",
            ),
            BottomNavigationBarItem(
              icon: Assets.svgs.nav04.svg(
                width: 28,
                color: tabsRouter.current.name == EventRoute.name
                    ? theme.appColors.accent
                    : theme.appColors.disabled,
              ),
              label: "이벤트",
            ),
          ],
        );
      },
    );
  }
}
