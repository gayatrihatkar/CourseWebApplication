<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cppquiz.aspx.cs" Inherits="CourseWebApplication.cppquiz" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>C++ Language Quiz</title>
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
        <h1>C++ Language Quiz</h1>
        <form id="quizForm" runat="server">
            <div>
                <p>1. Which of the following is the correct syntax to include a header file in C++?</p>
                <asp:RadioButtonList ID="q1" runat="server">
                    <asp:ListItem Value="a">#include <iostream></asp:ListItem>
                    <asp:ListItem Value="b">include <iostream></asp:ListItem>
                    <asp:ListItem Value="c">#include iostream</asp:ListItem>
                    <asp:ListItem Value="d">#import <iostream></asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>2. What is the size of int data type in C++?</p>
                <asp:RadioButtonList ID="q2" runat="server">
                    <asp:ListItem Value="a">2 bytes</asp:ListItem>
                    <asp:ListItem Value="b">4 bytes</asp:ListItem>
                    <asp:ListItem Value="c">8 bytes</asp:ListItem>
                    <asp:ListItem Value="d">Depends on the compiler</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>3. Which of the following is used to declare a constant in C++?</p>
                <asp:RadioButtonList ID="q3" runat="server">
                    <asp:ListItem Value="a">const int x = 10;</asp:ListItem>
                    <asp:ListItem Value="b">define x 10</asp:ListItem>
                    <asp:ListItem Value="c">constant int x = 10;</asp:ListItem>
                    <asp:ListItem Value="d">const x = 10;</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>4. What is the output of the following code: <code>std::cout << (5 + 3) * 2;</code>?</p>
                <asp:RadioButtonList ID="q4" runat="server">
                    <asp:ListItem Value="a">16</asp:ListItem>
                    <asp:ListItem Value="b">8</asp:ListItem>
                    <asp:ListItem Value="c">10</asp:ListItem>
                    <asp:ListItem Value="d">Error</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>5. Which operator is used to access a member of a class in C++?</p>
                <asp:RadioButtonList ID="q5" runat="server">
                    <asp:ListItem Value="a">.</asp:ListItem>
                    <asp:ListItem Value="b">-></asp:ListItem>
                    <asp:ListItem Value="c">Both a and b</asp:ListItem>
                    <asp:ListItem Value="d">::</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>6. What is a class in C++?</p>
                <asp:RadioButtonList ID="q6" runat="server">
                    <asp:ListItem Value="a">A blueprint for creating objects</asp:ListItem>
                    <asp:ListItem Value="b">A type of variable</asp:ListItem>
                    <asp:ListItem Value="c">A function</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>7. Which of the following keywords is used for inheritance in C++?</p>
                <asp:RadioButtonList ID="q7" runat="server">
                    <asp:ListItem Value="a">inherits</asp:ListItem>
                    <asp:ListItem Value="b">extends</asp:ListItem>
                    <asp:ListItem Value="c">class</asp:ListItem>
                    <asp:ListItem Value="d">public</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>8. What is the purpose of the <code>new</code> keyword in C++?</p>
                <asp:RadioButtonList ID="q8" runat="server">
                    <asp:ListItem Value="a">To allocate memory dynamically</asp:ListItem>
                    <asp:ListItem Value="b">To create a new instance of a class</asp:ListItem>
                    <asp:ListItem Value="c">Both a and b</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>9. Which of the following is not a valid C++ data type?</p>
                <asp:RadioButtonList ID="q9" runat="server">
                    <asp:ListItem Value="a">int</asp:ListItem>
                    <asp:ListItem Value="b">float</asp:ListItem>
                    <asp:ListItem Value="c">string</asp:ListItem>
                    <asp:ListItem Value="d">char</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>10. What is a destructor in C++?</p>
                <asp:RadioButtonList ID="q10" runat="server">
                    <asp:ListItem Value="a">A function that is called when an object is created</asp:ListItem>
                    <asp:ListItem Value="b">A function that is called when an object is destroyed</asp:ListItem>
                    <asp:ListItem Value="c">A type of constructor</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>11. Which of the following is used for comments in C++?</p>
                <asp:RadioButtonList ID="q11" runat="server">
                    <asp:ListItem Value="a">// Comment</asp:ListItem>
                    <asp:ListItem Value="b">/* Comment */</asp:ListItem>
                    <asp:ListItem Value="c">Both a and b</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>12. What will be the output of <code>std::cout << "Hello" << 5 + 5;</code>?</p>
                <asp:RadioButtonList ID="q12" runat="server">
                    <asp:ListItem Value="a">Hello55</asp:ListItem>
                    <asp:ListItem Value="b">Hello10</asp:ListItem>
                    <asp:ListItem Value="c">Error</asp:ListItem>
                    <asp:ListItem Value="d">Hello 10</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>13. What is the correct way to declare a pointer in C++?</p>
                <asp:RadioButtonList ID="q13" runat="server">
                    <asp:ListItem Value="a">int *p;</asp:ListItem>
                    <asp:ListItem Value="b">int p;</asp:ListItem>
                    <asp:ListItem Value="c">pointer int p;</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>14. What does the keyword <code>virtual</code> indicate in C++?</p>
                <asp:RadioButtonList ID="q14" runat="server">
                    <asp:ListItem Value="a">The function can be overridden</asp:ListItem>
                    <asp:ListItem Value="b">The function cannot be overridden</asp:ListItem>
                    <asp:ListItem Value="c">The function is static</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>15. Which of the following is the correct way to define a function in C++?</p>
                <asp:RadioButtonList ID="q15" runat="server">
                    <asp:ListItem Value="a">void functionName()</asp:ListItem>
                    <asp:ListItem Value="b">functionName() void</asp:ListItem>
                    <asp:ListItem Value="c">void functionName</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>16. What is the purpose of the <code>friend</code> keyword in C++?</p>
                <asp:RadioButtonList ID="q16" runat="server">
                    <asp:ListItem Value="a">To allow access to private members</asp:ListItem>
                    <asp:ListItem Value="b">To create a new class</asp:ListItem>
                    <asp:ListItem Value="c">To define a function</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>17. Which of the following is the correct way to create a constructor in C++?</p>
                <asp:RadioButtonList ID="q17" runat="server">
                    <asp:ListItem Value="a">ClassName()</asp:ListItem>
                    <asp:ListItem Value="b">void ClassName()</asp:ListItem>
                    <asp:ListItem Value="c">ClassName() void</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>18. What does the <code>sizeof</code> operator do in C++?</p>
                <asp:RadioButtonList ID="q18" runat="server">
                    <asp:ListItem Value="a">Returns the size of a variable</asp:ListItem>
                    <asp:ListItem Value="b">Returns the size of a data type</asp:ListItem>
                    <asp:ListItem Value="c">Both a and b</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>19. Which of the following is true about C++?</p>
                <asp:RadioButtonList ID="q19" runat="server">
                    <asp:ListItem Value="a">C++ is a procedural programming language.</asp:ListItem>
                    <asp:ListItem Value="b">C++ is an object-oriented programming language.</asp:ListItem>
                    <asp:ListItem Value="c">C++ supports both procedural and object-oriented programming.</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>20. What is a pure virtual function in C++?</p>
                <asp:RadioButtonList ID="q20" runat="server">
                    <asp:ListItem Value="a">A function with no implementation</asp:ListItem>
                    <asp:ListItem Value="b">A function that is implemented</asp:ListItem>
                    <asp:ListItem Value="c">A function declared with the keyword virtual</asp:ListItem>
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
