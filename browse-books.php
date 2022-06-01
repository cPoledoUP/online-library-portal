<?php
    $search_value = '';
    $current_page = 1;
    $offset = 0;
    $books_per_page = 6;

    // connect to db
    $conn = mysqli_connect('localhost','root', '', 'onlinelibraryportal');

    $search_entry = "";
    if (isset($_GET['book-search-btn'])) {
        $search_entry = mysqli_real_escape_string($conn, $_GET['book-search']);
        $search_value = htmlspecialchars($_GET['book-search']);
    }
    if (isset($_GET['page'])) {
        $current_page = $_GET['page'];
        $search_entry = mysqli_real_escape_string($conn, $_GET['book-search']);
        $search_value = htmlspecialchars($_GET['book-search']);
    }

    $offset = $offset + ($current_page - 1) * $books_per_page;
    
    // query from db
    $query = "SELECT BookID, Title, Overview, PubDate FROM book";
    if ($search_entry) {
        $query = $query." WHERE Title LIKE '%$search_entry%'";
    }
    $query = $query." ORDER BY DateAdded DESC";
    $result = mysqli_query($conn, $query);

    // storing to variable
    $books = mysqli_fetch_all($result, MYSQLI_ASSOC);
    mysqli_free_result($result);

    $num_of_results = count($books);
    $max_page = ceil($num_of_results / $books_per_page);
    $max_page = $max_page ? $max_page : 1;

    // further filter the returned results
    $query = $query." LIMIT $books_per_page OFFSET $offset";
    $result = mysqli_query($conn, $query);
    $books = mysqli_fetch_all($result, MYSQLI_ASSOC);
    mysqli_free_result($result);

    // include authors to $books array
    foreach ($books as &$book) {
        $bookID = $book['BookID'];
        $query = "SELECT Author FROM rl_book_author WHERE BookID=$bookID";
        $result = mysqli_query($conn, $query);
        $authors = mysqli_fetch_all($result, MYSQLI_ASSOC);
        mysqli_free_result($result);

        foreach ($authors as $author) {
            $book['Authors'][] = $author['Author'];
        }

        // include availability
        $query = "SELECT DateReturned FROM borrow WHERE BookID=$bookID";
        $result = mysqli_query($conn, $query);
        $returnDates = mysqli_fetch_all($result, MYSQLI_ASSOC);
        mysqli_free_result($result);

        if (!$returnDates) {
            $book['Availability'] = 'Available';
        } else {
            $date = array_pop($returnDates);
            if ($date['DateReturned']) {
                $book['Availability'] = 'Available';
            } else {
                $book['Availability'] = 'Not Available';
            }
        }
    }

    unset($book);

    mysqli_close($conn);
    // end of retrieving data from server, all needed data stored in $books array
?>

<?php include('templates/head.php') ?>
    <title>Browse Books</title>
    <link rel="stylesheet" href="css/browse-books-style.css">
<?php include('templates/nav.php') ?>

    <div class="main-content">
        <!-- Main page content -->
        <form class="search" action="<?php echo $_SERVER['PHP_SELF'] ?>" method="GET">
            <input type="text" size=30 placeholder="Search..." name="book-search" value="<?php echo $search_value; ?>"> 
            <button class="blue" name="book-search-btn"><i class="fa-solid fa-magnifying-glass"></i></button>
        </form>


        <form class="browse-nav" action="<?php echo $_SERVER['PHP_SELF'] ?>" method="GET">
            <p><b><?php echo $num_of_results ?> results | </b>page <?php echo $current_page ?> of <?php echo $max_page ?></p>
            <input type="hidden" name="book-search" value="<?php echo $search_value; ?>">
            <button class="btn clickable" name="page" value="<?php echo $current_page - 1; ?>" <?php echo $current_page <= 1 ? 'disabled': ''; ?>>Prev</button>
            <button class="btn clickable" name="page" value="<?php echo $current_page + 1; ?>" <?php echo $current_page >= $max_page ? 'disabled': ''; ?>>Next</button>
        </form>

        <div class="sort-filter">
            <div class="sort drop-menu-click">
                <input type="checkbox" id="sort">
                <label for="sort" class="unselectable"><i class="fa-solid fa-angle-right"></i><i class="fa-solid fa-angle-down"></i>Sort</label>
                <ul>
                    <li><a href="#">Name</a></li>
                    <li><a href="#">Author</a></li>
                    <li><a href="#">Publisher</a></li>
                    <li><a href="#">Release Date</a></li>
                    <li><a href="#">Popularity</a></li>
                </ul>
            </div>
            <div class="filter drop-menu-click">
                <input type="checkbox" id="filter">
                <label for="filter" class="unselectable"><i class="fa-solid fa-angle-right"></i><i class="fa-solid fa-angle-down"></i>Filter</label>
                <ul>
                    <li>
                        <div class="drop-menu-click">
                            <input type="checkbox" id="release-date">
                            <label for="release-date" class="unselectable"><i class="fa-solid fa-angle-right"></i><i class="fa-solid fa-angle-down"></i>Release date</label>
                            <ul>
                                <li><a href="#">Recent</a></li>
                                <li><a href="#">Past Year</a></li>
                                <li><a href="#">Previous Releases</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="drop-menu-click">
                            <input type="checkbox" id="genre">
                            <label for="genre" class="unselectable"><i class="fa-solid fa-angle-right"></i><i class="fa-solid fa-angle-down"></i>Genre</label>
                            <ul>
                                <li><a href="#">Nonfiction</a></li>
                                <li><a href="#">Fiction</a></li>
                                <li><a href="#">Science</a></li>
                                <li><a href="#">Business</a></li>
                                <li><a href="#">Romance</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="drop-menu-click">
                            <input type="checkbox" id="language">
                            <label for="language" class="unselectable"><i class="fa-solid fa-angle-right"></i><i class="fa-solid fa-angle-down"></i>Language</label>
                            <ul>
                                <li><a href="#">English</a></li>
                                <li><a href="#">Filipino</a></li>
                                <li><a href="#">Cebuano</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <div class="catalog">
            <?php foreach ($books as $book): ?>
                <div class="catalog-item">
                    <div>
                        <h3><?php echo htmlspecialchars($book['Title']); ?></h3>
                        <h5>by <?php foreach ($book['Authors'] as $author): echo htmlspecialchars($author).', '; endforeach;?> (<?php echo htmlspecialchars($book['PubDate']); ?>)</h5>
                        <p>
                            <?php echo htmlspecialchars($book['Overview']); ?>
                        </p>
                        <?php if ($book['Availability'] == 'Available'):?>
                            <button class="btn blue">
                        <?php else: ?>
                            <button class="btn red">
                        <?php endif; ?>
                                <?php echo htmlspecialchars($book['Availability']); ?>
                            </button>
                    </div>
                    <img src="img/icons/cover-page.png" alt="book icon" width="150px" height="200px">
                </div>
            <?php endforeach ?>
            <?php if (!$books): ?>
                <div class="catalog-item">
                    <h1>No results.</h1>
                </div>
            <?php endif ?>
        </div>

    </div>
    

<?php include('templates/footer.php') ?>