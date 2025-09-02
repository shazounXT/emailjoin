<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <title>Thanks</title>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/styles.css"/>
</head>
<body>
<div class="page">
  <h1 class="title">Thanks!</h1>
  <p class="intro">Here is the information we received:</p>
  <ul class="small">
    <li><strong>Name:</strong> ${firstName} ${lastName}</li>
    <li><strong>Email:</strong> ${email}</li>
    <li><strong>Date of birth:</strong> ${dob}</li>
    <li><strong>Heard via:</strong> ${how}</li>
    <li><strong>Announcements:</strong> ${likeBoth ? 'Yes (all)' : 'No'}, Email-only: ${emailOnly ? 'Yes' : 'No'}</li>
    <li><strong>Contact by:</strong> ${contact}</li>
  </ul>
  <p><a href="<%=request.getContextPath()%>/index.jsp">Back to survey</a></p>
</div>
</body>
</html>
