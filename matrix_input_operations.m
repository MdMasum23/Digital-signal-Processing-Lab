
disp('Enter elements for Matrix A (2x2):');
A = zeros(2,2);
for i = 1:2
    for j = 1:2
        A(i,j) = input(['A(', num2str(i), ',', num2str(j), '): ']);
    end
end

disp('Enter elements for Matrix B (2x2):');
B = zeros(2,2);
for i = 1:2
    for j = 1:2
        B(i,j) = input(['B(', num2str(i), ',', num2str(j), '): ']);
    end
end


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

disp('Addition Result:');
disp(add_result);

disp('Subtraction Result:');
disp(sub_result);

disp('Multiplication Result:');
disp(mul_result);

disp('Division Result:');
disp(div_result);
