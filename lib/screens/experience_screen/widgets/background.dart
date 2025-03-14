import 'package:flutter/material.dart';
import 'package:porfolio_app/screens/experience_screen/widgets/text_scrolled.dart';

/// Background dengan efek animasi responsif terhadap scroll
class Background extends StatelessWidget {
  final ScrollController scrollController;

  const Background({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: scrollController,
      builder: (context, _) {
        final scrollOffset =
            scrollController.hasClients ? scrollController.offset : 0.0;
        return Stack(
          children: [
            _buildNameText(context),
            _buildAnimatedImage(context, scrollOffset),
          ],
        );
      },
    );
  }

  Widget _buildNameText(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Positioned(
      top: 20,
      left: 0,
      child: Container(
        width: screenWidth,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: screenWidth * 0.9),
              child: const TextScrolled(
                "YUDISTIA FIRMAN",
                textDirection: TextDirection.ltr,
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: screenWidth * 0.9),
              child: const TextScrolled(
                "LEAD MOBILE ENGINEER",
                textDirection: TextDirection.rtl,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedImage(BuildContext context, double scrollOffset) {
    const maxHeight = 600.0;
    final screenSize = MediaQuery.of(context).size;
    final scale = (1 - (scrollOffset / maxHeight)).clamp(0.4, 1.0);

    return Align(
      alignment: Alignment.topRight,
      child: SizedBox(
        height: maxHeight * scale,
        width: screenSize.width * 0.66 * scale,
        child: Image.asset(
          "assets/images/hanamichi_sakuragi.png",
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
