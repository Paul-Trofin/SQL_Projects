import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("mee.csv")

plt.hist(df["m_ee"], bins=100, range=(0, 200))
plt.xlabel("m_ee [GeV]")
plt.ylabel("Events")
plt.title("Dielectron invariant mass")
plt.show()
