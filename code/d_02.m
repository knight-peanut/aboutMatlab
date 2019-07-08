% 加载股票指数的数据
load d_02_IndexData dates values series
% 绘制股票指数值与时间的关系
figure
plot(dates, values)
% 使用dateticks作为x轴
datetick('x')
% 添加标题和轴标签
xlabel('Date')
ylabel('Index Value')
title('Relative Daily Index Closings')
% 在左上角添加图例
% 默认为右上角
legend(series, 'Location', 'NorthWest')
