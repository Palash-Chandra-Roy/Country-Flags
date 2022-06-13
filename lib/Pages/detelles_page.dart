import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class DetellesPage extends StatelessWidget {
  final String name, region,subregion,image,capital;
  final  population, area;

  DetellesPage({Key ? key ,
    required this.name,
    required this.region,
    required this.subregion,
    required this.image,
    required this.capital,
    required this.area,
    required this.population

  }):super (key: key);

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold (
      appBar: AppBar(
        title: Text('Name',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black12),),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width:double.infinity ,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/bgimage.png'),
              fit: BoxFit.cover,
            ),
            color: Colors.transparent,
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height * 0.03,),
              Container(
                height: size.height *0.35,
                width: size.width *0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: SvgPicture.network(image,
                  height: size.height *0.36,width: size.width *0.9,fit: BoxFit.cover,),
              ),
              SizedBox(height: size.height *0.05,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Country Name :${name}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(height: size.height *0.01,),
                  Text('Country Region:${region}',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
                  SizedBox(height: size.height *0.01,),
                  Text("Country Subregion: ${subregion}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(height: size.height *0.01,),
                  Text("Country Image: ${image}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(height: size.height *0.01,),
                  Text("Country Capital: ${capital}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(height: size.height *0.01,),
                  Text("Country Area: ${area}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(height: size.height *0.01,),
                  Text("Country Population: ${population}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(height: size.height *0.01,),
                ],
              ),)
            ],
          ),
        ),

      ),
    );
  }
}
