-- Luz Cifrada SQL Seed
-- Generated: 2026-02-05T16:26:24.527Z
-- Total: 132 hinos

-- =============================================
-- STEP 1: Insert the Hinario
-- =============================================
INSERT INTO hinarios (nome, slug, autor, total_hinos)
VALUES ('O Cruzeiro', 'o-cruzeiro', 'Raimundo Irineu Serra', 132)
ON CONFLICT (slug) DO UPDATE SET total_hinos = EXCLUDED.total_hinos;

-- =============================================
-- STEP 2: Insert all Hinos
-- We need to get the hinario_id first, so we use a subquery
-- =============================================

-- Hino 0: Sol, Lua, Estrela
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  0,
  'Sol, Lua, Estrela',
  'Sol, Lua, Estrela 

A Terra, o Vento e o Mar 

É a Luz do Firmamento 

É só quem eu devo amar 



É só quem eu devo amar 

Trago sempre na lembrança 

É Deus que está no Céu 

Aonde está minha esperança 



A Virgem Mãe mandou 

Para mim esta lição 

Me lembrar de Jesus Cristo 

E esquecer a ilusão 



Trilhar este caminho 

Toda hora e todo dia 

O Divino está no Céu 

Jesus filho de Maria',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Skipping duplicate numero 0: Devo amar aquela Luz

-- Hino 1: Lua Branca
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  1,
  'Lua Branca',
  'Deus te Salve oh! Lua Branca

Da luz tão prateada

Tu sois minha protetora

De Deus tu sois estimada



Oh Mãe Divina do coração

Lá nas alturas onde estás 

Minha Mãe, lá no céu

Dai-me o perdão



Das flores do meu país

Tu sois a mais delicada

De todo o meu coração

Tu sois de Deus estimada



Oh Mãe Divina do coração

Lá nas alturas onde estás 

Minha Mãe, lá no céu

Dai-me o perdão



Tu sois a flor mais bela

Aonde Deus pôs a mão

Tu sois minha advogada

Oh! Virgem da Conceição



Oh Mãe Divina do coração

Lá nas alturas onde estás 

Minha Mãe, lá no céu

Dai-me o perdão



Estrela do Universo

Que me parece um jardim

Assim como sois brilhante

Quero que brilhes a mim



Oh Mãe Divina do coração

Lá nas alturas onde estás 

Minha Mãe, lá no céu

Dai-me o perdão',
  'Valsa',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 2: Tuperci
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  2,
  'Tuperci',
  'Tuperci não me conheces 

Tu não sabes me apreciar

Tu não sabes me compreender

A minha flor cor de Jaci',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 3: Ripi
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  3,
  'Ripi',
  'Ripi, Ripi, Ripi

Ripi, Ripi, Iáiá

Se você não queria

Para que veio me enganar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 4: Formosa
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  4,
  'Formosa',
  'Formosa formosa

Formosa é bem formosa



Formosa é bem formosa

Tarumim tu sois formosa

Formosa é bem formosa

Formosa formosa

Formosa é bem formosa

Tarumim eu estou com sede

Tarumim tu me dá água

Tarumim tu sois mãe d’água

Tarumim tu sois formosa formosa

Formosa é bem formosa',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 5: Refeição
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  5,
  'Refeição',
  'Papai do Céu do coração

Que hoje neste dia 

É quem dá o nosso pão

Graças a Mamãe



Mamãe do Céu do coração

Que hoje neste dia 

É quem dá o nosso pão

Louvado seja Deus',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 6: Papai Paxá
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  6,
  'Papai Paxá',
  'Equiôr, Equiôr, Equiôr

Equiôr que me chamaram

Eu vim beirando a terra

Eu vim beirando o mar



Quando Papai Paxá

Barum Marum mais eu

Saudades, saudades

Saudades de Mamãe



A tua imagem linda

É meus encantos enfim

Neste mundo e no outro

Vós se alembrai de mim



O amor que eu te tenho

Dentro do meu coração

É vós quem me guia

No caminho da salvação



Quando Papai me chamar

Toda vida obedeci

Quando chegar este dia

Eu só tenho que ir',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 7: Dois de Novembro
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  7,
  'Dois de Novembro',
  'A tua alma entrega a Deus

E o teu corpo à terra fria

Jesus te acompanhe

Junto com a Virgem Maria



Tu pedes aos teus amigos

Pelo nome de Jesus

Que te rezem umas preces

Lá no pé da Santa Cruz



Tanto anos que vivestes

Agora vai se retirar

Vai atender ao nosso Pai

Foi quem mandou te chamar



Aqui achou, aqui deixou

Levas contigo o amor

As portas do céu se abrem

Para quem for merecedor',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 8: A Rainha me mandou
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  8,
  'A Rainha me mandou',
  'A Rainha me mandou

Eu rezar para os meus irmãos

Para Ela lá no céu

Alimpar meu coração



A Rainha me mandou

Eu rezar para a humanidade

Para Ela lá no céu

Fazer as vossas vontades



A Rainha me mandou

Eu rezar para os inocentes

Para Ela lá no céu

Rogar ao Onipotente



A Rainha me mandou

Santa paz e alegria

Para Ela lá no céu

Mandar o pão de cada dia',
  'Valsa',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 9: Mãe Celestial
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  9,
  'Mãe Celestial',
  'Eu peço e rogo

Oh Mãe Celestial

Que tudo enquanto eu tenho

É Vós é quem me dá

Oh Mãe Celestial



Eu peço e rogo 

Ao Pai Celestial

Que tudo enquanto eu tenho

É Vós é quem me dá

Oh Pai Celestial



Eu peço e rogo

Oh Mãe Celestial

Que me dê a salvação

E me bote em bom lugar

Oh Mãe Celestial',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 10: Eu devo pedir
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  10,
  'Eu devo pedir',
  'Eu devo pedir

A quem pode me dar

Papai me deu

Sou eu, sou eu



Mamãe me ensina

Eu devo aprender

Na Eternidade

É quem pode me valer



Dos raios do sol

É que me vem a luz

Não devo esquecer-me

Do nome de Jesus



As estrelas pequeninas

Sua luz incandescente

Só Deus, só Deus

Só Deus Onipotente



Vejo a lua nas alturas

Sua luz, seu resplendor

O meu amor emprego em ti

E em Jesus Cristo Salvador',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 11: Unaqui
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  11,
  'Unaqui',
  'Eu estou aqui,

Foi Deus do céu quem me mandou

Sou filho da Virgem Mãe

Lá no céu Jesus Cristo Salvador



Sofreu na cruz

Foi preso e foi amarrado

E quem matou foi os judeus

Na Judéia foram todos perdoados



Eu estou aqui

Neste mundo de ilusão

Eu faço por agradar todos

Neste mundo só me dão ingratidão',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 12: Meu Divino Pai
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  12,
  'Meu Divino Pai',
  'Oh Meu Divino Pai

Só por vós devo chamar

Tantas vezes vos ofendi

E vós me queira perdoar



Vós me queira perdoar

Que eu pequei por inocente

Porque não tinha certeza

Do nosso Deus Onipotente



Oh! Meu Divino Pai

É vós quem me dá a luz

Eu nunca mais hei de esquecer

Do santo nome de Jesus



O povo está iludido 

Por completa ilusão 

Porque não querem acreditar 

Na Mãe de Deus da criação



A laranja é uma fruta

Redonda por vossas mãos

Vós me entrega com certeza

E eu deixar cair no chão',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 13: Estrela Dalva
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  13,
  'Estrela Dalva',
  'Estrela Dalva Vós me dá

Sois divina, sois divina

Sois divina em meu olhar



São felizes os passos meus

Com certeza eu encontrar

Um dia seu resplendor

É só quem eu devo amar



A minha Mãe que me ensinou

No mundo dos pecadores

Tirai-me da ilusão

Para eu ter outro valor',
  'Valsa',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 14: Rogativo dos mortos
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  14,
  'Rogativo dos mortos',
  'São doze horas da noite

Meu irmão se mudou

O sono da eternidade

Deus do céu quem te chamou



Uma hora da madrugada

Meu irmão se mudou

O sono da eternidade

Deus do céu quem te chamou



Duas Horas da madrugada....



São três horas da madrugada...



Quatro horas da madrugada...



Cinco horas da manhã...



São seis horas da manhã...



São sete horas do dia...



São oito horas do dia...



São nove horas do dia

Meu irmão se mudou

O sono da eternidade

Deus do céu quem te chamou



Tantos anos que vivestes

No mundo da ilusão

Eu rogo a Deus do céu

Que te dê o Santo perdão



A divina estrela vem

Para ir te alumiar

Eu rogo a Deus do céu

Que te bote em bom lugar



A virgem Senhora vem

Para ir te acompanhar

Eu rogo à Virgem Mãe

Que te bote em bom lugar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 15: Eu quero ser
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  15,
  'Eu quero ser',
  'Eu quero ser

Filho do meu Pai

Da minha Mãe com os meus irmãos

Que me acompanham amar a Ele

De todo meu coração

Seguindo nesta estrada

Com a verdade na mão



Oh! Virgem Mãe

Oh! Mãe de piedade

Eu quero ser filho de vós

Sigo sempre na verdade



O amor eterno 

Eu devo consagrar

A lua e as estrelas

A terra e o mar

O sol lá nas alturas

Com sua luz de cristal',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 16: A minha Mãe é a Santa Virgem
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  16,
  'A minha Mãe é a Santa Virgem',
  'A minha Mãe é a Santa Virgem

Ela é quem vem me ensinar

Não posso viver sem Ela

Só posso estar onde Ela está



Ela é Mãe de todos nós

Daqueles que procurar

Seguindo neste caminho

Vai chegar onde Ela está



Oh minha Virgem Mãe

Oh Mãe do coração

Eu vivo nesta escola

Para ensinar os meus irmãos



E eles pouco caso fazem 

De aprender com alegria

Porque pensam que não é

Ensinos da Virgem Maria



Ninguém trata de aprender

Só se levam na ilusão

Aqui mesmo neste mundo

Está no mar da escuridão',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 17: Meu Divino Pai do Céu (Confissão)
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  17,
  'Meu Divino Pai do Céu (Confissão)',
  'Meu Divino Pai do Céu

Soberano Criador

Eu sou um filho seu

Neste mundo pecador



Meu Divino Pai do Céu

Meu Soberano Senhor

Perdoai as minhas culpas

Pelo vosso Santo Amor



Meu Divino Pai do Céu

Soberano Onipotente

Perdoai as minhas culpas

E vós perdoe aos inocentes



Eu confesso os meus pecados

E reconheço os crimes meus

Eu a vós peço perdão

Ao meu Divino Senhor Deus',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 18: Equiôr Papai me chama
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  18,
  'Equiôr Papai me chama',
  'Equiôr Papai me chama

Equiôr perante a Si

Equiôr Papai me diz

Equiôr eu sou feliz



Equiôr Mamãe me chama

Equiôr Mamãe me dá

Equiôr Mamãe me ensina

Amar a quem eu devo amar



Eu vivo neste mundo

Com prazer e alegria

Viva Deus no céu

E a Sempre Virgem Maria



Jesus Cristo é o nosso Pai

De grande consolação

Ajudai-me neste mundo

E no outro a salvação',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 19: O amor eternamente
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  19,
  'O amor eternamente',
  'O amor eternamente

Eu desejo publicar

Para ser um filho seu

Fazer bem, não fazer mal



Estou na terra, estou na terra

Estou na terra, eu devo amar

Para ser um filho seu

Fazer bem, não fazer mal



A Virgem Mãe que me ensinou

De vós não devo apartar-me

Para ser um filho seu

Fazer bem, não fazer mal',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 20: Sempre assim
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  20,
  'Sempre assim',
  'Sempre assim eu vou dizer

Sempre assim eu quero ser

Amar a eternidade

Ser fiel até morrer



A minha mãe eternamente

Foi quem me mandou seguir

Não temer este caminho

Para adiante eu ser feliz



Jesus Cristo me mandou

Para sempre amém Jesus

Não temer este caminho

Deus foi quem deu esta luz



Todos seres me arrodeiam

Foi quem me mandou seguir

Para ser eternamente

Sempre assim eu sou feliz



Óh minha Virgem Mãe

Óh Mãe do Redentor

Enchei meu coração

De alegria com primor',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 21: Oh! Meu Divino Pai
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  21,
  'Oh! Meu Divino Pai',
  'Ó meu divino pai

Foi vós foi quem me deu

Eu vim me apresentar

Por ser um filho seu



A minha mãe que me ensinou

Dentro do meu coração

É quem me dá esta verdade

Para expor aos meus irmãos



Piso firme e sigo em frente

Não devemos esmorecer

Para ser eternamente

Sou filho de todos seres



Seguindo esta verdade

Que minha mãe me ensinou

Piso firme com alegria

Sou filho do redentor',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 22: Palmatória
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  22,
  'Palmatória',
  'Porque todos não cumprem

Com dever e obrigação

Conhecer esta verdade

Para chamar meu irmão



Na presença todos são

Na ausência aqui deixou

Não se lembram da firmeza

E da palavra que jurou



Não cumprindo este dever

Está fora da união

Não são firme a meu Deus

E nem leal ao meu irmão



Só existe é fingimento

Fraqueza no coração

Não são firme a meu Deus

E nem unido ao meu irmão



Não cumprindo este dever

É melhor se retirar

Que não é traço de baralho

É melhor não vir pra cá

Que aqui é muito sério

E é preciso respeitar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 23: B.G.
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  23,
  'B.G.',
  'B.G. eu vou chamar

B.G. aqui chegou

B.G. quem te mandou

Foi o nosso Salvador



B.G. vós veio à terra

Para ensinar a verdade

B.G. quem te mandou

A nossa Mãe de piedade



B.G. vós nos quer bem

B.G. vós tem amor

B.G. vós nos defenda

De todos esses terrores',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 24: Canta Praia
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  24,
  'Canta Praia',
  'Canta praia, Canta praia

Canta praia é quem me ensina

Eu sou um filho eterno 

Não devo pensar à toa

Conhecer este poder

Que me traz as coisas boas



Não devo te desprezar

Para ir atrás da ilusão

Que me traz tanta riqueza

E me derriba pelo chão



Devo ser eternamente

Para sempre, amém Jesus

Eu sou um filho eterno

De joelho em uma cruz',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 25: Oferecimento
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  25,
  'Oferecimento',
  'Oh minha Virgem Mãe 

Oh Virgem Mãe de Deus 

Olhai para mim 

Que eu sou um filho seu 



Perdoai as minhas culpas 

Pelo vosso santo amor 

Olhai para mim 

Neste mundo pecador 



Oh minha Virgem Mãe 

Botai-me a vossa bênção 

Olhai para mim 

Neste mundo de ilusão 



Oh minha Virgem Mãe 

É vós quem me dá a luz 

Me dai a salvação 

Para sempre, Amém, Jesus 



Eu ofereço estes cânticos 

Que agora se cantou 

Ao Rei e à Rainha 

Do universo Criador',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 26: Leão Branco
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  26,
  'Leão Branco',
  'Meu Pai foi quem me fez 

Eu devo ter amor 

Sou filho do meu Pai 

Feliz eu devo ser 



Sou filho do meu Pai 

Eu devo ter amor 

Sou filho do meu Pai 

A minha Mãe me acompanhou 



A minha Mãe me acompanhou 

Mandou eu ensinar 

Os que forem filhos dela 

Aprender ao menos a rezar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 27: Seis horas da manhã
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  27,
  'Seis horas da manhã',
  'Seis horas da manhã 

Eu devo cantar 

Para receber 

A meu Pai Divinal 



O pino de meio-dia 

A luz do resplendor 

Eu devo cantar 

A meu Pai Criador 



Seis horas da tarde 

O sol vai se pôr 

Eu devo cantar 

A meu Pai Salvador 



A terra é quem gira 

Para mostrar 

Toda criação 

A meu Pai Divinal',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 28: Cantar ir
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  28,
  'Cantar ir',
  'Eu quero cantar ir

Que me ensina eu seguir

Sou eu, sou eu, sou eu

Sou eu, sou bem feliz



O Divino Pai Eterno

Quem me deu este poder

De ensinar as criaturas

Conhecer e compreender



A Virgem Mãe me deu

O lugar de professor

Para ensinar as criaturas

Conhecer e ter amor



Jesus Cristo me mandou

Para mim viver aqui

Sou eu, sou eu, sou eu

Sou eu, sou bem feliz',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 29: Sol, Lua, Estrela
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  29,
  'Sol, Lua, Estrela',
  'Sol, Lua, Estrela 

A Terra, o Vento e o Mar 

É a Luz do Firmamento 

É só quem eu devo amar 



É só quem eu devo amar 

Trago sempre na lembrança 

É Deus que está no Céu 

Aonde está minha esperança 



A Virgem Mãe mandou 

Para mim esta lição 

Me lembrar de Jesus Cristo 

E esquecer a ilusão 



Trilhar este caminho 

Toda hora e todo dia 

O Divino está no Céu 

Jesus filho de Maria',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 30: Devo amar aquela Luz
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  30,
  'Devo amar aquela Luz',
  'Devo amar aquela luz 

O Divino aonde está 

Para ser um filho seu 

No coração eu devo amar 

No coração eu devo amar a luz 



A Virgem Mãe foi quem me deu 

Para ensinar os meus irmãos 

Para ser um filho seu 

Para ser um filho seu de amor 



No coração este primor 

Conhecer esta verdade 

Deus do Céu foi quem mandou 

Deus do Céu foi quem mandou a luz',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 31: Papai Samuel
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  31,
  'Papai Samuel',
  'Papai Samuel me chama 

Para dizer o que queria 

Para eu viver eternamente 

Junto à Virgem Maria 



Junto à Virgem Maria 

O santo nome de Jesus 

Olho para o firmamento 

O Cruzeiro e a Santa Luz 



Pisei no primeiro degrau 

Para seguir com firmeza 

Dentro do meu coração 

O primor, tanta beleza 



Convidei os meus irmãos 

Para seguir com alegria 

Todos me responderam 

Que ficavam e lá não iam',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 32: Cantei hoje
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  32,
  'Cantei hoje',
  'Cantei hoje, eu cantei hoje 

Cantei hoje com alegria 

Porque tenho uma esperança 

De ver a Virgem Maria 



A Rainha me chamou 

Para mim seguir com Ela 

Para eu amar com firmeza 

Para eu ser um filho Dela 



Para eu ser um filho Dela 

Ter força para ensinar 

O Divino Pai do Céu 

O que eu pedir Ele me dá 



O que eu pedir Ele me dá 

Eu recebo com alegria 

Porque tenho a minha Mãe 

É a Sempre Virgem Maria',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 33: Papai Velho
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  33,
  'Papai Velho',
  'Papai Velho e Mamãe Velha 

Vós me dê o meu bastão 

Sou eu, sou eu, sou eu 

Com a minha caducação 



Até que enfim, até que enfim, 

Até que enfim 

Eu recebi o meu bastão 

Pude me levantar 

Com a minha caducação 



Reduzi meu corpo em pó 

O meu espírito entre flores 

Sou eu, sou eu, sou eu 

Filho do Rei de Amor 



Mamãe Velha sempre dá 

Papai a carinhar 

Sou eu, eu sempre digo 

Eu nasci em Natal',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 34: Estrela brilhante
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  34,
  'Estrela brilhante',
  'Estrela brilhante 

Vós sois a minha luz 

É a Virgem Maria 

E o Menino Jesus 



O Menino Jesus 

Nasceu para ensinar 

Cumprir vossa missão 

Para remir e salvar 



Para remir e salvar 

Ninguém vos conheceu 

Ganhou o vosso nome 

Depois que vós morreu 



Depois que vós morreu 

Todo mundo tem amor 

Depois que assassinaram 

O Mestre ensinador',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 35: Santa Estrela
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  35,
  'Santa Estrela',
  'Vou chamar a Santa estrela 

Para vós vir me guiar 

Iluminar meu pensamento 

O oceano e beira-mar 



A profundeza que vós tem

Consenti-me eu entrar 

Para eu ver tanta beleza 

Para mim acreditar 



O Divino Pai Eterno 

Senhor de todo primor 

Daí a luz ao vosso filho 

Aquele que procurou 



A Rainha minha Mãe 

Que me mandou eu cantar 

E ensinar os meus irmãos 

Aqueles que procurar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 36: Amigo Velho
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  36,
  'Amigo Velho',
  'Chegou seu Amigo Velho 

Chegou sem ser chamado 

Para sempre, amém Jesus 

Para sempre ser lembrado 

Para sempre, amém Jesus 

Para sempre ser lembrado 



A minha Mãe que me mandou 

Eu sou filho estimado 

Quem seguir na minha linha 

Segue limpo e não errado 

Quem seguir na minha linha 

Segue limpo e não errado 



O Patriarca São José 

Todo mundo se esqueceu 

Jesus filho de Maria 

Com o Divino Senhor Deus 

Jesus filho de Maria 

Com o Divino Senhor Deus 



O Patriarca São José 

Vós esposo de Maria 

Que o Divino Pai lhe deu 

Para vossa companhia



Que o Divino Pai lhe deu 

Para vossa companhia 



Viveram honestamente 

Dentro da soberania 

Jesus quando nasceu 

Foi na vossa companhia 

Jesus quando nasceu 

Foi na vossa companhia 



Aconselho a todo mundo 

Para seguir na verdade 

Saindo desta linha 

Não espere ser chamado 

Saindo desta linha 

Não espere ser chamado 



O Divino Senhor Deus 

Foi quem me mandou dizer 

Que nós somos filhos eternos 

Somos, somos e deve ser

Que nós somos filhos eternos 

Somos, somos e deve ser',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 37: Maresia
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  37,
  'Maresia',
  'Maresia minha vida 

Para mim acreditar 

O azul do firmamento 

E as estrelas a me guiar 



Soberano Pai Eterno 

Que me mandou eu cantar 

Para eu ter toda firmeza 

Para sempre eu vos amar 



A minha Mãe que me ensinou 

Que me mandou eu seguir 

Para sempre, amém Jesus 

Para sempre eu ser feliz 



Tu não deves esquecer 

O amor que recebeu 

Quando chegou nesta casa 

A verdade conheceu',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 38: Flor de Jagube
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  38,
  'Flor de Jagube',
  'Eu venho da floresta 

Com meu cantar de amor 

Eu canto com alegria 

A Minha Mãe que me mandou 



A Minha Mãe que me mandou 

Trazer Santa Doutrina 

Meus irmãos todos que vem 

Todos trazem este ensino 



Todos trazem este ensino 

Para aqueles que merecer 

Não estando nesta linha 

Nunca é de conhecer 



Estando nesta linha 

Deve ter amor 

Amar a Deus no céu 

E à Virgem que nos mandou',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 39: Centro Livre
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  39,
  'Centro Livre',
  'Centro livre, Centro livre 

É preciso ter amor 

A minha Mãe que me mandou 

A minha Mãe que me mandou 



Minha Mãe prenda querida 

Minha Mãe prenda querida 

Minha Mãe prenda querida 



Estou com vós, eterna vida 

Estou com vós, eterna vida 

Estou com vós, eterna vida 



Currupipipiraguá 

Eu devo chamar aqui 

Eu devo chamar aqui',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 40: Eu canto nas alturas
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  40,
  'Eu canto nas alturas',
  'Eu canto nas alturas 

A minha voz é retinida 

Porque eu sou filho de Deus 

E tenho a minha Mãe querida 



A minha Mãe que me ensinou 

A minha Mãe que me mandou 

Eu sou filho de vós 

Eu devo ter amor 



Com amor tudo é verdade 

Com amor tudo é certeza 

Eu vivo neste mundo 

Sou dono da riqueza 



A minha Mãe é a Lua Cheia 

É a estrela que me guia 

Estando bem perto de mim 

Junto a mim é prenda minha 



A riqueza todos têm 

Mas é preciso compreender 

Não é com fingimento 

Todos querem merecer',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 41: Estrela D'água
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  41,
  'Estrela D''água',
  'Vou chamar a Estrela D''água 

Para vir me iluminar 

Para vir me iluminar 

Para vir me iluminar 



Dai-me força e dai-me amor 

Dai-me força e dai-me amor 

Dai-me força e dai-me amor 

Dai-me força e dai-me amor 



Dá licença eu entrar 

Dá licença eu entrar 

Nas profundezas do mar 

Nas profundezas do mar 



Foi meu Pai quem me mandou 

Foi meu Pai quem me mandou 

Conhecer todos primores 

Conhecer todos primores 



Dai-me força e dai-me amor 

Dai-me força e dai-me amor 

Dai-me força e dai-me amor 

Dai-me força e dai-me amor 



A minha Mãe que me ensinou 

A minha Mãe que me ensinou 

Conhecer todos primores 

Conhecer todos primores 



Com amor no coração 

Para cantar com os meus irmãos 

Para cantar com os meus irmãos 

Para cantar com os meus irmãos',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 42: A Terra aonde estou
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  42,
  'A Terra aonde estou',
  'A terra aonde estou 

Ninguém acreditou 

Dai-me amor, dai-me amor 

Dai-me o Pão do Criador 



A minha Mãe que me ensinou 

Quem me deu este primor 

Dai-me amor, dai-me amor 

Dai-me o Pão do Criador 



A riqueza todos têm 

Mas ninguém quer acreditar 

Dai-me amor, dai-me amor 

Livrai-me de todo mal',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 43: O Prensor
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  43,
  'O Prensor',
  'O Prensor que te aparece 

A pátria vai abraçar 

Vai pra guerra vai perder 

A vida que Deus te dá 



Quem te fez não te mandou 

O amor não empregou 

O teu Pai não conheceu 

Vais derramar o teu sangue 

Que o Divino Pai te deu 



Meu Pai Divino do céu 

Abrandai estes terrores 

Vós tenha compaixão 

Dos vossos filhos pecadores 



Sempre, sempre, sempre, sempre 

Eu peço à Virgem Maria 

Defendei os inocentes 

De toda essa orfandia',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 44: A Virgem Mãe que me ensinou
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  44,
  'A Virgem Mãe que me ensinou',
  'A Virgem Mãe que me ensinou 

A Virgem Mãe foi quem me deu 

Alegrai meu coração 

Para eu amar ao Senhor Deus 



Meu Divino Senhor Deus 

É Pai de toda nação 

Defendei os vossos filhos 

De toda escuridão 



A Escuridão é tão terrível 

Que ninguém pode enxergar 

Vós me dê a Santa Luz 

Para eu poder navegar 



A Virgem Mãe é soberana 

Ela é Rainha do Mar 

Quando vê nós na aflição 

Ela vem nos consolar 



Consolai, oh Mãe Divina 

Jesus Cristo Redentor 

É quem pode nos livrar 

Neste mundo pecador',
  'Valsa',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 45: Eu estava em pé firmado
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  45,
  'Eu estava em pé firmado',
  'Eu estava em pé firmado 

Olhando para o firmamento 

Uma luz me apareceu 

Iluminou meu pensamento 



Iluminou meu pensamento 

E perguntou se eu conhecia 

Nos meus olhos eu enxerguei 

A Sempre Virgem Maria 



Meu Pai é carinhoso 

Ele não quer mal a ninguém 

Devo amar com firmeza 

A meu Pai que nos quer bem 



A minha Mãe é tão formosa 

Me dá luz e o clarão 

Devo amar eternamente 

E consagrar no coração 



Sou filho do meu Pai 

Eu devo ser atencioso 

Abraçar a todo mundo 

E não querer ser orgulhoso 



Eu vivo alegre sempre 

O meu consolo é só cantar 

Porque tenho uma esperança 

De breve me separar 



De breve me separar 

Com Deus e a Virgem Maria 

Talvez vocês não achem 

Outro irmão com alegria',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 46: Eu balanço
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  46,
  'Eu balanço',
  'Eu balanço, e eu balanço 

E eu balanço tudo enquanto há 

Eu chamo o sol, chamo a lua 

E chamo estrela 

Para todos vir me acompanhar 



Eu balanço, e eu balanço 

E eu balanço tudo enquanto há 

Eu chamo o vento, chamo a terra 

E chamo o mar 

Para todos vir me acompanhar 



Eu balanço, e eu balanço 

E eu balanço tudo enquanto há 

Chamo o cipó, chamo a folha 

E chamo a água 

Para unir e vir me amostrar 



Eu balanço, e eu balanço 

E eu balanço tudo enquanto há 

Tenho prazer, tenho força 

E tenho tudo 

Porque Deus Eterno é quem me dá',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 47: Sete Estrelas
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  47,
  'Sete Estrelas',
  'Eu vi no Sete-Estrelas 

Um rosto superior 

Eu digo é com certeza 

Que a Rainha me mostrou 



A Rainha me mostrou 

Para mim reconhecer 

O nome que tanto se fala 

E ninguém sabe compreender 



Ninguém sabe compreender 

Com amor, com alegria 

A pessoa de Jesus Cristo 

Jesus filho de Maria 



Jesus filho de Maria 

Desde a hora que nasceu 

Começou seu sofrimento 

Até o dia que morreu 



Ele morreu neste mundo 

Para nós acreditar 

Para nós também sofrer 

Para poder alcançar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 48: A Rainha da Floresta
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  48,
  'A Rainha da Floresta',
  'A Rainha da Floresta 

Ela veio me acompanhar 

Todo mundo ri e graceja 

Para depois ir chorar 



Tu perdestes a tua luz 

Que eu te dei com tanto amor 

Não foi a falta de conselho 

Tu mesmo nunca ligou 



Vai chorar de arrependido 

Quando um dia se lembrar 

Que eu perdi a minha fortuna 

Que eu tinha para alcançar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 49: Minha Mãe é Mãe de todos
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  49,
  'Minha Mãe é Mãe de todos',
  'A Minha mãe é Mãe de todos 

Que quiser ser filho Dela 

Ela roga por nós todos 

Mas ninguém roga por Ela 



O Divino Pai Eterno 

Me deu um grande poder 

Eu como filho de vós 

Vou eterno agradecer 



Vou eterno agradecer 

Para sempre eu quero estar 

Encostado a minha Mãe 

Para sempre eu vos amar 



Para sempre eu vos amar 

E eterno agradecer 

Vós me dê a Eterna Glória 

Conforme eu merecer',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 50: Salomão
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  50,
  'Salomão',
  'Salomão disse para mim 

Nesta eu vou me assinar 

Que esta é a verdade pura 

No mundo não tem igual 



A professora que te ensina 

Tu soubeste aprender 

Trabalhaste muitos anos 

Para hoje receber 



Sois filho das Águas Brancas 

E é preciso trabalhar 

Segue sempre o teu destino 

E deixa quem quiser falar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 51: Eu devo amar
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  51,
  'Eu devo amar',
  'Eu devo amar no coração 

A Virgem Mãe foi quem me deu 

Para eu amar ao Senhor Deus 



Oh Virgem Mãe, Divina Mãe 

Vós nos perdoe os filhos seus 

Para nós amar ao Senhor Deus 



Divino Pai, Rei Criador 

Vós nos perdoe nós pecadores 

Para nós amar com grande amor',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 52: A Febre do Amor
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  52,
  'A Febre do Amor',
  'A febre do amor 

É preciso compreender 

Trazer sempre na memória 

Este divino poder 



Minha Mãe, minha Mãezinha 

Vós me dá todo valor 

Não sei se eu mereço 

Para sempre eu ter amor 



Completei o meu Cruzeiro 

Com cento e trinta e duas flores 

Se tiver alguma a mais 

Vós acrescente o meu amor',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 53: Virgem Mãe Divina
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  53,
  'Virgem Mãe Divina',
  'Oh Virgem Mãe Divina 

Eu peço um conforto seu 

Com vós, com vós, com vós 

Com Deus 



Meu Divino Pai Eterno 

Eu peço um conforto seu 

Com vós, com vós, 

Sou filho seu 



Jesus Cristo Redentor 

Eu peço um conforto seu 

Com vós, com vós, 

O ensino seu',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 54: Pedi força a meu pai
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  54,
  'Pedi força a meu pai',
  'Pedi força a meu Pai 

Ele me deu com amor 

Para mim ensinar 

Neste mundo pecador 



A minha mãe que me ensinou 

Mandou eu ensinar 

A todos meus irmãos 

Aqueles que acreditar 



Surubina, minha flor 

Jardim da minha infância 

A base deste mundo 

É o verde, minha esperança',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 55: Disciplina
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  55,
  'Disciplina',
  'Vou chamar os meus irmãos 

Quem quiser venha escutar 

Se ficar firme apanha 

E se correr vai sofrer mais 



Minha Mãe, minha Rainha 

Com amor ninguém não quis 

Apanhar para obedecer 

Na estrada para seguir 



Mestre bom ninguém não quis 

E não souberam aproveitar 

Apanhar para obedecer 

Para poder acreditar 



Fica assim a disciplina 

Quem quiser pode correr 

Se eu falar do meu irmão 

Estou sujeito a morrer',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 56: Santa Estrela que me guia
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  56,
  'Santa Estrela que me guia',
  'Santa estrela que me guia 

Vós me dê a Santa Luz 

Os três Reis do Oriente 

Que visitaram Jesus 



Viva Deus lá nas alturas 

Viva a noite de Natal 

Viva o dono deste dia 

Que nós vamos festejar 



Já fazem muitos anos 

Que meu Jesus nasceu 

Vamos todos com alegria 

Festejar ao Senhor Deus 



Meu Divino Senhor Deus 

A vós eu vou pedir 

Vós nos dê o vosso conforto 

Para todos nós seguir 



A Sempre Virgem Maria 

É quem vem nos ensinar 

Para nós cantar com amor 

Nesta noite de natal',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 57: Eu convido os meus irmãos
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  57,
  'Eu convido os meus irmãos',
  'Eu convido os meus irmãos 

Que queiram me acompanhar 

Para nós cantar um pouco 

Nesta noite de natal 



Eu convido os meus irmãos 

Para cantar com alegria 

Para nós ir festejar 

A Jesus filho de Maria 



Eu convido os meus irmãos 

Todo aquele que quiser 

Para nós ir festejar 

A Jesus, Maria e José 



Minha Sempre Virgem Maria 

Vós só pode é se alegrar 

Porque todos nós pedimos 

Para vós nos ajudar 



O sonhar é uma verdade 

Igualmente à luz do dia 

Reparem neste mundo 

O sonho da Virgem Maria 



Meu Divino Senhor Deus 

Vós me dê a Santa Luz 

Para sempre eu festejar 

O dia que nasceu Jesus',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 58: Todo mundo quer ser filho
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  58,
  'Todo mundo quer ser filho',
  'Todo mundo quer ser filho 

De Deus da criação 

Por quê que tu te esquece 

De rezar para o teu irmão 



Meu irmão que se mudou 

Saiu com alegria 

Eu rogo a Deus por ele 

E a Sempre Virgem Maria 



Jesus Cristo Redentor 

Eu peço o meu perdão 

Que eu nunca mais hei de esquecer 

De rezar para o meu irmão 



Meu irmão que já saiu 

Do mundo do pecado 

Eu rogo a Deus do céu 

Que ele seja perdoado',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 59: O Divino Pai Eterno
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  59,
  'O Divino Pai Eterno',
  'O Divino Pai Eterno 

Quem me fez, quem me criou 

Para eu ser um filho seu 

No jardim de Belas Flores 



A minha Mãe que me ensinou 

Mandou eu ensinar 

Para eu ser um filho seu 

É preciso eu vos amar 



Jesus Cristo veio ao mundo 

Replantar Santa Doutrina 

Os descrentes assassinaram 

E ainda hoje é quem me ensina 



A luz da flor mimosa 

Deste jardim perfumoso 

Havendo força de vontade 

Nada para nós é custoso',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 60: Laranjeira
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  60,
  'Laranjeira',
  'Cada um tem um cabedal 

De acordo que Deus lhe dá 

Para viver neste mundo 

É preciso procurar 



{Laranjeira}



Laranjeira carregada 

De laranjas boas 

Assim é algumas pessoas 



Vou vivendo e vou dizendo 

De acordo o que vai chegar 

O ouro que tem na terra 

É a luz que brilha mais 



{Laranjeira}



Laranjeira carregada 

De laranjas boas 

Assim é algumas pessoas',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 61: A Rainha da Floresta
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  61,
  'A Rainha da Floresta',
  'A Rainha da Floresta 

Vós venha receber 

Estes cânticos aqui na mata 

Que eu venho oferecer 



Vós mandou para mim 

Ensinar os meus irmãos 

Estamos todos reunidos 

Com amor no coração 



Eu apresento os meus trabalhos

Conforme eu aprendi 

Estamos todos reunidos 

Vós faça todos feliz',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 62: Quem quiser seguir comigo
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  62,
  'Quem quiser seguir comigo',
  'Quem quiser seguir comigo 

É preciso me ouvir 

Para seguir neste caminho 

Para adiante ser feliz 



A minha Mãe que vai na frente 

Com a luz do resplendor 

Para ensinar os meus irmãos 

Para todos ter amor 



Jesus Cristo me mandou 

Para mim vir ensinar 

Para seguir neste caminho 

Para remir e salvar 



O poder está comigo 

E a verdade eu vou mostrar 

Para ensinar os meus irmãos 

Para todos enxergar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 63: Princesa Soloína
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  63,
  'Princesa Soloína',
  'Eu peço a Jesus Cristo 

Que abra este caminho 

Para mim seguir meus passos 

Com amor, com alegria 



Com amor, com alegria 

Aprender o que vós me ensina 

Para todos compreenderem 

Que existe um poder divino 



Segui neste caminho 

Tomei uma direção 

Adiante eu encontrei 

A Virgem da Conceição 



Mais adiante uma princesa 

Chamada Soloína 

Ela foi disse para mim 

É nessa estrada que se ensina



Segui minha jornada 

Adiante eu encontrei 

Um poder divino 

Aí aonde eu fiquei 



Aí aonde eu fiquei 

E pude compreender 

Quem seguir neste caminho 

Todos têm que aprender',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 64: Eu peço a Jesus Cristo
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  64,
  'Eu peço a Jesus Cristo',
  'Eu peço a Jesus Cristo 

Eu peço à Virgem Maria 

Eu peço a meu Pai Eterno 

Vós me dê a Santa Luz 



Eu sigo na verdade 

Eu sigo o meu caminho 

Eu sigo é com alegria 

Que eu sou filho da Rainha 



A força da floresta 

A força do astral 

A força está comigo 

A minha Mãe é quem me dá 



Eu chamo o Rei Titango 

Eu chamo o Rei Agarrube 

Eu chamo o Rei Tintuma 

E eles vem lá do astral 



A força é divina 

A força tem poder 

A força neste mundo 

Ela faz estremecer 



Sempre vivo neste mundo 

Viva todos que quiser 

Viva Deus lá nas alturas 

E o Patriarca São José 



Eu dou viva à Virgem Mãe 

Viva suas companheiras 

Nos proteja neste mundo 

Vós como Mãe verdadeira 



O sol que veio à terra 

Para todos iluminar 

Não tem bonito e nem feio 

Ele ilumina todos iguais 



A lua tem três passagens 

Todas três nela se encerra 

É preciso compreender 

Que ela é quem domina a terra',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 65: Eu vou cantar
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  65,
  'Eu vou cantar',
  'Eu vou cantar, eu vou cantar 

De joelho em uma cruz 

Eu vou louvar ao Senhor Deus 

Foi quem me deu esta luz 



Esta luz é da Floresta 

Que ninguém não conhecia 

Quem veio me entregar 

Foi a Sempre Virgem Maria 



Quando Ela me entregou 

Eu gravei no coração 

Pra replantar Santa Doutrina 

E ensinar aos meus irmãos 



Eu agora recebi 

Este prêmio de valor 

De São José e da Virgem Mãe 

De Jesus Cristo Redentor 



Tenho fé de vencer 

E ganhar com os meus ensinos 

Porque Deus é soberano 

E Ele é quem nos determina',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 66: São João
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  66,
  'São João',
  'São João era menino 

Só vivia nas Campinas 

Pastorando as suas ovelhas 

Pregando a Santa Doutrina 



Pregando a Santa Doutrina 

O amor Ele empregou 

Atrás dele veio Jesus 

Toda verdade afirmou 



Toda verdade afirmou 

Gravou no coração 

Ambos foram batizados 

No Rio de Jordão 



No Rio de Jordão 

Ambos tiveram em pé 

Um é filho de Maria 

O outro é filho de Isabel 



Jesus tava vestido 

Com sua roupa cor de cana 

Dando viva ao Pai Eterno 

E Viva a Senhora Santana',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 67: Olhei para o firmamento
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  67,
  'Olhei para o firmamento',
  'Olhei para o firmamento 

Vi as estrelas brilhar 

Tinha uma mais bonita 

De um trono imperial 



Este trono imperial 

Foi Deus quem me mostrou 

Para eu amar a Virgem Mãe 

E a Jesus Cristo Redentor 



Todo dia eu canto e peço 

Para limpar meu coração 

Para eu seguir neste caminho 

E deixar a ilusão 



Sempre eu digo aos meus irmãos 

Que trate o tempo mais sério 

Que o tempo não engana 

E não tem dó desta matéria',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 68: Chamei lá nas alturas
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  68,
  'Chamei lá nas alturas',
  'Chamei lá nas alturas 

Para o Divino vir à terra 

Trazer a Santa Paz 

Que não precisamos de guerra 



Vou louvar bendito é o fruto 

Do vosso ventre Jesus 

Foi quem veio a este mundo 

Nos trazer a Santa Luz 



Vós nos dê o vosso pão 

O vosso ensino divino 

Vós me dê a Santa Luz 

Para eu seguir o meu destino 



Para eu seguir o meu destino 

Neste mundo com certeza 

Que Deus não abandona 

Quem ama com firmeza',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 69: Passarinho
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  69,
  'Passarinho',
  'Passarinho está cantando 

Discorrendo o ABC 

E eu discorro a tua vida 

Para todo mundo ver 



Passarinho está cantando 

Canta na mata deserta 

Dizendo para o caçador 

Você atira e não acerta 



Passarinho Verde canta 

Bem pertinho para tu ver 

Sou Passarinho e tenho dono 

E o meu dono tem poder 



Passarinho Verde canta 

Com alegria e com amor 

Sou Passarinho e canto certo 

E com certeza aqui estou',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 70: Firmeza
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  70,
  'Firmeza',
  'Firmeza, firmeza 

Firmeza eu peço a Deus 

Aplanai meu coração 

Eu quero ser um filho seu

Aplanai meu coração 

Eu quero ser um filho seu 



Firmeza, firmeza 

Eu recebo com alegria 

A quem eu peço firmeza 

É a Sempre Virgem Maria

A quem eu peço firmeza 

É a Sempre Virgem Maria 



Firmeza, firmeza 

Eu recebo é com amor 

A quem eu peço firmeza 

É a Jesus Cristo Redentor

A quem eu peço firmeza 

É a Jesus Cristo Redentor 



Firmeza, firmeza 

Para seguir na Santa Luz 

A quem eu peço firmeza 

É ao coração de Jesus  

A quem eu peço firmeza 

É ao coração de Jesus 



Firmeza, firmeza 

Firmeza no pensamento 

A quem eu peço firmeza 

É ao nosso Deus Onipotente 

A quem eu peço firmeza 

Para ser feliz eternamente',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 71: Chamo o tempo
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  71,
  'Chamo o tempo',
  'Chamo o Tempo, eu chamo o Tempo 

Para ele vir me ensinar 

Aprender com perfeição 

Para eu poder ensinar 



Os que forem obedientes 

Tratar de aprender 

Para ser eternamente 

Para Deus lhe atender 



Depois que o Tempo chega 

Ninguém quis aprender 

Depois que refletir 

É que vai se arrepender 



Firmeza no pensamento 

Para seguir no caminho 

Embora que não aprenda muito 

Aprenda sempre um bocadinho',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 72: Silencioso
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  72,
  'Silencioso',
  'Silencioso 

eu chego no jardim 

Eu peço à Virgem Mãe 

Que vós tenha pena de mim 



Oh Virgem Mãe 

Vós sois Mãe do Redentor 

Perdoai os vossos filhos 

Pelo vosso Santo Amor 



Silencioso 

eu chego no jardim 

Eu peço à Virgem Mãe 

Que vós tenha pena de mim 



Divino Pai 

Soberano Criador 

Perdoai os vossos filhos 

Neste mundo pecador



Silencioso

Eu chego no jardim

Eu peço à Virgem Mãe

Que Vós tenha pena de mim.',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 73: Eu vi a Virgem Mãe
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  73,
  'Eu vi a Virgem Mãe',
  'Eu vi a Virgem Mãe 

Nas alturas onde Ela está 

Me mandou que eu afirmasse 

A firmeza eu afirmar 



A lua é quem dá força 

Para a terra criadora 

Quero que vós me protejas 

Vós como Mãe protetora 



O Divino Pai Eterno 

Soberano Onipotente 

Quero que vós me dê forças 

Para ensinar esta gente 



A Sempre Virgem Maria 

É na terra, é no astral 

Aqueles que for rebeldes 

Precisa disciplinar 



Eu ensino é com amor 

É com firmeza e lealdade 

Quando vem falar comigo 

Sempre trazem a falsidade 



Isto é deles não é meu 

Faço por não compreender 

Depois eles saem dizendo 

Que o Mestre não tem saber',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 74: Só eu cantei na barra
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  74,
  'Só eu cantei na barra',
  'Só eu cantei na barra 

Que fiz estremecer 

Se tu queres vida eu te dou 

Que ninguém não quer morrer 



A morte é muito simples 

Assim eu vou te dizer 

Eu comparo a morte 

É igualmente ao nascer 



Depois que desencarna 

Firmeza no coração 

Se Deus te der licença 

Volta a outra encarnação 



Na terra como no céu 

É o dizer de todo mundo 

Se não preparar o terreno 

Fica espírito vagabundo',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 75: As Estrelas
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  75,
  'As Estrelas',
  'As estrelas já chegaram 

Para dizer o nome seu 

Sou eu, sou eu, sou eu 

Sou eu um filho de Deus 



As estrelas me levaram 

Para correr o mundo inteiro 

Pra conhecer esta verdade 

Para poder ser verdadeiro 



Eu subi serra de espinhos 

Pisando em pontas agudas 

As estrelas me disseram 

No mundo se cura tudo 



As estrelas me disseram 

Ouve muito e fala pouco 

Para poder compreender 

E conversar com meus caboclos 



Os caboclos já chegaram 

De braços nus e pés no chão 

Eles trazem remédios bons 

Para curar os cristãos',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 76: A Virgem Mãe é soberana
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  76,
  'A Virgem Mãe é soberana',
  'A Virgem Mãe é Soberana 

Nas alturas onde Ela está 

Socorrei um filho seu 

Que está no mundo a reclamar 



Chora, chora, chora, chora 

E este choro tem razão 

Tanto tempo que viveu 

E nunca pediu o perdão 



Tanto tempo que viveu 

No mundo de provação 

De Deus tu te esqueceu 

E só é bom a ilusão 



Eu estava dentro da mata 

Debaixo de um arvoredo 

Tudo tem, tudo tem 

No mundo não há segredo 



Eu digo de mim para ti 

E para os outros que eu não estou vendo 

Quando eu acabo de dizer 

Todo mundo está sabendo',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 77: Chamo e sei
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  77,
  'Chamo e sei',
  'Chamo e sei, eu chamo e sei 

Chamo e sei aonde está 

Chamo e sei, eu chamo e sei 

Eu chamo e sei e vou mostrar 



A verdade é minha vida 

A minha Mãe é quem me dá 

Para eu conhecer esta verdade 

Para saber aonde está 



Vou rezar as minhas preces 

Cumprir minha obrigação 

Oferecer ao Pai Eterno 

Que é o Senhor da Criação',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 78: Das virtudes
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  78,
  'Das virtudes',
  'Das virtudes em que cheguei 

Canto ensino, vem comigo 

O poder que Deus me dá 

Para este mundo eu doutrinar 



Doutrinar o mundo inteiro 

Para todos aprender 

Castigar severamente 

Quem não quiser obedecer 



Canto ensino é com amor 

Com prazer e alegria 

Obedecendo ao Pai Eterno 

E a Sempre Virgem Maria 



As palavras que eu disser 

Aqui perante a este poder 

Estão escritas no astral 

Para todo mundo ver 



Sigo firme a minha linha 

Sem a nada eu temer 

Porque eu sou filho de Deus 

E confio neste poder 



Dou licença e dou pancada 

Aqui eu faço a minha justiça 

Precisa nós acabar 

Com o correio da má notícia',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 79: Jardineiro
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  79,
  'Jardineiro',
  'Minha Mãe, minha Rainha 

Foi Ela que me entregou

Para mim ser jardineiro 

No Jardim de Belas Flores 



No Jardim de Belas Flores 

Tem tudo que procurar 

Tem primor e tem beleza 

Tem tudo que Deus me dá 



Todo mundo recebe 

As flores que vem de lá 

Mas ninguém presta atenção 

Ninguém sabe aproveitar 



Para zelar este jardim 

Precisa muita atenção 

Que as flores são muito finas 

Não podem cair no chão 



O Jardim de Belas Flores 

Precisa sempre aguar 

Com as preces e os carinhos 

Ao nosso Pai Universal',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 80: Chamo a Força
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  80,
  'Chamo a Força',
  'Chamo a força, eu chamo a força 

A força vem nos amostrar 

Treme a terra e balanceia 

E vós não sai do seu lugar 



Treme a terra, treme a terra 

Treme a terra e geme o mar 

Ainda tem gente que duvida 

Do poder que vós me dá 



Aqui dentro da verdade 

Tem uns certos mentirosos 

Que caluniam os seus irmãos 

Para se tornar muito viçosos 



Mas ninguém não se alembra 

Que chamou o Mestre mentiroso 

Devagarinho vai chegando 

E quem chamou é quem vai ficando',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 81: Professor
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  81,
  'Professor',
  'Aqui tem um professor 

Que vai deixar de ensinar 

Que ele ensina, ninguém faz caso 

E só lêem de diante para trás 



Só lêem de diante para trás 

Mas ele não ensina assim 

Ele ensina é direitinho 

Mas ninguém não faz assim 



Se todos assim fizessem 

Estavam um pouco adiantados 

Eram servos de Deus 

E do povo bem estimado 



Eu entrei em conferência 

Para deixar de ensinar 

A Virgem Mãe me disse 

Ninguém não pode obrigar 



Se ensina e ninguém faz caso 

Ninguém trata de aprender 

Depois não se admirem 

De tudo que aparecer 



Todos mandam em sua casa 

Eu também mando na minha 

Todos ficam sem aprender 

Eu fico com a minha Rainha',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 82: Campineiro
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  82,
  'Campineiro',
  'Sou jardineiro e sou campineiro 

Tenho tudo que Mamãe me dá 

No jardim eu tenho as flores 

E nas Campinas eu andava atrás 



Sou campineiro e sou verdadeiro 

E é preciso eu viajar 

Que o poder de Deus é grande 

E eu desejo alcançar 



Me acho fraco e cansado 

De lutar com rebeldia 

Fazer gosto a quem não tem 

Na esperança de um dia 



Digo adeus aos meus amigos 

Até um dia final 

Se Deus e a Virgem Mãe 

Me der licença eu voltar 



Digo adeus a todos e todas 

E ninguém me respondeu 

Todos ficam em seus lugares 

E quem se retira sou eu',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 83: O Divino Pai Eterno
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  83,
  'O Divino Pai Eterno',
  'O Divino Pai Eterno 

Foi quem me mandou dizer 

Que eu avisasse aos meus irmãos 

O que vai acontecer 



Firmeza no pensamento 

Para seguir neste amor 

Aqui dentro da verdade 

Ela mostra o seu valor 



A minha Mãe que me ensinou 

Com o nome de Jesus 

É quem nos mostra esta verdade 

É quem nos dá a Santa Luz 



Vou seguir, vou te deixar 

Este mundo de ilusão 

Vou para onde Deus quiser 

Com a Virgem da Conceição',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 84: Ia guiado pela Lua
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  84,
  'Ia guiado pela Lua',
  'Ia guiado pela lua 

E as estrelas de uma banda 

Quando eu cheguei 

em cima de um monte 

Eu escutei um grande estrondo 



Esse estrondo que eu ouvi 

Foi Deus do Céu foi quem ralhou 

Dizendo para todos nós 

Que tem poder superior 



Eu estava passeando 

Na praia do mar 

Escutei uma voz 

Mandaram me buscar 



Aí eu botei os olhos 

Aí vem uma canoa 

Feita de ouro e prata 

E uma Senhora na proa 



Quando Ela chegou 

Mandou eu embarcar 

Ela disse para mim 

Nós vamos viajar 



Nós vamos viajar 

Para o ponto destinado 

Deus e a Virgem Mãe 

Quem vai ao nosso lado 



Quando nós chegamos 

Nas Campinas desta flor 

Esta é a riqueza 

Do nosso Pai Criador',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 85: Vou seguindo
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  85,
  'Vou seguindo',
  'Vou seguindo, eu vou seguindo 

Cantando as minhas doutrinas 

A Virgem Mãe é soberana 

Minha Mãe que nos ensina 



Vou seguindo, eu vou seguindo 

Vamos ver se nós acerta 

O caminho de Jesus Cristo 

Aonde andou com seus profetas 



Na casa da Virgem Mãe 

De Jesus Cristo Redentor 

Cantamos manos cantamos 

Consagrando este amor 



Na casa de Jesus Cristo 

Ele mandou para nós cantar 

Para louvar ao Pai Eterno 

É quem tem para nos dar 



É quem tem para nos dar 

Para mim com os meus irmãos 

É quem dá a todos nós 

A eterna salvação',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 86: Eu vim da minha armada
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  86,
  'Eu vim da minha armada',
  'Eu vim da minha armada

Trazer fé e amor

A minha mãe que me mandou

Eu ficar firme aonde estou



Vou seguindo os meus passos

Se eu achar firmeza eu vou

Não despreza os teus irmãos

Mostra tua luz de amor



Sou filho da verdade

Do poder superior

A minha mãe que me mandou

Trazer fé e amor',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 87: Deus, Divino Deus
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  87,
  'Deus, Divino Deus',
  'Deus, Divino Deus 

Soberano luz de amor 

É o Poder Universal 

É a força superior 



Vamos, vamos meus irmãos 

Vamos todos nós cantar 

Para Deus dar nossa saúde 

A Virgem Mãe nos perdoar 



Eu digo é com firmeza 

Dentro do meu coração 

Que Jesus Cristo está conosco 

É quem nos dá as instruções',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 88: Chamo Estrela
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  88,
  'Chamo Estrela',
  'Chamo Estrela, chamo Estrela 

Chamo Estrela, Estrela vem 

Ela vem me ensinar 

O amor de quem quer bem 



O amor de quem quer bem 

É a saúde e o bem-estar 

Consagrando este amor 

Para sempre não faltar 



Para sempre, para sempre 

Amigo do meu irmão 

Que ele é a minha luz 

Neste mundo de ilusão',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 89: Eu canto, eu digo
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  89,
  'Eu canto, eu digo',
  'Eu canto eu digo 

Dentro do poder divino 

Porque Deus é quem me dá 

Para trazer estes ensinos 



A minha Mãe que me mandou 

Trazer fé e amor 

Repartir com meus irmãos 

Para ser a mesma flor 



Jesus Cristo me mandou 

Para mim vir ensinar 

Replantar Santas Doutrinas 

E Deus te dá um bom lugar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 90: No jardim mimosa flor
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  90,
  'No jardim mimosa flor',
  'No jardim mimosa flor 

Para sempre estou aqui 

Para ser filho de Deus 

Não precisa ser ruim 



Todo mundo é muito bom 

Mas não quer se condoer 

Se fogem da caridade 

E depois não quer sofrer 



O caminho torto errado 

E daqui ninguém quer ser 

A verdade eu mostro a todos 

Que souber me compreender 



Aqui dentro da verdade 

A minha Mãe que me ensinou 

Me dá força e me dá brilho 

Para sempre eu ter valor',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 91: Choro muito
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  91,
  'Choro muito',
  'Choro muito e lamento 

Tudo que já se passou 

Deixo tudo saudosamente 

E vou viver no meio das flores 



Vou viver no meio das flores 

Junto com a Virgem Maria 

Os terrores que aparecem 

É essa grande rebeldia 



Vamos todos meus irmãos 

Vamos rezar com amor 

Para Deus e a Virgem Mãe 

Nos defender destes terrores 



Sou filho da Virgem Mãe 

Reconheço este poder 

Chamo a força, eu chamo a força 

Para vir nos defender',
  'Valsa',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 92: Sou humilde
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  92,
  'Sou humilde',
  'Chamei lá nas alturas 

A minha Mãe me respondeu 

Sou humilde, sou humilde 

Sou humilde um filho seu 



A minha Mãe que me ensinou 

Para sempre a Deus louvar 

Para sempre, para sempre 

Para sempre aonde está 



Sou filho da verdade 

E do poder universal 

Para sempre, para sempre 

Para sempre acreditar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 93: O Cruzeiro
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  93,
  'O Cruzeiro',
  'No Cruzeiro tem rosário 

Para quem quiser rezar 

Também tem a Santa Luz 

Para quem quer viajar 



Vamos todos nós louvar 

O Divino Espírito Santo 

A Virgem Nossa Senhora 

Nos cobrir com o vosso manto 



Eu digo é com firmeza 

Dentro do meu coração 

Vamos todos nós louvar 

A Virgem da Conceição 



A Virgem da Conceição 

É a nossa protetora 

É quem nos dá vida e saúde 

E é a nossa defensora 



Vamos todos meus irmãos 

Vamos cantar com amor 

Vamos todos nós louvar 

A Jesus Cristo Redentor 



Jesus Cristo Redentor 

Filho da Virgem Maria 

É quem nos dá a Santa Luz 

E o nosso pão de cada dia',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 94: Perguntei a todo mundo
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  94,
  'Perguntei a todo mundo',
  'Perguntei a todo mundo

Por onde vai o caminho

E ninguém me respondeu

Vou viajando sozinho



Deus na frente Deus na paz

Nas alturas onde ele está

Vou viajando com Deus

Um dia eu hei de chegar



Jesus Cristo vai comigo

Vai na minha companhia

Para um dia eu entrar

Dentro da soberania



Todo mundo quer ser grande

Me deixaram eu ficar só

Fico com a virgem Maria

Estou com a força maior',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 95: Mensageiro
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  95,
  'Mensageiro',
  'Te levanta, te levanta 

Levanta quem está sentado 

Para receber o Mensageiro 

Dentro do Jardim Dourado 



Vai seguindo, vai seguindo 

Dentro do jardim de amor 

Para receber o Mensageiro 

Do nosso Pai Criador 



A mensagem que ele traz 

É com prazer e alegria 

Jesus Cristo e São José 

E a Sempre Virgem Maria',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 96: As campinas
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  96,
  'As campinas',
  'Quando eu cheguei em uma campina 

Vi um formoso batalhão 

Também vi uma Senhora 

Com uma bandeira na mão 



Quando esta Senhora me viu 

Veio comigo falar 

Há tempo eu estou te esperando 

Para tudo isto eu te entregar 



Você me zele esta campina 

De brilhantes pedras finas 

Conservando a Santa Luz 

No caminho que eu destino',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 97: Centenário
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  97,
  'Centenário',
  'Traí, traí, traí, tra 

Traí, traí, traí, tra 

Tra... tra... 



Chamo e sei, chamo e sei 

Chamo e sei quem te mandou 



Te recebo, te recebo 

Te recebo é com amor 



Com as forças do meu Pai 

E o poder superior 



Completei um centenário 

No Cruzeiro universal



Cada um que está comigo 

Capriche e venha se apresentar



<b>Viva o Mestre Centenário</b>',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 98: Sou filho desta verdade
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  98,
  'Sou filho desta verdade',
  'Sou filho desta verdade 

Sou dono deste poder 

Deus me entrega com firmeza 

Eu não devo esmorecer 



Vou seguindo nesta verdade 

Para sempre, sempre outra vez 

A minha mãe sempre comigo 

Que me ensina eu compreender 



Eu estou aqui nesta verdade 

Só ensino é coisas boas 

Alguns que estão comigo 

Só pensam é coisa à-toa 



A ruína que se faz 

É só para sofrer 

Cada um dá o que tem 

Não precisa ninguém dizer 



Agora eu volto para o meu lugar 

Sigo em frente, vamos trabalhar 

Não pense em fazer o que tu queres 

Que Deus é o nosso Pai',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 99: Sei aonde está meu Pai
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  99,
  'Sei aonde está meu Pai',
  'Sei aonde está meu Pai 

Sei que Ele está me vendo 

Reconheço a minha Mãe 

Eu sei o que estou dizendo 



Todos façam por saber 

Conhecer o seu valor 

Receber a Santa Luz 

Encher seu culto de amor 



Todos chegam no salão 

Com alegria para cantar 

Quando chega os dias próximos 

Suspira para não voltar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 100: Sou filho da terra
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  100,
  'Sou filho da terra',
  'Eu sou filho da terra 

Vivo nas matas sombrias 

Implorando ao Pai Eterno 

E a Sempre Virgem Maria 



Aqui eu toco o meu tambor 

E nas matas eu rufo caixa 

Todo mundo vai atrás 

Procurando mas não acha 



Todo mundo é sabido 

E o saber Deus é quem dá 

Seguindo na linha direita 

É muito fácil de encontrar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 101: O brilho da Lua Branca
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  101,
  'O brilho da Lua Branca',
  'No brilho da Lua Branca 

Foi quem me trouxe aqui 

Doutrinar a quem quiser 

Neste caminho a seguir 



Sou filho desta verdade 

Devo caprichar assim 

Caprichar eternamente 

Para nunca ser ruim 



Lua Branca quem me trouxe 

Confiou-me este lugar 

Para ser filho legítimo 

É preciso doutrinar 



A minha Mãe quem me ensina 

Tudo enquanto eu quiser 

Peço força, peço força 

A meu Pai que tem poder 



A minha Mãe foi quem me deu 

Neste mundo este lugar 

Peço força e dou força 

A não sair do meu lugar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 102: Sou filho desta verdade
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  102,
  'Sou filho desta verdade',
  'Sou filho desta verdade 

E neste mundo estou aqui 

Dou conselho e dou conselho 

Para aqueles que me ouvir 



O saber de todo mundo 

É um saber universal 

Aqui tem muita ciência 

Que é preciso se estudar 



<b>Estudo fino, estudo fino</b> 

Que é preciso conhecer 

Para ser bom professor 

Apresentar o seu saber',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 103: Todos querem
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  103,
  'Todos querem',
  'Todos querem, todos querem 

Todos querem, eu vou dizer 

Todos querem, todos querem 

É preciso compreender 



Vou seguir na minha linha 

Vou deixar recordação 

Todos querem, todos querem 

Todos querem ser irmão 



Para ser irmão legítimo 

É preciso um juramento 

Não brigar com seu irmão 

E nem trocar seu pensamento',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 104: Sexta-Feira Santa
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  104,
  'Sexta-Feira Santa',
  'Sou filho, sou filho, 

Sou filho do Poder 

A minha Mãe me trouxe aqui 

Quem quiser venha aprender 



Vou seguindo, vou seguindo 

Os passos que Deus me dá 

A minha memória divina 

Eu tenho que apresentar 



A minha Mãe que me ensina 

Me diz tudo que eu quiser 

Sou filho desta verdade 

E meu Pai é São José 



A Sexta-feira Santa 

Guardemos com obediência 

Três antes e três depois 

Para afastar toda doença',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 105: Sou filho deste Poder
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  105,
  'Sou filho deste Poder',
  'Sou filho deste poder 

Vivo na terra e no mar 

Implorando ao meu Pai Eterno 

Nas alturas onde Ele está 



Eu vivo aqui cantando 

Para quem tiver amor 

Consagrando a minha Rainha 

Foi Ela quem me ensinou 



Todos santos e todas santas 

Rogam a Deus no coração 

Para os filhos da terra 

Se esquecer da ilusão',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 106: Fortaleza
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  106,
  'Fortaleza',
  'Estando nesta fortaleza 

Onde me radeia o sol 

Encostado a meu Império 

Dono da força maior 



Dono de todo poder 

Dono da força maior 

É Ele é quem me ensina 

Para ensinar os menores 



Para ensinar os menores 

Para todos aprender 

Para sempre louvar a Deus 

E saber agradecer',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 107: Chamei lá nas alturas
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  107,
  'Chamei lá nas alturas',
  'Chamei lá nas alturas 

Para o Divino me ouvir 

A minha Mãe me respondeu 

Oh filho meu, estou aqui 



Minha Mãe, vamos comigo 

Para sempre, eterna luz 

Para eu poder assinar 

Para sempre a Santa Cruz 



Esta cruz no firmamento 

Que radeia a Santa luz 

Todos que nela firmar 

É para sempre amém Jesus',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 108: Linha do Tucum
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  108,
  'Linha do Tucum',
  'Eu canto aqui na terra 

O amor que Deus me dá 

Para sempre, para sempre 

Para sempre, para sempre 



A minha Mãe que vem comigo 

Que me deu esta lição 

Para sempre, para sempre 

Para sempre eu ser irmão 



Enxotando os malfazejos 

Que não querem me ouvir 

Que escurecem o pensamento 

E nunca podem ser feliz 



Esta é a Linha do Tucum 

Que traz toda lealdade 

Castigando os mentirosos 

Aqui dentro desta verdade',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 109: Tudo, Tudo
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  109,
  'Tudo, Tudo',
  'Tudo, tudo Deus me mostra 

Para mim reconhecer 

Tudo, tudo é verdade 

Eu não posso me esquecer 



A minha Mãe que me ensina 

Que me entrega este poder 

Tomo conta e dou conta 

Eu não posso me esquecer 



Sigo a minha viagem 

Dentro desta primosia 

Tudo, tudo é verdade 

No reino da soberania',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 110: De longe
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  110,
  'De longe',
  'De longe, eu venho de longe 

Das ondas do mar sagrado 

Para eu conhecer os poderes 

Da floresta e Deus amar 



Eu sigo neste caminho 

Ando nele dias inteiros 

Para eu conhecer o poder 

E a santa luz de Deus verdadeiro 



No poder de Deus verdadeiro 

É preciso nós ter amor 

Nas estrelas do firmamento 

E em tudo que Deus criou',
  'Valsa',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 111: Estou aqui
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  111,
  'Estou aqui',
  'Estou aqui 

Eu não estando como é 

Eu penso na verdade 

Me vem tudo que eu quiser 



A minha Mãe me trouxe 

Ela deseja me levar 

Todos nós temos a certeza 

Deste mundo se ausentar 



Eu vou contente 

Com esperança de voltar 

Nem que seja em pensamento 

Tudo eu hei de me lembrar 



Aqui findei 

Faço a minha narração 

Para sempre se lembrarem 

Do velho Juramidam',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 112: Meu Pai
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  112,
  'Meu Pai',
  'Meu Pai, meu Pai 

Me dá o teu amor 

Para eu ser filho de vós 

Aqui na terra aonde estou 



Minha Mãe, minha Mãe, 

Que tudo que vós me dá 

Para eu viver neste mundo 

E aos meus irmãos todos abraçar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 113: Sigo nesta verdade
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  113,
  'Sigo nesta verdade',
  'Sigo nesta verdade 

Nunca pensei em voltar 

Sigo neste caminho 

Para um dia eu alcançar 



Eu como filho de vós 

Se um dia eu merecer 

Quero que vós me conceda 

Para eu ter o mesmo poder 



A minha mãe que me diz 

Que tudo eu tenho que vencer 

Sigo neste caminho 

Nada eu tenho a temer 



Eu canto e torno a cantar 

Para seguir o meu destino 

Recebendo a Santa Luz 

Da Santíssima Mãe Divina 



Quando eu cheguei nesta Casa 

Estrondo de palmas me deram 

Meu Chefe me recebeu 

O dono de todo Império',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 114: Encostado a minha Mãe
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  114,
  'Encostado a minha Mãe',
  'Encostado a minha Mãe 

E meu Papai lá no astral 

Para sempre eu quero estar 

Para sempre eu quero estar 



Minha flor minha esperança 

Minha rosa do jardim 

Para sempre eu quero estar 

Com minha Mãe juntinho a mim 



Eu moro nesta casa 

Que minha Mãe me entregou 

Eu estando junto com Ela 

Sempre dando o seu valor 



Fazendo algumas curas 

Que minha Mãe me ordenou 

De brilhantes pedras finas 

Para sempre aqui estou',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 115: Batalha
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  115,
  'Batalha',
  'Entrei numa batalha 

Vi meu povo esmorecer 

Temos que vencer 

Com o poder do Senhor Deus 



Oh! Virgem Mãe 

Com o poder que vós me dá 

Me dá força, me dá luz 

E não me deixa derribar 



O Divino Pai Eterno 

E a Virgem da Conceição 

Todo mundo levantou 

Com suas armas na mão 



Oh! Virgem Mãe 

Com o poder que vós me dá 

Me dá força, me dá luz 

E não me deixa derribar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 116: Sou filho do Poder
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  116,
  'Sou filho do Poder',
  'Sou filho do Poder 

E dentro desta casa estou 

Fazendo os meus trabalhos 

Que minha Mãe me ordenou 



Eu pedi a meu Pai 

Me deu o consentimento 

Trabalhar para os meus irmãos 

Aqueles que estão doentes 



Confessa a consciência 

E alegra teu coração 

Que esta é a verdade 

Que eu apresento aos meus irmãos',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 117: Dou Viva a Deus nas alturas
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  117,
  'Dou Viva a Deus nas alturas',
  'Dou viva a Deus nas alturas 

E a Virgem Mãe nosso amor 

Viva todo Ser Divino 

E Jesus Cristo Redentor 



Eu peço a Deus nas alturas 

Para Vós me iluminar 

Botai-me no bom caminho 

E livrai-me de todo mal 



Eu vivo aqui neste mundo 

Encostado a este Cruzeiro 

Vejo tanta iluminária 

Do nosso Deus Verdadeiro 



Esta iluminária que eu vejo 

Alegra o meu coração 

Estas flores que recebemos 

Para nossa Salvação',
  'Valsa',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 118: Todos querem ser irmãos
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  118,
  'Todos querem ser irmãos',
  'Todos querem ser irmãos 

Mas não têm a lealdade 

Para seguir na Vida Espírita 

Que é o Reino da Verdade 



É o Reino da Verdade 

É a Estrada do Amor 

É todos prestar atenção 

Aos ensinos do professor 



Os ensinos do professor 

É quem nos traz belas lições 

Para todos se unir 

E respeitar os seus irmãos 



Respeitar os seus irmãos 

Com alegria e com amor 

Para todos conhecer 

E saber dar o seu valor',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 119: Confia
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  119,
  'Confia',
  'Confia, confia, confia no Poder 

Confia no saber 

Confia na força 

Aonde pode ser 



Esta força é muito simples 

Todo mundo vê 

Mas passa por ela 

E não procura compreender 



Estamos todos reunidos 

Com a nossa chave na mão 

É limpar mentalidade 

Para entrar neste salão 



Este é o Salão Dourado 

Do nosso Pai Verdadeiro 

Todos nós somos filhos 

E todos nós somos herdeiros 



Nós todos somos filhos 

E é preciso trabalhar 

Amar ao Pai Eterno 

É quem tem para nos dar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 120: Eu Peço
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  120,
  'Eu Peço',
  'Eu peço, eu peço 

Eu peço ao Pai Divino 

Que me dê a Santa Luz 

Para iluminar o meu caminho 



Eu peço à Virgem Mãe 

E a Jesus Cristo Redentor 

Iluminai o meu caminho 

Nessa Estrada do Amor 



Essa Estrada do Amor 

Dentro do meu coração 

Eu peço a Jesus Cristo 

Que nos dê a Salvação 



Eu peço a Salvação 

Que só Vós pode no dar 

Perdoai-nos neste mundo 

E na vida espiritual',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 121: Esta Força
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  121,
  'Esta Força',
  'Esta Força, este Poder 

Eu devo amar no meu coração 

Trabalhar no mundo Terra 

A benefício dos meus irmaõs 



Estou aqui, neste lugar 

Foi minha Mãe que me mandou 

Estamos dentro desta casa 

Onde afirmamos a fé e o amor',
  'Valsa',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 122: Quem procurar esta casa
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  122,
  'Quem procurar esta casa',
  'Quem procurar esta casa 

Que aqui nela chegar 

Encontra com a Virgem Maria 

Sua saúde Ela dá 



Minha Sempre Virgem Maria 

Perdoai os filhos Seus 

Vós como Mãe Soberana 

A Divina Mãe de Deus 



Eu peço a Vós bem contrito 

Fazendo as minhas orações 

Peço a Vós a Santa Luz 

Para iluminar o me perdão 



Aqui dentro desta casa 

Tem tudo que procurar 

Seguindo o bom caminho 

Fazer bem, não fazer mal',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 123: Eu andei na Casa Santa
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  123,
  'Eu andei na Casa Santa',
  'Eu andei na Casa Santa 

Trouxe muitas coisas boas 

Tudo vive neste mundo 

Parece umas coisa à toa 



Pedi licença ao Divino 

Para estas palavras eu narrar 

Perante aos meus irmãos 

Para todos escutar 



Depois que todos escutarem 

É que vão reconhecer 

Tudo vive neste mundo 

Muito longe do Poder 



Para estar junto ao Poder 

Da Virgem da Conceição 

É ter fé e ter amor 

Dar valor aos seus irmãos',
  'Valsa',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 124: Eu tomo esta Bebida
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  124,
  'Eu tomo esta Bebida',
  'Eu tomo esta bebida 

Que tem poder inacreditável 

Ela mostra a todos nós 

Aqui dentro desta verdade 



Subi, subi, subi 

Subi foi com alegria 

Quando eu cheguei nas alturas 

Encontrei com a Virgem Maria 



Subi, subi, subi 

Subi foi com amor 

Encontrei com o Pai Eterno 

E Jesus Cristo Redentor 



Subi, subi, subi 

Conforme os meus ensinos 

Viva o Pai Eterno 

E viva todo Ser Divino',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 125: Aqui estou dizendo
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  125,
  'Aqui estou dizendo',
  'Aqui estou dizendo 

Aqui estou cantando 

Eu digo para todos 

Hinos estão ensinando 



Aqueles que compreenderem 

Que quiser seguir comigo 

Tendo fé e tendo amor 

Não deve encarar perigo 



Sigo os meus passos em frente 

Com alegria e com amor 

Porque Deus é Soberano 

E nesta firmeza estou 



A Virgem Mãe é Soberana 

Foi Ela quem me ensinou 

Ela me mandou pra cá 

Para ser um Professor 



Vamos sequir, vamos seguir 

Vamos seguir, vamos embora 

Que nós somos filhos eternos 

Filhos de Nossa Senhora',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 126: Flor das Águas
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  126,
  'Flor das Águas',
  'Flor das águas 

da onde vens, para onde vais 

Vou fazer minha limpeza 

No coração está meu Pai 



A morada do meu Pai 

É no coração do mundo 

Aonde existe todo amor 

E tem um segredo profundo 



Este segredo profundo 

Está em toda humanidade 

Se todos se conhecerem 

Aqui dentro da verdade',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 127: Marchinha
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  127,
  'Marchinha',
  '{ Hino Instrumental }',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 128: Eu Pedi
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  128,
  'Eu Pedi',
  'Eu pedi, eu pedi, eu pedi 

Eu pedi Mamãe me deu 

Para me apresentar 

Ao Divino Senhor Deus 



Meu Divino Senhor Deus 

É Pai de todo amor 

Perdoai os Vossos filhos 

Neste mundo pecador 



Jesus Cristo Redentor 

Senhor do meu coração 

Defendei os Vossos filhos 

Neste mundo de ilusão',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 129: Eu cheguei nesta Casa
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  129,
  'Eu cheguei nesta Casa',
  'Eu cheguei nesta casa 

Eu entrei por esta porta 

Eu venho dar os agradecimentos 

A quem rogou por minha volta 



Eu estou dentro desta casa 

Aqui no meio deste salão 

Estou alegre e satisfeito 

Junto aqui com os meus irmãos 



Ia fazendo uma viagem 

Ia pensando em não voltar 

Os pedidos foram tantos 

Me mandaram eu voltar 



Me mandaram eu voltar 

Eu estou firme, vou trabalhar 

Ensinar os meus irmãos 

Aqueles que me escutar',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;

-- Hino 130: Pisei na Terra Fria
INSERT INTO hinos (hinario_id, numero, titulo, letra_pura, ritmo, posicao)
VALUES (
  (SELECT id FROM hinarios WHERE slug = 'o-cruzeiro'),
  130,
  'Pisei na Terra Fria',
  'Pisei na terra fria, 

Nela eu senti calor. 

Ela é quem me dá o pão 

A minha Mãe que nos criou. 



A minha Mãe que nos criou 

E me dá todos ensinos, 

A matéria eu entrego a Ela 

E o meu espírito ao Divino. 



Do sangue das minhas veias 

Eu fiz minha assinatura. 

O meu espírito, eu entrego a Deus

E o meu corpo, à sepultura. 



Meu corpo na sepultura 

Desprezado no relento 

Alguém fala em meu nome 

Alguma vez em pensamento',
  'Marcha',
  'DE PÉ'
) ON CONFLICT (hinario_id, numero) DO NOTHING;


-- =============================================
-- STEP 3: Insert all Cifras (chord content)
-- =============================================

-- Cifra for Hino 0: Sol, Lua, Estrela
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 0),
  'D',
  '<cifra class="cifra">&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Sol, Lua, Estrela</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7</cifra><p>A Terra, o Vento e o Mar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>É a Luz do Firmamento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>É só quem eu devo amar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>É só quem eu devo amar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;D7</cifra><p>Trago sempre na lembrança</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>É Deus que está no Céu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Aonde está minha esperança</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>A Virgem Mãe mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;D7</cifra><p>Para mim esta lição</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Me lembrar de Jesus Cristo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E esquecer a ilusão</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Trilhar este caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;D7</cifra><p>Toda hora e todo dia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>O Divino está no Céu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Jesus filho de Maria</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 1: Lua Branca
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 1),
  'C',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Deus te Salve oh! Lua Branca</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;C</cifra><p>Da luz tão prateada</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Tu sois minha protetora</p><cifra class="cifra">G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>De Deus tu sois estimada</p><p><br></p><cifra class="cifra">Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Oh Mãe Divina do coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Lá nas alturas onde estás</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Minha Mãe, lá no céu</p><cifra class="cifra">&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;G7</cifra><p>Dai-me o perdão</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Das flores do meu país</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Tu sois a mais delicada</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>De todo o meu coração</p><cifra class="cifra">G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Tu sois de Deus estimada</p><cifra class="cifra">Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Oh Mãe Divina do coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Lá nas alturas onde estás</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Minha Mãe, lá no céu</p><cifra class="cifra">&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;G7</cifra><p>Dai-me o perdão</p><p><br></p><cifra class="cifra">&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Tu sois a flor mais bela</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Aonde Deus pôs a mão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Tu sois minha advogada</p><cifra class="cifra">&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Oh! Virgem da Conceição</p><p><br></p><cifra class="cifra">Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Oh Mãe Divina do coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Lá nas alturas onde estás</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Minha Mãe, lá no céu</p><cifra class="cifra">&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;G7</cifra><p>Dai-me o perdão</p><cifra class="cifra">&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Estrela do Universo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Que me parece um jardim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Assim como sois brilhante</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Quero que brilhes a mim</p><p><br></p><cifra class="cifra">Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Oh Mãe Divina do coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Lá nas alturas onde estás</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Minha Mãe, lá no céu</p><cifra class="cifra">&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;G7</cifra><p>Dai-me o perdão</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 2: Tuperci
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 2),
  'C',
  '<p>Tuperci não me conheces 
</p><p>Tu não sabes me apreciar
</p><p>Tu não sabes me compreender
</p><p>A minha flor cor de Jaci</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 3: Ripi
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 3),
  'Dm',
  '<cifra class="cifra">&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Ripi, Ripi, Ripi</p><cifra class="cifra">&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;</cifra><p>Ripi, Ripi, Iáiá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Se você não queria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para que veio me enganar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 4: Formosa
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 4),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;</cifra><p>Formosa formosa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Formosa é bem formosa</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Formosa é bem formosa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Tarumim tu sois formosa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Formosa é bem formosa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;</cifra><p>Formosa formosa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Formosa é bem formosa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Tarumim eu estou com sede</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Tarumim tu me dá água</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Tarumim tu sois mãe d’água</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Tarumim tu sois formosa formosa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Formosa é bem formosa</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 5: Refeição
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 5),
  'A',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Papai do Céu do coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;</cifra><p>Que hoje neste dia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>É quem dá o nosso pão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Graças a Mamãe</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Mamãe do Céu do coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;</cifra><p>Que hoje neste dia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>É quem dá o nosso pão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Louvado seja Deus</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 6: Papai Paxá
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 6),
  'C',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Equiôr, Equiôr, Equiôr</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Equiôr que me chamaram</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Eu vim beirando a terra</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Eu vim beirando o mar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;Dm</cifra><p>Quando Papai Paxá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Barum Marum mais eu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Saudades, saudades</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Saudades de Mamãe</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>A tua imagem linda</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>É meus encantos enfim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Neste mundo e no outro</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Vós se alembrai de mim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>O amor que eu te tenho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Dentro do meu coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>É vós quem me guia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>No caminho da salvação</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Quando Papai me chamar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Toda vida obedeci</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Quando chegar este dia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Eu só tenho que ir</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 7: Dois de Novembro
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 7),
  'C',
  '<p>A tua alma entrega a Deus
</p><p>E o teu corpo à terra fria
</p><p>Jesus te acompanhe
</p><p>Junto com a Virgem Maria
</p><p><br></p><p>Tu pedes aos teus amigos
</p><p>Pelo nome de Jesus
</p><p>Que te rezem umas preces
</p><p>Lá no pé da Santa Cruz
</p><p>Tanto anos que vivestes
</p><p>Agora vai se retirar
</p><p>Vai atender ao nosso Pai
</p><p>Foi quem mandou te chamar
</p><p><br></p><p>Aqui achou, aqui deixou
</p><p>Levas contigo o amor
</p><p>As portas do céu se abrem
</p><p>Para quem for merecedor</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 8: A Rainha me mandou
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 8),
  'C',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;</cifra><p>A Rainha me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Eu rezar para os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Para Ela lá no céu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Alimpar meu coração</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;</cifra><p>A Rainha me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Eu rezar para a humanidade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Para Ela lá no céu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Fazer as vossas vontades</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;</cifra><p>A Rainha me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;C</cifra><p>Eu rezar para os inocentes</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Para Ela lá no céu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Rogar ao Onipotente</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;</cifra><p>A Rainha me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;C</cifra><p>Santa paz e alegria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Para Ela lá no céu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Mandar o pão de cada dia</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 9: Mãe Celestial
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 9),
  'C',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;C</cifra><p>Eu peço e rogo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;Am</cifra><p>Oh Mãe Celestial</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Que tudo enquanto eu tenho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>É Vós é quem me dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Oh Mãe Celestial</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;C</cifra><p>Eu peço e rogo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;Am</cifra><p>Ao Pai Celestial</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Que tudo enquanto eu tenho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>É Vós é quem me dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Oh Pai Celestial</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;C</cifra><p>Eu peço e rogo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;Am</cifra><p>Oh Mãe Celestial</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Que me dê a salvação</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>E me bote em bom lugar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Oh Mãe Celestial</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 10: Eu devo pedir
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 10),
  'C',
  '<cifra class="cifra">&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Eu devo pedir</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>A quem pode me dar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;Am</cifra><p>Papai me deu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;G&nbsp;&nbsp;C</cifra><p>Sou eu, sou eu</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Mamãe me ensina</p><cifra class="cifra">&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Eu devo aprender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;Am</cifra><p>Na Eternidade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>É quem pode me valer</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;</cifra><p>Dos raios do sol</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>É que me vem a luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;Am</cifra><p>Não devo esquecer-me</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Do nome de Jesus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>As estrelas pequeninas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Sua luz incandescente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;Am</cifra><p>Só Deus, só Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Só Deus Onipotente</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Vejo a lua nas alturas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Sua luz, seu resplendor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;</cifra><p>O meu amor emprego em ti</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E em Jesus Cristo Salvador</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 11: Unaqui
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 11),
  'C',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Eu estou aqui,</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Foi Deus do céu quem me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Sou filho da Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Lá no céu Jesus Cristo Salvador</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Sofreu na cruz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Foi preso e foi amarrado</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E quem matou foi os judeus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Na Judéia foram todos perdoados</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;</cifra><p>Eu estou aqui</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Neste mundo de ilusão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Eu faço por agradar todos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Neste mundo só me dão ingratidão</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 12: Meu Divino Pai
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 12),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Oh Meu Divino Pai</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Só por vós devo chamar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;Bm</cifra><p>Tantas vezes vos ofendi</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E vós me queira perdoar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Vós me queira perdoar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Que eu pequei por inocente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;Bm</cifra><p>Porque não tinha certeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Do nosso Deus Onipotente</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Oh! Meu Divino Pai</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>É vós quem me dá a luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;Bm</cifra><p>Eu nunca mais hei de esquecer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Do santo nome de Jesus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;D</cifra><p>O povo está iludido</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Por completa ilusão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;Bm</cifra><p>Porque não querem acreditar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;D</cifra><p>Na Mãe de Deus da criação</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>A laranja é uma fruta</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Redonda por vossas mãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;Bm</cifra><p>Vós me entrega com certeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E eu deixar cair no chão</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 13: Estrela Dalva
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 13),
  'Dm',
  '<cifra class="cifra">Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Estrela Dalva Vós me dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Sois divina, sois divina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Sois divina em meu olhar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>São felizes os passos meus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Com certeza eu encontrar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Um dia seu resplendor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>É só quem eu devo amar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>A minha Mãe que me ensinou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>No mundo dos pecadores</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Tirai-me da ilusão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para eu ter outro valor</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 14: Rogativo dos mortos
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 14),
  'C',
  '<p>São doze horas da noite
</p><p>Meu irmão se mudou
</p><p>O sono da eternidade
</p><p>Deus do céu quem te chamou
</p><p><br></p><p>Uma hora da madrugada
</p><p>Meu irmão se mudou
</p><p>O sono da eternidade
</p><p>Deus do céu quem te chamou
</p><p><br></p><p>Duas Horas da madrugada....
</p><p><br></p><p>São três horas da madrugada...
</p><p><br></p><p>Quatro horas da madrugada...
</p><p><br></p><p>Cinco horas da manhã...
</p><p>São seis horas da manhã...
</p><p><br></p><p>São sete horas do dia...
</p><p><br></p><p>São oito horas do dia...
</p><p><br></p><p>São nove horas do dia
</p><p>Meu irmão se mudou
</p><p>O sono da eternidade
</p><p>Deus do céu quem te chamou
</p><p><br></p><p>Tantos anos que vivestes
</p><p>No mundo da ilusão
</p><p>Eu rogo a Deus do céu
</p><p>Que te dê o Santo perdão
</p><p>A divina estrela vem
</p><p>Para ir te alumiar
</p><p>Eu rogo a Deus do céu
</p><p>Que te bote em bom lugar
</p><p><br></p><p>A virgem Senhora vem
</p><p>Para ir te acompanhar
</p><p>Eu rogo à Virgem Mãe
</p><p>Que te bote em bom lugar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 15: Eu quero ser
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 15),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;</cifra><p>Eu quero ser</p><cifra class="cifra">&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Filho do meu Pai</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Da minha Mãe com os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Que me acompanham amar a Ele</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>De todo meu coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Seguindo nesta estrada</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Com a verdade na mão</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;</cifra><p>Oh! Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Oh! Mãe de piedade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Eu quero ser filho de vós</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Sigo sempre na verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>O amor eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Eu devo consagrar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>A lua e as estrelas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>A terra e o mar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;</cifra><p>O sol lá nas alturas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Com sua luz de cristal</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 16: A minha Mãe é a Santa Virgem
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 16),
  'A',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A minha Mãe é a Santa Virgem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Ela é quem vem me ensinar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Não posso viver sem Ela</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Só posso estar onde Ela está</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Ela é Mãe de todos nós</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Daqueles que procurar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Seguindo neste caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Vai chegar onde Ela está</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Oh minha Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Oh Mãe do coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu vivo nesta escola</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para ensinar os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>E eles pouco caso fazem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>De aprender com alegria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Porque pensam que não é</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Ensinos da Virgem Maria</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Ninguém trata de aprender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Só se levam na ilusão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Aqui mesmo neste mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Está no mar da escuridão</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 17: Meu Divino Pai do Céu (Confissão)
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 17),
  'C',
  '<p>Meu Divino Pai do Céu
</p><p>Soberano Criador
</p><p>Eu sou um filho seu
</p><p>Neste mundo pecador
</p><p><br></p><p>Meu Divino Pai do Céu
</p><p>Meu Soberano Senhor
</p><p>Perdoai as minhas culpas
</p><p>Pelo vosso Santo Amor
</p><p>Meu Divino Pai do Céu
</p><p>Soberano Onipotente
</p><p>Perdoai as minhas culpas
</p><p>E vós perdoe aos inocentes
</p><p><br></p><p>Eu confesso os meus pecados
</p><p>E reconheço os crimes meus
</p><p>Eu a vós peço perdão
</p><p>Ao meu Divino Senhor Deus</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 18: Equiôr Papai me chama
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 18),
  'F',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Equiôr Papai me chama</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Equiôr perante a Si</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;Dm</cifra><p>Equiôr Papai me diz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Equiôr eu sou feliz</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Equiôr Mamãe me chama</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Equiôr Mamãe me dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;Dm</cifra><p>Equiôr Mamãe me ensina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Amar a quem eu devo amar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Eu vivo neste mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Com prazer e alegria</p><cifra class="cifra">F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;Dm</cifra><p>Viva Deus no céu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>E a Sempre Virgem Maria</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Jesus Cristo é o nosso Pai</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>De grande consolação</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Ajudai-me neste mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>E no outro a salvação</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 19: O amor eternamente
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 19),
  'Bm',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;F#7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>O amor eternamente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Eu desejo publicar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para ser um filho seu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Fazer bem, não fazer mal</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Estou na terra, estou na terra</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Estou na terra, eu devo amar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para ser um filho seu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Fazer bem, não fazer mal</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>A Virgem Mãe que me ensinou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>De vós não devo apartar-me</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para ser um filho seu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Fazer bem, não fazer mal</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 20: Sempre assim
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 20),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Sempre assim eu vou dizer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Sempre assim eu quero ser</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Amar a eternidade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Ser fiel até morrer</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>A minha mãe eternamente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Foi quem me mandou seguir</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Não temer este caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para adiante eu ser feliz</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Jesus Cristo me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Para sempre amém Jesus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Não temer este caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Deus foi quem deu esta luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Todos seres me arrodeiam</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Foi quem me mandou seguir</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Para ser eternamente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Sempre assim eu sou feliz</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Óh minha Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Óh Mãe do Redentor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Enchei meu coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>De alegria com primor</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 21: Oh! Meu Divino Pai
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 21),
  'G',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Ó meu divino pai</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Foi vós foi quem me deu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu vim me apresentar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Por ser um filho seu</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>A minha mãe que me ensinou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Dentro do meu coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>É quem me dá esta verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Para expor aos meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Piso firme e sigo em frente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Não devemos esmorecer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para ser eternamente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Sou filho de todos seres</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Seguindo esta verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Que minha mãe me ensinou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Piso firme com alegria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Sou filho do redentor</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 22: Palmatória
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 22),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Porque todos não cumprem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Com dever e obrigação</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Conhecer esta verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para chamar meu irmão</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Na presença todos são</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Na ausência aqui deixou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Não se lembram da firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E da palavra que jurou</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Não cumprindo este dever</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Está fora da união</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Não são firme a meu Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E nem leal ao meu irmão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Só existe é fingimento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Fraqueza no coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Não são firme a meu Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E nem unido ao meu irmão</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Não cumprindo este dever</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>É melhor se retirar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Que não é traço de baralho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>É melhor não vir pra cá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Que aqui é muito sério</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E é preciso respeitar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 23: B.G.
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 23),
  'E',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>B.G. eu vou chamar</p><cifra class="cifra">&nbsp;&nbsp;C#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G#m</cifra><p>B.G. aqui chegou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>B.G. quem te mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Foi o nosso Salvador</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>B.G. vós veio à terra</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G#m</cifra><p>Para ensinar a verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>B.G. quem te mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;E</cifra><p>A nossa Mãe de piedade</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>B.G. vós nos quer bem</p><cifra class="cifra">&nbsp;&nbsp;C#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G#m</cifra><p>B.G. vós tem amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>B.G. vós nos defenda</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>De todos esses terrores</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 24: Canta Praia
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 24),
  'E',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Canta praia, Canta praia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Canta praia é quem me ensina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Eu sou um filho eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Não devo pensar à toa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;C#m</cifra><p>Conhecer este poder</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Que me traz as coisas boas</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Não devo te desprezar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Para ir atrás da ilusão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;C#m</cifra><p>Que me traz tanta riqueza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>E me derriba pelo chão</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;</cifra><p>Devo ser eternamente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Para sempre, amém Jesus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;C#m</cifra><p>Eu sou um filho eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>De joelho em uma cruz</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 25: Oferecimento
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 25),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Oh minha Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Oh Virgem Mãe de Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Olhai para mim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Que eu sou um filho seu</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Perdoai as minhas culpas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Pelo vosso santo amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Olhai para mim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Neste mundo pecador</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Oh minha Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Botai-me a vossa bênção</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Olhai para mim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Neste mundo de ilusão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Oh minha Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>É vós quem me dá a luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Me dai a salvação</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para sempre, Amém, Jesus</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Eu ofereço estes cânticos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Que agora se cantou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Ao Rei e à Rainha</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Do universo Criador</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 26: Leão Branco
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 26),
  'A',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Meu Pai foi quem me fez</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Eu devo ter amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Sou filho do meu Pai</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Feliz eu devo ser</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Sou filho do meu Pai</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Eu devo ter amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Sou filho do meu Pai</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A minha Mãe me acompanhou</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>A minha Mãe me acompanhou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Mandou eu ensinar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Os que forem filhos dela</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Aprender ao menos a rezar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 27: Seis horas da manhã
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 27),
  'Dm',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Seis horas da manhã</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu devo cantar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Para receber</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>A meu Pai Divinal</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>O pino de meio-dia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A luz do resplendor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Eu devo cantar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>A meu Pai Criador</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Seis horas da tarde</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>O sol vai se pôr</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Eu devo cantar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>A meu Pai Salvador</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>A terra é quem gira</p><cifra class="cifra">&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para mostrar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Toda criação</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>A meu Pai Divinal</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 28: Cantar ir
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 28),
  'A',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Eu quero cantar ir</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Que me ensina eu seguir</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;
[F#m]</cifra><p>Sou eu, sou eu, sou eu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Sou eu, sou bem feliz</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>O Divino Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Quem me deu este poder</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;
[F#m]</cifra><p>De ensinar as criaturas</p><cifra class="cifra">E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Conhecer e compreender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>A Virgem Mãe me deu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>O lugar de professor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;
[F#m]</cifra><p>Para ensinar as criaturas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Conhecer e ter amor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Jesus Cristo me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Para mim viver aqui</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;
[F#m]</cifra><p>Sou eu, sou eu, sou eu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Sou eu, sou bem feliz</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 29: Sol, Lua, Estrela
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 29),
  'C',
  '<cifra class="cifra">&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Sol, Lua, Estrela</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>A Terra, o Vento e o Mar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>É a Luz do Firmamento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>É só quem eu devo amar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>É só quem eu devo amar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Trago sempre na lembrança</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>É Deus que está no Céu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Aonde está minha esperança</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>A Virgem Mãe mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para mim esta lição</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Me lembrar de Jesus Cristo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E esquecer a ilusão</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Trilhar este caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Toda hora e todo dia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>O Divino está no Céu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Jesus filho de Maria</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 30: Devo amar aquela Luz
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 30),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Devo amar aquela luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>O Divino aonde está</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para ser um filho seu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>No coração eu devo amar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>No coração eu devo amar a luz</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>A Virgem Mãe foi quem me deu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para ensinar os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para ser um filho seu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para ser um filho seu de amor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>No coração este primor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Conhecer esta verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Deus do Céu foi quem mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Deus do Céu foi quem mandou a luz</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 31: Papai Samuel
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 31),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Papai Samuel me chama</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;E</cifra><p>Para dizer o que queria</p><cifra class="cifra">Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para eu viver eternamente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Junto à Virgem Maria</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Junto à Virgem Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;E</cifra><p>O santo nome de Jesus</p><cifra class="cifra">Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Olho para o firmamento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>O Cruzeiro e a Santa Luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Pisei no primeiro degrau</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;E</cifra><p>Para seguir com firmeza</p><cifra class="cifra">Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Dentro do meu coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>O primor, tanta beleza</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Convidei os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;E</cifra><p>Para seguir com alegria</p><cifra class="cifra">Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Todos me responderam</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Que ficavam e lá não iam</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 32: Cantei hoje
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 32),
  'Am',
  '<cifra class="cifra">Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Cantei hoje, eu cantei hoje</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;Dm</cifra><p>Cantei hoje com alegria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Porque tenho uma esperança</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>De ver a Virgem Maria</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>A Rainha me chamou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para mim seguir com Ela</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para eu amar com firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para eu ser um filho Dela</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Para eu ser um filho Dela</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Ter força para ensinar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>O Divino Pai do Céu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>O que eu pedir Ele me dá</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>O que eu pedir Ele me dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;Dm</cifra><p>Eu recebo com alegria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Porque tenho a minha Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>É a Sempre Virgem Maria</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 33: Papai Velho
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 33),
  'A',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Papai Velho e Mamãe Velha</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Vós me dê o meu bastão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Sou eu, sou eu, sou eu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Com a minha caducação</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Até que enfim, até que enfim,</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Até que enfim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Eu recebi o meu bastão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Pude me levantar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Com a minha caducação</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Reduzi meu corpo em pó</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>O meu espírito entre flores</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Sou eu, sou eu, sou eu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Filho do Rei de Amor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Mamãe Velha sempre dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Papai a carinhar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Sou eu, eu sempre digo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Eu nasci em Natal</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 34: Estrela brilhante
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 34),
  'A',
  '<cifra class="cifra">&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Estrela brilhante</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Vós sois a minha luz</p><cifra class="cifra">&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>É a Virgem Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>E o Menino Jesus</p><p><br></p><cifra class="cifra">&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>O Menino Jesus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Nasceu para ensinar</p><cifra class="cifra">&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Cumprir vossa missão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para remir e salvar</p><cifra class="cifra">&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para remir e salvar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Ninguém vos conheceu</p><cifra class="cifra">&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Ganhou o vosso nome</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Depois que vós morreu</p><p><br></p><cifra class="cifra">&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Depois que vós morreu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Todo mundo tem amor</p><cifra class="cifra">&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Depois que assassinaram</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>O Mestre ensinador</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 35: Santa Estrela
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 35),
  'A',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Vou chamar a Santa estrela</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Para vós vir me guiar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Iluminar meu pensamento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>O oceano e beira-mar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A profundeza que vós tem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Consenti-me eu entrar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Para eu ver tanta beleza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para mim acreditar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>O Divino Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Senhor de todo primor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Daí a luz ao vosso filho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Aquele que procurou</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A Rainha minha Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Que me mandou eu cantar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>E ensinar os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Aqueles que procurar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 36: Amigo Velho
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 36),
  'C',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Chegou seu Amigo Velho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Chegou sem ser chamado</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Para sempre, amém Jesus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para sempre ser lembrado</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para sempre, amém Jesus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para sempre ser lembrado</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>A minha Mãe que me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Eu sou filho estimado</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Quem seguir na minha linha</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Segue limpo e não errado</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Quem seguir na minha linha</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Segue limpo e não errado</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>O Patriarca São José</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Todo mundo se esqueceu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Jesus filho de Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Com o Divino Senhor Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Jesus filho de Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Com o Divino Senhor Deus</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>O Patriarca São José</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Vós esposo de Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Que o Divino Pai lhe deu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para vossa companhia</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Que o Divino Pai lhe deu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para vossa companhia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Viveram honestamente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Dentro da soberania</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Jesus quando nasceu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Foi na vossa companhia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Jesus quando nasceu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Foi na vossa companhia</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Aconselho a todo mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para seguir na verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Saindo desta linha</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Não espere ser chamado</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Saindo desta linha</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Não espere ser chamado</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>O Divino Senhor Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Foi quem me mandou dizer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Que nós somos filhos eternos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Somos, somos e deve ser</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Que nós somos filhos eternos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Somos, somos e deve ser</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 37: Maresia
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 37),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Maresia minha vida</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para mim acreditar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>O azul do firmamento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>E as estrelas a me guiar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Soberano Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Que me mandou eu cantar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para eu ter toda firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para sempre eu vos amar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A minha Mãe que me ensinou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Que me mandou eu seguir</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para sempre, amém Jesus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para sempre eu ser feliz</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Tu não deves esquecer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>O amor que recebeu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Quando chegou nesta casa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A verdade conheceu</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 38: Flor de Jagube
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 38),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Eu venho da floresta</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;E</cifra><p>Com meu cantar de amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Eu canto com alegria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A Minha Mãe que me mandou</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A Minha Mãe que me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Trazer Santa Doutrina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Meus irmãos todos que vem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Todos trazem este ensino</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Todos trazem este ensino</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Para aqueles que merecer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Não estando nesta linha</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Nunca é de conhecer</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Estando nesta linha</p><cifra class="cifra">&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;E</cifra><p>Deve ter amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Amar a Deus no céu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>E à Virgem que nos mandou</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 39: Centro Livre
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 39),
  'Bm',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Centro livre, Centro livre</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>É preciso ter amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>A minha Mãe que me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#</cifra><p>A minha Mãe que me mandou</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Minha Mãe prenda querida</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Minha Mãe prenda querida</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;</cifra><p>Minha Mãe prenda querida</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;</cifra><p>Estou com vós, eterna vida</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Estou com vós, eterna vida</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Estou com vós, eterna vida</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Currupipipiraguá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Eu devo chamar aqui</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Eu devo chamar aqui</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 40: Eu canto nas alturas
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 40),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Eu canto nas alturas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>A minha voz é retinida</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Porque eu sou filho de Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>E tenho a minha Mãe querida</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>A minha Mãe que me ensinou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>A minha Mãe que me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu sou filho de vós</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;Em</cifra><p>Eu devo ter amor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Com amor tudo é verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Com amor tudo é certeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu vivo neste mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Sou dono da riqueza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>A minha Mãe é a Lua Cheia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>É a estrela que me guia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Estando bem perto de mim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Junto a mim é prenda minha</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>A riqueza todos têm</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Mas é preciso compreender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Não é com fingimento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Todos querem merecer</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 41: Estrela D'água
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 41),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Vou chamar a Estrela D''água</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para vir me iluminar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Para vir me iluminar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para vir me iluminar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Dai-me força e dai-me amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Dai-me força e dai-me amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Dai-me força e dai-me amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Dai-me força e dai-me amor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Dá licença eu entrar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Dá licença eu entrar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Nas profundezas do mar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Nas profundezas do mar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Foi meu Pai quem me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Foi meu Pai quem me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Conhecer todos primores</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Conhecer todos primores</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Dai-me força e dai-me amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Dai-me força e dai-me amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Dai-me força e dai-me amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Dai-me força e dai-me amor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A minha Mãe que me ensinou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>A minha Mãe que me ensinou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Conhecer todos primores</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Conhecer todos primores</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Com amor no coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para cantar com os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Para cantar com os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para cantar com os meus irmãos</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 42: A Terra aonde estou
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 42),
  'E',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>A terra aonde estou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Ninguém acreditou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Dai-me amor, dai-me amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Dai-me o Pão do Criador</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>A minha Mãe que me ensinou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Quem me deu este primor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Dai-me amor, dai-me amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Dai-me o Pão do Criador</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>A riqueza todos têm</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Mas ninguém quer acreditar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Dai-me amor, dai-me amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Livrai-me de todo mal</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 43: O Prensor
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 43),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>O Prensor que te aparece</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A pátria vai abraçar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Vai pra guerra vai perder</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>A vida que Deus te dá</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Quem te fez não te mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>O amor não empregou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>O teu Pai não conheceu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Vais derramar o teu sangue</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Que o Divino Pai te deu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Meu Pai Divino do céu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Abrandai estes terrores</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Vós tenha compaixão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Dos vossos filhos pecadores</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Sempre, sempre, sempre, sempre</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Eu peço à Virgem Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Defendei os inocentes</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>De toda essa orfandia</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 44: A Virgem Mãe que me ensinou
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 44),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A Virgem Mãe que me ensinou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>A Virgem Mãe foi quem me deu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Alegrai meu coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm7(b5)&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para eu amar ao Senhor Deus</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Meu Divino Senhor Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>É Pai de toda nação</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Defendei os vossos filhos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Bm7(b5)&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;Am</cifra><p>De toda escuridão</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A Escuridão é tão terrível</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Que ninguém pode enxergar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Vós me dê a Santa Luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm7(b5)&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para eu poder navegar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A Virgem Mãe é soberana</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Ela é Rainha do Mar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Quando vê nós na aflição</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm7(b5)&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Ela vem nos consolar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Consolai, oh Mãe Divina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Jesus Cristo Redentor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>É quem pode nos livrar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm7(b5)&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;Am</cifra><p>Neste mundo pecador</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 45: Eu estava em pé firmado
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 45),
  'C',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Eu estava em pé firmado</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Olhando para o firmamento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Uma luz me apareceu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Iluminou meu pensamento</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Iluminou meu pensamento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>E perguntou se eu conhecia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Nos meus olhos eu enxerguei</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>A Sempre Virgem Maria</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Meu Pai é carinhoso</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Ele não quer mal a ninguém</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Devo amar com firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>A meu Pai que nos quer bem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>A minha Mãe é tão formosa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Me dá luz e o clarão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Devo amar eternamente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E consagrar no coração</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Sou filho do meu Pai</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Eu devo ser atencioso</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Abraçar a todo mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E não querer ser orgulhoso</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Eu vivo alegre sempre</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>O meu consolo é só cantar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Porque tenho uma esperança</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>De breve me separar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>De breve me separar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Com Deus e a Virgem Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Talvez vocês não achem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Outro irmão com alegria</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 46: Eu balanço
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 46),
  'C',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Eu balanço, e eu balanço</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E eu balanço tudo enquanto há</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Eu chamo o sol, chamo a lua</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>E chamo estrela</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para todos vir me acompanhar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Eu balanço, e eu balanço</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E eu balanço tudo enquanto há</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Eu chamo o vento, chamo a terra</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>E chamo o mar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para todos vir me acompanhar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Eu balanço, e eu balanço</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E eu balanço tudo enquanto há</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Chamo o cipó, chamo a folha</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>E chamo a água</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para unir e vir me amostrar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Eu balanço, e eu balanço</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E eu balanço tudo enquanto há</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Tenho prazer, tenho força</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>E tenho tudo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Porque Deus Eterno é quem me dá</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 47: Sete Estrelas
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 47),
  'Dm',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Eu vi no Sete-Estrelas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;Gm</cifra><p>Um rosto superior</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Eu digo é com certeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Que a Rainha me mostrou</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>A Rainha me mostrou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Para mim reconhecer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>O nome que tanto se fala</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>E ninguém sabe compreender</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Ninguém sabe compreender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;Gm</cifra><p>Com amor, com alegria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>A pessoa de Jesus Cristo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Jesus filho de Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Jesus filho de Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Desde a hora que nasceu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Começou seu sofrimento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Até o dia que morreu</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Ele morreu neste mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;Gm</cifra><p>Para nós acreditar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para nós também sofrer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para poder alcançar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 48: A Rainha da Floresta
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 48),
  'C',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>A Rainha da Floresta</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Ela veio me acompanhar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Todo mundo ri e graceja</p><cifra class="cifra">Am&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para depois ir chorar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;C</cifra><p>Tu perdestes a tua luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Que eu te dei com tanto amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Não foi a falta de conselho</p><cifra class="cifra">Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Tu mesmo nunca ligou</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Vai chorar de arrependido</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Quando um dia se lembrar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Que eu perdi a minha fortuna</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Que eu tinha para alcançar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 49: Minha Mãe é Mãe de todos
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 49),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A Minha mãe é Mãe de todos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Que quiser ser filho Dela</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Ela roga por nós todos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Mas ninguém roga por Ela</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>O Divino Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Me deu um grande poder</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu como filho de vós</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Vou eterno agradecer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Vou eterno agradecer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Para sempre eu quero estar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Encostado a minha Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para sempre eu vos amar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para sempre eu vos amar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>E eterno agradecer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Vós me dê a Eterna Glória</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Conforme eu merecer</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 50: Salomão
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 50),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Salomão disse para mim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Nesta eu vou me assinar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Que esta é a verdade pura</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>No mundo não tem igual</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A professora que te ensina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Tu soubeste aprender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Trabalhaste muitos anos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para hoje receber</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Sois filho das Águas Brancas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>E é preciso trabalhar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Segue sempre o teu destino</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E deixa quem quiser falar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 51: Eu devo amar
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 51),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Eu devo amar no coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>A Virgem Mãe foi quem me deu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm7(b5)&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para eu amar ao Senhor Deus</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Oh Virgem Mãe, Divina Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Vós nos perdoe os filhos seus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm7(b5)&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para nós amar ao Senhor Deus</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Divino Pai, Rei Criador</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Vós nos perdoe nós pecadores</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm7(b5)&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para nós amar com grande amor</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 52: A Febre do Amor
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 52),
  'A',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>A febre do amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>É preciso compreender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Trazer sempre na memória</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Este divino poder</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Minha Mãe, minha Mãezinha</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Vós me dá todo valor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Não sei se eu mereço</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para sempre eu ter amor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Completei o meu Cruzeiro</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Com cento e trinta e duas flores</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;Bm</cifra><p>Se tiver alguma a mais</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Vós acrescente o meu amor</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 53: Virgem Mãe Divina
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 53),
  'A',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Oh Virgem Mãe Divina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Eu peço um conforto seu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Com vós, com vós, com vós</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7</cifra><p>Com Deus</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Meu Divino Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Eu peço um conforto seu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Com vós, com vós,</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7</cifra><p>Sou filho seu</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Jesus Cristo Redentor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Eu peço um conforto seu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Com vós, com vós,</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7</cifra><p>O ensino seu</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 54: Pedi força a meu pai
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 54),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Pedi força a meu Pai</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Ele me deu com amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para mim ensinar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Neste mundo pecador</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A minha mãe que me ensinou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Mandou eu ensinar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A todos meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Aqueles que acreditar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Surubina, minha flor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Jardim da minha infância</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A base deste mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>É o verde, minha esperança</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 55: Disciplina
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 55),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Vou chamar os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Quem quiser venha escutar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Se ficar firme apanha</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;Am</cifra><p>E se correr vai sofrer mais</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Minha Mãe, minha Rainha</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Com amor ninguém não quis</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Apanhar para obedecer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Na estrada para seguir</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Mestre bom ninguém não quis</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;Dm</cifra><p>E não souberam aproveitar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Apanhar para obedecer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para poder acreditar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Fica assim a disciplina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Quem quiser pode correr</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Se eu falar do meu irmão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Estou sujeito a morrer</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 56: Santa Estrela que me guia
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 56),
  'G',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Santa estrela que me guia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Vós me dê a Santa Luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Os três Reis do Oriente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Que visitaram Jesus</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Viva Deus lá nas alturas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Viva a noite de Natal</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Viva o dono deste dia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Que nós vamos festejar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Já fazem muitos anos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Que meu Jesus nasceu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Vamos todos com alegria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Festejar ao Senhor Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Meu Divino Senhor Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>A vós eu vou pedir</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Vós nos dê o vosso conforto</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Para todos nós seguir</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>A Sempre Virgem Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>É quem vem nos ensinar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Para nós cantar com amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Nesta noite de natal</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 57: Eu convido os meus irmãos
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 57),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Eu convido os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Que queiram me acompanhar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para nós cantar um pouco</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Nesta noite de natal</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Eu convido os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para cantar com alegria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para nós ir festejar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A Jesus filho de Maria</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Eu convido os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Todo aquele que quiser</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para nós ir festejar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A Jesus, Maria e José</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Minha Sempre Virgem Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Vós só pode é se alegrar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Porque todos nós pedimos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para vós nos ajudar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>O sonhar é uma verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Igualmente à luz do dia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Reparem neste mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>O sonho da Virgem Maria</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Meu Divino Senhor Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Vós me dê a Santa Luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para sempre eu festejar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>O dia que nasceu Jesus</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 58: Todo mundo quer ser filho
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 58),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Todo mundo quer ser filho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;Dm</cifra><p>De Deus da criação</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Por quê que tu te esquece</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>De rezar para o teu irmão</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Meu irmão que se mudou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;Dm</cifra><p>Saiu com alegria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Eu rogo a Deus por ele</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>E a Sempre Virgem Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Jesus Cristo Redentor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Eu peço o meu perdão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Que eu nunca mais hei de esquecer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>De rezar para o meu irmão</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Meu irmão que já saiu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Do mundo do pecado</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Eu rogo a Deus do céu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Que ele seja perdoado</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 59: O Divino Pai Eterno
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 59),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>O Divino Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Quem me fez, quem me criou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7</cifra><p>Para eu ser um filho seu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>No jardim de Belas Flores</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>A minha Mãe que me ensinou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;Bm</cifra><p>Mandou eu ensinar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7</cifra><p>Para eu ser um filho seu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>É preciso eu vos amar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Jesus Cristo veio ao mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Replantar Santa Doutrina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7</cifra><p>Os descrentes assassinaram</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>E ainda hoje é quem me ensina</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>A luz da flor mimosa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Deste jardim perfumoso</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7</cifra><p>Havendo força de vontade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Nada para nós é custoso</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 60: Laranjeira
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 60),
  'A',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Cada um tem um cabedal</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>De acordo que Deus lhe dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;</cifra><p>Para viver neste mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>É preciso procurar</p><p><br></p><p>{Laranjeira}</p><p><br></p><cifra class="cifra">A</cifra><p>Laranjeira carregada</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>De laranjas boas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Assim é algumas pessoas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Vou vivendo e vou dizendo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>De acordo o que vai chegar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;</cifra><p>O ouro que tem na terra</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>É a luz que brilha mais</p><p><br></p><p>{Laranjeira}</p><p><br></p><cifra class="cifra">&nbsp;A&nbsp;</cifra><p>Laranjeira carregada</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;</cifra><p>De laranjas boas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Assim é algumas pessoas</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 61: A Rainha da Floresta
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 61),
  'F',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>A Rainha da Floresta</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Vós venha receber</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bbm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fm</cifra><p>Estes cânticos aqui na mata</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fm&nbsp;
[F]</cifra><p>Que eu venho oferecer</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Vós mandou para mim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Ensinar os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bbm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fm</cifra><p>Estamos todos reunidos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fm&nbsp;
[F]</cifra><p>Com amor no coração</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Eu apresento os meus trabalhos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Conforme eu aprendi</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bbm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fm</cifra><p>Estamos todos reunidos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fm&nbsp;
[F]</cifra><p>Vós faça todos feliz</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 62: Quem quiser seguir comigo
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 62),
  'C',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Quem quiser seguir comigo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>É preciso me ouvir</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para seguir neste caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para adiante ser feliz</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>A minha Mãe que vai na frente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Com a luz do resplendor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para ensinar os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para todos ter amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Jesus Cristo me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para mim vir ensinar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para seguir neste caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para remir e salvar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>O poder está comigo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>E a verdade eu vou mostrar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para ensinar os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para todos enxergar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 63: Princesa Soloína
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 63),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Eu peço a Jesus Cristo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Que abra este caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Para mim seguir meus passos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Com amor, com alegria</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;Dm</cifra><p>Com amor, com alegria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Aprender o que vós me ensina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para todos compreenderem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Que existe um poder divino</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Segui neste caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;Gm</cifra><p>Tomei uma direção</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Adiante eu encontrei</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>A Virgem da Conceição</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Mais adiante uma princesa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;Gm</cifra><p>Chamada Soloína</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Ela foi disse para mim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>É nessa estrada que se ensina</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Segui minha jornada</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Adiante eu encontrei</p><cifra class="cifra">&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Um poder divino</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Aí aonde eu fiquei</p><p><br></p><cifra class="cifra">&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Aí aonde eu fiquei</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>E pude compreender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Quem seguir neste caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Todos têm que aprender</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 64: Eu peço a Jesus Cristo
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 64),
  'A',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu peço a Jesus Cristo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu peço à Virgem Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Eu peço a meu Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Vós me dê a Santa Luz</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu sigo na verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu sigo o meu caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Eu sigo é com alegria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Que eu sou filho da Rainha</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>A força da floresta</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A força do astral</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>A força está comigo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A minha Mãe é quem me dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu chamo o Rei Titango</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu chamo o Rei Agarrube</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Eu chamo o Rei Tintuma</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>E eles vem lá do astral</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>A força é divina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A força tem poder</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>A força neste mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Ela faz estremecer</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Sempre vivo neste mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Viva todos que quiser</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Viva Deus lá nas alturas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>E o Patriarca São José</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu dou viva à Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Viva suas companheiras</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Nos proteja neste mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Vós como Mãe verdadeira</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>O sol que veio à terra</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para todos iluminar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Não tem bonito e nem feio</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Ele ilumina todos iguais</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>A lua tem três passagens</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Todas três nela se encerra</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>É preciso compreender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Que ela é quem domina a terra</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 65: Eu vou cantar
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 65),
  'C',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Eu vou cantar, eu vou cantar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;</cifra><p>De joelho em uma cruz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Eu vou louvar ao Senhor Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Foi quem me deu esta luz</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Esta luz é da Floresta</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;</cifra><p>Que ninguém não conhecia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Quem veio me entregar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Foi a Sempre Virgem Maria</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Quando Ela me entregou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;</cifra><p>Eu gravei no coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Pra replantar Santa Doutrina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E ensinar aos meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Eu agora recebi</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;</cifra><p>Este prêmio de valor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>De São José e da Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>De Jesus Cristo Redentor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Tenho fé de vencer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;</cifra><p>E ganhar com os meus ensinos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Porque Deus é soberano</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E Ele é quem nos determina</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 66: São João
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 66),
  'C',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>São João era menino</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Só vivia nas Campinas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Pastorando as suas ovelhas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Pregando a Santa Doutrina</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Pregando a Santa Doutrina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>O amor Ele empregou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Atrás dele veio Jesus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Toda verdade afirmou</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Toda verdade afirmou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Gravou no coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Ambos foram batizados</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>No Rio de Jordão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>No Rio de Jordão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Ambos tiveram em pé</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Um é filho de Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>O outro é filho de Isabel</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Jesus tava vestido</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Com sua roupa cor de cana</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Dando viva ao Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E Viva a Senhora Santana</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 67: Olhei para o firmamento
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 67),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Olhei para o firmamento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Vi as estrelas brilhar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Tinha uma mais bonita</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;D</cifra><p>De um trono imperial</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Este trono imperial</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Foi Deus quem me mostrou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Para eu amar a Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E a Jesus Cristo Redentor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Todo dia eu canto e peço</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para limpar meu coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Para eu seguir neste caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E deixar a ilusão</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Sempre eu digo aos meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Que trate o tempo mais sério</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Que o tempo não engana</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E não tem dó desta matéria</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 68: Chamei lá nas alturas
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 68),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Chamei lá nas alturas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Para o Divino vir à terra</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Trazer a Santa Paz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Que não precisamos de guerra</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Vou louvar bendito é o fruto</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Do vosso ventre Jesus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Foi quem veio a este mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Nos trazer a Santa Luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Vós nos dê o vosso pão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>O vosso ensino divino</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Vós me dê a Santa Luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para eu seguir o meu destino</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para eu seguir o meu destino</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Neste mundo com certeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Que Deus não abandona</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Quem ama com firmeza</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 69: Passarinho
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 69),
  'Dm',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Passarinho está cantando</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;Dm</cifra><p>Discorrendo o ABC</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>E eu discorro a tua vida</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;
(D7)</cifra><p>Para todo mundo ver</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Passarinho está cantando</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Canta na mata deserta</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Dizendo para o caçador</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
(D7)</cifra><p>Você atira e não acerta</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Passarinho Verde canta</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Bem pertinho para tu ver</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Sou Passarinho e tenho dono</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;
(D7)</cifra><p>E o meu dono tem poder</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Passarinho Verde canta</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Com alegria e com amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Sou Passarinho e canto certo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;
(D7)</cifra><p>E com certeza aqui estou</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 70: Firmeza
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 70),
  'A',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Firmeza, firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Firmeza eu peço a Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Aplanai meu coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu quero ser um filho seu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Aplanai meu coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7</cifra><p>Eu quero ser um filho seu</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Firmeza, firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Eu recebo com alegria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>A quem eu peço firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>É a Sempre Virgem Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>A quem eu peço firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7</cifra><p>É a Sempre Virgem Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Firmeza, firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Eu recebo é com amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>A quem eu peço firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>É a Jesus Cristo Redentor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>A quem eu peço firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7</cifra><p>É a Jesus Cristo Redentor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Firmeza, firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Para seguir na Santa Luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>A quem eu peço firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>É ao coração de Jesus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>A quem eu peço firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7</cifra><p>É ao coração de Jesus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Firmeza, firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Firmeza no pensamento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>A quem eu peço firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>É ao nosso Deus Onipotente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>A quem eu peço firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7</cifra><p>Para ser feliz eternamente</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 71: Chamo o tempo
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 71),
  'A',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Chamo o Tempo, eu chamo o Tempo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para ele vir me ensinar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Aprender com perfeição</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para eu poder ensinar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Os que forem obedientes</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Tratar de aprender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Para ser eternamente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para Deus lhe atender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Depois que o Tempo chega</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;</cifra><p>Ninguém quis aprender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Depois que refletir</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>É que vai se arrepender</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Firmeza no pensamento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para seguir no caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Embora que não aprenda muito</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Aprenda sempre um bocadinho</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 72: Silencioso
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 72),
  'A',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Silencioso</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>eu chego no jardim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu peço à Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Que vós tenha pena de mim</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Oh Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Vós sois Mãe do Redentor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Perdoai os vossos filhos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7</cifra><p>Pelo vosso Santo Amor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Silencioso</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>eu chego no jardim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu peço à Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Que vós tenha pena de mim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Divino Pai</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Soberano Criador</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Perdoai os vossos filhos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7</cifra><p>Neste mundo pecador</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Silencioso</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu chego no jardim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu peço à Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Que Vós tenha pena de mim.</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 73: Eu vi a Virgem Mãe
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 73),
  'Bm',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Eu vi a Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Nas alturas onde Ela está</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Me mandou que eu afirmasse</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>A firmeza eu afirmar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>A lua é quem dá força</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Para a terra criadora</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Quero que vós me protejas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Vós como Mãe protetora</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>O Divino Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Soberano Onipotente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Quero que vós me dê forças</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Para ensinar esta gente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>A Sempre Virgem Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>É na terra, é no astral</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Aqueles que for rebeldes</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Precisa disciplinar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Eu ensino é com amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>É com firmeza e lealdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Quando vem falar comigo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Sempre trazem a falsidade</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Isto é deles não é meu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Faço por não compreender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Depois eles saem dizendo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;</cifra><p>Que o Mestre não tem saber</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 74: Só eu cantei na barra
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 74),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Só eu cantei na barra</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Que fiz estremecer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Se tu queres vida eu te dou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Que ninguém não quer morrer</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>A morte é muito simples</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Assim eu vou te dizer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Eu comparo a morte</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>É igualmente ao nascer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Depois que desencarna</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Firmeza no coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Se Deus te der licença</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Volta a outra encarnação</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Na terra como no céu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>É o dizer de todo mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Se não preparar o terreno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Fica espírito vagabundo</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 75: As Estrelas
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 75),
  'C',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>As estrelas já chegaram</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Para dizer o nome seu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Sou eu, sou eu, sou eu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Sou eu um filho de Deus</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>As estrelas me levaram</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Para correr o mundo inteiro</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Pra conhecer esta verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Para poder ser verdadeiro</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Eu subi serra de espinhos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Pisando em pontas agudas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>As estrelas me disseram</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>No mundo se cura tudo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>As estrelas me disseram</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Ouve muito e fala pouco</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para poder compreender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>E conversar com meus caboclos</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Os caboclos já chegaram</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>De braços nus e pés no chão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Eles trazem remédios bons</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Para curar os cristãos</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 76: A Virgem Mãe é soberana
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 76),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A Virgem Mãe é Soberana</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Nas alturas onde Ela está</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm7(b5)</cifra><p>Socorrei um filho seu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Que está no mundo a reclamar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Chora, chora, chora, chora</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>E este choro tem razão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm7(b5)</cifra><p>Tanto tempo que viveu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>E nunca pediu o perdão</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Tanto tempo que viveu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>No mundo de provação</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm7(b5)</cifra><p>De Deus tu te esqueceu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>E só é bom a ilusão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Eu estava dentro da mata</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Debaixo de um arvoredo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm7(b5)</cifra><p>Tudo tem, tudo tem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>No mundo não há segredo</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Eu digo de mim para ti</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>E para os outros que eu não estou vendo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm7(b5)</cifra><p>Quando eu acabo de dizer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Todo mundo está sabendo</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 77: Chamo e sei
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 77),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Chamo e sei, eu chamo e sei</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Chamo e sei aonde está</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Chamo e sei, eu chamo e sei</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Eu chamo e sei e vou mostrar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>A verdade é minha vida</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A minha Mãe é quem me dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para eu conhecer esta verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Para saber aonde está</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Vou rezar as minhas preces</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Cumprir minha obrigação</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Oferecer ao Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Que é o Senhor da Criação</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 78: Das virtudes
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 78),
  'F',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Das virtudes em que cheguei</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Canto ensino, vem comigo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>O poder que Deus me dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Para este mundo eu doutrinar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Doutrinar o mundo inteiro</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Para todos aprender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Castigar severamente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Quem não quiser obedecer</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Canto ensino é com amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Com prazer e alegria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Obedecendo ao Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>E a Sempre Virgem Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>As palavras que eu disser</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Aqui perante a este poder</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Estão escritas no astral</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Para todo mundo ver</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Sigo firme a minha linha</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Sem a nada eu temer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Porque eu sou filho de Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>E confio neste poder</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Dou licença e dou pancada</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Aqui eu faço a minha justiça</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Precisa nós acabar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Com o correio da má notícia</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 79: Jardineiro
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 79),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Minha Mãe, minha Rainha</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Foi Ela que me entregou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para mim ser jardineiro</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>No Jardim de Belas Flores</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>No Jardim de Belas Flores</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Tem tudo que procurar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Tem primor e tem beleza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Tem tudo que Deus me dá</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Todo mundo recebe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>As flores que vem de lá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Mas ninguém presta atenção</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Ninguém sabe aproveitar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para zelar este jardim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Precisa muita atenção</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Que as flores são muito finas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Não podem cair no chão</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>O Jardim de Belas Flores</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Precisa sempre aguar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Com as preces e os carinhos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Ao nosso Pai Universal</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 80: Chamo a Força
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 80),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Chamo a força, eu chamo a força</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A força vem nos amostrar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Treme a terra e balanceia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>E vós não sai do seu lugar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Treme a terra, treme a terra</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Treme a terra e geme o mar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Ainda tem gente que duvida</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Do poder que vós me dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Aqui dentro da verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Tem uns certos mentirosos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Que caluniam os seus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para se tornar muito viçosos</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Mas ninguém não se alembra</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Que chamou o Mestre mentiroso</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Devagarinho vai chegando</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>E quem chamou é quem vai ficando</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 81: Professor
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 81),
  'F',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Aqui tem um professor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Que vai deixar de ensinar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Que ele ensina, ninguém faz caso</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>E só lêem de diante para trás</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Só lêem de diante para trás</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Mas ele não ensina assim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Ele ensina é direitinho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Mas ninguém não faz assim</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Se todos assim fizessem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Estavam um pouco adiantados</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Bb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Eram servos de Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>E do povo bem estimado</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Eu entrei em conferência</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para deixar de ensinar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Bb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>A Virgem Mãe me disse</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Ninguém não pode obrigar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Se ensina e ninguém faz caso</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Ninguém trata de aprender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Depois não se admirem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>De tudo que aparecer</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Todos mandam em sua casa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Eu também mando na minha</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Todos ficam sem aprender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Eu fico com a minha Rainha</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 82: Campineiro
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 82),
  'A',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Sou jardineiro e sou campineiro</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Tenho tudo que Mamãe me dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>No jardim eu tenho as flores</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>E nas Campinas eu andava atrás</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Sou campineiro e sou verdadeiro</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;D</cifra><p>E é preciso eu viajar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Que o poder de Deus é grande</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>E eu desejo alcançar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Me acho fraco e cansado</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>De lutar com rebeldia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Fazer gosto a quem não tem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Na esperança de um dia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Digo adeus aos meus amigos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Até um dia final</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Se Deus e a Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Me der licença eu voltar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Digo adeus a todos e todas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E ninguém me respondeu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Todos ficam em seus lugares</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>E quem se retira sou eu</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 83: O Divino Pai Eterno
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 83),
  'Bm',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;Bm</cifra><p>O Divino Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Foi quem me mandou dizer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Que eu avisasse aos meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>O que vai acontecer</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Firmeza no pensamento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Para seguir neste amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Aqui dentro da verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Ela mostra o seu valor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>A minha Mãe que me ensinou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;Bm</cifra><p>Com o nome de Jesus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>É quem nos mostra esta verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>É quem nos dá a Santa Luz</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Vou seguir, vou te deixar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Este mundo de ilusão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Vou para onde Deus quiser</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Com a Virgem da Conceição</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 84: Ia guiado pela Lua
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 84),
  'A',
  '<cifra class="cifra">A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Ia guiado pela lua</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>E as estrelas de uma banda</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Quando eu cheguei</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>em cima de um monte</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu escutei um grande estrondo</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Esse estrondo que eu ouvi</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Foi Deus do Céu foi quem ralhou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Dizendo para todos nós</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Que tem poder superior</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu estava passeando</p><cifra class="cifra">&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Na praia do mar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Escutei uma voz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Mandaram me buscar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Aí eu botei os olhos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Aí vem uma canoa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Feita de ouro e prata</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>E uma Senhora na proa</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Quando Ela chegou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Mandou eu embarcar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Ela disse para mim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Nós vamos viajar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Nós vamos viajar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para o ponto destinado</p><cifra class="cifra">&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Deus e a Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Quem vai ao nosso lado</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Quando nós chegamos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Nas Campinas desta flor</p><cifra class="cifra">&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Esta é a riqueza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Do nosso Pai Criador</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 85: Vou seguindo
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 85),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Vou seguindo, eu vou seguindo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Cantando as minhas doutrinas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A Virgem Mãe é soberana</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Minha Mãe que nos ensina</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Vou seguindo, eu vou seguindo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Vamos ver se nós acerta</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>O caminho de Jesus Cristo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Aonde andou com seus profetas</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Na casa da Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>De Jesus Cristo Redentor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Cantamos manos cantamos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Consagrando este amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Na casa de Jesus Cristo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Ele mandou para nós cantar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para louvar ao Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>É quem tem para nos dar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>É quem tem para nos dar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para mim com os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>É quem dá a todos nós</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A eterna salvação</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 86: Eu vim da minha armada
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 86),
  'Bm',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu vim da minha armada</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Trazer fé e amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A minha mãe que me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Eu ficar firme aonde estou</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Vou seguindo os meus passos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Se eu achar firmeza eu vou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Não despreza os teus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Mostra tua luz de amor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Sou filho da verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Do poder superior</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A minha mãe que me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Trazer fé e amor</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 87: Deus, Divino Deus
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 87),
  'Bm',
  '<cifra class="cifra">&nbsp;Bm</cifra><p>Deus, Divino Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Soberano luz de amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>É o Poder Universal</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;Bm</cifra><p>É a força superior</p><p><br></p><cifra class="cifra">&nbsp;Bm</cifra><p>Vamos, vamos meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Vamos todos nós cantar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Para Deus dar nossa saúde</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>A Virgem Mãe nos perdoar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Eu digo é com firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Dentro do meu coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Que Jesus Cristo está conosco</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>É quem nos dá as instruções</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 88: Chamo Estrela
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 88),
  'C',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Chamo Estrela, chamo Estrela</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Chamo Estrela, Estrela vem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;Am</cifra><p>Ela vem me ensinar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;
(C7)</cifra><p>O amor de quem quer bem</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>O amor de quem quer bem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>É a saúde e o bem-estar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;Am</cifra><p>Consagrando este amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;
(C7)</cifra><p>Para sempre não faltar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Para sempre, para sempre</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Amigo do meu irmão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;Am</cifra><p>Que ele é a minha luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;
(C7)</cifra><p>Neste mundo de ilusão</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 89: Eu canto, eu digo
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 89),
  'A',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;E</cifra><p>Eu canto eu digo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Dentro do poder divino</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Porque Deus é quem me dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para trazer estes ensinos</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>A minha Mãe que me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Trazer fé e amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Repartir com meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para ser a mesma flor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Jesus Cristo me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para mim vir ensinar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Replantar Santas Doutrinas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>E Deus te dá um bom lugar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 90: No jardim mimosa flor
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 90),
  'F',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>No jardim mimosa flor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para sempre estou aqui</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Para ser filho de Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Não precisa ser ruim</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Todo mundo é muito bom</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Mas não quer se condoer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Se fogem da caridade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>E depois não quer sofrer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>O caminho torto errado</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>E daqui ninguém quer ser</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>A verdade eu mostro a todos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Que souber me compreender</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Aqui dentro da verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A minha Mãe que me ensinou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Me dá força e me dá brilho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Para sempre eu ter valor</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 91: Choro muito
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 91),
  'D',
  '<cifra class="cifra">D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;Bm</cifra><p>Choro muito e lamento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Tudo que já se passou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Deixo tudo saudosamente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E vou viver no meio das flores</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;Bm</cifra><p>Vou viver no meio das flores</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Junto com a Virgem Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;Bm</cifra><p>Os terrores que aparecem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>É essa grande rebeldia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;Bm</cifra><p>Vamos todos meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Vamos rezar com amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Para Deus e a Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Nos defender destes terrores</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;Bm</cifra><p>Sou filho da Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Reconheço este poder</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Chamo a força, eu chamo a força</p><cifra class="cifra">&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para vir nos defender</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 92: Sou humilde
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 92),
  'Bm',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Chamei lá nas alturas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>A minha Mãe me respondeu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Sou humilde, sou humilde</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Sou humilde um filho seu</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>A minha Mãe que me ensinou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Para sempre a Deus louvar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Para sempre, para sempre</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Para sempre aonde está</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Sou filho da verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;Em</cifra><p>E do poder universal</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Para sempre, para sempre</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Para sempre acreditar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 93: O Cruzeiro
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 93),
  'E',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>No Cruzeiro tem rosário</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C#m</cifra><p>Para quem quiser rezar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;G#m</cifra><p>Também tem a Santa Luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;E</cifra><p>Para quem quer viajar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Vamos todos nós louvar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C#m</cifra><p>O Divino Espírito Santo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;G#m</cifra><p>A Virgem Nossa Senhora</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Nos cobrir com o vosso manto</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Eu digo é com firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C#m</cifra><p>Dentro do meu coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;G#m</cifra><p>Vamos todos nós louvar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>A Virgem da Conceição</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>A Virgem da Conceição</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C#m</cifra><p>É a nossa protetora</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;G#m</cifra><p>É quem nos dá vida e saúde</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>E é a nossa defensora</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Vamos todos meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C#m</cifra><p>Vamos cantar com amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;G#m</cifra><p>Vamos todos nós louvar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>A Jesus Cristo Redentor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Jesus Cristo Redentor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C#m</cifra><p>Filho da Virgem Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;G#m</cifra><p>É quem nos dá a Santa Luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>E o nosso pão de cada dia</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 94: Perguntei a todo mundo
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 94),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Perguntei a todo mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;Am</cifra><p>Por onde vai o caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E ninguém me respondeu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Vou viajando sozinho</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Deus na frente Deus na paz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Nas alturas onde ele está</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Vou viajando com Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Um dia eu hei de chegar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Jesus Cristo vai comigo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Vai na minha companhia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para um dia eu entrar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Dentro da soberania</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Todo mundo quer ser grande</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Me deixaram eu ficar só</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Fico com a virgem Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Estou com a força maior</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 95: Mensageiro
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 95),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Te levanta, te levanta</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Levanta quem está sentado</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para receber o Mensageiro</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Dentro do Jardim Dourado</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Vai seguindo, vai seguindo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Dentro do jardim de amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para receber o Mensageiro</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;D</cifra><p>Do nosso Pai Criador</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>A mensagem que ele traz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>É com prazer e alegria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Jesus Cristo e São José</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E a Sempre Virgem Maria</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 96: As campinas
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 96),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Quando eu cheguei em uma campina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Vi um formoso batalhão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;</cifra><p>Também vi uma Senhora</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Com uma bandeira na mão</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Quando esta Senhora me viu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;Em</cifra><p>Veio comigo falar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;</cifra><p>Há tempo eu estou te esperando</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>Para tudo isto eu te entregar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Você me zele esta campina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>De brilhantes pedras finas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;</cifra><p>Conservando a Santa Luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>No caminho que eu destino</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 97: Centenário
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 97),
  'E',
  '<cifra class="cifra">&nbsp;E</cifra><p>Traí, traí, traí, tra</p><cifra class="cifra">&nbsp;E</cifra><p>Traí, traí, traí, tra</p><cifra class="cifra">B</cifra><p>Tra... tra...</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G#m</cifra><p>Chamo e sei, chamo e sei</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Chamo e sei quem te mandou</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G#m</cifra><p>Te recebo, te recebo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Te recebo é com amor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G#m</cifra><p>Com as forças do meu Pai</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>E o poder superior</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G#m</cifra><p>Completei um centenário</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>No Cruzeiro universal</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G#m</cifra><p>Cada um que está comigo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Capriche e venha se apresentar</p><p><br></p><p><b>Viva o Mestre Centenário</b></p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 98: Sou filho desta verdade
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 98),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Sou filho desta verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Sou dono deste poder</p><cifra class="cifra">&nbsp;&nbsp;A</cifra><p>Deus me entrega com firmeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu não devo esmorecer</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Vou seguindo nesta verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para sempre, sempre outra vez</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A minha mãe sempre comigo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Que me ensina eu compreender</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu estou aqui nesta verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Só ensino é coisas boas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Alguns que estão comigo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Só pensam é coisa à-toa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>A ruína que se faz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>É só para sofrer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Cada um dá o que tem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Não precisa ninguém dizer</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Agora eu volto para o meu lugar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Sigo em frente, vamos trabalhar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Não pense em fazer o que tu queres</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Que Deus é o nosso Pai</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 99: Sei aonde está meu Pai
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 99),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Sei aonde está meu Pai</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Sei que Ele está me vendo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Reconheço a minha Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu sei o que estou dizendo</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Todos façam por saber</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Conhecer o seu valor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Receber a Santa Luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Encher seu culto de amor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Todos chegam no salão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Com alegria para cantar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Quando chega os dias próximos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Suspira para não voltar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 100: Sou filho da terra
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 100),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu sou filho da terra</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Vivo nas matas sombrias</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Implorando ao Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E a Sempre Virgem Maria</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Aqui eu toco o meu tambor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>E nas matas eu rufo caixa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Todo mundo vai atrás</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Procurando mas não acha</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;</cifra><p>Todo mundo é sabido</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m</cifra><p>E o saber Deus é quem dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Seguindo na linha direita</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>É muito fácil de encontrar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 101: O brilho da Lua Branca
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 101),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;A</cifra><p>No brilho da Lua Branca</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Foi quem me trouxe aqui</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Doutrinar a quem quiser</p><cifra class="cifra">Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Neste caminho a seguir</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Sou filho desta verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Devo caprichar assim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Caprichar eternamente</p><cifra class="cifra">Bm&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para nunca ser ruim</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Lua Branca quem me trouxe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Confiou-me este lugar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para ser filho legítimo</p><cifra class="cifra">Bm&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>É preciso doutrinar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A minha Mãe quem me ensina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Tudo enquanto eu quiser</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Peço força, peço força</p><cifra class="cifra">Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>A meu Pai que tem poder</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>A minha Mãe foi quem me deu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Neste mundo este lugar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Peço força e dou força</p><cifra class="cifra">Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>A não sair do meu lugar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 102: Sou filho desta verdade
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 102),
  'Bm',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;</cifra><p>Sou filho desta verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>E neste mundo estou aqui</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Dou conselho e dou conselho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Para aqueles que me ouvir</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;</cifra><p>O saber de todo mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>É um saber universal</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Aqui tem muita ciência</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Que é preciso se estudar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;</cifra><p><b>Estudo fino, estudo fino</b></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Que é preciso conhecer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para ser bom professor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Apresentar o seu saber</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 103: Todos querem
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 103),
  'Dm',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Todos querem, todos querem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Todos querem, eu vou dizer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Todos querem, todos querem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>É preciso compreender</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Vou seguir na minha linha</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Vou deixar recordação</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Todos querem, todos querem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Todos querem ser irmão</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para ser irmão legítimo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>É preciso um juramento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Não brigar com seu irmão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>E nem trocar seu pensamento</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 104: Sexta-Feira Santa
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 104),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Sou filho, sou filho,</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Sou filho do Poder</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A minha Mãe me trouxe aqui</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Quem quiser venha aprender</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Vou seguindo, vou seguindo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Os passos que Deus me dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A minha memória divina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Eu tenho que apresentar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A minha Mãe que me ensina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Me diz tudo que eu quiser</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Sou filho desta verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>E meu Pai é São José</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A Sexta-feira Santa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Guardemos com obediência</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Três antes e três depois</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para afastar toda doença</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 105: Sou filho deste Poder
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 105),
  'Dm',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Sou filho deste poder</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Vivo na terra e no mar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Implorando ao meu Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Nas alturas onde Ele está</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Eu vivo aqui cantando</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Para quem tiver amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Consagrando a minha Rainha</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Foi Ela quem me ensinou</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Todos santos e todas santas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;Gm</cifra><p>Rogam a Deus no coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para os filhos da terra</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Se esquecer da ilusão</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 106: Fortaleza
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 106),
  'F',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Estando nesta fortaleza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Onde me radeia o sol</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Encostado a meu Império</p><cifra class="cifra">&nbsp;Bb&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Dono da força maior</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Dono de todo poder</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Dono da força maior</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>É Ele é quem me ensina</p><cifra class="cifra">Bb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Para ensinar os menores</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Para ensinar os menores</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Para todos aprender</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para sempre louvar a Deus</p><cifra class="cifra">Bb&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>E saber agradecer</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 107: Chamei lá nas alturas
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 107),
  'F',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Chamei lá nas alturas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Para o Divino me ouvir</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>A minha Mãe me respondeu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Oh filho meu, estou aqui</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Minha Mãe, vamos comigo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Para sempre, eterna luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para eu poder assinar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Para sempre a Santa Cruz</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;</cifra><p>Esta cruz no firmamento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Que radeia a Santa luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Todos que nela firmar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>É para sempre amém Jesus</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 108: Linha do Tucum
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 108),
  'Gm',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Eu canto aqui na terra</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am7(b5)&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>O amor que Deus me dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb&nbsp;</cifra><p>Para sempre, para sempre</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Para sempre, para sempre</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>A minha Mãe que vem comigo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am7(b5)&nbsp;&nbsp;D7&nbsp;&nbsp;Gm</cifra><p>Que me deu esta lição</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb&nbsp;</cifra><p>Para sempre, para sempre</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Para sempre eu ser irmão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Enxotando os malfazejos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am7(b5)&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Que não querem me ouvir</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb&nbsp;</cifra><p>Que escurecem o pensamento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>E nunca podem ser feliz</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Esta é a Linha do Tucum</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am7(b5)&nbsp;&nbsp;D7&nbsp;&nbsp;Gm</cifra><p>Que traz toda lealdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb&nbsp;</cifra><p>Castigando os mentirosos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Aqui dentro desta verdade</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 109: Tudo, Tudo
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 109),
  'Gm',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb</cifra><p>Tudo, tudo Deus me mostra</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;</cifra><p>Para mim reconhecer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;</cifra><p>Tudo, tudo é verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu não posso me esquecer</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb</cifra><p>A minha Mãe que me ensina</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Que me entrega este poder</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;</cifra><p>Tomo conta e dou conta</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu não posso me esquecer</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb</cifra><p>Sigo a minha viagem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Dentro desta primosia</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;</cifra><p>Tudo, tudo é verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cm&nbsp;&nbsp;&nbsp;F&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>No reino da soberania</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 110: De longe
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 110),
  'C',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>De longe, eu venho de longe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Das ondas do mar sagrado</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Para eu conhecer os poderes</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Da floresta e Deus amar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Eu sigo neste caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Ando nele dias inteiros</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Para eu conhecer o poder</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E a santa luz de Deus verdadeiro</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>No poder de Deus verdadeiro</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>É preciso nós ter amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Nas estrelas do firmamento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E em tudo que Deus criou</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 111: Estou aqui
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 111),
  'G',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Estou aqui</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7</cifra><p>Eu não estando como é</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Eu penso na verdade</p><cifra class="cifra">Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Me vem tudo que eu quiser</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>A minha Mãe me trouxe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7</cifra><p>Ela deseja me levar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Todos nós temos a certeza</p><cifra class="cifra">Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Deste mundo se ausentar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Eu vou contente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7</cifra><p>Com esperança de voltar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Nem que seja em pensamento</p><cifra class="cifra">&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Tudo eu hei de me lembrar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Aqui findei</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7</cifra><p>Faço a minha narração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Para sempre se lembrarem</p><cifra class="cifra">Em&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G</cifra><p>Do velho Juramidam</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 112: Meu Pai
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 112),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Meu Pai, meu Pai</p><cifra class="cifra">Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Me dá o teu amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;</cifra><p>Para eu ser filho de vós</p><cifra class="cifra">&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Aqui na terra aonde estou</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Minha Mãe, minha Mãe,</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Que tudo que vós me dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#m&nbsp;</cifra><p>Para eu viver neste mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;D</cifra><p>E aos meus irmãos todos abraçar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 113: Sigo nesta verdade
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 113),
  'Bm',
  '<cifra class="cifra">Bm&nbsp;&nbsp;&nbsp;E#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Sigo nesta verdade</p><cifra class="cifra">&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Nunca pensei em voltar</p><cifra class="cifra">&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Sigo neste caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Para um dia eu alcançar</p><p><br></p><cifra class="cifra">Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Eu como filho de vós</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Se um dia eu merecer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Quero que vós me conceda</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Para eu ter o mesmo poder</p><p><br></p><cifra class="cifra">Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>A minha mãe que me diz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Que tudo eu tenho que vencer</p><cifra class="cifra">&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Sigo neste caminho</p><cifra class="cifra">&nbsp;&nbsp;E#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Nada eu tenho a temer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Eu canto e torno a cantar</p><cifra class="cifra">&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Para seguir o meu destino</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Recebendo a Santa Luz</p><cifra class="cifra">&nbsp;E#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Da Santíssima Mãe Divina</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Quando eu cheguei nesta Casa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Estrondo de palmas me deram</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Meu Chefe me recebeu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;E#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>O dono de todo Império</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 114: Encostado a minha Mãe
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 114),
  'Dm',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Encostado a minha Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>E meu Papai lá no astral</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para sempre eu quero estar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para sempre eu quero estar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Minha flor minha esperança</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Minha rosa do jardim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para sempre eu quero estar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Com minha Mãe juntinho a mim</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Eu moro nesta casa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Que minha Mãe me entregou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Eu estando junto com Ela</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Sempre dando o seu valor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Fazendo algumas curas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Que minha Mãe me ordenou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>De brilhantes pedras finas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para sempre aqui estou</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 115: Batalha
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 115),
  'F',
  '<cifra class="cifra">C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb</cifra><p>Entrei numa batalha</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Vi meu povo esmorecer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb</cifra><p>Temos que vencer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Com o poder do Senhor Deus</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Oh! Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Com o poder que vós me dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Me dá força, me dá luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E não me deixa derribar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb</cifra><p>O Divino Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E a Virgem da Conceição</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bb</cifra><p>Todo mundo levantou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Com suas armas na mão</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Oh! Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Com o poder que vós me dá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Me dá força, me dá luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>E não me deixa derribar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 116: Sou filho do Poder
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 116),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Sou filho do Poder</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>E dentro desta casa estou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;</cifra><p>Fazendo os meus trabalhos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Que minha Mãe me ordenou</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Eu pedi a meu Pai</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Me deu o consentimento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;</cifra><p>Trabalhar para os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Aqueles que estão doentes</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Confessa a consciência</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>E alegra teu coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;</cifra><p>Que esta é a verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Que eu apresento aos meus irmãos</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 117: Dou Viva a Deus nas alturas
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 117),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Dou viva a Deus nas alturas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E a Virgem Mãe nosso amor</p><cifra class="cifra">D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Viva todo Ser Divino</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E Jesus Cristo Redentor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu peço a Deus nas alturas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para Vós me iluminar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Botai-me no bom caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E livrai-me de todo mal</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu vivo aqui neste mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Encostado a este Cruzeiro</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Vejo tanta iluminária</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Do nosso Deus Verdadeiro</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Esta iluminária que eu vejo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Alegra o meu coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Estas flores que recebemos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para nossa Salvação</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 118: Todos querem ser irmãos
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 118),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Todos querem ser irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Mas não têm a lealdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para seguir na Vida Espírita</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Que é o Reino da Verdade</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>É o Reino da Verdade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>É a Estrada do Amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>É todos prestar atenção</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Aos ensinos do professor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Os ensinos do professor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>É quem nos traz belas lições</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para todos se unir</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>E respeitar os seus irmãos</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Respeitar os seus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Com alegria e com amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para todos conhecer</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>E saber dar o seu valor</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 119: Confia
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 119),
  'Dm',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Confia, confia, confia no Poder</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Confia no saber</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7</cifra><p>Confia na força</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Aonde pode ser</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Esta força é muito simples</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Todo mundo vê</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7</cifra><p>Mas passa por ela</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>E não procura compreender</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Estamos todos reunidos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Com a nossa chave na mão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7</cifra><p>É limpar mentalidade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para entrar neste salão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Este é o Salão Dourado</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Do nosso Pai Verdadeiro</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7</cifra><p>Todos nós somos filhos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>E todos nós somos herdeiros</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Nós todos somos filhos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>E é preciso trabalhar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7</cifra><p>Amar ao Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>É quem tem para nos dar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 120: Eu Peço
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 120),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu peço, eu peço</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Eu peço ao Pai Divino</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7</cifra><p>Que me dê a Santa Luz</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Para iluminar o meu caminho</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu peço à Virgem Mãe</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>E a Jesus Cristo Redentor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7</cifra><p>Iluminai o meu caminho</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Nessa Estrada do Amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Essa Estrada do Amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Dentro do meu coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7</cifra><p>Eu peço a Jesus Cristo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Que nos dê a Salvação</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu peço a Salvação</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Que só Vós pode no dar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7</cifra><p>Perdoai-nos neste mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>E na vida espiritual</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 121: Esta Força
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 121),
  'D',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Esta Força, este Poder</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu devo amar no meu coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Trabalhar no mundo Terra</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>A benefício dos meus irmaõs</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Estou aqui, neste lugar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Foi minha Mãe que me mandou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Estamos dentro desta casa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Onde afirmamos a fé e o amor</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 122: Quem procurar esta casa
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 122),
  'Am',
  '<cifra class="cifra">&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Quem procurar esta casa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Que aqui nela chegar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Encontra com a Virgem Maria</p><cifra class="cifra">&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Sua saúde Ela dá</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Minha Sempre Virgem Maria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Perdoai os filhos Seus</p><cifra class="cifra">Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Vós como Mãe Soberana</p><cifra class="cifra">E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>A Divina Mãe de Deus</p><cifra class="cifra">Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Eu peço a Vós bem contrito</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Fazendo as minhas orações</p><cifra class="cifra">Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Peço a Vós a Santa Luz</p><cifra class="cifra">E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para iluminar o me perdão</p><p><br></p><cifra class="cifra">Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Aqui dentro desta casa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Tem tudo que procurar</p><cifra class="cifra">&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Seguindo o bom caminho</p><cifra class="cifra">&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Fazer bem, não fazer mal</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 123: Eu andei na Casa Santa
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 123),
  'Dm',
  '<cifra class="cifra">&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Eu andei na Casa Santa</p><cifra class="cifra">&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Trouxe muitas coisas boas</p><cifra class="cifra">&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;&nbsp;A</cifra><p>Tudo vive neste mundo</p><cifra class="cifra">&nbsp;Em7(b5)&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Parece umas coisa à toa</p><p><br></p><cifra class="cifra">&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Pedi licença ao Divino</p><cifra class="cifra">&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Para estas palavras eu narrar</p><cifra class="cifra">&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;A</cifra><p>Perante aos meus irmãos</p><cifra class="cifra">Em7(b5)&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Para todos escutar</p><cifra class="cifra">&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Depois que todos escutarem</p><cifra class="cifra">&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>É que vão reconhecer</p><cifra class="cifra">&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;A</cifra><p>Tudo vive neste mundo</p><cifra class="cifra">Em7(b5)&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Muito longe do Poder</p><p><br></p><cifra class="cifra">&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Para estar junto ao Poder</p><cifra class="cifra">&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Da Virgem da Conceição</p><cifra class="cifra">&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm&nbsp;&nbsp;A</cifra><p>É ter fé e ter amor</p><cifra class="cifra">Em7(b5)&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Dar valor aos seus irmãos</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 124: Eu tomo esta Bebida
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 124),
  'Am',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Eu tomo esta bebida</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Que tem poder inacreditável</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Ela mostra a todos nós</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Aqui dentro desta verdade</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Subi, subi, subi</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Subi foi com alegria</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Quando eu cheguei nas alturas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Encontrei com a Virgem Maria</p><cifra class="cifra">&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Subi, subi, subi</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Subi foi com amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Encontrei com o Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>E Jesus Cristo Redentor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Subi, subi, subi</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Conforme os meus ensinos</p><cifra class="cifra">&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C</cifra><p>Viva o Pai Eterno</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>E viva todo Ser Divino</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 125: Aqui estou dizendo
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 125),
  'Am',
  '<cifra class="cifra">&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Aqui estou dizendo</p><cifra class="cifra">&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Aqui estou cantando</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Eu digo para todos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Hinos estão ensinando</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Aqueles que compreenderem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Que quiser seguir comigo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Tendo fé e tendo amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Não deve encarar perigo</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Sigo os meus passos em frente</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Com alegria e com amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Porque Deus é Soberano</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>E nesta firmeza estou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>A Virgem Mãe é Soberana</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Foi Ela quem me ensinou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Ela me mandou pra cá</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Para ser um Professor</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Vamos sequir, vamos seguir</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;G&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E</cifra><p>Vamos seguir, vamos embora</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Que nós somos filhos eternos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Am</cifra><p>Filhos de Nossa Senhora</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 126: Flor das Águas
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 126),
  'Dm',
  '<cifra class="cifra">&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Flor das águas</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>da onde vens, para onde vais</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Vou fazer minha limpeza</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>No coração está meu Pai</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>A morada do meu Pai</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>É no coração do mundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Aonde existe todo amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>E tem um segredo profundo</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Este segredo profundo</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D7&nbsp;&nbsp;&nbsp;&nbsp;Gm</cifra><p>Está em toda humanidade</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F</cifra><p>Se todos se conhecerem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>Aqui dentro da verdade</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 127: Marchinha
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 127),
  'Dm',
  '<cifra class="cifra">Dm&nbsp;&nbsp;A7&nbsp;&nbsp;Dm<br>Dm&nbsp;&nbsp;D7&nbsp;<br>Gm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A<br>A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dm</cifra><p>{ Hino Instrumental }</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 128: Eu Pedi
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 128),
  'A',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu pedi, eu pedi, eu pedi</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Eu pedi Mamãe me deu</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Para me apresentar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Ao Divino Senhor Deus</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Meu Divino Senhor Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>É Pai de todo amor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Perdoai os Vossos filhos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Neste mundo pecador</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Jesus Cristo Redentor</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D</cifra><p>Senhor do meu coração</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Defendei os Vossos filhos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Neste mundo de ilusão</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 129: Eu cheguei nesta Casa
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 129),
  'A',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu cheguei nesta casa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu entrei por esta porta</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu venho dar os agradecimentos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>A quem rogou por minha volta</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu estou dentro desta casa</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Aqui no meio deste salão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Estou alegre e satisfeito</p><cifra class="cifra">F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Junto aqui com os meus irmãos</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Ia fazendo uma viagem</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Ia pensando em não voltar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Os pedidos foram tantos</p><cifra class="cifra">F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Me mandaram eu voltar</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Me mandaram eu voltar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Eu estou firme, vou trabalhar</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A</cifra><p>Ensinar os meus irmãos</p><cifra class="cifra">F#m&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</cifra><p>Aqueles que me escutar</p>',
  true
) ON CONFLICT DO NOTHING;

-- Cifra for Hino 130: Pisei na Terra Fria
INSERT INTO cifras (hino_id, tom_original, conteudo_cifrado, is_approved)
VALUES (
  (SELECT h.id FROM hinos h
   JOIN hinarios hi ON h.hinario_id = hi.id
   WHERE hi.slug = 'o-cruzeiro' AND h.numero = 130),
  'Bm',
  '<cifra class="cifra">&nbsp;&nbsp;&nbsp;Bm&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Pisei na terra fria,</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Nela eu senti calor.</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Ela é quem me dá o pão</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>A minha Mãe que nos criou.</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>A minha Mãe que nos criou</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>E me dá todos ensinos,</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>A matéria eu entrego a Ela</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>E o meu espírito ao Divino.</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Do sangue das minhas veias</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Eu fiz minha assinatura.</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>O meu espírito, eu entrego a Deus</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>E o meu corpo, à sepultura.</p><p><br></p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Meu corpo na sepultura</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Em</cifra><p>Desprezado no relento</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Alguém fala em meu nome</p><cifra class="cifra">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;F#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bm</cifra><p>Alguma vez em pensamento</p>',
  true
) ON CONFLICT DO NOTHING;


-- =============================================
-- VERIFICATION
-- =============================================
SELECT 'Seed completed!' AS status,
       (SELECT COUNT(*) FROM hinarios WHERE slug = 'o-cruzeiro') AS hinarios_count,
       (SELECT COUNT(*) FROM hinos h JOIN hinarios hi ON h.hinario_id = hi.id WHERE hi.slug = 'o-cruzeiro') AS hinos_count,
       (SELECT COUNT(*) FROM cifras c JOIN hinos h ON c.hino_id = h.id JOIN hinarios hi ON h.hinario_id = hi.id WHERE hi.slug = 'o-cruzeiro') AS cifras_count;
