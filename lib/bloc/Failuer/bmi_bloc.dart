// import 'package:bloc/bloc.dart';
// import 'package:bmi_calculator/bloc/bmi_event.dart';
// import 'package:bmi_calculator/bloc/bmi_states.dart';
// import 'package:bmi_calculator/models/bmi_model.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class BmiBloc extends Cubit<BmiStates> {
//   BmiBloc() : super(BmiInitial());
//   static BmiBloc get(context) => BlocProvider.of(context);
//   Stream<BmiStates> mapEventToState(BmiEvent event) async* {
//     BMIModel bmiModel;
//     // ignore: unnecessary_type_check
//     if (event is BmiEvent) {
//       double result = event.width /
//           (event.height / 100 * event.height / 100);
//       if (result >= 18.5 && result <= 24.9) {
//         bmiModel =
//             BMIModel(result, true, 'You have a normal weight. Good job!',);
//       } else if (result < 18.5) {
//         bmiModel = BMIModel(
//           result, false, 'You are underweight. You need to gain some weight.',);
//       } else if (result > 24.9 && result <= 30) {
//         bmiModel = BMIModel(
//           result, false, 'You are overweight. You need to lose some weight.',);
//       } else {
//         bmiModel = BMIModel(
//           result, false, 'You are obese. You need to lose some weight.',);
//       }
//       print("HERE");
//         yield BmiResult(bmiModel: bmiModel);
//     }
//   }
//   add(BmiEvent event) => dispatch(event);
//
//   dispatch(BmiEvent event) {
//     mapEventToState(event);
//   }
// }