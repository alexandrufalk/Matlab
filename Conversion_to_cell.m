C = ['jan';'feb';'mar'] 

c = cellstr(C)

S = [string('Hello'), string('world'),string('How are you')]

C = cellstr(S)

C{1}

C{2} 

Gender = ['M'; 'M';'F';'F';'F']

Age = [38;43;38;40;49]

BloodPressure = [124;109;125;117;122] 

T = table(Gender, Age,BloodPressure)

T1 = table2cell(T) 

T1 = [T.Properties.VariableNames;T1]

T.Properties.RowNames

Temp = [37.3;39.1;42.3]

Pressure = [29.4;29.6;30]

Percip = [0.1;0.9;0]

Time = [2015,12,18;2015,12,19;2015,12,20]

Time = datetime(Time)

TT = timetable(Time,Temp,Pressure,Percip)

T = timetable2table(TT) 

T = timetable2table(TT,'ConvertRowTimes',false)

T2 = table2cell(T) 

T2 = [T.Properties.VariableNames;T2] 

s(1).category = 'tree'

s(2).category = 'branch'

s(1).name = 'birch'

s(2).name = 'azam'

s(1).height = [37.4]

s(2).height = [3]

c = struct2cell(s)

C = {keys(rainfallMap), values(rainfallMap)}

cellplot(C) 

