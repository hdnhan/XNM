clear;clc;format longG;
data = importdata('Z.txt');
zh = @(x) griddata(data(:, 1), data(:, 2), data(:, 3), x(:, 1), x(:, 2), 'nearest');

filename = 'Th2';
Th = importdata(strcat('../', filename, '.msh'));
th = Th(2:1+Th(1, 1), 1:2);
res = [th, zh(th)];
fileID = fopen(strcat('../', filename, 'CoZ', '.txt'), 'w');
fprintf(fileID, '%d %d\n', Th(1, 1), 3);
for i = 1:size(res, 1)
    fprintf(fileID, '%f %f %f\n', res(i, :));
end
fclose(fileID);
