<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuizAI.aspx.cs" Inherits="CourseWebApplication.QuizAI" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>AI Quiz</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f4; }
        .quiz-container { max-width: 600px; margin: auto; background: #fff; padding: 20px; border-radius: 5px; }
        button { background-color: #28a745; color: white; border: none; padding: 10px 15px; border-radius: 5px; cursor: pointer; }
        button:hover { background-color: #218838; }
        .result { margin-top: 20px; font-size: 18px; }
    </style>
</head>
<body>
    <div class="quiz-container">
        <h1>AI Quiz</h1>
        <form id="quizForm" runat="server">
            <div>
                <p>1. What is AI?</p>
                <asp:RadioButtonList ID="q1" runat="server">
                    <asp:ListItem Value="a">Artificial Intelligence</asp:ListItem>
                    <asp:ListItem Value="b">Artificial Invention</asp:ListItem>
                    <asp:ListItem Value="c">Automatic Instruction</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>2. What does machine learning focus on?</p>
                <asp:RadioButtonList ID="q2" runat="server">
                    <asp:ListItem Value="a">Programming</asp:ListItem>
                    <asp:ListItem Value="b">Data Analysis</asp:ListItem>
                    <asp:ListItem Value="c">Data Collection</asp:ListItem>
                    <asp:ListItem Value="d">All of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>3. What is a neural network?</p>
                <asp:RadioButtonList ID="q3" runat="server">
                    <asp:ListItem Value="a">A type of algorithm</asp:ListItem>
                    <asp:ListItem Value="b">A biological brain</asp:ListItem>
                    <asp:ListItem Value="c">A data structure</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>4. Which of the following is a programming language used in AI?</p>
                <asp:RadioButtonList ID="q4" runat="server">
                    <asp:ListItem Value="a">Python</asp:ListItem>
                    <asp:ListItem Value="b">C++</asp:ListItem>
                    <asp:ListItem Value="c">Java</asp:ListItem>
                    <asp:ListItem Value="d">All of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>5. What is supervised learning?</p>
                <asp:RadioButtonList ID="q5" runat="server">
                    <asp:ListItem Value="a">Learning with labels</asp:ListItem>
                    <asp:ListItem Value="b">Learning without labels</asp:ListItem>
                    <asp:ListItem Value="c">Learning by doing</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>6. What is unsupervised learning?</p>
                <asp:RadioButtonList ID="q6" runat="server">
                    <asp:ListItem Value="a">Learning with labels</asp:ListItem>
                    <asp:ListItem Value="b">Finding patterns in data</asp:ListItem>
                    <asp:ListItem Value="c">Learning by reinforcement</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>7. Which of the following is an application of AI?</p>
                <asp:RadioButtonList ID="q7" runat="server">
                    <asp:ListItem Value="a">Recommendation systems</asp:ListItem>
                    <asp:ListItem Value="b">Image recognition</asp:ListItem>
                    <asp:ListItem Value="c">Natural language processing</asp:ListItem>
                    <asp:ListItem Value="d">All of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>8. What is deep learning?</p>
                <asp:RadioButtonList ID="q8" runat="server">
                    <asp:ListItem Value="a">A subset of machine learning</asp:ListItem>
                    <asp:ListItem Value="b">A type of neural network</asp:ListItem>
                    <asp:ListItem Value="c">Both A and B</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>9. What does AI stand for?</p>
                <asp:RadioButtonList ID="q9" runat="server">
                    <asp:ListItem Value="a">Automated Intelligence</asp:ListItem>
                    <asp:ListItem Value="b">Artificial Intelligence</asp:ListItem>
                    <asp:ListItem Value="c">Artificial Interference</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>10. What is the Turing Test?</p>
                <asp:RadioButtonList ID="q10" runat="server">
                    <asp:ListItem Value="a">A test for human intelligence</asp:ListItem>
                    <asp:ListItem Value="b">A test for AI</asp:ListItem>
                    <asp:ListItem Value="c">A programming test</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>11. What is natural language processing (NLP)?</p>
                <asp:RadioButtonList ID="q11" runat="server">
                    <asp:ListItem Value="a">Understanding human language</asp:ListItem>
                    <asp:ListItem Value="b">Generating human language</asp:ListItem>
                    <asp:ListItem Value="c">Both A and B</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>12. Which of the following is NOT an AI technology?</p>
                <asp:RadioButtonList ID="q12" runat="server">
                    <asp:ListItem Value="a">Machine learning</asp:ListItem>
                    <asp:ListItem Value="b">Deep learning</asp:ListItem>
                    <asp:ListItem Value="c">Statistical analysis</asp:ListItem>
                    <asp:ListItem Value="d">Database management</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>13. What is reinforcement learning?</p>
                <asp:RadioButtonList ID="q13" runat="server">
                    <asp:ListItem Value="a">Learning from rewards</asp:ListItem>
                    <asp:ListItem Value="b">Learning from mistakes</asp:ListItem>
                    <asp:ListItem Value="c">Learning from supervision</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>14. Which of the following is a common use of AI?</p>
                <asp:RadioButtonList ID="q14" runat="server">
                    <asp:ListItem Value="a">Predictive analytics</asp:ListItem>
                    <asp:ListItem Value="b">Data mining</asp:ListItem>
                    <asp:ListItem Value="c">Customer service chatbots</asp:ListItem>
                    <asp:ListItem Value="d">All of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>15. What is a chatbot?</p>
                <asp:RadioButtonList ID="q15" runat="server">
                    <asp:ListItem Value="a">A human customer service representative</asp:ListItem>
                    <asp:ListItem Value="b">An AI program that simulates conversation</asp:ListItem>
                    <asp:ListItem Value="c">A type of software bug</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>16. What is a common dataset used in AI?</p>
                <asp:RadioButtonList ID="q16" runat="server">
                    <asp:ListItem Value="a">CIFAR-10</asp:ListItem>
                    <asp:ListItem Value="b">MNIST</asp:ListItem>
                    <asp:ListItem Value="c">ImageNet</asp:ListItem>
                    <asp:ListItem Value="d">All of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>17. Which of the following is a feature of deep learning?</p>
                <asp:RadioButtonList ID="q17" runat="server">
                    <asp:ListItem Value="a">Layered architecture</asp:ListItem>
                    <asp:ListItem Value="b">High computational power</asp:ListItem>
                    <asp:ListItem Value="c">Ability to learn from unstructured data</asp:ListItem>
                    <asp:ListItem Value="d">All of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>18. What does 'big data' refer to?</p>
                <asp:RadioButtonList ID="q18" runat="server">
                    <asp:ListItem Value="a">Large volumes of data</asp:ListItem>
                    <asp:ListItem Value="b">High velocity of data processing</asp:ListItem>
                    <asp:ListItem Value="c">Diverse types of data</asp:ListItem>
                    <asp:ListItem Value="d">All of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>19. What is a common challenge in AI?</p>
                <asp:RadioButtonList ID="q19" runat="server">
                    <asp:ListItem Value="a">Data bias</asp:ListItem>
                    <asp:ListItem Value="b">Lack of transparency</asp:ListItem>
                    <asp:ListItem Value="c">High computational costs</asp:ListItem>
                    <asp:ListItem Value="d">All of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>20. What is a common application of AI?</p>
                <asp:RadioButtonList ID="q20" runat="server">
                    <asp:ListItem Value="a">Self-driving cars</asp:ListItem>
                    <asp:ListItem Value="b">Spam detection</asp:ListItem>
                    <asp:ListItem Value="c">Virtual assistants</asp:ListItem>
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

