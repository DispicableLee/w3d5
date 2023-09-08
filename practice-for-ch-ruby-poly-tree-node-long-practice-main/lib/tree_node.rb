class PolyTreeNode
    attr_reader :value, :parent, :children

    def initialize(value)
        @value = value
        @parent = nil 
        @children = []
    end

    def parent=(parent_node)
        if @parent !=nil
            @parent.children.delete(self)
        end
        if parent_node.nil?
            @parent = parent_node
        else
            @parent = parent_node
            unless parent_node.children.include?(self)
                parent_node.children << self
            end
        end
    end

    def add_child(child_node)
        child_node.parent = self
    end

    def remove_child(child_node)
        raise 'Not child buddy' if !@children.include?(child_node)
        child_node.parent = nil
    end

    def dfs(target)
        return self if @value == target

        if !self.children.empty?
            @children.each do |child|
                value = child.dfs(target)
                return value if value != nil
            end
        end
        nil
    end

        # return nil if self.children.empty?

        # (0..self.children.length-1).each do |i|
        #     # if self.children[i].dfs(target).nil?
        #     #     i = i+1
        #     # end
        #     self.children[i].dfs(target)
        # end
        
        # nil
    # end
end
