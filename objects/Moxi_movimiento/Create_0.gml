// configuracion del personaje


//gravedad
gravity = 0.08; 
// Inicializar la dirección y el salto
direccion = 0; 
salto = 5;
jump_start_y = 0; 

salt = false;
vspeed=0;

health = 3; // Vida
vel = 1.5; // Velocidad del personaje
caer = false; // El personaje cae
arriba = false; // El personaje salta



// Inicializar la variable 'state' con el estado inicial deseado, por ejemplo, "Walking"
self.state = "Walking";

// Verifica si la variable 'state' no existe en el objeto
if (!variable_instance_exists(self, "state")) {
    // Inicializa la variable 'state' con el estado inicial deseado, por ejemplo, "Walking"
    self.state = "Walking";
}
