<%@ Page Language="C#" AutoEventWireup="true" CodeFile="datascience.aspx.cs" Inherits="CourseWebApplication.datascience" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Data Science Language Quiz</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f4; }
        .quiz-container { max-width: 600px; margin: auto; background: #fff; padding: 20px; border-radius: 5px; }
        button { background-color: #007bff; color: white; border: none; padding: 10px 15px; border-radius: 5px; cursor: pointer; }
        button:hover { background-color: #0056b3; }
        .result { margin-top: 20px; font-size: 18px; }
    </style>
</head>
<body>
    <div class="quiz-container">
        <h1>Data Science Language Quiz</h1>
        <form id="quizForm" runat="server">
            <div>
                <p>1. Which language is commonly used for Data Science?</p>
                <asp:RadioButtonList ID="q1" runat="server">
                    <asp:ListItem Value="a">Python</asp:ListItem>
                    <asp:ListItem Value="b">Java</asp:ListItem>
                    <asp:ListItem Value="c">C++</asp:ListItem>
                    <asp:ListItem Value="d">All of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>2. Which library is used for data manipulation in Python?</p>
                <asp:RadioButtonList ID="q2" runat="server">
                    <asp:ListItem Value="a">NumPy</asp:ListItem>
                    <asp:ListItem Value="b">Pandas</asp:ListItem>
                    <asp:ListItem Value="c">Matplotlib</asp:ListItem>
                    <asp:ListItem Value="d">Seaborn</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>3. What is the purpose of the 'fit' method in machine learning?</p>
                <asp:RadioButtonList ID="q3" runat="server">
                    <asp:ListItem Value="a">To evaluate the model</asp:ListItem>
                    <asp:ListItem Value="b">To train the model</asp:ListItem>
                    <asp:ListItem Value="c">To predict outcomes</asp:ListItem>
                    <asp:ListItem Value="d">To preprocess data</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>4. Which of the following is a Python library for data visualization?</p>
                <asp:RadioButtonList ID="q4" runat="server">
                    <asp:ListItem Value="a">Scikit-learn</asp:ListItem>
                    <asp:ListItem Value="b">TensorFlow</asp:ListItem>
                    <asp:ListItem Value="c">Matplotlib</asp:ListItem>
                    <asp:ListItem Value="d">NumPy</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>5. What does 'overfitting' mean in machine learning?</p>
                <asp:RadioButtonList ID="q5" runat="server">
                    <asp:ListItem Value="a">The model performs well on training data but poorly on unseen data</asp:ListItem>
                    <asp:ListItem Value="b">The model performs poorly on training data</asp:ListItem>
                    <asp:ListItem Value="c">The model has too few parameters</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>6. Which of the following is an unsupervised learning algorithm?</p>
                <asp:RadioButtonList ID="q6" runat="server">
                    <asp:ListItem Value="a">Linear Regression</asp:ListItem>
                    <asp:ListItem Value="b">K-Means Clustering</asp:ListItem>
                    <asp:ListItem Value="c">Decision Trees</asp:ListItem>
                    <asp:ListItem Value="d">Support Vector Machines</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>7. What does 'Pandas' stand for in data analysis?</p>
                <asp:RadioButtonList ID="q7" runat="server">
                    <asp:ListItem Value="a">Pandas are cute animals</asp:ListItem>
                    <asp:ListItem Value="b">Panel Data</asp:ListItem>
                    <asp:ListItem Value="c">Data Analysis</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>8. Which function is used to read a CSV file in Pandas?</p>
                <asp:RadioButtonList ID="q8" runat="server">
                    <asp:ListItem Value="a">read_csv()</asp:ListItem>
                    <asp:ListItem Value="b">load_csv()</asp:ListItem>
                    <asp:ListItem Value="c">import_csv()</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>9. What is the purpose of the 'drop' function in Pandas?</p>
                <asp:RadioButtonList ID="q9" runat="server">
                    <asp:ListItem Value="a">To remove columns or rows from a DataFrame</asp:ListItem>
                    <asp:ListItem Value="b">To rename columns</asp:ListItem>
                    <asp:ListItem Value="c">To filter data</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>10. What is the difference between supervised and unsupervised learning?</p>
                <asp:RadioButtonList ID="q10" runat="server">
                    <asp:ListItem Value="a">Supervised learning uses labeled data, while unsupervised does not</asp:ListItem>
                    <asp:ListItem Value="b">Unsupervised learning is always better than supervised</asp:ListItem>
                    <asp:ListItem Value="c">There is no difference</asp:ListItem>
                    <asp:ListItem Value="d">Supervised learning is faster</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>11. Which of the following is not a type of machine learning?</p>
                <asp:RadioButtonList ID="q11" runat="server">
                    <asp:ListItem Value="a">Supervised Learning</asp:ListItem>
                    <asp:ListItem Value="b">Unsupervised Learning</asp:ListItem>
                    <asp:ListItem Value="c">Reinforcement Learning</asp:ListItem>
                    <asp:ListItem Value="d">Static Learning</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>12. Which library is primarily used for deep learning in Python?</p>
                <asp:RadioButtonList ID="q12" runat="server">
                    <asp:ListItem Value="a">Scikit-learn</asp:ListItem>
                    <asp:ListItem Value="b">TensorFlow</asp:ListItem>
                    <asp:ListItem Value="c">Pandas</asp:ListItem>
                    <asp:ListItem Value="d">NumPy</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>13. What is feature engineering?</p>
                <asp:RadioButtonList ID="q13" runat="server">
                    <asp:ListItem Value="a">The process of selecting features for model training</asp:ListItem>
                    <asp:ListItem Value="b">Creating new features from existing data</asp:ListItem>
                    <asp:ListItem Value="c">Both a and b</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>14. Which algorithm is commonly used for classification tasks?</p>
                <asp:RadioButtonList ID="q14" runat="server">
                    <asp:ListItem Value="a">K-Means Clustering</asp:ListItem>
                    <asp:ListItem Value="b">Linear Regression</asp:ListItem>
                    <asp:ListItem Value="c">Logistic Regression</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>15. What is the purpose of cross-validation?</p>
                <asp:RadioButtonList ID="q15" runat="server">
                    <asp:ListItem Value="a">To optimize the model's parameters</asp:ListItem>
                    <asp:ListItem Value="b">To evaluate the model's performance</asp:ListItem>
                    <asp:ListItem Value="c">To reduce overfitting</asp:ListItem>
                    <asp:ListItem Value="d">All of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>16. What does the term 'normalization' refer to?</p>
                <asp:RadioButtonList ID="q16" runat="server">
                    <asp:ListItem Value="a">Scaling data to a specific range</asp:ListItem>
                    <asp:ListItem Value="b">Removing outliers from data</asp:ListItem>
                    <asp:ListItem Value="c">Converting categorical data to numerical data</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>17. Which of the following is a common evaluation metric for regression models?</p>
                <asp:RadioButtonList ID="q17" runat="server">
                    <asp:ListItem Value="a">Accuracy</asp:ListItem>
                    <asp:ListItem Value="b">Mean Squared Error</asp:ListItem>
                    <asp:ListItem Value="c">F1 Score</asp:ListItem>
                    <asp:ListItem Value="d">Recall</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>18. What does 'bias' refer to in machine learning?</p>
                <asp:RadioButtonList ID="q18" runat="server">
                    <asp:ListItem Value="a">A systematic error introduced by approximating a real-world problem</asp:ListItem>
                    <asp:ListItem Value="b">Random error in predictions</asp:ListItem>
                    <asp:ListItem Value="c">Data quality issues</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>19. What is the purpose of a confusion matrix?</p>
                <asp:RadioButtonList ID="q19" runat="server">
                    <asp:ListItem Value="a">To visualize the performance of a classification model</asp:ListItem>
                    <asp:ListItem Value="b">To optimize model parameters</asp:ListItem>
                    <asp:ListItem Value="c">To summarize the results of regression analysis</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>20. Which of the following is a popular Python library for web scraping?</p>
                <asp:RadioButtonList ID="q20" runat="server">
                    <asp:ListItem Value="a">BeautifulSoup</asp:ListItem>
                    <asp:ListItem Value="b">Selenium</asp:ListItem>
                    <asp:ListItem Value="c">Scrapy</asp:ListItem>
                    <asp:ListItem Value="d">All of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <br />
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
            </div>
            <br />
            <asp:Label ID="resultLabel" runat="server" Text="" CssClass="result"></asp:Label>
        </form>
    </div>
</body>
</html>
