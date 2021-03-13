import 'package:flutter/material.dart';
import 'package:portfolio_app_web/Project/project_view.dart';
class ProjectItemBody extends StatelessWidget {
  const ProjectItemBody({
    Key key,
    @required this.item,
  }) : super(key: key);

  final ProjectItem item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(item.image),
        SizedBox(
          height: 15,
        ),
        Text(
          item.title,
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(
          height: 8,
        ),
        Text(item.description),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            for (final tech in item.techno)
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Chip(label: Text(tech)),
              )
          ],
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}