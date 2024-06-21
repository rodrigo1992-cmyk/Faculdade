import streamlit as st
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

st.header('Segunda Pagina')
data = pd.DataFrame(np.random.randn(50,2), columns=['x','y'])

fig,ax = plt.subplots()
ax.scatter(data['x'],data['y'])
ax.set_xlabel('Eixo X')
ax.set_label('Eixo Y')
st.pyplot(fig)
