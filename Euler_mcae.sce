//Mariana Brito Batista

x0=0;
y0=1;
m=4;
h=0.5;
x =0:1:m+1;
y =0:1:m+1;
x(1)= x0;
y(1)= y0;
for j=1:m
x(j+1)= x(j)+ h;
y(j+1)= y(j)+ h*(-2*x(j)*x(j)*x(j)+12*x(j)*x(j)-20*x(j)+8.5);
end

printf("Os valores de x e y sao:\n");
for j=1:m
    printf("%f,%f; \n",x(j),y(j));
end
 plot(x,y)
