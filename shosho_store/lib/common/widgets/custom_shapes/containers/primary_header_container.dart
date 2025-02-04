import 'package:flutter/material.dart';
import 'package:shosho_store/common/widgets/custom_shapes/containers/circular_container';
import 'package:shosho_store/common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:shosho_store/utils/constans/colors.dart';




class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
          color: const Color.fromARGB(255, 0, 132, 26),
          padding: const EdgeInsets.all(0),
          child: SizedBox(
            height: 270,
            child: Stack(
              children: [
                Positioned(
                    top: -150,
                    right: -250,
                    child: TCircularContainer(
                        backgroundColor: TColors.textWhite.withOpacity(0.1))),
                Positioned(
                    top: 100,
                    right: -300,
                    child: TCircularContainer(
                        backgroundColor: TColors.textWhite.withOpacity(0.1))),
              ],
            ),
          )),
    );
  }
}
