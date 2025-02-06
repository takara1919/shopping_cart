part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();
}

class LoadProducts extends HomeEvent {
  const LoadProducts();

  @override
  List<Object?> get props => [];
}

class LoadMoreProducts extends HomeEvent {
  const LoadMoreProducts({
    required this.page,
  });

  final int page;

  @override
  List<Object?> get props => [page];
}

