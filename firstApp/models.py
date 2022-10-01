from django.db import models



class medical(models.Model):
    age=models.FloatField()
    sex=models.FloatField()
    bmi=models.FloatField()
    children=models.FloatField()
    smoker=models.FloatField()
    region=models.FloatField()
    charges=models.FloatField()


# Create your models here.
