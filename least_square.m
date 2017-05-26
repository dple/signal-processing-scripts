% Pattern matching function using Least square algorithm
% @pattern: the pattern one want to find on the trace
% @trace
% @startPos: the position on the trace where the algorithm will start
% searching
% @endPos: the position on the trace where the algorithm will end
% searching

function pos = least_square(trace, pattern, startPos, endPos)

trace = trace(startPos : endPos);
lt1 = length(trace);
lt2 = length(pattern);

if (lt1 >= lt2)
    lt = lt1 - lt2;
else 
    return;
end

pos = 1;

ls_val = sum((pattern - trace(1 : lt2)).^2);

for i = 2 : lt + 1
    val = sum((pattern - trace(i : i + lt2 - 1)).^2);
    if (val < ls_val)
        pos = i;
        ls_val = val;
    end 
end

pos = startPos + pos - 1;

end 