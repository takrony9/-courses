<!DOCTYPE html>
<html>
  <head>
    <style type="text/css">
      body{
           background-color:  #ffffcc !important; 
      }
      .card{
         background-color: #ffffcc !important;  
      }
      h3{
        color: #000099 !important;
        font-weight: bold !important;
      }
      .card-header{
    display: flex;
    justify-content: center;
    color: #663300;
    font-size: 26px;
    font-weight: bold;
}
    </style>
    <title >Search and pagination using AJAX</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/placeholder-loading/dist/css/placeholder-loading.min.css">
  </head>
  <body>
    <br />
    <div class="container">
      <h3 align="center">Search and pagination using AJAX</h3>
      <br />
      <div class="card">
        <div class="card-header">COURSES</div>
        <div class="card-body">
          <div class="form-group">
            <input type="text" name="search_box" id="search_box" class="form-control" placeholder="Type your search here" />
          </div>
          <div class="table-responsive" id="courses">
            
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
<script>
  $(document).ready(function(){

    load_data(1);

    function load_data(page, query = '')
    {
      $.ajax({
        url:"fetch.php",
        method:"POST",
        data:{page:page, query:query},
        success:function(data)
        {
          $('#courses').html(data);
        }
      });
    }

    $(document).on('click', '.page-link', function(){
      var page = $(this).data('page_number');
      var query = $('#search_box').val();
      load_data(page, query);
    });

    $('#search_box').keyup(function(){
      var query = $('#search_box').val();
      load_data(1, query);
    });

  });
</script>