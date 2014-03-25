
function [S3, S4] = MiFuncion2(E1, E2, E3) 

[S1, S2] = MiFuncion(E1, E2); % La función MiFuncion2
S3 = S1 * E3;                 % llama a la función
S4 = S2 / E3;                 % MiFuncion