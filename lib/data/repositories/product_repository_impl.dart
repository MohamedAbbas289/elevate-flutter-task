import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/product_repository.dart';
import '../models/product_model.dart';

@LazySingleton(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  final Dio _dio;

  ProductRepositoryImpl(this._dio);

  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      final response = await _dio.get('https://fakestoreapi.com/products');
      final List data = response.data;
      return data.map((e) => ProductModel.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
