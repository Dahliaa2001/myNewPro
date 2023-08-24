import 'package:flutter/material.dart';

class login extends StatelessWidget {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('First app') ,
        leading:Icon(Icons.menu) ,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          Text('Hello!')
        ],
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Login',
              style:
              TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (value){},
              controller:emailController,
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye)
              ),
              keyboardType: TextInputType.visiblePassword,
              onFieldSubmitted: (value){},
              obscureText: true,
              controller: passwordController,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(onPressed:
                  (){},
                child: Text('Submit',
                  style:
                  TextStyle(
                      color:
                      Colors.white,
                      fontSize: 15
                  ),),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account?'),
                TextButton(
                    onPressed:
                        (){},
                    child:
                    Text('Register now')
                )
              ],
            )
          ],

        ),
      ),


    );
  }
}
