module Todoist
  class Result
    include Enumerable

    attr_reader :data

    def initialize(result)
      if result['type'] == 'viewall' then
        data = flatten(result['data'])
      else
        data = result['data']
      end

      @query = result['query']
      @data = data
    end

    def each(&block)
      data.each do |object|
        block.call(Todoist::Item.new(object))
      end
    end

    def size
      data.size
    end

    private

    def flatten(data)
      data.map{|project_block| project_block['uncompleted'] }.flatten
    end

  end

  class Query
    def initialize(client)
      @client = client
    end

    def query_path
      '/API/v7/query'
    end

    def search(queries)
      if queries.is_a?(String)
        queries = [queries]
      end

      parsed_response = @client.post(query_path, { queries: queries.to_json})

      result_set = parsed_response.inject({}) do |results, query|
        results[query['query']] = Todoist::Result.new(query)
        results
      end
      result_set
    end
  end
end
