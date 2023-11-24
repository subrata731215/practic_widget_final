
///Problem

/// write a dart programme that display your name and address

void main() {
  Map<String, String> myDetails = {
    'Name': 'Subrata Ghosh',
    'Address': 'Penga, Nanoor, Birbhum',
  };

  print('${myDetails.keys.first} : ${myDetails.values.first}');
  print('Hello\nworld');
}
