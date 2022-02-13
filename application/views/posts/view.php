<h2><?php echo $post['Title']; ?></h2>
<small class = "post-date">Posted On: <?php echo $post['Created_at']; ?></small>
<br>
<div class="post-body">
   <?php echo $post['Body']; ?>

</div>

<?php if($this->session->userdata('user_id') == $post['User_Id']): ?>
<hr>


<a class="btn btn-info" href="edit/<?php echo $post['Slug']; ?>">Edit</a>

<?php echo form_open('/posts/delete/'.$post['Id']); ?>

      <input type="submit" value="Delete" class="btn btn-danger">


</form>

<hr>
<?php endif; ?>

<h3>Comments</h3>
<?php if($comments) : ?>
	<?php foreach($comments as $comment) : ?>
		<div class="card">
			<h5><?php echo $comment['Body']; ?> [by <strong><?php echo $comment['Name']; ?></strong>]</h5>
		</div>
	<?php endforeach; ?>
<?php else : ?>
	<p>No Comments To Display</p>
<?php endif; ?>

<h3>Add Comment</h3>
<?php echo validation_errors(); ?>
<?php echo form_open('comments/create/'.$post['Id']); ?>
	<div class="form-group">
		<label>Name</label>
		<input type="text" name="name" class="form-control">
	</div>
	<div class="form-group">
		<label>Email</label>
		<input type="text" name="email" class="form-control">
	</div>
	<div class="form-group">
		<label>Body</label>
		<textarea name="body" class="form-control"></textarea>
	</div>
	<input type="hidden" name="slug" value="<?php echo $post['Slug']; ?>">
	<button class="btn btn-secondary" type="submit">Submit</button>
</form>



