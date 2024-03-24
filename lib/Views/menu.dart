import 'package:flutter/material.dart';
import 'package:navapp/Views/home.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class MenuScreen extends StatelessWidget {
  
  const MenuScreen({
    Key? key, 
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ..._buildBackground1(context, MenuScreen),
          _buildBuildingInformation1(context),
          _buildActions(context),
        ],
      ),
    );
  }

  Positioned _buildActions(BuildContext context) {
    return Positioned(
          bottom: 50,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15.0),
                    foregroundColor: const Color(0xFFFF7272),
                    fixedSize: Size(MediaQuery.of(context).size.width * 0.425,
                     50
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )
                  ),
                  onPressed: () {
                    Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                  }, child: 
                  RichText(
                    text: TextSpan(
                     style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                   children: [
                      TextSpan(
                       text: 'Go to Menu',
                       style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15.0),
                    backgroundColor: const Color(0xFFFF7272),
                    fixedSize: Size(MediaQuery.of(context).size.width * 0.425,
                     50
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context, 
                    MaterialPageRoute(
                      builder: (context) =>_MoviePlayer(),
                      ),
                    );
                  }, 
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyLarge,
                      children: [
                        TextSpan(
                          text: 'Video intro',
                          style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
  }

  Positioned _buildBuildingInformation1(BuildContext context) {
    return Positioned(
          bottom: 150,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  'NSBM GREEN UNIVERSITY',
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height:20),
                Text('As Sri Lanka’s International University, NSBM is constantly looking for international recognition through strategic linkages with international institutes. Partnering strength to strength with esteemed international partners, NSBM commits to stay at the forefront as a provider of world-class higher education, introducing foreign academic programmes with high market value offered by top-class foreign universities worldwide.',
                  maxLines: 8,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(height: 1.75, color: Colors.white),
                ),
              ],
            ),
          ),
        );
  }

  List<Widget> _buildBackground1(context, MenuScreen) {
    return [
      Container(
          height: double.infinity, 
          color: const Color(0xFF000B49),
        ),
        Image.asset(
            'lib/assets/NSBM.jpg', 
            width: double.infinity,
            height:  MediaQuery.of(context).size.height * 0.5,
            fit: BoxFit.cover,
          ),
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Color(0xFF000B49),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.3, 0.5],
                ),
              ),
            ),
          ),];
  }
}


class _MoviePlayer extends StatefulWidget {
  const _MoviePlayer({
    Key? key,
  }) : super(key: key);

  @override
  State<_MoviePlayer> createState() => _MoviePlayerState();
}

class _MoviePlayerState extends State<_MoviePlayer> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();

    videoPlayerController = VideoPlayerController.asset('lib/assets/videos/videoplayback.mp4')
    ..initialize().then((value) {
      setState(() {});
      });

    chewieController = ChewieController(videoPlayerController: videoPlayerController, aspectRatio: 16/9
    );  
  }

  @override
    void dispose() {
      videoPlayerController.dispose();
      chewieController.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
    body: SafeArea(
      child: Chewie(
        controller: chewieController,
        ),
      ),
    );
  }
}
