import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'Swipe_bloc.dart';
import 'Swipe_state.dart';


class SwipeBloc extends Bloc<SwipeEvent, SwipeState>{
  SwipeBloc() : super(SwipeLoading());



  Stream<SwipeState> mapEventToState(
      SwipeEvent event,
      ) async*{
    if(event is LoadUsersEvent){
      yield* _mapLoadUsersToState(event);
    }
    if(event is SwipeLeftEvent){
      yield* _mapSwipeLeftToState(event, state);
    }
    if(event is SwipeRightEvent){
      yield* _mapSwipeRightToState(event, state);
    }
  }

  Stream<SwipeState> _mapLoadUsersToState(LoadUsersEvent event) async* {
    yield SwipeLoaded(users: event.users);
  }

  Stream<SwipeState> _mapSwipeLeftToState(SwipeLeftEvent event, SwipeState state) async* {

    if(state is SwipeLoaded){
      try{
        yield  SwipeLoaded(users: List.from(state.users)..remove(event.user));
      }catch(e){}
    }
  }

  Stream<SwipeState> _mapSwipeRightToState(SwipeRightEvent event, SwipeState state) async* {

    if(state is SwipeLoaded){
      try{
        yield  SwipeLoaded(users: List.from(state.users)..remove(event.user));
      }catch(e){}
    }
  }

}