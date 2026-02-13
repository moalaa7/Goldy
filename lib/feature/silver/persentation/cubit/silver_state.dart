import 'package:goldy/feature/silver/data/model/silver_model.dart';

abstract class SilverState {

}
class SilverInitialState extends SilverState{}
class SilverErrorState extends SilverState{
  final String error;
  SilverErrorState(this.error);
}
class SilverLoadingState extends SilverState{}
class SilverSuccessState extends SilverState{
  final SilverModel silver;
  SilverSuccessState(this.silver);
}


