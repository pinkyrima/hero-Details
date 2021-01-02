import 'package:first_assignment/src/model/hero.dart';
import 'package:first_assignment/src/utils/constraints.dart';
import 'package:first_assignment/src/utils/helper.dart';
import 'package:first_assignment/src/view/screen_hero_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// search
// 1. get the text from search field
// 2. call the search function from the healper class
// 3. store the filtered data in a varaible

class DashboardScreen extends StatefulWidget {
  //final List images=["batman.jpg","superman.jpg","joker.jpg","captain.jpg","iron_man.jpg"];

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<HeroModel> filteredHeros = [];

  @override
  Widget build(BuildContext context) {
  //Helper.searchHero('key');
    return Scaffold(
          appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.purple.shade200,
            title: Center(
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "search",
                  isDense: true,
                  suffixIcon: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 24,
                    ),
                  ),
                  contentPadding: EdgeInsets.all(12),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(42),
                  ),
                ),
                onChanged: (text){
                  text=text.toLowerCase();
                  print(text);
                  setState(() {
                    filteredHeros = Helper.searchHero(text);
                  });
                },
              ),
            ),
          ),
          //backgroundColor: Colors.pink.shade50,

          body: Container(
              margin: EdgeInsets.only(top: 25),
            child:Column(
              children: [

                Expanded(
                  child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:20 ),
              child: GridView.builder(
              itemCount: filteredHeros.isEmpty ?  heroes.length : filteredHeros.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.75),

                itemBuilder: (context, index) {
                  return HeroCard(hero:filteredHeros.isEmpty ? heroes[index]:filteredHeros[index],
                  press: () => Navigator.push(context, MaterialPageRoute(
                      builder: (context) => HeroDetails(hero: heroes[index],))),);
                },),
                ),
                )
              ],
            )
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(CupertinoIcons.person_add),
      onPressed: (){},
    ),

          backgroundColor: Colors.teal.shade50,

      );

  }
  Widget heroCard(Hero hero,BuildContext context){
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 120.0,
        child: Card(
          color: Colors.black45,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Text(heroes[index].name)
            ],
          ),
        ),
      ),

    );
  }
}

class HeroCard extends StatelessWidget {
  final HeroModel hero;
  final Function press;
  const HeroCard({
      Key key,
      this.hero, this.press,
  }) : super(key: key);

  //final DashboardScreen widget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(16),
            child: Image.asset(hero.image, fit: BoxFit.cover, height: 150,width: 200,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(hero.name,style: TextStyle(
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
                fontSize: 15
            ),),
          ),
          Text("Id : ${hero.id}",style: TextStyle(
              fontWeight: FontWeight.bold
          ),)
        ],
      ),


    );
  }
}
