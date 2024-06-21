import streamlit as st
import pandas as pd

def main():
    st.write('Primeira página')
    if st.button('Segunda página'):
        segunda_pagina()

def segunda_pagina():
    st.write('Segunda página')

main()
