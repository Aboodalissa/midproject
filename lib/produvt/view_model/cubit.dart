import 'package:first_project/produvt/view_model/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());
  bool isFavorite = false;
  void toggleFavorite() {
    isFavorite = !isFavorite;
    emit(FavoriteChangeIcon());
  }
}
