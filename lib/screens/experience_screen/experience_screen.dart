import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:porfolio_app/constant/experience_data.dart';
import 'package:porfolio_app/screens/experience_screen/widgets/widgets.dart';

/// Screen utama yang menampilkan daftar pengalaman kerja dengan efek paralaks
class ExperiencesScreen extends StatefulWidget {
  const ExperiencesScreen({super.key});

  @override
  State<ExperiencesScreen> createState() => _ExperiencesScreenState();
}

class _ExperiencesScreenState extends State<ExperiencesScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Dekorasi lingkaran background
          ExperienceDecorations(context: context),

          // Efek blur overlay
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 615, sigmaY: 615),
            child: Container(),
          ),

          // Konten background dengan efek scroll
          Padding(
            padding: EdgeInsets.only(top: 52, left: 15, right: 15),
            child: Background(scrollController: _scrollController),
          ),

          // Efek blur bagian bawah
          const BottomBlur(),

          // Konten utama scrollable
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              const SliverAppBar(
                backgroundColor: Colors.transparent,
                toolbarHeight: 40,
                floating: true,
                snap: true,
              ),
              const SliverSpace(300),
              ExperienceGrid(experiences: experienceData),
            ],
          ),
        ],
      ),
    );
  }
}
