# Welcome to GodFood
 
Hack take out contract from online website 
  
just for God Food

WebSite [GodFood](http://godfood.herokuapp.com/)


## Getting Starting

Install GodFood

``` Ruby
git clone git://github.com/mouse-lin/god_food.git
cd god_food
```

Config your database

``` Ruby
mv config/database.xml.example config/database.yml
rake db:create
rake db:migrate
```

Get the Foods' online datas, run custom rake task

``` Ruby
rake db:pull
```

## Contributors	

* mouseshi
* blowdy

## Todo

* test
* get more online website's data

## License

Copyright (c) 2012 GodFood

Free of charge !! Enjoying it
