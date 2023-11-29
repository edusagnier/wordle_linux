DROP DATABASE IF EXISTS wordle;
CREATE DATABASE wordle;


/*Eliminacion de datos*/
DROP TABLE IF EXISTS wordle.palabras3;
DROP TABLE IF EXISTS wordle.palabras4;
DROP TABLE IF EXISTS wordle.palabras5;
DROP TABLE IF EXISTS wordle.palabras6;


/* Creación de tabla de wordle.palabras3 */
CREATE TABLE wordle.palabras3 (
    id_palabra3 INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    palabra3 VARCHAR (3) NOT NULL
);
INSERT INTO wordle.palabras3 (palabra3)
VALUES
('sol'),('mes'),('luz'),('mar'),('pan'),('pez'),('sol'),('pie'),('dos'),('rey'),('sal'),('cal'),('mal'),
('feo'),('ira'),('era'),('son'),('mas'),('bue'),('vos'),('mil'),('ver'),('dar'),('vez'),('tan'),('uno'),
('dos'),('feo'),('año'),('dar'),('ray'),('sol'),('uní'),('fue'),('soy'),('zoo'),('mal'),('soy'),('sol'),
('ida'),('dio'),('fea'),('dar'),('ser'),('día'),('dos'),('sol'),('mar'),('sal'),('hoy'),('cal'),('par'),
('rey'),('rey'),('ser'),('uva'),('oro'),('pan'),('fue'),('rey'),('mes'),('luz'),('mes'),('feo'),('ves'),
('dio'),('era'),('rey'),('son'),('dio'),('sol'),('yog'),('mes'),('dos'),('mal'),('año'),('vos'),('mes'),
('sol'),('mil'),('vas'),('vez'),('luz'),('sol'),('vez'),('día'),('dio'),('ves'),('uní'),('más'),('son'),
('ray'),('son'),('era'),('dos'),('dar'),('mes'),('yog'),('mar'),('era');


/* Creación de tabla de wordle.palabras4 */
CREATE TABLE wordle.palabras4 (
    id_palabra4 INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    palabra4 VARCHAR (4) NOT NULL
);
INSERT INTO wordle.palabras4 (palabra4)
VALUES
('sola'),('mesa'),('mora'),('malo'),('pana'),('piel'),('paz'),('puas'),('vino'),('pedo'),('puro'),('pino'),
('bien'),('iran'),('cafe'),('fino'),('pavo'),('solo'),('cien'),('nuez'),('muro'),('auto'),('bufo'),('riño'),
('pozo'),('sano'),('zeta'),('vara'),('duna'),('coco'),('tina'),('lona'),('mudo'),('duro'),('años'),('alma'),
('lomo'),('dios'),('roca'),('miga'),('pila'),('ruín'),('judo'),('burl'),('será'),('lote'),('suda'),('feto'),
('seda'),('dedo'),('cero'),('vaso'),('buho'),('zumo'),('elmo'),('loco'),('fosa'),('vino'),('moho'),('cuna'),
('ruin'),('será'),('numo'),('cito'),('coco'),('sano'),('zulo'),('puño'),('romo'),('auto'),('ceño'),('faro'),
('duro'),('seco'),('cero'),('coto'),('lazo'),('sebo'),('puño'),('soro'),('teja'),('tomo'),('mina'),('bozo'),
('mira'),('codo'),('faro'),('pico'),('pito'),('moco'),('tuvo'),('mudo'),('foca'),('muro'),('beso'),('tuyo'),
('cito'),('lujo'),('cena'),('cita');


/* Creación de tabla de wordle.palabras5 */
CREATE TABLE wordle.palabras5 (
    id_palabra5 INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    palabra5 VARCHAR (5) NOT NULL
);
INSERT INTO wordle.palabras5 (palabra5)
VALUES
('panza'),('vence'),('arena'),('piesa'),('pista'),('aveso'),('pilar'),('tabas'),('linda'),('tenis'),('solos'),
('maria'),('notas'),('duelo'),('mapas'),('rompe'),('copas'),('nieve'),('papel'),('forma'),('almas'),('risas'),
('pasas'),('poses'),('airea'),('guion'),('fuego'),('culto'),('cansa'),('riela'),('fuera'),('medio'),('hondo'),
('fuera'),('claro'),('crema'),('metao'),('fusil'),('vuela'),('viaja'),('falsa'),('paris'),('gordo'),('tonto'),
('norte'),('cieno'),('acero'),('nuevo'),('flora'),('flora'),('color'),('riela'),('paria'),('cuota'),('doyla'),
('sielo'),('botes'),('penas'),('dieta'),('nacar'),('peaje'),('siere'),('miras'),('floro'),('airea'),('piola'),
('piras'),('ceros'),('sinon'),('piana'),('lodos'),('negra'),('lagos'),('cerdo'),('bulto'),('poros'),('figuo'),
('metao'),('gozar'),('gatas'),('mosca'),('gatos'),('darla'),('feria'),('fanal'),('luzon'),('figuo'),('cubos'),
('pasta'),('robar'),('chato'),('coros'),('darlo'),('halon'),('fiara'),('punto'),('arbol'),('calor'),('remos'),
('pinta');

/* Creación de tabla de wordle.palabras6 */
CREATE TABLE wordle.palabras6 (
    id_palabra6 INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    palabra6 VARCHAR (6) NOT NULL
);
INSERT INTO wordle.palabras6 (palabra6)
VALUES
('tomalo'),('diente'),('almasa'),('tobalo'),('blanco'),('huesos'),('mueble'),('cobras'),('lindas'),('alocar'),
('tierra'),('notalo'),('morito'),('suerte'),('bailas'),('cortar'),('mandas'),('insect'),('cancas'),('buenas'),
('soport'),('dioses'),('espero'),('villas'),('cuerpo'),('comida'),('medios'),('cancio'),('vuelas'),('comera'),
('pasado'),('luzaro'),('nubosa'),('neuron'),('fuerza'),('avalar'),('cordal'),('blando'),('fanosa'),('casero'),
('cosido'),('gatuno'),('carnos'),('friega'),('capelo'),('jovial'),('audito'),('frutal'),('espiro'),('rumiar'),
('pulido'),('comico'),('parque'),('polino'),('fiasco'),('ludico'),('pulido'),('nacido'),('ramera'),('fijaro'),
('centro'),('pastor'),('perten'),('pelele'),('cuerpo'),('pantos'),('rayano'),('surcos'),('perdio'),('mosque'),
('necora'),('rocino'),('blando'),('mister'),('cudria'),('raices'),('movido'),('buzcan'),('risote'),('socavo'),
('bienal'),('censar'),('pelado'),('indico'),('jornal'),('patata'),('redito'),('magico'),('decima'),('molest'),
('picaro'),('rapido'),('pisano'),('dudosa'),('curaro'),('sobras'),('repelo'),('saludo'),('facial'),('cancer');
