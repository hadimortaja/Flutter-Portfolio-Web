import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:portfolio_app_web/constants.dart';

class ProjectItem {
  final String image, title, description;
  final List<String> techno;

  ProjectItem({this.image, this.title, this.description, this.techno});
}

final kProjectsItems = [
  ProjectItem(
    description:
        "In this application, you will find many interesting movie reviews. Reviews are written by real users who have already watched the selected movie or series.",
    image: "assets/images/project.png",
    techno: ['Flutter', 'Firebase'],
    title: "Movies App",
  ),
  ProjectItem(
    description:
        "In this application, you will find many interesting movie reviews. Reviews are written by real users who have already watched the selected movie or series.",
    image: "assets/images/project.png",
    techno: ['Flutter', 'Firebase'],
    title: "Movies App",
  ),
  ProjectItem(
    description:
        "In this application, you will find many interesting movie reviews. Reviews are written by real users who have already watched the selected movie or series.",
    image: "assets/images/project.png",
    techno: ['Flutter', 'Firebase'],
    title: "Movies App",
  ),
];

class ProjectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (_, size) {
        if (size.isMobile) return ProjectMobileView();
        return ProjectDesktopView();
      },
    );
  }
}

class ProjectDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: height,
      width: KInitWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Projects",
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final item in kProjectsItems)
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProjectItemBody(item: item),
                ))
            ],
          )
        ],
      ),
    );
  }
}

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

class ProjectMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      // height: height,
      width: KInitWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            thickness: 3,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Projects",
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(
            height: 20,
          ),
          for (final item in kProjectsItems) ProjectItemBody(item: item)
        ],
      ),
    );
  }
}
