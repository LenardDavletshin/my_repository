table = [];
%·ÂÚ‡-‚ÂÒËˇ ‚˚˜ÂÒÎÂÌËˇ ÒÛÏÏ˚ ˇ‰‡ ÂÍÛÂÌÚÌÓ
S = 0;
temp = 1;
n = 1;
iter_1 = 1;
iter_3 = 2;
true;
k = 1;
while abs(temp) > 10^-5
    temp = -temp * ((1 + x)^2/(n));
    true = ((-1)^k)*((1+x)^(2*k)/k);
    S = S + temp;
    table = [table; temp true S];
    n = n + 0.5;
    k = k + 1;
    %disp(temp);
end

my_table = array2table(table, 'VariableNames', {'–ß–ª–µ–Ω –†—è–¥–∞','–ü—Ä–∞–≤–∏–ª—å–Ω—ã–π –≤–∞—Ä–∏–∞–Ω—Ç','–°—É–º–º–∞ —á–ª–µ–Ω–æ–≤ —Ä—è–¥–∞'})
writetable(my_table,'table_task2.csv');
disp(S);