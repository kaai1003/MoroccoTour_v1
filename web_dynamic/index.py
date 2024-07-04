#!/usr/bin/python3
""" Starts a Flash Web Application """
from models import storage
from models.regions import Region
from models.cities import City
from models.places import Place
from models.categories import Category
from flask import Flask, render_template
import uuid
app = Flask(__name__)


@app.teardown_appcontext
def close_db(error):
    """ Remove the current SQLAlchemy Session """
    storage.close()


@app.route('/index/', strict_slashes=False)
def index():
    """ MoroccoTour is alive! """
    cache_id = uuid.uuid4()
    regions = storage.all(Region).values()
    regions = sorted(regions, key=lambda k: k.name)
    regions_list = []

    for region in regions:
        regions_list.append([region, sorted(region.cities, key=lambda k: k.name)])

    places = storage.all(Place).values()
    places = sorted(places, key=lambda k: k.name)

    categories = storage.all(Category).values()
    categories = sorted(categories, key=lambda k: k.name)


    return render_template('index.html',
                           regions=regions_list,
                           places=places,
                           cache_id=cache_id,
                           categories=categories)


if __name__ == "__main__":
    """ Main Function """
    app.run(host='0.0.0.0', port=5000)
