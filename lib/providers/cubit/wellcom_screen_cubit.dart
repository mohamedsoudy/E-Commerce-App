import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'wellcom_screen_state.dart';

class WellcomScreenCubit extends Cubit<WellcomScreenState> {
  WellcomScreenCubit() : super(WellcomScreenInitial());
}
