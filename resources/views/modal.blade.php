<!--tags Add Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Tag</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
              <form action="{{url('/tags')}}" method="POST">
              @csrf
                   <select name="tagname" class="form-control" id="">
                    <option value="Technology">Technology</option>
                    <option value="Media">Media</option>
                    <option value="Jobs">Jobs</option>
                    <option value="Web dev">Web dev</option>
                    <option value="It">It</option>
                    <option value="News">News</option>
                    <option value="Weather">Weather</option>
                   </select>
                   
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" name="submit" class="btn btn-primary">Save changes</button>
        </form>
      </div>
    </div>
  </div>
</div>

<!--Posts Add Modal -->
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Post</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
              <form action="{{url('/posts')}}" method="POST" enctype="multipart/form-data">
              @csrf
                   <div class="mb-3">
                    <label for="">Title :</label>
                    <input type="text" name="title" class="form-control" placeholder="Enter post title" required>
                   </div>
                   <div class="mb-3">
                    <label for="description">Description :</label>
                    <textarea name="description" id="" rows="6" class="form-control">

                    </textarea>
                   </div>
                   <div class="mb-3">
                    <label for="image">Image :</label>
                    <input type="file" class="form-control" name="image" required>
                   </div>
                   <div class="mb-3">
                    <label for="">Post Tags :</label>
                    <select name="tagname[]" class="form-control js-example-basic-multiple" style="width: 20.75em;"  id="" multiple="multiple">
                      @foreach($categories as $tag)
                        <option value="{{$tag->id}}">{{$tag->tagname}}</option>
                      @endforeach
                   </select>
                   </div>
           
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" name="submit" class="btn btn-primary">Save changes</button>
        </form>
      </div>
    </div>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
<script>

$(document).ready(function() {
    $('.js-example-basic-multiple').select2();
});
</script>
