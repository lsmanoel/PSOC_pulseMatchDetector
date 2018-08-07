function dataReadFcn(obj, event)
    global t2;
    t2 = clock;
    
    global acumulador_global_n;   
    
    global global_serial;
    global global_serial_sizeBuffer;
    global global_serial_Channel_N;
    global global_serial_Channel_sizeBuffer;
    global global_serial_Channel_width;

    global acumulador_det_1_global;
    global acumulador_det_1_global_array;
    global delta_t_det_1_global_array;
    
    global acumulador_det_2_global;
    global acumulador_det_2_global_array;
    global delta_t_det_2_global_array;
    
    global acumulador_match_global;
    global acumulador_match_global_array;
    global delta_t_match_global_array;
    
    global t_inicial;
    global windowSize;
    global input;
    
    input = fread(global_serial);
    
    elps_time = etime(t2,t_inicial); 
       
    for i=1:global_serial_Channel_sizeBuffer 
        acumulador_det_1_global=acumulador_det_1_global + 255*input(4 + (i-1)*global_serial_Channel_N*global_serial_Channel_width)+input(1 + (i-1)*global_serial_Channel_N*global_serial_Channel_width);
        acumulador_det_2_global=acumulador_det_2_global + 255*input(5 + (i-1)*global_serial_Channel_N*global_serial_Channel_width)+input(2 + (i-1)*global_serial_Channel_N*global_serial_Channel_width);
        acumulador_match_global=acumulador_match_global + 255*input(6 + (i-1)*global_serial_Channel_N*global_serial_Channel_width)+input(3 + (i-1)*global_serial_Channel_N*global_serial_Channel_width);       
    end 
    
    acumulador_det_1_global_array(acumulador_global_n)=acumulador_det_1_global;
    acumulador_det_2_global_array(acumulador_global_n)=acumulador_det_2_global;
    acumulador_match_global_array(acumulador_global_n)=acumulador_match_global;

    delta_t_det_1_global_array(acumulador_global_n)=acumulador_det_1_global/elps_time;
    delta_t_det_2_global_array(acumulador_global_n)=acumulador_det_2_global/elps_time;
    delta_t_match_global_array(acumulador_global_n)=acumulador_match_global/elps_time;
       
%     plot(acumulador_global_array);
    
%     disp(acumulador_global);
%     disp(elps_time);

    figure(1);
    
    if(acumulador_global_n > windowSize)
        plot(acumulador_global_n - windowSize:acumulador_global_n, delta_t_det_1_global_array(acumulador_global_n - windowSize:acumulador_global_n));
        hold on;
        plot(acumulador_global_n - windowSize:acumulador_global_n, delta_t_det_2_global_array(acumulador_global_n - windowSize:acumulador_global_n));
        plot(acumulador_global_n - windowSize:acumulador_global_n, delta_t_match_global_array(acumulador_global_n - windowSize:acumulador_global_n));       
    else
        plot(1:acumulador_global_n, delta_t_det_1_global_array(1:acumulador_global_n));
        hold on;
        plot(1:acumulador_global_n, delta_t_det_2_global_array(1:acumulador_global_n));
        plot(1:acumulador_global_n, delta_t_match_global_array(1:acumulador_global_n));
    end
    hold off;
    
%   plot(acumulador_det_1_global_array);
%   plot(acumulador_det_2_global_array);
%   plot(acumulador_match_global_array)
    
    clc
    disp(acumulador_det_1_global/elps_time);
    disp(acumulador_det_2_global/elps_time);
    disp(acumulador_match_global/elps_time);

    acumulador_global_n = acumulador_global_n + 1;
end
