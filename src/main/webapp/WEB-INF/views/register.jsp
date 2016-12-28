<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="header.jsp"%> 

  <!-- <aside class="callout">
      <div class="text-vertical-center"></div>
    </aside> -->
    
    <section id="services" class="services bg-primary">
<div class="section section-primary"></div>
    <div class="section section-info text-left">
      <div class="container">
     
        <div class="row">
         
          <div class="col-md-6">
            <div class="jumbotron">
              <h1 class="text-primary">
                <i>Register Yourself</i>
              </h1>
              <p>...</p>
              <a class="btn btn-primary btn-large">Learn more</a>
            </div>
          </div>
        
            <hr class="small">
          
            <c:url var="addAction" value="/register/add" ></c:url>
<form:form action="${addAction}" commandName="user"  enctype="multipart/form-data" method="POST">
<form role="form">
<table align="center">
    <c:if test="${!empty name}">
    <tr>
        <td>
            <form:label path="userid">
                <spring:message text="User ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="userid" readonly="true" size="8"  disabled="true" />
            <form:hidden path="userid" />
        </td> 
    </tr>
    </c:if>
    <tr>
     
        <td>
            
            <form:label path="name" >
                <spring:message text="Name"/>
            </form:label>
        </td>
        <td>
        <div class="form-group">
            <form:input path="name" class="form-control"  id="name" placeholder="Enter Name"/>
             </div>
        </td> 
        
    </tr>
   
    <tr>
        <td>
            <form:label path="email">
                <spring:message text="Email ID"/>
            </form:label>
        </td>
        <td>
        <div class="form-group">
            <form:input path="email" class="form-control" id="name" placeholder="Enter Email"/>
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="location">
                <spring:message text="Location"/>
            </form:label>
        </td>
        <td>
        <div class="form-group">
            <form:input path="location" class="form-control" id="name" placeholder="Location"/>
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <form:label path="username">
                <spring:message text="User Name"/>
            </form:label>
        </td>
        <td>
        <div class="form-group">
            <form:input path="username"  class="form-control" id="username" placeholder="Enter User Name" />
            </div>
        </td>
    </tr>
    
    <tr>
        <td>
            <form:label path="password">
                <spring:message text="Password"/>
            </form:label>
        </td>
        <td>
        <div class="form-group">
            <form:input type="password" path="password" class="form-control" id="password" placeholder="Enter Password"/>
            </div>
        </td>
    </tr>
    
    
    <tr>
    	<td>
    		<form:label path="image">
    			<spring:message text="Upload Image"/>
    		</form:label>
    	</td>
    	<td>
    		<form:input path="image" type="file"/>
    	</td>
    </tr>    <tr>
        <td colspan="2">
            <c:if test="${empty name}">
                <%-- <input type="submit" class="btn btn-default"
                    value="<spring:message text="Register"/>"/> --%>
                   <button type="submit" value="Submit" class="btn btn-default">Submit</button> 
                    
            </c:if>
        </td>
        <a href="home" class="btn btn-lg btn-success">Back TO Home</a>
    </tr>
</table>  
</form>
</form:form>
             </div>
            </div>
          </div>
        </div>
      </div>
    </section>
<%@include file="footer.jsp"%>