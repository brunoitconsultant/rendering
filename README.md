##  RUN IN BASH
### > GET SOURCES
git clone https://github.com/brunoitconsultant/rendering.git ~/rendering ; cd ~/rendering

### > COMPILE CODE
make

### > TEST IT
xdg-open http://localhost:8000/ ; python3 -m http.server 8000
