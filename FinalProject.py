import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np

df = pd.read_csv('BBall.csv')
df = df.sort_values(by='Season').reset_index(drop=True)
print(df.describe())

plt.figure(figsize=(10,10))
sns.set(style="white")

df_corr = df[["Age", "G", "FG", "FGA", "2P", "2PA", "3P", "3PA", "ORB", "DRB", "AST", "STL","BLK", "TOV", "PTS", "FG%", "2P%", "3P%","FT%", "TS%", "Height"]]

corr = df_corr.corr()

mask = np.triu(np.ones_like(corr, dtype=np.bool))

f, ax = plt.subplots(figsize=(10, 10))

cmap = sns.diverging_palette(250, 10, as_cmap=True)

sns.heatmap(corr, mask=mask, cmap=cmap, vmax=.3, center=0,
            square=True, linewidths=.5, cbar_kws={"shrink": .5})

plt.show()


