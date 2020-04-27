echo "Welcome to Do Devs Dream of Electric Sheep?"

echo "Lets begin the install now"

git clone "https://github.com/maaronkel/Do_Devs_Dream"

cd src

echo "Time to ensure all required gems are installed"

bundle install

echo "All gems have been installed, running application for the first time now"

ruby app.rb