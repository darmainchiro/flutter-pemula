
import 'package:flutter/material.dart';
import 'package:flutter_pemula/model/plant.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

var SubTextStyle = const TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'SFProText',
                                    fontWeight: FontWeight.bold,
                                  );

var InfoTextStyle = const TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'SFProText',
                                    fontWeight: FontWeight.normal
                                  );

class DetailScreen extends StatelessWidget{
  final Plant plant;

  const DetailScreen({Key? key, required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if(constraints.maxWidth > 800){
          return DetailWebPage(plant: plant);
        } else {
          return DetailMobilePage(plant: plant);
        }
      }
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final Plant plant;

  const DetailMobilePage({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 470.0,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 450.0,
                      child: Image.asset(plant.imageAsset,fit:BoxFit.fill),
                    ),
                    Positioned(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                ),
                                onPressed: (){
                                },
                              ),
                            ),
                          ]
                        ),
                      )
                    ),
                    Positioned(
                      top: 430.0,
                      right: 20.0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: const FavoriteButton()
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:const EdgeInsets.only(left:10,top:10,right:10),
                      child: Text(
                        'NATURE',
                        style: TextStyle(
                          background: Paint()
                            ..color = Colors.blue.withOpacity(0.1)
                            ..strokeWidth = 20
                            ..style = PaintingStyle.stroke,
                          color: Colors.blue,
                          fontSize: 12.0,
                          fontFamily: 'SFProText',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding:const EdgeInsets.only(left:20,top:10,right:20),
                      child:
                      Text(
                        'DECORATION',
                        style: TextStyle(
                          background: Paint()
                            ..color = Colors.blue.withOpacity(0.1)
                            ..strokeWidth = 20
                            ..style = PaintingStyle.stroke,
                          color: Colors.blue,
                          fontSize: 12.0,
                          fontFamily: 'SFProText',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16.0),
                child: Text(
                  plant.name,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 27.0,
                    fontFamily: 'SFProText',
                    fontWeight: FontWeight.bold
                  ),
                )
              ),
              Container(
                margin: const EdgeInsets.only(top:10.0,left:16.0,bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right:10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'KINGDOM',
                            style: SubTextStyle,
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            plant.kingdom,
                            style: InfoTextStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'DESCRIPTION',
                      style: SubTextStyle,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      plant.description,
                      style: InfoTextStyle,
                    ),
                  ] 
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: plant.imageUrls.map((url){
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(url),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final Plant plant;

  const DetailWebPage({Key? key, required this.plant}) : super(key: key);

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
  
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: Container(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Plant',
                  style: TextStyle(
                    fontFamily: 'SFProText',
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(widget.plant.imageAsset),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          const SizedBox(height: 16),
                          Scrollbar(
                            isAlwaysShown: true,
                            controller: _scrollController,
                            child: Container(
                              height: 150,
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ListView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                children: widget.plant.imageUrls.map((url) {
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(url),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  widget.plant.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'SFProText',
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding:const EdgeInsets.only(left:10,top:15,right:10),
                                    child: Text(
                                      'DANGER',
                                      style: TextStyle(
                                        background: Paint()
                                          ..color = Colors.blue.withOpacity(0.1)
                                          ..strokeWidth = 20
                                          ..style = PaintingStyle.stroke,
                                        color: Colors.blue,
                                        fontSize: 12.0,
                                        fontFamily: 'SFProText',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:const EdgeInsets.only(left:20,top:10,right:20),
                                    child:
                                    Text(
                                      'DECORATION',
                                      style: TextStyle(
                                        background: Paint()
                                          ..color = Colors.blue.withOpacity(0.1)
                                          ..strokeWidth = 20
                                          ..style = PaintingStyle.stroke,
                                        color: Colors.blue,
                                        fontSize: 12.0,
                                        fontFamily: 'SFProText',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(top:20.0,left:16.0,bottom: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right:10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'KINGDOM',
                                            style: SubTextStyle,
                                          ),
                                          const SizedBox(height: 8.0),
                                          Text(
                                            widget.plant.kingdom,
                                            style: InfoTextStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:10),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'FAMILY',
                                            style: SubTextStyle,
                                          ),
                                          const SizedBox(height: 8.0),
                                          Text(
                                            widget.plant.family,
                                            style: InfoTextStyle,
                                          ),
                                        ],
                                      )
                                    ),
                                    const FavoriteButton(),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.plant.description,
                                  textAlign: TextAlign.justify,
                                  style: InfoTextStyle
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}
 
 
class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
 
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Color.fromARGB(255, 241, 238, 238),
      child:IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ), 
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      )
    );
  }
}