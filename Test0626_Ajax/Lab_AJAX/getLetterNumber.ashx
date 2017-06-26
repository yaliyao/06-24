<%@ WebHandler Language="C#" Class="getLetterNumber" %>

using System;
using System.Web;

public class getLetterNumber : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        String sLetter = context.Request.QueryString["letter"];
        if (String.IsNullOrEmpty(sLetter))
        {
            context.Response.Write("Parameter 'letter' not found.");
            return;
        }
        String result = "";
        for (int i = 0; i < 5; i++) {
            result += String.Format("<option value=\"{0}\">{1}{2:D2}</option>", i, sLetter, i + 1);
        }
	    context.Response.Write(result);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}