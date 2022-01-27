class Result
  attr_reader :fox_and_haskell,
              :londeree_and_moeschberger,
              :miller_et_al,
              :gellish_et_al,
              :whyte_et_al,
              :tanaka_et_al,
              :stevens_creek,
              :age

  def initialize(age)
    @fox_and_haskell            = generate_fox_and_haskell(age)
    @londeree_and_moeschberger  = generate_londeree_and_moeschberger(age)
    @miller_et_al               = generate_miller_et_al(age)
    @gellish_et_al              = generate_gellish_et_al(age)
    @whyte_et_al                = generate_whyte_et_al(age)
    @tanaka_et_al               = generate_tanaka_et_al(age)
    @stevens_creek              = generate_stevens_creek(age)
    @age                        = age
  end

  def generate_fox_and_haskell(age)
    220 - age
  end

  def generate_londeree_and_moeschberger(age)
    rounder((206.3 - ( 0.711 * age )))
  end

  def generate_miller_et_al(age)
    rounder((217 - (0.85 * age)))
  end

  def generate_gellish_et_al(age)
    rounder((206.9 - (0.67 * age)))
  end

  def generate_whyte_et_al(age)
    rounder((202 - (0.55 * age)))
  end

  def generate_tanaka_et_al(age)
    rounder((208 - (0.7 * age)))
  end

  def generate_stevens_creek(age)
    rounder((205 - (age / 2)))
  end


  private

  def rounder(num)
    num.round(0)
  end
end