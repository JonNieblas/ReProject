// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require rails-ujs
//= require turbolinks
//= require_tree .

$(function() {
    $("#courses th a, #courses .pagination a").live("click", function() {
        $.getScript(this.href);
        return false;
    });
    $("#courses_search input").keyup(function() {
        $.get($("#courses_search").attr("action"), $("#courses_search").serialize(), null, "script");
        return false;
    });
});

$(function() {
    $("#professors th a, #professors .pagination a").live("click", function() {
        $.getScript(this.href);
        return false;
    });
    $("#professors_search input").keyup(function() {
        $.get($("#professors_search").attr("action"), $("#professors_search").serialize(), null, "script");
        return false;
    });
});

$(function() {
    $("#sections th a, #sections .pagination a").live("click", function() {
        $.getScript(this.href);
        return false;
    });
    $("#sections_search input").keyup(function() {
        $.get($("#sections_search").attr("action"), $("#sections_search").serialize(), null, "script");
        return false;
    });
});