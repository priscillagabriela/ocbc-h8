using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using UnitTest_Mock.Models;
using Microsoft.EntityFrameworkCore;
using UnitTest_Mock.Services;

namespace UnitTest_Mock.Services {
    public class EmployeeService : IEmployeeService {
        #region Property
        private readonly ApiDbContext _apiDbContext;
        #endregion

        #region Constructor
        public EmployeeService(ApiDbContext apiDdbContext)
        {
            _apiDbContext = apiDdbContext;
        }
        #endregion

        public async Task<string> GetEmployeeById(int EmpID)
        {
            var name = await _apiDbContext.Employees.Where(c => c.Id == EmpID).Select(d => d.Name).FirstOrDefaultAsync();
            return name;
        }

        public async Task<Employee> GetEmployeeDetails(int EmpID)
        {
            var emp = await _apiDbContext.Employees.FirstOrDefaultAsync(c => c.Id == EmpID);
            return emp;
        }
    }
}