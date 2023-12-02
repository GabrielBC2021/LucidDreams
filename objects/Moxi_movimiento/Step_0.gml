
// Evento de tecla Derecha (Keyboard Event)
if (keyboard_check(vk_right)) {
    Moxi_movimiento.direccion = 1;
   
} else if (keyboard_check(vk_left)) {
    Moxi_movimiento.direccion = -1;
   
} else {
    Moxi_movimiento.direccion = 0;
}

if (keyboard_check_pressed(vk_up)) {
    Moxi_movimiento.salt = true;
    show_debug_message("Tecla de salto presionada");
}

  // Lógica de la gravedad
	if (!place_free(x, y + 1)) {
	    vspeed = 0;
	} else {
	    vspeed += gravity;
	}



//llamamos al estado manager
scr_manage_states();




