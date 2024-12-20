temp = [45;56;33] 

locations = {'Newyork','London','Paris'} 

Humidity = [45;56;89]

datetime(2000,12,5)

X = [2000,5,9;2002,12,3] 

datetime(X)

datetime('today')

datetime('tomorrow')

datetime([2000,6,2,13,8,9])

datetime([2000,11,8;2002,4,6;2003,5,6])

timesofday = datetime([2000,11,8;2002,4,6;2003,5,6])

Ourtimetable = timetable(timesofday, temp,Humidity,locations')

Ourtimetable.fifthcolum = [4;5;6]

Ourtimetable.fifthcolum = []

sortrows(Ourtimetable) 

sortrows(Ourtimetable,'temp')

sortrows(Ourtimetable,'temp','Descend')

Ourtimetable.temp = Ourtimetable.temp*8

Ourtimetable(1:2,:) 

Ourtimetable(1:2,1:2)

Ourtimetable.Properties.VariableNames = {'Timestmps','Temperatures','Humiditylevel'}

summary(Ourtimetable)

Ourtimetable.Properties.Description = 'This time table contains information regarding the temperatures' 

Ourtimetable.Properties.VariableDescriptions = {'first variable' 'second variable' 'third variable'}

Ourtimetable.Properties.VariableUnits = {'seconds' 'forenheit' 'humidity'}

X = evalc('summary(Ourtimetable)') 

%Concatenating time table

[Ourtimetable;Ourtimetable]

Ourtimetable2 = Ourtimetable

Ourtimetable2.Properties.VariableNames = {'Var1','Var2','Var3'}

[Ourtimetable Ourtimetable2]

Ourtimetable2.Properties.VariableNames{'Var1'} = 'Timestmps'

synchronize(Ourtimetable, Ourtimetable2) 

%Indexing and rerieving

Ourtimetable('',:) 

Ourtimetable('08-Nov-2000',:)  

timerange = timerange('06-Nov-2000','07-Apr-2002')

Ourtimetable(timerange,:)
