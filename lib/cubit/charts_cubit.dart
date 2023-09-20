import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'charts_state.dart';

class ChartsCubit extends Cubit<ChartsState> {
  ChartsCubit() : super(ChartsInitial());
}
