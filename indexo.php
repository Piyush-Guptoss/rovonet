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



document.addEventListener('DOMContentLoaded', () => {
            const buttons = document.querySelectorAll('.nrbutton');

            buttons.forEach(button => {
                button.addEventListener('click', (event) => {
                    event.preventDefault();

                    // Get the target dropdown id from the button id
                    const buttonId = button.id; // e.g., 'br10thmcqnr1', 'br10thmcqnr2'
                    const targetId = `dropdown${buttonId.slice(-1)}`; // Convert 'br10thmcqnr1' to 'dropdown1'
                    const dropdown = document.getElementById(targetId);

                    // Toggle the dropdown visibility
                    if (dropdown.style.display === 'block') {
                        dropdown.style.display = 'none';
                        localStorage.setItem(buttonId, "false"); // Save state as closed
                    } else {
                        // First, hide any other open dropdowns
                        document.querySelectorAll('.dropdown-content').forEach(content => {
                            content.style.display = 'none';
                        });

                        // Show the current one
                        dropdown.style.display = 'block';
                        localStorage.setItem(buttonId, "true"); // Save state as open
                    }
                });
            });

            // Check saved state for each dropdown when the page loads
            document.querySelectorAll('.dropdown-content').forEach(dropdown => {
                const dropdownId = dropdown.getAttribute('id'); // e.g., 'dropdown1', 'dropdown2'
                const buttonId = `br10thmcqnr${dropdownId.replace('dropdown', '')}`; // Convert 'dropdown1' to 'br10thmcqnr1'
                if (localStorage.getItem(buttonId) === "true") {
                    dropdown.style.display = "block"; // Keep dropdown open if it was open before
                } else {
                    dropdown.style.display = "none"; // Default to closed
                }
            });
        });
