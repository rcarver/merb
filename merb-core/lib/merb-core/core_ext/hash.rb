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

  def merb_extract!(*args)
    merb_extract_values!(*args)
  end

  def merb_extract_values!(*args)
    args.map do |arg|
      self.delete(arg)
    end
  end
end
