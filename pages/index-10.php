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
            // Fetch pricing plans from the database
            $sql = "SELECT * FROM plans";
            $result = mysqli_query($connection, $sql);

            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                    echo '<div class="col-lg-4 anima">';
                    echo '<div class="cnt-box cnt-pricing-table">';
                    echo '<div class="top-area">';
                    echo '<h2>' . $row["name"] . '</h2>';
                    echo '<div class="price"><span>' . $row["interest_rate"] . '</span>%</div>';
                    echo '<p>Trading Period ' . $row["trading_period"] . ' days</p>';
                    echo '</div>';
                    echo '<ul>';
                    echo '<li>Minimum deposit: $' . $row["min_deposit"] . '</li>';
                    echo '<li>Maximum deposit: $' . $row["max_deposit"] . '</li>';
                    echo '<li>ROI: ' . $row["roi"] . '%</li>';
                    echo '<li>No tax deductions</li>';
                    echo '<li>Financial planning session</li>';
                    echo '<li>Referral Commission: ' . $row["referral_commission"] . '%</li>';
                    echo '<li>Minimum withdrawal: $' . $row["min_withdrawal"] . '</li>';
                    echo '<li>Withdrawal starts after: ' . $row["withdrawal_period"] . ' days</li>';
                    echo '<li>Withdrawal charges: ' . ($row["withdrawal_charges"] ? 'YES' : 'NO') . '</li>';
                    echo '<li>Deposit Principal: ' . ($row["deposit_principal"] ? 'Included' : 'Excluded') . '</li>';
                    echo '</ul>';
                    echo '<div class="bottom-area">';
                    echo '<a class="btn btn-border btn-xs" href="index-13.htm?a=signup">Deposit now</a>';
                    echo '</div>';
                    echo '</div>';
                    echo '</div>';
                }
            } else {
                echo "No pricing plans found";
            }

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