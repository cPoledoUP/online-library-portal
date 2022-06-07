<?php
include('utils/index-data.php');
include('utils/login.php');
include('templates/head.php');
?>
<title>Homepage</title>
<link rel="stylesheet" href="css/homepage.css">
<?php include('templates/nav.php') ?>

<div class="main-content">
    <!-- Main page content -->
    <div class="card intro-div">
        <div class="card-content">
            <!-- Website Intro -->
            <h1 class="intro-title">Website Introduction</h1>
            <p2 align="justify">
                The Library’s website offers a variety of search tools and links to provide members of
                the Library community with 24-hour global access to all of the Library’s licensed
                databases and web-based services. Library users are offered a wide range of tools that
                expose them to the broadest possibilities; the Library also provides a number of
                services — many of them transparent to the user — to connect users with the material
                they desire regardless of where it may reside.
            </p2>
        </div>
    </div>

    <div class="card login-div">
        <?php
        if (!isset($_SESSION["staffID"])) {
            include("templates/logged-out.php");
        } else {
            include("templates/logged-in.php");
        }
        ?>
    </div>

    <div class="card recent-div">
        <!-- Recently Added -->
        <p1>Recently Added</p1>
        <div class="recent-list">
            <?php foreach ($recentBook as $recentB) {
                $recentTitle = $recentB['Title'];
                $recentPubDate = $recentB['PubDate'];
                $recentOverview = $recentB['Overview'];
                $recentID = $recentB['BookID'] ?>
                <div class="card-content">
                    <img src="img/icons/cover-page.png" alt="book icon" class="book-img">
                    <div class="book-text">
                        <a href="bookpage.php?ID=<?php echo htmlspecialchars($recentID) ?>">
                            <p2><?php echo htmlspecialchars($recentTitle); ?></p2>
                        </a>
                        <p> by
                            <?php
                            $glue = '';
                            foreach ($recentAuthor as $recentA) {
                                if ($recentB['BookID'] == $recentA['BookID']) {
                                    echo $glue . $recentA['Author'];
                                    $glue = ', ';
                                }
                            } ?>
                            (<?php echo $recentPubDate; ?>) </p>
                        <div class="overview">
                            <?php echo $recentOverview; ?>
                        </div>
                    </div>
                </div>
            <?php
            } ?>
        </div>
    </div>

    <div class="card top-div">
        <!-- Top Rated Books -->
        <p1>Top Rated Books</p1><br>
        <div class="top-rated-list">
            <?php foreach ($topRated as $top) {
                $topTitle = $top['Title']; ?>
                <div class="card-content">
                    <img src="img/icons/cover-page.png" alt="book icon" width="140px" height="190px" class="book-img">
                    <a href="bookpage.php?ID=<?php echo htmlspecialchars($top['BookID']); ?>">
                        <p> <?php echo htmlspecialchars($topTitle); ?> </p>
                    </a>
                </div>
            <?php
            } ?>
        </div>
    </div>

</div>


<?php include('templates/footer.php') ?>