import 'package:flutter/material.dart';
import 'package:food_order/controllers/profile_controller.dart';
import 'package:food_order/screens/customer_screen/profile/widget/card_setting_widget.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://img.magnific.com/free-photo/emotions-people-concept-headshot-serious-looking-handsome-man-with-beard-looking-confident-determined_1258-26730.jpg?semt=ais_hybrid&w=740&q=80"),
                  radius: 50,
                ),
                SizedBox(height: 20,),
                Text("Alex Johnson", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Text("alex.johnson@example.com", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  ),
                  onPressed: (){},
                  icon: Icon(Icons.edit),
                  label: Text("Edit Profile")),
                
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Setting",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                  )
                ),
                 SizedBox(height: 5),
        
                CardSettingWidget(
                  icon:  Icons.map_outlined,
                  title:  "Saved Address",
                  iconRight: Icons.arrow_forward_ios
                ),
                CardSettingWidget(
                  icon:  Icons.key_outlined,
                  title:  "Change Password",
                  iconRight: Icons.arrow_forward_ios
                ),
                CardSettingWidget(
                  icon:  Icons.language,
                  title:  "Change Language",
                  iconRight: Icons.arrow_forward_ios
                ),
                CardSettingWidget(
                  icon: Icons.payment,
                  title: "Payment Methods",
                  iconRight: Icons.arrow_forward_ios
                ),
                CardSettingWidget(
                  icon: Icons.notifications,
                  title:  "Notifications",
                  iconRight: Icons.arrow_forward_ios
                ),
                CardSettingWidget(
                  icon: Icons.help,
                  title: "Help Center",
                  iconRight: Icons.arrow_forward_ios
                ),
        
                SizedBox(height: 15),
        
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    ),
                    onPressed: (){
                      controller.onLogout();
                    },
                    icon: Icon(Icons.logout),
                    label: Text("Logout")),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}