// Objeto: obj_LifeCounter

// Variables
var lifeCount;

// Evento Create
lifeCount = 3; // Inicializa el contador de vidas

// Métodos
function getLifeCount() {
    return lifeCount;
}

function decreaseLife() {
    lifeCount -= 1;
}

function resetLifeCount() {
    lifeCount = 3;
}
