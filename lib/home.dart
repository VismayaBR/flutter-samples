import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:  Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // child: Image.network('https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg',fit: BoxFit.fill,),
              child: CircleAvatar(backgroundImage: NetworkImage('https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg')),
              height: 100,width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.black,
            ),
            ),
            Text('Sign Up',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Container(
              color: const Color.fromARGB(255, 186, 224, 255),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: InputBorder.none
                ),
                ),
            ),
            SizedBox(height: 20,),
             Container(
              color: const Color.fromARGB(255, 186, 224, 255),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Mobile',
                  border: InputBorder.none
                ),
                ),
            ),
            SizedBox(height: 20,),
             Row(
               children: [
                 Container(
                  width: 60,
                  height: 50,
                  color: const Color.fromARGB(255, 186, 224, 255),
                  child: Center(child: Text('+91')),
                  
                             ),
                             SizedBox(width: 20,),
              Container(
                width: 200,
              color: const Color.fromARGB(255, 186, 224, 255),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: InputBorder.none
                ),
                ),
            ),
                             
               ],
             ),
            SizedBox(height: 20,),
            Container(
              color: const Color.fromARGB(255, 186, 224, 255),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: InputBorder.none
                ),
                ),
            ),

             SizedBox(height: 20,),
            InkWell(
              onTap: (){
                print('clicked');
              },
              child: Container(
                child: Center(child: Text('Sign Up',style: TextStyle(color: Colors.white),)),
                height: 50,width: double.infinity,color: const Color.fromARGB(255, 0, 51, 92),
                ),
            )
          ],
        ),
      )
        
    );
  }
}