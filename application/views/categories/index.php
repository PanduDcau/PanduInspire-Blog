<h2><?= $title; ?></h2>
<ul class="list-group">
<?php foreach($categories as $category) : ?>
	<li class="list-group-item"><a href="<?php echo site_url('/categories/posts/'.$category['Id']); ?>">
	<?php echo $category['Name']; ?></a>
	<?php if($this->session->userdata('User_id') == $category['User_Id']): ?>
			<form class="cat-delete" action="categories/delete/<?php echo $category['Id']; ?>" method="POST">
				<input type="submit" class="btn-link text-danger" value="[X]">
			</form>
		<?php endif; ?>
	</li>
<?php endforeach; ?>
</ul>

<br>
<br>
<br>
<br>
<br>

<div class="hero-image">
  <div class="hero-text">
    <h1 style="font-size:50px">We Are Researchers</h1>
    <p>Let's Aware Everyone with our Knowledge</p>
    <?php echo form_open('users/register'); ?>
    <button type="submit" class="btn btn-info">Click Me To get Register</button>
    <?php echo form_close(); ?>

  </div>
</div>