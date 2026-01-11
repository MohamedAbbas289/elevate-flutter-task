import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/di/injection.dart';
import '../cubit/product_cubit.dart';
import 'widgets/product_item.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductCubit>()..getProducts(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Route")),
        body: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductLoading)
              return const Center(child: CircularProgressIndicator());
            if (state is ProductError)
              return Center(child: Text(state.message));
            if (state is ProductSuccess) {
              return GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: state.products.length,
                itemBuilder: (context, index) =>
                    ProductItem(product: state.products[index]),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
