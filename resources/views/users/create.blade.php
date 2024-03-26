@extends('layouts.app')

@section('content')
<div class="container mt-3">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Signup Form</h5>
          <form action="{{ route('users.store')}}" id="userForm" name="userForm" method="post">
            <div class="mb-3">
              <label for="firstName" class="form-label">First Name</label>
              <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter your first name">
              <p></p>
            </div>
            <div class="mb-3">
              <label for="lastName" class="form-label">Last Name</label>
              <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter your last name">
              <p></p>
            </div>
            <div class="mb-3">
              <label for="email" class="form-label">Email address</label>
              <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email">
              <p></p>
            </div>
            <div class="mb-3">
              <label for="password" class="form-label">Password</label>
              <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password">
              <p></p>
            </div>
            <div class="mb-3">
              <label for="phone" class="form-label">Phone Number</label>
              <input type="tel" class="form-control" id="phone" name="phone" placeholder="Enter your phone number">
              <p></p>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>


@endsection
@section('customJs')
<script>
		$('#userForm').submit(function(event) {
    event.preventDefault();
    let element = $(this);
    $('button[type=submit]').prop('disabled',true);
    $.ajax({
         url: element.attr('action'),
        type:'post',
        data:element.serializeArray(),
        dataType:'json',
        success:function(response) {
            $('button[type=submit]').prop('disabled', false);

            if(response['status'] == true) {
                const redirectToList = '{{ route("users.home") }}';
                window.location.href = redirectToList ;
                $('#firstName').removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html("");
                $('#lastName').removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html("");
                $('#email').removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html("");
                $('#password').removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html("");
                $('#phone').removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html("");

            } else {
            let errors =response['errors'];
            if(errors['firstName']) {
                $('#firstName').addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors['firstName']);
            } else {
                $('#firstName').removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html("");

            }
            if(errors['lastName']) {
                $('#lastName').addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors['lastName']);
            } else {
                $('#lastName').removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html("");

            }
            if(errors['email']) {
                $('#email').addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors['email']);
            } else {
                $('#email').removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html("");

            }
            if(errors['password']) {
                $('#password').addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors['password']);
            } else {
                $('#password').removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html("");

            }
            if(errors['phone']) {
                $('#phone').addClass('is-invalid').siblings('p').addClass('invalid-feedback').html(errors['phone']);
            } else {
                $('#phone').removeClass('is-invalid').siblings('p').removeClass('invalid-feedback').html("");

            }
            
        }
        },
        error:function(jqXHR,exception) {
            console.log('something went wrong');
        }
    })
})
</script>
@endsection