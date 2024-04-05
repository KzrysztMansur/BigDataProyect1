import pandas as pd
def main():
    df = pd.read_csv("resources\data_tarifas_por_zonas.csv")
    print(df)

if __name__ == '__main__':
    main()