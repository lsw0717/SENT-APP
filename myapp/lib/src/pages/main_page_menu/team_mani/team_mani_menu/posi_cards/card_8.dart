import 'package:flutter/material.dart';
import 'package:myapp/stateDirectory/state_team_mani.dart' as state_team_mani;
import 'package:provider/provider.dart';


class Card8 extends StatefulWidget {
  const Card8({Key? key}) : super(key: key);

  @override
  State<Card8> createState() => _Card8State();
}

class _Card8State extends State<Card8> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //bottom up sheet을 보여줌
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 300,
              color: Colors.white,
              child: Center(
                  child: ListView.builder(
                    itemCount: context.read<state_team_mani.Store3>().player.length,
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text(context
                            .read<state_team_mani.Store3>()
                            .player[i].values.toList()[0]
                            .toString()),
                        onTap: () {
                          context
                              .read<state_team_mani.Store3>()
                              .changePlayerCardList(7,
                              context.read<state_team_mani.Store3>().player[i].values.toList()[0]);
                          Navigator.pop(context);
                        },
                      );
                    },
                  )),
            );
          },
        );
      },
      child: Container(
        width: 70,
        height: 90,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(19),
              topRight: Radius.circular(19),
              bottomLeft: Radius.circular(19),
              bottomRight: Radius.circular(19),
            ),
            border: Border.all(color: Colors.black, width: 3)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context
                .watch<state_team_mani.Store3>()
                .playerCardList[7]
                .toString())
          ],
        ),
      ),
    );
  }
}
