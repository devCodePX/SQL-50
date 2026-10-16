CREATE TABLE Sheet1(select VARCHAR(10));
INSERT INTO Sheet1 (select) VALUES 
('case'),
('    when id%2 = 0 then id-1'),
('    when id%2 = 1 then '),
('        case'),
('        when (select max(id) from Seat) != id then id+1'),
('        else id'),
('        End '),
('End as id, student'),
('from Seat'),
('order by id;');