//clear; clc; exec('E:\THIS\2015-I\MN\baseconv.sce', -1); baseconv(13/16, 2)
function y = baseconv(n, base)
    entero = int(n);
    d = n - entero;
    decimal = n - entero;
    y_entero = '';
    y_decimal = '';
    while entero > 0
        dig_e = string(int(modulo(entero, base)));
        if base > 10
            select dig_e
            case '10' then
                dig_e = 'A';
            case '11' then
                dig_e = 'B';
            case '12' then
                dig_e = 'C';
            case '13' then
                dig_e = 'D';
            case '14' then
                dig_e = 'E';
            case '15' then
                dig_e = 'F';
            end
        end
        y_entero = y_entero + dig_e;
        entero = int(entero / base);        
    end
    y_entero = strrev(y_entero);
    for i = 1:16
        tmp = decimal * base;
        dig_d = string(int(tmp));
        if base > 10
            select dig_d
            case '10' then
                dig_d = 'A';
            case '11' then
                dig_d = 'B';
            case '12' then
                dig_d = 'C';
            case '13' then
                dig_d = 'D';
            case '14' then
                dig_d = 'E';
            case '15' then
                dig_d = 'F';
            end
        end
        y_decimal = y_decimal + dig_d;
        decimal = tmp - int(tmp);
    end
    if d ~= 0
        y_decimal = strcat(['.',y_decimal]);
    end
    if y_entero == ''
        y_entero = '0';
    end
    y = strcat([y_entero, y_decimal]);
endfunction

