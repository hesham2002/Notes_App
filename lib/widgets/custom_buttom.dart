import 'package:flutter/material.dart';


class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.onTap,this.isLoading=false});

 final dynamic Function()? onTap;
 final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onTap,
      child:Container(
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(10),
        ),

        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: isLoading ? SizedBox(
              height: 25,
              width: 25,
              child: CircularProgressIndicator(
                color: Colors.white,

              ),
            ) : Text(
              'add',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
        ),
      ),

    );
  }
}
