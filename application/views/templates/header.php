<html>
<head>
<title>PanduInspiration</title>
<link rel= "stylesheet" href="https://bootswatch.com/4/darkly/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>vendor/css/style.css">
<script src="//cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
<style>
div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: left;
  width: 180px;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: auto;
}

div.desc {
  padding: 15px;
  text-align: center;
}

.pagination-links{
	margin:30px 0;
}

.pagination-links strong{
	padding: 8px 13px;
	margin:5px;
	background: #f4f4f4;
	border: 1px #ccc solid;
}

a.pagination-link{
	padding: 8px 13px;
	margin:5px;
	background: #f4f4f4;
	border: 1px #ccc solid;
}
.pagination {
  display: inline-block;
}


.pagination a.active {
  background-color: #4CAF50;
  color: white;
  border: 1px solid #4CAF50;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: black;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown:hover .dropdown-content {
  display: block;
}

.desc {
  padding: 15px;
  text-align: center;
}

.cat-delete{
	display:inline;
}

* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}


body, html {
  height: 100%;
  margin: 0;
  font-family: Helvetica;
}

.hero-image {
  background-image: linear-gradient(rgba(0, 0, 0, 0.5),
   rgba(0, 0, 0, 0.5)),
    url("https://images.squarespace-cdn.com/content/v1/59e689a5a803bbeb8a2d67c4/1509900226229-9AIFC0HU23LWDS2E4HHI/ke17ZwdGBToddI8pDm48kJRqFJ19D4P4EwsC9z3fiewUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYy7Mythp_T-mtop-vrsUOmeInPi9iDjx9w8K4ZfjXt2dkV64dCjSK7Zaaf7dwPYPO_gHf_vjqrS5WJoq1nmwotrP7cJNZlDXbgJNE9ef52e8w/iStock-509056728+researcher+in+lab+cropped.jpg?format=1500w");
  height: 50%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.hero-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
}

.hero-text button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 10px 25px;
  color: black;
  background-color: #ddd;
  text-align: center;
  cursor: pointer;
}

.hero-text button:hover {
  background-color: #555;
  color: white;
}

</style>


</head>
<body>

    <div class="container"> 
    <div class="bs-component">
              <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <a class="navbar-brand" href="#">PanduInspiration</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarColor02">
                  <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                    <a href= "<?php echo base_url(); ?>">Home &nbsp <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                    <a href= "<?php echo base_url(); ?>/about">About &nbsp</a>
                    </li>
                    <li class="nav-item">
                    <a href= "<?php echo base_url(); ?>/posts">Blog &nbsp</a>
                    </li>
                    <li class="nav-item">
                    <a href= "<?php echo base_url(); ?>/categories">Categories &nbsp</a>
                    </li>
                  </ul>
                  <ul class="nav navbar-nav navbar-right">
                  <?php if(!$this->session->userdata('logged_in')) : ?>
                    <li><a href="<?php echo base_url(); ?>users/login">&nbsp Login With Us | &nbsp</a></li>
                  <li><a href="<?php echo base_url(); ?>users/register"> &nbsp Register | &nbsp</a></li>
                  <?php endif; ?>

                  <?php if($this->session->userdata('logged_in')) : ?>
                  <li><a href="<?php echo base_url(); ?>posts/create"> &nbsp Create Posts  &nbsp</a></li>
                  <li><a href="<?php echo base_url(); ?>categories/create"> &nbsp Create Category  &nbsp</a></li>
                  <li><a href="<?php echo base_url(); ?>users/logout">&nbsp Login Out | &nbsp</a></li>
                  <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search">
                    <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                    <?php endif; ?>
                  </form>
                </div>
              </nav>
            </div>

<div class ='container'>
<!-- Flash Message -->
<?php if($this->session->flashdata('user_registered')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_registered').'</p>'; ?>
      <?php endif; ?>

      <?php if($this->session->flashdata('post_created')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_created').'</p>'; ?>
      <?php endif; ?>

      <?php if($this->session->flashdata('post_updated')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_updated').'</p>'; ?>
      <?php endif; ?>

      <?php if($this->session->flashdata('post_deleted')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_deleted').'</p>'; ?>
      <?php endif; ?>

      <?php if($this->session->flashdata('login_failed')): ?>
        <?php echo '<p class="alert alert-danger">'.$this->session->flashdata('login_failed').'</p>'; ?>
      <?php endif; ?>

      <?php if($this->session->flashdata('user_loggedin')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedin').'</p>'; ?>
      <?php endif; ?>

       <?php if($this->session->flashdata('user_loggedout')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedout').'</p>'; ?>
      <?php endif; ?>

      <?php if($this->session->flashdata('category_deleted')): ?>
        <?php echo '<p class="alert alert-success">'.$this->session->flashdata('category_deleted').'</p>'; ?>
      <?php endif; ?>

</div>
            
