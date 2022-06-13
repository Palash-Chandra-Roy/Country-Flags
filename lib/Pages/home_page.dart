import 'package:country_flags/Controller/api_controller.dart';
import 'package:country_flags/Pages/detelles_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:http/http.dart' as http;


class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

  //ApiController controller =Get.put(ApiController());
   ApiController controller =Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
         title: Text("Country Detellles ",),
      ),
      body: SafeArea(
        child:Obx((){
          if(controller.isCountryLoading.value){
            return Center(
              child: CircularProgressIndicator(),
            );
          }else {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    onChanged: (value)=> controller.filtering(value),
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: const TextStyle(fontSize: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none),
                      ),
                      filled: true,
                      fillColor: Colors.grey[400],
                      contentPadding: const EdgeInsets.only(left: 16),
                      suffixIcon: const CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 20,
                        child: Icon(Icons.search,
                          color: Colors.white,),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                      itemCount: controller.countryfilter.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(10),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(
                                  DetellesPage(
                                      name: controller.countryfilter[index].region.toString(),
                                      region: controller.countryfilter[index].region.toString(),
                                      subregion: controller.countryfilter[index].subregion.toString(),
                                      image: controller.countryfilter[index].flag.toString(),
                                      capital: controller.countryfilter[index].capital.toString(),
                                      area: controller.countryfilter[index].area.toInt(),
                                      population: controller.countryfilter[index].population.toInt())
                                );
                              },
                              child: Container(
                                height: size.height * 0.09,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(12)),
                                    color: Colors.grey),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      height: size.height * 0.08,
                                      width: size.width * 0.25,
                                       child:SvgPicture.network(
                                           controller.countryfilter[index].flag.toString()) ,

                                    ),
                                    SizedBox(
                                      width: size.width *0.05,
                                    ),
                                    Flexible(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(controller.countryfilter[index].name.toString(),
                                              style: const TextStyle(fontSize: 18,
                                                  overflow: TextOverflow.ellipsis,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),)
                                          ],
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                ),
              ],
            );
          }}),
       ),
    );
  }
}
