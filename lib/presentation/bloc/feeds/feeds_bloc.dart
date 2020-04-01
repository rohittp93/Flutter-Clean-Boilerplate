import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:fluttercleanboilerplate/domain/use_cases/get_headlines.dart';
import './bloc.dart';
import 'package:meta/meta.dart';

class FeedsBloc extends Bloc<FeedsEvent, FeedsState> {

  final GetHeadlines getHeadlines;

  FeedsBloc({@required this.getHeadlines});

  @override
  FeedsState get initialState => InitialFeedsState();

  @override
  Stream<FeedsState> mapEventToState(
    FeedsEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
