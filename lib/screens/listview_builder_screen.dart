import 'package:fl_components/themes/app_theme_indigo.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() 
       {
         print('${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
          if (scrollController.position.pixels + 500 >= scrollController.position.maxScrollExtent) {
            // add5();
            fetchData();
          }
      }
    );
  }

  Future fetchData () async {
    if ( _isLoading ) return;
    _isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));
    add5();
    _isLoading = false;
    setState(() {});

    scrollController.animateTo(
      scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: const Duration(milliseconds: 250),
    );
  }



  void add5(){
    final lastId = imagesIds.last;
    for (var i = 1; i < 5; i++) {
      imagesIds.add(lastId + i);
    }
    setState(() {});
  }

   Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add5();
   
  }

  

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return  Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            
            RefreshIndicator(
              color: AppThemeIndigo.primaryColor,
              onRefresh: onRefresh,
              child: ListView.builder(
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/img/jar-loading.gif'),
                    image: NetworkImage('https://picsum.photos/500/300?random=${imagesIds[index]}'),
                  );
                },
              ),
            ),

            
            if (_isLoading)
            Positioned(
              bottom: 40,
              left: size.width *0.5 -  30 ,
              child: const _LoadingIcon())

          ],

          

        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container (
      padding: const EdgeInsets.all(10),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100)
      ),
      child: const Center(child: CircularProgressIndicator( color: AppThemeIndigo.primaryColor )),
    );
  }
}