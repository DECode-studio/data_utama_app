import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'slide-card.dart';

Widget slideData() => CarouselSlider(
      items: [
        slideCard(
          'https://thumbs.dreamstime.com/b/programmer-working-program-web-developer-coding-computer-screen-code-script-open-windows-coder-engineer-vector-208530984.jpg',
          200,
          300,
        ),
        slideCard(
          'https://st2.depositphotos.com/3200537/5745/v/600/depositphotos_57454061-stock-illustration-programming-and-coding-website-deveopment.jpg',
          200,
          300,
        ),
        slideCard(
          'https://thumbs.dreamstime.com/b/programmer-coder-web-developer-software-engineer-sitting-desk-working-computer-programming-workplace-work-127386997.jpg',
          200,
          300,
        ),
      ],
      options: CarouselOptions(
        height: 200,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
      ),
    );
