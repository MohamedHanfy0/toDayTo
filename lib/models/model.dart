class Model {
  final String name;
   bool isCheck;

  Model({required this.name, this.isCheck = false});

  void changeCheckBox() {
    isCheck = !isCheck;
  }
}
