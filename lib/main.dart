import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Booking System',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _numberController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Column(
          children: [
            Text('Doctor Booking System',style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),),

          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
         children: [
           //Number
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: TextField(
               controller: _numberController,
               keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                     filled: false,
                     fillColor: Colors.orange.shade300,
                     hintText: "Enter your Number",
                     hintStyle: TextStyle(fontSize: 15,color: Colors.green),
                     hintMaxLines: 2,
                     labelText: 'Number',
                     labelStyle: TextStyle(
                       fontSize: 20,
                       color: Colors.orange,
                       fontWeight: FontWeight.bold,
                     ),
                     helperText: 'Please enter your Number',
                     helperStyle: TextStyle( fontSize: 15,color: Colors.green),
                     helperMaxLines: 2,
                     // prefixText: 'Email: ',
                     //  suffixText: "@gmail.com"

                     prefixIcon: Icon(Icons.call),
                     suffixIcon: Icon(Icons.send),
                     // border: InputBorder.none
                     border: OutlineInputBorder(
                       // borderRadius: BorderRadius.circular(10)
                         borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                         borderSide: BorderSide(color: Colors.blue,width: 5)
                     ),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide(color: Colors.blue,width: 5)

                     )
                 )
             ),
           ),
            //Email
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: TextField(
               controller: _emailController,
               keyboardType: TextInputType.emailAddress,
               decoration: InputDecoration(
                 filled: true,
                 fillColor: Colors.orange.shade300,
                 hintText: "Enter your Email",
                 hintStyle: TextStyle(fontSize: 15,color: Colors.green),
                 hintMaxLines: 2,
                 labelText: 'Email',
                 labelStyle: TextStyle(
                   fontSize: 20,
                   color: Colors.orange,
                   fontWeight: FontWeight.bold,
                 ),
                 helperText: 'Please enter your email',
                 helperStyle: TextStyle( fontSize: 15,color: Colors.red),
                 helperMaxLines: 2,
                // prefixText: 'Email: ',
                //  suffixText: "@gmail.com"

                 prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.send),
                 // border: InputBorder.none
                 border: OutlineInputBorder(
                   // borderRadius: BorderRadius.circular(10)
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                   borderSide: BorderSide(color: Colors.blue,width: 5)
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                   borderSide: BorderSide(color: Colors.blue,width: 5)

                 )
               )
               ),
             ),
            //Password
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: TextField(
               controller: _passwordController,
                 keyboardType: TextInputType.visiblePassword,
                 obscureText: true,
                 decoration: InputDecoration(
                     filled: false,
                     fillColor: Colors.orange.shade300,
                     hintText: "Enter your Password",
                     hintStyle: TextStyle(fontSize: 15,color: Colors.green),
                     hintMaxLines: 2,
                     labelText: 'Password',
                     labelStyle: TextStyle(
                       fontSize: 20,
                       color: Colors.orange,
                       fontWeight: FontWeight.bold,
                     ),
                     helperText: 'Please enter your Password',
                     helperStyle: TextStyle( fontSize: 15,color: Colors.red),
                     helperMaxLines: 2,
                     // prefixText: 'Email: ',
                     //  suffixText: "@gmail.com"

                     prefixIcon: Icon(Icons.email),
                     suffixIcon: Icon(Icons.send),
                     // border: InputBorder.none
                     border: OutlineInputBorder(
                       // borderRadius: BorderRadius.circular(10)
                         borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                         borderSide: BorderSide(color: Colors.blue,width: 5)
                     ),
                        enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide(color: Colors.blue,width: 5)

                     )
                 )
             ),
           ),


           ElevatedButton(onPressed: (){
             print(_numberController.text);
             print(_emailController.text);
             print(_passwordController.text);
           }, child: Text("Submit",style: TextStyle(fontSize: 25,color: Colors.green),)),
           ElevatedButton(onPressed: (){
             _numberController.clear();
             _emailController.clear();
             _passwordController.clear();
           }, child: Text("Clear",style: TextStyle(
             fontSize: 25,
             color: Colors.green,
           ),)),
           Text("This is Text 1"),
           Divider(color: Colors.green,),
           Text("This is text 2"),


           ListTile(
             title: Text("Santo Rasu"),
             subtitle: Text("Software Engineering"),
             leading: Icon(Icons.account_circle,size: 50,),
             trailing: Icon(Icons.send),
             onTap: (){
               print("ListTile Clicked");

             },
           ),

          SizedBox(
            height: 250,
            child:  ListView.builder(
              itemCount: 15,
              itemBuilder: (context,index){
                return ListTile(
                  title: Text("Santo Rasu"),
                  subtitle: Text("Software Engineering"),
                  leading: Icon(Icons.account_circle,size: 50,),
                  trailing: Icon(Icons.send),
                  onTap: (){
                    print("ListTile Clicked");

                  },
                );
              }),)
         ],

        ),
      ),
    );
  }
}



