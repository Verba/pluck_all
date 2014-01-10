require "pluck_all/version"

module PluckAll
  extend ActiveSupport::Concern

  included do

    def pluck_with_all(*columns)
      if columns.length == 1
        return self.pluck_without_all(columns.first)
      end

      columns = columns.map do |column|
        if column.is_a?(Symbol) && column_names.include?(column.to_s)
          "#{connection.quote_table_name(table_name)}.#{connection.quote_column_name(column)}"
        else
          column.to_s
        end
      end

      result = klass.connection.exec_query(select(columns).to_sql)

      result.map do |attributes|
        attributes.map do |key, val|
          klass.type_cast_attribute(key, klass.initialize_attributes(key => val))
        end
      end
    end

    alias_method_chain :pluck, :all

  end
end

module ActiveRecord
  module Calculations
    include PluckAll
  end
end
