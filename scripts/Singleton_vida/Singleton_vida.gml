
function Singleton_vida(){

var instance_vida;

if (!instance_exists(obj_LifeCounter)) {
    // Si no existe una instancia, crea una nueva
    instance_vida = instance_create_layer(0, 0, "Instances", obj_LifeCounter);
}

return instance_vida;

}