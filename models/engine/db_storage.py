#!/usr/bin/python3
"""Mysql Database Module"""
from urllib.parse import quote
from models.base_model import BaseModel, Base
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sqlalchemy.orm import scoped_session
from models.users import User
from models.places import Place
from models.regions import Region
from models.cities import City
from models.facilities import Facility
from models.reviews import Review
from models.categories import Category

classes = {'Region': Region,
           'City': City,
           'Place': Place,
           'Review': Review,
           'Facility': Facility,
           'User': User,
           'Category': Category}


class DBStorage:
    """DB storage class definition"""
    __engine = None
    __session = None

    def __init__(self):
        """engine DB initialisation"""
        user = 'mt_dev'
        pwd = quote('Mt@12_34')
        host = 'localhost'
        db = 'mt_dev_db'
        self.__engine = create_engine("mysql+mysqldb://{}:{}@{}/{}".
                                      format(user,
                                             pwd,
                                             host,
                                             db), pool_pre_ping=True)


    def all(self, cls=None):
        """load objects from DB
        Args
            cls (class): class name to be loaded
        """
        objs_dict = {}
        for clss in classes:
            if cls is None or cls is classes[clss] or cls is clss:
                objs = self.__session.query(classes[clss]).all()
                for obj in objs:
                    key = obj.__class__.__name__ + '.' + obj.id
                    objs_dict[key] = obj
        return objs_dict

    def new(self, obj):
        """add obj to DB
        Args
            obj: object to add
        """
        self.__session.add(obj)

    def save(self):
        """commit changes to DB"""
        self.__session.commit()

    def delete(self, obj=None):
        """delete obj from DB
        Args
            obj: object to delete
        """
        if obj is not None:
            self.__session.delete(obj)

    def reload(self):
        """create all tables on DB"""
        Base.metadata.create_all(self.__engine)
        session_factory = sessionmaker(bind=self.__engine,
                                       expire_on_commit=False)
        self.__session = scoped_session(session_factory)

    def close(self):
        """call remove or cloase session"""
        self.__session.remove()

    def get(self, cls, id):
        """method to retrieve one object
        Args
            cls(object): class object
            id(object attribute): string rep of instance object
        """
        objects = self.all(cls)
        for obj in objects.values():
            if obj.id == id:
                return (obj)
        return None

    def count(self, cls=None):
        """return number of objects in storage
        Args
            cls(class object): class object
        """
        count = 0
        if cls is not None:
            objects = self.all(cls)
        else:
            objects = self.all()
        for obj in objects:
            count += 1
        return (count)
