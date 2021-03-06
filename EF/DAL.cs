using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using AjaxJqueryJsonOperation.Models;

namespace AjaxJqueryJsonOperation.EF
{
    public class DAL : DbContext
    {
        public DbSet<Employee> Employees { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Employee>().ToTable("tblEmployee");
            modelBuilder.Entity<Employee>().HasKey(x => x.EmployeeID);
        }
    }
}