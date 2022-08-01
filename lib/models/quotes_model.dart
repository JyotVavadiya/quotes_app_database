
class QuotesModel {
  int? id;
  String? title;
  String? image;


  QuotesModel({this.id, required this.title, required this.image});

  factory QuotesModel.fromMap(Map<String, dynamic> data) {
    return QuotesModel(
      id: data['id'],
      title: data['title'],
      image: data['image'],
    );
  }
}

List<String> a = [];
bool f = false;
bool c = false;
bool s = false;




// List<String> s = [
//   'The purpose of Over lives is to be happy',
//   'Every strike brings me closer to the next home run',
//   'Life is really simple, but men insist on making it complicated',
//   'The healthiest response to life is joy',
//   'Life is a flower of which love is the honey',
// ];
// List<String> i = [
//   'https://w0.peakpx.com/wallpaper/233/871/HD-wallpaper-sunrise-3d-3d-nature-sunrise-water.jpg',
//   'https://www.wallpaperflare.com/static/281/902/483/leaves-fresh-jungle-tropical-wallpaper.jpg',
//   'https://img.veenaworld.com/wp-content/uploads/2020/11/12-Refreshing-Hill-Stations-in-Karnataka-that-You-Must-Visit-scaled.jpg?imwidth=1080',
//   'https://wallup.net/wp-content/uploads/2018/03/19/546670-hourglasses-sand-time-748x499.jpg',
//   'https://wallpaperaccess.com/full/4802530.jpg',
// ];