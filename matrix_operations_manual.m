
A = [4 8; 2 6];
B = [2 4; 1 3];


add_result = zeros(2,2);
for i = 1:2
    for j = 1:2
        add_result(i,j) = A(i,j) + B(i,j);
    end
end


sub_result = zeros(2,2);
for i = 1:2
    for j = 1:2
        sub_result(i,j) = A(i,j) - B(i,j);
    end
end

mul_result = zeros(2,2);
for i = 1:2
    for j = 1:2
        mul_result(i,j) = A(i,j) * B(i,j);
    end
end

div_result = zeros(2,2);
for i = 1:2
    for j = 1:2
        div_result(i,j) = A(i,j) / B(i,j);
    end
end

disp('Addition:');
disp(add_result);

disp('Subtraction:');
disp(sub_result);

disp('Multiplication:');
disp(mul_result);

disp('Division:');
disp(div_result);
