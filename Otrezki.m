file= dlmread ('C:\Users\user\Downloads\Тестовое задание Системное программирование и моделирование\data_prog_contest_problem_1.txt','\t',1,0);


 % Сортируем отрезки по правому концу
 sorted_segments = sortrows(file, 2);
    
 points = [];
 n = size(sorted_segments, 1);
 i = 1;
    
     while i <= n
        % Добавляем правый конец текущего отрезка
        current_point = sorted_segments(i, 2);
        points = [points, current_point];
        
        % Пропускаем все отрезки, которые покрываются этой точкой
        while i <= n && sorted_segments(i, 1) <= current_point
            i = i + 1;
        end
    end

% Выводим результат
disp(['Минимальное количество точек: ', num2str(length(points))]);
disp(['Точки: ', num2str(points)]);