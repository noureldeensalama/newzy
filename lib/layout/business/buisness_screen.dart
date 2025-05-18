// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:news_app/Network/Remote/components.dart';
// import 'package:news_app/cubit/cubit.dart';
// import 'package:news_app/cubit/states.dart';
//
// // Assuming you have articleBuilder and myDivider functions defined
//
// class BusinessScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<NewsCubit, NewsStates>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         return FutureBuilder<void>(
//           future: context.read<NewsCubit>().getBusiness(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return Center(child: CircularProgressIndicator());
//             } else if (snapshot.hasError) {
//               return Center(child: Text('Error: ${snapshot.error}'));
//             } else {
//               final businessData = context.watch<NewsCubit>().business;
//               // Check if the list is empty before calling articleBuilder
//               if (businessData.isNotEmpty) {
//                 return articleBuilder(businessData, context);
//               } else {
//                 return Center(child: Text('No data available')); // Or any other widget
//               }
//             }
//           },
//         );
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/shared/components.dart';
import 'package:news_app/cubit/cubit.dart';
import 'package:news_app/cubit/states.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state){},
      builder: (context, state){

        var list = NewsCubit.get(context).business;

        return articleBuilder(list, context);
      },
    );
  }
}
