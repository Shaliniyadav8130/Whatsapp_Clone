class ChatModel{
  final String name;
  final String message;
  final String time;
  final String avatar;

  //Constructor
  ChatModel({
    this.name="",
    this.message="",
    this.time="",
    this.avatar=""
});
}

List<ChatModel> chatData = [
  ChatModel(
    name:"Shalini",
    message:"Hmm",
    time:"10:20",
    avatar: "assets/images/Shalini.jpg",
  ),
  ChatModel(
    name:"Shivani",
    message:"kya kar rahi ho",
    time:"10:20",
    avatar: "assets/images/Shivani.jpg",
  ),
  ChatModel(
    name:"Harshit",
    message:"Okay",
    time:"09:00",
    avatar: "assets/images/Harshit.jpg",
  ),
  ChatModel(
    name:"Vivek Bhaiya",
    message:"Aap aa rahe ho",
    time:"09:20",
    avatar: "assets/images/Himanshu.jpg",
  ),
  ChatModel(
    name:"Dev",
    message:"Tum dekh lo kaise karna hai",
    time:"08:40",
    avatar: "assets/images/default1.jpg",
  ),
  ChatModel(
    name:"Tanya",
    message:"Aaj college jaaogi",
    time:"08:20",
    avatar: "assets/images/default1.jpg",
  ),
  ChatModel(
    name:"Simran",
    message:"Tum dekh lo kaise karna hai",
    time:"Yesterday",
    avatar: "assets/images/default1.jpg",
  ),
  ChatModel(
    name:"Shyam",
    message:"Tum dekh lo kaise karna hai",
    time:"Yesterday",
      avatar: "assets/images/Harshit.jpg"
  ),
  ChatModel(
    name:"Aditya",
    message:"Okay",
    time:"Yesterday",
    avatar: "assets/images/default1.jpg",
  ),
  ChatModel(
    name:"Ravi",
    message:"Let's see",
    time:"Yesterday",
    avatar: "assets/images/default1.jpg",
  ),
  ChatModel(
    name:"Ujjwal",
    message:"Nice work",
    time:"7/26/23",
    avatar: "assets/images/Himanshu.jpg",
  ),
  ChatModel(
    name:"Simran Yadav",
    message:"Ho gaya Kaam",
    time:"7/22/23",
    avatar: "assets/images/default1.jpg",
  ),
  // ChatModel(
  //   name:"Shalini",
  //   message:"Hello, how are you",
  //   time:"10:20",
  //   avatar: "",
  // ),
  // ChatModel(
  //   name:"Shalini",
  //   message:"Hello, how are you",
  //   time:"10:20",
  //   avatar: "",
  // ),
  // ChatModel(
  //   name:"Shalini",
  //   message:"Hello, how are you",
  //   time:"10:20",
  //   avatar: "",
  // ),
  // ChatModel(
  //   name:"Shalini",
  //   message:"Hello, how are you",
  //   time:"10:20",
  //   avatar: "",
  // ),
];
