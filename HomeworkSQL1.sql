SELECT
    Name = CASE 
        WHEN Grade >= 8 THEN Name
        ELSE NULL
    END , 
    G.Grade, 
    S.Marks
FROM Students S
LEFT JOIN Grades G
    ON S.Marks BETWEEN G.Min_Mark AND G.Max_Mark
ORDER BY  
     G.Grade DESC, S.Name, S.Marks