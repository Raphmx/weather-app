import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wheather_app/provider/weather_provider.dart';
import 'package:wheather_app/views/widgets/card_widget.dart';
import 'package:wheather_app/views/widgets/row_widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final api = ref.watch(weatherProvider);
    useEffect(() {
      WidgetsBinding.instance!.addPostFrameCallback((_) async {
        await api.getData();
        api.getImage();
        api.getIcon();
      });
      return () {};
    }, []);

    final item = api.data;

    return Scaffold(
      // appBar: AppBar(
      //   // systemOverlayStyle: const SystemUiOverlayStyle(
      //   //   statusBarColor: Color(0xFF1c324b),
      //   // ),
      //   backgroundColor: const Color.fromARGB(255, 203, 215, 221),
      //   elevation: 0,
      //   leading: IconButton(
      //     padding: const EdgeInsets.only(left: 8),
      //     icon: Image.asset(
      //       'assets/drawable-xxhdpi/Mask Group 2.png',
      //       scale: 2.5,
      //     ),
      //     onPressed: () {
      //       return;
      //     },
      //   ),
      //   actions: [
      //     IconButton(
      //         padding: const EdgeInsets.only(right: 8),
      //         onPressed: () {},
      //         icon: const Icon(Icons.search))
      //   ],
      //   title: const Text("Weather App"),
      //   centerTitle: true,
      // ),
      body: item != null
          ? Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(api.image!),
                      opacity: 0.9,
                      fit: BoxFit.fill)),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white30.withOpacity(.2),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${item.currently!.temp!.toInt()}° ",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 44,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "${api.locModel!.townName!} ${api.locModel!.cityName!}",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 34, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Text(
                              item.currently!.weather![0].main!,
                              style: const TextStyle(
                                fontSize: 20,
                                color: Color(0xFF1c324b),
                              ),
                            ),
                          ),
                          // Image.network(
                          //    item.current!.weather![0].iconUrl,
                          //   width: 70,
                          //   height: 70,
                          // ),
                          Icon(
                            api.getIcon(),
                            size: 70,
                            color: Colors.white,
                          ),
                          RowWidget(
                              leftLabel:
                                  ' Humidity: ${item.currently!.humidity}%',
                              rightLabel: 'Feels like'),
                          const SizedBox(
                            height: 8,
                          ),
                          RowWidget(
                              leftLabel:
                                  'Wind: ${item.currently!.windSpeed} km/h',
                              rightLabel: "${item.currently!.feelsLike}°")
                        ],
                      ),
                    ),
                  ),
                  const CardWidget(
                    label: "10:00",
                    degree: 15,
                    length: 15,
                    scrollDirection: Axis.horizontal,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white30.withOpacity(.2),
                          borderRadius: BorderRadius.circular(15)),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Bugün"),
                                // Image.network(
                                //     item.current!.weather![0].iconUrl),
                                Text("15°"),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
