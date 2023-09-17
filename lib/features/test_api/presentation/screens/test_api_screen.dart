import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_project/features/dashboard/presentation/widgets/dashboard_drawer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../providers/state/test_api_state.dart';
import '../providers/test_api_state_provider.dart';







class TestApiCommentsPage extends ConsumerStatefulWidget{

  static const String routeName = '/TestApiComments';
  const TestApiCommentsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<TestApiCommentsPage> createState() => _TestApiCommentsPageState();
}

class _TestApiCommentsPageState extends ConsumerState<TestApiCommentsPage> {

  final scrollController = ScrollController();
  //final TextEditingController searchController = TextEditingController();
  //bool isSearchActive = false;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(scrollControllerListener);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  void scrollControllerListener() {
    if (scrollController.position.maxScrollExtent == scrollController.offset) {
      final testApiNotifier = ref.read(testApiNotifierProvider.notifier);
       testApiNotifier.fetchTestApiData();
      // if (isSearchActive) {
      //   notifier.searchProducts(searchController.text);
      // } else {
      //   notifier.fetchProducts();
      // }
    }
  }

  void refreshScrollControllerListener() {
    scrollController.removeListener(scrollControllerListener);
    scrollController.addListener(scrollControllerListener);
  }





  @override
  Widget build(BuildContext context) {
    final testApistate = ref.watch(testApiNotifierProvider);

    ref.listen(
      testApiNotifierProvider.select((value) => value),
      ((TestApiState? previous, TestApiState next) {
        //show Snackbar on failure
        if (next.state == TestApiConcreteState.fetchedAllProducts) {
          if (next.message.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(next.message.toString())));
          }
        }
      }),
    );

    return Scaffold(
      appBar: AppBar(
        title:const Text('Comments'),
      ),
      drawer: const DashboardDrawer(),
      body: testApistate.state == TestApiConcreteState.loading
          ? const Center(child: CircularProgressIndicator())
          : testApistate.hasData
          ? Column(
        children: [
          Expanded(
            child: Scrollbar(
              controller: scrollController,
              child: ListView.separated(
                separatorBuilder: (_, __) => const Divider(),
                controller: scrollController,
                itemCount: testApistate.commentsList.length,
                itemBuilder: (context, index) {
                  final comments = testApistate.commentsList[index];
                  return ListTile(
                    title: Text(comments.user!.username.toString(),style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    trailing: Text(comments.user!.id.toString(), style: Theme.of(context).textTheme.bodyMedium,),
                    subtitle: Text(comments.body.toString(),
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  );
                },
              ),
            ),
          ),
          if (testApistate.state == TestApiConcreteState.fetchingMore)
            const Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: CircularProgressIndicator(),
            ),
        ],
      )
          : Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Text(
            testApistate.message,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
