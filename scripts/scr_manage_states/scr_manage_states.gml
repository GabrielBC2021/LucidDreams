
function scr_manage_states(){
// Este script gestiona la transición entre los estados del personaje.

// scr_manage_states
// Este script gestiona la transición entre los estados del personaje.

if (instance_exists(Moxi_movimiento)) {
    if (variable_instance_exists(Moxi_movimiento, "state")) {
        show_debug_message("Estado actual: " + string(Moxi_movimiento.state)); // Agrega esta línea para imprimir el estado actual

        switch (Moxi_movimiento.state) {
            case "Walking":
                scr_walking();
                break;
			case "Jump":
                scr_jump();
                break;

            default:
                show_debug_message("Estado no reconocido: " + string(Moxi_movimiento.state));
                break;
        }
    } else {
        show_debug_message("La variable 'state' no está definida en Moxi_movimiento.");
    }
} else {
    show_debug_message("El objeto Moxi_movimiento no existe.");
}


}
