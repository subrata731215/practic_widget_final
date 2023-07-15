void main() {
  var mapName = {
    'key1': 'value1',
    'name': 'Subrata',
    'vill': 'Penga',
    'mob_no': '8967332703',


  };
  print(mapName);
  print(mapName.keys);
  print(mapName.values);
  print(mapName['vill']);

  mapName['mob_no'] = '9832377135';   /// update
  print(mapName['mob_no']);

  mapName['p.s'] = 'nanoor';
  print(mapName);

  mapName.remove('vill');
  print(mapName);

  print(mapName.containsKey('p.s'));
  print(mapName.containsValue(8967332703));
  print(mapName.containsValue('9832377135'));
  print(mapName.containsValue('8967332703'));





  var mapNames={};

  mapNames['house_no']= '34';
  mapNames['dist']= 'Birbhum';
  print(mapNames);
}