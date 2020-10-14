function S = MyFunc(x)
%вычисляет сумму ряда
  T = 0;
  n = 1;
  temp = 0;
  number = 10^(-5);
  while abs(temp) > number
    temp = ((-1)^n * (1+x)^(2*n))/n;
    T = T + temp;
    n = n + 1;
  endwhile
  disp(T);
  end