<%@ Page Language="C#" AutoEventWireup="true" CodeFile="javaquiz.aspx.cs" Inherits="CourseWebApplication.javaquiz" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Java Language Quiz</title>
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
        <h1>Java Language Quiz</h1>
        <form id="quizForm" runat="server">
            <div>
                <p>1. What is the correct syntax to declare a variable in Java?</p>
                <asp:RadioButtonList ID="q1" runat="server">
                    <asp:ListItem Value="a">int x;</asp:ListItem>
                    <asp:ListItem Value="b">x int;</asp:ListItem>
                    <asp:ListItem Value="c">var x:int;</asp:ListItem>
                    <asp:ListItem Value="d">float x;</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>2. Which of the following is a valid method declaration in Java?</p>
                <asp:RadioButtonList ID="q2" runat="server">
                    <asp:ListItem Value="a">public void myMethod</asp:ListItem>
                    <asp:ListItem Value="b">void myMethod()</asp:ListItem>
                    <asp:ListItem Value="c">void myMethod[]</asp:ListItem>
                    <asp:ListItem Value="d">public myMethod()</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>3. What is the main method's signature in Java?</p>
                <asp:RadioButtonList ID="q3" runat="server">
                    <asp:ListItem Value="a">public static void main(String args[])</asp:ListItem>
                    <asp:ListItem Value="b">public void main(String[] args)</asp:ListItem>
                    <asp:ListItem Value="c">static void main(String args)</asp:ListItem>
                    <asp:ListItem Value="d">public static void main(String[] args)</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>4. Which of the following is not a Java primitive type?</p>
                <asp:RadioButtonList ID="q4" runat="server">
                    <asp:ListItem Value="a">int</asp:ListItem>
                    <asp:ListItem Value="b">float</asp:ListItem>
                    <asp:ListItem Value="c">String</asp:ListItem>
                    <asp:ListItem Value="d">char</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>5. What is the output of the following code: System.out.println(10 + 20 + "30");?</p>
                <asp:RadioButtonList ID="q5" runat="server">
                    <asp:ListItem Value="a">30</asp:ListItem>
                    <asp:ListItem Value="b">102030</asp:ListItem>
                    <asp:ListItem Value="c">1030</asp:ListItem>
                    <asp:ListItem Value="d">Error</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>6. Which of the following is used to create an object in Java?</p>
                <asp:RadioButtonList ID="q6" runat="server">
                    <asp:ListItem Value="a">create</asp:ListItem>
                    <asp:ListItem Value="b">new</asp:ListItem>
                    <asp:ListItem Value="c">class</asp:ListItem>
                    <asp:ListItem Value="d">init</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>7. What does JVM stand for?</p>
                <asp:RadioButtonList ID="q7" runat="server">
                    <asp:ListItem Value="a">Java Variable Machine</asp:ListItem>
                    <asp:ListItem Value="b">Java Virtual Machine</asp:ListItem>
                    <asp:ListItem Value="c">Java Version Machine</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>8. Which of the following is the correct way to declare an array in Java?</p>
                <asp:RadioButtonList ID="q8" runat="server">
                    <asp:ListItem Value="a">int arr[];</asp:ListItem>
                    <asp:ListItem Value="b">int[] arr;</asp:ListItem>
                    <asp:ListItem Value="c">int arr{};</asp:ListItem>
                    <asp:ListItem Value="d">Both a and b</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>9. What is the default value of a boolean variable in Java?</p>
                <asp:RadioButtonList ID="q9" runat="server">
                    <asp:ListItem Value="a">true</asp:ListItem>
                    <asp:ListItem Value="b">false</asp:ListItem>
                    <asp:ListItem Value="c">0</asp:ListItem>
                    <asp:ListItem Value="d">null</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>10. Which of the following is a keyword in Java?</p>
                <asp:RadioButtonList ID="q10" runat="server">
                    <asp:ListItem Value="a">method</asp:ListItem>
                    <asp:ListItem Value="b">void</asp:ListItem>
                    <asp:ListItem Value="c">function</asp:ListItem>
                    <asp:ListItem Value="d">none of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>11. What is the output of System.out.println(5 + 10 + "15");?</p>
                <asp:RadioButtonList ID="q11" runat="server">
                    <asp:ListItem Value="a">1510</asp:ListItem>
                    <asp:ListItem Value="b">15</asp:ListItem>
                    <asp:ListItem Value="c">510</asp:ListItem>
                    <asp:ListItem Value="d">Error</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>12. Which of the following statements is true about constructors in Java?</p>
                <asp:RadioButtonList ID="q12" runat="server">
                    <asp:ListItem Value="a">A constructor must have the same name as the class.</asp:ListItem>
                    <asp:ListItem Value="b">Constructors can return values.</asp:ListItem>
                    <asp:ListItem Value="c">Constructors can be overloaded.</asp:ListItem>
                    <asp:ListItem Value="d">Both a and c</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>13. Which of the following is used to handle exceptions in Java?</p>
                <asp:RadioButtonList ID="q13" runat="server">
                    <asp:ListItem Value="a">try...catch</asp:ListItem>
                    <asp:ListItem Value="b">catch...finally</asp:ListItem>
                    <asp:ListItem Value="c">throw...try</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>14. What is the use of the 'super' keyword in Java?</p>
                <asp:RadioButtonList ID="q14" runat="server">
                    <asp:ListItem Value="a">To call parent class methods</asp:ListItem>
                    <asp:ListItem Value="b">To create a new instance</asp:ListItem>
                    <asp:ListItem Value="c">To call the current class method</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>15. What is a Java package?</p>
                <asp:RadioButtonList ID="q15" runat="server">
                    <asp:ListItem Value="a">A namespace for organizing classes</asp:ListItem>
                    <asp:ListItem Value="b">A type of variable</asp:ListItem>
                    <asp:ListItem Value="c">A method</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>16. How do you create a thread in Java?</p>
                <asp:RadioButtonList ID="q16" runat="server">
                    <asp:ListItem Value="a">By implementing Runnable interface</asp:ListItem>
                    <asp:ListItem Value="b">By extending the Thread class</asp:ListItem>
                    <asp:ListItem Value="c">Both a and b</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>17. Which of the following is not a valid access modifier in Java?</p>
                <asp:RadioButtonList ID="q17" runat="server">
                    <asp:ListItem Value="a">private</asp:ListItem>
                    <asp:ListItem Value="b">protected</asp:ListItem>
                    <asp:ListItem Value="c">internal</asp:ListItem>
                    <asp:ListItem Value="d">public</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>18. What is the purpose of the 'static' keyword in Java?</p>
                <asp:RadioButtonList ID="q18" runat="server">
                    <asp:ListItem Value="a">To define a class variable</asp:ListItem>
                    <asp:ListItem Value="b">To define a method that can be called without creating an instance</asp:ListItem>
                    <asp:ListItem Value="c">Both a and b</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>19. Which of the following is true about arrays in Java?</p>
                <asp:RadioButtonList ID="q19" runat="server">
                    <asp:ListItem Value="a">Arrays are fixed in size.</asp:ListItem>
                    <asp:ListItem Value="b">Arrays can hold different data types.</asp:ListItem>
                    <asp:ListItem Value="c">Arrays can only hold objects.</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>20. What is the result of the following expression: 10 > 5 && 5 < 10?</p>
                <asp:RadioButtonList ID="q20" runat="server">
                    <asp:ListItem Value="a">true</asp:ListItem>
                    <asp:ListItem Value="b">false</asp:ListItem>
                    <asp:ListItem Value="c">Error</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
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

