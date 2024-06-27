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

list_regions =['Tanger-Tétouan-AlHoceima',
               'Oriental',
               'Fes-Meknes',
               'Rabat-Sale-Kenitra',
               'Beni Mellal-Khénifra',
               'Casablanca-Settat',
               'Marrakech-Safi',
               'Drâa-Tafilalet',
               'Souss-Massa',
               'Guelmim-OuedNoun',
               'Laâyoune-SaguiaalHamra',
               'Dakhla-OuedEdDahab']

for item in list_regions:
    region = Region(name=item)
    region.save()
    print(region)
