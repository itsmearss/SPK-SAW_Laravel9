@extends('dashboard.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Contacts</h1>
    </div>
    @if (session()->has('success'))
      <div class="alert alert-success col-lg-8" role="alert">
        {{ session('success') }}
      </div>
    @endif
    <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover table-sm">
          <thead class="text-center">
            <tr>
              <th scope="col">No</th>
              <th scope="col">Name</th>
              <th scope="col">Email</th>
              <th scope="col">Subject</th>
              <th scope="col" style="width: 400px">Message</th>
              <th scope="col">Delete</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($contacts as $contact)
            <tr>
                <td class="text-center">{{ $loop->iteration }}</td>
                <td>{{ $contact->full_name }}</td>
                <td>{{ $contact->email }}</td>
                <td>{{ $contact->subject }}</td>
                <td>{{ $contact->message }}</td>
                <td class="text-center">
                    <form action="/dashboard/contacts/{{ $contact->id }}" method="POST" class="d-inline">
                      @method('delete')
                      @csrf
                      <button class="badge bg-danger border-0" onclick="return confirm('Are you sure?')"><i class="bi bi-x-circle"></i></button>
                    </form>
                </td>
            </tr>
            @endforeach
          </tbody>
        </table>
      </div>
@endsection