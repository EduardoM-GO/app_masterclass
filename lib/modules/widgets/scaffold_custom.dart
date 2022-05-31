import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ScaffoldCustom extends StatefulWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final Widget? drawer;
  final DragStartBehavior drawerDragStartBehavior;
  final double? drawerEdgeDragWidth;
  final bool drawerEnableOpenDragGesture;
  final Color? drawerScrimColor;
  final Widget? endDrawer;
  final bool endDrawerEnableOpenDragGesture;
  final bool extendBody;
  final bool extendBodyBehindAppBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final void Function(bool)? onDrawerChanged;
  final void Function(bool)? onEndDrawerChanged;
  final List<Widget>? persistentFooterButtons;
  final bool primary;
  final bool? resizeToAvoidBottomInset;
  final String? restorationId;

  ///Contém o Gesture Detector para minimizar o teclado quando clicado fora do campo digitavel
  const ScaffoldCustom(
      {Key? key,
      this.appBar,
      this.body,
      this.backgroundColor,
      this.bottomNavigationBar,
      this.bottomSheet,
      this.drawer,
      this.drawerDragStartBehavior = DragStartBehavior.start,
      this.drawerEdgeDragWidth,
      this.drawerEnableOpenDragGesture = true,
      this.drawerScrimColor,
      this.endDrawer,
      this.endDrawerEnableOpenDragGesture = true,
      this.extendBody = false,
      this.extendBodyBehindAppBar = false,
      this.floatingActionButton,
      this.floatingActionButtonAnimator,
      this.floatingActionButtonLocation,
      this.onDrawerChanged,
      this.onEndDrawerChanged,
      this.persistentFooterButtons,
      this.primary = true,
      this.resizeToAvoidBottomInset,
      this.restorationId})
      : super(key: key);

  @override
  State<ScaffoldCustom> createState() => _ScaffoldCustomState();
}

class _ScaffoldCustomState extends State<ScaffoldCustom> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: widget.appBar,
        body: widget.body,
        backgroundColor: widget.backgroundColor,
        bottomNavigationBar: widget.bottomNavigationBar,
        bottomSheet: widget.bottomSheet,
        drawer: widget.drawer,
        drawerDragStartBehavior: widget.drawerDragStartBehavior,
        drawerEdgeDragWidth: widget.drawerEdgeDragWidth,
        drawerEnableOpenDragGesture: widget.drawerEnableOpenDragGesture,
        drawerScrimColor: widget.drawerScrimColor,
        endDrawer: widget.endDrawer,
        endDrawerEnableOpenDragGesture: widget.endDrawerEnableOpenDragGesture,
        extendBody: widget.extendBody,
        extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
        floatingActionButton: widget.floatingActionButton,
        floatingActionButtonAnimator: widget.floatingActionButtonAnimator,
        floatingActionButtonLocation: widget.floatingActionButtonLocation,
        //key: key,
        onDrawerChanged: widget.onDrawerChanged,
        onEndDrawerChanged: widget.onEndDrawerChanged,
        persistentFooterButtons: widget.persistentFooterButtons,
        primary: widget.primary,
        resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
        restorationId: widget.restorationId,
      ),
    );
  }
}
