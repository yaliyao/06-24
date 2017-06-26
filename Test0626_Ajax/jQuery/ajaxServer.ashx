<%@ WebHandler Language="C#" Class="ajaxServer" %>

using System;
using System.Web;

public class ajaxServer : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        string result = "Hello! " + context.Request.QueryString["data"];
        System.Threading.Thread.Sleep(3000);
        context.Response.Write(result);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}