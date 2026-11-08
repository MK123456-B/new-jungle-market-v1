export type AccountRole = 'customer' | 'business_owner' | 'team_member' | 'platform_admin';
export type BusinessStatus = 'preparation' | 'active' | 'grace' | 'suspended' | 'closed';
export type CurrencyCode = 'BIF' | 'CDF' | 'TZS' | 'USD';
export interface PublicBusiness { id:string; name:string; city:string|null; countryCode:string; status:BusinessStatus; }
