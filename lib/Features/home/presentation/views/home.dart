import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/Core/resourse/color_manager.dart';
import 'package:flutter_task/Core/resourse/font_manager.dart';
import 'package:flutter_task/Features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:flutter_task/Features/home/presentation/views/widgets/home_banner.dart';
import 'package:flutter_task/Features/home/presentation/views/widgets/home_list_view_builder.dart';

import '../../../../Core/functions/loading_page.dart';
import '../../../../Core/functions/toast.dart';
import '../../../../Core/resourse/strings_manager.dart';
import '../../../../Core/resourse/style_manager.dart';
import '../../../../Core/resourse/widgets/background_color.dart';
import '../cotroller/products_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsCubit, ProductsState>(
      listener: (context, state) {
        //loading
        if (state is ProductsLoadingState) {
          loadingPage(context: context);
        }
        //success
        if (state is ProductsSuccessState) {
          print(state.productsData);
          myToast(state: 'Success!', toastState: ToastState.success);
        }
        if (state is ProductsErrorState) {
          //print(state.error);
          myToast(state: state.error, toastState: ToastState.error);
        }
      },
      builder: (context, state) {
        ProductsCubit cubit = ProductsCubit.get(context);
        return Scaffold(
          body: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: customDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const HomeAppBar(),
                    const HomeBanner(),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 35.0, right: 17, top: 10),
                      child: Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Text(
                                  AppStrings.recommendedString,
                                  style: getRegularStyle(
                                    color: ColorManager.darkGray,
                                    fontSize: FontSize.s30,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              HomeListViewBuilder(
                                list: cubit.productsData,
                              )
                            ],
                          )),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: HomeListViewBuilder(
                              list: cubit.productsData,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
