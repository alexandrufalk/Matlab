clear all
my_text=fileread("Example_text.txt");
my_text=string(my_text);
my_text=splitlines(my_text);
my_text(1:5)
p={'.', ',', ':', '/','"', '"'};
my_text=replace(my_text,p,' ');
my_text(1:5)
my_text=strip(my_text);
my_text(1:5)
my_text=join(my_text);
my_text=split(my_text);
my_text(1:5)
x=tabulate(my_text);

% Sort x in descending order by the second column (Counts)
x_sorted = sortrows(x, -2);

% Display the sorted table
disp(x_sorted);

% Convert data to table for easier manipulation
data_table = cell2table(x_sorted, 'VariableNames', {'Word', 'Count', 'Percentage'});

% Sort by 'Count' column in descending order
data_sorted = sortrows(data_table, 'Count', 'descend');

% Extract top 10 rows
top_10 = data_sorted(1:10, :);

% Create bar plot
figure;
bar(top_10.Count, 'FaceColor', [0.2, 0.6, 0.8]); % Bar plot
xticks(1:10);
xticklabels(top_10.Word); % Use words as x-axis labels
xtickangle(45); % Rotate x-axis labels for better visibility
ylabel('Count');
title('Top 10 Words by Count');
grid on;