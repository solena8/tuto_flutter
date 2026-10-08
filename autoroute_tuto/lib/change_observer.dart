import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeObserver extends BlocObserver {
  const ChangeObserver();

  @override
  void onCreate(BlocBase bloc){
    super.onCreate(bloc);
    print('${bloc.runtimeType} : ${bloc.state}');
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} : ${change.nextState} ');
  }
}