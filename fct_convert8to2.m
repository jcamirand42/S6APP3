function data2bit = fct_convert8to2(data8bit)
    for n = 1:4
        switch n
            case 1
                data2bit(1,1) = data8bit(1);
                data2bit(1,2) = data8bit(2);
            case 2
                data2bit(2,1) = data8bit(3);
                data2bit(2,2) = data8bit(4);
            case 3
                data2bit(3,1) = data8bit(5);
                data2bit(3,2) = data8bit(6);
            case 4
                data2bit(4,1) = data8bit(7);
                data2bit(4,2) = data8bit(8);
            otherwise
                break
        end
    end
    data2bit;
end