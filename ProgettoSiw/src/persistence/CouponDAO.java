package persistence;

import model.Coupon;

public interface CouponDAO {
	public void inserisciCoupon(Coupon c);
	public boolean validaCoupon(int codice);
}
