import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:news_app/cubit/cubit.dart';
import 'package:news_app/layout/web_view/web_view_screen.dart';
import 'package:news_app/shared/colors_and_themes/color.dart';

Widget buildArticleItem(article, context) => InkWell(
  onTap: (){
    navigateTo(context, WebViewScreen(article['url']),);
  },
  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Card(
      elevation: 15,
      shadowColor: Colors.teal[200],
      color: Colors.grey[100],
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Container(
              width: 100.0,
              height: 90.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage('${article['urlToImage']}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 20.0),
            Expanded(
              child: Container(
                height: 110.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        '${article['title']}',
                        style: Theme.of(context).textTheme.bodyLarge,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      '${article['publishedAt']}',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ),
);

Widget myDivider() => Padding(
  padding: const EdgeInsets.all(0.0),
  child: SizedBox(height: 0.1,)
);

Widget articleBuilder(list, context) => ConditionalBuilder(
  // condition: list != null && list.isNotEmpty,
  condition: list.length > 0,
  builder: (context) => ListView.separated(
    physics: BouncingScrollPhysics(),
    itemBuilder: (context, index) => buildArticleItem(list[index], context),
    separatorBuilder: (context, index) => myDivider(),
    itemCount: list.length, // Use the length of the list instead of a static number
  ),
  fallback: (context) => Center(child: CircularProgressIndicator(
    color: buttonColor,
  )),
);
Widget defaultFormField({
  required BuildContext context,  // Pass the context here
  required TextEditingController? controller,
  required TextInputType? type,
  void Function(String)? onSubmit,
  void Function(String)? onChange,
  void Function()? onTap,
  bool isPassword = false,
  required Function? validate,
  required String? label,
  required IconData? prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
}) {
  // Get the current theme mode (light or dark)
  // final isDarkMode = MediaQuery.of(context).platformBrightness == Brightness.dark;
  final isDarkMode = NewsCubit.get(context).isDark;

  // Define colors based on the current theme (light or dark)
  Color borderColor = isDarkMode ? Colors.white : Colors.black;
  Color labelColor = isDarkMode ? Colors.white : Colors.black;
  Color textColor = isDarkMode ? Colors.white : Colors.black;

  return TextFormField(
    controller: controller,
    keyboardType: type,
    obscureText: isPassword,
    onFieldSubmitted: onSubmit,
    onTap: onTap,
    onChanged: onChange,
    enabled: isClickable,
    validator: (val) {
      validate;
    },
    style: TextStyle(color: textColor), // Set the input text color based on the theme
    decoration: InputDecoration(
      labelText: label,
      labelStyle: TextStyle(color: labelColor), // Set the label text color based on the theme
      prefixIcon: Icon(prefix, color: borderColor), // Set the color of the prefix icon based on the theme
      suffixIcon: suffix != null
          ? Icon(suffix, color: borderColor) // Set the color of the suffix icon based on the theme
          : null,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: borderColor), // Set border color based on the theme
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: borderColor), // Set focused border color based on the theme
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: borderColor), // Set enabled border color based on the theme
      ),
    ),
  );
}
// Widget defaultFormField({
//   @required TextEditingController? controller,
//   @required TextInputType? type,
//   void Function(String)? onSubmit,
//   void Function(String)? onChange,
//   void Function()? onTap,
//   bool isPassword = false,
//   @required Function? validate,
//   @required String? label,
//   @required IconData? prefix,
//   IconData? suffix,
//   Function? suffixPressed,
//   bool isClickable = true,
// }) => TextFormField(
//   controller: controller,
//   keyboardType: type,
//   obscureText: isPassword,
//   onFieldSubmitted: onSubmit,
//   onTap: onTap,
//   onChanged: onChange,
//   enabled: isClickable,
//   validator: (val){
//     validate;
//   },
//   decoration: InputDecoration(
//     labelText: label,
//     prefixIcon: Icon(prefix),
//     border: OutlineInputBorder(),
//   ),
// );

void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);