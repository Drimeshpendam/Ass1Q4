<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Store.aspx.cs" Inherits="Store" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Advertisements</title>
    <style>
        .advertisement-container {
            width: 60%;  /* 60% width of the screen */
            height: 80px;  /* Fixed height of 80 units */
            border: 5px solid #000;  /* Border width 5 units */
            margin: 0 auto;  /* Center horizontally */
            text-align: center;
            position: relative;
        }

        .advertisement {
            width: 100%;
            height: 100%;
            cursor: pointer;  /* Makes the image clickable */
        }
    </style>

    <script type="text/javascript">
        // Variables for advertisement weightage
        var amazonWeight = 50;
        var fabmartWeight = 40;

        // Function to randomly switch between the advertisements based on weightage
        function switchAdvertisement() {
            var totalWeight = amazonWeight + fabmartWeight;
            var randomValue = Math.random() * totalWeight;

            if (randomValue < amazonWeight) {
                // Set Amazon ad image and redirection
                document.getElementById('adImage').src = 'Images/1.jpg';  // Replace with your image path
                document.getElementById('adImage').onclick = function() { window.location.href = 'https://www.amazon.com'; };
            } else {
                // Set Fabmart ad image and redirection
                document.getElementById('adImage').src = 'Images/2.jpg';  // Replace with your image path
                document.getElementById('adImage').onclick = function() { window.location.href = 'https://www.fabmart.com'; };
            }
        }

        // Execute the advertisement switch when the page loads
        window.onload = function() {
            switchAdvertisement();
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="advertisement-container">
            <!-- Image control for the advertisements -->
            <img id="adImage" class="advertisement" />
        </div>
    </form>
</body>
</html>
