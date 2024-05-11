using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Entity;
using System.Web;

namespace VesteBem.Models
{
    public class ModeloUserInfo
    {
        public UserInfo GetUserInfo(string gudId)
        {
            VesteBemDBEntities db = new VesteBemDBEntities();
            UserInfo info = (from x in db.UserInfo
                             where x.GUID == gudId
                             select x).FirstOrDefault();

            return info;
        
        }

        public void InsertUserInfo(UserInfo info)
        {
            VesteBemDBEntities db = new VesteBemDBEntities();
            db.UserInfo.Add(info);
            db.SaveChanges();
        }
    }
}