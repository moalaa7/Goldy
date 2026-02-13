import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:goldy/feature/silver/data/model/silver_model.dart';
 import 'package:goldy/feature/silver/data/repo/silver_repo.dart';
 import 'package:goldy/feature/silver/persentation/cubit/silver_state.dart';
import 'package:goldy/feature/gold/persentation/cubit/gold_state.dart';

class SilverCubit extends Cubit<SilverState>{
  late SilverRepo silverRepo;
  SilverCubit(this.silverRepo):super(SilverInitialState());
 Future<void>getSilver()async {
   emit(SilverLoadingState());

 final res= await silverRepo.gitGold();
res.fold((error) {
emit(SilverErrorState(error));
}, (SilverModel) {
emit(SilverSuccessState(SilverModel));
},);
 }
    
}