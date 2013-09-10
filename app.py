import os
import pattern
from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def main(matrix=None):

    matrix = [
        
        {
            'slide' : 'HALO-jump-710x260.jpg', 
            'alt': 'HALO Jump',
            'msg1': 'High Altitude, Low Drag...',
        },
        {
            'slide' : 'samurai_challenge_2_by_artozi-d4gxxsb.jpg', 
            'alt': 'Samurai Not Ninjas',
            'msg1': 'Enough with the ninjas',
            'msg2' : 'give me a samurai',
        },
        {
            'slide' : 'Halo-4-Chief.jpg',
            'alt' : 'Mechanized Warrior Chief',
            'msg1' : 'Mechanized warrior chief',
            'msg2' : 'Armored and Automated',
        },
        {
            'slide' : 'The-Fairy-of-Eagle-Nebula.jpeg', 
            'alt': 'The Fairy of Eagle Nebula',
            'msg1': 'Where ever you go',
            'msg2': 'there you are'
        },
        {
            'slide' : '2011-07-25_19-37-36_22.jpg', 
            'alt': 'The Beach We Call Home',
            'msg1': 'The Beach We Call Home'
        },
        {
            'slide' : 's_a14_CMAJESTY.jpg', 
            'alt': 'Majesty Mountains in Antarctica',
            'msg1': 'Analyzing Mountains of',
            'msg2': 'Pure Data'
        },
        {
            'slide' : 'nc_at_islands_with_mag.jpg', 
            'alt': 'NC at Islands',
            'msg1': 'Where ever you go',
            'msg2': 'there you are'
        },
        {
            'slide' : '2011-10-28_18-14-15_322.jpg', 
            'alt': 'october evening at the pumpkin patch',
            'msg1': 'Where ever you go',
            'msg2': 'there you are'
        },
        {
            'slide' : 'about-clouds.large.jpg', 
            'alt': 'A View From Above',
            'msg1': 'A View From Above',
            'msg2': 'there you are'
        },

    ]
        
    return render_template('index.html', matrix=matrix)


@app.route('/grid')
def grid():

    elements = []
    elements = os.listdir("./static/images/")
        
    return render_template('grid.html', elements=elements)


@app.route('/crawler')
def crawler():        
    return render_template('crawler.html')


@app.route('/temp')
def temp():
    return render_template('temp.html')


if __name__ == '__main__':
    # Bind to PORT if defined, otherwise default to 5000.
    port = int(os.environ.get('PORT', 5001))
    app.run(host='0.0.0.0', port=port, debug=True)