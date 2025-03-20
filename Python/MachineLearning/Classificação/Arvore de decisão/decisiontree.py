import graphviz
import pandas as pd
from sklearn.metrics import (
    accuracy_score,
    classification_report,
    f1_score,
    precision_score,
    recall_score,
)
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder
from sklearn.tree import DecisionTreeClassifier, export_graphviz

"""## Importa o banco de dados"""

base = pd.read_csv("insurance.csv")

"""## Elimina os dados NaN dos dados"""

base = base.dropna()
base

"""## Dropa a coluna Unnamed: 0"""

base = base.drop("Unnamed: 0", axis=1)
base

"""## Define a variavel dependente e as independentes"""

y = base.iloc[:, 7].values
X = base.iloc[
    :,
    [
        0,
        1,
        2,
        3,
        4,
        5,
        6,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24,
        25,
        26,
    ],
].values

"""## Encodifica os dados"""

labelencoder = LabelEncoder()

for i in range(X.shape[1]):
    if X[:, i].dtype == "object":
        X[:, i] = labelencoder.fit_transform(X[:, i])

"""## Separa os dados para treinamento e teste"""

# X idependentes
# y dependente
X_treinamento, X_teste, y_treinamento, y_teste = train_test_split(
    X, y, test_size=0.3, random_state=1
)

"""## Cira o modelo de arvore de decisão"""

# Modelo sem poda: Acuracia: 0.81, precisão: 0.81, Recall: 0.81, F1: 0.81
# modelo = DecisionTreeClassifier(random_state=1)
# Primeira poda: Acuracia: 0.85, precisão: 0.85, Recall: 0.85, F1: 0.85
# modelo = DecisionTreeClassifier(random_state=1, max_depth=8)
# Segunda poda: Acuracia: 0.86, precisão: 0.86, Recall: 0.86, F1: 0.86

modelo = DecisionTreeClassifier(random_state=1, max_depth=8, max_leaf_nodes=8)
modelo.fit(X_treinamento, y_treinamento)

"""### Visualização da Arvore"""

dot_data = export_graphviz(
    modelo,
    out_file=None,
    filled=True,
    feature_names=base.columns[:-1],
    class_names=True,
    rounded=True,
)
graph = graphviz.Source(dot_data)
graph.render("arvore_decisao", format="png")

"""## Testes"""

previsoes = modelo.predict(X_teste)

accuracy = accuracy_score(y_teste, previsoes)
precision = precision_score(y_teste, previsoes, average="weighted")
recall = recall_score(y_teste, previsoes, average="weighted")
f1 = f1_score(y_teste, previsoes, average="weighted")

print(f"Acuracia: {accuracy}, precisão: {precision}, Recall: {recall}, F1: {f1}")

report = classification_report(y_teste, previsoes)
print(report)
