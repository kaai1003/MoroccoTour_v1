#!/usr/bin/python3
"""
 create default user
"""
from models import storage
from models.users import User

new_user = User(first_name='aimad',
                last_name='kacem',
                email='kacem.aimad@gmail.com',
                password='test1234')
new_user.save()
print(new_user.id)
print("user added succefully")