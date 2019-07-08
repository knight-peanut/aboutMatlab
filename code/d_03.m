% 加载莫尔斯数据
load d_03_MDdata dissimilarities dist1 dist2 dist3

% 以蓝色绘制第三组数据
figure
plot(dissimilarities, dist1, 'bo')
hold on

% 以红色绘制第三组数据
plot(dissimilarities, dist2, 'r+')

% 以绿色绘制第三组数据
plot(dissimilarities, dist3, 'g^')

% 添加标题和轴标签
title('Morse Signal Analysis')
xlabel('Dissimilarities')
ylabel('Distances')

% 添加图例
legend({'Stress', 'Sammon Mapping', 'Squared Stress'}, ...
    'Location', 'NorthWest')
