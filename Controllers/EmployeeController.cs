using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AjaxJqueryJsonOperation.EF;
using AjaxJqueryJsonOperation.Models;

namespace AjaxJqueryJsonOperation.Controllers
{
    public class EmployeeController : Controller
    {
        // GET: Employee
        public ActionResult Index()
        {
            return View();
        }
        public JsonResult GetEmployeeDetail()
        {

            DAL _dal = new DAL();
            List<Employee> ListOfEmployee = new List<Employee>();
            ListOfEmployee = _dal.Employees.ToList();
            return Json(ListOfEmployee, JsonRequestBehavior.AllowGet);
        }
        public PartialViewResult Create()
        {
            return PartialView("Create");

        }
        [HttpPost]
        public JsonResult Create(Employee _employee)
        {
            DAL _dal = new DAL();
            _dal.Employees.Add(_employee);
            _dal.SaveChanges();
            return Json(_employee, JsonRequestBehavior.AllowGet);

        }
        [HttpGet]
        public PartialViewResult Edit(int ID)
        {
            DAL _dal = new DAL();
            Employee _employee = new Employee();
            _employee = _dal.Employees.Find(ID);
            return PartialView(_employee);


        }
        [HttpPost]
        public JsonResult Edit(Employee _employee)
        {
            DAL _dal = new DAL();
            _dal.Entry(_employee).State = EntityState.Modified;
            _dal.SaveChanges();
            return Json(_employee, JsonRequestBehavior.AllowGet);

        }
        [HttpGet]
        public JsonResult Delete(int ID)
        {

            DAL _dal = new DAL();
            Employee _employee = new Employee();
            _employee = _dal.Employees.Find(ID);
            _dal.Entry(_employee).State = EntityState.Deleted;
            _dal.SaveChanges();
            return Json(_employee, JsonRequestBehavior.AllowGet);
        }
     
    }
}