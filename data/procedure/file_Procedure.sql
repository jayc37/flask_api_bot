DELIMITER //
-- Procedure lấy dữ liệu bệnh nhân
CREATE PROCEDURE proc_insert_dulieubenhnhan_vietnam(
 mabenhnhan varchar(20),ngaynhiem varchar(20),  gioitinh varchar(10), quoctich varchar(60), 
 tinhtrang varchar(20),madulieu varchar(60), idbenhnhan varchar(20),ref text,
datungotrung varchar(10),onuocngoai varchar(10), 
 mabenhvien varchar(100),tenthanhpho varchar(60),tuoi varchar(20))
BEGIN
START TRANSACTION;
	INSERT INTO dulieubenhnhan(mabenhnhan,ngaynhiem,gioitinh,quoctich,tinhtrang,madulieu) values(mabenhnhan, ngaynhiem,gioitinh,quoctich,tinhtrang,madulieu);
	INSERT INTO chitietdulieubenhnhan(mabenhnhan,idbenhnhan,ngaynhiem,gioitinh,maquocgia,tinhtrang,ref,datungotrungquoc,datungonuocngoai,mabenhvien,tuoi) 
    values(mabenhnhan,idbenhnhan, ngaynhiem, gioitinh, quoctich,tinhtrang, ref,datungotrung,onuocngoai,mabenhvien,tuoi);
    COMMIT;
END//
DELIMITER ;

-- procedure lấy dữ liệu bệnh viện
DELIMITER //
CREATE PROCEDURE proc_insert_dulieubenhvien_vietnam(
mabenhvien varchar(100), tenbenhvien varchar(100), maloaibenhvien varchar(20), tentp varchar(100))
BEGIN
	declare mattp varchar(100);
    SELECT matp into mattp from tinhthanhpho where tinhthanhpho.tenthanhpho like tentp;
    if exists(select mabenhvien from benhvien where benhvien.mabenhvien = mabenhvien)
    then
    SIGNAL SQLSTATE '45000'
 	SET MESSAGE_TEXT = 'Đã tồn tại ma benh vien';
    else
	START TRANSACTION;
	INSERT INTO benhvien(mabenhvien,tenbenhvien,maloaibenhvien,matinhthanhpho) 
    values(mabenhvien, tenbenhvien,maloaibenhvien,mattp);
	COMMIT;
    end if;
END//
DELIMITER ;
-- procedure delete dữ liệu bệnh nhân
DELIMITER //
CREATE PROCEDURE proc_delete_dulieubenhnhan()
BEGIN
START TRANSACTION;
   delete from benhvien where maloaibenhvien = '%%';
	delete from dulieubenhnhan where madulieu = 'dlbnvn';
	delete from quocgia where makhuvuc = 'VN';
	delete from quocgia where makhuvuc = 'TG';
	delete from chitietdulieubenhnhan where tinhtrang = 'Đang điều trị';
	delete from chitietdulieubenhnhan where tinhtrang = 'Đã xuất viện';
COMMIT;
END//
DELIMITER ;

-- procedure dữ liệu thống kê.
DELIMITER //
CREATE PROCEDURE proc_insert_dulieuthongkevietnam(
 matp varchar(100),tentinhthanhpho varchar(100),maquocgia varchar(20),tenquocgia varchar(100),madltk varchar(100),ngaycn date,
 tongcases varchar(20),tongdeath varchar(20),tonghoiphuc varchar(20), dangdieutri varchar(20),
 dangnguykich varchar(20),nhiemmoi varchar(20), chetmoi varchar(20), hoiphucmoi varchar(20))
BEGIN
START TRANSACTION;
-- 	INSERT INTO quocgia(maquocgia,tenquocgia) values (maquocgia,tenquocgia);
    INSERT INTO tinhthanhpho(matp,tenthanhpho,maquocgia) values(matp, tentinhthanhpho,maquocgia);
-- 	INSERT INTO dulieuthongke(madulieuthongke,ngaythangcapnhat,maquocgia,tongtruonghop,tongchet,tonghoiphuc,dangdieutri,dangnguykich)
--     values(madltk,ngaycn,maquocgia,tongcases,tongdeath,tonghoiphuc,dangdieutri,dangnguykich);
	INSERT INTO chitietdulieuthongke(madulieuthongke,tongtruonghop,truonghopmoi,tongchet,chetmoi,tonghoiphuc,hoiphucmoi,dangdieutri,dangnguykich,matp) 
    values(madltk, tongcases, nhiemmoi, tongdeath,chetmoi, tonghoiphuc,hoiphucmoi,dangdieutri,dangnguykich,matp);
COMMIT;
END//
DELIMITER ;
-- procedure lấy dữ liệu thống kê thế giới
DELIMITER //
CREATE PROCEDURE proc_insert_dulieuthongkethegioi(
 matp varchar(100),tentinhthanhpho varchar(100),maquocgia varchar(20),tenquocgia varchar(100),madltk varchar(100),ngaycn date,
 tongcases varchar(20),tongdeath varchar(20),tonghoiphuc varchar(20), dangdieutri varchar(20),
 dangnguykich varchar(20),nhiemmoi varchar(20), chetmoi varchar(20), hoiphucmoi varchar(20))
BEGIN
START TRANSACTION;
 	INSERT INTO quocgia(maquocgia,tenquocgia) values (maquocgia,tenquocgia);
    -- INSERT INTO tinhthanhpho(matp,tenthanhpho,maquocgia) values(matp, tentinhthanhpho,maquocgia);
	INSERT INTO dulieuthongke(madulieuthongke,ngaythangcapnhat,maquocgia,tongtruonghop,tongchet,tonghoiphuc,dangdieutri,dangnguykich)
    values(madltk,ngaycn,maquocgia,tongcases,tongdeath,tonghoiphuc,dangdieutri,dangnguykich);
	-- INSERT INTO chitietdulieuthongke(madulieuthongke,tongtruonghop,truonghopmoi,tongchet,chetmoi,tonghoiphuc,hoiphucmoi,dangdieutri,dangnguykich,matp) 
    -- values(madltk, tongcases, nhiemmoi, tongdeath,chetmoi, tonghoiphuc,hoiphucmoi,dangdieutri,dangnguykich,matp);
COMMIT;
END//
DELIMITER ;
-- procedure delete
DELIMITER //
CREATE PROCEDURE proc_delete_dulieuthongkethegioi()
BEGIN
START TRANSACTION;
delete from dulieuthongke where maquocgia like '%%';
delete from chitietdulieuthongke where matp like '%%';
delete from quocgia where maquocgia like '%%';
delete from tinhthanhpho where matp like '%%';
COMMIT;
END//
DELIMITER ;
-- getdulieubenhnhan
DELIMITER //
CREATE PROCEDURE proc_getbenhnhan(
sex varchar(10),dotuoi varchar(20),mabv varchar(100),matp varchar(100),tinhtrang varchar(10),thoigian varchar(20),idbenhnhan varchar(20)
)
BEGIN
START TRANSACTION;
	IF EXISTS (select gioitinh from dulieubenhnhan where gioitinh like sex)
    THEN
		SELECT a.mabenhnhan as 'Bệnh nhân',a.tinhtrang as'Tình trạng',b.tuoi as 'Tuổi',
        a.gioitinh as 'Giới tính', c.tenbenhvien as 'Tên bệnh viện',d.tenthanhpho as 'Tên thành phố'
		FROM dulieubenhnhan a,chitietdulieubenhnhan b, benhvien c,tinhthanhpho d
		WHERE a.mabenhnhan = b.mabenhnhan 
        and  b.mabenhvien = c.mabenhvien
        and c.matinhthanhpho = d.matp
        and b.gioitinh like sex
		and b.tuoi like dotuoi
        and b.mabenhvien like mabv
        and c.matinhthanhpho like matp
        and a.tinhtrang like tinhtrang
        and a.ngaynhiem like thoigian
        and b.idbenhnhan like idbenhnhan;
    ELSE
    SIGNAL SQLSTATE '45000'
 	SET MESSAGE_TEXT = 'Kiểm tra lại string mô tả thuộc tính';
    END IF;
COMMIT;
END//
DELIMITER ;
call proc_getbenhnhan('%%','%%','%%','%%','%%','%%','%%');


-- getdulieuthegioi
DELIMITER //
CREATE PROCEDURE proc_getdltktg(
	maqg varchar(20)
)
BEGIN
START TRANSACTION;
	IF EXISTS (select maquocgia from quocgia where quocgia.maquocgia like maqg)
    THEN
		SELECT a.tenquocgia,b.tongtruonghop,b.tongchet,b.tonghoiphuc,b.dangdieutri,b.dangnguykich
        FROM QUOCGIA a ,DULIEUTHONGKE b
        where a.maquocgia like maqg
        and b.maquocgia like maqg;
    ELSE
    SIGNAL SQLSTATE '45000'
 	SET MESSAGE_TEXT = 'Kiểm tra lại ma quoc gia';
    END IF;
COMMIT;
END//
DELIMITER ;

-- getdulieuthongkevietnam

DELIMITER //
CREATE PROCEDURE proc_getdltkvn(
	matpho varchar(100)
)
BEGIN
START TRANSACTION;
	IF EXISTS (select matp from tinhthanhpho where tinhthanhpho.matp like matpho)
    THEN
		SELECT a.tenthanhpho,b.tongtruonghop,b.truonghopmoi,b.tongchet,b.tonghoiphuc,b.dangdieutri
        FROM tinhthanhpho a ,chitietdulieuthongke b
        where a.matp like matpho
        and b.matp like matpho;
    ELSE
    SIGNAL SQLSTATE '45000'
 	SET MESSAGE_TEXT = 'Kiểm tra lại ma thanh pho';
    END IF;
COMMIT;
END//
DELIMITER ;
DELIMITER //
CREATE PROCEDURE proce_gettotalchar12country(
)
BEGIN
START TRANSACTION;
select b.tenquocgia, a.tongtruonghop, a.tongchet,a.tonghoiphuc from dulieuthongke a, quocgia b where a.maquocgia = b.maquocgia and a.madulieuthongke in ( select madulieuthongke from dulieuthongke where madulieuthongke = 'usadltk' or madulieuthongke = 'brazildltk' or  madulieuthongke = 'russiadltk' or madulieuthongke = 'indiadltk' or madulieuthongke = 'UKdltk' or madulieuthongke = 'spaindltk'or madulieuthongke = 'perudltk' or madulieuthongke = 'chiledltk' or madulieuthongke = 'italydltk' 
or madulieuthongke = 'irandltk' or madulieuthongke = 'germarydltk' or madulieuthongke = 'turkeydltk');
select a.tongtruonghop, a.tonghoiphuc, b.tenthanhpho from chitietdulieuthongke a,tinhthanhpho b where a.matp = b.matp and a.matp in (select matp from tinhthanhpho where tenthanhpho in ('Hà Nội','TP Hồ Chí Minh','Thái Bình','Bạc Liêu','Vĩnh Phúc','Ninh Bình'));

COMMIT;
END//
DELIMITER ;
DELIMITER //
CREATE PROCEDURE proc_vietnammuonnam(
)
BEGIN
START TRANSACTION;
select a.tongtruonghop, a.tonghoiphuc, b.tenthanhpho from chitietdulieuthongke a,tinhthanhpho b where a.matp = b.matp and a.matp in (select matp from tinhthanhpho 
where tenthanhpho in ('Hà Nội','TP Hồ Chí Minh','Thái Bình','Bạc Liêu','Vĩnh Phúc','Ninh Bình'));
COMMIT;
END//
DELIMITER ;




