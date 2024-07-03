#!/usr/bin/python3
"""
 create some reviews
"""
from models import storage
from models.places import Place
from models.cities import City
from models.categories import Category
from models.reviews import Review



reviews = [{'comment': 'I was pleasantly surprised by the Kasbah Museum. It’s well-maintained and the staff is very knowledgeable. The Andalusian-style architecture is gorgeous, and the views of the Strait of Gibraltar are breathtaking. The museum offers a great blend of historical artifacts and art pieces. A must-visit for history enthusiasts.',
           'rating': '9',
           'user_id': '42228493-34d5-45e8-8cb1-a2a8dab5d114',
           'place_id': 'df7c8cb9-7b10-42a8-8087-2af1db0d44d7'},
           {'comment': 'I love spending time at Outa el Hammam Square. It is always bustling with activity, from street performers to local artisans selling their crafts. The cafes around the square offer great Moroccan tea and snacks. The Kasbah and the Grand Mosque nearby make it a significant cultural hub in Chefchaouen. Definitely a place you must visit.',
           'rating': '10',
           'user_id': '42228493-34d5-45e8-8cb1-a2a8dab5d114',
           'place_id': 'e43565e3-c5d7-4407-848c-41e35b37e419'},
           {'comment': 'Visiting Hassan Tower was a wonderful experience. The minaret stands tall and proud, and the intricate designs are a testament to the craftsmanship of the era. The site is well-preserved, and the views from the esplanade are fantastic. It’s a great place to learn about Moroccan history and enjoy some quiet reflection.',
           'rating': '10',
           'user_id': '42228493-34d5-45e8-8cb1-a2a8dab5d114',
           'place_id': '637afb28-0a7b-4a07-83e6-a6ee4ce3abae'},
           {'comment': 'As a local, Jemaa el-Fnaa holds a special place in my heart. It is the beating heart of Marrakesh, where you can find everything from delicious food to unique crafts. The square truly comes alive in the evening with all the performers and storytellers. It is a great place to soak in the atmosphere and feel the pulse of the city.',
           'rating': '10',
           'user_id': '42228493-34d5-45e8-8cb1-a2a8dab5d114',
           'place_id': '2e32f0dc-078f-453f-95a2-8124fb5e7f8e'}]

for review in reviews:
    new_review = Review(comment=review['comment'], rating=review['rating'],
                      user_id=review['user_id'], place_id=review['place_id'])
    new_review.save()
    print(new_review.to_dict())