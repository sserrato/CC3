<h2>Your skills </h2>


@user = USer.where(skill: params(:size), )


<% @job.skills.each do |skill_list| %>
    <%= f.fields_for skill_list do |skill| %>

<form class="form-inline">
  <div class="form-group">
    <%= skill.label "block mason" %>
    <%= skill.check_box :sk_block_mason %>
  </form>
</div>

<form class="form-inline">
  <div class="form-group">
    <%= skill.label "brick mason" %>
    <%= skill.check_box :sk_brick_mason %>
  </div>
</form>

<form class="form-inline">
  <div class="form-group">
    <%= skill.label "finisher" %>
    <%= skill.check_box :sk_finisher %>
  </div>
</form>

<form class="form-inline">
  <div class="form-group">
    <%= skill.label "form setter" %>
    <%= skill.check_box :sk_form_setter %>
  </div>
</form>

<form class="form-inline">
  <div class="form-group">
    <%= skill.label "stone mason" %>
    <%= skill.check_box :sk_stone_mason %>
  </div>
</form>







<!-- <h1>Users#edit</h1>
<p>Find me in app/views/users/edit.html.erb</p>
<%= @current_user %>
<%= @current_user %>
<%= session[:user_id]%> -->
<%= params %><%= session  %>
<%= debug params %>
<p>
  Glenn says User: <%= @user.id %>
</p>



<%= f.label :first_name%>
<%= f.text_field :first_name, class: "form-control",  :value => "Your first name" %>
<%= f.label :last_name%>
<%= f.text_field :last_name, class: "form-control",  :value => "Your last name" %>
<%= f.label :phone %>
<%= f.text_field :phone, class: "form-control",  :value => "555-555-5555" %>
<%= f.label :street%>
<%= f.text_field :street, class: "form-control",  :value => "100 Broadway Avenue" %>
<%= f.label :city %>
<%= f.text_field :city, class: "form-control",  :value => "Santa Monica" %>
<%= f.label :state %>
<%= f.text_field :state, class: "form-control",  :value => "CA" %>
<%= f.label :zip %>
<%= f.text_field :zip, class: "form-control",  :value => "90404" %>
<br>

<div class="actions"> <%= f.submit %></div>



<h2>Skills</h2>

  <div class="form-group">
    <%# form_for @skills do |s| %>
    <%#= s.label :sk_block_mason %>
    <%#= s.checkbox_tag :sk_block_mason, class: "form-control" %>
  </div>
<div class="field">
   <input type="checkbox" name="sk_block_mason" value="Block mason">Block Mason<br>
   <input type="checkbox" name="sk_brick_mason" value="Brick Mason">Brick Mason<br>
   <input type="checkbox" name="sk_finisher" value="Finisher">Finisher<br>
   <input type="checkbox" name="sk_form_setter" value="Form Setter">Form Setter<br>
   <input type="checkbox" name="sk_form_setter" value="Form Setter">Stone Mason<br>
</div>

<div class="actions"> <%= f.submit %></div>
<%# end %>





<%= form_for @user << @skills do |skill| %>
<%= skill.label :sk_block_mason %>
<%= skill.text_field :sk_block_mason %>
<%= skill.label :sk_brick_mason %>
<%= skill.text_field :sk_brick_mason %>
<%= skill.label :sk_finisher %>
<%= skill.text_field :sk_finisher %>
<%= skill.label :sk_form_setter %>
<%= skill.text_field :sk_form_setter %>
<%= skill.label :sk_stone_mason %>
<%= skill.text_field :sk_stone_mason %>




def update
   @song = Song.find(params[:id])
   if @song.update(song_params)
     redirect_to @song, notice: 'Song was successfully updated.'
   else
     render :edit
   end
 end




#jobs and skills
#users and skills
create_table :apples_oranges, :id => false do |t|
  t.references :apple, :null => false
  t.references :orange, :null =>
  end
end

#NEW USER FORM

<%= form_for @user do |f| %>
  <div class="field">
    <%= f.l
  </div>
