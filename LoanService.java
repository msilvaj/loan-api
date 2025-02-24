public class LoanService {
    public static String checkLoanEligibility(int age, int creditScore, double income) {
        if (age >= 18 && creditScore >= 600 && income >= 3000) {
            return "Approved";
        } else {
            return "Denied";
        }
    }

    public static void main(String[] args) {
        System.out.println(checkLoanEligibility(20, 650, 5000)); // Approved
        System.out.println(checkLoanEligibility(17, 700, 4000)); // Denied
    }
}
