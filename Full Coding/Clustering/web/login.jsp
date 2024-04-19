<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Registration and Login</title>
  
  
  
  <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Open+Sans:600'>

      <link rel="stylesheet" href="css/style.css">
      <link rel="stylesheet" type="text/css" href="css/demo.css" />

  
</head>

<body ng-app="">
  <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
		 <%
                        String msg=request.getAttribute("msg")!=null?request.getAttribute("msg").toString():"";
                    %>
                    <%=msg%>
                
                <div class="login-form">
                   
			<div class="sign-in-htm" >
                            <form name="form1" action="UserLogin" method="post" >
				<div class="control-group group">
					<label for="user" class="label">Username</label>
                                        <input id="user" type="text" class="input" name="username" ng-model="username" required>
                                        
				</div>
				<div class="control-group group">
					<label for="pass" class="label">Password</label>
                                        <input id="pass" type="password" class="input"  name="password" ng-model="password" required>
                                        
				</div>

				<div class="group">
                                    <input type="submit" class="button" value="Sign In" ng-click="submitted=true">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="index.html">Back</a>
				</div>
                        </form>
			</div>
			<div class="sign-up-htm">
                            <form name="signup" action="UserRegistration" method="post">
				<div class="group">
					<label for="user" class="label">Username</label>
                                        <input id="user" type="text" class="input" name="usernamesignup" required>
                                        
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
                                        <input id="pass" type="password" class="input" data-type="password" name="passwordsignup" required>
                                        
				</div>  
				<div class="group">
					<label for="pass" class="label">Repeat Password</label>
					<input id="pass" type="password" class="input" data-type="password" name="passwordsignup_confirm" required>
                                        
				</div>
				<div class="group">
					<label for="pass" class="label">Email Address</label>
					<input id="pass" type="text" class="input" name="emailsignup" required>
                                        
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign Up" ng-click="sub=true">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<label for="tab-1">Already Member?</a>
				</div>
                            </form>
			</div>
		</div>
	</div>
</div>
  
  
</body>
</html>
