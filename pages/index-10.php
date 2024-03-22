<?php include "header.php" ?>


<header class="header-image ken-burn-center light" data-parallax="true" data-natural-height="500"
    data-natural-width="1920" data-bleed="0" data-image-src="media/hd-wide-5.jpg" data-offset="0">
    <div class="container">
        <h1> ASSET PRICING PLANS</h1>
        <h2>The simplest way to invest in crypto</h2>
    </div>
</header>
<main>
    <section class="section-base section-color">
        <div class="container">
            <div class="row" data-anima="fade-bottom" data-timeline="asc" data-time="2000">
                <?php

// Include the configuration file
$config = include 'short.php';


// Create a database connection using MySQLi
$connection = mysqli_connect($config['DB_HOST'], $config['DB_USERNAME'], $config['DB_PASSWORD'], $config['DB_DATABASE']);

// Check connection
if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

// Fetch pricing plans from the database
$sql = "SELECT * FROM plans";
$result = mysqli_query($connection, $sql);

if (!$result) {
    // Query failed, display error and exit
    die("Error executing query: " . mysqli_error($connection));
}

echo '<section class="section-base section-color">';
echo '<div class="container">';
echo '<div class="row" data-anima="fade-bottom" data-timeline="asc" data-time="2000">';

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        echo '<div class="col-lg-3 anima">';
        echo '<div class="cnt-box cnt-pricing-table">';
        echo '<div class="top-area">';
        echo '<h2>' . $row["name"] . '</h2>';
        echo '<div class="price">$<span>' . $row["price"] . '</span></div>';
        echo '<p>Duration: ' . $row["expiration"] . '  </p>';
        echo '</div>';
        echo '<ul style="font-size: 12px;">';
        echo '<li><b>Minimum deposit:</b> $' . $row["min_price"] . '</li>';
        echo '<li><b>Maximum deposit:</b> $' . $row["max_price"] . '</li>'; 
        echo '<li><b>Minimum Return:</b> $' . $row["minr"] . '</li>';
        echo '<li><b>Maximum Return:</b> $' . $row["maxr"] . '</li>';
        echo '<li><b>Gift Bonus:</b> ' . $row["gift"] . ' </li>';
        echo '</ul>';
        echo '<div class="bottom-area">';
        echo '<a class="btn btn-border btn-xs" href="../register">Deposit now</a>';
        echo '</div>';
        echo '</div>';
        echo '</div>';
    }
} else {
    echo "No pricing plans found";
}

echo '</div>';
echo '</div>';
echo '</section>';

// Close database connection
mysqli_close($connection);
?>

            </div>
        </div>
    </section>
    <!--<section class="section-base section-color">
        <div class="container">
            <div class="row" data-anima="fade-bottom" data-timeline="asc" data-time="2000">
                <div class="col-lg-4 anima">
                    <div class="cnt-box cnt-pricing-table">
                        <div class="top-area">
                            <h2>Epic Gold PLAN</h2>
                            <div class="price"><span>1.7</span>%</div>
                            <p>Trading Period 6days</p>
                        </div>
                        <ul>
                            <li>Minimum deposit: $200.00</li>
                            <li>Maximum deposit: $100,000.00</li>
                            <li>ROI: 10.2%</li>
                            <li>No tax deductions</li>
                            <li>Financial planning session</li>
                            <li>Referral Commission: 10%</li>
                            <li>Minimum withdrawal : $10</li>
                            <li>Withdrawal starts after : 6days</li>
                            <li>withdrawal charges: NO</li>
                            <li>Deposit Principal: Included</li>
                        </ul>
                        <div class="bottom-area">
                            <a class="btn btn-border btn-xs" href="index-13.htm?a=signup">Deposit now</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 anima">
                    <div class="cnt-box cnt-pricing-table">
                        <div class="top-area">
                            <h2>Epic Silver PLAN</h2>
                            <div class="price"><span>2</span>%</div>
                            <p>Trading Period 6days</p>
                        </div>
                        <ul>
                            <li>Minimum deposit: $1000.00</li>
                            <li>Maximum deposit: $Unlimited</li>
                            <li>ROI: 12%</li>
                            <li>No tax deductions</li>
                            <li>Financial planning session</li>
                            <li>Referral Commission: 10%</li>
                            <li>Minimum withdrawal : $10</li>
                            <li>Withdrawal starts after : 6days</li>
                            <li>withdrawal charges: NO</li>
                            <li>Deposit Principal: Included</li>
                        </ul>
                        <div class="bottom-area">
                            <a class="btn btn-border btn-xs" href="index-13.htm?a=signup">Deposit now</a>
                        </div>
                    </div>
                </div>
                <div class="cnt-box cnt-pricing-table">
                    <div class="top-area">
                        <h2>Compounding PLAN</h2>
                        <div class="price"><span>2.2</span>%</div>
                        <p>Trading Period 20days</p>
                    </div>
                    <ul>
                        <li>Minimum deposit: $50,000.00</li>
                        <li>Maximum deposit: $Unlimited</li>
                        <li>ROI: 44%</li>
                        <li>No tax deductions</li>
                        <li>Financial planning session</li>
                        <li>Referral Commission: 10%</li>
                        <li>Minimum withdrawal : $10</li>
                        <li>Withdrawal starts after : 20days</li>
                        <li>withdrawal charges: NO</li>
                        <li>Deposit Principal: Included</li>
                    </ul>
                    <div class="bottom-area">
                        <a class="btn btn-border btn-xs" href="index-13.htm?a=signup">Deposit now</a>
                    </div>
                </div>
            </div>

        </div>
    </section>-->
</main>
<?php include "footer.php" ?>