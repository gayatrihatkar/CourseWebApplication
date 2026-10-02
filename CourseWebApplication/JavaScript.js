document.getElementById("quizForm").addEventListener("submit", function (event) {
    event.preventDefault();

    const answers = {
        q1: 'c',
        q2: 'c',
        q3: 'b',
        q4: 'a',
        q5: 'd',
        q6: 'b',
        q7: 'c',
        q8: 'a',
        q9: 'd',
        q10: 'b',
        q11: 'c',
        q12: 'a',
        q13: 'a',
        q14: 'b',
        q15: 'd',
        q16: 'c',
        q17: 'b',
        q18: 'a',
        q19: 'd',
        q20: 'c',
    };

    let score = 0;
    const totalQuestions = Object.keys(answers).length;

    for (const [question, answer] of Object.entries(answers)) {
        const userAnswer = document.querySelector(`input[name="${question}"]:checked`);
        if (userAnswer && userAnswer.value === answer) {
            score++;
        }
    }

    const result = document.getElementById("result");
    result.innerHTML = `You scored ${score} out of ${totalQuestions}.`;
});