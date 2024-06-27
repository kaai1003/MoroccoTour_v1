#!/usr/bin/python3
"""
 Test cities access from a state
"""
from models import storage
from models.regions import Region
from models.cities import City
from models.categories import Category

"""
 Region Objects creations
"""

all_objects = storage.all(Region)

for object, value in all_objects.items():
    print(value.to_dict())