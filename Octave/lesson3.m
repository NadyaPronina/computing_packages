##function matr = lesson3 (n,m)
##  matr = false(n,m);
##  matr(2:2:n, :) = true;
##  if n%2 == 1
##    matr(:,2:2:m) = false;
##  endif
##  if m%2 == 1
##    matr(1:2:n, 2:2:m) = true;
##  endif
## endfunction

%%task 3
##function matr = lesson3 (n,r)
##    if mod(n,2) == 1
##       matr = false(n,n);
##       c = idivide(n, int64(2), "fix") + 1;
##       for i:n
##          matr(c:-1:i<r, c:-1:i<r) = true;
##    endif
##
##endfunction


%%task4
function matr = lesson3(n)
  idx = 0; x = 0; y = 2;
	while idx < n*n
			while y > 1 && x < n
          y = y - 1;
          x = x + 1;
          idx = idx + 1;
				  matr(y,x) = idx;
			endwhile
			if y == 1 && x < n
				x = x+1;
			else
				y = y+1;
      endif
			idx = idx + 1;
      matr(y,x) = idx;

      if idx != n*n
				while y < n && x > 1
					idx = idx + 1;
          y = y + 1;
          x = x - 1;
					arr(y,x) = idx;
				endwhile
				if x == 1 && y < n
					y = y + 1;
				else
					x = x + 1;
        endif
			  idx = idx+1;
        matr(y,x) = idx;
			endif
	endwhile

endfunction

##>> lesson3 (6)
##ans =
##
##    1    2    6    7   15   16
##    0    5    0   14    0   26
##    4    0   13    0   25   27
##    0   12    0   24    0   33
##   11    0   23    0   32   34
##    0   22    0   31    0   36

