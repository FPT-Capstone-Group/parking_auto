import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_auto/Screen/edit_profile.dart';
import 'package:parking_auto/controller/getU_controller.dart';
import 'package:parking_auto/controller/get_current_user.dart';

class GetUPage extends StatelessWidget {
  static const routeNamed = '/getUPageScreen';
  const GetUPage({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: HomePage(),
       home:MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidget();
}


class _MyStatefulWidget extends State<MyStatefulWidget> {
   final user = Get.put(GetUserController());


   @override
  void initState() {
    super.initState();
    GetUController  getU = GetUController();
    getU.getU();
  }


  @override
  Widget build(BuildContext context) {
    //var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
        },
        icon: const Icon(Icons.personal_injury),
        ),
        title: Text("Profile", style: Theme.of(context).textTheme.headline4),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.personal_injury))],
      ),
      body: SingleChildScrollView(
        child: Container(
          //padding: const EdgeInsets.all(double),
          child: Column(
            children: [
                const SizedBox(height: 90),
              /// -- IMAGE
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100), child: Image.asset("assets/image/profile.png",width: 64.0,),),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.green),
                      child: const Icon(
                       Icons.alternate_email,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(user.user?.fullName.toString() ?? "no name", style: Theme.of(context).textTheme.headline4),
              Text(user.user?.username.toString() ?? "no phone", style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: 20),

              /// -- BUTTON
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const EditProFile()),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange, side: BorderSide.none, shape: const StadiumBorder()),
                  child: const Text("Edit", style: TextStyle(color: Color.fromARGB(255, 118, 255, 64))),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),

              /// -- MENU
            
            ],
          ),
        ),
      ),
    );
  }

}
