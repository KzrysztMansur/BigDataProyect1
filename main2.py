import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

def count_by_gender_survivors(survived: bool, gender: str) -> int:
    return df[(df['Survived'] == survived) & (df['Sex'] == gender)].shape[0]

df = pd.read_csv(r"resources\titanic.csv")


# MALE SURVIVORS VS MALE VICTIMS
male_deaths = count_by_gender_survivors(0, 'male')
male_survivors = count_by_gender_survivors(1, 'male')
male_array = np.array([male_deaths, male_survivors])
male_labels = np.array(['Male deaths','Male survivors'])
msg_male = f"{male_deaths+male_survivors} where present at the of which {(male_survivors/(male_deaths+male_survivors) * 100):.2f}% survived and {(male_deaths/(male_deaths+male_survivors) * 100):.2f} died"

plt.pie(male_array, labels=male_labels)
plt.title('Percetage of male survivor vs male victims')

plt.text(-2, 1, msg_male, fontsize=12, color='black')

plt.show()

# FEMALE SURVIVORS VS FEMALE VICTIMS
female_deaths = count_by_gender_survivors(0, 'female')
female_survivors = count_by_gender_survivors(1, 'female')
female_array = np.array([female_deaths, female_survivors])
female_labels = np.array(['Female deaths', 'Female survivors'])

msg_female = f"{female_deaths+female_survivors} were present, of which {(female_survivors/(female_deaths+female_survivors) * 100):.2f}% survived and {(female_deaths/(female_deaths+female_survivors) * 100):.2f} died"

plt.pie(female_array, labels=female_labels)
plt.title('Percentage of female survivors vs female victims')
plt.text(-2, 1, msg_female, fontsize=12, color='black')

plt.show()
