clear,clf,clc
x  = 0: .1 : 2*pi;
y1 = cos(x);
y2 = sin(x);
% 绘制y1对x（蓝色，实心）和y2对x（红色，虚线）
figure
% LineWidth为行宽大小,在plot函数里的LineSpec属性
plot(x, y1, 'b', x, y2, 'r-.', 'LineWidth', 2)
% 打开网格
grid on
% 设置轴限制(x1,x2,y1,y2)
axis([0 2*pi -1.5 1.5])
% 添加标题和轴名称
title('Trigonometric Functions')
xlabel('angle')
ylabel('sin(x) and cos(x)')