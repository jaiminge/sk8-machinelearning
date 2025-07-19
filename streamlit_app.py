import streamlit as st
import pandas as pd

st.title('🎈 ML app')

st.info('This app builds ML models')

df = pd.read_csv('https://raw.githubusercontent.com/dataprofessor/data/master/penguins_cleaned.csv')

df
