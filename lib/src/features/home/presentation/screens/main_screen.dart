import 'package:easy_localization/easy_localization.dart';
import 'package:emergency/generated/assets.dart';
import 'package:emergency/src/core/constants/app_constants.dart';
import 'package:emergency/src/core/helpers/base_extensions/context/padding.dart';
import 'package:emergency/src/features/home/presentation/widgets/clinic_model.dart';
import 'package:emergency/src/features/home/presentation/widgets/popular_nursing_service.dart';
import 'package:emergency/src/features/home/presentation/widgets/search_text_field.dart';
import 'package:emergency/src/features/home/presentation/widgets/titile_and_show_more.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import '../../../../core/helpers/app_widgets/error_builder/screen.dart';
import '../../../../core/helpers/base_widgets/text.dart';
import '../blocs/home/cubit.dart';
import '../blocs/home/state.dart';
import '../widgets/emergency_service.dart';
import '../widgets/services.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
          create: (context) => GetIt.instance.get<HomeCubit>(),
          child: _HomeImpl()
      ),
    );
  }
}

class _HomeImpl extends StatelessWidget {
  _HomeImpl({super.key});

  List<PopularNursingService> services = [
    PopularNursingService(
      text: 'تغيير جروح'.tr(),
      img: Assets.imagesPain
    ),
    PopularNursingService(
        text: 'اخد حقن'.tr(),
        img: Assets.imagesSyringe
    ),
    PopularNursingService(
        text: 'قياس الحرارة'.tr(),
        img: Assets.imagesTemp
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.appColor,
      appBar: AppBar(
        backgroundColor: Constants.appColor,
        leading: Padding(
          padding: context.horizontalSymmetricPadding(12.w),
          child: CircleAvatar(
              radius: 40.sp,
              backgroundImage: const NetworkImage('https://tse2.mm.bing.net/th?id=OIP._MQ6SWfTpvkdgFaCa1u6lgHaHa&pid=Api&P=0&h=220'),
          ),
        ),
        title: AppText(text: 'مرحبا منة'.tr()),
        actions: [
          Padding(
            padding: context.horizontalSymmetricPadding(12.w),
            child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                        Icons.notifications,
                      color: Constants.appColor,
                    )
                )
            ),
          )
        ],
      ),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            switch (state.currentState) {
              case States.homeDataLoading:
                return const Center(child: CircularProgressIndicator());

              case States.homeDataError:
                return ErrorBuilder(
                    msg: state.errorMsg!,
                    onPressed: () => context.read<HomeCubit>().getHomeData()
                );
              default:
                return ListView(
                  children: [
                    Padding(
                      padding: context.allPadding(20),
                      child: SearchTextField(),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: context.verticalSymmetricPadding(120.h),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(25.r)),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: context.allPadding(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 80.h,
                                  ),
                                  AppText(
                                    text: 'الخدمات'.tr(),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Services(
                                    service: 'خدمة تمريض'.tr(),
                                    subTitle: 'اختار الخدمة اللى محتاجها  والممرض هيجيلك لحد البيت.'.tr(),
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                    height: 16.h,
                                  ),
                                  Services(
                                    service: 'حجز عيادة'.tr(),
                                    subTitle: 'اختار التخصص والدكتور اللى يناسبك فالوقت المتاح ليك.'.tr(),
                                    onPressed: () {},
                                  ),
                                  TitleAndShowMore(
                                      title: 'خدمات التمريض الشائعة'.tr(),
                                      onTap: () {},
                                  ),
                                  Column(
                                    children: List.generate(
                                      services.length,
                                          (index) => services[index],
                                    ),
                                  ),
                                  TitleAndShowMore(
                                    title: 'العيادات الشائعة'.tr(),
                                    onTap: () {},
                                  ),
                                  const ClinicModel(),
                                  const ClinicModel(),
                                  const ClinicModel(),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: context.horizontalSymmetricPadding(30.w),
                          child: const EmergencyService(),
                        ),
                      ],
                    ),
                  ],
                );
            }
          },
        )
    );
  }
}