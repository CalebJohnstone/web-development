<?php
    include_once("COS216/Prac4/php/config.php");

    //show error details instead of an error 500 (internal server error) => take out when uploading
    error_reporting(E_ALL);
    ini_set('display_errors', 'On');

    //create a singleton called RedPillAPI
    class RedPillAPI{
        public $errorStatus = "success";

        public static function instance(){
            static $instance = null;

            if($instance === null){
                $instance = new RedPillAPI();
            }

            return $instance;
        }

        
        private function __construct(){
            //
        }

        public function __destruct(){
            //
        }
        
        //handle the user's request
        public function handleRequest(){
            if(isset($_POST["key"])){//use the API_key for: {update, get, rate} types
                if(!isset($_POST["type"])){
                    $this->errorStatus = "Error: did not provide the type parameter when using an API key";
                    return $this->response("");
                }
                else if($_POST["type"] === "update"){//sorting and filtering user_preferences
                    if(!isset($_POST["return"])){
                        $this->errorStatus = "Error: did not provide the return parameter when using the update type";
                        return $this->response("");
                    }
                    else if($_POST["return"][0] !== "NULL"){
                        $this->errorStatus = "Error: invalid value for the return parameter when using the update type";
                        return $this->response("");
                    }
                    else if(!isset($_POST["sort"])){
                        $this->errorStatus = "Error: did not provide the sort parameter when using the update type";
                        return $this->response("");
                    }
                    else if(!isset($_POST["filter"])){
                        $this->errorStatus = "Error: did not provide the filter parameter when using the update type";
                        return $this->response("");
                    }
                    else{
                        $this->setSorting($_POST["key"], $_POST["sort"]);
                        $this->setFiltering($_POST["key"], $_POST["filter"]);
    
                        $this->errorStatus = "success: sorting and filtering user preferences for " . $_POST["key"] . " updated";
                        return $this->response("");
                    }
                }//type=update
                else if($_POST["type"] === "get"){
                    if(!isset($_POST["return"])){
                        $this->errorStatus = "Error: did not provide the return parameter when using the get type";
                        return $this->response("");
                    }
                    else if($_POST["return"][0] === "userPreferences"){
                        return $this->response($this->getUserPreferences($_POST["key"]));
                    }
                    else if($_POST["return"][0] === "userRating"){
                        if(!isset($_POST["title"])){
                            $this->errorStatus = "Error: did not provide the title parameter when using the get type to get the user rating";
                            return $this->response("");
                        }//trending, newReleases and featured
                        else if($_POST["title"] === "trending" || $_POST["title"] === "newReleases" || $_POST["title"] === "featured"){
                            if(!isset($_POST["id"])){
                                $this->errorStatus = "Error: did not provide the id parameter when using the get type to get the user rating";
                                return $this->response("");  
                            }
                            else{
                                return $this->response(array(
                                    "user_rating" => $this->getUserRating($_POST["key"], $_POST["title"], $_POST["id"])
                                ));
                            }
                        }
                        else{
                            $this->errorStatus = "Error: invalid title parameter value when using the get type to get the user rating";
                            return $this->response("");
                        }
                    }
                    else{
                        $this->errorStatus = "Error: invalid return parameter value when using the get type";
                        return $this->response("");
                    }
                }//type=get
                else if($_POST["type"] === "rate"){
                    if(!isset($_POST["return"])){
                        $this->errorStatus = "Error: did not provide the return parameter when using the rate type";
                        return $this->response("");
                    }
                    else if($_POST["return"][0] !== "NULL"){
                        $this->errorStatus = "Error: invalid value for the return parameter when using the rate type";
                        return $this->response("");
                    }
                    else{
                        $parameters = array("title", "id", "value");

                        foreach($parameters as $parameter){
                            if(!isset($_POST[$parameter])){
                                $this->errorStatus = "Error: did not provide the $parameter parameter when using the rate type";
                                return $this->response("");
                            }
                        }

                        if($_POST["title"] === "trending" || $_POST["title"] === "newReleases" || $_POST["title"] === "featured"){
                            return $this->response($this->setUserRating($_POST["key"], $_POST["title"], $_POST["id"], $_POST["value"]));
                        }
                        else{
                            $this->errorStatus = "Error: invalid value for the title parameter when using the rate type";
                            return $this->response(""); 
                        }                        
                    }
                }//type=rate
                else if($_POST["type"] === "track"){
                    if(!isset($_POST["title"])){//page title => no sure yet if only the featured page <=
                        
                    }   
                    else if(!isset($_POST["id"])){//song id

                    }
                    else{
                        return $this->response($this->getUserProgress($_POST["key"], $_POST["title"], $_POST["id"]));
                    }
                }//type=track
                else{
                    $this->errorStatus = "Error: invalid value for the type parameter when using the API key";
                    return $this->response("");
                }
            }
            else{
                if(isset($_POST["type"])){
                    if($_POST["type"] === "info"){
                        if(isset($_POST["title"])){    
                            if($_POST["title"] === "trending"){//Spotify
                                if(!isset($_POST["return"])){
                                    $this->errorStatus = "Error: did not make use of the return parameter when using the trending page";
                                    return $this->response("");  
                                }
                                else if($_POST["return"][0] === "*"){
                                    return $this->response($this->trendingPage());
                                }
                                else{
                                    $this->errorStatus = "Error: invalid value for return parameter when using the trending page";
                                    return $this->response("");
                                }                                
                            }
                            else if($_POST["title"] === "newReleases"){//Deezer
                                if(!isset($_POST["return"])){
                                    $this->errorStatus = "Error: did not make use of the return parameter when using the New Releases page";
                                    return $this->response("");  
                                }
                                else if($_POST["return"][0] === "*"){ 
                                    return $this->response($this->newReleasesPage());
                                }
                                else{
                                    $this->errorStatus = "Error: invalid value for return parameter when using the New Releases page";
                                    return $this->response(""); 
                                }                                
                            }
                            else if($_POST["title"] === "topRated"){//from the other pages
                                if(!isset($_POST["return"])){
                                    $this->errorStatus = "Error: did not make use of the return parameter when using the Top Rated page";
                                    return $this->response("");  
                                }
                                else if($_POST["return"][0] === "*"){ 
                                    return $this->response($this->topRatedPage());
                                }
                                else{
                                    $this->errorStatus = "Error: invalid value for return parameter when using the Top Rated page";
                                    return $this->response(""); 
                                }   
                            }      
                            else if($_POST["title"] === "featured"){//Deezer
                                if(!isset($_POST["return"])){
                                    $this->errorStatus = "Error: did not make use of the return parameter when using the Featured page";
                                    return $this->response("");  
                                }
                                else if($_POST["return"][0] === "*"){ 
                                    return $this->response($this->featuredPage());
                                }
                                else{
                                    $this->errorStatus = "Error: invalid value for return parameter when using the Featured page";
                                    return $this->response(""); 
                                }                                   
                            }    
                            else if($_POST["title"] === "calendar"){//Spotify
                                if(!isset($_POST["return"])){
                                    $this->errorStatus = "Error: did not make use of the return parameter when using the Calendar page";
                                    return $this->response("");  
                                }
                                else if($_POST["return"][0] === "*"){ 
                                    return $this->response($this->trendingPage());
                                }
                                else{
                                    $this->errorStatus = "Error: invalid value for return parameter when using the Calendar page";
                                    return $this->response(""); 
                                }   
                            }
                            else{
                                $this->errorStatus = "Error: invalid value for the title parameter. Provide a valid page title";
                                return $this->response(""); 
                            }                     
                        }
                        else{
                            $this->errorStatus = "Error: did not provide the title parameter when using the info type";
                            return $this->response(""); 
                        }
                    }//type=info
                    else if($_POST["type"] === "login"){
                        if(!isset($_POST["email"])){
                            $this->errorStatus = "Error: did not provide an email when logging in";
                            return $this->response(""); 
                        }
                        else if(!isset($_POST["password"])){
                            $this->errorStatus = "Error: did not provide a password when logging in";
                            return $this->response("");   
                        }
                        else if(!isset($_POST["return"])){
                            $this->errorStatus = "Error: did not make use of the return parameter when logging in";
                            return $this->response("");
                        }
                        else if($_POST["return"][0] !== "key"){
                            $this->errorStatus = "Error: invalid value for the return parameter when logging in";
                            return $this->response("");
                        }
                        else{//using login type correctly
                            return $this->response($this->userLogin($_POST["email"], $_POST["password"]));
                        }
                    }//type=login
                    else{
                        $this->errorStatus = "Error: invalid value for type parameter when not using an API key";
                        return $this->response("");
                    }
                }
                else{
                    $this->errorStatus = "Error: did not specify the type parameter";
                    return $this->response("");
                }
            }
        }   
        
        private function trendingPage(){        
            //make API request to Spotify for the "Top Hits South Africa" playlist

            //get the token
            $token = $this->getSpotifyToken()->access_token;

            //get the "Top Hits South Africa" playlist tracks
            $tracks = $this->getTopHitsTracks($token)["items"];
            
            //database
            $db = Database::instance();  

            //set all rankings to zero --> circular queue bit=0 ==> only "saved" from arm by bit=1 
            $db->setZeroRankings("trending_song");

            $songsArray = array();

            //for each song
            for($i = 0; $i < count($tracks); $i++){
                $currentTrack = $tracks[$i]["track"];

                //store the needed info
                $track = new stdClass();
                $track->id = $currentTrack["id"];

                //add to trending_song if not in the table already
                if($db->getSong("trending_song", $track->id) === null){
                    $track->title = $currentTrack["name"];

                    //get the track info
                    $trackObject = $this->getTrackObject($token, $track->id);

                    $track->album = $trackObject["album"]["name"];

                    if(!isset($trackObject["album"]["images"][0]["url"])){
                        $track->albumImageURL = "images/notAvailable.jpg";
                    }
                    else{
                        $track->albumImageURL = $trackObject["album"]["images"][0]["url"]; 
                    }
                       
                    $track->releaseDate = $trackObject["album"]["release_date"];
                    $track->artistURL = $trackObject["artists"][0]["href"];

                    $track->genre = "";

                    //get the artist info
                    $artistObject = $this->getArtistObject($token, $track->artistURL);
        
                    $track->artist = $artistObject["name"];

                    if(!isset($artistObject["images"][0]["url"])){
                        $track->artistImageURL = "images/notAvailable.jpg";
                    }
                    else{
                        $track->artistImageURL = $artistObject["images"][0]["url"];
                    }                        

                    $genres = $artistObject["genres"];

                    if(count($genres) === 0){
                        $track->genre = "";
                    }
                    else{
                        for($a = 0; ($a < count($genres)-1) && ($a < 3); $a++){
                            $track->genre .= $genres[$a] . ", ";
                        }

                        $track->genre .= $genres[count($genres)-1];
                    }

                    //insert into the trending_song table
                    $db->addTrendingSong($track);
                }//if new trending song

                //set the ranking
                $db->setRanking("trending_song", $track->id, $i+1);

                //get the (already | newly) inserted song
                $song = $db->getSong("trending_song", $track->id);
                array_push($songsArray, $song);
            }//for each song

            //delete all of the zero ranks
            $db->deleteZeroRanks("trending_song");
            
            return $songsArray;//here
        }

        private function topRatedPage(){        
            //find the top 20 rated songs from the trending, newReleases and featured pages
            $db = Database::instance();
            $topRatedSongs = $db->getTopRatedSongs();

            $songsArray = array();

            while($row = $topRatedSongs->fetch_assoc()){
                //get the song info using the table_name, id
                $song = $db->getSongWithRating($row["table_name"], $row["id"]);//x

                //return $song;

                //add this song to the array of songs
                array_push($songsArray, $song);
            }

            //sort according to the song rating, title
            $rating = array_column($songsArray, "rating");
            $title = array_column($songsArray, "title");

            //return "number of ratings=" . count($rating). ", number of titles=" . count($title);

            array_multisort($rating, SORT_DESC, $title, SORT_ASC, SORT_NATURAL|SORT_FLAG_CASE, $songsArray);

            return $songsArray;
        }

        private function getSpotifyToken(){
            // create curl resource
            $ch = curl_init();

            // set url
            curl_setopt($ch, CURLOPT_URL, "https://accounts.spotify.com/api/token");

            $request_headers = array(
                "Content-Type:" . "application/x-www-form-urlencoded",
                "Authorization:" . "Basic ZjVmYjAxMzRlMDI4NDA5NzkyN2ZjYWNhNDEzZTIyNmM6ZDU3YzRlMGFkYWIyNGU5YzgwNWNkYjA4YzJlOWQyMDY="
            );

            //return the transfer as a string
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_HTTPHEADER, $request_headers);
            curl_setopt($ch, CURLOPT_PROXY, "phugeet.cs.up.ac.za:3128");

            $username = "u19030119";
            $password = "B0r3T353X20";
            curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_ANY);
            curl_setopt($ch, CURLOPT_USERPWD, "$username:$password");

            // Set request method to POST
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');

            $parameters = "grant_type=client_credentials";
            curl_setopt($ch, CURLOPT_POSTFIELDS, $parameters);

            // $output contains the output string
            $output = curl_exec($ch);

            //$output = false;

            if($output === false){
                $this->errorStatus = "Error: Spotify API token unavailable";
                return;
            }

            // close curl resource to free up system resources
            curl_close($ch);  

            return json_decode($output);
        }

        private function spotifyRequest($token, $url){
            // create curl resource
            $ch = curl_init();

            // set url
            curl_setopt($ch, CURLOPT_URL, $url);

            $request_headers = array(
                "Authorization:" . "Bearer ".$token
            );

            //return the transfer as a string
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_HTTPHEADER, $request_headers);
            curl_setopt($ch, CURLOPT_PROXY, "phugeet.cs.up.ac.za:3128");

            $username = "u19030119";
            $password = "B0r3T353X20";
            curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_ANY);
            curl_setopt($ch, CURLOPT_USERPWD, "$username:$password");

            // Set request method to GET
            curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');

            // $output contains the output string
            $output = curl_exec($ch);

            // close curl resource to free up system resources
            curl_close($ch);  

            return json_decode($output, true);
        }

        private function getTopHitsTracks($token){
            return $this->spotifyRequest($token, "https://api.spotify.com/v1/playlists/37i9dQZF1DWWW9iyuOPGds/tracks");
        }

        private function getNewMusicTracks($token){
            return $this->spotifyRequest($token, "https://api.spotify.com/v1/playlists/37i9dQZF1DXd0uyASpbU8w/tracks");
        }

        private function getTrackObject($token, $trackID){
            return $this->spotifyRequest($token, "https://api.spotify.com/v1/tracks/".$trackID);
        }

        private function getArtistObject($token, $artistURL){
            return $this->spotifyRequest($token, $artistURL);
        }

        private function newReleasesPage(){
            //get the top tracks
            $tracks = $this->getDeezerChartTracks();
            $data =  $tracks["data"];

            //database
            $db = Database::instance(); 
            $db->setZeroRankings("newRelease_song"); 

            //songsArray
            $songsArray = array();

            //for each song
            for($i = 0; $i < count($data); $i++){
                $currentTrack = $data[$i];

                $track = new stdClass();
                $track->id = $currentTrack["id"];

                if($db->getSong("newRelease_song", $track->id) === null){
                    $track->title = $currentTrack["title"];
                    $track->artist = $currentTrack["artist"]["name"];

                    $albumID = $currentTrack["album"]["id"];
    
                    //get the album info
                    $albumObject = $this->getDeezerAlbumObject($albumID);
    
                    $track->genre = "";
    
                    $genreArray = $albumObject["genres"]["data"];
    
                    if(count($genreArray) === 1){
                        $track->genre = $genreArray[0]["name"];
                    }
                    else{
                        for($j = 0; $j < count($genreArray) - 1; $j++){
                            $track->genre .= $genreArray[$j]["name"] . ", ";
                        }
    
                        $track->genre .= $genreArray[count($genreArray)-1]["name"];
                    }
    
                    $track->label = $albumObject["label"];
    
                    //images
                    if(!isset($currentTrack["artist"]["picture_big"])){
                        $track->artistImageURL = "images/notAvailable.jpg";
                    }
                    else{
                        $track->artistImageURL = $currentTrack["artist"]["picture_big"];
                    }

                    if(!isset($currentTrack["album"]["cover_big"])){
                        $track->albumImageURL = "images/notAvailable.jpg";
                    }
                    else{
                        $track->albumImageURL = $currentTrack["album"]["cover_big"];
                    }                  
                        
                    //review
                    //get the comment
                    $commentsObject = $this->getDeezerComment($albumID);
    
                    $track->review = "";
    
                    if(count($commentsObject["data"]) > 0){
                        $track->review = $commentsObject["data"][0]["author"]["name"].": ".$commentsObject["data"][0]["text"];
                    }
                    else{
                        $track->review = "No reviews yet";
                    }
    
                    //P4 T4
                    $track->releaseDate = $albumObject["release_date"];
                    $track->album = $albumObject["title"];

                    //insert into the trending_song table
                    $db->addNewReleaseSong($track);
              }//else

              //set the ranking
              $db->setRanking("newRelease_song", $track->id, $i+1);

              $song = $db->getSong("newRelease_song", $track->id);
              array_push($songsArray, $song);
            }//for each song

            //delete all of the zero ranks
            $db->deleteZeroRanks("newRelease_song");

            return $songsArray;
        }

        private function featuredPage(){
            //get the top tracks
            $topPlaylistsObject = $this->getDeezerChartPlaylists();
            $data =  $topPlaylistsObject["data"];

            //database
            $db = Database::instance();  
            $db->setZeroRankings("featured_song"); 

            //songsArray
            $songsArray = array();

            //for each song
            for($i = 0; $i < count($data); $i++){
                $topPlaylist = $data[$i];

                $playlistTracksURL = "https://api.deezer.com/playlist/" . $topPlaylist["id"];
                $tracksObject = $this->getPlaylistTracks($playlistTracksURL);
                $trackArray = $tracksObject["tracks"]["data"];
                $currentTrack = $trackArray[floor(count($trackArray)/5)];

                $track = new stdClass();
                $track->id = $currentTrack["id"];

                //check for duplicates
                $x = 0;

                while(true){
                    $duplicate = false;

                    for($j = 0; $j < count($songsArray); $j++){
                        if(strcmp(array_column($songsArray, "id")[$j], $track->id) === 0){
                            $duplicate = true;
                            break;
                        }
                    }

                    if($duplicate){
                        if($x === count($trackArray) - 1){
                            break;
                        }

                        $currentTrack = $trackArray[$x++];
                        $track->id = $currentTrack["id"];
                    }
                    else{
                        break;
                    }
                }

                if($db->getSong("featured_song", $track->id) === null){
                    $track->title = $currentTrack["title"];
                    $track->artist = $currentTrack["artist"]["name"];
                    
                    $albumID = $currentTrack["album"]["id"];
    
                    //get the album info
                    $albumObject = $this->getDeezerAlbumObject($albumID);

                    if(!isset($albumObject["error"])){
                        $track->genre = "";

                        $genreArray = $albumObject["genres"]["data"];

                        if(count($genreArray) == 1){
                            $track->genre = $genreArray[0]["name"];
                        }
                        else{
                            for($a = 0; $a < count($genreArray) - 1; $a++){
                                $track->genre .= $genreArray[$a]["name"].", ";
                            }

                            $track->genre .= $genreArray[count($genreArray)-1]["name"];
                        }

                        $track->releaseDate = $albumObject["release_date"];
                    }
                    
                    $duration = $currentTrack["duration"];
                    $minutes = floor($duration/60);
                    $seconds = $duration % 6;

                    $track->duration = $minutes.":";

                    if($seconds < 10){
                        $track->duration .= "0";
                    }

                    $track->duration .= $seconds;
    
                    //images
                    $artistID = $currentTrack["artist"]["id"];
                    $artistObject = $this->getDeezerArtistObject($artistID);

                    //images
                    if(!isset($artistObject["picture_big"])){
                        $track->artistImageURL = "images/notAvailable.jpg";
                    }
                    else{
                        $track->artistImageURL = $artistObject["picture_big"];
                    }

                    if(!isset($currentTrack["album"]["cover_big"])){
                        $track->albumImageURL = "images/notAvailable.jpg";
                    }
                    else{
                        $track->albumImageURL = $currentTrack["album"]["cover_big"];
                    }                  
                       
                    $track->preview = $currentTrack["preview"];
    
                    //P4 T4
                    $track->album = $albumObject["title"];//

                    //insert into the featured_song table
                    $db->addFeaturedSong($track);
                }//else

                //set the ranking
                $db->setRanking("featured_song", $track->id, $i+1);

                $song = $db->getSong("featured_song", $track->id);
                array_push($songsArray, $song);
            }//for each song

            //delete all of the zero ranks
            $db->deleteZeroRanks("featured_song");

            return $songsArray;
        }

        private function deezerRequest($url){
            // create curl resource
            $ch = curl_init();

            // set url
            curl_setopt($ch, CURLOPT_URL, $url);

            //return the transfer as a string
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

            // Set request method to GET
            curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');
            curl_setopt($ch, CURLOPT_PROXY, "phugeet.cs.up.ac.za:3128");

            $username = "u19030119";
            $password = "B0r3T353X20";
            curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_ANY);
            curl_setopt($ch, CURLOPT_USERPWD, "$username:$password");

            // $output contains the output string
            $output = curl_exec($ch);

            // close curl resource to free up system resources
            curl_close($ch);  

            return json_decode($output, true);
        }

        private function getDeezerArtistObject($artistID){
            return $this->deezerRequest("https://api.deezer.com/artist/".$artistID);   
        }

        private function getPlaylistTracks($playlistTracksURL){
            return $this->deezerRequest($playlistTracksURL);
        }

        private function getDeezerChartPlaylists(){
            return $this->deezerRequest("https://api.deezer.com/chart/0/playlists");
        }

        private function getDeezerChartTracks(){
            return $this->deezerRequest("https://api.deezer.com/chart/0/tracks");
        }

        private function getDeezerAlbumObject($albumID){
            return $this->deezerRequest("https://api.deezer.com/album/".$albumID);
        }

        private function getDeezerComment($albumID){
            return $this->deezerRequest("https://api.deezer.com/album/".$albumID."/comments");
        }

        //type=login
        private function userLogin($email, $password){
            $db = Database::instance();

            if($db->UserExists($email)){
                if($db->correctPassword($email, $password)){
                    return $db->getUserKey($email);
                }
            }

            $this->errorStatus = "Error";
            return "Invalid login details";
        }

        //type=update
        private function setSorting($key, $sort){
            $db = Database::instance();
            $userID = $db->getUserID($key);

            if($sort == "NULL"){
                $db->deleteUserPreference($userID, "sort");
            }
            else{
                $db->setUserPreference($userID, "sort", $sort);
            }
        }

        private function setFiltering($key, $filter){
            $db = Database::instance();
            $userID = $db->getUserID($key);

            $filterArray = explode(', ', str_replace(";", "&", $filter));

            $genre = substr($filterArray[0], strpos($filterArray[0], "=") + 1);
            $year = substr($filterArray[1], strpos($filterArray[1], "=") + 1, (strlen($filterArray[1]) - 2) - strpos($filterArray[1], "="));

            if($genre == "NULL"){
                $db->deleteUserPreference($userID, "filterGenre");
            }
            else{
                $db->setUserPreference($userID, "filterGenre", $genre);
            }

            if($year == "NULL"){
                $db->deleteUserPreference($userID, "filterYear");
            }
            else{
                $db->setUserPreference($userID, "filterYear", $year);
            }
        }

        //type=get
        private function getUserPreferences($key){
            $db = Database::instance();
            $userID = $db->getUserID($key);

            $preferenceArray = array(
                "sort" => $db->getUserPreference($userID, "sort"),
                "filter" => array(
                    "genre" => $db->getUserPreference($userID, "filterGenre"),
                    "year" => $db->getUserPreference($userID, "filterYear")
                )
            );

            return $preferenceArray;
        }

        //type=rate
        private function setUserRating($key, $title, $id, $value){
            $db = Database::instance();

            if($db->validAPIkey($key)){                
                $table = $this->getTableName($title);
                return $db->setUserRating($key, $table, $id, $value);
            }
            else{
                $this->errorStatus = "Error: you attempted to set the rating for a user with the invalid API key: " . $key;
                return "";
            }
        }

        private function getTableName($title){
            //determine the table name from the title of the page
            if(strcmp($title, "newReleases") === 0){
                return "newRelease_song";
            }
            else{
                return $title."_song";//{trending, featured}
            }
        }

        private function getUserRating($key, $title, $id){
            $db = Database::instance();

            if($db->validAPIkey($key)){  
                $table = $this->getTableName($title);
                $userID = $db->getUserID($key);

                return $db->getUserRating($userID, $table, $id);
            }
            else{
                $this->errorStatus = "Error: you attempted to get the rating for a user with the invalid API key: " . $key;
                return "";
            }
        }

        //HOMEWORK ASSIGNMENT
        private function getUserProgress($key, $title, $id){
            //return the place where the user is in the song -> return 0 if they have not pressed play

            //check if the song actually exists

            //return the progress
        }

        //structure the response
        private function response($data){//here
            $response = array(
                "status" => $this->errorStatus,
                "timestamp" => time(),
                "data" => $data
            );    
            
            $value = json_encode($response);

            return $value;
        }
    }//RedPillAPI class

    //use the class and handle the request sent by the client
    $api = RedPillAPI::instance();
    echo $api->handleRequest();
?>