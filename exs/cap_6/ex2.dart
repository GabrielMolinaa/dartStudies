import 'dart:math';

void main(){
List<int> lista = List.generate(7, (index) => Random().nextInt(100));

List<int> multiplos2 = [];
List<int> multiplos3 = [];
List<int> multiplos2_3 = [];


lista.forEach((element) {
    if(element % 2 == 0){
      multiplos2.add(element);
      multiplos2_3.add(element);
    }else if(element % 3 == 0){
      multiplos3.add(element);
      multiplos2_3.add(element);
    }    
});

print(lista);
print("Multiplos de 2: $multiplos2");
print("Multiplos de 3: $multiplos3");
print("Multiplos de 2 e de 3: $multiplos2_3");

}