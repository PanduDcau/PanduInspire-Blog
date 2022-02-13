<h2><?= $title ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open('posts/update'); ?>
<form>
    <input type="hidden" name="id" value="<?php echo $post['Id']; ?>">
  <div class="form-group">
    <label>Title</label>
    <input type="text" class="form-control" name="title" placeholder="Add Title" value="<?php echo $post['Title']; ?>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your Content with anyone else.</small>
  </div>
  <div class="form-group">
      <label for="exampleTextarea">Add Taglines</label>
      <textarea class="form-control" name="tags" rows="1"><?php echo $post['Tags']; ?></textarea>
    </div>
  <div class="form-group">
    <label>Body</label>
    <textarea id="editor1" class="form-control" name="body" rows="8" placeholder="Add Body"><?php echo $post['Body']; ?></textarea>
  </div>
  <div class="form-group">
<label>Category</label>
  <select name='category_id' class="form-control">
    <?php foreach($categories as $category): ?>
    <option value="<?php echo $category['Id']; ?>"><?php echo $category['Name']; ?> </option>
    <?php endforeach; ?>
  </select>
  </div>
  
  <div class="form-group">
      <label>Author Credentials</label>
      <input type="text" class="form-control" name="author" aria-describedby="emailHelp" placeholder="Author Credentials" value="<?php echo $post['Author']; ?>">
      <small id="emailHelp" class="form-text text-muted">We'll never share your Author credentials with anyone else.</small>
    </div>

  <button type="submit" class="btn btn-primary">Submit</button>
</form>