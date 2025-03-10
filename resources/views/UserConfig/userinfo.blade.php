@section('title',"Home")
@extends('layout.app')
@section('main')
    <div class="content-wrapper">
        <div class="row">
            <div class="col-xl-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body border-bottom">
                        <div class="d-flex justify-content-between align-items-center flex-wrap">
                            <h6 class="mb-2 mb-md-0 text-uppercase fw-medium">Overall sales</h6>
                            <button class="btn btn-success btn-sm " type="button" onclick="showModal()"><i
                                    class="typcn typcn-plus"></i> Add New
                            </button>

                        </div>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive pt-3">
                            <div>
                                <form id="filterForm">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Search Name</label>
                                                <input type="text" id="name" name="name"
                                                       class="form-control form-control-sm"
                                                       placeholder="Enter Name For Search" aria-label="Username">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Search Email</label>
                                                <input type="text" id="email" name="email"
                                                       class="form-control form-control-sm"
                                                       placeholder="Enter Email For Search" aria-label="Username">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <table id="usersTable" class="table table-bordered">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>IP</th>
                                    <th>Last Login</th>
                                    <th>Last Login</th>
                                </tr>
                                </thead>
                                <tbody>
                                <!-- Data will be populated by DataTables -->
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- =================================================Add Customers=========================================================== -->
    <div class="modal fade bd-example-modal-lg" id="addModal" tabindex="-1" role="dialog"
         aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel3">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="addRoleForm" class="row g-3" onsubmit="return false">
                        @csrf
                        <input type="hidden" name="id" id="id"/>
                        <div class="row g-2">
                            <div class="col mb-1">
                                <label class="form-label" for="i_name">Name</label>
                                <input type="text" id="i_name" name="i_name" class="form-control" placeholder="Enter Name" tabindex="-1"/>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col mb-1">
                                <label class="form-label" for="i_email">Email</label>
                                <input type="text" id="i_email" name="i_email" class="form-control" placeholder="Enter email"/>
                                <div class="invalid-feedback"></div>
                            </div>
                        </div>


                        <div class="row g-2">
                            <div class="col mb-1" id="pass">
                                <label class="form-label" for="password">Password</label>
                                <input type="password" id="password" name="password" class="form-control" placeholder="Enter Password"/>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="col mb-1">
                                <label class="form-label">Select Status</label>
                                <select class="form-select" name="status" id="status">
                                    <option  value="">Select Status</option>
                                    <option value="A">Active</option>
                                    <option value="I">InActive</option>
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" onclick="addData()" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>

@endsection
@section('script')

    <script>
        function showModal() {
            $("#addModal form")[0].reset();
            $(".modal-title").text("Add New User");
            $("#addModal").modal("show");
        }

        $(document).ready(function () {
            var table = $('#usersTable').DataTable({
                processing: true,
                serverSide: true,
                ajax: {
                    url: '{{ route('users.data') }}',
                    type: 'POST',
                    data: function (d) {
                        d._token = $('input[name="_token"]').val(); // Include CSRF token
                        d.name = $('input[name="name"]').val();
                        d.email = $('input[name="email"]').val();
                    }
                },
                columns: [
                    {data: 'id'},
                    {data: 'name'},
                    {data: 'email'},
                    {data: 'ip'},
                    {data: 'last_login'},
                    {
                        data: null,
                        render: function (data, type, row) {
                            return `
                            <button class="btn btn-info btn-sm edit-btn" data-id="${row.id}">Edit</button>
                            <button class="btn btn-primary btn-sm update-btn" data-id="${row.id}">Update</button>
                            <button class="btn btn-danger btn-sm delete-btn" data-id="${row.id}">Delete</button>
                        `;
                        },
                        orderable: false,
                        searchable: false
                    }
                ],
                columnDefs: [
                    {
                        targets: 4,
                        render: function (data, type, row) {
                            return data ? new Date(data).toLocaleString('en-GB', {timeZone: 'Asia/Dhaka'}) : 'N/A';
                        }
                    }
                ],
                lengthMenu: [[10, 25, 50, -1], [10, 25, 50, "All"]],
                pageLength: 10
            });

            $('#usersTable tbody').on('click', '.edit-btn', function () {
                var id = $(this).data('id');
                showData(id);
            });

            // Handle Update button click
            $('#usersTable tbody').on('click', '.update-btn', function () {
                var data = table.row($(this).parents('tr')).data();
                console.log('Update button clicked for:', data);
            });

            // Handle Delete button click
            $('#usersTable tbody').on('click', '.delete-btn', function() {
                var id = $(this).data('id');
                Swal.fire({
                    title: "Are you sure?",
                    text: "You won't be able to revert this!",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#3085d6",
                    cancelButtonColor: "#d33",
                    confirmButtonText: "Yes, delete it!"
                }).then((result) => {
                    if (result.isConfirmed) {
                        var csrf_token = $('meta[name="csrf-token"]').attr('content');

                        $.ajax({
                            url: "{{ url('UserInfo') }}" + '/' + id,
                            type: "POST",
                            data: {'_method': 'DELETE', '_token': csrf_token},
                            success: function(response) {
                                if (response.statusCode == 200) {
                                    Swal.fire({
                                        title: "Deleted!",
                                        text: "Your file has been deleted.",
                                        icon: "success"
                                    });
                                } else {
                                    Swal.fire("Error occured !!");
                                }
                                $('#usersTable').DataTable().ajax.reload();
                            },
                            error: function(xhr) {
                                alert('Delete failed: ' + xhr.responseText);
                            }
                        });

                    }
                });

            });

            $('#name, #email').on('change keyup', function () {
                table.draw(); // Reload DataTable with new filters
            });

        });

        function addData() {
            url = "{{ url('UserInfo') }}";
            $.ajax({
                url: url,
                type: "POST",
                data: new FormData($("#addModal form")[0]),
                contentType: false,
                processData: false,
                success: function (data) {
                    if (data.statusCode == 200) {
                        Swal.fire({
                            title: "Success!",
                            text: data.statusMsg,
                            icon: "success"
                        });
                        $("#addModal form")[0].reset();
                        $("#addModal").modal("hide");
                        $('#usersTable').DataTable().ajax.reload();
                    }else if (data.statusCode == 204) {
                        showErrors(data.errors);
                    }else{
                        Swal.fire({
                            icon: "error",
                            text: data.statusMsg,
                        });

                    }
                }, error: function (data) {
                    Swal.fire({
                        text: "Internal Server Error",
                        icon: "question"
                    });
                }
            });
            return false;
        };

        function showData(id) {
            $("#addModal form")[0].reset();
            $("#addModal").modal("show");
            $("#pass").hide();

            $.ajax({
                url: "{{ url('UserInfo') }}" + '/' + id,
                type: "GET",
                dataType: "JSON",
                success: function (data) {
                    $('#addModal form')[0].reset();
                    $('.modal-title').text('Update User');
                    $('#addModal').modal('show');
                    $('#id').val(data.id);
                    $('#i_name').val(data.name);
                    $('#i_email').val(data.email);
                    $('#status').val(data.status);
                }, error: function () {
                    swal({
                        title: "Oops",
                        text: "Error Occured",
                        icon: "error",
                        timer: '1500'
                    });
                }
            });
            return false;
        };
    </script>
@endsection
