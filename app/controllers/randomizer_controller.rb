class RandomizerController < ApplicationController
  def show
  end
  def randomize
    all_users_shuff = shuffle_array(User.all.ids)
    for elem in all_users_shuff
      params = { profile_attributes: {santa_id: elem[1]}} 
      User.update(elem[0], params)
    end
  end

  private

  def shuffle_array(all_user_ids)
    loop do
      all_users_shuff = all_user_ids.zip(all_user_ids.shuffle)
      if no_equal_elements?(all_users_shuff)
        return all_users_shuff
      end
    end
  end

  def no_equal_elements?(array)
    for elem in array
      if elem[0] == elem[1]
        return false
      end
    end
    return true
  end

end
