ignore this file, placeholder for links so rails does not crash.



<% if user_signed_in? && current_user.is_admin? %>
  <ul class="nav navbar-nav navbar-right">
    <li><a style="color:#FEBD69;">Admin user enabled</a></li>

      <li role="presentation" class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
          <%= "#{current_user.first_name}" %>
          <span class="caret"></span>
        </a>
        <ul class="dropdown-menu">
          <li><%= link_to 'Admin Panel', admin_dashboard_index_path %></li>
          <li><%= link_to 'Dashboard', '#' %></li>
          <li><%= link_to 'Profile', '#' %></li>
          <li><%= link_to "Settings", '#' %></li>
          <li class="divider"></li>
          <li><%= link_to "Logout", sessions_path, method: :delete, data: {confirm: 'Logout?'}  %></li>
        </ul>
      </li>
    </ul>
  </ul>


<!-- User Logged in Navbar -->
<% elsif user_signed_in? %>
<ul class="nav navbar-nav navbar-right">
      <li role="presentation" class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
        <%= "#{current_user.first_name}" %>
        <span class="caret"></span>
      </a>
      <ul class="dropdown-menu">
        <li><%= link_to 'Dashboard', '#' %></li>
        <li><%= link_to 'Profile', '#' %></li>
        <li><%= link_to "Settings", '#' %></li>
        <li class="divider"></li>
        <li><%= link_to "Logout", sessions_path, method: :delete, data: {confirm: 'Logout?'}  %></li>
      </ul>
    </li>
  </ul>
</ul>
<% end %>

<!-- Not logged in -->
<% if !user_signed_in? %>
  <ul class="nav navbar-nav navbar-right">
    <li><%= link_to 'Sign Up', new_user_path %> </li>
    <li><%= link_to 'Login', new_session_path %> </li>
  <% end %>
</ul>
