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
end