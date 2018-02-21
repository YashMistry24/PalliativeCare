<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Leave</title>
</head>
<body>
<jsp:include page="islogin.jsp"></jsp:include>
<%HttpSession se =request.getSession();
	int rid = (Integer)se.getAttribute("rid");
				if( rid ==9)
				{%>
					<jsp:include page="FacultyMenubar.jsp"></jsp:include>
					
				<%}
				else if(rid==8)
				{  %>
					<jsp:include page="AdminMenubar.jsp"></jsp:include>
					
				<%}
				else if(rid==1)
				{ %>
					<jsp:include page="FinanceMenubar.jsp"></jsp:include>
					
				<%}
				
	%>

<!-- Start leave section -->
<section id="menu-area">
      <div class="container" >
      <div class="modal-dialog wow zoomIn" style="width:400px;">
<div id="login-content" class="modal-content"  >
        <div class="modal-header">
          <h4 class="modal-title" align="center">Apply for leave</h4>
        </div>
        <div class="modal-body ">
          <form action="../Eleaveinsert" method="post">
            <div class="form-group">
              <input type="text"  readonly="readonly"  value="${reg.fname}" class="form-control" name="fname">
              
            </div>
            <div class="form-group">
              <input type="text"  readonly="readonly" name="email" value="${reg.email}" class="form-control">
            </div>
            <!-- <div class="form-group">
              <input  placeholder="ContactNo" required="required" name="contno" class="form-control">
            </div> -->
            <div class="form-group">
              <select name="drptype" class="form-control">
              	<option>Sick</option>
              	<option>Causal</option>
              	<option>Privilege</option>
              	<option>Other</option>
              </select>
            </div>
            <div class="form-group">
              <textarea placeholder="Description" required="required" name="description" class="form-control"></textarea>
            </div>
            <div class="form-group">
             Start Date:- <input type="date" name="strtdate" class="form-control">
            </div>
            <div class="form-group">
             End Date:- <input type="date" name="enddate" class="form-control">
            </div>
            <div class="form-group">
              <input readonly="readonly" value="${reg.role.role}" name="department" class="form-control">
            </div>
             <div class="loginbox" align="center">
              <input  class="btn signin-btn" type="submit" value="Apply">
            </div>                    
          </form>
        </div>
       </div>
      </div>
      </div>
      </section>
  <!-- End leave modal window -->
  <!-- Start footer -->
  <footer style="margin-top:15px;" id="footer">
    <div class="container" >
      <div class="row" >
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
           <h4  > Designed by <a href="Index.jsp" > COMPLETE ERP</a></h4>
          </div>
        </div>
        <div class="col-md-6 col-sm-6">
          <div class="footer-right">
            <a href="https://www.facebook.com/pages/Robonet-Infotech-India-PvtLtd/1087711411254042?ref=hl"><i  class="fa fa-facebook"></i></a>
            <a href="https://twitter.com/robo_infotech"><i class="fa fa-twitter"></i></a>
            
            <a href="https://www.linkedin.com/hp/?dnr=jK1iIuw-2ysWp7WN4KgQZ43T9PPCp7ef8Dly&trk=hb_signin"><i class="fa fa-linkedin"></i></a>
            
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- End footer -->
  
  <script type = "text/javascript" >
          function preventBack() { window.history.forward(); }
          setTimeout("preventBack()",0);
          window.onunload = function () { null };
    </script>
</body>
</html>