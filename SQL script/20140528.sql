select t.bankid,t.adminbank,t.head_bank,t.branch_bank,t.tag_bank,t.point_bank from TP_BANK t

-- ����bankid
select t.bankid from tp_bank t where t.adminbank='00001' and t.bankid<>'00001'
-- ֧��bankid
select f.bankid from tp_bank f where f.adminbank in (select b.bankid from tp_bank b where b.adminbank='00001' and b.bankid<>'00001')
 -- ����bankid
select w.bankid from tp_bank w where w.adminbank in (select f.bankid from tp_bank f where f.adminbank in (select b.bankid from tp_bank b where b.adminbank='00001' and b.bankid<>'00001'))
    -- ���еĻ��� point_bank ���� bankid
-- update tp_bank t set t.point_bank=t.bankid;
    -- ���У��ֺ죬֧�е� tag_bank �� bankid������� tag_bank �� adminbank
-- update tp_bank t set t.tag_bank=t.bankid
-- update tp_bank t set t.tag_bank=t.adminbank where t.bankid in (select w.bankid from tp_bank w where w.adminbank in (select f.bankid from tp_bank f where f.adminbank in (select b.bankid from tp_bank b where b.adminbank='00001' and b.bankid<>'00001')))
    -- ���У����е� branch_bank �� bankid��֧���� adminbank�� ������ adminbank �� adminbank
--update tp_bank t set t.branch_bank=t.bankid
update tp_bank t set t.branch_bank=t.bankid
    -- head_bank �����е� bankid
--update tp_bank t set t.head_bank='00001';
