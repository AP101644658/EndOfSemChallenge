using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class TMembersController : Controller
    {
        private endOfSemEntities db = new endOfSemEntities();

        // GET: TMembers
        public ActionResult Index()
        {
            return View(db.TMembers.ToList());
        }

        // GET: TMembers/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TMember tMember = db.TMembers.Find(id);
            if (tMember == null)
            {
                return HttpNotFound();
            }
            return View(tMember);
        }

        // GET: TMembers/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TMembers/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "TMemberId,FirstName,LastName,Authorised,Rejected")] TMember tMember)
        {
            if (ModelState.IsValid)
            {
                db.TMembers.Add(tMember);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tMember);
        }

        // GET: TMembers/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TMember tMember = db.TMembers.Find(id);
            if (tMember == null)
            {
                return HttpNotFound();
            }
            return View(tMember);
        }

        // POST: TMembers/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "TMemberId,FirstName,LastName,Authorised,Rejected")] TMember tMember)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tMember).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tMember);
        }

        // GET: TMembers/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TMember tMember = db.TMembers.Find(id);
            if (tMember == null)
            {
                return HttpNotFound();
            }
            return View(tMember);
        }

        // POST: TMembers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TMember tMember = db.TMembers.Find(id);
            db.TMembers.Remove(tMember);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
