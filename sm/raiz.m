function y = raiz(n)
  if n < 0
    disp(['Debes introducir un n no negativo.']);
  else
    contador = 1;
    b = 2;
    a = n/b;
    lista = [a];
    while abs(b-a)>0.000001 && contador < 100
     b = (b+a)/2;
     a = n/b;
     contador = contador+1;
     lista(contador) = a;
    end
    if contador == 100
      disp(['Se han alcanzado el numero maximo de iteraciones.']);
    else
      disp(['Han sido necesarias ' num2str(contador) ' iteraciones para calcular la raiz de ' num2str(n)]);
      plot([1:contador],lista);
      y = a;
    endif
  endif
end