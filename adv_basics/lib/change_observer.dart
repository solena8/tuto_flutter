import 'package:flutter_bloc/flutter_bloc.dart';

// a pour but d'observer les changements d'état et effectuer une action si besoin : debugging, remonter des pb, sauvegarde automatique
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