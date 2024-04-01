import 'package:flutter_bloc/flutter_bloc.dart';
part 'internet_cubit_state.dart';

class InternetCubut extends Cubit<InternetState> {
  InternetCubut(super.initialState);
  void emitInternetConnected(ConnectionType connectionType) =>
      emit(InternetConnected(connectionType: connectionType));

  void emitInternetDisConnected(ConnectionType connectionType) {
    return emit(InternetDisconnected(connectionType: connectionType));
  }
}
