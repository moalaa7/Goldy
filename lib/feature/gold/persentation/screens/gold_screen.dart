import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/utils/App_strings.dart';
import 'package:goldy/core/utils/app_colors.dart';
import 'package:goldy/feature/gold/data/repo/gold_repo.dart';
import 'package:goldy/feature/gold/persentation/cubit/gold_cubit.dart';
import 'package:goldy/feature/gold/persentation/cubit/gold_state.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoldCubit(GoldRepo() )..getGold() ,
      child: Scaffold(
          backgroundColor: AppColors.blackColor,
          appBar: AppBar(
              backgroundColor: AppColors.blackColor,
              elevation: 0,
              centerTitle: true,

              title: Text(AppStrings.gold, style: TextStyle(
                  color: AppColors.goldColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),)
          ),
          body: BlocBuilder<GoldCubit,GoldState>(
            builder:(context, state) {
              if(state is GoldSuccessState){

                return Center(

                  child: Text('${state.gold.price} USD' ,style: TextStyle(  color: AppColors.goldColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),),

                );
              }else if(state is GoldErrorState){
                return Center(child: Text(state.error),);
              }else{

                return Center(child: CircularProgressIndicator(),);
}
            } ,

          )
      ),
    );
  }
}
