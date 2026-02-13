import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/utils/App_strings.dart';
import 'package:goldy/core/utils/app_colors.dart';
import 'package:goldy/feature/silver/data/repo/silver_repo.dart';
import 'package:goldy/feature/silver/persentation/cubit/silver_cubit.dart';
import 'package:goldy/feature/silver/persentation/cubit/silver_state.dart';


class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SilverCubit(SilverRepo() )..getSilver() ,
      child: Scaffold(
          backgroundColor: AppColors.blackColor,
          appBar: AppBar(
              backgroundColor: AppColors.blackColor,
              elevation: 0,
              centerTitle: true,

              title: Text(AppStrings.silver, style: TextStyle(
                  color: AppColors.silverColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),)
          ),
          body: BlocBuilder<SilverCubit,SilverState>(
            builder:(context, state) {
              if(state is SilverSuccessState){

                return Center(

                  child: Text('${state.silver.price} USD' ,style: TextStyle(
                      color: AppColors.silverColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),),

                );
              }else if(state is SilverErrorState){
                return Center(child: Text(state.error, style: TextStyle(color: AppColors.whiteColor),),);
              }else{

                return Center(child: CircularProgressIndicator(),);
}
            } ,

          )
      ),
    );
  }
}
