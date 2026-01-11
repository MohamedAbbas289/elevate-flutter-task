import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/product_model.dart';
import '../../domain/repositories/product_repository.dart';

abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductSuccess extends ProductState {
  final List<ProductModel> products;

  ProductSuccess(this.products);
}

class ProductError extends ProductState {
  final String message;

  ProductError(this.message);
}

@injectable
class ProductCubit extends Cubit<ProductState> {
  final ProductRepository _repository;

  ProductCubit(this._repository) : super(ProductInitial());

  Future<void> getProducts() async {
    emit(ProductLoading());
    try {
      final products = await _repository.getProducts();
      emit(ProductSuccess(products));
    } catch (e) {
      emit(ProductError("Failed to fetch products: ${e.toString()}"));
    }
  }
}
