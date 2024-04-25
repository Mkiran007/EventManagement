<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
      overflow-y: ;
      overflow-x: hide;
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
      height: 100%;
      width: 250px;
      background-color: var(--background-color2);
      position: absolute;
      top: 0px;
      left: 00;
      box-shadow: 1px 1px 10px rgba(198, 189, 248, 0.825);
      display: flex;
      flex-direction: column;
      justify-content: space-between;
      padding: 30px 0 20px 10px;
    }

    .navcontainer {
      height: calc(950px - 0px);
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
      height:100%;
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
      height:800%;
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





    #addEventPage {
      width: 60%;
      border: 1px solid rgb(255, 255, 255);
      padding: 50px;
      margin-left: 100px;
      background-color: rgb(254, 254, 252);
      border-radius: 10px;
      box-shadow: 10px 2px 10px #e8dce2;
    }




    .event {
      display: flex;
      flex-direction: column;
      gap: 20px;
      width:300px;
    }

    .event input {
      width: 270%;
      padding: 10px;
      border: 1px solid rgb(255, 255, 255);
      border-radius: 10px;
      box-shadow: 10px 2px 10px #e8dce2;
      outline: none;
    }

    .back input {
      width: 100px;
      padding: 8px;
      margin-left: 20%;
      background-color: #0c007d;
      color: #fafaff;
      box-shadow: 10px 2px 10px #e8dce2;
      border-radius: 5px;
      cursor: pointer;
    }

    .back button {
      width: 100px;
      height: 40px;
      background-color: #0c007d;
      color: #fafaff;
      box-shadow: 10px 2px 10px #e8dce2;
      border-radius: 5px;
      cursor: pointer;
    }

    .back {
      padding: 10px;
    }

    /*Main Image*/


    #eventPage {
      justify-content: space-between;
      width:500px;
    }

    .image1 img {
      width: 100%;
      height: 200px;
      box-sizing: border-box;
    }

    .image1 {
      width: 30%;
      padding: 10px;
      border: 1px solid rgb(255, 255, 255);
      border-radius: 10px;
      box-shadow: 10px 2px 10px #e8dce2;
      box-sizing: border-box;
    }

    .image2 img {
      width: 100%;
      height: 200px;
    }

    .image2 {
      width: 30%;
      padding: 10px;
      border: 1px solid rgb(255, 255, 255);
      border-radius: 10px;
      box-shadow: 10px 2px 10px #e8dce2;
    }

    .image3 img {
      width: 100%;
      height: 200px;
    }

    .image3 {
      width: 30%;
      padding: 10px;
      border: 1px solid rgb(255, 255, 255);
      border-radius: 10px;
      box-shadow: 10px 2px 10px #e8dce2;
    }
  </style>
</head>
<body>

                <!-- for header part -->
                <header>
                    <div class="logosec">
                        <div class="logo">Event Management</div>
                        <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210182541/Untitled-design-(30).png"
                            class="icn menuicn" id="menuicn" alt="menu-icon" />
                    </div>

                      <form action="search.jsp" method="post">
                        <input type="text" name="search" placeholder="search">
                        <input type="submit" value="search">
                   </form>

                    <div class="message">
                        <div class="circle"></div>
                        <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210183322/8.png" class="icn"
                            alt="" />
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
                                    <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" class="nav-img"
                                        alt="dashboard" />
                                    <h3>Profile</h3>
                                </div>

                                <div class="option2 nav-option">
                                    <img src="https://cdn4.iconfinder.com/data/icons/facebook-ui-twotone/48/Paul-27-512.png"
                                        class="nav-img" alt="articles" />
                                    <a href="adminviewevent.jsp">
                                        <h3>Events</h3>
                                    </a>
                                </div>

                                <div class="option2 nav-option">
                                    <img src="https://cdn-icons-png.flaticon.com/512/8295/8295009.png" class="nav-img"
                                        alt="articles" />
                                    <a href="addevents.jsp">
                                        <h3>Add Event</h3>
                                    </a>
                                </div>

                                <div class="nav-option option3">
                                    <img src="https://w7.pngwing.com/pngs/166/769/png-transparent-computer-icons-report-others-service-logo-business-thumbnail.png"
                                        class="nav-img" alt="report" />
                                    <a href="viewcontactus.jsp">
                                        <h3>Contact Reports</h3>
                                    </a>
                                </div>


                                <div class="nav-option option5">
                                    <img src="https://cdn.iconscout.com/icon/premium/png-256-thumb/feedback-report-764780.png"
                                        class="nav-img" alt="blog" />
                                    <a href="viewfeedbacks.jsp">
                                        <h3>Feedback Report</h3>
                                    </a>
                                </div>

                                <div class="nav-option logout">
                                    <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210183321/7.png"
                                        class="nav-img" alt="logout" /><a href="login.jsp">
                                    <h3>Logout</h3></a>
                                </div>
                            </div>
                        </nav>
                    </div>
             
                    \   
                            

  <div id="addEventPage" >
<form class="event" action="adminaddevent.jsp" method="post">
          <h1 style="color: #0c007d;">Upload Event Poster</h1>
          <input type="file" name="event_poster" >
          <input type="text" name="eventname" placeholder="Event Name" required>
          <input type="text" name="host" placeholder="Host Name" required>
          <h5>Event Starting time</h5>
          <input type="time" name="starting_time" required>
          <h5>Event Ending Time</h5>
          <input type="time" name="ending_time" required>
          <input type="text" name="event_location" placeholder="Event Location" required>
          <input type="text" name="event_description" placeholder="Event Description" required>
          <input type="text" name="event_host_email" placeholder="Event Host Email" required>
          <input type="password" name="event_host_password" placeholder="Event host Password" required>
          <div class="back">
            <button id="addEventButton">Add Event</button>
           
          </div>
        </form>
        </div>
        
   </div>  

</body>
</html>