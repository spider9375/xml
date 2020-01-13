from lxml import etree
from copy import deepcopy
from lxml.builder import ElementMaker

# E = ElementMaker(nsmap= {
#     'xsi':'http://www.w3.org/2001/XMLSchema-instance'
# })
E = ElementMaker()

DEALERSHIP = E.dealership
CARS = E.cars
CAR = E.car

MAN_DET = E.manufactureDetails
MANUFACTURER = E.manufacturer
MODEL = E.model
YEAR = E.year
ENG_DETAILS = E.engineDetails
ENG_TYPE = E.engineType
ENG_VOLUME = E.engineVolume
HRSPR = E.horsePower
VIS_DET = E.visualDetails
BODY_TYPE = E.bodyType
DOOR_COUNT = E.doorCount
COLOR = E.color
HAS_WING = E.hasWing
WHEELS = E.wheels
RIMS = E.rims
COLOR = E.color
BRAND = E.brand
SIZE = E.size
TIRES = E.tires
BRAND = E.brand
SEASON = E.season
DIAMETER = E.diameter
WIDTH = E.width
TRANSMISSION = E.transmission
TRANS_TYPE = E.transType
GEAR_COUNT = E.gearCount
PRICE = E.price

my_doc = DEALERSHIP(
    CARS(
        CAR( 
            MAN_DET(
                MANUFACTURER("Хонда"),
                MODEL("Акорд"),
                YEAR("2008"),
            ),
            ENG_DETAILS(
                ENG_TYPE("Бензин"),
                ENG_VOLUME("2.4"),
                HRSPR("190"),
            ),
            VIS_DET(
                BODY_TYPE("Седан"),
                DOOR_COUNT("5"),
                COLOR("Черен"),
                HAS_WING("1"),
            ),
            WHEELS(
                RIMS(
                    COLOR("Черен"),
                    BRAND("ОЗ"),
                    MODEL("Суперлегера"),
                    SIZE("17"),
                ),
                TIRES(
                    BRAND("Мишелин"),
                    SEASON("Зимни"),
                    DIAMETER("17"),
                )
            ),
            TRANSMISSION(
                TRANS_TYPE("Ръчни"),
                GEAR_COUNT("6"),
            ),
            PRICE("11000"),
            {'id': "1"}
        )
    ),
    # {"xmlns": "https://www.w3schools.com",
    #  "{http://www.w3.org/2001/XMLSchema-instance}schemaLocation": "https://www.w3schools.com/xml schema.xsd"}
)

for i in range(5):
  try:
    f = open("generated"+ str(i) + ".xml", "x")
    f.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
    f.write("<?xml-stylesheet type=\"text/xsl\" href=\"html"+str(i)+".xsl\"?>\n")
    f.write(etree.tostring(my_doc, encoding="utf8", method="xml", pretty_print=True).decode('cp1251'))
    f.close()
    break
  except Exception as e:
    continue