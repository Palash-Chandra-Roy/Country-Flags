

import 'package:country_flags/Service/remote_service.dart';
import 'package:get/get.dart';
import '../Model/country_model.dart';

class ApiController extends GetxController{

  var countrylist=<Welcome>[].obs;
  var isCountryLoading=false.obs;

  var countryfilter=<Welcome>[].obs;


  @override
  void onInit(){
    countryfilter.value=countrylist;
    fatchcountry();
    super.onInit();
  }

  fatchcountry()async{
    isCountryLoading(true);
    try{
      var data =await RemoteService.fatchdata();
      print(data);
      if(data!=null){
        countrylist.value=data;
      }
      isCountryLoading(false);
    }catch(e){
      print('problem $e');
      Get.snackbar("Get problem", 'Problem ');
      isCountryLoading(false);

    }
  }

  void filtering(String value){
    List<Welcome> result =<Welcome>[].obs;
    if(value.isEmpty){
      result =countrylist;
    }else{
      result =countrylist.where((element) =>
          element.name.toString()
              .toLowerCase()
              .contains(value.toLowerCase()))
          .toList();
    }
    countryfilter.value=result;
  }

}