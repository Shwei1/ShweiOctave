# A = matrix_input();

A = [4, 2, 1; 3, 5, 7; 2, 4, 3];

A(1, :) = A(1, :) / A(1, 1);
A(2, :) = A(2, :) - A(2, 1) * A(1, :);
A(3, :) = A(3, :) - A(3, 1) * A(1, :);
A(2, :) = A(2, :) / A(2, 2);
A(3, :) = A(3, :) - A(3, 2) * A(2, :);
A(3, :) = A(3, :) / A(3, 3);
A(2, :) = A(2, :) - A(3, :) * A(2, 3);
A(1, :) = A(1, :) - A(3, :) * A(1, 3);
A(1, :) = A(1, :) - A(2, :) * A(1, 2);

disp('Matrix has been reduced');


disp(A);


