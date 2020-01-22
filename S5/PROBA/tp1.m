function tp1

  function t = pile_ou_face (p,l)
    t = zeros(l)
    
    for i = 1:1:l(1)+l(2)
      t(i) = rand > 0.5
    endfor
  endfunction

  t= pile_ou_face (1,[3 4])
  
  disp t
endfunction