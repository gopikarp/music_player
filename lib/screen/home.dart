import 'package:beat_box_music_player/screen/widgets/custom_card_widgets.dart';
import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController(
    viewportFraction: 0.9,
    // initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: TextField(
          onChanged: (value) {},
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
          decoration: const InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(fontSize: 30, color: Colors.white),
            suffixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            border: InputBorder.none,
            labelStyle: TextStyle(color: Colors.white),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const BackgroundImage(),
          ListView(
            children: [
              Hbox(height: 35),
              HeaderCard(controller: _controller),
              Hbox(),
              const MiddleCards(),
              Hbox(),
              textWidget('  Recent '),
              const LastCard(),
            ],
          )
        ],
      ),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class MiddleCards extends StatelessWidget {
  const MiddleCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 130, left: 15),
              child: textWidget(
                "Favouraits",
              ),
            ),
            textWidget(
              "All songs",
            ),
          ],
        ),
        const Row(
          children: [
            Expanded(
              child: CustomCardWidget(imagePath: 'assets/images/fav.jpg'),
            ),
            CustomCardWidget(imagePath: 'assets/images/a.png')
            // Expanded(
            //   child: SizedBox(
            //     width: 200,
            //     height: 140,
            //     child: Card(
            //       elevation: 5,
            //       child: Image.asset(
            //         'assets/images/a.png',
            //         fit: BoxFit.fill,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}


class LastCard extends StatelessWidget {
  const LastCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 140,
            width: 200,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                'assets/images/fav.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 140,
            width: 200,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                'assets/images/fav.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 140,
            width: 200,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.all(10),
              child: Image.asset(
                'assets/images/fav.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HeaderCard extends StatelessWidget {
  const HeaderCard({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180, // Card height
      child: PageView.builder(
        itemCount: 10,
        controller: _controller,
        itemBuilder: (context, index) {
          return ListenableBuilder(
            listenable: _controller,
            builder: (context, child) {
              double factor = 1;
              if (_controller.position.hasContentDimensions) {
                factor = 1 - (_controller.page! - index).abs();
              }

              return Center(
                child: SizedBox(
                  width: 240,
                  height: 90 + (factor * 90),
                  child: Card(
                    elevation: 4,
                    child: Center(child: Text('Card $index')),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
