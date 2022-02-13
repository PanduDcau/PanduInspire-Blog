<h2><?= $title ?></h2>

<?php foreach($posts as $post) : ?>
<h3><?php echo $post['Title'] ; ?></h3>


      <div class="alert alert-dismissible alert-primary">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <strong>Posted On: </strong><?php echo $post['Created_at']; ?> in  <strong><?php echo $post['Name']; ?></strong> 
      </div>
        
      <?php echo word_limiter($post['Body'], 60) ; ?>
      <br><br>
      <strong>Taglines :<?php echo $post['Tags']; ?></strong>
      <br>
      <strong>Author :<?php echo $post['Author']; ?></strong><br>
      <br>
      <p><a class ="btn btn-secondary btn-lg " href="<?php echo site_url('/posts/'.$post['Slug']); ?>">Read More </a></p>
      <br>
 

<?php endforeach; ?>
<div>
   <ul class="pagination pagination-lg">
    <?php echo $this->pagination->create_links(); ?>
   </ul>
</div>