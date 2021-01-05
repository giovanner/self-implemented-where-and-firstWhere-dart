const listInts = [1, 2, 3, 4];

void main() {
  var pares = where<int>(listInts, (x) => x % 2 == 0);
  var impares = where<int>(listInts, (x) => x % 2 != 0);
  var procurando5 = firstWhere<int>(listInts, (x)=> x == 5, orElse:()=> -1);
  var procurando2 = firstWhere<int>(listInts, (x)=> x == 2, orElse:()=> -1);
  
  print('pares $pares');
  print('impares $impares');
  print('First where procurando 5 $procurando5');
  print('First where procurando 2 $procurando2');
}

T firstWhere<T>(List<T> itens, bool Function(T) f , {required T Function() orElse}){
 
    for(var iten in itens){
      if(f(iten)){
        return iten;
      }
    }
    return orElse();
}


List<T> where<T>(List<T> itensToFilter, bool Function(T) f) {
  
  var newList = <T>[];

  itensToFilter.forEach((item) => {
        if (f(item)) {newList.add(item)}
      });
  return newList;
}


