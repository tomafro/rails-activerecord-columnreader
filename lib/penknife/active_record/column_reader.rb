require 'active_record'

module Penknife
  module ActiveRecord
    module ColumnReader
      def column_reader(column_name, options = {})
        name = options.delete(:as) || column_name.to_s.pluralize
        column = columns_hash[column_name.to_s]

        if type_cast_code = column.type_cast_code('v')
          type_cast_code = "::#{type_cast_code}"
        end

        line = __LINE__
        self.class_eval %{
          def self.#{name}
            query = scoped.select(arel_table[:#{column_name}])
            connection.select_all(query.to_sql).collect do |value|
              v = value.values.first
              #{type_cast_code}
            end
          end
        }, __FILE__, line + 1
      end

      ::ActiveRecord::Base.extend(self)
    end
  end
end