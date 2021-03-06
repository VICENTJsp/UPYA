
<div class="subbody">
<div class="timeline">

<% for step in (0..6) %>

<%# affichage cards %>
  <% if  step + 1 == @current_step %>
    <div id=<%= step + 1 %> class="offsetanchor">
  <% else %>
    <div id=<%= step + 1 %>>
  <% end %>
    <div id="offsettop<%= step + 1 %>" class="containerblank righter">
      <div class="contentnone">
      </div>
    </div>
    <div class="petitrondfixe" data-color=<%= step %>></div>
    <div class="containermine">
      <div class="content d-flex">
        <div>
          <h2 class="my-number">0<%= step + 1 %></h2>
        </div>
        <div class="my-column">
          <h3 class="my-subtitle"><%= @step.title %></h3>
          <% if  step + 1 == @current_step %>
            <%= link_to "Valider ce step",  steps_up_path, class: "btn my-button my-validate"%>
          <% end %>
          <div id="openbutton<%= step + 1 %>" class="">
            <% if step + 1 < @current_step %>
              <button id="clickopen<%= step + 1 %>" class="btn my-button" value=<%= step + 1 %> >Ouvrir</button>
            <% end %>
          </div>
          <div id="closebutton<%= step + 1 %>" class="">
            <% if step + 1 < @current_step %>
              <button id="clickclose<%= step + 1 %>" class="btn my-button" value=<%= step + 1 %> >Fermer</button>
            <% end %>
          </div>
        </div>
      </div>
    </div>
    <div id="article<%= step + 1 %>" class="">
      <div class="containermine left">
        <div class="content py-2 px-4">
          <h2>Article</h2>
          <strong><%= @articles[step].title[0..60] + "..." %></strong><br>
          <%= image_tag(@articles[step].image, class: "vignette my-3 mr-3") %>
          <p class="para text-justify pr-3"><%= @articles[step].content[0..200] + "..." %></p><br>
          <%= link_to "Voir", article_path(@articles[step].id), class: "btn my-button" %>
        </div>
      </div>
    </div>
    <div id="video<%= step + 1 %>" class="containermine right">
      <div class="content p-4">
        <h2>Video</h2>
        <h3><%= @steps[step].title %></h3>
        <div class="d-flex justify-content-between align-items-center">
          <%= image_tag @videos[step].picture, class: "small_vignette" %>
          <%= link_to "Voir", video_path(@videos[step].id), class: "btn my-button mr-5" %>
        </div>
      </div>
    </div>
    <div id="coach<%= step + 1 %>" class="containermine left">
      <div class="content p-4">
        <h2>Coach</h2>
        <strong><%= @coachs[step].email + "@upya.fr" %></strong><br>
        <div class="d-flex justify-content-between align-items-center">
          <%= image_tag(@coachs[step].photo_url, class: "small_vignette") %>
          <%= link_to "Prendre rendez-vous", coach_path(@coachs[step].id), class: "btn my-button mx-5" %>
        </div>
      </div>
    </div>
    <div id="offsetbottom<%= step + 1 %>" class="containerblank righter">
      <div class="contentnone">
      </div>
    </div>
  </div>
<% end %>