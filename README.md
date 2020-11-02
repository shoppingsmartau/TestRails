   <div class="container">


        <% if @article.errors.any? %>
          <div id="error_explanation">
            <h2><%= pluralize(article.errors.count, "error") %> prohibited this article from being saved:</h2>
      
            <ul>
              <% article.errors.full_messages.each do |message| %>
                <li><%= message %></li>
              <% end %>
            </ul>
          </div>
        <% end %>
        
        <%= form_with(model: article, local: true) do |form| %>
      
          <div class="form-group row">  
              <%= form.label :title, class: "col-2 col-form-label" %>
              <div class="col-10"> 
                <%= form.text_field :title, class: "form-control" %>
              </div>
          </div>
        
          <div class="form-group row">  
            <%= form.label :description, class: "col-2 col-form-label" %>
            <div class="col-10"> 
            <%= form.text_area :description, rows: 10, class: "form-control" %>
            </div>
          </div>
          
          <div class="form-group row">
            <%= form.submit class: "btn btn-outline-light btn-lg" %>
          </div>
        
        <% end %>

         <%= link_to Cancel and return to articles listing', articles_path %>


    </div>