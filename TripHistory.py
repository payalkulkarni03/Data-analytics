import pandas as pd
from sklearn.model_selection import train_test_split
data = pd.read_csv("/home/chinmay/Desktop/DA Pracs/Trip History Data/201808-capitalbikeshare-tripdata.csv")
#print data.head()
y = data['Member type']
X = data.drop(['Member type','Start date','End date','Start station','End station','Bike number'], axis=1)
X_train, X_test, y_train, y_test = train_test_split(X, y,test_size=0.2)
#print "\nX_train:\n"
#print(X_train.head())
#print X_train.shape
#print "\nX_test:\n"
#print(X_test.head())
#print X_test.shape
from sklearn.tree import DecisionTreeClassifier  
classifier = DecisionTreeClassifier()  
classifier.fit(X_train, y_train)  
y_pred = classifier.predict(X_test)  
from sklearn.metrics import classification_report, confusion_matrix  
print(confusion_matrix(y_test, y_pred))  
print(classification_report(y_test, y_pred))  
