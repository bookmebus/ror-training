# Scaffolding Greeting
Run following commands, then don't forget to run migration:
```
rails g scaffold Greeting name message:text
```

Routes:
```
http://127.0.0.1:3000/greetings
```

## Error
### link_tree argument must be a directory
```
//= link_directory ../stylesheets .css
//= link_tree ../../javascript .js
//= link_tree ../../../vendor/javascript .js
```

In app/assets/config/manifest.js, make sure all folder list here existed, eg. `vendor/javascript`.