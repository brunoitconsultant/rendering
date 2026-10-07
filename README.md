##  RUN IN BASH
### > GET SOURCES
git clone https://github.com/brunoitconsultant/rendering.git ~/rendering ; cd ~/rendering

### > COMPILE CODE
make

### > TEST IT
python3 -m http.server 8000 ; xdg-open http://localhost:8000/
