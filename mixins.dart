abstract class Animal{}

abstract class Mamifero extends Animal{}

abstract class Ave extends Animal{}

abstract class Pez extends Animal{}


// definiendo mixin

mixin Volar{
  void volar()=>print('estoy volando');
}

mixin Caminar{
  void caminar()=>print('estoy caminando');
}


mixin Nadar{
    void nadar()=>print('estoy nadando');
}


class Delfin extends Mamifero with Nadar{}


class Perro extends Mamifero with Caminar{}

class Pato extends Mamifero with Caminar,Nadar,Volar{}

class Murcielago extends Mamifero with Caminar,Volar{}

class Gato extends Mamifero with Caminar{}

class Paloma extends Mamifero with Caminar,Volar{}

class Tiburon extends Mamifero with Nadar{}

class PezVolador extends Mamifero with Nadar,Volar{}

// metodo main

void main(){
  
  final flipper = Delfin();
  flipper.nadar();
  
  // perro 
  final pe = Perro();
  pe.caminar();
  
  // perro 
  final p = Perro();
  p.caminar();
  
  // pato 
  final pa = Pato();
  pa.caminar();
  pa.nadar();
  pa.volar();
  
  // Murcielago 
  final mu = Murcielago();
  mu.caminar();
  mu.volar();
  
  
  // Gato
  final gato = Gato();
  gato.caminar();
  
  // Paloma
  
  final pal = Paloma();
  pal.caminar();
  pal.volar();
  
  
  // Tiburon
  final ti = Tiburon();
  ti.nadar();
  
  
  //pezVolador
  
  final pezV = PezVolador();
  pezV.nadar();
  pezV.volar();
  
}