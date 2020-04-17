class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  
  validates :nickname,           presence: true, length: {maximum: 20}
  validates :email,              presence: true, uniqueness: true, format: {with: /\A[a-zA-Z0-9_#!$%&`'*+-{|}~^\/=?.]+@[a-zA-Z0-9][a-zA-Z0-9.-]+\z/}
  validates :encrypted_password, presence: true, length: {minimum: 7}
  validates :first_name,         presence: true, format: {with: /\A[ぁ-んァ-ン一-龥]/}
  validates :last_name,          presence: true, format: {with: /\A[ぁ-んァ-ン一-龥]/}
  validates :first_name_reading, presence: true, format: {with: /\A[ァ-ロワヲンー \r\n\t]*\z/}
  validates :last_name_reading,  presence: true, format: {with: /\A[ァ-ロワヲンー \r\n\t]*\z/}
  validates :phone_number,       presence: true, length: {maximum: 13}, format: {with: /\A0\d{2,3}-\d{1,4}-\d{4}\z/}
  validates :birthday_year,      presence: true
  validates :birthday_month,     presence: true
  validates :birthday_day,       presence: true
  has_one :deliver_address
  has_many :orders
  has_many :cards
  has_many :items


  enum birthday_year:{
    "--":0,
    "1930":1930,"1931":1931,"1932":1932,"1933":1933,"1934":1934,"1935":1935,"1936":1936,"1937":1937,"1938":1938,"1939":1939,"1940":1940,"1941":1941,"1942":1942,"1943":1943,"1944":1944,"1945":1945,"1946":1946,"1947":1947,"1948":1948,"1949":1949,"1950":1950,"1951":1951,"1952":1952,"1953":1953,"1954":1954,"1955":1955,"1956":1956,"1957":1957,"1958":1958,"1959":1959,"1960":1960,"1961":1961,"1962":1962,"1963":1963,"1964":1964,"1965":1965,"1966":1966,"1967":1967,"1968":1968,"1969":1969,"1970":1970,"1971":1971,"1972":1972,"1973":1973,"1974":1974,"1975":1975,"1976":1976,"1977":1977,"1978":1978,"1979":1979,"1980":1980,"1981":1981,"1982":1982,"1983":1983,"1984":1984,"1985":1985,"1986":1986,"1987":1987,"1988":1988,"1989":1989,"1990":1990,"1991":1991,"1992":1992,"1993":1993,"1994":1994,"1995":1995,"1996":1996,"1997":1997,"1998":1998,"1999":1999,"2000":2000,"2001":2001,"2002":2002,"2003":2003,"2004":2004,"2005":2005,"2006":2006,"2007":2007,"2008":2008,"2009":2009,"2010":2010,"2011":2011,"2012":2012,"2013":2013,"2014":2014,"2015":2015,"2016":2016,"2017":2017,"2018":2018,"2019":2019,"2020":2020,"2021":2021,"2022":2022,"2023":2023,"2024":2024,"2025":2025,"2026":2026,"2027":2027,"2028":2028,"2029":2029,"2030":2030
  }
  enum birthday_month:{
    "--":0,
    "1":1,"2":2,"3":3,"4":4,"5":5,"6":6,"7":7,"8":8,"9":9,"10":10,"11":11,"12":12
  },_suffix: true
  enum birthday_day:{
    "--":0,
    "1":1,"2":2,"3":3,"4":4,"5":5,"6":6,"7":7,"8":8,"9":9,"10":10,"11":11,"12":12,"13":13,"14":14,"15":15,"16":16,"17":17,"18":18,"19":19,"20":20,"21":21,"22":22,"23":23,"24":24,"25":25,"26":26,"27":27,"28":28,"29":29,"30":30,"31":31 
  },_suffix: true
end