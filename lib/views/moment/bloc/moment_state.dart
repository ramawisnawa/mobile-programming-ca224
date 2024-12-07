part of 'moment_bloc.dart';

sealed class MomentState extends Equatable {
  const MomentState();

  @override
  List<Object> get props => [];
}

final class MomentLoadingState extends MomentState {}

final class MomentActionState extends MomentState {}

final class MomentGetLoadingState extends MomentLoadingState {}

final class MomentGetSuccessState extends MomentState {
  final List<Moment> moments;
  const MomentGetSuccessState(this.moments);
}

final class MomentGetFailedState extends MomentState {
  final String error;
  const MomentGetFailedState(this.error);
}

// State untuk proses GetById
final class MomentGetByIdLoadingState extends MomentState {}

final class MomentGetByIdSuccessState extends MomentState {
  final Moment moment; // Representasi single Moment.
  const MomentGetByIdSuccessState(this.moment);
}

final class MomentGetByIdFailedState extends MomentState {
  final String error;
  const MomentGetByIdFailedState(this.error);
}