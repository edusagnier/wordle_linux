DROP DATABASE IF EXISTS wordle_english;
CREATE DATABASE wordle_english;

/* Eliminación de datos */
DROP TABLE IF EXISTS wordle_english.words3;
DROP TABLE IF EXISTS wordle_english.words4;
DROP TABLE IF EXISTS wordle_english.words5;
DROP TABLE IF EXISTS wordle_english.words6;

/* Creación de la tabla wordle_english.words3 */
CREATE TABLE wordle_english.words3 (
    id_word3 INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    word3 VARCHAR (3) NOT NULL
);
INSERT INTO wordle_english.words3 (word3)
VALUES 
('sun'),('cat'),('dog'),('car'),('cup'),('sky'),('owl'),('bar'),('key'),('hot'),('pen'),('run'),
('eat'),('bed'),('fly'),('cry'),('ink'),('man'),('fan'),('arm'),('map'),('sea'),('dry'),('wet'),
('fit'),('fun'),('win'),('new'),('old'),('big'),('cut'),('dig'),('hat'),('mad'),('sad'),('tan'),
('gap'),('egg'),('jaw'),('kid'),('law'),('mud'),('nap'),('oar'),('pit'),('rat'),('saw'),('tap'),
('van'),('wax'),('yet'),('zoo'),('nod'),('jam'),('lid'),('peg'),('rye'),('vim'),('wed'),('toy'),
('zip'),('wig'),('vet'),('jug'),('ivy'),('hum'),('gym'),('emu'),('dye'),('bow'),('bam'),('bud'),
('dam'),('gig'),('hog'),('ivy'),('jug'),('lad'),('mat'),('mob'),('nap'),('opt'),('pep'),('pop'),
('rug'),('ski'),('tab'),('vim'),('cry'),('yam'),('sit'),('spy'),('raw'),('oat'),('ram'),('put');

/* Creación de la tabla wordle_english.words4 */
CREATE TABLE wordle_english.words4 (
    id_word4 INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    word4 VARCHAR (4) NOT NULL
);
INSERT INTO wordle_english.words4 (word4)
VALUES 
('bird'),('moon'),('cake'),('rain'),('bend'),('duck'),('fall'),('east'),('game'),('note'),('roof'),
('star'),('sand'),('work'),('lazy'),('cold'),('warm'),('cool'),('kind'),('good'),('read'),('book'),
('talk'),('loud'),('soft'),('dark'),('chip'),('time'),('zone'),('echo'),('slow'),('fast'),('work'),
('mind'),('fish'),('free'),('hero'),('idea'),('jump'),('love'),('mind'),('safe'),('rich'),('tall'),
('thaw'),('golf'),('gift'),('easy'),('wish'),('race'),('join'),('land'),('half'),('spin'),('bind'),
('trip'),('plan'),('seal'),('fair'),('bark'),('bend'),('hard'),('flip'),('mint'),('dust'),('jump'),
('pour'),('plow'),('bump'),('belt'),('bias'),('buzz'),('clay'),('coil'),('dine'),('dirt'),('flux'),
('full'),('fuze'),('glow'),('gold'),('guru'),('heal'),('heat'),('heel'),('helm'),('holy'),('hoot'),
('iron'),('itch'),('jazz'),('jest'),('jolt'),('kale'),('lava'),('link'),('loon'),('loud'),('mast');

/* Creación de la tabla wordle_english.words5 */
CREATE TABLE wordle_english.words5 (
    id_word5 INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    word5 VARCHAR (5) NOT NULL
);
INSERT INTO wordle_english.words5 (word5)
VALUES 
('angel'),('happy'),('cheer'),('blend'),('brave'),('clear'),('earth'),('flash'),('globe'),('grape'),
('haste'),('humor'),('juice'),('laugh'),('lemon'),('light'),('music'),('novel'),('peace'),('power'),
('queen'),('radio'),('sheep'),('smart'),('smile'),('sound'),('south'),('storm'),('sweet'),('today'),
('tulip'),('unity'),('vocal'),('water'),('world'),('young'),('zebra'),('abide'),('acute'),('bliss'),
('charm'),('clash'),('crisp'),('dandy'),('dream'),('eager'),('faith'),('fruit'),('glory'),('honor'),
('lucky'),('magic'),('noble'),('pride'),('quiet'),('rebel'),('savor'),('skill'),('spice'),('trium'),
('vivid'),('witty'),('blush'),('craft'),('dance'),('fancy'),('flirt'),('grand'),('heart'),('mirth'),
('mural'),('neuro'),('pouch'),('quash'),('quill'),('roast'),('sauna'),('savor'),('scout'),('sleek'),
('stoic'),('toast'),('trend'),('truce'),('unify'),('upend'),('vista'),('whims'),('yeast'),('yogic'),
('zenon'),('abash'),('affix'),('azure'),('bloat'),('brisk'),('chord'),('civet'),('drain'),('facet'),
('fiery'),('gleam'),('hound'),('husky'),('imply'),('jumbo'),('knell'),('licit'),('lofty'),('manic');

/* Creación de la tabla wordle_english.words6 */
CREATE TABLE wordle_english.words6 (
    id_word6 INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    word6 VARCHAR (6) NOT NULL
);
INSERT INTO wordle_english.words6 (word6)
VALUES
('banana'),('beauty'),('breeze'),('butter'),('candle'),('carpet'),('castle'),('cheese'),('church'),('cookie'),
('dragon'),('dynamo'),('falcon'),('floral'),('flower'),('future'),('guitar'),('hidden'),('honour'),('kitten'),
('legend'),('magnet'),('master'),('mellow'),('mother'),('orange'),('pearls'),('pencil'),('pigeon'),('planet'),
('puzzle'),('rabbit'),('raptor'),('rocket'),('shower'),('simple'),('spirit'),('spread'),('sunset'),('temple'),
('thrill'),('tomato'),('travel'),('turtle'),('unique'),('valley'),('violet'),('vision'),('whisky'),('yellow'),
('zigzag'),('zodiac'),('abound'),('accept'),('acumen'),('around'),('ascent'),('beacon'),('belong'),('bonito'),
('calmly'),('carrot'),('caress'),('climax'),('cocker'),('decide'),('define'),('deluxe'),('eagles'),('elegan'),
('elicit'),('eloqua'),('endure'),('facade'),('fathom'),('finish'),('frugal'),('global'),('guitar'),('habita'),
('incept'),('ingest'),('intent'),('jovial'),('keenly'),('lively'),('marble'),('novice'),('obtain'),('purity'),
('quaint'),('rarely'),('sincro'),('tender'),('umbra'),('united'),('vibrat'),('winnow'),('xenial'),('yearly'),
('zealot'),('allege'),('bounty'),('captor'),('debunk'),('effort'),('fallen'),('gallop'),('hearty'),('insist');
