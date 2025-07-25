import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:object_identification/models/object_identification_model/object_identification_model.dart';
import 'package:object_identification/screens/homepage.dart';
import 'package:object_identification/screens/select_label.dart';

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      name: 'homepage',
      path: '/',
      builder: (context, state) => const Homepage(),
      routes: [
        GoRoute(
          name: 'selectLabel',
          path: '/selectlabel',
          builder: (context, state) {
            return SelectLabel(
              object: state.extra as ObjectIdentificationModel,
            );
          },
        ),
      ],
    ),
  ],
);
GoRouter get router => _router;
