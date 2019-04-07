type Nombre = String
type NomMateria = String
type DNI = Int
type Legajo = Int
type Materias = [Materia]
type Nota = Int

data Alumno = Alumno {
                nombre :: Nombre,
                materias :: Materias,
                legajo :: Legajo
                } deriving(Show)
data Materia = Materia {
                nombreMateria :: NomMateria,
                nota :: Nota
                } deriving(Show)


primero (x,y,z) = x
segundo (x,y,z) = y
tercero (x,y,z) = z

topy = Alumno {
        nombre = "Tomas Berrojalviz",
        materias = [Materia "Quimica" 9, Materia "AM1" 4, Materia "AGA" 7],
        legajo = 1691007
        }

esMultiploDe m n = mod n m == 0
esPar = esMultiploDe 2

aprobado nota = nota>=6
buscarMateria nombreDeMateria (materia:materias)
        |nombreMateria materia == nombreDeMateria = materia
        |otherwise = buscarMateria nombreDeMateria materias
notaDe nombreDeMateria = nota.buscarMateria nombreDeMateria.materias
aproboMateria nombreDeMateria = aprobado.notaDe nombreDeMateria