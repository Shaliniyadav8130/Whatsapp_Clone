class StatusModel {
  final String name;
  final String time;
  final String avatar;

  StatusModel({
    this.name='',
    this.time='',
    this.avatar='',
  });
}

List<StatusModel> statusData = [

  StatusModel(
    name: "Harshit",
    time: "14:23",
    avatar: "assets/images/Harshit.jpg",
  ),
  StatusModel(
    name: "Vivek Bhaiya",
    time: "23:20",
    avatar: "assets/images/Himanshu.jpg",
  ),
  StatusModel(
    name: "Shivani",
    time: "22:30",
    avatar: "assets/images/Shivani.jpg",
  ),
];