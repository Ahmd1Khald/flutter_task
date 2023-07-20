import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/Features/help/presentation/veiws/widgets/custom_item.dart';
import 'package:flutter_task/Features/help/presentation/veiws/widgets/help_button.dart';
import 'package:flutter_task/Features/help/presentation/veiws/widgets/help_title.dart';

import '../../../../Core/functions/loading_page.dart';
import '../../../../Core/functions/toast.dart';
import '../../../../Core/resourse/color_manager.dart';
import '../../../../Core/resourse/routes_manager.dart';
import '../../../../Core/resourse/widgets/background_color.dart';
import '../cotroller/help_cubit.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HelpCubit, HelpState>(
      listener: (context, state) {
        //help
        if (state is HelpLoadingState) {
          loadingPage(context: context);
        }
        if (state is HelpSuccessState) {
          print(state.helpData);
          //Navigator.pop(context);
          myToast(state: 'Success', toastState: ToastState.success);
        }
        if (state is HelpErrorState) {
          //print(state.error);
          myToast(state: state.error, toastState: ToastState.error);
          //Navigator.pop(context);
        }
      },
      builder: (context, state) {
        HelpCubit cubit = HelpCubit.get(context);
        return Scaffold(
          backgroundColor: ColorManager.colorGradient1.withOpacity(0.8),
          body: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: customDecoration(),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const HelpTitle(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: ListView.separated(
                          itemBuilder: (context, index) => CustomContainer(
                            title: cubit.helpData?[index].question ?? '',
                            description: cubit.helpData![index].answer ?? '',
                          ),
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 20,
                          ),
                          itemCount: cubit.helpData?.length ?? 0,
                        ),
                      ),
                      HelpButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.homeRoute);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
