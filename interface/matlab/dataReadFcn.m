function dataReadFcn(obj, event)
    global t2;
    t2 = clock;
    
    global global_serial_gui;
    global acumulador_global_1;
    global acumulador_global_1_array;
    global acumulador_global_1_n;
    global t_inicial;

    acumulador_global_1=acumulador_global_1 + sum(fread(global_serial_gui));
    
    elps_time = etime(t2,t_inicial);
%     acumulador_global_1_array(acumulador_global_1_n)=acumulador_global_1;
    acumulador_global_1_array(acumulador_global_1_n)=acumulador_global_1/elps_time;
    acumulador_global_1_n = acumulador_global_1_n + 1;
    
    plot(acumulador_global_1_array);
    
    disp(acumulador_global_1);
    disp(elps_time);
    disp(acumulador_global_1/elps_time);
end
