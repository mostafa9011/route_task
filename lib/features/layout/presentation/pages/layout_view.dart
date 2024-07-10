import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/features/layout/presentation/cubit/layout_cubit.dart';
import '../../../../core/utils/constants.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LayoutCubit>(
      create: (context) => LayoutCubit(),
      child: BlocBuilder<LayoutCubit, LayoutState>(
        builder: (context, state) {
          var cubit = LayoutCubit.get(context);
          return Scaffold(
            body: cubit.widgets[cubit.currentIndex],
            bottomNavigationBar: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: BottomNavigationBar(
                currentIndex: cubit.currentIndex,
                onTap: cubit.changeBottomNavBarIndex,
                items: [
                  BottomNavigationBarItem(
                    icon: CircleAvatar(
                      backgroundColor: cubit.currentIndex == 0
                          ? Colors.white
                          : Colors.transparent,
                      child: ImageIcon(
                        const AssetImage('assets/images/home_icn.png'),
                        color: cubit.currentIndex == 0
                            ? Constants.primaryColor
                            : Colors.white,
                      ),
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: CircleAvatar(
                      backgroundColor: cubit.currentIndex == 1
                          ? Colors.white
                          : Colors.transparent,
                      child: ImageIcon(
                        const AssetImage('assets/images/category_icn.png'),
                        color: cubit.currentIndex == 1
                            ? Constants.primaryColor
                            : Colors.white,
                      ),
                    ),
                    label: "Category",
                  ),
                  BottomNavigationBarItem(
                    icon: CircleAvatar(
                      backgroundColor: cubit.currentIndex == 2
                          ? Colors.white
                          : Colors.transparent,
                      child: ImageIcon(
                        const AssetImage('assets/images/favorite_icn.png'),
                        color: cubit.currentIndex == 2
                            ? Constants.primaryColor
                            : Colors.white,
                      ),
                    ),
                    label: "Favorite",
                  ),
                  BottomNavigationBarItem(
                    icon: CircleAvatar(
                      backgroundColor: cubit.currentIndex == 3
                          ? Colors.white
                          : Colors.transparent,
                      child: ImageIcon(
                        const AssetImage('assets/images/person_icn.png'),
                        color: cubit.currentIndex == 3
                            ? Constants.primaryColor
                            : Colors.white,
                      ),
                    ),
                    label: "Profile",
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
