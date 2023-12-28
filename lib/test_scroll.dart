import 'package:doctor_app_with_omar_ahmed/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class ScrollableImageScreen extends StatefulWidget {
  const ScrollableImageScreen({Key? key}) : super(key: key);

  @override
  _ScrollableImageScreenState createState() => _ScrollableImageScreenState();
}

class _ScrollableImageScreenState extends State<ScrollableImageScreen> {
  ScrollController _scrollController = ScrollController();
  bool _showAppBar = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.offset > 300 && !_showAppBar) {
      setState(() {
        _showAppBar = true;
      });
    } else if (_scrollController.offset <= 300 && _showAppBar) {
      setState(() {
        _showAppBar = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height * 0.5, // Adjust the height of the image here
              flexibleSpace: FlexibleSpaceBar(
                background: Opacity(
                  opacity: _showAppBar ? 0.0 : 1.0,
                  child: Image.asset(
                    '${AppImages.doctor}', // Replace with your own image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              backgroundColor: Colors.red,
              pinned: true,
              floating: false,
              snap: false,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Lorem ipsum dolor sit amet'*100,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        // Add more text or widgets here
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

