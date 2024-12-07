part of 'moment_bloc.dart';

sealed class MomentEvent extends Equatable {
  const MomentEvent();

  @override
  List<Object> get props => [];
}

final class MomentGetEvent extends MomentEvent {}

final class MomentGetByIdEvent extends MomentEvent {
  final String momentId;
  const MomentGetByIdEvent(this.momentId);
}

final class MomentAddEvent extends MomentEvent {
  final Moment newMoment;
  const MomentAddEvent(this.newMoment);
}

final class MomentUpdateEvent extends MomentEvent {
  final Moment updateMoment;
  const MomentUpdateEvent(this.updateMoment);
}

final class MomentDeleteEvent extends MomentEvent {
  final String momentId;
  const MomentDeleteEvent(this.momentId);
}