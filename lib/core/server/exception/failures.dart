import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverFailure() = ServerFailure;
  const factory Failure.networkFailure() = NetworkFailure;
  const factory Failure.unexpectedFailure() = UnexpectedFailure;
}