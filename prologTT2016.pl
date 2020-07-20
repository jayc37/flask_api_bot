query(patients(Obj,Sex)) -->w_x,noun_n,object_n(Obj),sexual(Sex).
query(patients(Obj,Sex)) -->w_x,noun_n,object_n(Obj),iss,sexual(Sex).
query(patients(Obj,Sex)) -->noun_n,object_n(Obj),sexual(Sex).
query(patients(Obj,Sex)) -->howmany,object_n(Obj),nhiem,iss,sexual(Sex).
query(patients(Obj,Sex)) -->howmany,object_n(Obj),sexual(Sex),nhiem.
query(patients(Obj,Sex)) -->w_x,noun_n,object_n(Obj),sexual(Sex),nhiem.
query(patients(Obj,Sex)) -->w_x,howmany,object_n(Obj),nhiem,iss,sexual(Sex).

query(patients(Obj,Sex,Dotuoi)) -->w_x,noun_n,object_n(Obj),sexual(Sex),dotuoi(Dotuoi),age_b.
query(patients(Obj,Sex,Dotuoi)) -->noun_n,object_n(Obj),sexual(Sex),dotuoi(Dotuoi),age_b.
query(patients(Obj,Sex,Dotuoi)) -->w_x,noun_n,object_n(Obj),dotuoi(Dotuoi),age_b,iss,sexual(Sex).
query(patients(Obj,Sex,Dotuoi)) -->noun_n,object_n(Obj),dotuoi(Dotuoi),age_b,iss,sexual(Sex).

query(patients(Obj,Sex,Dotuoi,Benhvien)) -->w_x,noun_n,object_n(Obj),sexual(Sex),dotuoi(Dotuoi),age_b,noichon,benhvien_n,benhvien(Benhvien).
query(patients(Obj,Sex,Dotuoi,Benhvien)) -->noun_n,object_n(Obj),sexual(Sex),dotuoi(Dotuoi),age_b,noichon,benhvien_n,benhvien(Benhvien).
query(patients(Obj,Sex,Dotuoi,Benhvien)) -->noun_n,object_n(Obj),noichon,benhvien_n,benhvien(Benhvien),co,gtinh,sexual(Sex),dotuoi(Dotuoi),age_b.
query(patients(Obj,Sex,Dotuoi,Benhvien)) -->w_x,noun_n,object_n(Obj),sexual(Sex),dotuoi(Dotuoi),age_b,noichon,benhvien(Benhvien).
query(patients(Obj,Sex,Dotuoi,Benhvien)) -->noun_n,object_n(Obj),sexual(Sex),dotuoi(Dotuoi),age_b,noichon,benhvien(Benhvien).
query(patients(Obj,Sex,Dotuoi,Benhvien)) -->noun_n,object_n(Obj),noichon,benhvien(Benhvien),co,gtinh,sexual(Sex),dotuoi(Dotuoi),age_b.

query(patients(Obj,Sex,Tp)) -->w_x,noun_n,object_n(Obj),sexual(Sex),noichon,thanhpho(Tp).
query(patients(Obj,Sex,Tp)) -->noun_n,object_n(Obj),sexual(Sex),noichon,thanhpho(Tp).

query(patients(Obj,Sex,Tinhtrang)) -->w_x,noun_n,object_n(Obj),sexual(Sex),tt(Tinhtrang).
query(patients(Obj,Sex,Tinhtrang)) -->noun_n,object_n(Obj),sexual(Sex),tt(Tinhtrang).

query(patients(Obj,Sex,Tinhtrang,Tp)) -->w_x,noun_n,object_n(Obj),sexual(Sex),tt(Tinhtrang),noichon,thanhpho(Tp).

query(patients(Obj,Tp)) -->w_x,noun_n,object_n(Obj),noichon,thanhpho(Tp).

query(patients(Obj,Tp,Tinhtrang)) -->w_x,noun_n,object_n(Obj),noichon,thanhpho(Tp),tt(Tinhtrang).
query(patients(Obj,Tp,Tinhtrang)) -->noun_n,object_n(Obj),noichon,thanhpho(Tp),tt(Tinhtrang).

query(patients(Obj,Tp,Time)) -->w_x,noun_n,object_n(Obj),noichon,thanhpho(Tp),tg(Time).
query(patients(Obj,Tp,Time)) -->noun_n,object_n(Obj),noichon,thanhpho(Tp),tg(Time).

query(patients(Obj,Tp,Time,Tinhtrang)) -->w_x,noun_n,object_n(Obj),noichon,thanhpho(Tp),tg(Time),tt(Tinhtrang).
query(patients(Obj,Tinhtrang)) -->w_x,noun_n,object_n(Obj),tt(Tinhtrang).
query(patients(Obj,Tinhtrang,Benhvien)) -->w_x,noun_n,object_n(Obj),tt(Tinhtrang),noichon,benhvien_n,benhvien(Benhvien).
query(patients(Obj,Benhvien)) -->w_x,noun_n,object_n(Obj),noichon,benhvien_n,benhvien(Benhvien).
query(patients(Obj,Dotuoi)) -->w_x,noun_n,object_n(Obj),dotuoi(Dotuoi),age_b.
query(patients(Obj,Dotuoi,Tp)) -->w_x,noun_n,object_n(Obj),dotuoi(Dotuoi),age_b,noichon,thanhpho(Tp).
query(patients(Obj,Dotuoi,Sex,Tp)) -->w_x,noun_n,object_n(Obj),sexual(Sex),dotuoi(Dotuoi),age_b,noichon,thanhpho(Tp).
query(patients(Obj,Time)) -->w_x,noun_n,object_n(Obj),tg(Time).
query(patients(Obj,Idbn)) -->object_n(Obj),idbn(Idbn).
idbn(patients(Idbn,Ask)) --> ask(Ask),sohuu,noun_n,id_bn(Idbn).
query(thongkevn(Obj,Tp)) --> w_x,noun_n,object_n(Obj),nguoinhiem,noichon,thanhpho(Tp).
query(thongkevn(Obj,Tp)) --> thanhpho(Tp),howmany,howmany,object_n(Obj).
query(thongkevn(Obj,Tp)) --> thanhpho(Tp),howmany,howmany,howmany,object_n(Obj).
query(thongkevn(Obj,Tp)) --> noichon,thanhpho(Tp),howmany,howmany,object_n(Obj).
query(thongkevn(Obj,Tp)) --> noichon,thanhpho(Tp),howmany,howmany,howmany,object_n(Obj).
query(thongkevn(Obj,Tp)) --> thanhpho(Tp),howmany,object_n(Obj).
query(thongkevn(Obj,Tp)) --> thanhpho(Tp),howmany,howmany,object_n(Obj),howmany.
query(thongkevn(Obj,Tp)) --> noichon,thanhpho(Tp),howmany,object_n(Obj).
query(thongketg(Obj,Qg)) --> w_x,noun_n,object_n(Obj),nguoinhiem,noichon,qg(Qg).
query(thongketg(Obj,Qg)) --> noichon,qg(Qg),howmany,object_n(Obj).
query(thongketg(Obj,Qg)) --> qg(Qg),howmany,howmany,object_n(Obj).
query(thongketg(Obj,Qg)) --> qg(Qg),howmany,howmany,howmany,object_n(Obj).
query(thongketg(Obj,Qg)) --> noichon,qg(Qg),howmany,howmany,object_n(Obj).
query(thongketg(Obj,Qg)) --> noichon,qg(Qg),howmany,howmany,howmany,object_n(Obj).
query(thongketg(Obj,Qg)) --> qg(Qg),howmany,object_n(Obj).
query(thongketg(Obj,Qg)) --> qg(Qg),howmany,howmany,object_n(Obj),howmany.

query(thongketg(Obj,Qg)) --> howmany,howmany,object_n(Obj),noichon,qg(Qg).
query(thongketg(Obj,Qg)) --> howmany,object_n(Obj),noichon,qg(Qg).

query(thongketg(Obj,Qg)) --> howmany,howmany,howmany,object_n(Obj),noichon,qg(Qg).

ask(chitiet(Ask)) --> ask_ask(Ask).
ask_ask(ref) --> [nguon,goc,nhiem,benh].
ask_ask(tinhtrang) --> [tinh,trang].
ask_ask(ngaynhiem) --> [ngay,nhiem,benh].
ask_ask(quoctich) --> [quoc,tich].
ask_ask(gioitinh) --> [gioi,tinh].
idbn(idbenhnhan(Idbn)) -->id_bn(Idbn).
id_bn(bn333) -->[benh,nhan,333].
id_bn(bn332) -->[benh,nhan,332].
id_bn(bn331) -->[benh,nhan,331].
id_bn(bn330) -->[benh,nhan,330].
id_bn(bn329) -->[benh,nhan,329].
id_bn(bn328) -->[benh,nhan,328].
id_bn(bn326) -->[benh,nhan,326].
id_bn(bn327) -->[benh,nhan,327].
id_bn(bn325) -->[benh,nhan,325].
id_bn(bn323) -->[benh,nhan,323].
id_bn(bn324) -->[benh,nhan,324].
id_bn(bn322) -->[benh,nhan,322].
id_bn(bn321) -->[benh,nhan,321].
id_bn(bn320) -->[benh,nhan,320].
id_bn(bn319) -->[benh,nhan,319].
id_bn(bn318) -->[benh,nhan,318].
id_bn(bn317) -->[benh,nhan,317].
id_bn(bn316) -->[benh,nhan,316].
id_bn(bn315) -->[benh,nhan,315].
id_bn(bn314) -->[benh,nhan,314].
id_bn(bn313) -->[benh,nhan,313].
id_bn(bn312) -->[benh,nhan,312].
id_bn(bn310) -->[benh,nhan,310].
id_bn(bn311) -->[benh,nhan,311].
id_bn(bn309) -->[benh,nhan,309].
id_bn(bn308) -->[benh,nhan,308].
id_bn(bn307) -->[benh,nhan,307].
id_bn(bn306) -->[benh,nhan,306].
id_bn(bn304) -->[benh,nhan,304].
id_bn(bn305) -->[benh,nhan,305].
id_bn(bn303) -->[benh,nhan,303].
id_bn(bn302) -->[benh,nhan,302].
id_bn(bn301) -->[benh,nhan,301].
id_bn(bn300) -->[benh,nhan,300].
id_bn(bn299) -->[benh,nhan,299].
id_bn(bn298) -->[benh,nhan,298].
id_bn(bn297) -->[benh,nhan,297].
id_bn(bn295) -->[benh,nhan,295].
id_bn(bn296) -->[benh,nhan,296].
id_bn(bn294) -->[benh,nhan,294].
id_bn(bn293) -->[benh,nhan,293].
id_bn(bn291) -->[benh,nhan,291].
id_bn(bn292) -->[benh,nhan,292].
id_bn(bn290) -->[benh,nhan,290].
id_bn(bn289) -->[benh,nhan,289].
id_bn(bn287) -->[benh,nhan,287].
id_bn(bn288) -->[benh,nhan,288].
id_bn(bn285) -->[benh,nhan,285].
id_bn(bn286) -->[benh,nhan,286].
id_bn(bn284) -->[benh,nhan,284].
id_bn(bn283) -->[benh,nhan,283].
id_bn(bn282) -->[benh,nhan,282].
id_bn(bn279) -->[benh,nhan,279].
id_bn(bn280) -->[benh,nhan,280].
id_bn(bn281) -->[benh,nhan,281].
id_bn(bn278) -->[benh,nhan,278].
id_bn(bn277) -->[benh,nhan,277].
id_bn(bn276) -->[benh,nhan,276].
id_bn(bn275) -->[benh,nhan,275].
id_bn(bn273) -->[benh,nhan,273].
id_bn(bn274) -->[benh,nhan,274].
id_bn(bn272) -->[benh,nhan,272].
id_bn(bn271) -->[benh,nhan,271].
id_bn(bn270) -->[benh,nhan,270].
id_bn(bn269) -->[benh,nhan,269].
id_bn(bn267) -->[benh,nhan,267].
id_bn(bn268) -->[benh,nhan,268].
id_bn(bn266) -->[benh,nhan,266].
id_bn(bn264) -->[benh,nhan,264].
id_bn(bn265) -->[benh,nhan,265].
id_bn(bn261) -->[benh,nhan,261].
id_bn(bn262) -->[benh,nhan,262].
id_bn(bn263) -->[benh,nhan,263].
id_bn(bn260) -->[benh,nhan,260].
id_bn(bn259) -->[benh,nhan,259].
id_bn(bn258) -->[benh,nhan,258].
id_bn(bn257) -->[benh,nhan,257].
id_bn(bn255) -->[benh,nhan,255].
id_bn(bn256) -->[benh,nhan,256].
id_bn(bn254) -->[benh,nhan,254].
id_bn(bn253) -->[benh,nhan,253].
id_bn(bn252) -->[benh,nhan,252].
id_bn(bn250) -->[benh,nhan,250].
id_bn(bn251) -->[benh,nhan,251].
id_bn(bn249) -->[benh,nhan,249].
id_bn(bn248) -->[benh,nhan,248].
id_bn(bn247) -->[benh,nhan,247].
id_bn(bn246) -->[benh,nhan,246].
id_bn(bn243) -->[benh,nhan,243].
id_bn(bn244) -->[benh,nhan,244].
id_bn(bn245) -->[benh,nhan,245].
id_bn(bn242) -->[benh,nhan,242].
id_bn(bn241) -->[benh,nhan,241].
id_bn(bn240) -->[benh,nhan,240].
id_bn(bn238) -->[benh,nhan,238].
id_bn(bn239) -->[benh,nhan,239].
id_bn(bn237) -->[benh,nhan,237].
id_bn(bn235) -->[benh,nhan,235].
id_bn(bn236) -->[benh,nhan,236].
id_bn(bn233) -->[benh,nhan,233].
id_bn(bn234) -->[benh,nhan,234].
id_bn(bn232) -->[benh,nhan,232].
id_bn(bn231) -->[benh,nhan,231].
id_bn(bn230) -->[benh,nhan,230].
id_bn(bn229) -->[benh,nhan,229].
id_bn(bn228) -->[benh,nhan,228].
id_bn(bn227) -->[benh,nhan,227].
id_bn(bn226) -->[benh,nhan,226].
id_bn(bn225) -->[benh,nhan,225].
id_bn(bn224) -->[benh,nhan,224].
id_bn(bn222) -->[benh,nhan,222].
id_bn(bn223) -->[benh,nhan,223].
id_bn(bn221) -->[benh,nhan,221].
id_bn(bn218) -->[benh,nhan,218].
id_bn(bn219) -->[benh,nhan,219].
id_bn(bn220) -->[benh,nhan,220].
id_bn(bn217) -->[benh,nhan,217].
id_bn(bn216) -->[benh,nhan,216].
id_bn(bn215) -->[benh,nhan,215].
id_bn(bn213) -->[benh,nhan,213].
id_bn(bn211) -->[benh,nhan,211].
id_bn(bn214) -->[benh,nhan,214].
id_bn(bn212) -->[benh,nhan,212].
id_bn(bn209) -->[benh,nhan,209].
id_bn(bn210) -->[benh,nhan,210].
id_bn(bn208) -->[benh,nhan,208].
id_bn(bn207) -->[benh,nhan,207].
id_bn(bn206) -->[benh,nhan,206].
id_bn(bn205) -->[benh,nhan,205].
id_bn(bn204) -->[benh,nhan,204].
id_bn(bn203) -->[benh,nhan,203].
id_bn(bn201) -->[benh,nhan,201].
id_bn(bn202) -->[benh,nhan,202].
id_bn(bn200) -->[benh,nhan,200].
id_bn(bn199) -->[benh,nhan,199].
id_bn(bn196) -->[benh,nhan,196].
id_bn(bn197) -->[benh,nhan,197].
id_bn(bn198) -->[benh,nhan,198].
id_bn(bn195) -->[benh,nhan,195].
id_bn(bn192) -->[benh,nhan,192].
id_bn(bn193) -->[benh,nhan,193].
id_bn(bn194) -->[benh,nhan,194].
id_bn(bn191) -->[benh,nhan,191].
id_bn(bn189) -->[benh,nhan,189].
id_bn(bn190) -->[benh,nhan,190].
id_bn(bn188) -->[benh,nhan,188].
id_bn(bn187) -->[benh,nhan,187].
id_bn(bn186) -->[benh,nhan,186].
id_bn(bn184) -->[benh,nhan,184].
id_bn(bn185) -->[benh,nhan,185].
id_bn(bn183) -->[benh,nhan,183].
id_bn(bn182) -->[benh,nhan,182].
id_bn(bn181) -->[benh,nhan,181].
id_bn(bn180) -->[benh,nhan,180].
id_bn(bn178) -->[benh,nhan,178].
id_bn(bn179) -->[benh,nhan,179].
id_bn(bn177) -->[benh,nhan,177].
id_bn(bn175) -->[benh,nhan,175].
id_bn(bn176) -->[benh,nhan,176].
id_bn(bn173) -->[benh,nhan,173].
id_bn(bn174) -->[benh,nhan,174].
id_bn(bn172) -->[benh,nhan,172].
id_bn(bn170) -->[benh,nhan,170].
id_bn(bn171) -->[benh,nhan,171].
id_bn(bn169) -->[benh,nhan,169].
id_bn(bn168) -->[benh,nhan,168].
id_bn(bn166) -->[benh,nhan,166].
id_bn(bn167) -->[benh,nhan,167].
id_bn(bn165) -->[benh,nhan,165].
id_bn(bn163) -->[benh,nhan,163].
id_bn(bn164) -->[benh,nhan,164].
id_bn(bn162) -->[benh,nhan,162].
id_bn(bn161) -->[benh,nhan,161].
id_bn(bn160) -->[benh,nhan,160].
id_bn(bn158) -->[benh,nhan,158].
id_bn(bn159) -->[benh,nhan,159].
id_bn(bn155) -->[benh,nhan,155].
id_bn(bn156) -->[benh,nhan,156].
id_bn(bn157) -->[benh,nhan,157].
id_bn(bn154) -->[benh,nhan,154].
id_bn(bn151) -->[benh,nhan,151].
id_bn(bn152) -->[benh,nhan,152].
id_bn(bn153) -->[benh,nhan,153].
id_bn(bn150) -->[benh,nhan,150].
id_bn(bn149) -->[benh,nhan,149].
id_bn(bn148) -->[benh,nhan,148].
id_bn(bn146) -->[benh,nhan,146].
id_bn(bn147) -->[benh,nhan,147].
id_bn(bn145) -->[benh,nhan,145].
id_bn(bn144) -->[benh,nhan,144].
id_bn(bn143) -->[benh,nhan,143].
id_bn(bn142) -->[benh,nhan,142].
id_bn(bn141) -->[benh,nhan,141].
id_bn(bn140) -->[benh,nhan,140].
id_bn(bn139) -->[benh,nhan,139].
id_bn(bn138) -->[benh,nhan,138].
id_bn(bn137) -->[benh,nhan,137].
id_bn(bn135) -->[benh,nhan,135].
id_bn(bn136) -->[benh,nhan,136].
id_bn(bn133) -->[benh,nhan,133].
id_bn(bn134) -->[benh,nhan,134].
id_bn(bn132) -->[benh,nhan,132].
id_bn(bn131) -->[benh,nhan,131].
id_bn(bn130) -->[benh,nhan,130].
id_bn(bn129) -->[benh,nhan,129].
id_bn(bn128) -->[benh,nhan,128].
id_bn(bn127) -->[benh,nhan,127].
id_bn(bn126) -->[benh,nhan,126].
id_bn(bn125) -->[benh,nhan,125].
id_bn(bn123) -->[benh,nhan,123].
id_bn(bn124) -->[benh,nhan,124].
id_bn(bn122) -->[benh,nhan,122].
id_bn(bn121) -->[benh,nhan,121].
id_bn(bn120) -->[benh,nhan,120].
id_bn(bn119) -->[benh,nhan,119].
id_bn(bn116) -->[benh,nhan,116].
id_bn(bn117) -->[benh,nhan,117].
id_bn(bn118) -->[benh,nhan,118].
id_bn(bn115) -->[benh,nhan,115].
id_bn(bn114) -->[benh,nhan,114].
id_bn(bn113) -->[benh,nhan,113].
id_bn(bn111) -->[benh,nhan,111].
id_bn(bn112) -->[benh,nhan,112].
id_bn(bn110) -->[benh,nhan,110].
id_bn(bn109) -->[benh,nhan,109].
id_bn(bn108) -->[benh,nhan,108].
id_bn(bn107) -->[benh,nhan,107].
id_bn(bn106) -->[benh,nhan,106].
id_bn(bn105) -->[benh,nhan,105].
id_bn(bn103) -->[benh,nhan,103].
id_bn(bn104) -->[benh,nhan,104].
id_bn(bn102) -->[benh,nhan,102].
id_bn(bn100) -->[benh,nhan,100].
id_bn(bn101) -->[benh,nhan,101].
id_bn(bn98) -->[benh,nhan,98].
id_bn(bn99) -->[benh,nhan,99].
id_bn(bn97) -->[benh,nhan,97].
id_bn(bn96) -->[benh,nhan,96].
id_bn(bn94) -->[benh,nhan,94].
id_bn(bn95) -->[benh,nhan,95].
id_bn(bn93) -->[benh,nhan,93].
id_bn(bn92) -->[benh,nhan,92].
id_bn(bn91) -->[benh,nhan,91].
id_bn(bn90) -->[benh,nhan,90].
id_bn(bn89) -->[benh,nhan,89].
id_bn(bn86) -->[benh,nhan,86].
id_bn(bn87) -->[benh,nhan,87].
id_bn(bn88) -->[benh,nhan,88].
id_bn(bn85) -->[benh,nhan,85].
id_bn(bn84) -->[benh,nhan,84].
id_bn(bn83) -->[benh,nhan,83].
id_bn(bn82) -->[benh,nhan,82].
id_bn(bn80) -->[benh,nhan,80].
id_bn(bn81) -->[benh,nhan,81].
id_bn(bn79) -->[benh,nhan,79].
id_bn(bn78) -->[benh,nhan,78].
id_bn(bn76) -->[benh,nhan,76].
id_bn(bn77) -->[benh,nhan,77].
id_bn(bn75) -->[benh,nhan,75].
id_bn(bn74) -->[benh,nhan,74].
id_bn(bn72) -->[benh,nhan,72].
id_bn(bn73) -->[benh,nhan,73].
id_bn(bn71) -->[benh,nhan,71].
id_bn(bn70) -->[benh,nhan,70].
id_bn(bn69) -->[benh,nhan,69].
id_bn(bn68) -->[benh,nhan,68].
id_bn(bn67) -->[benh,nhan,67].
id_bn(bn65) -->[benh,nhan,65].
id_bn(bn66) -->[benh,nhan,66].
id_bn(bn64) -->[benh,nhan,64].
id_bn(bn62) -->[benh,nhan,62].
id_bn(bn63) -->[benh,nhan,63].
id_bn(bn60) -->[benh,nhan,60].
id_bn(bn61) -->[benh,nhan,61].
id_bn(bn59) -->[benh,nhan,59].
id_bn(bn58) -->[benh,nhan,58].
id_bn(bn56) -->[benh,nhan,56].
id_bn(bn57) -->[benh,nhan,57].
id_bn(bn54) -->[benh,nhan,54].
id_bn(bn55) -->[benh,nhan,55].
id_bn(bn53) -->[benh,nhan,53].
id_bn(bn52) -->[benh,nhan,52].
id_bn(bn51) -->[benh,nhan,51].
id_bn(bn49) -->[benh,nhan,49].
id_bn(bn50) -->[benh,nhan,50].
id_bn(bn47) -->[benh,nhan,47].
id_bn(bn48) -->[benh,nhan,48].
id_bn(bn43) -->[benh,nhan,43].
id_bn(bn44) -->[benh,nhan,44].
id_bn(bn45) -->[benh,nhan,45].
id_bn(bn46) -->[benh,nhan,46].
id_bn(bn42) -->[benh,nhan,42].
id_bn(bn41) -->[benh,nhan,41].
id_bn(bn40) -->[benh,nhan,40].
id_bn(bn39) -->[benh,nhan,39].
id_bn(bn37) -->[benh,nhan,37].
id_bn(bn38) -->[benh,nhan,38].
id_bn(bn36) -->[benh,nhan,36].
id_bn(bn35) -->[benh,nhan,35].
id_bn(bn33) -->[benh,nhan,33].
id_bn(bn34) -->[benh,nhan,34].
id_bn(bn32) -->[benh,nhan,32].
id_bn(bn30) -->[benh,nhan,30].
id_bn(bn31) -->[benh,nhan,31].
id_bn(bn29) -->[benh,nhan,29].
id_bn(bn28) -->[benh,nhan,28].
id_bn(bn27) -->[benh,nhan,27].
id_bn(bn25) -->[benh,nhan,25].
id_bn(bn26) -->[benh,nhan,26].
id_bn(bn24) -->[benh,nhan,24].
id_bn(bn23) -->[benh,nhan,23].
id_bn(bn21) -->[benh,nhan,21].
id_bn(bn22) -->[benh,nhan,22].
id_bn(bn20) -->[benh,nhan,20].
id_bn(bn19) -->[benh,nhan,19].
id_bn(bn18) -->[benh,nhan,18].
id_bn(bn17) -->[benh,nhan,17].
id_bn(bn16) -->[benh,nhan,16].
id_bn(bn14) -->[benh,nhan,14].
id_bn(bn15) -->[benh,nhan,15].
id_bn(bn13) -->[benh,nhan,13].
id_bn(bn12) -->[benh,nhan,12].
id_bn(bn11) -->[benh,nhan,11].
id_bn(bn10) -->[benh,nhan,10].
id_bn(bn09) -->[benh,nhan,09].
id_bn(bn08) -->[benh,nhan,08].
id_bn(bn07) -->[benh,nhan,07].
id_bn(bn06) -->[benh,nhan,06].
id_bn(bn05) -->[benh,nhan,05].
id_bn(bn03) -->[benh,nhan,03].
id_bn(bn04) -->[benh,nhan,04].
id_bn(bn02) -->[benh,nhan,02].
id_bn(bn01) -->[benh,nhan,01].
id_bn(bn334) -->[benh,nhan,334].
id_bn(bn335) -->[benh,nhan,335].
tg(thoigian(Time)) --> thoi_gian(Time).
thoi_gian(01) --> [thang,1].
thoi_gian(02) --> [thang,2].
thoi_gian(03) --> [thang,3].
thoi_gian(04) --> [thang,4].
thoi_gian(05) --> [thang,5].
thoi_gian(06) --> [thang,6].
thoi_gian(07) --> [thang,7].
thoi_gian(08) --> [thang,8].
thoi_gian(09) --> [thang,9].
thoi_gian(10) --> [thang,10].
thoi_gian(11) --> [thang,11].
thoi_gian(12) --> [thang,12].
tt(tinhtrang(Tinhtrang)) --> tinh_trang(Tinhtrang).
tinh_trang(daxuatvien) --> [da,xuat,vien].
tinh_trang(dangdieutri) --> [dang,dieu,tri].

thanhpho(cities(Tp)) --> city(Tp).
city(ni0) -->[ha,noi].
city(minh1) -->[tp,ho,chi,minh].
city(minh1) -->[ho,chi,minh].
city(minh1) -->[hcm].

city(bnh2) -->[thai,binh].
city(liu3) -->[bac,lieu].
city(phc4) -->[vinh,phuc].
city(bnh5) -->[ninh,binh].
city(thun6) -->[binh,thuan].
city(ninh7) -->[quang,ninh].
city(nng8) -->[da,nang].
city(thp9) -->[dong,thap].
city(nam10) -->[quang,nam].
city(giang11) -->[bac,giang].
city(nam12) -->[ha,nam].
city(tnh13) -->[ha,tinh].
city(dng14) -->[hai,duong].
city(ninh15) -->[tay,ninh].
city(ha16) -->[thanh,hoa].
city(th17) -->[can,tho].
city(cai18) -->[lao,cai].
city(thun19) -->[ninh,thuan].
city(hu20) -->[thua,thien,-,hue].
city(vinh21) -->[tra,vinh].
city(tu22) -->[ba,ria,vung,tau].
city(ninh23) -->[bac,ninh].
city(tre24) -->[ben,tre].
city(nai25) -->[dong,nai].
city(giang26) -->[ha,giang].
city(yn27) -->[hung,yen].
city(ha28) -->[khanh,hoa].
city(chu29) -->[lai,chau].
city(nguyn30) -->[thai,nguyen].

qg(quocgia(Qg)) --> country(Qg).
country(seychelles205)-->[seychelles].
country(montserrat204)-->[montserrat].
country(city203)-->[vatican,city].
country(caicos202)-->[turks,and,caicos].
country(greenland201)-->[greenland].
country(islands200)-->[falkland,islands].
country(fiji198)-->[fiji].
country(nevis199)-->[saint,kitts,and,nevis].
country(lucia196)-->[saint,lucia].
country(dominica197)-->[dominica].
country(laos195)-->[laos].
country(caledonia194)-->[new,caledonia].
country(belize193)-->[belize].
country(grenada191)-->[grenada].
country(curaao192)-->[curaao].
country(barbuda189)-->[antigua,and,barbuda].
country(timorleste190)-->[timor-leste].
country(grenadines188)-->[st,vincent,grenadines].
country(namibia186)-->[namibia].
country(gambia187)-->[gambia].
country(martin185)-->[saint,martin].
country(macao184)-->[macao].
country(polynesia183)-->[french,polynesia].
country(botswana182)-->[botswana].
country(maarten180)-->[sint,maarten].
country(bhutan181)-->[bhutan].
country(liechtenstein179)-->[liechtenstein].
country(burundi178)-->[burundi].
country(barbados177)-->[barbados].
country(monaco176)-->[monaco].
country(aruba175)-->[aruba].
country(bahamas174)-->[bahamas].
country(eritrea173)-->[eritrea].
country(tobago172)-->[trinidad,and,tobago].
country(cambodia171)-->[cambodia].
country(170)-->[brunei].
country(angola169)-->[angola].
country(guyana167)-->[guyana].
country(bermuda168)-->[bermuda].
country(guadeloupe166)-->[guadeloupe].
country(gibraltar165)-->[gibraltar].
country(comoros164)-->[comoros].
country(syria163)-->[syria].
country(islands162)-->[faeroe,islands].
country(islands161)-->[cayman,islands].
country(mongolia160)-->[mongolia].
country(martinique159)-->[martinique].
country(suriname158)-->[suriname].
country(myanmar157)-->[myanmar].
country(montenegro156)-->[montenegro].
country(vietnam155)-->[vietnam].
country(vietnam155)-->[viet,nam].

country(man154)-->[isle,of,man].
country(mauritius153)-->[mauritius].
country(zimbabwe152)-->[zimbabwe].
country(taiwan151)-->[taiwan].
country(libya150)-->[libya].
country(benin149)-->[benin].
country(runion148)-->[runion].
country(liberia147)-->[liberia].
country(palestine146)-->[palestine].
country(eswatini145)-->[eswatini].
country(tanzania144)-->[tanzania].
country(togo143)-->[togo].
country(malawi142)-->[malawi].
country(islands141)-->[channel,islands].
country(mozambique140)-->[mozambique].
country(rwanda139)-->[rwanda].
country(jamaica138)-->[jamaica].
country(malta137)-->[malta].
country(principe136)-->[sao,tome,and,principe].
country(princess133)-->[diamond,princess].
country(marino135)-->[san,marino].
country(uganda134)-->[uganda].
country(verde132)-->[cabo,verde].
country(yemen131)-->[yemen].
country(uruguay130)-->[uruguay].
country(chad129)-->[chad].
country(andorra128)-->[andorra].
country(georgia127)-->[georgia].
country(congo126)-->[congo].
country(faso125)-->[burkina,faso].
country(jordan124)-->[jordan].
country(niger123)-->[niger].
country(cyprus122)-->[cyprus].
country(latvia121)-->[latvia].
country(tunisia120)-->[tunisia].
country(kong119)-->[hong,kong].
country(paraguay116)-->[paraguay].
country(madagascar117)-->[madagascar].
country(leone118)-->[sierra,leone].
country(guinea115)-->[equatorial,guinea].
country(guiana114)-->[french,guiana].
country(zambia113)-->[zambia].
country(lebanon112)-->[lebanon].
country(nicaragua111)-->[nicaragua].
country(guineabissau110)-->[guinea-bissau].
country(slovenia109)-->[slovenia].
country(zealand108)-->[new,zealand].
country(slovakia107)-->[slovakia].
country(albania106)-->[albania].
country(sudan105)-->[south,sudan].
country(rica104)-->[costa,rica].
country(lithuania103)-->[lithuania].
country(iceland102)-->[iceland].
country(mali101)-->[mali].
country(mauritania100)-->[mauritania].
country(lanka99)-->[sri,lanka].
country(estonia98)-->[estonia].
country(maldives97)-->[maldives].
country(car96)-->[car].
country(croatia95)-->[croatia].
country(cuba94)-->[cuba].
country(mayotte93)-->[mayotte].
country(kyrgyzstan92)-->[kyrgyzstan].
country(somalia91)-->[somalia].
country(herzegovina90)-->[bosnia,and,herzegovina].
country(venezuela89)-->[venezuela].
country(greece88)-->[greece].
country(kenya84)-->[kenya].
country(ethiopia85)-->[ethiopia].
country(bulgaria86)-->[bulgaria].
country(thailand87)-->[thailand].
country(salvador83)-->[el,salvador].
country(gabon82)-->[gabon].
country(haiti78)-->[haiti].
country(macedonia79)-->[north,macedonia].
country(hungary80)-->[hungary].
country(luxembourg81)-->[luxembourg].
country(djibouti77)-->[djibouti].
country(guinea76)-->[guinea].
country(drc75)-->[drc].
country(coast71)-->[ivory,coast].
country(uzbekistan72)-->[uzbekistan].
country(senegal73)-->[senegal].
country(tajikistan74)-->[tajikistan].
country(nepal70)-->[nepal].
country(finland69)-->[finland].
country(australia68)-->[australia].
country(sudan67)-->[sudan].
country(malaysia66)-->[malaysia].
country(norway65)-->[norway].
country(morocco64)-->[morocco].
country(honduras63)-->[honduras].
country(cameroon62)-->[cameroon].
country(czechia61)-->[czechia].
country(guatemala60)-->[guatemala].
country(azerbaijan59)-->[azerbaijan].
country(algeria58)-->[algeria].
country(moldova57)-->[moldova].
country(ghana56)-->[ghana].
country(korea55)-->[s,korea].
country(denmark54)-->[denmark].
country(serbia53)-->[serbia].
country(kazakhstan52)-->[kazakhstan].
country(nigeria51)-->[nigeria].
country(armenia50)-->[armenia].
country(austria49)-->[austria].
country(japan48)-->[japan].
country(bolivia47)-->[bolivia].
country(bahrain46)-->[bahrain].
country(israel45)-->[israel].
country(iraq44)-->[iraq].
country(panama43)-->[panama].
country(romania42)-->[romania].
country(republic41)-->[dominican,republic].
country(oman40)-->[oman].
country(ireland39)-->[ireland].
country(afghanistan38)-->[afghanistan].
country(philippines37)-->[philippines].
country(poland36)-->[poland].
country(switzerland35)-->[switzerland].
country(ukraine34)-->[ukraine].
country(argentina33)-->[argentina].
country(kuwait32)-->[kuwait].
country(portugal31)-->[portugal].
country(indonesia30)-->[indonesia].
country(singapore29)-->[singapore].
country(uae28)-->[uae].
country(egypt27)-->[egypt].
country(ecuador26)-->[ecuador].
country(netherlands25)-->[netherlands].
country(sweden24)-->[sweden].
country(colombia23)-->[colombia].
country(belarus22)-->[belarus].
country(belgium21)-->[belgium].
country(africa20)-->[south,africa].
country(qatar19)-->[qatar].
country(bangladesh18)-->[bangladesh].
country(canada17)-->[canada].
country(arabia16)-->[saudi,arabia].
country(pakistan15)-->[pakistan].
country(mexico14)-->[mexico].
country(france13)-->[france].
country(chile12)-->[chile].
country(turkey11)-->[turkey].
country(germany10)-->[germany].
country(iran9)-->[iran].
country(peru8)-->[peru].
country(italy7)-->[italy].
country(spain6)-->[spain].
country(uk5)-->[uk].
country(india4)-->[india].
country(russia3)-->[russia].
country(brazil2)-->[brazil].
country(usa1)-->[usa].
country(usa1)-->[my].

country(world0)-->[world].
country(world0)-->[the,gioi].
country(zaandam206)-->[ms,zaandam].
country(sahara207)-->[western,sahara].
country(islands208)-->[british,virgin,islands].
country(guinea209)-->[papua,new,guinea].
country(netherlands210)-->[caribbean,netherlands].
country(barth211)-->[st,barth].
country(lesotho212)-->[lesotho].
country(anguilla213)-->[anguilla].
country(miquelon214)-->[saint,pierre,miquelon].
country(china215)-->[china].
country(china215)-->[chinese].



benhvien_n -->[benh,vien].
benhvien(benhviens(Benhvien)) --> b_vien(Benhvien).
b_vien(itphcmbcliu) -->[benh,nhiet,doi,tphcm].
b_vien(trungngthibnh) -->[benh,nhiet,doi,trung,uong,tinh,thai,binh].
b_vien(trungngthibnh) -->[benh,nhiet,doi,trung,uong,thai,binh].
b_vien(hgianghgiang) -->[da,khoa,dong,van,ha,giang].
b_vien(hgianghgiang) -->[da,khoa,dong,van,tinh,ha,giang].
b_vien(hnihni) -->[than,ha,noi].
b_vien(hnihni) -->[than,tp,ha,noi].
b_vien(trungnghnam) -->[benh,nhiet,doi,trung,uong,ha,nam].
b_vien(trungnghnam) -->[benh,nhiet,doi,trung,uong,tinh,ha,nam].
b_vien(ngnaingnai) -->[phoi,tinh,dong,nai].
b_vien(ngnaingnai) -->[phoi,dong,nai].
b_vien(tphcmchminh) -->[nhi,dong,thanh,pho,tphcm].

b_vien(trungngthanhha) -->[benh,nhiet,doi,trung,uong,tinh,thanh,hoa].
b_vien(trungngthinguyn) -->[benh,nhiet,doi,trung,uong,tinh,thai,nguyen].
b_vien(bcliubcliu) -->[da,khoa,tinh,bac,lieu].
b_vien(hnamhnam) -->[da,khoa,tinh,ha,nam].
b_vien(cutreohtnh) -->[da,khoa,cau,treo,tinh,ha,tinh].
b_vien(cnthcnth) -->[lao,va,benh,phoi,tinh,can,tho].
b_vien(bmsnthanhha) -->[da,khoa,bim,son,tinh,thanh,hoa].
b_vien(trungnglaichu) -->[benh,nhiet,doi,trung,uong,tinh,lai,chau].
b_vien(trungngbcgiang) -->[benh,nhiet,doi,trung,uong,tinh,bac,giang].
b_vien(bnhibntre) -->[trung,tam,y,te,huyen,binh,dai,tinh,ben,tre].
b_vien(cngichminh) -->[da,chien,can,gio,tphcm].
b_vien(tyninhtyninh) -->[da,khoa,tinh,tay,ninh].
b_vien(trvinhtrvinh) -->[lao,va,benh,phoi,tinh,tra,vinh].
b_vien(ngthpngthp) -->[da,khoa,sa,dec,tinh,dong,thap].
b_vien(bcninhbcninh) -->[da,khoa,tinh,bac,ninh].
b_vien(hidnghidng) -->[trung,tam,y,te,huyen,thanh,mien,tinh,hai,duong].
b_vien(ninhthunninhthun) -->[da,khoa,tinh,ninh,thuan].
b_vien(trungngqungnam) -->[benh,nhiet,doi,trung,uong,tinh,quang,nam].
b_vien(qungninhqungninh) -->[so,2,tinh,quang,ninh].
b_vien(bnhthunbnhthun) -->[da,khoa,tinh,binh,thuan].
b_vien(cchichminh) -->[da,chien,cu,chi,tphcm].
b_vien(cs2qungnam) -->[trung,uong,co,so,2,tinh,quang,nam].
b_vien(cs2hu) -->[trung,uong,cs,2,hue].
b_vien(trungngqungninh) -->[benh,nhiet,doi,trung,uong,tinh,quang,ninh].
b_vien(locailocai) -->[da,khoa,tinh,lao,cai].
b_vien(nngnng) -->[da,nang].
b_vien(ninhbnhninhbnh) -->[da,khoa,tinh,ninh,binh].
b_vien(trungnghni) -->[benh,nhiet,doi,trung,uong,ha,noi].
b_vien(tamovnhphc) -->[trung,tam,y,te,huyen,tam,dao,tinh,vinh,phuc].
b_vien(bnhxuynvnhphc) -->[trung,tam,y,te,huyen,binh,xuyen,tinh,vinh,phuc].
b_vien(itphcmchminh) -->[benh,nhiet,doi,tphcm].
b_vien(khnhhakhnhha) -->[benh,nhiet,doi,tinh,khanh,hoa].
b_vien(trungngvnhphc) -->[benh,nhiet,doi,trung,uong,tinh,vinh,phuc].
b_vien(thanhhathanhha) -->[da,khoa,tinh,thanh,hoa].
b_vien(chrychminh) -->[cho,ray,tphcm].
b_vien(thibnhthibnh) -->[da,khoa,tinh,thai,binh].
b_vien(qungnamqungnam) -->[da,khoa,trung,uong,tinh,quang,nam].
b_vien(bravngtu) -->[da,khoa,ba,ria,vung,tau].
dotuoi(tuoi(Dotuoi)) --> age(Dotuoi).
age_b --> [tuoi].
age(1) --> [1].
age(2) --> [2].
age(3) --> [3].
age(4) --> [4].
age(5) --> [5].
age(6) --> [6].
age(7) --> [7].
age(8) --> [8].
age(9) --> [9].
age(10) --> [10].
age(11) --> [11].
age(12) --> [12].
age(13) --> [13].
age(14) --> [14].
age(15) --> [15].
age(16) --> [16].
age(17) --> [17].
age(18) --> [18].
age(19) --> [19].
age(20) --> [20].
age(21) --> [21].
age(22) --> [22].
age(23) --> [23].
age(24) --> [24].
age(25) --> [25].
age(26) --> [26].
age(27) --> [27].
age(28) --> [28].
age(29) --> [29].
age(30) --> [30].
age(31) --> [31].
age(32) --> [32].
age(33) --> [33].
age(34) --> [34].
age(35) --> [35].
age(36) --> [36].
age(37) --> [37].
age(38) --> [38].
age(39) --> [39].
age(40) --> [40].
age(41) --> [41].
age(42) --> [42].
age(43) --> [43].
age(44) --> [44].
age(45) --> [45].
age(46) --> [46].
age(47) --> [47].
age(48) --> [48].
age(49) --> [49].
age(50) --> [50].
age(51) --> [51].
age(52) --> [52].
age(53) --> [53].
age(54) --> [54].
age(55) --> [55].
age(56) --> [56].
age(57) --> [57].
age(58) --> [58].
age(59) --> [59].
age(60) --> [60].
age(61) --> [61].
age(62) --> [62].
age(63) --> [63].
age(64) --> [64].
age(65) --> [65].
age(66) --> [66].
age(67) --> [67].
age(68) --> [68].
age(69) --> [69].
age(70) --> [70].
age(71) --> [71].
age(72) --> [72].
age(73) --> [73].
age(74) --> [74].
age(75) --> [75].
age(76) --> [76].
age(77) --> [77].
age(78) --> [78].
age(79) --> [79].
age(80) --> [80].
age(81) --> [81].
age(82) --> [82].
age(83) --> [83].
age(84) --> [84].
age(85) --> [85].
age(86) --> [86].
age(87) --> [87].
age(88) --> [88].
age(89) --> [89].
age(90) --> [90].
age(91) --> [91].
age(92) --> [92].
age(93) --> [93].
age(94) --> [94].
age(95) --> [95].
age(96) --> [96].
age(97) --> [97].
age(98) --> [98].
age(99) --> [99].
age(100) --> [100].
noun_n -->n.
n --> [du,lieu].
n --> [danh,sach].
gioitinh --> [gioi,tinh].
object_n(objects(Obj)) --> objs(Obj).
objs(dlbn) --> [benh,nhan].
objs(dlbn) --> [thong,tin].

objs(dltk) --> [thong,ke].
objs(dltk) --> [ca].
objs(dltk) --> [ca,nhiem].
objs(dltk) --> [ca,nhiem,covid19].
objs(dltk) --> [truong,hop].
objs(dltk) --> [truong,hop,nhiem].

objs(dltk) --> [truong,hop,nhiem,covid19].
howmany --> [so].
howmany --> [co].
howmany --> [bao,nhieu].
howmany -->[tong,cong].
howmany -->[tong].
sexual(gioitinh(Sex)) --> gioi_tinh(Sex).
gioi_tinh(nam) --> [nam].
gioi_tinh(nu) --> [nu].
iss -->[la].
w_x -->w.
co -->[co].
gtinh -->[gioi,tinh].
w --> [cho,toi,hoi].
w -->[cho,toi,biet].
w -->[cho,biet].
w -->[cho,hoi].
w -->[cho,toi].
w -->[thong,tin].
bongu --> b.
b --> [tu].
b --> [den].
noichon --> [o].
noichon --> [tai].
noichon --> [tren].
why --> [tai,sao].
sohuu -->[cua].
nguoinhiem --> nguoi,nhiem.
nguoi -->[so,nguoi].
nguoi -->[tong,truong,hop].
nhiem -->[nhiem,benh].
nhiem -->[nhiem,covid19].