import pandas as pd

# df = pd.read_csv("D:/Pranshu/Projects/DBT_Tool_Practice/Data/OnlineNewsPopularity.csv")
# df.to_csv("cleaned.csv", index=False, quoting=1)

# Load CSV with very forgiving settings
df = pd.read_csv(
    "D:/Pranshu/Projects/DBT_Tool_Practice/Data/Cleaned_data/cleaned.csv",
    sep=",",
    engine="python",
    header=0,
    quotechar='"',
    on_bad_lines='skip'   # <—— modern correct method
)

print("Columns detected:", len(df.columns))
print(df.columns)