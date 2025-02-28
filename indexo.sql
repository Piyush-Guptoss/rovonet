/* styles.css */
@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap');
/* Reset default browser styling */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Montserrat', sans-serif;
    color: #e0e0e0;
    background-color: #1b1b1b; /*default = #333*/
}

header {
    background: #000;
    color: #e0e0e0;
    padding: 20px 0;
    position: fixed;
    width: 100%;
    top: 0;
    left: 0;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
    z-index: 3; /*default = 1000*/
}

header .container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0 20px;
}

header h1 {
    margin: 0;
}

.nav-links {
    list-style: none;
    display: flex;
}

.nav-links li {
    margin: 0 15px;
}

.nav-links li a {
    color: #e0e0e0;
    text-decoration: none;
    font-weight: bold;
    position: relative;
}

.nav-links li a::after {
    content: '';
    position: absolute;
    bottom: -5px;
    left: 0;
    width: 0;
    height: 2px;
    background: #ff4b5c;
    transition: width 0.3s ease;
}

.nav-links li a:hover::after {
    width: 100%;
}

.hero {
    background: #000;
    color: #fff;
    text-align: center;
    padding: 100px 20px;
    padding-top: 100px;
    padding-bottom: 50px;
    position: relative;
}

.hero-content {
    position: relative;
    z-index: 1; /*default = 1*/
}

.hero h2 {
    font-size: 36px;
    margin-bottom: 20px;
}

.hero p {
    font-size: 18px;
    margin-bottom: 30px;
}
/* CSS FOR RESPONSIVENESS OF THE NAV BAR ITEMS ON VARIOUS WIDTHS */
@media (max-width: 725px) {
    .navreivise {
        margin-left: 12px; /*default = 8px */
    }
}
@media (min-width: 726px) and (max-width: 1120px) {
    .navreivise {
        margin-left: 29px; /* default = 24px */
        
    }
}
@media (min-width: 1121px) and (max-width: 1280px) {
    .navreivise {
        margin-left: 42px; /* default = 36px */
        
    }
}
@media (min-width: 1281px) and (max-width: 1440px) {
    .navreivise {
        margin-left: 66px; /*default = 60px */
    }
}
@media (min-width: 1441px) and (max-width: 1920px) {
    .navreivise {
        margin-left: 112px; /* default = 100px */
    }
}
@media (min-width: 1921px) {
    .navreivise {
        margin-left: 152px; /* default = 140px */
    }
}

.navicons {
    margin-right: 30px; /*default = 30px*/
}
/*buttons on hero section */
.button, .button-secondary, .button-tertiary, .button-zero {
    display: inline-block;
    padding: 10px 20px; /*default = 10px, 20px*/
    border-radius: 5px;
    font-size: 18px;
    font-weight: bold;
    color: #fff;
    text-decoration: none;
    position: relative;
    overflow: hidden;
    transition: background 0.3s ease, transform 0.2s ease;
    margin: 5px; /* default margin:5px, with no distinct specific margins*/
    margin-top: 7px;
    margin-bottom: 2px;
}

.button {
    background: #ff4b5c;
}
.button-zero {
    background: #1e90ff; /* Blue */
}
.button-secondary {
    background: #b840e7; /*default = #444, #cc4bff*/
}

.button-tertiary {
    background: #28bb2d; /*default = #4caf50*/
}

.button:hover {
    background: #e03e47;
    transform: translateY(-2px);
}

.button-secondary:hover {
    background: #d700e0; /*default = #555*/
    transform: translateY(-2px);
}

.button-tertiary:hover {
    background: #2ca132; /* default = #333*/
    transform: translateY(-2px);
}
.button-zero:hover {
    background: #1c6ea4; /* Darker blue */
    transform: translateY(-2px);
}
.button::before, .button-secondary::before, .button-tertiary::before, .button-zero::before {
    content: '';
    position: absolute;
    background: rgba(255, 255, 255, 0.289); /*default = 0.3 opacity*/
    border-radius: 50%;
    width: 300%;
    height: 300%;
    left: -50%;
    top: -50%;
    transition: transform 0.5s, opacity 0.5s;
    transform: scale(0);
    opacity: 0;
}

.button:focus::before, .button:hover::before,
.button-secondary:focus::before, .button-secondary:hover::before,
.button-tertiary:focus::before, .button-tertiary:hover::before, .button-zero:focus::before, .button-zero:hover::before {
    transform: scale(1);
    opacity: 1;
}
/* for the ripple effect only when the button is clicked for coarse pointered devices*/
@media (pointer: coarse) {
    .button:active::before,
    .button-secondary:active::before,
    .button-tertiary:active::before,
    .button-zero:active::before {
        transform: scale(1);
        opacity: 1;
    }
}
/* Responsive button container */
@media (max-width: 768px) {
    .button-container {
        flex-direction: column; /* Stack buttons vertically on smaller screens */
        align-items: center;
    }

    .button {
        width: 100%;
        max-width: 300px; /* Ensure buttons are not too wide */
    }
}

@media (min-width: 769px) {
    .button-container {
        flex-direction: row; /* Arrange buttons in a row on larger screens */
    }

    .button {
        flex: 1; /* Allow buttons to grow and fill space */
        max-width: 200px; /* Control the maximum width of each button */
    }
}
.section {
    padding: 60px 20px;
    background: #444;
    color: #e0e0e0;
    text-align: center;
}

.section h2 {
    font-size: 28px;
    margin-bottom: 20px;
}

.section p {
    font-size: 18px;
    margin-bottom: 30px;
}

footer {
    background: #000;
    color: #e0e0e0;
    text-align: center;
    padding: 20px;
    position: relative;
    width: 100%;
    bottom: 0;
    box-shadow: 0 -2px 5px rgba(0, 0, 0, 0.5);
}

/* css for the About Us section */
/* Miscellaneous Information Section */
.misc-info {
    background: #202020; /* Dark gray background */
    color: #f4f4f4; /* Light gray text color */
    padding: 35px 20px;
    text-align: center;
}

/* Attractive headline with a red underline */
.misc-info h2 {
    font-size: 1.9rem; /* Default = 1.9rem; */
    font-weight: 700;
    color: #e0e0e0; /* Vibrant color for emphasis */
    text-align: center;
    margin-bottom: 19px; /*default = 20px*/
    margin-top: 40px; /*default = 50px*/
    text-transform: capitalize; /*default = uppercase*/
    letter-spacing: 1px;
    position: relative;
}

#explore { /* just for the top margin of the explore our top resources text!*/
    margin-top: 0px; /*default= 8px;*/
}
.misc-info h2::after,
.mcqwholeheading::after {
    content: '';
    display: block;
    width: 70px; /* default = 80px and on screen-scaling down = 60px; Width of the underline */
    height: 4px; /* Thickness of the underline */
    background-color: #ff4b5c; /* Red color for the underline */
    margin: 10px auto 0; /* Center align the underline */
    border-radius: 2px;
}
/* TOP MARGIN FOR THE UNDERLINE SO THAT IT DOESN'T APPEAR TOO FAR FROM THE HEADING IN TERMS OF TOP MARGIN */
.mcqwholeheading::after {
    margin-top: 5px; 
}
/* Responsive design */
@media (max-width: 768px) {
    .misc-info h2 {
        font-size: 1.77rem; /* Smaller size for tablets and mobile */
        margin-bottom: 15px;
    }

    .misc-info h2::after,
    .mcqwholeheading::after {
        width: 60px; /* Adjust the underline width for smaller screens */
    }
}

@media (max-width: 480px) {
    .misc-info h2 {
        font-size: 1.5rem; /* Even smaller size for small screens */
        margin-bottom: 11px; /*default = 10px*/
    }

    .misc-info h2::after {
        width: 50px; /* Adjust the underline width for very small screens */
    }
}

.info-items {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
}

.info-item {
    background: #2c2c2c; /* default = #2c2c2c; */
    border-radius: 10px;
    padding: 30px; /*default = 30px;*/
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    max-width: 350px; /*default - 500px*/
    width: 100%; /*default = 280px*/
    margin: 5px; /*default - 5px; 0 auto */
    text-align: center;
    border: 1.89px solid #565656; /*default = 2px solid #565656*/
}

.info-item:hover {
    transform: translateY(-10px); /*default wasn't scaling, but drawing up = transform: translateY(-10px);*/
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.5);
}

.icon {
    font-size: 43px;
    color: #e0e0e0; /* Light gray for icons */
    margin-bottom: 12px;
}

.info-item p {
    font-size: 16px;
    color: #c5c5c5; /* default = #bbb */
    margin-bottom: 20px;
}
/* noraml buttons css */
.nrbutton {
    display: inline-block;
    padding: 9px 18px;
    border-radius: 5px;
    background: #555; /* Medium gray background for buttons */
    color: #f4f4f4; /* Light gray text for buttons */
    text-decoration: none;
    font-weight: bold;
    transition: background 0.3s ease, transform 0.2s ease;
    margin-top: -3px; /*default = it wasn't specified! i.e. = null!*/
}

.nrbutton:hover {
    background: #666; /* Darker gray for button hover */
    transform: scale(1.05);
} 
/* the upper css from normal button css is for the default styling of those buttons */
/* the styling of the nrbuttons for the ripple effect */
.nrbutton {
    position: relative;
    overflow: hidden;

    overflow-x: scroll;
    scrollbar-width: none;
    /* Add any other styling you need for the button */
}

.nrbutton .ripple {
    position: absolute;
    border-radius: 50%;
    background: rgba(255, 255, 255, 0.58); /* default opacity = 0.6*/
    transform: scale(0);
    pointer-events: none;
    animation: ripple-animation 0.5s linear;
}

@keyframes ripple-animation {
    to {
        transform: scale(4);
        opacity: 0;
    }
}
.nrbutton:active {
    transform: scale(0.9);
}
/* the end of the styling of the nrbuttons for their ripple effect */

@media (max-width: 768px) {
    .info-items {
        flex-direction: column;
        align-items: center;
    }

    .info-item {
        width: 90%;
    }
}

@media (min-width: 769px) and (max-width: 1200px) {
    .info-item {
        width: 45%;
    }
}

@media (min-width: 1201px) {
    .info-item {
        width: 22%;
    }
}




/* Navigation Bar Styles */
nav {
    position: relative;
}

.nav-links {
    list-style: none;
    display: flex;
    margin: 0;
    padding: 0;
}

.nav-links li {
    margin: 0 15px;
}

.nav-links li a {
    color: #e0e0e0;
    text-decoration: none;
    font-weight: bold;
    position: relative;
}

.nav-links li a::after {
    content: '';
    position: absolute;
    bottom: -2px; 
    left: 0;
    width: 0;
    height: 2px;
    background: #ff4b5c;
    transition: width 0.3s ease;
}
@media (max-width: 810px) {
    .nav-links li a::after {
        content: '';
        position: absolute;
        bottom: -2px; 
        left: 0;
        width: 0;
        height: 2px;
        background: #7c7072;
        transition: width 0.3s ease;
    }
}
@media (max-width: 810px) {
    .nav-links li:hover {
        background-color: #333333;
        border-radius: 3px;
    } 
}

.nav-links li a:hover::after {
    width: 100%;
}

/* Mobile Menu Styles */
.menu-toggle {
    display: none;
    cursor: pointer;
    flex-direction: column;
    gap: 5px;
}


.menu-toggle .bar1,
.menu-toggle .bar2,
.menu-toggle .bar3 {
    width: 25px;
    height: 3px;
    background: #e0e0e0;
    border-radius: 3px;
}

.menu-toggle {
    transition: transform 0.2s ease;
}
.menu-toggle:active {
    transform: scale(0.9);
}

/* Default state - mobile menu hidden */
.nav-links {
    display: flex;
}

@media (max-width: 810px) { /*default = 768px; note: the more the width would be, the hamburger menu will appear on that much higher widthed screens!*/
    .nav-links {
        display: none;
        flex-direction: column;
        position: absolute;
        top: 60px;
        right: 20px;
        background: #222425;
        width: 200px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        padding-block: 5px;
        margin: 0;
    }

    .nav-links.active {
        display: flex;
    }

    .nav-links li {
        margin: 0;
    }

    .nav-links li a {
        padding: 10px;
        text-align: center;
        display: block;
        
    }

    .menu-toggle {
        display: flex;
    }
}


/* Follow Us Section */
.follow-us {
    text-align: center;
    padding: 20px;
    background: #000;
    color: #e0e0e0;
}

.follow-us h4 {
    font-size: 18px;
    margin-bottom: 10px;
    font-weight: bold;
}

.social-icons {
    display: flex;
    justify-content: center;
    gap: 15px;
}

.icon {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 42px;
    height: 42px;
    border-radius: 50%;
    transition: background 0.3s ease, transform 0.3s ease;
    color: #fff;
    text-decoration: none;
}
.icon:hover {
    transform: scale(1.1);
}

/* Specific Icon Styles */
.whatsapp {
    background: #25D366; /* WhatsApp green */
    
}
.instagram {
    background: linear-gradient(to right, #f58529, #dd2a7b, #8134af, #515bd4); /* Instagram gradient */
}

.twitter {
    background: #1DA1F2; /* Twitter blue */
}



/* CSS FOR THE MCQ OPTIONS */

.mcqwhole { /*mcqwhole is the class of the whole main containing all the mcq questions, you know!*/
    margin-block: 80px;
    
}
/* CSS FOR THE HEADING OF THE ULTIMATE MCQ SECTIONS */
.mcqwholeheading {
    font-size: 1.55rem;
    text-align: center;
    margin-top: 90px;
    margin-bottom: 15px; /*default= 15px;*/
    margin-inline: 50px;
    text-transform: uppercase;
}
@media (max-width: 740px) {
    .mcqwholeheading {
        font-size: 1.385rem;
    }
}

.question-section {
    background-color: #1e1e1e;
    border-radius: 8px;
    padding: 20px;
    margin-block: -15px; /*deault = 60px;*/
    
}

.question {
    font-size: 1.3rem;
    font-weight: 200; /*default = 500*/
    margin-bottom: 20px;
}

.mcq-options {
    list-style-type: none;
    padding: 0;
    margin: 0;
}

.mcq-options .option {
    background-color: #2c2c2c;
    border: 1px solid #444;
    border-radius: 5px;
    margin-bottom: 6px; /*default = 10px;*/
    padding-inline: 10px; /*default - just padding, nothing else specified i.e. whether inline or block or top or left, etc. just padding: 10px;*/
    padding-block: 3px; /*default = 3.5px;*/
    cursor:pointer;
    transition: background-color 0.3s, transform 0.28s; /*default transform = 0.3s*/
    display: flex;
    align-items: center;
    position: relative;
}

.mcq-options .option:hover {
    background-color: #333;
    transform: scale(1.017);
 
}

.mcq-options .option:active {
    transform: scale(0.94); /*default = 0.98*/
    
}

.mcq-options .option.correct {
    background-color: #4caf50;
    border: 0.3px solid #28a745; /* Green border for correct answer */
}

.mcq-options .option.incorrect {
    background-color: #ff4b5c;
    border: 0.3px solid #dc3545; /* Red border for incorrect answer */
}

.mcq-options .option input[type="radio"] {
    margin-right: 10px;
    cursor: pointer;
}

.mcq-options .option label {
    display: flex;
    align-items: center;
    width: 100%;
    cursor: pointer;
}

.mcq-options .tick-icon {
    color: green; /* Green for correct answers tick-icon */
    font-size: 1.2rem;
    margin-left: 10px;
    opacity: 0;
    transition: opacity 0.3s ease;
}

.mcq-options .cross-icon {
    color: red; /* Slightly darker Red for incorrect answers cross-icon */
    font-size: 1.2rem;
    margin-left: 10px;
    opacity: 0;
    transition: opacity 0.3s ease;
}

.mcq-options .option.correct .tick-icon {
    opacity: 1;
}

.mcq-options .option.incorrect .cross-icon {
    opacity: 1;
}

.answer-section {
    display: none;
    margin-top: 20px;
    font-size: 1.2rem;
}
/* Ensure tick icons are hidden by default */
.tick-icon {
    color: green; /* Green for correct answers tick-icon */
    font-size: 1.2rem;
    margin-left: 10px;
    display: none; /* Use display: none instead of opacity for better control */
    transition: opacity 0.3s ease;
}

.cross-icon {
    color: red; /* Slightly darker Red for incorrect answers cross-icon */
    font-size: 1.2rem;
    margin-left: 10px;
    opacity: 0; /* Default hidden state */
    transition: opacity 0.3s ease;
}

.option.correct .tick-icon {
    display: inline; /* Show tick icon for correct options */
}

.option.incorrect .cross-icon {
    opacity: 1; /* Show cross icon for incorrect options */
}

.answer-section {
    display: none;
    margin-top: 20px;
    font-size: 1.2rem;
}

.answer-section span {
    font-weight: 600;
}

@media (max-width: 768px) {
    .mcq-options .option {
        font-size: 1rem;
    }
}
/* css for the ripple of the mcq options from start */
.mcq-options .option {
    position: relative; /* Ensure the ripple is positioned relative to the option */
    overflow: hidden; /* Hide the ripple overflow */
}

.mcq-options .option .ripple {
    position: absolute;
    border-radius: 50%;
    background: rgba(255, 255, 255, 0.3);
    transform: scale(0);
    animation: ripple 500ms linear; /* default = 600ms linear;*/
    pointer-events: none;
}

@keyframes ripple {
    to {
        transform: scale(4); 
        opacity: 0;
    }
}

.mcq-options .option.correct .tick-icon,
.mcq-options .option.incorrect .cross-icon {
    opacity: 1; /* Ensure icons are visible */
}
/* FOR THE DESIRED ALIGNMENT OF THE NAV BAR */
.containernav {
    margin: auto;
    max-width: 900px; /*default = 1200px;*/
}

/* CSS FOR THE SIDE NAV BAR IN MCQS (and probably too in online tests, solutions, notes!) */


/* नेक्स्ट चैप्टर */
.next-chapter-section {
    background-color: #1e1e1e; /* Slightly lighter dark background for contrast */
    padding: 20px;
    text-align: center;
    margin-top: 40px;
    border-radius: 8px;
    max-width: 400px;
    width: 90%;
    margin: auto;
    border: #333 solid;
}

.next-chapter-text {
    font-size: 1.2rem;
    color: #e0e0e0;
    margin-block: 10px;
}
.next-chapter-text:hover {
    text-decoration: underline;
}

.next-chapter-button {
    display: inline-block;
    background: linear-gradient(56deg, #2872da, #24d66e);
    color: #e0e0e0;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-size: 1rem;
    font-weight: bold;
    transition: background-color 0.3s, transform 0.2s;
}

.next-chapter-button:hover {
    background: linear-gradient(56deg, #0f52b1, #15a74f);  /* Slightly lighter shade for hover effect */
    transform: scale(1.05);
}

@media (pointer: fine) {
    .next-chapter-button:active {
        transform: scale(0.9);
        transition: transform 0.12s ease;
    }
}
@media (pointer: coarse) {
    .next-chapter-button:active {
        transform: scale(0.9);
        transition: transform 0.111s ease;
    }
}

.next-chapter-button:focus {
    outline: none;
    box-shadow: 0 0 0 3px rgba(0, 0, 0, 0.2);
}
/* CSS FOR REMAINING CHAPTERS' DIV */
.remaining-chapters-section {
    background-color: #1e1e1e; /* Slightly lighter background for contrast */
    padding: 20px;
    border-radius: 8px;
    margin-top: 20px; /* you may want to adjust the margin-top property to zero*/
    color: #e0e0e0;
    margin-inline: auto;
    max-width: 680px;
    width: 100%;
    border: #333 solid 1.8px;
    margin-bottom: 20px;
    
}
@media (min-width: 576px) and (max-width: 742px) {
    .remaining-chapters-section {
        max-width: 500px;
        width: 100%;
    }
}
@media (min-width: 462px) and (max-width: 575px)  {
    .remaining-chapters-section {
        max-width: 400px;
        width: 100%;
    }
}
@media (min-width: 373px) and (max-width: 461px) {
    .remaining-chapters-section {
        max-width: 320px;
        width: 100%;
    }
}
@media (max-width: 372px) {
    .remaining-chapters-section {
        max-width: 270px;
    }
}

.remaining-chapters-title {
    font-size: 1.34rem;
    margin-bottom: 10px;
    color: #ffffff;
    text-align: left;
    margin-left: 10px;
}

.remaining-chapters-list {
    list-style-type: none; /* Remove default list styling */
    padding: 0;
    text-align: left;
    margin-left: 10px;
    margin-top: 10px;
}
.remaining-chapters-list li {
    font-size: 1.05rem;
    margin-bottom: 8px;
    transition: color 0.3s;
}

.remaining-chapters-list li:hover {
    color: #b0b0b0; /* Slightly lighter color on hover */
}


/* solutions answer */

.answer {
    font-size: 1.3rem;
    margin-top: -12px;
    font-weight:600;
}
.solution-answer {
    margin-top: 8px;
}
.solu_answer_p {
    font-weight: 200; /*default = 500*/
    font-size: 1.3rem;
}


/* CSS for the dropdown of info-items of subjects */

/* General Styles for Dropdown */
.info-item {
    position: relative;
}

.dropdown-content {
    display: none;
    position: relative;
    background-color: #222; /* Dark background color */
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); /* Shadow for depth */
    z-index: 1;
    margin-top: -22px;
    margin-bottom: 20px;
    padding: 10px;
    border-radius: 8px; 
    max-width: 350px; /* Adjust width if necessary */
    width: 100%;
    box-sizing: border-box;
    border: 2px solid #504d4d;
}

/* Table Styles */
.dropdown-content table {
    width: 100%;
    border-collapse: collapse;
    font-size: 1.03rem; /* Adjust font size */
    position: relative;
}
/* Add vertical bar (separator) after chapter number column */
.dropdown-content th:first-child::after, 
.dropdown-content td:first-child::after {
    content: '';
    position: absolute;
    top: 0;
    right: 0;
    height: 100%;
    width: 1.5px;
    background-color: #fff; /* Vertical line color */
}
/* Add a vertical bar (separator) between header columns */
.dropdown-content th:not(:last-child)::after {
    content: '';
    position: absolute;
    top: 0;
    right: 0;
    height: 100%;
    width: 1.5px;
    background-color: #fff; /* Separator color */
}

.dropdown-content th, 
.dropdown-content td {
    padding: 10px;
    text-align: left; /*This handles the tex-align property of the main text inside the column, like 1, 2, etc. and the corresponding chapter names*/
    border-bottom: 1.5px solid #ddd; /* Row separator */
    position: relative;
}
/* Header Styles */
.dropdown-content th {
    padding: 5px 12px; /*default = 4px 12px*/
    text-align: center;
    color: #fff; /* Text color */
    background-color: #ff4b5c; /* Header background color */
    position: relative;
    box-sizing: border-box;
}
/* Alternating row colors */
.dropdown-content tr:nth-child(even) {
    background-color: #333; /* default = #333 */
}

.dropdown-content tr:nth-child(odd) {
    background-color: #2b2b2b; /* default = #2b2b2b */
}
/* DIFFERENt colours of both headers */
.dropdown-content th:first-child {
    background-color: #ff4b5c;
}
.dropdown-content th:last-child {
    background-color: #238fd8;
}
.dropdown-content th {
    background-color: #ff4b5c; /* Header background color */
    color: #ffffff; /* Header text color */
    height: 50px;
    border-radius: 2px;
    font-size: 1.07rem;
}

.dropdown-content td a {
    color: #f1f1f1; /* Link color */
    text-decoration: none;
}
.dropdown-content td:nth-child(odd) { /*For the centering of the ch no. like, 1,2,3 etc. but not that of the chapters!*/
    text-align: center;
}
.dropdown-content td a:hover {
    text-decoration: underline;
    color: #d8d8d8; /* Hover link color */
}

/* Responsive Styles */
@media (max-width: 600px) {
    .dropdown-content table {
        font-size: 1rem; /* Smaller font size for smaller screens */
    }

    .dropdown-content th,
    .dropdown-content td {
        padding: 8px;
    }
}










