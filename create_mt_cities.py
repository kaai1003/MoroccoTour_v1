#!/usr/bin/python3
"""
 Test cities access from a state
"""
from models import storage
from models.regions import Region
from models.cities import City
from models.categories import Category

"""
 City Objects creations
"""

# this script should be executed after regions creation
# please change the id of region after regions creation
region_cities = {'926afc43-cfc7-4a19-a7fd-e9afc1ec1096': ['AlHoceima', 'Chefchaouen', 'Ouezzane', 'KsarelKébir', 'Larache', 'Assilah', 'Tétouan', 'Mdiq', 'Fnideq', 'Tanger'],
                '1858f608-3fea-4a15-a78a-d1ddefcf2926':['Nador', 'Berkane', 'Oujda', 'Driouch', 'Taourirt', 'Jerada', 'Guercif'],
                '119f54ab-da1f-477e-b37f-ac2a381eb1e8':['Taouante', 'Taza', 'MoulayYacoub', 'Fes', 'Meknes', 'Sefrou', 'Ifrane', 'Boulmane'],
                'bdbccd55-def6-4462-9d21-6037d5a38ea1':['Rabat', 'Sale', 'Kenitra', 'Oulmes', 'Rommani', 'Ezzhiliga'],
                'da1419e1-f734-4862-b047-07a44819c531':['Khenifra', 'KasbaTadla', 'BeniMellal', 'Azilal', 'Demnate'],
                '1e267a4f-15c3-4c61-9cf2-bfe1012b2f30':['Casablanca', 'Mohammedia', 'ElJadida', 'Oualidia', 'SidiBennour'],
                '084ba8e4-dac4-4905-918d-c69b5c100ab1':['Marrakech', 'Safi', 'Essaouira'],
                'c08964b2-d2e4-46ab-85a1-1bb0a58ba318':['Midelt', 'Errachidia', 'Erfoud', 'Tinghrir', 'Ouarzazate', 'Zagoura'],
                '04bb631a-42db-4d9a-a1e9-dc49b3cf2c80':['Agadir', 'Tiznit', 'Tafraout', 'Taliouine', 'Taroudant'],
                '573627af-0082-46a1-af01-d4e8ca06cb3a':['SidiIfni', 'Guelmin', 'TanTan'],
                '972b8cca-d265-4465-b2d2-fa1b4b2dc333':['Laayoune', 'Essamara', 'Tarfaya', 'Boujdour'],
                '9d523362-2195-4d55-b1d2-eef1d48915eb':['Dakhla', 'Lagouira']}

for key, value in region_cities.items():
    for city in value:
        new_city = City(name=city, region_id=key)
        new_city.save()
        print(new_city.name)
    print("------------------")

