#!/usr/bin/python3
"""
 create some places
"""
from models import storage
from models.places import Place
from models.cities import City
from models.categories import Category



places = [{'name': 'Kasbah Museum',
           'description': 'The Kasbah Museum in Tangier, Morocco, is housed in the former Sultans palace, Dar el-Makhzen. It features exhibits showcasing the region history, culture, and art, including artifacts from the Phoenician, Roman, and Islamic periods. The museum is known for its beautiful Andalusian-style architecture and stunning views of the Strait of Gibraltar',
           'latitude': '35.7904',
           'longitude': '5.8129',
           'city_id': '4356f60c-fa13-42af-9f9b-84dc3d201aa0',
           'user_id': '42228493-34d5-45e8-8cb1-a2a8dab5d114',
           'categorie_id': '25ae0343-9242-49fc-88d2-236208a46bd2'},
           {'name': 'Outa el Hammam',
           'description': 'Outa el Hammam Square in Chefchaouen, Morocco, is the vibrant heart of the city, surrounded by cafes, restaurants, and shops. It offers a lively atmosphere and stunning views of the surrounding blue-painted buildings. The square is also home to the historic Grand Mosque and the Kasbah, making it a central hub for both locals and visitors.',
           'latitude': '35.1686',
           'longitude': '5.2639',
           'city_id': '84b5e3be-450d-45c5-bc58-110496a6731f',
           'user_id': '42228493-34d5-45e8-8cb1-a2a8dab5d114',
           'categorie_id': '25ae0343-9242-49fc-88d2-236208a46bd2'},
           {'name': 'Hassan Tower',
           'description': 'Hassan Tower in Rabat, Morocco, is an unfinished minaret of a grand mosque that began construction in 1195. Intended to be the worlds tallest minaret, it stands at 44 meters (144 feet) due to halted construction after Sultan Yacoub al-Mansours death. The tower, with its intricate design and historical significance, is part of a UNESCO World Heritage Site alongside the nearby Mausoleum of Mohammed V.',
           'latitude': '34.0241',
           'longitude': '6.8227',
           'city_id': 'd9d4bfb2-8dae-4690-a615-a980633201d5',
           'user_id': '42228493-34d5-45e8-8cb1-a2a8dab5d114',
           'categorie_id': '25ae0343-9242-49fc-88d2-236208a46bd2'},
           {'name': 'Hassan II Mosque',
           'description': 'The Hassan II Mosque in Casablanca, Morocco, is one of the largest mosques in the world, completed in 1993. It features a striking 210-meter (689-foot) tall minaret, the tallest in the world, and can accommodate 25,000 worshippers inside, with space for an additional 80,000 in the courtyard. The mosque is renowned for its intricate Moroccan craftsmanship, stunning oceanfront location, and the use of modern technology, including a retractable roof.',
           'latitude': '33.6073',
           'longitude': '7.6325',
           'city_id': '5588d210-cc10-4205-9618-c38ad72db359',
           'user_id': '42228493-34d5-45e8-8cb1-a2a8dab5d114',
           'categorie_id': '25ae0343-9242-49fc-88d2-236208a46bd2'},
           {'name': 'Al Quaraouiyine University',
           'description': 'Al Quaraouiyine University in Fes, Morocco, founded in 859, is considered the oldest existing, continually operating educational institution in the world. Originally established as a madrasa and mosque, it became a renowned center for Islamic learning and culture, attracting scholars from around the globe. The university remains a significant religious and educational institution, known for its historic architecture and scholarly heritage.',
           'latitude': '34.0655',
           'longitude': '4.9738',
           'city_id': '1140ab0a-b0e3-4a3b-b714-6e30b33cf6c1',
           'user_id': '42228493-34d5-45e8-8cb1-a2a8dab5d114',
           'categorie_id': '25ae0343-9242-49fc-88d2-236208a46bd2'},
           {'name': 'Jemaa el-Fnaa',
           'description': 'Jemaa el-Fnaa in Marrakesh, Morocco, is a famous public square and market place in the citys medina. Known for its vibrant atmosphere, it hosts a variety of performers, food stalls, and artisans, offering an immersive cultural experience. The square transforms throughout the day, bustling with activity from storytellers, musicians, and traditional healers, making it a central hub of local life and tourism.',
           'latitude': '31.6258',
           'longitude': '7.9894',
           'city_id': '452cde21-4f77-4d04-a541-7e34732c0233',
           'user_id': '42228493-34d5-45e8-8cb1-a2a8dab5d114',
           'categorie_id': '25ae0343-9242-49fc-88d2-236208a46bd2'},
            {'name': 'Sahara Desert tours',
           'description': 'Sahara Desert tours in Ouarzazate, Morocco, offer an unforgettable adventure into the vast and stunning landscapes of the Sahara Desert. Starting from Ouarzazate, known as the "Gateway to the Desert," these tours typically include visits to impressive sand dunes, camel rides, traditional Berber villages, and overnight stays in desert camps under star-filled skies. They provide a unique opportunity to experience the beauty and culture of Morocco desert regions.',
           'latitude': '30.9189',
           'longitude': '6.8931',
           'city_id': '4c64e318-a23d-411d-8646-e492894cb1ae',
           'user_id': '42228493-34d5-45e8-8cb1-a2a8dab5d114',
           'categorie_id': '9bb00d96-3092-437e-8237-21903db17f03'}]

for place in places:
    new_place = Place(name=place['name'], description=place['description'],
                      latitude=place['latitude'], longitude=place['longitude'],
                      city_id=place['city_id'],user_id=place['user_id'],
                      categorie_id=place['categorie_id'])
    new_place.save()
    print(new_place.to_dict())