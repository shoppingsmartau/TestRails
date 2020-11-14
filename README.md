<%= render 'article' %>  

<%= will_paginate @articles %>


<div class="container">
  <% @users.each do |user| %>
    <div class="row justify-content-md-center">
       <%= render 'user' %> 
    </div>
  <% end %>
</div>
