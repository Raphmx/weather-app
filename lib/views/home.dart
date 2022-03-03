import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttericon/meteocons_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:wheather_app/provider/weather_provider.dart';
import 'package:wheather_app/views/widgets/card_widget.dart';
import 'package:wheather_app/views/widgets/row_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: item != null
          ? Opacity(
              opacity: .9,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(api.image!),
                        opacity: 0.9,
                        fit: BoxFit.fill)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10),
                        child: Container(
                          height: 150,
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white30.withOpacity(.2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: item.hourly!.length,
                            itemBuilder: (_, i) {
                              var dateTime =
                                  DateTime.fromMillisecondsSinceEpoch(
                                      item.hourly![i].dt! * 1000);
                              var day =
                                  DateFormat.Hm().format(dateTime.toLocal());
                              return ContainerWidget(
                                hourly: item.hourly![i],
                                icon: api.mainIcon!,
                                hour: day,
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white30.withOpacity(.2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            physics: const BouncingScrollPhysics(),
                            itemCount: item.daily!.length,
                            itemBuilder: (_, i) {
                              var dateTime =
                                  DateTime.fromMillisecondsSinceEpoch(
                                      item.daily![i].dt! * 1000);
                              var day = DateFormat.EEEE('tr_TR')
                                  .format(dateTime.toLocal());
                              return Container(
                                margin: const EdgeInsets.all(12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      child: Text(day),
                                    ),
                                    //TODO: Humidity Ekle
                                    Row(
                                      children: const [
                                        FaIcon(FontAwesomeIcons.temperatureLow)
                                      ],
                                    ),
                                    IconWidget(
                                        main: item.daily![i].weather![0].main!),
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                          "${item.daily![i].temp!.min}°/${item.daily![i].temp!.max}°",
                                          textAlign: TextAlign.end),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}

class IconWidget extends StatelessWidget {
  const IconWidget({Key? key, required this.main}) : super(key: key);

  final String main;

  @override
  Widget build(BuildContext context) {
    return main == "Clouds"
        ? SizedBox(
            width: 50,
            child: Icon(
              Meteocons.clouds,
              color: Colors.blueGrey[800],
            ),
          )
        : main == "Thunderstorm"
            ? const SizedBox(
                width: 50,
                child: Icon(
                  Meteocons.clouds_flash_alt,
                  color: Colors.white,
                ),
              )
            : main == "Drizzle"
                ? const SizedBox(
                    width: 50,
                    child: Icon(
                      Meteocons.drizzle,
                      color: Colors.white,
                    ),
                  )
                : main == "Rain"
                    ? const SizedBox(
                        width: 50,
                        child: Icon(Meteocons.rain),
                      )
                    : main == "Snow"
                        ? const SizedBox(
                            width: 50,
                            child: Icon(Meteocons.snow_heavy),
                          )
                        : main == "Clear"
                            ? const SizedBox(
                                width: 50,
                                child: Icon(
                                  Meteocons.sun_inv,
                                  color: Colors.yellow,
                                ))
                            : const SizedBox(
                                width: 50,
                                child: Icon(
                                  Meteocons.mist,
                                  color: Colors.white,
                                ),
                              );
  }
}
