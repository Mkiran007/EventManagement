<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, 
				initial-scale=1.0" />
  <title>Event </title>
  

  <style>
    /* Main CSS Here */

    @import url("https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Poppins", sans-serif;
    }

    :root {
      --background-color1: #fafaff;
      --background-color2: #ffffff;
      --background-color3: #ededed;
      --background-color4: #cad7fda4;
      --primary-color: #4b49ac;
      --secondary-color: #0c007d;
      --Border-color: #3f0097;
      --one-use-color: #3f0097;
      --two-use-color: #5500cb;
    }

    body {
      background-color: var(--background-color4);
      max-width: 100%;
      overflow-x: hidden;
    }

    header {
      height: 70px;
      width: 100vw;
      padding: 0 30px;
      background-color: var(--background-color1);
      position: fixed;
      z-index: 100;
      box-shadow: 1px 1px 15px rgba(161, 182, 253, 0.825);
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .logo {
      font-size: 27px;
      font-weight: 600;
      color: rgb(47, 141, 70);
    }

    .icn {
      height: 30px;
    }

    .menuicn {
      cursor: pointer;
    }

    .searchbar,
    .message,
    .logosec {
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .searchbar2 {
      display: none;
    }

    .logosec {
      gap: 60px;
    }

    .searchbar input {
      width: 250px;
      height: 42px;
      border-radius: 50px 0 0 50px;
      background-color: var(--background-color3);
      padding: 0 20px;
      font-size: 15px;
      outline: none;
      border: none;
    }

    .searchbtn {
      width: 50px;
      height: 42px;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 0px 50px 50px 0px;
      background-color: var(--secondary-color);
      cursor: pointer;
    }

    .message {
      gap: 40px;
      position: relative;
      cursor: pointer;
    }

    .circle {
      height: 7px;
      width: 7px;
      position: absolute;
      background-color: #fa7bb4;
      border-radius: 50%;
      left: 19px;
      top: 8px;
    }

    .dp {
      height: 40px;
      width: 40px;
      background-color: #626262;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      overflow: hidden;
    }

    .main-container {
      display: flex;
      width: 100vw;
      position: relative;
      top: 70px;
      z-index: 1;
    }

    .dpicn {
      height: 42px;
    }

    .main {
      height: calc(100vh - 70px);
      width: 100%;
      overflow-y: scroll;
      overflow-x: hidden;
      padding: 40px 30px 30px 30px;
    }

    .main::-webkit-scrollbar-thumb {
      background-image: linear-gradient(to bottom,
          rgb(0, 0, 85),
          rgb(0, 0, 50));
    }

    .main::-webkit-scrollbar {
      width: 5px;
    }

    .main::-webkit-scrollbar-track {
      background-color: #9e9e9eb2;
    }

    /* .box-container {
        display: flex;
        justify-content: space-evenly;
        align-items: center;
        flex-wrap: wrap;
        gap: 50px;
      }*/
    .nav {
      min-height: 91vh;
      width: 250px;
      background-color: var(--background-color2);
      position: absolute;
      top: 0px;
      left: 00;
      box-shadow: 1px 1px 10px rgba(198, 189, 248, 0.825);
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      overflow: hidden;
      padding: 30px 0 20px 10px;
    }

    .navcontainer {
      height: calc(100vh - 70px);
      width: 250px;
      position: relative;
      overflow-y: scroll;
      overflow-x: hidden;
      transition: all 0.5s ease-in-out;
    }

    .navcontainer::-webkit-scrollbar {
      display: none;
    }

    .navclose {
      width: 80px;
    }

    .nav-option {
      width: 250px;
      height: 60px;
      display: flex;
      align-items: center;
      padding: 0 30px 0 20px;
      gap: 20px;
      transition: all 0.1s ease-in-out;
    }

    .nav-option:hover {
      border-left: 5px solid #a2a2a2;
      background-color: #dadada;
      cursor: pointer;
    }

    .nav-img {
      height: 30px;
    }

    .nav-upper-options {
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 30px;
    }

    .option1 {
      border-left: 5px solid #010058af;
      background-color: var(--Border-color);
      color: white;
      cursor: pointer;
    }

    .option1:hover {
      border-left: 5px solid #010058af;
      background-color: var(--Border-color);
    }

    .report-body {
      max-width: 100%;
      padding: 20px;
    }

    .report-topic-heading,
    .item1 {
      width: 1000px;
      display: flex;
      gap: 300px;
    }

    .t-op {
      font-size: 18px;
      letter-spacing: 1px;
    }

    .items {
      width: 1120px;
      margin-top: 15px;
    }

    .item1 {
      margin-top: 20px;
    }

    .t-op-nextlvl {
      font-size: 14px;
      letter-spacing: 0px;
      font-weight: 600;
    }

    .label-tag {
      width: 100px;
      text-align: center;
      background-color: rgb(0, 177, 0);
      color: white;
      border-radius: 4px;
    }

    /* Responsive CSS Here */
    @media screen and (max-width: 950px) {
      .nav-img {
        height: 25px;
      }

      .nav-option {
        gap: 30px;
      }

      .nav-option h3 {
        font-size: 15px;
      }

      .report-topic-heading,
      .item1,
      .items {
        width: 800px;
      }
    }

    @media screen and (max-width: 850px) {
      .nav-img {
        height: 30px;
      }

      .nav-option {
        gap: 30px;
      }

      .nav-option h3 {
        font-size: 20px;
      }

      .report-topic-heading,
      .item1,
      .items {
        width: 700px;
      }

      .navcontainer {
        width: 100vw;
        position: absolute;
        transition: all 0.6s ease-in-out;
        top: 0;
        left: -100vw;
      }

      .nav {
        width: 100%;
        position: absolute;
      }

      .navclose {
        left: 00px;
      }

      .searchbar {
        display: none;
      }

      .main {
        padding: 40px 30px 30px 30px;
      }

      .searchbar2 {
        width: 100%;
        display: flex;
        margin: 0 0 40px 0;
        justify-content: center;
      }

      .searchbar2 input {
        width: 250px;
        height: 42px;
        border-radius: 50px 0 0 50px;
        background-color: var(--background-color3);
        padding: 0 20px;
        font-size: 15px;
        border: 2px solid var(--secondary-color);
      }
    }

    @media screen and (max-width: 490px) {
      .message {
        display: none;
      }

      .logosec {
        width: 100%;
        justify-content: space-between;
      }

      .logo {
        font-size: 20px;
      }

      .menuicn {
        height: 25px;
      }

      .nav-img {
        height: 25px;
      }

      .nav-option {
        gap: 25px;
      }

      .nav-option h3 {
        font-size: 12px;
      }

      .nav-upper-options {
        gap: 15px;
      }

      .recent-Articles {
        font-size: 20px;
      }

      .report-topic-heading,
      .item1,
      .items {
        width: 550px;
      }
    }

    @media screen and (max-width: 400px) {
      .recent-Articles {
        font-size: 17px;
      }

      .view {
        width: 60px;
        font-size: 10px;
        height: 27px;
      }

      .report-header {
        height: 60px;
        padding: 10px 10px 5px 10px;
      }

      .searchbtn img {
        height: 20px;
      }
    }

    @media screen and (max-width: 320px) {
      .recent-Articles {
        font-size: 12px;
      }

      .view {
        width: 50px;
        font-size: 8px;
        height: 27px;
      }

      .report-header {
        height: 60px;
        padding: 10px 5px 5px 5px;
      }

      .t-op {
        font-size: 12px;
      }

      .t-op-nextlvl {
        font-size: 10px;
      }

      .report-topic-heading,
      .item1,
      .items {
        width: 300px;
      }

      .report-body {
        padding: 10px;
      }

      .label-tag {
        width: 70px;
      }

      .searchbtn {
        width: 40px;
      }

      .searchbar2 input {
        width: 180px;
      }
    }





    .dot {
      height: 10px;
      width: 10px;
      background-color: #08df0c;
      border-radius: 50%;
      display: inline-block;
    }

    .dot1 {
      height: 10px;
      width: 10px;
      background-color: #f12f08;
      border-radius: 50%;
      display: inline-block;
    }

    .dot2 {
      height: 10px;
      width: 10px;
      background-color: #08df0c;
      border-radius: 50%;
      display: inline-block;
    }

    .inline1 .iam img {
      width: 300px;
      height: 300px;
      margin-left: 40px;
      margin-top: 100px;
      border-radius: 10px;
    }


    .cont input {
      width: 300px;
      height: 30px;
      margin-left: 120px;
      margin-top: 60px;
      border-radius: 10px;
      outline: none;
      height: 40px;
    }

    .cont textarea {
      width: 300px;
      height: 100px;
      margin-left: 120px;
      margin-top: 60px;
      border-radius: 10px;
      outline: none;
    }


    .send {
      width: 300px;
      height: 40px;
      margin-left: 120px;
      margin-top: 60px;
      border-radius: 10px;
      outline: none;
      background-color: #3a0f96;
      color: white;
      font-size: 20px;
      cursor: pointer;
    }

    .inline {
      border: #0c007d 1px solid;
      width: 200px;
      background-color: #0c007d;
      border-radius: 1px 0px 50px 0px;
    }

    .inline1 {
      border: #0c007d 1px solid;
      background-color: #0a2e8a;
      border-radius: 1px 0px 50px 0px;
      color: rgb(212, 6, 6);
      height: 10vh;
      width: 800px;
    }




    .aaa {
      border: #ededed 1px solid;
      padding: 20px;
      box-shadow: 10px 1px 10px rgba(0, 0, 0);
      border-radius: 10px;
      margin-left: 200px;
    }





    .textup {
      text-align: center;
      color: #0f4c81;
      font-weight: 700;
    }

    i {
      margin-right: 3px;
    }

    .form-box {
      background-color: #fff;
      box-shadow: 0 0 10px #0f4c81;
      padding: 15px;
      border-radius: 8px;
      width: 500px;
      margin-left: 290px;
    }

    form {
      max-width: 400px;
      margin: 0 auto;
    }

    .radio-group {
      display: flex;
      margin-bottom: 16px;
    }

    input[type="radio"] {
      margin-right: 8px;
    }

    label {
      display: block;
      margin-bottom: 8px;
      font-size: 17px;
      color: #0f4c81;
      font-weight: 600;
    }

    input,
    textarea {
      width: 100%;
      padding: 8px;
      margin-bottom: 12px;
      box-sizing: border-box;
      border-radius: 10px;
    }

    button {
      background-color: #0f4c81;
      color: #fff;
      padding: 10px;
      border: none;
      border-radius: 25px;
      cursor: pointer;
      width: 100%;
      font-size: 15px;
      transition: 0.2s linear;
    }

    button:hover {
      background-color: #0f4c81;
      border: none;
      transform: translateY(-10px);
    }




#eventPage{
    display: flex;
    flex-direction: row;
    align-items: center;
    flex-wrap: wrap;

}


#img-div {
    width: 300px;
    height: 300px;
    flex-wrap: wrap;
}

#img-div img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    flex-wrap: wrap;
}


#text-div {
    width: 650px;
    height: 300px;
    background-color: purple;
    color: white;
    margin: 10px;
    padding: 10px;
    flex-wrap: wrap;
}

#eventPage{
  border: 1px orange solid;
  margin-left: 140px;
   display: inline;
  width:90%;
}

  </style>
</head>

<body>


<%@page
		import="com.murali.mtie.adminDao,com.murali.mtie.*, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<%
	List<admin> list = adminDao.getAllRecords();
	request.setAttribute("list", list);
	%>



  <!-- for header part -->
  <header>
    <div class="logosec">
      <div class="logo">Event Management</div>
      <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210182541/Untitled-design-(30).png"
        class="icn menuicn" id="menuicn" alt="menu-icon" />
    </div>

    <div class="searchbar">
      <input type="text" placeholder="Search" />
      <div class="searchbtn">
        <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210180758/Untitled-design-(28).png"
          class="icn srchicn" alt="search-icon" />
      </div>
    </div>

    <div class="message">
      <div class="circle"></div>
      <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210183322/8.png" class="icn" alt="" />
      <div class="dp">
        <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210180014/profile-removebg-preview.png"
          class="dpicn" alt="dp" />
      </div>
    </div>
  </header>

  <div class="main-container">
    <div class="navcontainer">
      <nav class="nav">
        <div class="nav-upper-options">
          <div class="nav-option option1">
            <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" class="nav-img" alt="dashboard" />
            <h3>Profile</h3>
          </div>

          <div class="option2 nav-option">
            <img src="https://cdn4.iconfinder.com/data/icons/facebook-ui-twotone/48/Paul-27-512.png" class="nav-img"
              alt="articles" />
              <a href="userviewevents.jsp">
            <h3 id="eventButton">Events</h3></a>
          </div>

          <!--  <div class="option2 nav-option">
            <img src="https://cdn-icons-png.flaticon.com/512/8295/8295009.png" class="nav-img" alt="articles" />
            
            <h3 id="addEventButton">Enrolled Events</h3>
          </div>-->

          <div class="nav-option option3">
            <img
              src="https://w7.pngwing.com/pngs/166/769/png-transparent-computer-icons-report-others-service-logo-business-thumbnail.png"
              class="nav-img" alt="report" />
              <a href="usercontactus.jsp">
            <h3 id="contactButton">Contact Us</h3></a>
          </div>


          <div class="nav-option option5">
            <img src="https://cdn.iconscout.com/icon/premium/png-256-thumb/feedback-report-764780.png" class="nav-img"
              alt="blog" />
              <a href="userfeedback.jsp">
            <h3 id="feedbackButton">Feedback Report</h3></a>
          </div>

          <div class="nav-option logout">
            <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210183321/7.png" class="nav-img"
              alt="logout" />
              <a href="userlogin.jsp">
            <h3>Logout</h3></a>
          </div>
        </div>
      </nav>
    </div>
    <div class="main">
      <div class="searchbar2">
        <input type="text" name="" id="" placeholder="Search" />
        <div class="searchbtn">
          <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210180758/Untitled-design-(28).png"
            class="icn srchicn" alt="search-button" />
        </div>
      </div>


      <!--Main Image-->
      
      <div id="eventPage" style="display: inline-flex;">
    <form action="admin.html" method="post" >
        
        <c:forEach items="${list}" var="u">
       
         <div id="text-div">
        
          <p>${u.geteventname()}</p>
          <p>${u.gethost()}</p>
          <p>${u.getStarting_time()}</p>
          <p>${u.getEnding_time()}</p>
          <p>${u.getEvent_location()}</p>
          <p>${u.getEvent_description()}</p>
          
        </div>
         </c:forEach>
        </form>
</div>
</div>

      <script>
        let menuicn = document.querySelector(".menuicn");
        let nav = document.querySelector(".navcontainer");

        menuicn.addEventListener("click", () => {
          nav.classList.toggle("navclose");
        })


        window.onload = function () {
          function showElement(buttonId, elementId, otherElementIds) {
            var button = document.getElementById(buttonId);
            if (button) {
              button.addEventListener('click', function () {
                var element = document.getElementById(elementId);
                if (element) {
                  element.style.display = 'flex';
                }

                for (let id of otherElementIds) {
                  var otherElement = document.getElementById(id);
                  if (otherElement) {
                    otherElement.style.display = 'none';
                  }
                }
              });
            }
          }

          showElement('eventButton', 'eventPage', ['enrolledEventPage', 'contactPage', 'feedbackPage']);
          showElement('AddEventButton', 'enrolledEventPage', ['eventPage', 'contactPage', 'feedbackPage']);
          showElement('contactButton', 'contactPage', ['enrolledEventPage', 'eventPage', 'feedbackPage']);
          showElement('feedbackButton', 'feedbackPage', ['enrolledEventPage', 'contactPage', 'eventPage']);
        }


      </script>
</body>

</html>