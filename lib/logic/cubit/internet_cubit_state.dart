part of 'internet_cubit.dart';

/// Represents the different types of internet connections.
enum ConnectionType { wifi, mobile }

/// Abstract class representing the base state for internet connectivity.
abstract class InternetState {}

/// Initial state of the internet cubit.
class InternetInitial extends InternetState {}

/// State representing a connected internet connection.
class InternetConnected extends InternetState {
  /// The type of internet connection.
  final ConnectionType connectionType;

  /// Initializes a new instance of the [InternetConnected] state.
  InternetConnected({required this.connectionType});
}

/// State representing a disconnected internet connection.
class InternetDisconnected extends InternetState {
  final ConnectionType connectionType;

  InternetDisconnected({required this.connectionType});

}
