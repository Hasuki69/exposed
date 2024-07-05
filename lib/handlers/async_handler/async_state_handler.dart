part of '../handlers.dart';

/// A sealed class representing the result of an asynchronous operation.
///
/// This class is used to encapsulate the different states that an asynchronous operation can have.
/// It provides subclasses for representing the loading state, success state, and error state.
///
/// The [Result] class is generic, allowing you to specify the type of value that will be returned
/// in the success state.
sealed class Result<T> {
  const Result();
}

/// Represents the loading state of an asynchronous operation.
///
/// This class is a subclass of [Result] and is used to indicate that the operation is currently
/// in progress.
class OnLoading<T> extends Result<T> {
  const OnLoading();
}

/// Represents the success state of an asynchronous operation.
///
/// This class is a subclass of [Result] and is used to indicate that the operation has completed
/// successfully.
///
/// The [value] property contains the value that was returned by the operation.
class OnSuccess<T> extends Result<T> {
  final T value;

  const OnSuccess(this.value);
}

/// Represents the error state of an asynchronous operation.
///
/// This class is a subclass of [Result] and is used to indicate that the operation has encountered
/// an error.
///
/// The [exception] property contains the exception that was thrown by the operation.
class OnError<T> extends Result<T> {
  final Exception exception;

  const OnError(this.exception);
}
