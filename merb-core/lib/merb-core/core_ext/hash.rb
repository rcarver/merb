class Hash
  # Returns the value of self for each argument and deletes those entries.
  #
  # ==== Parameters
  # *args:: the keys whose values should be extracted and deleted.
  #
  # ==== Returns
  # Array[Object]:: The values of the provided arguments in corresponding order.
  #
  # :api: public
  def extract!(*args)
    merb_extract_values!
  end

  # These methods are here to distinguish from ActiveSupport's
  # extract! method, which behaves differently.

  def merb_extract!(*args)
    merb_extract_values!
  end

  def merb_extract_values!(*args)
    args.map do |arg|
      self.delete(arg)
    end
  end
end
