/// Write a Dart program to accept a filename from the user
/// and print the extension of that. Sample filename : abc.java Output : java

void main() {
  print(extensionPrint('subrata.pdf'));
}

String extensionPrint(String fileName) {
  List<String> a = fileName.split('.');
  return a[1];
}
