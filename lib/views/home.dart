// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lwstore/views/slides.dart';
import 'package:video_player/video_player.dart';

var link1 =
    'https://d1z1smzgvvydhp.cloudfront.net/jt3_e6MENJ2zF_J0RIOT4W5bfHw=/1080x1080/smart/filters:format(webp)/https://cdn1.kingschat.online/uploads/media/564326f962c6c019fe000029/MFFXR3NTSUFBQXNOdjFkTXdXZEd6QT09/image_2048x2048(75).webp';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  ScrollController scroll = ScrollController();
  late VideoPlayerController _vidcontroller;
  bool chkstreach = false;
  @override
  void initState() {
    super.initState();
    scroll.addListener(() {
    //  print(scroll.offset);
      if (scroll.offset > 5) {
        chkstreach = true;
      } else {
        chkstreach = false;
      }
      setState(() {});
    });
    _vidcontroller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      //.asset('asset/videos/kingschatvid.mp4')
      ..initialize().then((_) {
        setState(() {
          _vidcontroller.setLooping(true);
          _vidcontroller.setVolume(0);
          _vidcontroller.play();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 10.0),
              child: Row(children: [
                Text(
                  'Loveworld Store',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded))
              ]),
            ),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height - 120,
              child: CustomScrollView(
                controller: scroll,
                slivers: <Widget>[
                  SliverAppBar(
                    snap: true,
                    floating: true,
                    pinned: true,
                     collapsedHeight:3,
                    toolbarHeight:2,
                    primary: false,
                    surfaceTintColor: Colors.white,
                    bottom: TabBar(
                        controller: TabController(length: 3, vsync: this),
                        //padding: EdgeInsets.only(left: 15, right: 15, bottom: 10),
                        automaticIndicatorColorAdjustment: false,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.transparent),
                        tabs: [
                           
                          Container(
                            width: 120.0, height: 30.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey[200]
                            ),
                            alignment: Alignment.center,
                            child: Text("Apps"),
                          ),
                          Container(
                            width: 120.0, height: 30.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey[200]
                            ),
                            alignment: Alignment.center,
                            child: Text("Games"),
                          ),
                           Container(
                            width: 120.0, height: 30.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.grey[200]
                            ),
                            alignment: Alignment.center,
                            child: Text("Profile"),
                          ),
                         
                        ]),
                    elevation: 0,
                    expandedHeight: chkstreach ? 250 : 340.0,
                    flexibleSpace: FlexibleSpaceBar(
                      // title:TabBar(controller: TabController(length:3, vsync:this), tabs: List.generate(3, (index) => Text('tab$index',style: TextStyle(color: Colors.blueGrey),)),),
                      background: Container(
                        color: Colors.white,
                        child: AnimatedCrossFade(
                            duration: Duration(milliseconds: 300),
                            crossFadeState: chkstreach
                                ? CrossFadeState.showSecond
                                : CrossFadeState.showFirst,
                            firstChild: Card(
                              elevation: 0,
                              margin: EdgeInsets.only(
                                  left: 15, right: 15, bottom: 25, top: 10),
                              clipBehavior: Clip.hardEdge,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(11),
                              ),
                              color: Colors.white,
                              child: SizedBox(
                                height: MediaQuery.sizeOf(context).height - 400,
                                child: Stack(
                                  children: [
                                    // Image.network(
                                    //   'https://scontent.flos5-2.fna.fbcdn.net/v/t1.6435-9/120996659_2682872961976953_5069455441081241208_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=f4nXzBa3ztUAX-PzbvX&_nc_ht=scontent.flos5-2.fna&oh=00_AfCcNAwCmqmvqAgMjlDCymFuvon1Uk-nS6iidEtVrpkR2Q&oe=6515EF7F',
                                    //   width: double.infinity,
                                    //   height: MediaQuery.sizeOf(context).height - 400,
                                    //   fit: BoxFit.cover,
                                    // ),
                                    Center(child: VideoPlayer(_vidcontroller)),
                                    Positioned(
                                      bottom: 0,
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 250,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              colors: [
                                                Colors.transparent,
                                                Colors.white.withOpacity(0.5),
                                                Colors.white.withOpacity(0.9)
                                                //add more colors for gradient
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              stops: [0.3, 0.6, 0.8]),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Kings Chat',
                                                style: TextStyle(
                                                  fontSize: 24,
                                                  fontFamily:'josefinsans', fontWeight: FontWeight.w700
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 6, bottom: 10),
                                                    child: SizedBox(
                                                      width: (MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          1.6),
                                                      child: Text(
                                                        'The is Card Ui Design Example Text  dshfsjdfh hdsfjh sdfj sdjfh hsdfj hfh sfhjsd hsjd sh sjhsd fsjf hsjf hjsf hs fhjsfdjfh shfj fhjfs ',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.grey[800],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  TextButton(
                                                    onPressed: () {},
                                                    style: TextButton.styleFrom(
                                                      backgroundColor:
                                                          Colors.blueGrey,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                20),
                                                      ),
                                                    ),
                                                    child: Text(
                                                      'Install',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            secondChild: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 200,
                                margin: EdgeInsets.all(20),
                                child: Slides())),
                      ),
                       ),
                  ),
                  SliverGrid(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.0,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      childAspectRatio: 4.0,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.teal[100 * (index % 9)],
                          child: Text('Grid Item $index'),
                        );
                      },
                      childCount: 20,
                    ),
                  ),
                 
                ],
              ),
            ),
          ],
        ));
  }
}
