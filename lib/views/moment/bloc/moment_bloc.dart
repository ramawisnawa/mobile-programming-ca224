import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:myapp/models/moment.dart';

part 'moment_event.dart';
part 'moment_state.dart';

class MomentBloc extends Bloc<MomentEvent, MomentState> {
  MomentBloc() : super(MomentLoadingState()) {
    on<MomentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
