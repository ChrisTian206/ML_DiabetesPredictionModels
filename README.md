# ML_DiabetesPredictionModels
<ul>
  <li>Data Source and Description: "https://www.kaggle.com/datasets/mathchi/diabetes-data-set"</li>
</ul>
<hr>
<h2> Data Info </h2>
  <ul>
    <li>Pregnancies: Number of times pregnant </li>
    <li>Glucose: Plasma glucose concentration a 2 hours in an oral glucose tolerance test </li>
    <li>Blood Pressure: Diastolic blood pressure (mm Hg) </li>
    <li>Insulin: 2-hour serum insulin (mu U/ml) </li>
    <li>BMI: Body mass index (weight in kg/(height in m)^2) </li>
    <li>Diabetes Pedigree Function: diabetes pedigree function </li>
    <li>Age: age (years) </li>
    <li>Outcome: 1 = positive, 0 = negative </li>
  </ul>

<h2> Data Imbalance </h2>
  <p>
  The outcome variable has 500 negative and 268 positive. In the machine
learning models used in this project, counter measures such as SMOTE were
used in the k nearest neighbor model, random forest model, elastic net model
and gradient boosting method. And class weight assigning method was used in
the ANN model.
  </p>
<h2> Model Results </h2>
<table>
  <tr>
    <td>&nbsp;</td>
    <td>Recall</td>
    <td>Precision</td>
    <td>F1</td>
    <td>Mean AUC</td>
    <td>Max AUC</td>
  </tr>
  <tr>
    <td>KNN</td>
    <td>0.7358</td>
    <td>0.600</td>
    <td>0.661</td>
    <td>0.7895</td>
    <td>0.8716</td>
  </tr>
  <tr>
    <td>RF</td>
    <td>0.6038</td>
    <td>0.6809</td>
    <td>0.640</td>
    <td>0.8131</td>
    <td>0.8940</td>
  </tr>
  <tr>
    <td>ENet</td>
    <td>0.6604</td>
    <td>0.6034</td>
    <td>0.6305</td>
    <td>0.8332</td>
    <td>0.9045</td>
  </tr>
  <tr>
    <td>GBM</td>
    <td>0.7170</td>
    <td>0.6441</td>
    <td>0.6786</td>
    <td>0.8358</td>
    <td>0.9022</td>
  </tr>
    <tr>
    <td>ANN</td>
    <td>0.5849</td>
    <td>0.6458</td>
    <td>0.6139</td>
    <td colspan="2">0.8257</td>
  </tr>
</table>
