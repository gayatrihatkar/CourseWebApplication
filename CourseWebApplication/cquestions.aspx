<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cquestions.aspx.cs" Inherits="CourseWebApplication.cquestions" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>C Language Quiz</title>
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
        <h1>C Language Quiz</h1>
        <form id="quizForm" runat="server">
            <div>
                <p>1. What is the correct file extension for C language source files?</p>
                <asp:RadioButtonList ID="q1" runat="server">
                    <asp:ListItem Value="a">.c</asp:ListItem>
                    <asp:ListItem Value="b">.cpp</asp:ListItem>
                    <asp:ListItem Value="c">.txt</asp:ListItem>
                    <asp:ListItem Value="d">.java</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>2. Which of the following is a valid variable declaration in C?</p>
                <asp:RadioButtonList ID="q2" runat="server">
                    <asp:ListItem Value="a">int 1num;</asp:ListItem>
                    <asp:ListItem Value="b">float num1;</asp:ListItem>
                    <asp:ListItem Value="c">char# name;</asp:ListItem>
                    <asp:ListItem Value="d">string name;</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>3. Which of the following operators has the highest precedence?</p>
                <asp:RadioButtonList ID="q3" runat="server">
                    <asp:ListItem Value="a">+</asp:ListItem>
                    <asp:ListItem Value="b">-</asp:ListItem>
                    <asp:ListItem Value="c">*</asp:ListItem>
                    <asp:ListItem Value="d">/</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>4. What is the output of the following code: printf("%d", 10 + 20);?</p>
                <asp:RadioButtonList ID="q4" runat="server">
                    <asp:ListItem Value="a">1020</asp:ListItem>
                    <asp:ListItem Value="b">30</asp:ListItem>
                    <asp:ListItem Value="c">Error</asp:ListItem>
                    <asp:ListItem Value="d">10 + 20</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>5. How do you declare a constant in C?</p>
                <asp:RadioButtonList ID="q5" runat="server">
                    <asp:ListItem Value="a">const int x;</asp:ListItem>
                    <asp:ListItem Value="b">define x;</asp:ListItem>
                    <asp:ListItem Value="c">static int x;</asp:ListItem>
                    <asp:ListItem Value="d">int x = const;</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>6. Which of the following is a loop structure in C?</p>
                <asp:RadioButtonList ID="q6" runat="server">
                    <asp:ListItem Value="a">if</asp:ListItem>
                    <asp:ListItem Value="b">for</asp:ListItem>
                    <asp:ListItem Value="c">switch</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>7. What is the size of an int variable in C?</p>
                <asp:RadioButtonList ID="q7" runat="server">
                    <asp:ListItem Value="a">1 byte</asp:ListItem>
                    <asp:ListItem Value="b">2 bytes</asp:ListItem>
                    <asp:ListItem Value="c">4 bytes</asp:ListItem>
                    <asp:ListItem Value="d">8 bytes</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>8. Which function is used to read a string from the user in C?</p>
                <asp:RadioButtonList ID="q8" runat="server">
                    <asp:ListItem Value="a">gets()</asp:ListItem>
                    <asp:ListItem Value="b">scanf()</asp:ListItem>
                    <asp:ListItem Value="c">printf()</asp:ListItem>
                    <asp:ListItem Value="d">fgets()</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>9. What does the break statement do?</p>
                <asp:RadioButtonList ID="q9" runat="server">
                    <asp:ListItem Value="a">Exits a loop</asp:ListItem>
                    <asp:ListItem Value="b">Ends a function</asp:ListItem>
                    <asp:ListItem Value="c">Continues the next iteration</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>10. What is the correct way to include a header file in C?</p>
                <asp:RadioButtonList ID="q10" runat="server">
                    <asp:ListItem Value="a">#include "header.h"</asp:ListItem>
                    <asp:ListItem Value="b">import header.h</asp:ListItem>
                    <asp:ListItem Value="c">#include <header.h></asp:ListItem>
                    <asp:ListItem Value="d">Both a and c</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>11. Which of the following is NOT a valid C data type?</p>
                <asp:RadioButtonList ID="q11" runat="server">
                    <asp:ListItem Value="a">int</asp:ListItem>
                    <asp:ListItem Value="b">float</asp:ListItem>
                    <asp:ListItem Value="c">decimal</asp:ListItem>
                    <asp:ListItem Value="d">char</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>12. What is the purpose of the return statement in a function?</p>
                <asp:RadioButtonList ID="q12" runat="server">
                    <asp:ListItem Value="a">To end the program</asp:ListItem>
                    <asp:ListItem Value="b">To return a value to the calling function</asp:ListItem>
                    <asp:ListItem Value="c">To declare a function</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>13. Which of the following is used to allocate memory dynamically?</p>
                <asp:RadioButtonList ID="q13" runat="server">
                    <asp:ListItem Value="a">malloc()</asp:ListItem>
                    <asp:ListItem Value="b">calloc()</asp:ListItem>
                    <asp:ListItem Value="c">free()</asp:ListItem>
                    <asp:ListItem Value="d">Both a and b</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>14. What is the output of this code: printf("%d", 5 == 5);?</p>
                <asp:RadioButtonList ID="q14" runat="server">
                    <asp:ListItem Value="a">1</asp:ListItem>
                    <asp:ListItem Value="b">0</asp:ListItem>
                    <asp:ListItem Value="c">Error</asp:ListItem>
                    <asp:ListItem Value="d">true</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>15. How are strings represented in C?</p>
                <asp:RadioButtonList ID="q15" runat="server">
                    <asp:ListItem Value="a">Array of characters</asp:ListItem>
                    <asp:ListItem Value="b">Pointer to a character</asp:ListItem>
                    <asp:ListItem Value="c">Both a and b</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>16. Which function is used to find the length of a string?</p>
                <asp:RadioButtonList ID="q16" runat="server">
                    <asp:ListItem Value="a">strlen()</asp:ListItem>
                    <asp:ListItem Value="b">strlength()</asp:ListItem>
                    <asp:ListItem Value="c">length()</asp:ListItem>
                    <asp:ListItem Value="d">count()</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>17. What is the main function in C?</p>
                <asp:RadioButtonList ID="q17" runat="server">
                    <asp:ListItem Value="a">void main()</asp:ListItem>
                    <asp:ListItem Value="b">int main()</asp:ListItem>
                    <asp:ListItem Value="c">Both a and b</asp:ListItem>
                    <asp:ListItem Value="d">main()</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>18. Which of the following is used to comment in C?</p>
                <asp:RadioButtonList ID="q18" runat="server">
                    <asp:ListItem Value="a">/* comment */</asp:ListItem>
                    <asp:ListItem Value="b">// comment</asp:ListItem>
                    <asp:ListItem Value="c"># comment</asp:ListItem>
                    <asp:ListItem Value="d">Both a and b</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>19. What does the sizeof operator do?</p>
                <asp:RadioButtonList ID="q19" runat="server">
                    <asp:ListItem Value="a">Returns the size of a variable</asp:ListItem>
                    <asp:ListItem Value="b">Returns the size of a data type</asp:ListItem>
                    <asp:ListItem Value="c">Both a and b</asp:ListItem>
                    <asp:ListItem Value="d">None of the above</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <p>20. Which of the following is used to include standard libraries in C?</p>
                <asp:RadioButtonList ID="q20" runat="server">
                    <asp:ListItem Value="a">#include</asp:ListItem>
                    <asp:ListItem Value="b">#import</asp:ListItem>
                    <asp:ListItem Value="c">#define</asp:ListItem>
                    <asp:ListItem Value="d">#lib</asp:ListItem>
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
