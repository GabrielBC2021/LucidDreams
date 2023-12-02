function scr_walking() {
    if (!variable_instance_exists(Moxi_movimiento, "state")) {
        Moxi_movimiento.state = "Walking";
    }

    caer = (vspeed > 0);
    arriba = (vspeed < 0);

    if (direccion != 0) {
        if ((direccion == 1 && place_free(x + vel, y)) || (direccion == -1 && place_free(x - vel, y))) {
            x += direccion * vel;

            // Cambiar sprite según la dirección y el estado de salto o caída
            if (Moxi_movimiento.state == "Jump") {
                sprite_index = (direccion == 1) ? Moxi_MovSaltoDer : Moxi_MovSaltoIzq;
            } else {
                sprite_index = (direccion == 1) ? Moxi_MovDer : Moxi_MovIzq;
            }
        }
    } else {
        if (direccion == 0 && sprite_index == Moxi_MovDer) {
            sprite_index = Moxi_MovParado;
        } else if (direccion == 0 && sprite_index == Moxi_MovIzq) {
            sprite_index = Moxi_MovParadoIzq;
        }
    }

    vspeed += gravity;
    y += vspeed;

    if (place_meeting(x, y + 1, pared)) {
        y = floor(y);
        vspeed = 0;

        if (direccion == 0 && sprite_index == Moxi_MovDer) {
            sprite_index = Moxi_MovParado;
        } else if (direccion == 0 && sprite_index == Moxi_MovIzq) {
            sprite_index = Moxi_MovParadoIzq;
        }
    } 

   if (keyboard_check_pressed(vk_up)) {
        if (self.state == "Walking") {
            self.state = "Jump";
            self.jump = true;
        }
    }
}