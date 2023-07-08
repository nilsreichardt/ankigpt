import 'package:ankigpt/src/pages/home_page/app_bar.dart';
import 'package:ankigpt/src/pages/home_page/demo_section.dart';
import 'package:ankigpt/src/pages/home_page/faq_section.dart';
import 'package:ankigpt/src/pages/home_page/input_section.dart';
import 'package:ankigpt/src/pages/home_page/pricing_section.dart';
import 'package:ankigpt/src/pages/home_page/about_section.dart';
import 'package:ankigpt/src/pages/widgets/extensions.dart';
import 'package:ankigpt/src/pages/widgets/footer2.dart';
import 'package:ankigpt/src/pages/widgets/max_width_constrained_box.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomePageAppBar2(),
      drawer: context.isMobile ? const Drawer() : null,
      body: const SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              InputSection(),
              SizedBox(height: 100),
              DemoSection(),
              SizedBox(height: 100),
              PricingSection(),
              SizedBox(height: 100),
              AboutSection(),
              SizedBox(height: 100),
              FaqSection(),
              SizedBox(height: 100),
              Footer2(),
            ],
          ),
        ),
      ),
    );
  }
}
