							
							 
    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $recipient_email = "info@auroraassets.org"; // Change to your website's email address
        $recipient_name = "Aurora Assets";
        $sender_email = $_POST["email"];
        $name = $_POST["name"];
        $loan_amount = $_POST["amount"];
        $message = $_POST["message"];
        $repayment_duration = $_POST["duration"];
        $loan_purpose = $_POST["purpose"];
        
        $headers = "From: $recipient_name <$recipient_email>\r\n";

        // Send email to website
        $subject_website = "New Loan Application";
        $message_website = "Loan Application Details:\n\n";
        $message_website .= "Name: $name\n";
        $message_website .= "Email: $sender_email\n";
        $message_website .= "Loan Amount: $loan_amount\n";
        $message_website .= "Repayment Duration: $repayment_duration\n";
        $message_website .= "Loan Purpose: $loan_purpose\n";
        $message_website .= "Additional Comments:\n$message";
        mail($recipient_email, $subject_website, $message_website, $headers);

        // Send confirmation email to sender
        $subject_sender = "Loan Application Received";
        $message_sender = "Dear $name,\n\n";
        $message_sender .= "Thank you for submitting your loan application for the amount of $loan_amount. We have received your application and will process it shortly.\n\n";
        $message_sender .= "Best regards,\nYour Loan Department";
        mail($sender_email, $subject_sender, $message_sender, $headers);

        // Redirect to success page after 5 seconds
        echo '<h2>Loan application submitted successfully.</h2>';
         echo '<h5>Redirecting...</h5>';
        echo '<script>
            setTimeout(function() {
                window.location.href = "dashboard";
            }, 3000); // 3000 milliseconds (3 seconds)
        </script>';
    }
    ?>