   <div class="row justify-content-center">
        <div class="col-10">
          <%= render 'shared/errors' %>
          <%= form_with(model: @user, class: "shadow p-3 mb-3 bg-info rounded", local: true) do |f| %>
          <div class="form-group row">
            <%= f.label :username, class: "col-2 col-form-label text-light" %>
          <div class="col-10">
            <%= f.text_field :username, class: "form-control shadow rounded", placeholder: "Enter a username" %>
          </div>
        </div>