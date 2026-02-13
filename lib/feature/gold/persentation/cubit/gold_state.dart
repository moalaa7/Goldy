import 'package:goldy/feature/gold/data/model/gold_model.dart';

abstract class GoldState {

}
class GoldInitialState extends GoldState{}
class GoldErrorState extends GoldState{
  final String error;
  GoldErrorState(this.error);
}
class GoldLoadingState extends GoldState{}
class GoldSuccessState extends GoldState{
  final SilverModel gold;
  GoldSuccessState(this.gold);
}


