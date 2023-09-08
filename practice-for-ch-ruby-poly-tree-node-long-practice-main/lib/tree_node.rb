class PolyTreeNode
    attr_reader :value, :parent, :children

    def initialize(value)
        @value = value
        @parent = nil 
        @children = []
    end

    def parent=(parent_node)
        # if parent_node.nil?
        #     self.parent = nil
        # end
        # if self.parent.nil?
        #     @parent = parent_node
        #     parent_node.children << self
        # else
        #     self.parent = parent_node
        # end
        # else
        #     self_parent = self.parent
        #     self_parent.children.each_with_index do |node, i|
        #         self.parent = nil if self == node
                
        #     end
    end




end