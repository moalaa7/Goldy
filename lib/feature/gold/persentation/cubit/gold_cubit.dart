import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/feature/gold/data/repo/gold_repo.dart';
import 'package:goldy/feature/gold/persentation/cubit/gold_state.dart';

class GoldCubit extends Cubit<GoldState>{
  late GoldRepo goldRepo;
  GoldCubit(this.goldRepo):super(GoldInitialState());
 Future<void>getGold()async {
   emit(GoldLoadingState());

 final res= await goldRepo.gitGold();
res.fold((error) {
emit(GoldErrorState(error));
}, (goldModel) {
emit(GoldSuccessState(goldModel));
},);
 }
    
}