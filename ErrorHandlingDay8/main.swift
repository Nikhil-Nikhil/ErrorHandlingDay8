//
//  main.swift
//  ErrorHandlingDay8
//
//  Created by MacStudent on 2019-06-17.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

var e1 = Employee()
print(e1.employeeId)

var e2 = Employee(employeeId: 1, employeeName: "Nikhil", employeeEmail: "n@n.com", employeeSalary: 500)
if let e = e2
{
    print(e.employeeId)
}
var e3 = Employee(employeeId: 1, employeeName: "Nikhil", employeeEmail: "n@n.com" ,employeeSalary: 600)

do{
    let e4 = try!Employee(employeeId: 1, employeeName: "Nikhil", employeeEmail: "n@n.com", employeeSalary: 700)
    if let e = e4{
        print(e.employeeSalary)
       
    }
    try e4!.setSalary(salary: 700)
    print(e4!.employeeSalary)
}
catch EmployeeError.InvalidEmail
{
    print("Invalid Email")
}
catch EmployeeError.InvalidSalary
{
    print("Invalid salary")
}
    catch EmployeeError.InvalidSalaryWithMessage(let msg)
    print(msg)
catch
{
   print( error.localizedDescription)
}
