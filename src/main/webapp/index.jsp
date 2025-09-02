<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Survey</title>

  <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css?v=3" />
</head>
<body>
<div class="page">
  <div class="logo-box">
    <img class="logo" src="murachlogo.jpg" alt="Logo"
         onerror="this.style.display='none'"/>
  </div>

  <h1 class="title">Survey</h1>
  <p class="intro">If you have a moment, we'd appreciate it if you would fill out this survey.</p>

  <% if (request.getAttribute("error") != null) { %>
    <div class="error"><%= request.getAttribute("error") %></div>
  <% } %>

  <form class="form" action="${pageContext.request.contextPath}/submit" method="post">
    <h2 class="section">Your information:</h2>

    <!-- xếp DỌC: label trên, input dưới -->
    <div class="row">
      <label for="firstName">First Name</label>
      <input id="firstName" name="firstName" type="text" />
    </div>
    <div class="row">
      <label for="lastName">Last Name</label>
      <input id="lastName" name="lastName" type="text" />
    </div>
    <div class="row">
      <label for="email">Email</label>
      <input id="email" name="email" type="email" />
    </div>
    <div class="row">
      <label for="dob">Date of Birth</label>
      <input id="dob" name="dob" type="date" />
    </div>

    <h2 class="section">How did you hear about us?</h2>
    <div class="group">
      <label><input type="radio" name="how" value="Search engine" checked/> Search engine</label>
      <label><input type="radio" name="how" value="Word of mouth"/> Word of mouth</label>
      <label><input type="radio" name="how" value="Social Media"/> Social Media</label>
      <label><input type="radio" name="how" value="Other"/> Other</label>
    </div>

    <h2 class="section">Would you like to receive announcements<br/>about new CDs and special offers?</h2>
    <div class="group">
      <label><input type="checkbox" name="likeBoth" value="yes"/> YES, I'd like that.</label>
      <label><input type="checkbox" name="emailOnly" value="yes"/> YES, please send me email announcements.</label>
    </div>

    <div class="row">
      <label for="contact">Please contact me by:</label>
      <select id="contact" name="contact">
        <option>Email or postal mail</option>
        <option>Email only</option>
        <option>Postal mail only</option>
      </select>
    </div>

    <div class="row one-col">
      <input type="submit" value="Submit"/>
    </div>
  </form>
</div>
</body>
</html>
