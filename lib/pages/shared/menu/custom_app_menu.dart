import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:web_responsive_ui/pages/shared/menu_items/custom_menu_items.dart';
import 'package:web_responsive_ui/providers/page_provider.dart';

class CustomAppMenu extends StatefulWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  _CustomAppMenuState createState() => _CustomAppMenuState();
}

class _CustomAppMenuState extends State<CustomAppMenu>
    with SingleTickerProviderStateMixin {
  bool isOpen = false;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
  }

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (isOpen) {
              controller.reverse();
            } else {
              controller.forward();
            }
            isOpen = !isOpen;
          });
        },
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: 150,
            // menu abierto?
            height: isOpen ? 308 : 50,
            color: Colors.black,
            child: Column(
              children: [
                _MenuTitle(isOpen: isOpen, controller: controller),
                if (isOpen) ...[
                  CustomMenuItem(
                      delay: 0,
                      text: 'Home',
                      onPressed: () => pageProvider.goTo(0)),
                  CustomMenuItem(
                      delay: 30,
                      text: 'About',
                      onPressed: () => pageProvider.goTo(1)),
                  CustomMenuItem(
                      delay: 60,
                      text: 'Contact',
                      onPressed: () => pageProvider.goTo(2)),
                  CustomMenuItem(
                      delay: 90,
                      text: 'Skills',
                      onPressed: () => pageProvider.goTo(3)),
                  CustomMenuItem(
                      delay: 120,
                      text: 'Location',
                      onPressed: () => pageProvider.goTo(4)),
                  SizedBox(
                    height: 8,
                  )
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MenuTitle extends StatelessWidget {
  const _MenuTitle({
    Key? key,
    required this.isOpen,
    required this.controller,
  }) : super(key: key);

  final bool isOpen;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      child: Row(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            width: isOpen ? 45 : 0,
          ),
          Text('Menu',
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 18)),
          Spacer(),
          AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: controller,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
