class Topic{
  int id;
  String name;
  Topic({required this.id,required this.name});
}
class TopicList{
  static List<Topic> topic=[
    Topic(
        id: 1,
        name: 'JAVA'
    ),
    Topic(
        id: 2,
        name: 'C'
    ),
    Topic(
        id: 3,
        name: 'C++'
    ),
    Topic(
        id: 44,
        name: 'PYTHON'
    ),
    Topic(
        id: 5,
        name: 'JAVASCRIPT'
    ),
    Topic(
        id: 6,
        name: 'C#'
    ),
  ];
}