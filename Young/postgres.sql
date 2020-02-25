DROP TABLE business_info
;
CREATE TABLE business_info
(
    business_id character varying COLLATE pg_catalog."default" NOT NULL,
    business_name character varying COLLATE pg_catalog."default",
    city character varying COLLATE pg_catalog."default",
    state character varying COLLATE pg_catalog."default",
    review_count integer ,
    stars numeric,
    CONSTRAINT business_info_pkey PRIMARY KEY (business_id)
)
drop table business_review
;
create table business_review
(
	business_id character varying COLLATE pg_catalog."default" NOT NULL,
    one_star numeric,
	two_star numeric,
	three_star numeric,
	four_star numeric,
	five_star numeric
)
;

select A.business_name,A.city,A.state,
(B.one_star + B.two_star + B.three_star + B.four_star + B.five_star) Total_Reviews
from business_info A
inner join business_review B on A.business_id = B.business_id
order by total_reviews desc
limit 10
;

select count(*) from business_info
;

select count(*) from business_review
;
