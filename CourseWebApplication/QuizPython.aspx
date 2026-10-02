<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QuizPython.aspx.cs" Inherits="CourseWebApplication.QuizPython" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <title>Python Quiz</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .quiz-container {
            max-width: 600px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="quiz-container">
            <h1>Python Quiz</h1>

            <div>
                <p>1. What file extension is used for Python files?</p>
                <asp:RadioButtonList ID="q1" runat="server">
                    <asp:ListItem Value="a">.py</asp:ListItem>
                    <asp:ListItem Value="b">.txt</asp:ListItem>
                    <asp:ListItem Value="c">.doc</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>2. Which keyword is used to define a function in Python?</p>
                <asp:RadioButtonList ID="q2" runat="server">
                    <asp:ListItem Value="a">class</asp:ListItem>
                    <asp:ListItem Value="b">method</asp:ListItem>
                    <asp:ListItem Value="c">def</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>3. What is the output of 8 // 3 in Python?</p>
                <asp:RadioButtonList ID="q3" runat="server">
                    <asp:ListItem Value="a">2.666</asp:ListItem>
                    <asp:ListItem Value="b">3</asp:ListItem>
                    <asp:ListItem Value="c">2</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>4. What data type is used to store a list of items in Python?</p>
                <asp:RadioButtonList ID="q4" runat="server">
                    <asp:ListItem Value="a">array</asp:ListItem>
                    <asp:ListItem Value="b">list</asp:ListItem>
                    <asp:ListItem Value="c">set</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>5. How do you create a comment in Python?</p>
                <asp:RadioButtonList ID="q5" runat="server">
                    <asp:ListItem Value="a">// This is a comment</asp:ListItem>
                    <asp:ListItem Value="b"># This is a comment</asp:ListItem>
                    <asp:ListItem Value="c">/* This is a comment */</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>6. What is the output of len([1, 2, 3])?</p>
                <asp:RadioButtonList ID="q6" runat="server">
                    <asp:ListItem Value="a">3</asp:ListItem>
                    <asp:ListItem Value="b">2</asp:ListItem>
                    <asp:ListItem Value="c">None</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>7. How do you create a tuple in Python?</p>
                <asp:RadioButtonList ID="q7" runat="server">
                    <asp:ListItem Value="a">[]</asp:ListItem>
                    <asp:ListItem Value="b">()</asp:ListItem>
                    <asp:ListItem Value="c">{}</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>8. Which of the following is not a Python data type?</p>
                <asp:RadioButtonList ID="q8" runat="server">
                    <asp:ListItem Value="a">List</asp:ListItem>
                    <asp:ListItem Value="b">Dictionary</asp:ListItem>
                    <asp:ListItem Value="c">Object</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>9. Which keyword is used to handle exceptions in Python?</p>
                <asp:RadioButtonList ID="q9" runat="server">
                    <asp:ListItem Value="a">try</asp:ListItem>
                    <asp:ListItem Value="b">catch</asp:ListItem>
                    <asp:ListItem Value="c">finally</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>10. What is the output of print(type([]))?</p>
                <asp:RadioButtonList ID="q10" runat="server">
                    <asp:ListItem Value="a"><class 'list'></asp:ListItem>
                    <asp:ListItem Value="b"><class 'dict'></asp:ListItem>
                    <asp:ListItem Value="c"><class 'set'></asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>11. How do you import a module in Python?</p>
                <asp:RadioButtonList ID="q11" runat="server">
                    <asp:ListItem Value="a">import module_name</asp:ListItem>
                    <asp:ListItem Value="b">include module_name</asp:ListItem>
                    <asp:ListItem Value="c">require module_name</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>12. What is the output of 5 + 3 * 2?</p>
                <asp:RadioButtonList ID="q12" runat="server">
                    <asp:ListItem Value="a">16</asp:ListItem>
                    <asp:ListItem Value="b">11</asp:ListItem>
                    <asp:ListItem Value="c">10</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>13. What does the 'pass' statement do?</p>
                <asp:RadioButtonList ID="q13" runat="server">
                    <asp:ListItem Value="a">Ends the program</asp:ListItem>
                    <asp:ListItem Value="b">Does nothing</asp:ListItem>
                    <asp:ListItem Value="c">Throws an error</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>14. Which of the following is a valid variable name in Python?</p>
                <asp:RadioButtonList ID="q14" runat="server">
                    <asp:ListItem Value="a">my-variable</asp:ListItem>
                    <asp:ListItem Value="b">my_variable</asp:ListItem>
                    <asp:ListItem Value="c">my variable</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>15. How do you define a class in Python?</p>
                <asp:RadioButtonList ID="q15" runat="server">
                    <asp:ListItem Value="a">class MyClass:</asp:ListItem>
                    <asp:ListItem Value="b">define MyClass:</asp:ListItem>
                    <asp:ListItem Value="c">class MyClass()</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>16. Which method is used to add an item to a list?</p>
                <asp:RadioButtonList ID="q16" runat="server">
                    <asp:ListItem Value="a">add()</asp:ListItem>
                    <asp:ListItem Value="b">append()</asp:ListItem>
                    <asp:ListItem Value="c">insert()</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>17. What is a lambda function?</p>
                <asp:RadioButtonList ID="q17" runat="server">
                    <asp:ListItem Value="a">A named function</asp:ListItem>
                    <asp:ListItem Value="b">An anonymous function</asp:ListItem>
                    <asp:ListItem Value="c">A built-in function</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>18. What is the correct way to handle an exception?</p>
                <asp:RadioButtonList ID="q18" runat="server">
                    <asp:ListItem Value="a">try-catch</asp:ListItem>
                    <asp:ListItem Value="b">try-except</asp:ListItem>
                    <asp:ListItem Value="c">catch-except</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>19. What is the purpose of 'self' in a class?</p>
                <asp:RadioButtonList ID="q19" runat="server">
                    <asp:ListItem Value="a">Refers to the instance of the class</asp:ListItem>
                    <asp:ListItem Value="b">Refers to the parent class</asp:ListItem>
                    <asp:ListItem Value="c">Refers to the module</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>20. How do you create a dictionary in Python?</p>
                <asp:RadioButtonList ID="q20" runat="server">
                    <asp:ListItem Value="a">{}</asp:ListItem>
                    <asp:ListItem Value="b">[]</asp:ListItem>
                    <asp:ListItem Value="c">()</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
            <br />
            <asp:Label ID="resultLabel" runat="server" Text="" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>


