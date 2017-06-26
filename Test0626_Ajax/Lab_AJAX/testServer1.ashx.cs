using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Test0626_Ajax.Lab_AJAX {
    /// <summary>
    /// testServer1 的摘要描述
    /// </summary>
    public class testServer1 : IHttpHandler {

        public void ProcessRequest(HttpContext context) {
            string userName = context.Request["userName"];
            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello"+""+ userName);
        }

        public bool IsReusable {
            get {
                return false;
            }
        }
    }
}