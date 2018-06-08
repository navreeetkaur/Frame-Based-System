%% Asking for number of students to be compared
n = input('Enter total number of students to be compared:');
list_names = string.empty(n,0);
list_acads = double.empty(n,0);
list_sports = double.empty(n,0);
list_cca = double.empty(n,0);

%% Taking input data
for i = 1:n
    prompt = {'Enter Student name:','Enter CGPA:','Enter number of games won or participated:','Enter number of participation and winning certificates:'};
    title = 'Find Best Student';
    answer = inputdlg(prompt,title);
    name = answer{1};
    acads = str2double(answer{2});
    sports = str2double(answer{3});
    cca = str2double(answer{4});
    
    list_names(i) = name;
    list_acads(i) = acads;
    list_sports(i)= sports;
    list_cca(i)   = cca;    
end

%disp(list_names);
%disp(list_acads);
%disp(list_sports);
%disp(list_cca);

%% Opening FIS created using Fuzzy Logic Toolbox
fismat = readfis('best_student');
inputdat = transpose(cat(1,list_acads,list_sports,list_cca));
out = evalfis(inputdat,fismat,n);
%disp(inputdat);
%disp(out);

%% Finding maximum score student
[max_num, max_ind] = max(out(:));
%sprintf('Best student is %s ',list_names(max_ind));
disp('Best student is ');
disp(list_names(max_ind));
