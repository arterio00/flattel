import 'package:flattel/bloc/ads_bloc/ads_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/presenter/pages/ad.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdsBloc, AdsState>(
        bloc: context.read<AdsBloc>(),
        builder: (context, state) => state.when(
            loading: () => const CircularProgressIndicator(),
            loaded: (ads) => Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Expanded(
                      child: StaggeredGridView.countBuilder(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        crossAxisCount: 4,
                        itemBuilder: (BuildContext context, int index) =>
                            InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                CustomPageRoute(Ad(
                                  index: index,
                                )));
                          },
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Hero(
                                  tag: index,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 120,
                                      child: Image.network(
                                        ads[index].images ?? '',
                                        loadingBuilder:
                                            (context, child, loadingProgress) {
                                          if (loadingProgress == null) {
                                            return child;
                                          }

                                          return Center(
                                            child: CircularProgressIndicator(
                                              value: loadingProgress
                                                          .expectedTotalBytes !=
                                                      null
                                                  ? loadingProgress
                                                          .cumulativeBytesLoaded /
                                                      loadingProgress
                                                          .expectedTotalBytes!
                                                  : null,
                                            ),
                                          );
                                          // You can use LinearProgressIndicator or CircularProgressIndicator instead
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  ads[index].images ?? '',
                                  style: Theme.of(context).textTheme.headline1,
                                ),
                                const Spacer(),
                                Text(
                                  ads[index].street ?? '',
                                  style: Theme.of(context).textTheme.bodyText1,
                                )
                              ]),
                        ),
                        staggeredTileBuilder: (int index) {
                          print(ads.length);
                          return StaggeredTile.count(
                              (index + 1) % 7 == 0 ? 4 : 2, 2.09);
                        },
                        itemCount: ads.length,
                        mainAxisSpacing: 20.0,
                        crossAxisSpacing: 15.0,
                      ),
                    ),
                  ],
                )));
  }
}
