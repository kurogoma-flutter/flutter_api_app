import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/article_list_view_model.dart';
import 'article_list_tile.dart';

class ArticleListView extends StatelessWidget {
  final viewModel = ArticleListViewModel();

  ArticleListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Qiita Articles'),
      ),
      body: ChangeNotifierProvider(
        create: (context) => viewModel,
        child: Consumer<ArticleListViewModel>(
          builder: (context, viewModel, _) {
            return RefreshIndicator(
                child: _buildListView(viewModel), onRefresh: () => viewModel.fetchArticles());
          },
        ),
      ),
    );
  }

  Widget _buildListView(ArticleListViewModel viewModel) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemBuilder: (context, index) {
          return ArticleListTile(article: viewModel.articles[index]);
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: viewModel.articles.length);
  }
}
