#Вывод информации о текущей дате
function nowTime()
    const rus_daysofweek = Dict(1=>"Понедельник",2=>"Вторник",3=>"Среда",4=>"Четерг",5=>"Пятница",6=>"Суббота",
    7=>"Воскресенье");
    const rus_months = Dict(1=>"Январь",2=>"Февраль",3=>"Март",4=>"Апрель",5=>"Май",6=>"Июнь",
    7=>"Июль", 8=>"Август", 9=>"Сентябрь", 10=>"Октябрь", 11=>"Ноябрь", 12=>"Декабрь");

    Dates.VALUETODAYOFWEEK["russian_d"] = rus_daysofweek;
    Dates.VALUETOMONTH["russian_m"] = rus_months;

    t = Dates.today()

    mn = Dates.monthname(t; locale = "russian_m")
    qd = Dates.daysinmonth(t)
    d = Dates.day(t)
    dn = Dates.dayname(t; locale = "russian_d")

    println("Сегодня $t\n $mn\n $d/$qd ($dn)")
end

nowTime()
readline()
