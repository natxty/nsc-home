import os
import pattern
from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def main(matrix=None):

    matrix = [
        {'slide' : 'The-Fairy-of-Eagle-Nebula.jpeg', 'alt': 'The Fairy of Eagle Nebula'},
        {'slide' : '2011-07-25_19-37-36_22.jpg', 'alt': 'The Beach We Call Home'},
        {'slide' : 's_a14_CMAJESTY.jpg', 'alt': 'Majesty Mountains in Antarctica'},
        {'slide' : 'nc_at_islands_with_mag.jpg', 'alt': 'NC at Islands'},
        {'slide' : '2011-10-28_18-14-15_322.jpg', 'alt': 'october evening at the pumpkin patch'},
        {'slide' : 'about-clouds.large.jpg', 'alt': 'A View From Above'},

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



if __name__ == '__main__':
    # Bind to PORT if defined, otherwise default to 5000.
    port = int(os.environ.get('PORT', 5001))
    app.run(host='0.0.0.0', port=port, debug=True)