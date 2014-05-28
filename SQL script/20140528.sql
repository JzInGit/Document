select t.bankid,t.adminbank,t.head_bank,t.branch_bank,t.tag_bank,t.point_bank from TP_BANK t

-- 分行bankid
select t.bankid from tp_bank t where t.adminbank='00001' and t.bankid<>'00001'
-- 支行bankid
select f.bankid from tp_bank f where f.adminbank in (select b.bankid from tp_bank b where b.adminbank='00001' and b.bankid<>'00001')
 -- 网点bankid
select w.bankid from tp_bank w where w.adminbank in (select f.bankid from tp_bank f where f.adminbank in (select b.bankid from tp_bank b where b.adminbank='00001' and b.bankid<>'00001'))
    -- 所有的机构 point_bank 都是 bankid
-- update tp_bank t set t.point_bank=t.bankid;
    -- 总行，分红，支行的 tag_bank 是 bankid，网点的 tag_bank 是 adminbank
-- update tp_bank t set t.tag_bank=t.bankid
-- update tp_bank t set t.tag_bank=t.adminbank where t.bankid in (select w.bankid from tp_bank w where w.adminbank in (select f.bankid from tp_bank f where f.adminbank in (select b.bankid from tp_bank b where b.adminbank='00001' and b.bankid<>'00001')))
    -- 总行，分行的 branch_bank 是 bankid，支行是 adminbank， 网点是 adminbank 的 adminbank
--update tp_bank t set t.branch_bank=t.bankid
update tp_bank t set t.branch_bank=t.bankid
    -- head_bank 是总行的 bankid
--update tp_bank t set t.head_bank='00001';
