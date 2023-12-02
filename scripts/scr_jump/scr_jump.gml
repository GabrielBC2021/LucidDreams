
function scr_jump() {
   
   // Verifica si la variable 'state' no existe en el objeto
	if (!variable_instance_exists(self, "state")) {
        // Inicializa la variable 'state' con el estado inicial deseado, por ejemplo, "Walking"
        self.state = "Walking";
    }

    if (Moxi_movimiento.jump && !place_free(x, y + 1)) {
        vspeed = -salto;
		
	  // Ajustar velocidad horizontal durante el salto
        hspeed = Moxi_movimiento.direccion * abs(vspeed) * 0.23; 
    }

    Moxi_movimiento.jump = false;

   if (!place_free(x, y + 1) && vspeed == 0) {
    Moxi_movimiento.state = "Walking";
    vspeed = 0;
    hspeed = 0; // Restablecer la velocidad horizontal al estar en el suelo
    Moxi_movimiento.jump_start_y = 0;
}

    if (!place_free(x, y + 1) && vspeed == 0) {
        self.state = "Walking";
        vspeed = 0;
        self.jump_start_y = 0;
    }

    if (vspeed < 0 && self.jump_start_y == 0) {
        self.jump_start_y = y;
    }

    // Cambiar sprites de salto
    if (self.caer) {
        sprite_index = (self.direccion == 1) ? Moxi_MovSaltoIzq : Moxi_MovSaltoDer ;
    } else if (self.arriba) {
        sprite_index = (self.direccion == 1) ? Moxi_MovDer : Moxi_MovIzq;
    } else {
        sprite_index = (self.direccion == -1) ?  Moxi_MovSaltoIzq : Moxi_MovSaltoDer;
    }
	
	
}
