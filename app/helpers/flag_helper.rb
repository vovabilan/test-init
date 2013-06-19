module FlagHelper

  def flag_code code = :us
    # ensure that 'en_US' becomes simply 'us'
    code = code.to_s.sub(/^\w+_/, '').downcase
    (locale_flag_map[code.to_sym] || code).to_sym
  end

  def locale_flag_map
    keys_to_sym(locale_flag_hash)
  end

  def keys_to_sym hash
    hash.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
  end

  def locale_flag_hash
    {
      :en => "us",
      :da => "dk",
      :sv => "se",
      :sq => "al",
      :nb => "no",
      :ja => "jp",
      :uk => "ua"
    }
  end

end