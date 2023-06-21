void main() {
  var map_name = {
    'key1': 'value1',
    'name': 'Subrata',
    'vill': 'Penga',
    'mob_no': '8967332703',


  };
  print(map_name);
  print(map_name.keys);
  print(map_name.values);
  print(map_name['vill']);

  map_name['mob_no'] = '9832377135';   /// update
  print(map_name['mob_no']);

  map_name['p.s'] = 'nanoor';
  print(map_name);

  map_name.remove('vill');
  print(map_name);

  print(map_name.containsKey('p.s'));
  print(map_name.containsValue(8967332703));
  print(map_name.containsValue('9832377135'));
  print(map_name.containsValue('8967332703'));





  var mapNames={};

  mapNames['house_no']= '34';
  mapNames['dist']= 'Birbhum';
  print(mapNames);
}