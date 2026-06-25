# GooCredit VTU Portal - Quick Setup Guide

## Installation Steps

1. **Database Setup**
   ```sql
   - Create new MySQL database
   - Import database file from Database folder
   - Edit core/includes/database.php with your credentials
   ```

2. **Server Configuration**
   - Upload files to your hosting
   - Required: PHP 7.2+, MySQL 5.7+
   - Set permissions (755) for:
     * /slips
     * /images
     * /core/helpers
     * /webhook

3. **Admin Access**
   - Go to: yourdomain.com/admingc
   - Default login:
     * Username: admin
     * Password: admin123
   - Change password immediately

4. **API Setup**
   In Admin Panel:
   - Configure Network APIs (MTN, Airtel, Glo, 9mobile)
   - Set up Payment Gateway
   - Configure Email settings

5. **Service Setup**
   Enable services:
   - Airtime
   - Data bundles
   - Cable TV
   - Electricity
   - Exam PINs
   - NIN/BVN verification

6. **Commission Settings**
   Set commission rates for:
   - Admin
   - Agents
   - Resellers
   - API users

## Support
Contact support at support@goocredit.com

## Security Note
- Always use HTTPS
- Change default credentials
- Keep regular backups
- Monitor transactions
