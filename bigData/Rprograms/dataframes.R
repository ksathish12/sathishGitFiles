emp.data<-data.frame(emp_id=c(1:4),emp_name=c("Sathish","Saran","Sudharsan","Aravindh"),basic=c(4545,4687,5864,4417))
doj<-data.frame(doj=c("12th May","12th June","12th July","12th August"),dep=c("Aero","Mech","Civil","Electrical"))
emp1.data<-cbind(emp.data,doj)
print(emp1.data)