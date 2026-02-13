import 'package:dartz/dartz.dart';
import 'package:goldy/core/api/api_manager.dart';
import 'package:goldy/core/api/end_points.dart';
import 'package:goldy/feature/silver/data/model/silver_model.dart';

class SilverRepo {
  Future<Either<String,SilverModel >> gitGold()async{
    try{
      final res= await ApiManager.getData(endPoint: EndPoints.goldEndpoint);

return Right( SilverModel .fromJson(res.data));
    }
    catch(e){
      return Left(e.toString());
    }

  }


}