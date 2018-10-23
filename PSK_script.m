sim('PSK')


for n = 1:length(simout)
    if simout(n) < 0
        simout(n) = 16 + simout(n)
    end
end

result = [simout1, simout]