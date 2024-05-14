select COUNT(*) from innings;

select COUNT(*) from matches;

select * from innings;

select * from matches;

drop table matches;

-- No of matches per season


select Season, count(distinct id) NO_of_Matches from
(
select YEAR(date) Season, id from matches
) a
group by season;

----Season No_of_Matches
--2008	58
--2009	57
--2010	60
--2011	73
--2012	74
--2013	76
--2014	60
--2015	59
--2016	60
--2017	59
--2018	60
--2019	60
--2020	60

--Most Player of Match (POM)

select player_of_match, count(player_of_match) Most_POM from matches
Group by player_of_match
order by MOST_POM desc ;


----AB de Villiers	23
----CH Gayle	22
----RG Sharma	18
----DA Warner	17
----MS Dhoni	17
----SR Watson	16
----YK Pathan	16
----SK Raina	14
----V Kohli	13
----G Gambhir	13
----AM Rahane	12
----MEK Hussey	12
----KA Pollard	11
----AD Russell	11
----A Mishra	11
----DR Smith	11
----V Sehwag	11
----AT Rayudu	10
----JH Kallis	10
----SE Marsh	9
----SP Narine	9
----RA Jadeja	9
----Rashid Khan	8
----S Dhawan	8
----SR Tendulkar	8
----UT Yadav	8
----Harbhajan Singh	8
----AC Gilchrist	7
----KL Rahul	7
----SV Samson	7
----RV Uthappa	7
----RR Pant	6
----SL Malinga	6
----Sandeep Sharma	6
----JJ Bumrah	6
----JC Buttler	6
----M Vijay	6
----A Nehra	6
----BJ Hodge	6
----HH Pandya	6
----DW Steyn	5
----GJ Maxwell	5
----DPMD Jayawardene	5
----BA Stokes	5
----BB McCullum	5
----AR Patel	5
----B Kumar	5
----AJ Finch	5
----MK Pandey	5
----JD Unadkat	5
----JP Faulkner	5
----KC Sangakkara	5
----KD Karthik	5
----SA Yadav	5
----SC Ganguly	5
----SPD Smith	5
----SS Iyer	5
----PA Patel	5
----Yuvraj Singh	5
----WP Saha	4
----MP Stoinis	4
----TA Boult	4
----SK Warne	4
----KH Pandya	4
----KS Williamson	4
----JP Duminy	4
----ML Hayden	4
----N Rana	4
----NA	4
----NM Coulter-Nile	4
----CA Lynn	4
----F du Plessis	4
----DA Miller	3
----DJ Bravo	3
----CJ Anderson	3
----A Kumble	3
----A Symonds	3
----MK Tiwary	3
----M Vohra	3
----LMP Simmons	3
----LRPL Taylor	3
----Mandeep Singh	3
----JM Bairstow	3
----KK Nair	3
----KP Pietersen	3
----L Balaji	3
----PP Chawla	3
----Q de Kock	3
----R Ashwin	3
----RD Gaikwad	3
----R Vinay Kumar	3
----YS Chahal	3
----VR Aaron	2
----MV Boucher	2
----R Sharma	2
----RA Tripathi	2
----R Dravid	2
----PP Shaw	2
----PV Tambe	2
----P Kumar	2
----P Negi	2
----PC Valthaty	2
----Shubman Gill	2
----SK Trivedi	2
----Shakib Al Hasan	2
----S Gopal	2
----S Nadeem	2
----ST Jayasuriya	2
----Sohail Tanvir	2
----SM Pollock	2
----LH Ferguson	2
----KM Jadhav	2
----JA Morkel	2
----Iqbal Abdulla	2
----Ishan Kishan	2
----MC Henriques	2
----M Morkel	2
----M Muralitharan	2
----M Ntini	2
----MG Johnson	2
----MA Agarwal	2
----MJ McClenaghan	2
----Mohammed Siraj	2
----MM Patel	2
----MM Sharma	2
----A Nortje	2
----AJ Tye	2
----AB Dinda	2
----AS Rajpoot	2
----BW Hilfenhaus	2
----Azhar Mahmood	2
----B Lee	2
----DE Bollinger	2
----CH Morris	2
----DJ Hussey	2
----GH Vihari	2
----GC Smith	2
----HM Amla	2
----HV Patel	2
----I Sharma	2
----IK Pathan	2
----Harmeet Singh	2
----HF Gurney	1
----HH Gibbs	1
----Imran Tahir	1
----GD McGrath	1
----EJG Morgan	1
----GJ Bailey	1
----DJG Sammy	1
----DL Chahar	1
----DL Vettori	1
----DP Nannes	1
----DJ Hooda	1
----CJ Jordan	1
----CL White	1
----CR Brathwaite	1
----CRD Fernando	1
----CV Varun	1
----B Stanlake	1
----BA Bhatt	1
----AS Joseph	1
----AP Tare	1
----BCJ Cutting	1
----AC Voges	1
----AD Mascarenhas	1
----AD Mathews	1
----A Singh	1
----A Zampa	1
----AA Jhunjhunwala	1
----A Chandila	1
----MN Samuels	1
----Mohammed Shami	1
----NV Ojha	1
----MS Gony	1
----Mujeeb Ur Rahman	1
----Mustafizur Rahman	1
----MA Starc	1
----M Kartik	1
----LR Shukla	1
----MJ Lumb	1
----MF Maharoof	1
----MD Mishra	1
----J Botha	1
----J Theron	1
----JC Archer	1
----JD Ryder	1
----K Rabada	1
----JDP Oram	1
----JEC Franklin	1
----JJ Roy	1
----KMA Paul	1
----KMDN Kulasekara	1
----KK Ahmed	1
--KK Cooper	1
--LJ Wright	1
--L Ngidi	1
--Kuldeep Yadav	1
--KV Sharma	1
--SO Hetmyer	1
--SM Curran	1
--SM Katich	1
--SP Goswami	1
--SW Billings	1
--TG Southee	1
--TL Suman	1
--TM Dilshan	1
--Umar Gul	1
--S Sohal	1
--S Sreesanth	1
--SA Asnodkar	1
--SB Jakati	1
--SB Wagh	1
--Shivam Mavi	1
--Shoaib Akhtar	1
--PD Collingwood	1
--PJ Cummins	1
--PK Garg	1
--P Parameswaran	1
--MR Marsh	1
--MS Bisla	1
--PP Ojha	1
--R McLaren	1
--R Bhatia	1
--RE Levi	1
--R Tewatia	1
--RS Bopara	1
--RJ Harris	1
--RP Singh	1
--S Anirudha	1
--S Aravind	1
--S Badrinath	1
--Washington Sundar	1
--WPUJC Vaas	1
--Z Khan	1

--Most POM per season


select * from matches;

select * from (
select player_of_match, Saal, Most_POM, rank() over(partition by saal order by Most_POM desc) rnk from 
(
select player_of_match,YEAR(date) Saal, count(player_of_match) Most_POM from matches
Group by player_of_match, YEAR(date)

)a)b
where rnk = 1;


--player_of_match Saal Most_POM rank
--SE Marsh	2008	5	1
--YK Pathan	2009	3	1
--SR Tendulkar	2010	4	1
--CH Gayle	2011	6	1
--CH Gayle	2012	5	1
--MEK Hussey	2013	5	1
--GJ Maxwell	2014	4	1
--DA Warner	2015	4	1
--V Kohli	2016	5	1
--BA Stokes	2017	3	1
--NM Coulter-Nile	2017	3	1
--Rashid Khan	2018	4	1
--AD Russell	2019	4	1
--AB de Villiers	2020	3	1
--RD Gaikwad	2020	3	1
--KL Rahul	2020	3	1
--TA Boult	2020	3	1

--Most wins by teams

select * from matches;

select winner, COUNT(winner) No_Of_Wins from matches
group by winner
Order by No_Of_Wins desc ;

--winner      No_Of_Wins
--Mumbai Indians	120
--Chennai Super Kings	106
--Kolkata Knight Riders	99
--Royal Challengers Bangalore	91
--Kings XI Punjab	88
--Rajasthan Royals	81
--Delhi Daredevils	67
--Sunrisers Hyderabad	66
--Deccan Chargers	29
--Delhi Capitals	19
--Gujarat Lions	13
--Pune Warriors	12
--Rising Pune Supergiant	10
--Kochi Tuskers Kerala	6
--Rising Pune Supergiants	5
--NA	4

--Top 5 venues for matches

select Top 5 venue, COUNT(venue) No_Of_Matches_Played from matches
group by venue
Order by No_Of_Matches_Played desc ;

--venue    No_Of_Matches_Played
--Eden Gardens	77
--Feroz Shah Kotla	74
--Wankhede Stadium	73
--M Chinnaswamy Stadium	65
--Rajiv Gandhi International Stadium, Uppal	64

--Most Runs by Batsman

select * from innings;

select Top 20 Batsman, SUM(total_runs) Runs_scored from innings
group by batsman
order by runs_scored desc;

--Batsman      Runs_scored
--V Kohli	6081
--SK Raina	5604
--DA Warner	5522
--S Dhawan	5452
--RG Sharma	5394
--CH Gayle	5103
--AB de Villiers	5016
--RV Uthappa	4878
--MS Dhoni	4855
--G Gambhir	4479
--AM Rahane	4104
--SR Watson	4036
--KD Karthik	3996
--AT Rayudu	3798
--MK Pandey	3418
--YK Pathan	3367
--KA Pollard	3188
--BB McCullum	3099
--PA Patel	3041
--V Sehwag	2915

--Total runs scored in ipl, % of runs scored by each batsman 

select * from innings;

select SUM(total_runs) Total_runs from innings;

--Total_runs
--252794

select SUM(total_runs) Runs_scored from
(
select Batsman, SUM(total_runs) Total_runs from innings
group by batsman

) a
group by batsman
order by runs_scored desc;



select *, round(Total_runs/sum(Total_runs) over(order by Total_runs rows between unbounded preceding and unbounded following),4)*100 runs_scored from
(
select Batsman, SUM(total_runs) Total_runs from innings
group by batsman
)a
order by Total_runs desc;

--Most sixes by any player

select * from innings;


select Top 10 batsman, COUNT(batsman_runs) Most_sixes  from innings
where batsman_runs = 6 
group by batsman
order by Most_sixes desc;

--batsman     Most_sixes
--CH Gayle	349
--AB de Villiers	235
--MS Dhoni	216
--RG Sharma	214
--V Kohli	202
--KA Pollard	198
--DA Warner	195
--SK Raina	194
--SR Watson	190
--RV Uthappa	163

--Most fours by any player

select * from innings;

select Top 10 batsman, COUNT(batsman_runs) Most_fours  from innings
where batsman_runs = 4
group by batsman
order by Most_fours desc;

--batsman     Most_fours
--S Dhawan	591
--DA Warner	510
--V Kohli	504
--SK Raina	493
--G Gambhir	492
--RG Sharma	458
--RV Uthappa	454
--AM Rahane	416
--AB de Villiers	390
--CH Gayle	384

select Top 10 batsman, COUNT(batsman_runs) Most_sixes  from innings
where batsman_runs = 6 
group by batsman
having batsman = 'ML Hayden'
order by Most_sixes desc;

--ML Hayden	44

--highest strike rate with 3000 runs

select * from innings;


select Top 10 batsman, Runs_scored, round((Runs_scored/Balls_Faced)*100,2) strike_rate from
(
select batsman, sum(batsman_runs) Runs_scored, COUNT(batsman_runs) Balls_Faced  from innings
group by batsman
)a
where runs_scored > 3000
order by strike_rate desc

--batsman      Runs_scored   strike_rate
--AB de Villiers	4849	148.56
--KA Pollard	3023	143.47
--CH Gayle	4772	142.79
--DA Warner	5254	137.58
--YK Pathan	3204	137.51
--SR Watson	3874	134.14
--SK Raina	5368	132.84
--MS Dhoni	4632	132.61
--RG Sharma	5230	127.94
--V Kohli	5878	127.53

--Lowest Economy for a bowler with atleast 50 overs bowled

select * from innings;

select top 10 bowler, Overs_bowled, round(Runs_given/Overs_bowled,2) Economy from
(
select bowler, COUNT(bowler)/6 Overs_bowled, SUM(total_runs) Runs_given from innings
group by bowler
 )a
where Overs_bowled >50
order by Economy  asc

--bowler   Overs_bowled    Economy
--Rashid Khan	248	6.34
--A Kumble	163	6.68
--M Muralitharan	262	6.7
--GD McGrath	54	6.78
--R Ashwin	554	6.78
--DW Steyn	379	6.78
--SP Narine	470	6.83
--RE van der Merwe	75	6.87
--DL Vettori	130	6.88
--Washington Sundar	110	6.89

--Total Matches played until 2020

select * from matches;

select year(date) , count(venue) No_of_Matches from matches

select distinct No_of_Year from(
select year(date) No_of_Year from matches) a
order by No_of_Year ;


select winner, COUNT(winner) No_of_Matches from matches
group by winner
order by No_of_Matches desc ;

--winner   No_of_Matches
--Mumbai Indians	120
--Chennai Super Kings	106
--Kolkata Knight Riders	99
--Royal Challengers Bangalore	91
--Kings XI Punjab	88
--Rajasthan Royals	81
--Delhi Daredevils	67
--Sunrisers Hyderabad	66
--Deccan Chargers	29
--Delhi Capitals	19
--Gujarat Lions	13
--Pune Warriors	12
--Rising Pune Supergiant	10
--Kochi Tuskers Kerala	6
--Rising Pune Supergiants	5
--NA	4