import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/project.dart';
import 'package:url_launcher/url_launcher.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> Skills = [
    "C++",
    "Java",
    "Flutter",
    "Dart",
    "HTML",
    "CSS",
    "Javascript"
    "Github",
    "FireBase",

  ];
  @override
  Widget build(BuildContext context) {
    iconB(url,icons){
      return Container(
        child: InkWell(onTap: ()async{
          String urlString=url;
          Uri uri=Uri.parse(urlString);
          await launchUrl(uri);
        }, child: ClipOval(child: Image.asset(icons , fit: BoxFit.cover,height: 50,width: 50,), ),),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),

      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyHomePage()));
            }, child: const Text('Home')),
            const SizedBox(height: 10,),
            OutlinedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Projects()));
            }, child: const Text('Project')),
            const SizedBox(height: 10,),
            OutlinedButton(onPressed: (){}, child: const Text('Internship')),
            const SizedBox(height: 10,),
            OutlinedButton(onPressed: (){
              SystemNavigator.pop(); //for Android from flutter/services.dart
            }, child: const Text("Exit App")),
            const SizedBox(height: 10,),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Row(
                  children: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.blue,
                    ),
                  ],
                ),
                Padding(padding: const EdgeInsets.only(top: 80.0,right: 15.0,left: 15.0,bottom: 10.0),
                  child: ClipOval(
                    child: Image.asset('assets/img.png',fit: BoxFit.cover,height: 150,width: 140,),),
                ),
                Positioned(
                  top: 90,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      iconB('https://www.linkedin.com/in/ashut0shrai/', 'assets/linkdn.png'),
                      const SizedBox(width: 10,),
                      iconB('https://leetcode.com/ashutoshrai126/', 'assets/leetcode.png'),
                      const SizedBox(width: 10,),
                      iconB('https://www.hackerrank.com/ashutoshrai441?hr_r=1', 'assets/hackerrank.png'),
                      const SizedBox(width: 10,),

                    ],
                  ),
                )
              ],

            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20,left: 20,bottom: 5),
                      child: Text('Ashutosh Rai' ,
                        style: TextStyle( fontSize: 24 , fontWeight: FontWeight.bold),),
                    ),

                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 5,left: 20 ),
                child: Text('CSE Undergraduate || C++ || Java ||  Flutter || Frontend developer(Web & App) || DSA  '),),
                Divider(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Text('About' , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),

                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Text('Computer Science Student, ready to pursue a challenging career and be part of a progressive organization that gives scope to enhance knowledge, skills, and reach the pinnacle' , style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const Text("Education" , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, ),),
                  Card(
                    elevation: 12,
                    child: const Row(
                      children: [
                        Text('Sarala Birla University,Ara' , style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18, color: Colors.deepOrange),),
                        SizedBox(width: 15,),
                        Text('10th',),
                        SizedBox(width: 10,),
                        Text('9.0 GCPA')
                      ],
                    ),
                  ),

                  Card(
                    elevation: 12,
                    child: const Row(
                      children: [
                        Text('Army Public School,Ranchi' , style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18, color: Colors.deepOrange),),
                        SizedBox(width: 10,),
                        Text('12th',),
                        SizedBox(width: 10,),
                        Text('82.60 %'),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 12,
                    child: const Row(

                      children: [
                        Text('Army Public School,Ranchi' , style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18, color: Colors.deepOrange),),
                        SizedBox(width: 10,),
                        Text('10th',),
                        SizedBox(width: 10,),
                        Text('9.0 GCPA')
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 10,
                  ),
                  const SizedBox(height: 10,),
                  const Text('Skills' , style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),),


                  Row(
                    children: [
                      Card(elevation : 10,child: Text(Skills[0], style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18),)),
                      const SizedBox(width: 10,),
                      Card(elevation : 10,child: Text(Skills[1], style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18))),
                      const SizedBox(width: 10,),
                      Card(elevation : 10,child: Text(Skills[2], style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18))),
                      const SizedBox(width: 10,),
                      Card(elevation : 10,child: Text(Skills[3], style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18))),
                      const SizedBox(width: 10,),
                      Card(elevation : 10,child: Text(Skills[4], style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18))),
                      const SizedBox(width: 10,),
                      Card(elevation : 10,child: Text(Skills[5], style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18),)),
                    ],
                  ),
                  Row(
                    children: [
                      Card(elevation : 10, child: Text(Skills[6], style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18),)),
                      Card(elevation : 10, child: Text(Skills[7], style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18),)),
                      Card(elevation : 10,  child: Text('Github', style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18),)),

                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    height: 10,
                  ),
                  const SizedBox(height: 10,),
                  const Text("Certificates", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  Card(
                    elevation: 10,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("100 Days of Coding" , style: TextStyle(fontSize: 16),),
                      Text("Flutter" , style: TextStyle(fontSize: 16),),
                      Text("Java (Basic)" , style: TextStyle(fontSize: 16),),
                      Text("C++" , style: TextStyle(fontSize: 16),),
                      Text("OOPs in C++" , style: TextStyle(fontSize: 16),),
                        Text("HTML" , style: TextStyle(fontSize: 16),),
                        Text("CSS" , style: TextStyle(fontSize: 16),),
                        Text("JavaScript" , style: TextStyle(fontSize: 16),),


                      ],),
                  )
                ],
              ),

            ),

          ],
        ),
      ),
    );
  }
}
