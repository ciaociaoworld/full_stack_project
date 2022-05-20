<% if logged_in? %>
    <form action="/sessions" method="POST">
        <input type="hidden" name="_method" value="delete">
        <button>Logout</button>
    </form>

    <a href="/fish/new">Add today's catch</a>

    <form action="/suburb">
    <input type="text" name="suburb"> 
    <button>Search</button>
    </form>

<% end %>
<% else %>
    <a href="/sign_up">sign up</a>
    <a href="/login">Login</a>
    
    <form action="/suburb">
    <input type="text" name="suburb"> 
    <button>Search</button>
    </form>

<% end %>