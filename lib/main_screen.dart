import 'package:flutter/material.dart';
import 'package:flutter_pemula/model/plant.dart';
import 'package:flutter_pemula/detail_screen.dart';

var SubTextStyle = const TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'SFProText',
                                    fontWeight: FontWeight.w100,
                                    color: Colors.grey,
                                  );

var InfoTextStyle = const TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'SFProText',
                                    fontWeight: FontWeight.normal
                                  );

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return const PlantList();
        } else if (constraints.maxWidth <= 1200) {
          return const PlantGrid(gridCount: 4);
        } else {
          return const PlantGrid(gridCount: 6);
        }
      },
    );
  }
}

class PlantList extends StatelessWidget {
  const PlantList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 160.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.green,
                          Colors.greenAccent,
                        ],
                      )
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 100.0,
                    child: const Center(
                      child: Text(
                        "Plants",
                        style: TextStyle(
                          fontSize: 27.0,
                          fontFamily: 'SFProText',
                          fontWeight: FontWeight.w900,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 80.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        onChanged: (value) {
                          
                        },
                        style: InfoTextStyle,
                        decoration: const InputDecoration(
                          hintText: "Search",
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(Icons.search)
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25.0)),
                            borderSide: BorderSide(
                              color: Colors.blueAccent
                            )
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25.0)),
                            borderSide: BorderSide(
                              color: Colors.white
                            )
                          )
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final Plant plant = plantList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return DetailScreen(plant: plant);
                      }));
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Card(
                            margin: const EdgeInsets.all(8.0),
                            child:Padding(
                              padding: const EdgeInsets.all(8.0),
                                child: Image.asset(plant.imageAsset)
                              )
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  plant.name,
                                  style: const TextStyle(
                                    fontSize: 17.0,
                                    fontFamily: 'SFProText',
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            'KINGDOM',
                                            style: SubTextStyle,
                                          ),
                                          const SizedBox(height: 8.0),
                                          Text(
                                            plant.kingdom,
                                            style: InfoTextStyle
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            'FAMILY',
                                            style: SubTextStyle,
                                          ),
                                          const SizedBox(height: 8.0),
                                          Text(
                                            plant.family,
                                            style: InfoTextStyle,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'DESCRIPTION',
                                  style: SubTextStyle,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  overflow: TextOverflow.ellipsis,
                                  maxLines:2,
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Montserrat',
                                  ),
                                  plant.description,
                                ),
                              ],
                            ),
                          ) 
                        ),
                      ],
                    ),
                  );
                },
                itemCount: plantList.length,
              )
            )
          ])
      ),
    );
  }
}

class PlantGrid extends StatelessWidget {
  final int gridCount;

  const PlantGrid({Key? key, required this.gridCount}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scrollbar(
          thumbVisibility: true,
          child: Column(
            children: <Widget>[
              Container(
                height: 160.0,
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.green,
                            Colors.greenAccent,
                          ],
                        )
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 100.0,
                      child: const Center(
                        child: Text(
                          "Plants",
                          style: TextStyle(
                            fontSize: 27.0,
                            fontFamily: 'SFProText',
                            fontWeight: FontWeight.w900,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 80.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          onChanged: (value) {
                            
                          },
                          style: InfoTextStyle,
                          decoration: const InputDecoration(
                            hintText: "Search",
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(Icons.search)
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(25.0)),
                              borderSide: BorderSide(
                                color: Colors.blueAccent
                              )
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(25.0)),
                              borderSide: BorderSide(
                                color: Colors.white
                              )
                            )
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),   
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: GridView.count(
                    crossAxisCount: gridCount,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    children: plantList.map((plant) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return DetailScreen(plant: plant);
                          }));
                        },
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  plant.imageAsset,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                                child: Text(
                                  plant.name,
                                  style: const TextStyle(
                                    fontSize: 17.0,
                                    fontFamily: 'SFProText',
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0, right: 8.0),
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            'KINGDOM',
                                            style: SubTextStyle,
                                          ),
                                          const SizedBox(height: 8.0),
                                          Text(
                                            plant.kingdom,
                                            style: InfoTextStyle
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            'FAMILY',
                                            style: SubTextStyle,
                                          ),
                                          const SizedBox(height: 8.0),
                                          Text(
                                            plant.family,
                                            style: InfoTextStyle,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                )
              )
            ],
          )
        ),
      ),
    );
  }
}