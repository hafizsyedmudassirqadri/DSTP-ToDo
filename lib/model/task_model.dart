// class AppAssets {
//   //
//   static const _baseImagesPath = "assets/images";
//   static const _animationPath = "assets/animations";

// static const profileImage =
// }

// class TaskModel {
//   String title = "";
//   String? description;
//   bool isChecked = false;

//   // DateTime taskDate = DateTime.now();
//   DateTime taskDate;

//   TaskModel({
//     required String title,
//     String? description,
//     bool isChecked = false,
//     DateTime? datetime,
//   }) {
//     this.taskDate = datetime ?? DateTime.now();
//   }
// }
class TaskModel {
  String title = "";
  String? description;
  bool isChecked = false;

  // DateTime taskDate = DateTime.now();
  DateTime? taskDate;

  TaskModel({
    required this.title,
    this.description,
    this.isChecked = false,
    DateTime? datetime,
  }) : taskDate = datetime ?? DateTime.now();

  Map<String, dynamic> toMap() {
    Map<String, dynamic> data = Map<String, dynamic>();

    data["title"] = title;
    data["description"] = description;
    data["isChecked"] = isChecked;
    data["taskDate"] = taskDate.toString();
    return data;
  }

  // fromMap(Map<String, dynamic> data) {
  //   TaskModel task = TaskModel(title: data["title"],
  //   description: data["description"],
  //   datetime: data["taskDate"],
  //   isChecked: data["isChecked"],
  //   );

 
  // }                                                              

  TaskModel.fromMap(Map<String, dynamic> data) {
    this.title = data["title"];
    this.description = data["description"];
    this.isChecked = data["isChecked"];
    this.taskDate = DateTime.parse(data["taskDate"] ?? DateTime.now().toString());
  }
}
