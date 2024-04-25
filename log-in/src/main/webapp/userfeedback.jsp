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


        /Main Image/

        #enrolledEventPage {
            justify-content: space-between;
            margin-top: 30px;
        }

        #eventPage {
            justify-content: space-between;
            margin-top: 30px;
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
                        <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" class="nav-img"
                            alt="dashboard" />
                        <h3>Profile</h3>
                    </div>

                    <div class="option2 nav-option">
                        <img src="https://cdn4.iconfinder.com/data/icons/facebook-ui-twotone/48/Paul-27-512.png"
                            class="nav-img" alt="articles" /><a href="userviewevents.jsp">
                        <h3 id="eventButton">Events</h3></a>
                    </div>

                    <!--  <div class="option2 nav-option">
                        <img src="https://cdn-icons-png.flaticon.com/512/8295/8295009.png" class="nav-img"
                            alt="articles" />
                        <h3 id="EnrolledEventButton">Enrolled Event</h3>
                    </div>-->

                    <div class="nav-option option3">
                        <img src="https://w7.pngwing.com/pngs/166/769/png-transparent-computer-icons-report-others-service-logo-business-thumbnail.png"
                            class="nav-img" alt="report" /><a href="usercontactus.jsp">
                        <h3 id="contactButton">Contact Reports</h3></a>
                    </div>


                    <div class="nav-option option5">
                        <img src="https://cdn.iconscout.com/icon/premium/png-256-thumb/feedback-report-764780.png"
                            class="nav-img" alt="blog" /><a href="userfeedback.jsp">
                        <h3 id="feedbackButton">Feedback Report</h3></a>
                    </div>

                    <div class="nav-option logout">
                        <img src="https://media.geeksforgeeks.org/wp-content/uploads/20221210183321/7.png"
                            class="nav-img" alt="logout" /><a href="userlogin.jsp">
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
 
           

                <div class="form-box">
                    <div class="textup">
                        <i class="fa fa-solid fa-clock"></i>
                        It only takes two minutes!!
                    </div>
                    <form action="saveuserfeed.jsp" method="post">
                        <label for="uname">
                            <i class="fa fa-solid fa-user"></i>
                            StudentId
                        </label>
                        <input type="text" id="StudentId"  name="student_id" required />

                        <label for="email">
                            <i class="fa fa-solid fa-envelope"></i>
                            Email Address
                        </label>
                        <input type="email" id="email" name="email" required />

                        <label>
                            <i class="fa-solid fa-face-smile"></i>
                            Do you satisfy with our service?
                        </label>

                        <table>
                            <tr>
                                <td>Overall Satisfaction:</td>
                                <td><input type="radio" name="a"  value="5" /></td>
                                <td><input type="radio" name="a" value="4" /></td>
                                <td><input type="radio" name="a" value="3"  /></td>
                                <td><input type="radio" name="a" value="2"  /></td>
                                <td><input type="radio" name="a" value="1" /></td>
                            </tr>
                            <tr>
                                <td>User Experience:</td>
                                <td><input type="radio" name="b" value="5" /></td>
                                <td><input type="radio" name="b" value="4" /></td>
                                <td><input type="radio" name="b" value="3" /></td>
                                <td><input type="radio" name="b" value="2" /></td>
                                <td><input type="radio" name="b" value="1" /></td>
                            </tr>
                            <tr>
                                <td>Communication Effectiveness:</td>
                                <td><input type="radio" name="c" value="5" /></td>
                                <td><input type="radio" name="c" value="4" /></td>
                                <td><input type="radio" name="c" value="3" /></td>
                                <td><input type="radio" name="c" value="2" /></td>
                                <td><input type="radio" name="c" value="1" /></td>
                            </tr>
                            <tr>
                                <td>Event Content and Programming</td>
                                <td><input type="radio" name="d" value="5" /></td>
                                <td><input type="radio" name="d" value="4" /></td>
                                <td><input type="radio" name="d" value="3"  /></td>
                                <td><input type="radio" name="d"  value="2" /></td>
                                <td><input type="radio" name="d" value="1" /></td>
                            </tr>
                        </table>

                        <label for="msg">
                            <i class="fa-solid fa-comments" style="margin-right: 3px"></i>
                            Write your Suggestions:
                        </label>
                        <textarea id="msg" name="msg" rows="4" cols="10" required> </textarea>
                        <button type="submit" onclick="sucess">Submit</button>
                    </form>
                </div>
<script>
function showalert(){
	
        alert("Thank you for your feedback!");
    }
}
</script>




</body>
</html>